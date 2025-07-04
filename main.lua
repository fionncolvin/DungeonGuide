DungeonGuideDB = DungeonGuideDB or {}
DungeonGuide_Guides = DungeonGuide_Guides or {}
DungeonGuide_Overrides = DungeonGuide_Overrides or {}
DungeonGuide_Orders = DungeonGuide_Orders or {}

BINDING_NAME_DUNGEONGUIDE_OPEN_SELECTOR = "Open Dungeon Selector"

local f = CreateFrame("Frame")

DungeonGuideContext = {
    forceSelect = false,
    role = nil,
    encounter = nil,
    dungeon = nil
}

-- Default settings
local defaults = {
    debug = false,
    autoHide = true,
    font = "GameFontHighlightSmall",
    fontSize = 12,
    rowSpacing = 22,
    colours = {
        Call =      { r = 0.3,  g = 0.45, b = 0.75, a = 0.3 },
        Position =  { r = 0.8,  g = 0.5,  b = 0.2,  a = 0.3 },
        Interrupt = { r = 0.85, g = 0.4,  b = 0.85, a = 0.3 },
        Mechanic =  { r = 0.5,  g = 0.5,  b = 0.5,  a = 0.3 }
    }
}

local function ApplyDefaults()
    DungeonGuideDB = DungeonGuideDB or {}

    for k, v in pairs(defaults) do
        if DungeonGuideDB[k] == nil then
            DungeonGuideDB[k] = v
        end
    end

    DungeonGuideDB.colours = DungeonGuideDB.colours or {}
    for key, color in pairs(defaults.colours) do
        DungeonGuideDB.colours[key] = DungeonGuideDB.colours[key] or color
    end

    DungeonGuideDB.font = DungeonGuideDB.font or "GameFontHighlightSmall"
end

ApplyDefaults()

-- Detect context based on zone and set guide data
function DungeonGuide_DetectGuideContext()
    DungeonGuideContext.dungeon = GetRealZoneText()

    if DungeonGuideContext.dungeon then
        DungeonGuide_DebugInfo("Detecting context for dungeon: " .. DungeonGuideContext.dungeon)
    end

    local dungeon = DungeonGuide_GetDungeonEntry()

    if dungeon then
        DungeonGuideContext.role = DungeonGuide_GetPlayerRole()
        DungeonGuideContext.encounter = DungeonGuideContext.dungeon
        
        if DungeonGuideUI and DungeonGuideUI.ShowGuideButton then
            DungeonGuideUI:ShowGuideButton()
        end
    else
        if DungeonGuideUI and DungeonGuideUI.GuideButton and DungeonGuideDB.autoHide then
            DungeonGuideUI.GuideButton:Hide()
        end
    end
end

-- Event registration
f:RegisterEvent("PLAYER_REGEN_ENABLED")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:RegisterEvent("ZONE_CHANGED")
f:RegisterEvent("ZONE_CHANGED_NEW_AREA")
f:RegisterEvent("ZONE_CHANGED_INDOORS")

f:SetScript("OnEvent", function()
    C_Timer.After(1, DungeonGuide_DetectGuideContext)
end)

-- Slash command handler
SLASH_DUNGEONGUIDE1 = "/dg"
SlashCmdList["DUNGEONGUIDE"] = function(msg)
    local role, encounter, dungeon = msg:match("^(.-)%s*@%s*(.-)%s*@%s*(.-)%s*$")

    if role and encounter and dungeon then
        DungeonGuideContext = {
            role = role,
            encounter = encounter,
            dungeon = dungeon,
            forceSelect = true
        }

        if DungeonGuideUI and DungeonGuideUI.ShowGuide then
            DungeonGuideUI:ShowGuideButton()
            DungeonGuideUI:ShowGuide()
        end

        DungeonGuideContext.forceSelect = false
    else
        print("[DungeonGuide] Usage: /dg role @ encounter @ dungeon")
    end
end