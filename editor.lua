-- editor.lua

DungeonGuideEditorUI = {}

local E = _G.ElvUI and unpack(_G.ElvUI) or nil
local S

if E and E.GetModule then
    S = E:GetModule("Skins", true)
end

local isElvUI = S and type(S.HandleFrame) == "function"

function DungeonGuideEditorUI:Create()
    if self.frame then return end

    local f = CreateFrame("Frame", "DungeonGuideEditorFrame", UIParent, "BackdropTemplate")
    f:SetSize(800, 580)
    f:SetPoint("CENTER")
    f:SetMovable(true)
    f:EnableMouse(true)
    f:RegisterForDrag("LeftButton")
    f:SetScript("OnDragStart", f.StartMoving)
    f:SetScript("OnDragStop", f.StopMovingOrSizing)

    f:SetResizable(true)
    f:SetResizeBounds(800, 580, 1200, 580)

    local resizer = CreateFrame("Frame", nil, f)
    resizer:SetPoint("BOTTOMRIGHT", -5, 5)
    resizer:SetSize(16, 16)
    resizer:EnableMouse(true)
    resizer:SetScript("OnMouseDown", function() f:StartSizing("BOTTOMRIGHT") end)
    resizer:SetScript("OnMouseUp", function()
        f:StopMovingOrSizing()
        if self.currentDungeon and self.currentEncounter then
            self:PopulateGuideEntries(self.currentDungeon, self.currentEncounter)
        end
    end)

    resizer.texture = resizer:CreateTexture(nil, "OVERLAY")
    resizer.texture:SetAllPoints()
    resizer.texture:SetTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Up")

    if isElvUI then
        S:HandleFrame(f, true)
    end

    local header = f:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    header:SetPoint("TOPLEFT", 15, -10)
    header:SetText("DungeonGuide Editor")

    local dungeonList = CreateFrame("Frame", nil, f, "BackdropTemplate")
    dungeonList:SetSize(180, 240)
    dungeonList:SetPoint("TOPLEFT", 10, -40)
    dungeonList:SetBackdrop({ bgFile = "Interface\\Buttons\\WHITE8x8" })
    dungeonList:SetBackdropColor(0.1, 0.1, 0.1, 0.9)
    if isElvUI then S:HandleFrame(dungeonList, true) end

    local dungeonScroll = CreateFrame("ScrollFrame", nil, dungeonList, "UIPanelScrollFrameTemplate")
    dungeonScroll:SetPoint("TOPLEFT", 5, -5)
    dungeonScroll:SetPoint("BOTTOMRIGHT", -28, 5)

    local dungeonContent = CreateFrame("Frame", nil, dungeonScroll)
    dungeonContent:SetSize(1, 1)
    dungeonScroll:SetScrollChild(dungeonContent)

    dungeonList.scrollFrame = dungeonScroll
    dungeonList.content = dungeonContent

    self.dungeonList = dungeonList

    local encounterList = CreateFrame("Frame", nil, f, "BackdropTemplate")
    encounterList:SetSize(180, 240)
    encounterList:SetPoint("TOPLEFT", dungeonList, "BOTTOMLEFT", 0, -10)
    encounterList:SetBackdrop({ bgFile = "Interface\\Buttons\\WHITE8x8" })
    encounterList:SetBackdropColor(0.1, 0.1, 0.1, 0.9)
    if isElvUI then S:HandleFrame(encounterList, true) end

    local encounterScroll = CreateFrame("ScrollFrame", nil, encounterList, "UIPanelScrollFrameTemplate")
    encounterScroll:SetPoint("TOPLEFT", 5, -5)
    encounterScroll:SetPoint("BOTTOMRIGHT", -28, 5)

    local encounterContent = CreateFrame("Frame", nil, encounterScroll)
    encounterContent:SetSize(1, 1)
    encounterScroll:SetScrollChild(encounterContent)

    encounterList.scrollFrame = encounterScroll
    encounterList.content = encounterContent

    self.encounterList = encounterList

    -- Create scrollable edit area
    local editScroll = CreateFrame("ScrollFrame", nil, f, "UIPanelScrollFrameTemplate")
    editScroll:SetPoint("TOPLEFT", dungeonList, "TOPRIGHT", 10, 0)
    editScroll:SetPoint("BOTTOMRIGHT", -30, 50)

    local editContent = CreateFrame("Frame", nil, editScroll, "BackdropTemplate")
    editContent:SetSize(1, 1)
    editScroll:SetScrollChild(editContent)

    editContent:SetBackdrop({ bgFile = "Interface\\Buttons\\WHITE8x8" })
    editContent:SetBackdropColor(0.05, 0.05, 0.05, 0.9)

    if isElvUI then S:HandleFrame(editContent, true) end

    self.editArea = editContent
    self.editScroll = editScroll

    -- Export Button (right-most)
    local exportBtn = CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
    exportBtn:SetSize(100, 24)
    exportBtn:SetPoint("BOTTOMRIGHT", -10, 10)
    exportBtn:SetText("Export")
    if isElvUI then S:HandleButton(exportBtn) end

    -- Reset Button (middle)
    local resetBtn = CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
    resetBtn:SetSize(100, 24)
    resetBtn:SetPoint("RIGHT", exportBtn, "LEFT", -10, 0)
    resetBtn:SetText("Reset")
    if isElvUI then S:HandleButton(resetBtn) end

    resetBtn:SetScript("OnClick", function()
        if not self.currentDungeon or not self.currentEncounter then return end

        if DungeonGuide_Overrides[self.currentDungeon] then
            DungeonGuide_Overrides[self.currentDungeon][self.currentEncounter] = nil
            if next(DungeonGuide_Overrides[self.currentDungeon]) == nil then
                DungeonGuide_Overrides[self.currentDungeon] = nil
            end
        end

        DungeonGuide_DebugInfo("Cleared overrides for " .. self.currentDungeon .. " - " .. self.currentEncounter)
        self:PopulateGuideEntries(self.currentDungeon, self.currentEncounter)
    end)

    -- Save Button (left-most)
    local saveBtn = CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
    saveBtn:SetSize(100, 24)
    saveBtn:SetPoint("RIGHT", resetBtn, "LEFT", -10, 0)
    saveBtn:SetText("Save")
    if isElvUI then S:HandleButton(saveBtn) end

    saveBtn:SetScript("OnClick", function()
        if not self.currentDungeon or not self.currentEncounter then
            return
        end

        self:SaveData()
    end)

    local close = CreateFrame("Button", nil, f, "UIPanelCloseButton")
    close:SetPoint("TOPRIGHT", -5, -5)

    if isElvUI then
        S:HandleFrame(f, true)
        S:HandleCloseButton(close)
    end

    self.frame = f
    self:PopulateDungeonList()
end

function DungeonGuideEditorUI:PopulateDungeonList()
    local content = self.dungeonList.content
    for _, child in ipairs({ content:GetChildren() }) do child:Hide() end

    local yOffset = -5
    for dungeonName, _ in pairs(DungeonGuide_Guides or {}) do
        local btn = CreateFrame("Button", nil, content)
        btn:SetSize(140, 20)
        btn.text = btn:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
        btn.text:SetPoint("LEFT", 5, 0)
        btn.text:SetText(dungeonName)
        btn:SetPoint("TOPLEFT", 5, yOffset)
        btn:SetScript("OnClick", function()
            DungeonGuideEditorUI:PopulateEncounters(dungeonName)
        end)
        if isElvUI then S:HandleButton(btn) end
        yOffset = yOffset - 22
    end
end

function DungeonGuideEditorUI:PopulateEncounters(dungeonName)
    local encounterContent = self.encounterList.content
    for _, child in ipairs({ encounterContent:GetChildren() }) do child:Hide() end

    local guide = DungeonGuide_Guides[dungeonName]
    if not guide then return end

    local ordered = {}

    for enc, entry in pairs(guide) do
        if type(entry) == "table" and entry.order then
            table.insert(ordered, { name = enc, order = entry.order, header = entry.header })
        end
    end

    table.sort(ordered, function(a, b) return a.order < b.order end)

    local yOffset = -5

    for _, enc in ipairs(ordered) do
        local btn = CreateFrame("Button", nil, encounterContent)
        btn:SetSize(140, 20)
        btn.text = btn:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
        btn.text:SetPoint("LEFT", 5, 0)
        btn.text:SetText(enc.header or enc.name)
        btn:SetPoint("TOPLEFT", 5, yOffset)

        btn:SetScript("OnClick", function()
            DungeonGuideEditorUI.currentDungeon = dungeonName
            DungeonGuideEditorUI.currentEncounter = enc.name
            DungeonGuideEditorUI:PopulateGuideEntries(dungeonName, enc.name)
        end)

        if isElvUI then S:HandleButton(btn) end
        yOffset = yOffset - 22
    end
end

function DungeonGuideEditorUI:PopulateGuideEntries(dungeonName, encounterName)
    local editArea = self.editArea
    local guide = DungeonGuide_GetGuideEntry(dungeonName, encounterName, true)

    if not guide then
        return
    end

    self.currentRows = {}
    local rowHeight = 22
    local scrollFrame = self.editScroll
    local fullWidth = math.max(scrollFrame:GetWidth() or 800, 800) - 20

    local columnWidths = {
        order = 40,
        type = 100,
        role = 90,
        text = 760, -- will be updated below
        hide = 40,
    }

    local fixedWidth = columnWidths.order + columnWidths.type + columnWidths.role + columnWidths.hide
    local textWidth = math.max(fullWidth - fixedWidth - 4, 200)
    columnWidths.text = textWidth

    local positions = {
        { key = "order", width = columnWidths.order, align = "CENTER", label = "ORDER" },
        { key = "type", width = columnWidths.type, align = "LEFT", label = "TYPE" },
        { key = "role", width = columnWidths.role, align = "LEFT", label = "ROLE" },
        { key = "text", width = columnWidths.text, align = "LEFT", label = "GUIDE" },
        { key = "hide", width = columnWidths.hide, align = "CENTER", label = "HIDE" }
    }

    -- Clear previous content
    for _, child in ipairs({editArea:GetChildren()}) do
        child:Hide()
    end

    -- Header row
    local headerRow = CreateFrame("Frame", nil, editArea)
    headerRow:SetPoint("TOPLEFT", 10, -10)
    headerRow:SetSize(fullWidth, rowHeight)

    local x = 0
    for _, col in ipairs(positions) do
        local label = headerRow:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
        label:SetPoint("LEFT", x + 4, 0)
        label:SetWidth(col.width - 6)
        label:SetHeight(rowHeight)
        label:SetJustifyH("LEFT")
        label:SetJustifyV("MIDDLE")
        label:SetText(col.label:upper())

        x = x + col.width
    end

    -- Guide row factory
    local function CreateRow(index, order, entry, role)
        local row = CreateFrame("Frame", nil, editArea, "BackdropTemplate")
        row.entry = entry
        row:SetSize(fullWidth, rowHeight)
        row:SetPoint("TOPLEFT", 10, -10 - rowHeight * index)

        table.insert(self.currentRows, row)  -- Track this row explicitly

        if index % 2 == 0 then
            local bg = row:CreateTexture(nil, "BACKGROUND")
            bg:SetPoint("TOPLEFT")
            bg:SetPoint("BOTTOMRIGHT")
            bg:SetColorTexture(1, 1, 1, 0.08)
        end

        local fields = {
            order = tostring(order),
            type = entry.type or "",
            role = role,
            text = entry.text or "",
            hide = entry.hide ~= false
        }

        local x = 0
        for _, col in ipairs(positions) do
            local border = row:CreateTexture(nil, "BORDER")
            border:SetColorTexture(0.5, 0.5, 0.5, 0.3)
            border:SetPoint("TOPLEFT", x, 0)
            border:SetPoint("BOTTOMLEFT", x, 0)
            border:SetWidth(1)

            if col.key == "hide" then
                local cb = CreateFrame("CheckButton", nil, row, "UICheckButtonTemplate")
                cb:SetPoint("LEFT", x + (col.width - 20) / 2, 0)
                cb:SetSize(20, 20)
                cb:SetChecked(hide)
                cb:SetScript("OnClick", function(self)
                    entry.hide = self:GetChecked()
                end)
                if isElvUI and S.HandleCheckBox then S:HandleCheckBox(cb) end
            elseif col.key == "role" then
                local dd = CreateFrame("Frame", nil, row, "UIDropDownMenuTemplate")
                dd:SetPoint("LEFT", x - 14, 0)
                dd:SetSize(col.width, rowHeight)

                UIDropDownMenu_SetWidth(dd, col.width - 24)
                UIDropDownMenu_SetText(dd, fields.role)

                UIDropDownMenu_Initialize(dd, function(self, level)
                    for _, r in ipairs(DUNGEONGUIDE_ROLES) do
                        local info = UIDropDownMenu_CreateInfo()
                        info.text = r
                        info.checked = (r == entry.role)
                        info.func = function()
                            entry.role = r
                            UIDropDownMenu_SetText(dd, r)
                        end
                        UIDropDownMenu_AddButton(info)
                    end
                end)
            elseif col.key == "type" then
                local dd = CreateFrame("Frame", nil, row, "UIDropDownMenuTemplate")
                dd:SetPoint("LEFT", x - 14, 0)
                dd:SetSize(col.width, rowHeight)

                UIDropDownMenu_SetWidth(dd, col.width - 24)
                UIDropDownMenu_SetText(dd, fields.type)

                UIDropDownMenu_Initialize(dd, function(self, level)
                    local types = { "Call", "Position", "Interrupt", "Mechanic" }
                    for _, t in ipairs(types) do
                        local info = UIDropDownMenu_CreateInfo()
                        info.text = t
                        info.checked = (t == entry.type)
                        info.func = function()
                            entry.type = t
                            UIDropDownMenu_SetText(dd, t)
                        end
                        UIDropDownMenu_AddButton(info)
                    end
                end)
            elseif col.key == "text" then
                -- TEXT: editable field
                local textFrame = CreateFrame("Frame", nil, row)
                textFrame:SetPoint("LEFT", x + 2, 0)
                textFrame:SetSize(col.width - 6, rowHeight)

                -- Display label (initial view)
                local label = textFrame:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
                label:SetAllPoints()
                label:SetJustifyH("LEFT")
                label:SetJustifyV("MIDDLE")
                label:SetText((entry.text or ""):gsub("|", "||"))

                -- Editable box (initially hidden)
                local editBox = CreateFrame("EditBox", nil, textFrame, "InputBoxTemplate")
                editBox:SetAllPoints()
                editBox:SetAutoFocus(false)
                editBox:SetMultiLine(false)
                editBox:Hide()
                editBox:SetFontObject("GameFontHighlightSmall")
                editBox:SetText(entry.text or "")

                -- Show edit box on click
                textFrame:SetScript("OnMouseDown", function()
                    label:Hide()
                    editBox:Show()
                    editBox:SetFocus()
                    editBox:SetCursorPosition(0)
                end)

                -- Commit on Enter or focus lost
                local function commitEdit()
                    local newText = editBox:GetText()
                    entry.text = newText
                    label:SetText(newText:gsub("|", "||"))
                    editBox:Hide()
                    label:Show()
                end

                editBox:SetScript("OnEnterPressed", commitEdit)
                editBox:SetScript("OnEscapePressed", commitEdit)
                editBox:SetScript("OnEditFocusLost", commitEdit)
            else
                local fs = row:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
                fs:SetPoint("LEFT", x + 4, 0)
                fs:SetWidth(col.width - 6)
                fs:SetHeight(rowHeight)
                fs:SetJustifyH(col.align)
                fs:SetJustifyV("MIDDLE")
                fs:SetText((fields[col.key] or ""):gsub("|", "||"))
            end

            x = x + col.width
        end
    end

    -- Generate guide rows
    local order = 1
    local index = 1

    self.baseEntries = DungeonGuide_SaveBaseEntries(guide)

    for _, role in ipairs(DUNGEONGUIDE_ROLES) do
        if guide[role] then
            for _, entry in ipairs(guide[role]) do
                local workingEntry = CopyTable(entry)
                workingEntry.role = role
                CreateRow(index, order, workingEntry, role)
                order = order + 1
                index = index + 1
            end
        end
    end

    editArea:SetHeight((index + 1) * rowHeight + 10)
end

function DungeonGuideEditorUI:SaveData()
    if not self.currentDungeon or not self.currentEncounter then
        return
    end

    local editedEntries = {}
    for _, row in ipairs(self.currentRows or {}) do
        if row.entry and row.entry.id then
            editedEntries[row.entry.id] = CopyTable(row.entry)
            DungeonGuide_DebugInfo("Edited entry: " .. row.entry.id)
        end
    end

    DungeonGuide_DebugInfo("Number of editedEntries: " .. #editedEntries)

    -- Compare against base by ID
    local overrides = {}

    for id, edited in pairs(editedEntries) do
        local original = self.baseEntries and self.baseEntries[id]
        local isDifferent = false

        if not original then
            DungeonGuide_DebugInfo("No original entry found for ID: " .. id)
            isDifferent = true
        else
            if original.type ~= edited.type then
                DungeonGuide_DebugInfo("Original Type: " .. tostring(original.type) .. ", Edited Type: " .. tostring(edited.type))
                isDifferent = true
                DungeonGuide_DebugInfo("Type changed for entry: " .. id)
            end
            if original.role ~= edited.role then
                DungeonGuide_DebugInfo("Original Role: " .. tostring(original.role) .. ", Edited Role: " .. tostring(edited.role))
                isDifferent = true
                DungeonGuide_DebugInfo("Role changed for entry: " .. id)
            end
            if original.text ~= edited.text then
                DungeonGuide_DebugInfo("Original Text: " .. tostring(original.text) .. ", Edited Text: " .. tostring(edited.text))
                isDifferent = true
                DungeonGuide_DebugInfo("Text changed for entry: " .. id)
            end
            if (original.show ~= false) ~= (edited.show ~= false) then
                DungeonGuide_DebugInfo("Original Visibility: " .. tostring(original.show ~= false) .. ", Edited Visibility: " .. tostring(edited.show ~= false))
                isDifferent = true
                DungeonGuide_DebugInfo("Visibility changed for entry: " .. id)
            end
        end

        if isDifferent then
            table.insert(overrides, edited)
            DungeonGuide_DebugInfo("Override detected for entry: " .. id)
        end
    end

    -- Save or clear
    DungeonGuide_Overrides[self.currentDungeon] = DungeonGuide_Overrides[self.currentDungeon] or {}

    if #overrides > 0 then
        DungeonGuide_Overrides[self.currentDungeon][self.currentEncounter] = overrides
        DungeonGuide_DebugInfo("Saved " .. #overrides .. " overrides for " .. self.currentDungeon .. " - " .. self.currentEncounter)
    else
        DungeonGuide_Overrides[self.currentDungeon][self.currentEncounter] = nil
        DungeonGuide_DebugInfo("No changes to save for " .. self.currentDungeon .. " - " .. self.currentEncounter)
    end
end

function DungeonGuideEditorUI:Show()
    self:Create()
    self.frame:Show()
end

function DungeonGuideEditorUI:Hide()
    if self.frame then
        self.frame:Hide()
    end
end