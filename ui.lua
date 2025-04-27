DungeonGuideDropdown = CreateFrame("Frame", "DungeonGuideDropdown", UIParent, "UIDropDownMenuTemplate")

DungeonGuideUI = {}

local ICON_SCROLL = 450907
local ICON_BUTTON = 441147

-- === Highlight and Tooltip Utilities ===
local SPELL_COLOR = {
    r = 3 / 255,
    g = 198 / 255,
    b = 252 / 255
}
local NPC_COLOR = {
    r = 252 / 255,
    g = 194 / 255,
    b = 3 / 255
}

local E, L, V, P, G = unpack(_G.ElvUI or {})
local S

if E and E.GetModule then
    S = E:GetModule("Skins", true)
end

local isElvUI = S and type(S.HandleFrame) == "function"

function DungeonGuideUI:CreateGuideFrame()
    if self.frame then
        return
    end

    local f = CreateFrame("Frame", "DungeonGuideFrame", UIParent, "BackdropTemplate")
    local size = DungeonGuideDB.windowSize or {
        width = 600,
        height = 300
    }

    f:SetSize(size.width, size.height)
    f.mode = "guide"

    local pos = DungeonGuideDB.windowPos or {
        point = "CENTER",
        x = 0,
        y = 0
    }

    f:SetPoint(pos.point, UIParent, pos.point, pos.x, pos.y)

    f:SetMovable(true)
    f:EnableMouse(true)
    f:RegisterForDrag("LeftButton")
    f:SetScript("OnDragStart", f.StartMoving)

    f:SetScript("OnDragStop", function(self)
        self:StopMovingOrSizing()
        local point, _, _, x, y = self:GetPoint()
        DungeonGuideDB.windowPos = {
            point = point,
            x = x,
            y = y
        }
    end)

    f:SetResizable(true)
    f:SetResizeBounds(300, 100, 800, 600)

    local resizer = CreateFrame("Frame", nil, f)
    resizer:SetPoint("BOTTOMRIGHT", -5, 5)
    resizer:SetSize(16, 16)
    resizer:EnableMouse(true)

    resizer:SetScript("OnMouseDown", function()
        f:StartSizing("BOTTOMRIGHT")
    end)

    resizer:SetScript("OnMouseUp", function()
        f:StopMovingOrSizing()
        DungeonGuideDB.windowSize = {
            width = f:GetWidth(),
            height = f:GetHeight()
        }

        DungeonGuideUI:UpdateGuideContent()
    end)

    resizer.texture = resizer:CreateTexture(nil, "OVERLAY")
    resizer.texture:SetAllPoints()
    resizer.texture:SetTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Up")

    local header = f:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    header:SetPoint("TOPLEFT", 15, -5)
    header:SetPoint("TOPRIGHT", -15, -5)
    header:SetJustifyH("CENTER")
    header:SetText("")
    f.header = header

    local selectorBtn = CreateFrame("Button", nil, f)
    selectorBtn:SetSize(18, 18)
    selectorBtn:SetPoint("LEFT", f.header, "LEFT", -10, 0)

    selectorBtn.icon = selectorBtn:CreateTexture(nil, "ARTWORK")
    selectorBtn.icon:SetAllPoints()
    selectorBtn.icon:SetTexture(ICON_SCROLL)

    selectorBtn:SetScript("OnClick", function()
        DungeonGuideUI:ShowGuideSelector()
    end)

    f.selector = selectorBtn

    local selectorPanel = CreateFrame("Frame", nil, f, "BackdropTemplate")
    selectorPanel:SetBackdrop({
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
        tile = true,
        tileSize = 8,
        edgeSize = 8,
        insets = {
            left = 3,
            right = 3,
            top = 3,
            bottom = 3
        }
    })

    selectorPanel:SetPoint("BOTTOMLEFT", f, "TOPLEFT", 0, 5)
    selectorPanel:SetSize(200, 10)
    selectorPanel:Hide()
    f.selectorPanel = selectorPanel
    selectorPanel.rows = {}

    local scrollFrame = CreateFrame("ScrollFrame", nil, f, "UIPanelScrollFrameTemplate")
    -- Hide scrollbar and disable interaction
    scrollFrame.ScrollBar:Hide()
    scrollFrame.ScrollBar.Show = function()
    end -- permanently suppress showing
    scrollFrame.ScrollBar:EnableMouse(false)
    scrollFrame.ScrollBar:SetAlpha(0)
    scrollFrame:SetPoint("TOPLEFT", 5, -30)
    scrollFrame:SetPoint("BOTTOMRIGHT", 5, 10)

    local content = CreateFrame("Frame", nil, scrollFrame)
    content:SetSize(1, 1)
    scrollFrame:SetScrollChild(content)

    f.scrollFrame = scrollFrame
    f.contentFrame = content
    f.contentRows = {}

    local close = CreateFrame("Button", nil, f, "UIPanelCloseButton")
    close:SetPoint("TOPRIGHT", -5, -5)

    if isElvUI then
        S:HandleFrame(f, true)
        S:HandleCloseButton(close)
    end

    self.frame = f
end

function DungeonGuideUI:ShowGuide()
    self:CreateGuideFrame()
    self:UpdateGuideContent()
    self.frame:Show()
end

function DungeonGuideUI:FormatGuideLine(text)
    local formatted = {}
    local lastEnd = 1

    for tagStart, tagType, tagValue, tagEnd in text:gmatch("()([sn])|([^|]+)|()") do
        table.insert(formatted, strsub(text, lastEnd, tagStart - 1))
        local color = (tagType == "s") and SPELL_COLOR or NPC_COLOR
        local hex = ("|cff%02x%02x%02x"):format(color.r * 255, color.g * 255, color.b * 255)
        local display = hex .. tagValue .. "|r"
        table.insert(formatted, display)
        lastEnd = tagEnd
    end

    table.insert(formatted, strsub(text, lastEnd))
    return table.concat(formatted)
end

function DungeonGuideUI:AttachTooltipHandlers(frame, text)
    local GetSpellInfo = _G.GetSpellInfo

    frame:SetScript("OnEnter", function()
        local tagType, tagValue = string.match(text, "([sn])|([^|]+)|")

        if not tagType or not tagValue then
            print("Invalid tag format in line:", text)
            return
        end

        print("Tag Type: " .. tagType .. ", Tag Value: " .. tagValue)

        GameTooltip:SetOwner(frame, "ANCHOR_TOP")

        if tagType == "s" then
            local info = C_Spell.GetSpellInfo(tagValue)
            if info then
                GameTooltip:SetSpellByID(info[7]) -- spellID
            else
                GameTooltip:SetText("Spell not found: " .. tagValue)
            end
        elseif tagType == "n" then
            local npcID = DungeonGuide_FindNPCID(DungeonGuideContext.dungeon, tagValue)
            if npcID then
                GameTooltip:SetHyperlink("unit:Creature-0-0-0-0-" .. npcID .. "-0000000000")
                print("NPC ID: " .. npcID)
            else
                GameTooltip:SetText("NPC not found: " .. tagValue)
            end
        end

        GameTooltip:Show()
    end)

    frame:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)
end

function DungeonGuideUI:UpdateGuideContent()
    local f = self.frame

    local guide = DungeonGuide_GetGuideEntry()

    if not guide then
        return
    end

    f.header:SetText(DungeonGuideContext.encounter or "Dungeon Guide")

    -- Combine ALL + role-specific lines
    local lines = {}
    if guide.ALL then
        for _, line in ipairs(guide.ALL) do
            table.insert(lines, line)
        end
    end
    if guide[DungeonGuideContext.role] then
        for _, line in ipairs(guide[DungeonGuideContext.role]) do
            table.insert(lines, line)
        end
    end

    if #lines == 0 then
        return
    end

    -- Hide old rows
    for _, row in ipairs(f.contentRows) do
        row:Hide()
    end

    f.contentRows = f.contentRows or {}

    local yOffset, index = 0, 1

    if (DungeonGuideContext.encounter ~= "Route") then
        local typeSortOrder = {
            Mechanic = 1,
            Position = 2,
            Interrupt = 3,
            Call = 4
        }

        table.sort(lines, function(a, b)
            local orderA = typeSortOrder[a.type] or 99
            local orderB = typeSortOrder[b.type] or 99
            return orderA < orderB
        end)
    end

    for _, line in ipairs(lines) do
        local row = f.contentRows[index]
        if not row then
            row = CreateFrame("Button", nil, f.contentFrame)
            row:SetParent(f.contentFrame)
            row:SetWidth(f:GetWidth() - 10)

            -- Optional: subtle stripe background
            row.stripe = row:CreateTexture(nil, "BACKGROUND")
            row.stripe:SetAllPoints()
            row.stripe:SetColorTexture(1, 1, 1, 0.02)
            row.stripe:SetDrawLayer("BACKGROUND", -1)

            -- Left-side colour bar
            row.indicator = row:CreateTexture(nil, "BACKGROUND")
            row.indicator:SetWidth(6)
            row.indicator:SetDrawLayer("BACKGROUND", 0)
            row.indicator:SetPoint("TOPLEFT", 0, -1)
            row.indicator:SetPoint("BOTTOMLEFT", 0, 1)

            -- Text
            row.text = row:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
            row.text:SetJustifyH("LEFT")
            row.text:SetJustifyV("TOP")
            row.text:SetDrawLayer("ARTWORK", 1)
            row.text:SetWordWrap(true)
            row.text:SetPoint("TOPLEFT", row, "TOPLEFT", 10, 0)
            row.text:SetPoint("TOPRIGHT", row, "TOPRIGHT", -2, 0)

            f.contentRows[index] = row
        end

        row:SetScript("OnClick", nil)

        -- Colour bar
        local c = DungeonGuideDB.colours[line.type]
        if c then
            row.indicator:SetColorTexture(c.r, c.g, c.b, c.a)
        else
            row.indicator:SetColorTexture(0, 0, 0, 0.2)
        end

        row:SetPoint("TOPLEFT", 0, -yOffset)
        row:SetWidth(f:GetWidth() - 10)

        local scrollbarOffset = 20
        local textPadding = 30
        local availableWidth = f:GetWidth() - scrollbarOffset - textPadding
        local formatted = self:FormatGuideLine(line.text)

        local font, _, flags = row.text:GetFont()
        row.text:SetFont(font, DungeonGuideDB.fontSize or 12, flags)
        row.text:SetWidth(availableWidth) -- set BEFORE SetText
        row.text:SetText(formatted)
        row.text:SetHeight(0)

--        if string.find(line.text, "s|") or string.find(line.text, "n|") then
--            self:AttachTooltipHandlers(row, line.text)
--        end

        local textHeight = row.text:GetStringHeight() + 6
        row:SetHeight(textHeight)

        if line.type == "Call" then
            row:SetScript("OnClick", function()
                if IsInGroup(LE_PARTY_CATEGORY_HOME) then
                    SendChatMessage(line.text, "PARTY")
                else
                    print("[DungeonGuide] Not in a party.")
                end
            end)
        end

        row:Show()
        yOffset = yOffset + textHeight
        index = index + 1
    end

    f.contentFrame:SetHeight(yOffset + 20)
    f.contentFrame:SetWidth(f:GetWidth() - 40)
end

function DungeonGuideUI:ShowGuideSelector()
    local f = self.frame
    local dungeon = DungeonGuide_GetDungeonEntry()

    if not dungeon then
        return
    end

    DungeonGuideContext.selectorOpen = true

    local panel = f.selectorPanel
    local yOffset = -5
    local index = 1

    for _, row in ipairs(panel.rows) do
        row:Hide()
    end

    local function AddRow(label, encounter)
        local row = panel.rows[index]
        if not row then
            row = CreateFrame("Button", nil, panel)
            row:SetHeight(20)
            row:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight")
            row.text = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
            row.text:SetPoint("LEFT", 5, 0)
            row.text:SetPoint("RIGHT", -5, 0)
            row.text:SetJustifyH("LEFT")
            panel.rows[index] = row
        end

        row:SetWidth(panel:GetWidth() - 10)
        row:SetPoint("TOPLEFT", 5, yOffset)
        row.text:SetText(label)

        row:SetScript("OnClick", function()
            panel:Hide()
            DungeonGuideContext.encounter = encounter
            DungeonGuideUI:ShowGuide()
            DungeonGuideContext.selectorOpen = false
        end)

        row:Show()
        yOffset = yOffset - 20
        index = index + 1
    end

    local orderedEntries = {}

    for name, entry in pairs(dungeon) do
        if type(entry) == "table" and entry.order then
            table.insert(orderedEntries, {
                name = name,
                order = entry.order
            })
        end
    end

    table.sort(orderedEntries, function(a, b)
        return a.order < b.order
    end)

    for _, entry in ipairs(orderedEntries) do
        AddRow(entry.name, entry.name)
    end

    panel:SetHeight(-yOffset + 10)
    panel:Show()
end

function DungeonGuideUI:CreateGuideButton()
    if self.GuideButton then
        return
    end

    local button = CreateFrame("Button", "DungeonGuideGuideButton", UIParent,
        "SecureActionButtonTemplate, UIPanelButtonTemplate")
    button:SetSize(32, 32)
    button:SetText("")
    button.icon = button:CreateTexture(nil, "ARTWORK")
    button.icon:SetAllPoints()
    button.icon:SetTexture(ICON_BUTTON)
    button:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")
    button:SetMovable(true)
    button:EnableMouse(true)
    button:RegisterForDrag("LeftButton")
    button:SetScript("OnDragStart", button.StartMoving)
    button:SetScript("OnDragStop", function(self)
        self:StopMovingOrSizing()
        local point, _, _, x, y = self:GetPoint()
        DungeonGuideDB.buttonPos = {
            point = point,
            x = x,
            y = y
        }
    end)
    button:SetScript("OnClick", function()
        DungeonGuideUI:ShowGuide()
    end)
    button:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
        GameTooltip:SetText("DungeonGuide\nLeft-click to open\nRight-click to move", 1, 1, 1)
        GameTooltip:Show()
    end)
    button:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)

    self.GuideButton = button
end

function DungeonGuideUI:ShowGuideButton()
    self:CreateGuideButton()
    local button = self.GuideButton

    local pos = DungeonGuideDB.buttonPos or {
        point = "CENTER",
        x = 0,
        y = -200
    }

    if not pos.point then
        pos.point = "CENTER"
    end

    button:SetPoint(pos.point, UIParent, pos.point, pos.x, pos.y)
    button:Show()
end