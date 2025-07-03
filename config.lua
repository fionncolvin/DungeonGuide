local function CreateDungeonGuideOptionsPanel()
    DungeonGuideDB = DungeonGuideDB or {}
    DungeonGuideDB.colours = DungeonGuideDB.colours or {
        Call = { r = 0.3, g = 0.45, b = 0.75, a = 0.3 },
        Position = { r = 0.8, g = 0.5, b = 0.2, a = 0.3 },
        Interrupt = { r = 0.85, g = 0.4, b = 0.85, a = 0.3 },
        Mechanic = { r = 0.5, g = 0.5, b = 0.5, a = 0.3 }
    }

    local panel = CreateFrame("Frame", "DungeonGuideOptionsPanel", UIParent)
    panel.name = "DungeonGuide"

    local title = panel:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    title:SetPoint("TOPLEFT", 16, -16)
    title:SetText("DungeonGuide Options")

    -- Font Size Slider
    local fontSizeSlider = CreateFrame("Slider", "DungeonGuideFontSizeSlider", panel, "OptionsSliderTemplate")
    fontSizeSlider:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -40)
    fontSizeSlider:SetMinMaxValues(8, 24)
    fontSizeSlider:SetValueStep(1)
    fontSizeSlider:SetObeyStepOnDrag(true)
    fontSizeSlider:SetWidth(200)
    fontSizeSlider:SetValue(DungeonGuideDB.fontSize or 12)
    fontSizeSlider:SetScript("OnValueChanged", function(self, value)
        value = math.floor(value)
        DungeonGuideDB.fontSize = value
        if DungeonGuideUI and DungeonGuideUI.frame and DungeonGuideUI.frame:IsShown() then
            DungeonGuideUI:UpdateGuideContent()
        end
    end)

    -- Font Dropdown
    local LSM = LibStub("LibSharedMedia-3.0")
    local fonts = LSM:List("font")
    table.sort(fonts)
    
    local fontDropdown = CreateFrame("Frame", "DungeonGuideFontDropdown", panel, "UIDropDownMenuTemplate")
    fontDropdown:SetPoint("TOPLEFT", fontSizeSlider, "BOTTOMLEFT", -20, -40)
    fontDropdown:SetWidth(200)
    
    UIDropDownMenu_SetWidth(fontDropdown, 200)

    UIDropDownMenu_Initialize(fontDropdown, function(self, level)
        for _, fontName in ipairs(fonts) do
            local info = UIDropDownMenu_CreateInfo()
            info.text = fontName
            info.func = function()
                DungeonGuideDB.font = fontName
                UIDropDownMenu_SetSelectedName(fontDropdown, fontName)

                DungeonGuideFontDropdownText:SetWidth(180)  -- make sure text doesn't overflow
                DungeonGuideFontDropdownButton:SetPoint("RIGHT", DungeonGuideFontDropdown, "RIGHT", -10, 0) -- align arrow nicely

                if DungeonGuideUI and DungeonGuideUI.frame and DungeonGuideUI.frame:IsShown() then
                    DungeonGuideUI:UpdateGuideContent()
                end
            end
            UIDropDownMenu_AddButton(info)
        end
    end)
    
    -- Set the currently selected font
    UIDropDownMenu_SetSelectedName(fontDropdown, DungeonGuideDB.font or "Friz Quadrata TT")

    -- Row Spacing Slider
    local rowSpacingSlider = CreateFrame("Slider", "DungeonGuideRowSpacingSlider", panel, "OptionsSliderTemplate")
    rowSpacingSlider:SetPoint("TOPLEFT", fontDropdown, "BOTTOMLEFT", 20, -40)
    rowSpacingSlider:SetMinMaxValues(16, 36)
    rowSpacingSlider:SetValueStep(1)
    rowSpacingSlider:SetObeyStepOnDrag(true)
    rowSpacingSlider:SetWidth(200)
    rowSpacingSlider:SetValue(DungeonGuideDB.rowSpacing or 22)
    rowSpacingSlider:SetScript("OnValueChanged", function(self, value)
        value = math.floor(value)
        DungeonGuideDB.rowSpacing = value
        DungeonGuideRowSpacingSliderText:SetText("Row Spacing: " .. value)
        if DungeonGuideUI and DungeonGuideUI.frame and DungeonGuideUI.frame:IsShown() then
            DungeonGuideUI:UpdateGuideContent()
        end
    end)
    DungeonGuideRowSpacingSliderText:SetText("Row Spacing")
    DungeonGuideRowSpacingSliderLow:SetText("16")
    DungeonGuideRowSpacingSliderHigh:SetText("36")

    -- Debug Checkbox
    local debugCheckbox = CreateFrame("CheckButton", "DG_DebugCheckbox", panel, "InterfaceOptionsCheckButtonTemplate")
    debugCheckbox:SetPoint("TOPLEFT", rowSpacingSlider, "BOTTOMLEFT", 0, -40)
    debugCheckbox.Text:SetText("Enable Debug Mode")
    debugCheckbox:SetChecked(DungeonGuideDB.debug)
    
    debugCheckbox:SetScript("OnClick", function(self)
        DungeonGuideDB.debug = self:GetChecked()
    end)

    -- Auto-Hide Guide Button Checkbox
    local autoHideCheckbox = CreateFrame("CheckButton", "DG_AutoHideCheckbox", panel, "InterfaceOptionsCheckButtonTemplate")
    autoHideCheckbox:SetPoint("TOPLEFT", debugCheckbox, "BOTTOMLEFT", 0, -40)
    autoHideCheckbox.Text:SetText("Auto Hide Guide Button")
    autoHideCheckbox:SetChecked(DungeonGuideDB.autoHide)
    
    autoHideCheckbox:SetScript("OnClick", function(self)
        DungeonGuideDB.autoHide = self:GetChecked()
    end)

    -- Color Picker Helper
    local function CreateColorPicker(parent, label, key, yOffset, relativeTo, stackBelow)
        local title = parent:CreateFontString(nil, "ARTWORK", "GameFontNormal")

        if relativeTo then
            title:SetPoint("TOPLEFT", relativeTo, "BOTTOMLEFT", 0, yOffset)
        elseif stackBelow and panel.lastColorPicker then
            title:SetPoint("TOPLEFT", panel.lastColorPicker, "BOTTOMLEFT", 0, yOffset)
        else
            title:SetPoint("TOPLEFT", 16, yOffset)
        end

        title:SetText(label .. " Colour")

        local swatch = CreateFrame("Button", nil, parent)
        swatch:SetSize(20, 20)
        swatch:SetPoint("LEFT", title, "RIGHT", 10, 0)

        local tex = swatch:CreateTexture(nil, "BACKGROUND")
        tex:SetAllPoints()
        local c = DungeonGuideDB.colours[key]
        tex:SetColorTexture(c.r, c.g, c.b, c.a)

        swatch:SetScript("OnClick", function()
            local function updateColor()
                local r, g, b = ColorPickerFrame:GetColorRGB()
                local a = 1 - (OpacitySliderFrame and OpacitySliderFrame:GetValue() or 0)
                DungeonGuideDB.colours[key] = { r = r, g = g, b = b, a = a }
                tex:SetColorTexture(r, g, b, a)
                if DungeonGuideUI and DungeonGuideUI.frame and DungeonGuideUI.frame:IsShown() then
                    DungeonGuideUI:UpdateGuideContent()
                end
            end
        
            local function cancelColor(previousValues)
                tex:SetColorTexture(previousValues.r, previousValues.g, previousValues.b, previousValues.a)
            end
        
            local c = DungeonGuideDB.colours[key]
            if not c then return end
        
            ColorPickerFrame.r = c.r
            ColorPickerFrame.g = c.g
            ColorPickerFrame.b = c.b
            ColorPickerFrame.opacity = 1 - c.a
            ColorPickerFrame.hasOpacity = true
            ColorPickerFrame.func = updateColor
            ColorPickerFrame.opacityFunc = updateColor
            ColorPickerFrame.cancelFunc = function()
                cancelColor(c)
            end
        
            ColorPickerFrame:Hide()
            ColorPickerFrame:Show()
        end)
        
        panel.lastColorPicker = title
    end

    -- Create one for each type
    CreateColorPicker(panel, "Call", "Call", -40, autoHideCheckbox)
    CreateColorPicker(panel, "Position", "Position", -30, nil, true)
    CreateColorPicker(panel, "Interrupt", "Interrupt", -30, nil, true)
    CreateColorPicker(panel, "Mechanic", "Mechanic", -30, nil, true)

    DungeonGuideOptionsCategory = Settings.RegisterCanvasLayoutCategory(panel, "DungeonGuide")
    Settings.RegisterAddOnCategory(DungeonGuideOptionsCategory)
end

-- Run after ADDON_LOADED to ensure DungeonGuideDB is ready
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(_, event, addonName)
    if addonName == "DungeonGuide" then
        CreateDungeonGuideOptionsPanel()
    end
end)