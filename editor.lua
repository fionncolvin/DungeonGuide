-- editor.lua

DungeonGuideEditorUI = {}
DUNGEONGUIDE_ROLES = { "ALL", "TANK", "HEALER", "DPS" }

local E = _G.ElvUI and unpack(_G.ElvUI) or nil
local S

if E and E.GetModule then
    S = E:GetModule("Skins", true)
end

local isElvUI = S and type(S.HandleFrame) == "function"

function DungeonGuideEditorUI:Create()
    if self.frame then
        return
    end

    DungeonGuideEditorUI.selectedDungeonBtn = nil
    DungeonGuideEditorUI.selectedEncounterBtn = nil

    local f = CreateFrame("Frame", "DungeonGuideEditorFrame", UIParent, "BackdropTemplate")
    f:SetSize(1230, 580)
    f:SetPoint("CENTER")
    f:SetMovable(true)
    f:EnableMouse(true)
    f:RegisterForDrag("LeftButton")
    f:SetScript("OnDragStart", f.StartMoving)
    f:SetScript("OnDragStop", f.StopMovingOrSizing)

    f:SetResizable(false)

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

    if isElvUI then
        S:HandleFrame(dungeonList, true)
    end

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

    if isElvUI then
        S:HandleFrame(encounterList, true)
    end

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

    if isElvUI then
        S:HandleFrame(editContent, true)
    end

    self.editArea = editContent
    self.editScroll = editScroll

    -- Save Button (right-most)
    local saveBtn = CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
    saveBtn:SetSize(100, 24)
    saveBtn:SetPoint("BOTTOMRIGHT", -10, 10)
    saveBtn:SetText("Save")

    if isElvUI then
        S:HandleButton(saveBtn)
    end

    saveBtn:SetScript("OnClick", function()
        self:SaveData()
    end)

    -- Reset Button (middle)
    local resetBtn = CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
    resetBtn:SetSize(100, 24)
    resetBtn:SetPoint("RIGHT", saveBtn, "LEFT", -10, 0)
    resetBtn:SetText("Reset")

    if isElvUI then
        S:HandleButton(resetBtn)
    end

    resetBtn:SetScript("OnClick", function()
        DungeonGuideEditorUI:Confirm("Reset this Encounter to BASE?", function()
            self:Reset()
        end)
    end)

    -- Export Button (left-most)
    local exportBtn = CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
    exportBtn:SetSize(100, 24)
    exportBtn:SetPoint("RIGHT", resetBtn, "LEFT", -10, 0)
    exportBtn:SetText("Export")

    if isElvUI then
        S:HandleButton(exportBtn)
    end

    -- Add Button (bottom-left)
    local addBtn = CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
    addBtn:SetSize(100, 24)
    addBtn:SetPoint("BOTTOMLEFT", 200, 10)
    addBtn:SetText("Add")

    if isElvUI then
        S:HandleButton(addBtn)
    end

    addBtn:SetScript("OnClick", function()
        self:AddNewEntry()
    end)

    -- Close Button
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
    local yOffset = -5

    for _, child in ipairs({content:GetChildren()}) do
        child:Hide()
    end

    for dungeonName, _ in pairs(DungeonGuide_Guides or {}) do
        local btn = CreateFrame("Button", nil, content)
        btn:SetSize(140, 20)
        btn.text = btn:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
        btn.text:SetPoint("LEFT", 5, 0)
        btn.text:SetText(dungeonName)
        btn:SetPoint("TOPLEFT", 5, yOffset)

        -- Add background for highlight
        btn.bg = btn:CreateTexture(nil, "BACKGROUND")
        btn.bg:SetAllPoints()
        btn.bg:SetColorTexture(0, 0, 0, 0) -- transparent by default

        btn:SetScript("OnClick", function()
            -- Un-highlight previous
            if DungeonGuideEditorUI.selectedDungeonBtn then
                DungeonGuideEditorUI.selectedDungeonBtn.bg:SetColorTexture(0, 0, 0, 0)
            end
            -- Highlight this one
            btn.bg:SetColorTexture(0.2, 0.8, 0.4, 0.6)
            DungeonGuideEditorUI.selectedDungeonBtn = btn

            DungeonGuideEditorUI:PopulateEncounters(dungeonName)
        end)

        -- If this is the current dungeon, highlight it
        if DungeonGuideEditorUI.currentDungeon == dungeonName then
            btn.bg:SetColorTexture(0.2, 0.8, 0.4, 0.6)
            DungeonGuideEditorUI.selectedDungeonBtn = btn
        end

        if isElvUI then
            S:HandleButton(btn)
        end

        yOffset = yOffset - 22
    end
end

function DungeonGuideEditorUI:PopulateEncounters(dungeonName)
    local guide = DungeonGuide_GetDungeonEntry(dungeonName)

    if not guide then
        return
    end

    local encounterContent = self.encounterList.content
    local ordered = {}
    local yOffset = -5

    -- Clear previous content
    for _, child in ipairs({encounterContent:GetChildren()}) do
        child:Hide()
    end

    -- Sort encounters by order
    for enc, entry in pairs(guide) do
        if type(entry) == "table" and entry.order then
            table.insert(ordered, { name = enc, order = entry.order, header = entry.header })
        end
    end

    table.sort(ordered, function(a, b) return a.order < b.order end)

    -- Create buttons for each encounter
    for _, enc in ipairs(ordered) do
        local btn = CreateFrame("Button", nil, encounterContent)
        btn:SetSize(140, 20)
        btn.text = btn:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
        btn.text:SetPoint("LEFT", 5, 0)
        btn.text:SetText(enc.header or enc.name)
        btn:SetPoint("TOPLEFT", 5, yOffset)

        -- Add background for highlight
        btn.bg = btn:CreateTexture(nil, "BACKGROUND")
        btn.bg:SetAllPoints()
        btn.bg:SetColorTexture(0, 0, 0, 0) -- transparent by default

        btn:SetScript("OnClick", function()
            -- Un-highlight previous
            if DungeonGuideEditorUI.selectedEncounterBtn then
                DungeonGuideEditorUI.selectedEncounterBtn.bg:SetColorTexture(0, 0, 0, 0)
            end
            -- Highlight this one
            btn.bg:SetColorTexture(0.2, 0.8, 0.4, 0.6)
            DungeonGuideEditorUI.selectedEncounterBtn = btn

            DungeonGuideEditorUI.currentDungeon = dungeonName
            DungeonGuideEditorUI.currentEncounter = enc.name
            DungeonGuideEditorUI:PopulateGuideEntries(dungeonName, enc.name)
        end)

        -- If this is the current encounter, highlight it
        if DungeonGuideEditorUI.currentEncounter == enc.name then
            btn.bg:SetColorTexture(0.2, 0.8, 0.4, 0.6)
            DungeonGuideEditorUI.selectedEncounterBtn = btn
        end

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

    -- Generate order data for entries if missing
    DungeonGuideEditorUI:InitialiseOrderIfMissing(dungeonName, encounterName, guide.entries or {})

    self.currentRows = {}
    local rowHeight = 22
    local scrollFrame = self.editScroll
    local fullWidth = math.max(scrollFrame:GetWidth() or 800, 800) - 20
    local x = 0

    local columnWidths = {
        order = 40,
        type = 100,
        role = 90,
        text = 680,
        hide = 40,
        remove = 26,
    }

    local positions = {
        { key = "order", width = columnWidths.order, align = "CENTER", label = "ORDER" },
        { key = "type", width = columnWidths.type, align = "LEFT", label = "TYPE" },
        { key = "role", width = columnWidths.role, align = "LEFT", label = "ROLE" },
        { key = "text", width = columnWidths.text, align = "LEFT", label = "GUIDE" },
        { key = "hide", width = columnWidths.hide, align = "CENTER", label = "HIDE" },
        { key = "remove", width = columnWidths.remove, align = "CENTER", label = "" }
    }

    -- Clear previous content
    for _, child in ipairs({editArea:GetChildren()}) do
        child:Hide()
    end

    -- Header row
    local headerRow = CreateFrame("Frame", nil, editArea)
    headerRow:SetPoint("TOPLEFT", 10, -10)
    headerRow:SetSize(fullWidth, rowHeight)

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
        local baseEntry = self.baseEntries and self.baseEntries[entry.id]
        local row = CreateFrame("Frame", nil, editArea, "BackdropTemplate")
        local x = 0

        row.entry = entry
        row.dirty = false
        row.baseEntry = baseEntry
        row:SetSize(fullWidth, rowHeight)
        row:SetPoint("TOPLEFT", 10, -10 - rowHeight * index)

        table.insert(self.currentRows, row)  -- Track this row explicitly

        -- Always create a background texture, so we can update its color
        local bg = row:CreateTexture(nil, "BACKGROUND")
        bg:SetPoint("TOPLEFT")
        bg:SetPoint("BOTTOMRIGHT")
        row.bg = bg  -- store reference on the row

        -- Initial zebra colour
        if index % 2 == 0 then
            bg:SetColorTexture(1, 1, 1, 0.08) -- light zebra
        else
            bg:SetColorTexture(0, 0, 0, 0.05) -- dark zebra
        end

        row._zebraColor = { r = (index % 2 == 0 and 1 or 0), g = (index % 2 == 0 and 1 or 0), b = (index % 2 == 0 and 1 or 0), a = (index % 2 == 0 and 0.08 or 0.05) }

        local fields = {
            order = tostring(order),
            type = entry.type or "",
            role = role,
            text = entry.text or "",
            hide = entry.hide or false
        }

        function row:SetDirtyState(isDirty)
            self.dirty = isDirty

            if isDirty then
                self.bg:SetColorTexture(0.2, 0.4, 0.8, 0.6) -- mid blue highlight
            else
                local c = self._zebraColor
                self.bg:SetColorTexture(c.r, c.g, c.b, c.a)
            end
        end

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
                cb:SetChecked(fields.hide)

                cb:SetScript("OnClick", function(self)
                    entry.hide = self:GetChecked()

                    row:SetDirtyState(DungeonGuide_AreEntriesEqual(baseEntry, entry) == false)
                end)

                if isElvUI and S.HandleCheckBox then
                    S:HandleCheckBox(cb)
                end
            elseif col.key == "remove" then
                if entry.added then
                    local removeBtn = CreateFrame("Button", nil, row, "UIPanelCloseButton")
                    removeBtn:SetSize(18, 18)
                    removeBtn:SetPoint("LEFT", x + 4, 0)

                    -- Mid red tint
                    local tex = removeBtn:GetNormalTexture()
                    if tex then tex:SetVertexColor(0.8, 0.2, 0.2) end
                    local htex = removeBtn:GetHighlightTexture()
                    if htex then htex:SetVertexColor(1.0, 0.4, 0.4) end

                    removeBtn:SetScript("OnClick", function()
                        DungeonGuideEditorUI:Confirm("Remove this Entry?", function()
                            DungeonGuideEditorUI:RemoveRow(row)
                        end)
                    end)

                    if isElvUI and S.HandleCloseButton then
                        S:HandleCloseButton(removeBtn)
                    end
                end    
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

                            -- Check for difference from base
                            row:SetDirtyState(DungeonGuide_AreEntriesEqual(baseEntry, entry) == false)
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

                            -- Check for difference from base
                            row:SetDirtyState(DungeonGuide_AreEntriesEqual(baseEntry, entry) == false)
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
                label:SetText(entry.text or "")

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
                    label:SetText(newText)
                    editBox:Hide()
                    label:Show()

                    -- Check for difference from base
                    row:SetDirtyState(DungeonGuide_AreEntriesEqual(baseEntry, entry) == false)
                end

                editBox:SetScript("OnEnterPressed", commitEdit)
                editBox:SetScript("OnEscapePressed", commitEdit)
                editBox:SetScript("OnEditFocusLost", commitEdit)
            elseif col.key == "order" then
                local orderFrame = CreateFrame("Frame", nil, row)
                orderFrame:SetPoint("LEFT", x + 2, 0)
                orderFrame:SetSize(col.width - 6, rowHeight)

                local label = orderFrame:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
                label:SetAllPoints()
                label:SetJustifyH("CENTER")
                label:SetJustifyV("MIDDLE")
                label:SetText(fields.order)

                if (entry.override) then
                    label:SetTextColor(1, 0.4, 1) -- Highlight color for overrides
                else
                    label:SetTextColor(1, 1, 1) -- Default text color
                end

                local editBox = CreateFrame("EditBox", nil, orderFrame, "InputBoxTemplate")
                editBox:SetAllPoints()
                editBox:SetAutoFocus(false)
                editBox:SetMultiLine(false)
                editBox:Hide()
                editBox:SetFontObject("GameFontHighlightSmall")
                editBox:SetText(fields.order)

                orderFrame:SetScript("OnMouseDown", function()
                    label:Hide()
                    editBox:Show()
                    editBox:SetFocus()
                    editBox:SetCursorPosition(0)
                end)

                local function commitOrderEdit()
                    editBox:Hide()
                    label:Show()

                    local newOrder = tonumber(editBox:GetText())

                    if not newOrder then
                        return
                    end

                    -- Clamp the value within range
                    newOrder = math.max(1, math.min(#self.currentRows, newOrder))

                    label:SetText(tostring(newOrder))

                    -- Find and remove current row
                    local oldIndex = DungeonGuide_tIndexOf(self.currentRows, row)

                    if oldIndex then
                        table.remove(self.currentRows, oldIndex)
                    end

                    -- Insert into new position
                    table.insert(self.currentRows, newOrder, row)

                    -- Rebuild order values
                    self:UpdateOrder(self.currentDungeon, self.currentEncounter)

                    -- Re-render table
                    self:PopulateGuideEntries(self.currentDungeon, self.currentEncounter)
                end

                editBox:SetScript("OnEnterPressed", commitOrderEdit)
                editBox:SetScript("OnEscapePressed", commitOrderEdit)
                editBox:SetScript("OnEditFocusLost", commitOrderEdit)
            else
                local fs = row:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
                fs:SetPoint("LEFT", x + 4, 0)
                fs:SetWidth(col.width - 6)
                fs:SetHeight(rowHeight)
                fs:SetJustifyH(col.align)
                fs:SetJustifyV("MIDDLE")
                fs:SetText(fields[col.key] or "")
            end

            x = x + col.width
        end
    end

    -- Generate guide rows
    self.baseEntries = DungeonGuide_SaveBaseEntries(self.currentDungeon, self.currentEncounter)

    local order = 1
    local index = 1

    local orderedEntries = CopyTable(guide.entries or {})

    local orderTable = DungeonGuide_Orders[dungeonName] and DungeonGuide_Orders[dungeonName][encounterName]

    if orderTable then
        table.sort(orderedEntries, function(a, b)
            return (orderTable[a.id] or 9999) < (orderTable[b.id] or 9999)
        end)
    end

    for _, entry in ipairs(orderedEntries) do
        local workingEntry = CopyTable(entry)
        CreateRow(index, order, workingEntry, entry.role or "ALL")
        order = order + 1
        index = index + 1
    end

    editArea:SetHeight((index + 1) * rowHeight + 10)
end

function DungeonGuideEditorUI:AddNewEntry()
    if not self.currentDungeon or not self.currentEncounter then
        return
    end

    local dungeon = self.currentDungeon
    local encounter = self.currentEncounter

    -- Ensure base structure
    DungeonGuide_Overrides[dungeon] = DungeonGuide_Overrides[dungeon] or {}
    DungeonGuide_Overrides[dungeon][encounter] = DungeonGuide_Overrides[dungeon][encounter] or {}
    DungeonGuide_Orders[dungeon] = DungeonGuide_Orders[dungeon] or {}
    DungeonGuide_Orders[dungeon][encounter] = DungeonGuide_Orders[dungeon][encounter] or {}

    local overrideList = DungeonGuide_Overrides[dungeon][encounter]
    local orderTable = DungeonGuide_Orders[dungeon][encounter]

    -- Generate a new unique ID
    local newID = "gen-" .. math.random(1e9)

    -- Create new entry
    local newEntry = {
        id = newID,
        type = "Mechanic",
        role = "TANK",
        text = "",
        hide = false,
        override = true,
        added = true
    }

    -- Add to override list
    table.insert(overrideList, newEntry)

    -- Set order to max + 1
    local maxOrder = 0
    for _, ord in pairs(orderTable) do
        if ord > maxOrder then maxOrder = ord end
    end
    orderTable[newID] = maxOrder + 1

    -- Re-render
    self:PopulateGuideEntries(dungeon, encounter)
end

function DungeonGuideEditorUI:RemoveRow(row)
    if not row or not row.entry or not row.entry.id then
        return
    end

    local id = row.entry.id
    local dungeon = self.currentDungeon
    local encounter = self.currentEncounter

    -- Remove from override list
    local overrides = DungeonGuide_Overrides[dungeon] and DungeonGuide_Overrides[dungeon][encounter]
    if overrides then
        for i = #overrides, 1, -1 do
            if overrides[i].id == id then
                table.remove(overrides, i)
                break
            end
        end
    end

    -- Remove from order list
    if DungeonGuide_Orders[dungeon] and DungeonGuide_Orders[dungeon][encounter] then
        DungeonGuide_Orders[dungeon][encounter][id] = nil
    end

    -- Refresh UI
    self:PopulateGuideEntries(dungeon, encounter)
end

function DungeonGuideEditorUI:SaveData()
    if not self.currentDungeon or not self.currentEncounter then
        return
    end

    local dungeon = self.currentDungeon
    local encounter = self.currentEncounter

    -- Load existing overrides for this encounter (if any)
    local previousOverrides = DungeonGuide_GetOverrideEntry(dungeon, encounter) or {}
    local previousMap = DungeonGuide_BuildEntryMapById(previousOverrides)

    -- Build new merged override list
    local newOverrideMap = {}

    for _, row in ipairs(self.currentRows or {}) do
        if row.entry and row.entry.id then
            local id = row.entry.id
            local isModified = DungeonGuide_AreEntriesEqual(row.entry, row.baseEntry) == false

            if isModified then
                -- Changed: mark as override
                row.entry.override = true
                newOverrideMap[id] = CopyTable(row.entry)
                DungeonGuide_DebugInfo("Saving dirty entry: " .. id)
            elseif previousMap[id] then
                -- Reverted: was previously overridden but now matches base — omit from save
                DungeonGuide_DebugInfo("Entry reverted to base: " .. id)
            end
        end
    end

    -- Convert merged map to ordered list
    local mergedOverrides = {}
    for _, row in ipairs(self.currentRows) do
        if row.entry and row.entry.id then
            local id = row.entry.id
            if newOverrideMap[id] then
                table.insert(mergedOverrides, newOverrideMap[id])
            end
        end
    end

    -- Save or clear
    DungeonGuide_Overrides[dungeon] = DungeonGuide_Overrides[dungeon] or {}

    if #mergedOverrides > 0 then
        DungeonGuide_Overrides[dungeon][encounter] = mergedOverrides
        DungeonGuide_DebugInfo("Saved " .. #mergedOverrides .. " override(s) for " .. dungeon .. " - " .. encounter)
    else
        DungeonGuide_Overrides[dungeon][encounter] = nil
        DungeonGuide_DebugInfo("Cleared overrides for " .. dungeon .. " - " .. encounter)
    end
end

function DungeonGuideEditorUI:InitialiseOrderIfMissing(dungeonID, encounterID, entries)
    DungeonGuide_Orders[dungeonID] = DungeonGuide_Orders[dungeonID] or {}
    DungeonGuide_Orders[dungeonID][encounterID] = DungeonGuide_Orders[dungeonID][encounterID] or {}

    local orderTable = DungeonGuide_Orders[dungeonID][encounterID]

    -- Get current max index in the order table
    local maxIndex = 0
    for _, index in pairs(orderTable) do
        if index > maxIndex then
            maxIndex = index
        end
    end

    -- Add missing entries to the order table
    for _, entry in ipairs(entries) do
        if entry.id and not orderTable[entry.id] then
            maxIndex = maxIndex + 1
            orderTable[entry.id] = maxIndex
        end
    end
end

function DungeonGuideEditorUI:UpdateOrder(dungeonID, encounterID)
    if not self.currentRows or not next(self.currentRows) then
        return
    end

    DungeonGuide_Orders[dungeonID] = DungeonGuide_Orders[dungeonID] or {}
    local newOrder = {}

    for index, row in ipairs(self.currentRows) do
        if row.entry and row.entry.id then
            newOrder[row.entry.id] = index
        end
    end

    DungeonGuide_Orders[dungeonID][encounterID] = newOrder
    DungeonGuide_DebugInfo("Updated entry order for " .. dungeonID .. " - " .. encounterID)
end

function DungeonGuideEditorUI:Reset()
    if not self.currentDungeon or not self.currentEncounter then
        return
    end

    if DungeonGuide_Overrides[self.currentDungeon] then
        DungeonGuide_Overrides[self.currentDungeon][self.currentEncounter] = nil

        if next(DungeonGuide_Overrides[self.currentDungeon]) == nil then
            DungeonGuide_Overrides[self.currentDungeon] = nil
        end
    end

    if DungeonGuide_Orders[self.currentDungeon] then
        DungeonGuide_Orders[self.currentDungeon][self.currentEncounter] = nil

        if next(DungeonGuide_Orders[self.currentDungeon]) == nil then
            DungeonGuide_Orders[self.currentDungeon] = nil
        end
    end

    DungeonGuide_DebugInfo("Cleared overrides for " .. self.currentDungeon .. " - " .. self.currentEncounter)
    self:PopulateGuideEntries(self.currentDungeon, self.currentEncounter)
end

function DungeonGuideEditorUI:Confirm(message, onConfirm)
    -- If a confirm dialog is already open, do nothing
    if self.confirmDialog and self.confirmDialog:IsShown() then
        return
    end

    local dialog = CreateFrame("Frame", nil, UIParent, "BackdropTemplate")
    dialog:SetSize(280, 120)
    dialog:SetPoint("CENTER")
    dialog:SetBackdrop({
        bgFile = "Interface\\Buttons\\WHITE8x8",
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
        edgeSize = 16,
        insets = { left = 4, right = 4, top = 4, bottom = 4 }
    })

    dialog:SetFrameStrata("DIALOG")
    dialog:SetMovable(true)
    dialog:EnableMouse(true)
    dialog:RegisterForDrag("LeftButton")
    dialog:SetScript("OnDragStart", dialog.StartMoving)
    dialog:SetScript("OnDragStop", dialog.StopMovingOrSizing)
    dialog:SetBackdropColor(0, 0, 0, 1)

    -- Message text
    local label = dialog:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
    label:SetPoint("TOP", 0, -20)
    label:SetText(message or "Are you sure?")
    label:SetTextColor(1, 1, 1)  -- White text

    -- Yes Button
    local yesBtn = CreateFrame("Button", nil, dialog, "UIPanelButtonTemplate")
    yesBtn:SetSize(80, 24)
    yesBtn:SetPoint("BOTTOMLEFT", 20, 20)
    yesBtn:SetNormalTexture("Interface\\Buttons\\WHITE8x8")
    yesBtn:GetNormalTexture():SetVertexColor(0.2, 0.2, 0.2, 1)  -- dark grey
    yesBtn:SetHighlightTexture("Interface\\Buttons\\WHITE8x8")
    yesBtn:GetHighlightTexture():SetVertexColor(0.4, 0.4, 0.4, 1)
    yesBtn:SetText("Yes")
    yesBtn:GetFontString():SetTextColor(1, 1, 0.4) -- yellow-ish
    yesBtn:SetScript("OnClick", function()
        dialog:Hide()
        if onConfirm then onConfirm() end
    end)

    -- No Button
    local noBtn = CreateFrame("Button", nil, dialog, "UIPanelButtonTemplate")
    noBtn:SetSize(80, 24)
    noBtn:SetPoint("BOTTOMRIGHT", -20, 20)
    noBtn:SetNormalTexture("Interface\\Buttons\\WHITE8x8")
    noBtn:GetNormalTexture():SetVertexColor(0.2, 0.2, 0.2, 1)  -- dark grey
    noBtn:SetHighlightTexture("Interface\\Buttons\\WHITE8x8")
    noBtn:GetHighlightTexture():SetVertexColor(0.4, 0.2, 0.2, 1)
    noBtn:SetText("No")
    noBtn:GetFontString():SetTextColor(1, 0.6, 0.6) -- light red
    noBtn:SetScript("OnClick", function()
        dialog:Hide()
    end)

    dialog:Show()
    self.confirmDialog = dialog
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