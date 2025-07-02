DungeonGuideDropdown = CreateFrame("Frame", "DungeonGuideDropdown", UIParent, "UIDropDownMenuTemplate")

DungeonGuideUI = {}

local ICON_SCROLL = 450907
local ICON_BUTTON = 441147

-- === Highlight and Tooltip Utilities ===
local SPELL_COLOR = { r = 3 / 255, g = 198 / 255, b = 252 / 255 }
local NPC_COLOR = { r = 252 / 255, g = 194 / 255, b = 3 / 255 }

local E, L, V, P, G = unpack(_G.ElvUI or {})
local S

if E and E.GetModule then
    S = E:GetModule("Skins", true)
end

local isElvUI = S and type(S.HandleFrame) == "function"

function DungeonGuideUI:GetFontPath()
    return LibStub("LibSharedMedia-3.0"):Fetch("font", DungeonGuideDB.font or "Friz Quadrata TT")
end

--- Creates and initializes the main guide frame for the DungeonGuide UI.
-- This function sets up the visual frame and its components, such as title, content area,
-- and any interactive elements required for displaying dungeon guides.
-- It is intended to be called once during the addon initialization to prepare the UI for user interaction.
-- @return frame The created guide frame object.
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

    self.MenuButton = CreateFrame("Button", nil, f, "BackdropTemplate")
    self.MenuButton:SetSize(24, 24)
    self.MenuButton:SetPoint("LEFT", f.header, "LEFT", -10, 0)

    -- Light grey square background
    self.MenuButton:SetBackdrop({ bgFile = "Interface\\Buttons\\WHITE8x8" })
    self.MenuButton:SetBackdropColor(0.8, 0.8, 0.8, 1)

    -- Your transparent PNG
    self.MenuButton.icon = self.MenuButton:CreateTexture(nil, "ARTWORK")
    self.MenuButton.icon:SetTexture("Interface\\AddOns\\DungeonGuide\\media\\hamburger.png")
    self.MenuButton.icon:SetPoint("CENTER")
    self.MenuButton.icon:SetSize(16, 16)

    -- Click handler
    self.MenuButton:SetScript("OnClick", function()
        DungeonGuideUI:BuildMainMenu()
    end)

    self.MenuButton:SetScript("OnEnter", function(self)
        self:SetBackdropColor(0.6, 0.6, 0.6, 1) -- mid grey on hover
    end)

    self.MenuButton:SetScript("OnLeave", function(self)
        self:SetBackdropColor(0.8, 0.8, 0.8, 1) -- back to light grey
    end)

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

function DungeonGuideUI:UpdateGuideContent()
    local f = self.frame

    local guide = DungeonGuide_GetGuideEntry()

    if not guide then
        return
    end

    f.header:SetText(DungeonGuideContext.encounter or "Dungeon Guide")

    -- Combine ALL + role-specific lines

    DungeonGuide_DebugInfo("Updating guide content for " .. (DungeonGuideContext.encounter or "unknown encounter") .. " in dungeon: " .. (DungeonGuideContext.dungeon or "unknown dungeon") .. " for role: " .. (DungeonGuideContext.role or "unknown role"))

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
        row.text:SetFont(DungeonGuideUI:GetFontPath(), DungeonGuideDB.fontSize or 12, flags)
        row.text:SetWidth(availableWidth) -- set BEFORE SetText
        row.text:SetText(formatted)
        row.text:SetHeight(0)

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

function DungeonGuideUI:CreateGuideButton()
    if self.GuideButton then
        return
    end

    local button = CreateFrame("Button", "DungeonGuideGuideButton", UIParent, "SecureActionButtonTemplate, UIPanelButtonTemplate")
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

-- === DungeonGuide Menu System ===
function DungeonGuideUI:BuildMainMenu()
    if not self.MenuButton then return end

    if self.MainMenu then
        self.MainMenu:Hide()
        self.MainMenu:SetParent(nil)
        self.MainMenu = nil
    end

    self.MainMenu = CreateFrame("Frame", nil, self.frame, "BackdropTemplate")
    self.MainMenu:SetSize(230, 1)
    self.MainMenu:SetPoint("TOPLEFT", self.MenuButton, "BOTTOMLEFT", 0, -5)
    self.MainMenu:SetBackdrop({ bgFile = "Interface\\Buttons\\WHITE8x8" })
    self.MainMenu:SetBackdropColor(0, 0, 0, 0.95) -- 95% black background
    self.MainMenu:SetFrameStrata("DIALOG")
    self.MainMenu:SetFrameLevel(self.MenuButton:GetFrameLevel() + 5)
    self.MainMenu.items = {}
    local menu = self.MainMenu

    if not self.MenuState then
        self.MenuState = { showDungeons = false, selectedDungeon = nil }
    end

    local y = -10

    local function AddButton(label, onClick, indent, isHeader, isSmall)
        local btn = CreateFrame("Button", nil, menu)
        btn:SetSize(180, isSmall and 16 or 20)
        btn:SetPoint("TOPLEFT", 10 + (indent or 0), y)

        -- Black background
        btn.bg = btn:CreateTexture(nil, "BACKGROUND")
        btn.bg:SetAllPoints()
        btn.bg:SetColorTexture(0, 0, 0, 0.8) -- solid black

        -- White text
        btn.text = btn:CreateFontString(nil, "ARTWORK")
        btn.text:SetFontObject(isHeader and GameFontHighlight or GameFontHighlightSmall)
        btn.text:SetTextColor(1, 1, 1)
        btn.text:SetPoint("LEFT", 4, 0)
        btn.text:SetJustifyH("LEFT")
        btn.text:SetText(label)

        btn:SetScript("OnEnter", function()
            btn.bg:SetColorTexture(0.2, 0.2, 0.2, 1) -- dark grey hover
        end)
        btn:SetScript("OnLeave", function()
            btn.bg:SetColorTexture(0, 0, 0, 0.8)
        end)
        btn:SetScript("OnClick", onClick)

        y = y - (isSmall and 18 or 22)
        table.insert(menu.items, btn)
    end


    -- Dungeons root
    AddButton("Dungeons", function()
        self.MenuState.selectedDungeon = nil
        self.MenuState.showDungeons = not self.MenuState.showDungeons
        DungeonGuideUI:BuildMainMenu()
    end, 0, true)

    if self.MenuState.selectedDungeon then
        local guide = DungeonGuide_Guides[self.MenuState.selectedDungeon]
        if guide then
            local ordered = {}
            for enc, entry in pairs(guide) do
                if type(entry) == "table" and entry.order then
                    table.insert(ordered, { name = enc, order = entry.order })
                end
            end
            table.sort(ordered, function(a, b) return a.order < b.order end)

            for _, enc in ipairs(ordered) do
                local entry = guide[enc.name]
                local displayName = entry.header or enc.name

                AddButton(displayName, function()
                    DungeonGuideContext = {
                        role = DungeonGuide_GetPlayerRole(),
                        dungeon = self.MenuState.selectedDungeon,
                        encounter = enc.name
                    }

                    DungeonGuideContext.forceSelect = true
                    DungeonGuideUI:ShowGuide()
                    DungeonGuideContext.forceSelect = false
                    self.MainMenu:Hide()
                end, 20, false, true)
            end
        end
    elseif self.MenuState.showDungeons then
        -- Show full dungeon list
        for dungeonName, _ in pairs(DungeonGuide_Guides) do
            AddButton(dungeonName, function()
                self.MenuState.selectedDungeon = dungeonName
                self.MenuState.showDungeons = false
                DungeonGuideUI:BuildMainMenu()
            end, 10)
        end
    end

    -- Final static buttons
    AddButton("Edit", function()
        DungeonGuideEditorUI:Show()
        self.MainMenu:Hide()
    end, 0, true)

    AddButton("Options", function()
        if DungeonGuideOptionsCategory then
            Settings.OpenToCategory(DungeonGuideOptionsCategory)
        else
            print("DungeonGuide: Options not registered.")
        end
        self.MainMenu:Hide()
    end, 0, true)

    menu:SetHeight(-y + 10)
    menu:Show()
end