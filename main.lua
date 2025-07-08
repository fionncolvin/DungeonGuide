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
    else
        DungeonGuideContext = {
            encounter = "Route",
            dungeon = "Priory of the Sacred Flame",
            forceSelect = true
        }
    end

    if DungeonGuideUI and DungeonGuideUI.ShowGuide then
        DungeonGuideUI:ShowGuideButton()
        DungeonGuideUI:ShowGuide()
    end

    DungeonGuideContext.forceSelect = false
end