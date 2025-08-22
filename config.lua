DungeonGuideConfig = {}

-- Default settings
local defaults = {
    debug = false,
    autoHide = true,
    font = "GameFontHighlightSmall",
    fontSize = 12,
    rowSpacing = 22,
    season = "TWW-S2",
    colours = {
        Call =      { r = 0.3,  g = 0.45, b = 0.75, a = 0.3 },
        Position =  { r = 0.8,  g = 0.5,  b = 0.2,  a = 0.3 },
        Interrupt = { r = 0.85, g = 0.4,  b = 0.85, a = 0.3 },
        Mechanic =  { r = 0.5,  g = 0.5,  b = 0.5,  a = 0.3 },
        Jump = { r = 0.18, g = 0.93, b = 0.21, a = 0.3 },
        Target = { r = 1.0, g = 1.0, b = 0.0, a = 1.0 }
    }
}

local CURRENT_ORDER_VERSION = "1.1"  -- Change this when structure changes
local CURRENT_OVERRIDE_VERSION = "1.1"  -- Change this when structure changes

function DungeonGuideConfig:RefreshSeasonDropdown()
    if not self.SeasonDropdown then return end

    local dropdown = self.SeasonDropdown
    local availableSeasons = DungeonGuide_GetAvailableSeasons()

    local current = DungeonGuideDB.selectedSeason
    if not current or not tContains(availableSeasons, current) then
        DungeonGuideDB.selectedSeason = availableSeasons[1] or "Unknown"
        current = DungeonGuideDB.selectedSeason
    end

    UIDropDownMenu_Initialize(dropdown, function(self, level)
        for _, season in ipairs(availableSeasons) do
            local info = UIDropDownMenu_CreateInfo()
            info.text = season
            info.func = function()
                DungeonGuideDB.selectedSeason = season
                UIDropDownMenu_SetSelectedName(dropdown, season)

                if DungeonGuideUI.frame and DungeonGuideUI.frame:IsShown() then
                    DungeonGuideUI:UpdateGuideContent()
                end
            end
            UIDropDownMenu_AddButton(info)
        end
    end)

    UIDropDownMenu_SetSelectedName(dropdown, current)
end

function DungeonGuideConfig:ApplyDefaults()
    DungeonGuideDB = DungeonGuideDB or {}

    -- Check and wipe DungeonGuide_Orders if version is missing or mismatched
    if type(DungeonGuide_Orders) ~= "table" or DungeonGuide_Orders.version ~= CURRENT_ORDER_VERSION then
        print("|cffff0000DungeonGuide: DungeonGuide_Orders missing or outdated. Wiping.|r")
        DungeonGuide_Orders = {
            version = CURRENT_ORDER_VERSION
        }
    end

    -- Check and wipe DungeonGuide_Overrides if version is missing or mismatched
    if type(DungeonGuide_Overrides) ~= "table" or DungeonGuide_Overrides.version ~= CURRENT_OVERRIDE_VERSION then
        print("|cffff0000DungeonGuide: DungeonGuide_Overrides missing or outdated. Wiping.|r")
        DungeonGuide_Overrides = {
            version = CURRENT_OVERRIDE_VERSION
        }
    end

    for k, v in pairs(defaults) do
        if DungeonGuideDB[k] == nil then
            DungeonGuideDB[k] = v
        end
    end

    DungeonGuideDB.colours = DungeonGuideDB.colours or {}

    for key, defaultColor in pairs(defaults.colours) do
        local userColor = DungeonGuideDB.colours[key]
        if type(userColor) ~= "table" then
            DungeonGuideDB.colours[key] = CopyTable(defaultColor)
        else
            for channel, value in pairs(defaultColor) do
                if userColor[channel] == nil then
                    userColor[channel] = value
                end
            end
        end
    end
end

function DungeonGuideConfig:CreateDungeonGuideOptionsPanel()
    DungeonGuideDB = DungeonGuideDB or {}

    local panel = CreateFrame("Frame", "DungeonGuideOptionsPanel", UIParent)
    panel.name = "DungeonGuide"

    -- Scroll Frame
    local scrollFrame = CreateFrame("ScrollFrame", nil, panel, "UIPanelScrollFrameTemplate")
    scrollFrame:SetPoint("TOPLEFT", 0, -8)
    scrollFrame:SetPoint("BOTTOMRIGHT", -30, 8)

    -- Scroll Child Frame
    local content = CreateFrame("Frame", nil, scrollFrame)
    scrollFrame:SetScrollChild(content)
    content:SetSize(1, 1)  -- will auto-expand

    local title = content:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    title:SetPoint("TOPLEFT", 16, -16)
    title:SetText("DungeonGuide Options")

    -- Font Size Slider
    local fontSizeSlider = CreateFrame("Slider", "DungeonGuideFontSizeSlider", content, "OptionsSliderTemplate")
    fontSizeSlider:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -40)
    fontSizeSlider:SetMinMaxValues(8, 24)
    fontSizeSlider:SetValueStep(1)
    fontSizeSlider:SetObeyStepOnDrag(true)
    fontSizeSlider:SetWidth(200)
    fontSizeSlider:SetValue(DungeonGuideDB.fontSize or 12)
    fontSizeSlider:SetScript("OnValueChanged", function(self, value)
        value = math.floor(value)
        DungeonGuideDB.fontSize = value
        DungeonGuideFontSizeSliderText:SetText("Font Size: " .. value)
        if DungeonGuideUI and DungeonGuideUI.frame and DungeonGuideUI.frame:IsShown() then
            DungeonGuideUI:UpdateGuideContent()
        end
    end)
    DungeonGuideFontSizeSliderText:SetText("Font Size: " .. (DungeonGuideDB.fontSize or 12))
    DungeonGuideFontSizeSliderLow:SetText("8")
    DungeonGuideFontSizeSliderHigh:SetText("24")

    -- Row Spacing Slider
    local rowSpacingSlider = CreateFrame("Slider", "DungeonGuideRowSpacingSlider", content, "OptionsSliderTemplate")
    rowSpacingSlider:SetPoint("TOPLEFT", fontSizeSlider, "TOPRIGHT", 110, 0)
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
    DungeonGuideRowSpacingSliderText:SetText("Row Spacing: " .. (DungeonGuideDB.rowSpacing or 22))
    DungeonGuideRowSpacingSliderLow:SetText("16")
    DungeonGuideRowSpacingSliderHigh:SetText("36")

    local fontHeader = content:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    fontHeader:SetPoint("TOPLEFT", fontSizeSlider, "BOTTOMLEFT", 0, -60)
    fontHeader:SetText("Guide Font")

    local seasonHeader = content:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    seasonHeader:SetPoint("TOPLEFT", rowSpacingSlider, "BOTTOMLEFT", 0, -60)
    seasonHeader:SetText("Season Selector")

    -- Font Dropdown
    local LSM = LibStub("LibSharedMedia-3.0")
    local fonts = LSM:List("font")
    table.sort(fonts, function(a, b) return a:lower() < b:lower() end)
    
    local fontDropdown = CreateFrame("Frame", "DungeonGuideFontDropdown", content, "UIDropDownMenuTemplate")
    fontDropdown:SetPoint("TOPLEFT", fontHeader, "BOTTOMLEFT", -20, -5)
    fontDropdown:SetWidth(200)
    
    UIDropDownMenu_SetWidth(fontDropdown, 200)

    UIDropDownMenu_Initialize(fontDropdown, function(self, level)
        for _, fontName in ipairs(fonts) do
            local info = UIDropDownMenu_CreateInfo()
            info.text = fontName
            info.func = function()
                DungeonGuideDB.font = fontName
                UIDropDownMenu_SetSelectedName(fontDropdown, fontName)

                DungeonGuideFontDropdownText:SetWidth(200)  -- make sure text doesn't overflow
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

    -- Season Dropdown
    local seasonDropdown = CreateFrame("Frame", "DungeonGuideSeasonDropdown", content, "UIDropDownMenuTemplate")
    seasonDropdown:SetPoint("TOPLEFT", seasonHeader, "BOTTOMLEFT", -20, -5)
    seasonDropdown:SetWidth(200)
    UIDropDownMenu_SetWidth(seasonDropdown, 200)
    self.SeasonDropdown = seasonDropdown

    -- Debug Checkbox
    local debugCheckbox = CreateFrame("CheckButton", "DG_DebugCheckbox", content, "InterfaceOptionsCheckButtonTemplate")
    debugCheckbox:SetPoint("TOPLEFT", fontDropdown, "BOTTOMLEFT", 20, -30)
    debugCheckbox.Text:SetText("Enable Debug Mode")
    debugCheckbox:SetChecked(DungeonGuideDB.debug)
    
    debugCheckbox:SetScript("OnClick", function(self)
        DungeonGuideDB.debug = self:GetChecked()
    end)

    -- Auto-Hide Guide Button Checkbox
    local autoHideCheckbox = CreateFrame("CheckButton", "DG_AutoHideCheckbox", content, "InterfaceOptionsCheckButtonTemplate")
    autoHideCheckbox:SetPoint("TOPLEFT", seasonDropdown, "BOTTOMLEFT", 20, -30)
    autoHideCheckbox.Text:SetText("Auto Hide Guide Button")
    autoHideCheckbox:SetChecked(DungeonGuideDB.autoHide)
    
    autoHideCheckbox:SetScript("OnClick", function(self)
        DungeonGuideDB.autoHide = self:GetChecked()
    end)

    -- Color Picker Helper
    local function CreateColorPicker(parent, label, key)
        local container = CreateFrame("Frame", nil, parent, "BackdropTemplate")
        container:SetSize(220, 28)

        local title = container:CreateFontString(nil, "ARTWORK", "GameFontNormal")
        title:SetPoint("LEFT", container, "LEFT", 0, 0)
        title:SetText(label .. " Colour")

        local swatch = CreateFrame("Button", nil, container)
        swatch:SetSize(20, 20)
        swatch:SetPoint("LEFT", title, "RIGHT", 10, 0)

        local tex = swatch:CreateTexture(nil, "BACKGROUND")
        tex:SetAllPoints()
        local defaultColor = { r = 1, g = 1, b = 1, a = 1 }
        local c = DungeonGuideDB.colours[key] or defaultColor
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

        return container
    end

    local colourLabels = {
        { label = "Call", key = "Call" },
        { label = "Position", key = "Position" },
        { label = "Interrupt", key = "Interrupt" },
        { label = "Mechanic", key = "Mechanic" },
        { label = "Jump", key = "Jump" },
        { label = "Target", key = "Target" }
    }

    local colourHeader = content:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    colourHeader:SetPoint("TOPLEFT", debugCheckbox, "BOTTOMLEFT", 0, -60)
    colourHeader:SetText("Guide Entry Colours")

    local spacingX = 5
    local spacingY = -5
    local itemsPerRow = 3

    local rowAnchor = colourHeader
    local prevInRow = nil

    for i, info in ipairs(colourLabels) do
        local col = (i - 1) % itemsPerRow
        local picker = CreateColorPicker(content, info.label, info.key)

        if col == 0 then
            picker:SetPoint("TOPLEFT", rowAnchor, "BOTTOMLEFT", 0, spacingY)
            rowAnchor = picker
            prevInRow = picker
        else
            picker:SetPoint("TOPLEFT", prevInRow, "TOPRIGHT", spacingX, 0)
            prevInRow = picker
        end
    end

    DungeonGuideOptionsCategory = Settings.RegisterCanvasLayoutCategory(content, "DungeonGuide")
    Settings.RegisterAddOnCategory(DungeonGuideOptionsCategory)
end

-- Run after ADDON_LOADED to ensure DungeonGuideDB is ready
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(_, event, addonName)
    if addonName == "DungeonGuide" then
        DungeonGuideConfig:ApplyDefaults()
        DungeonGuideConfig:CreateDungeonGuideOptionsPanel()
        DungeonGuideConfig:RefreshSeasonDropdown()
    end
end)