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

function DungeonGuide_ShowInstanceDetals()
    local name, instanceType, difficultyID, difficultyName, maxPlayers, dynamicDifficulty, isDynamic, instanceID, instanceGroupSize, lfgDungeonID, toggleDifficultyID = GetInstanceInfo()

    print("----- DungeonGuide Zone Info -----")
    print("Name:               ", name)
    print("Type:               ", instanceType)
    print("Difficulty ID:      ", difficultyID)
    print("Difficulty Name:    ", difficultyName)
    print("Max Players:        ", maxPlayers)
    print("Dynamic Difficulty: ", dynamicDifficulty)
    print("Is Dynamic:         ", isDynamic)
    print("Instance ID:        ", instanceID)
    print("Group Size:         ", instanceGroupSize)
    print("LFG Dungeon ID:     ", lfgDungeonID)
    print("Toggle Difficulty ID:", toggleDifficultyID)
    print("----------------------------------")
end

-- Detect context based on zone and set guide data
function DungeonGuide_DetectGuideContext()
    local zoneName = GetRealZoneText()
    local season = DungeonGuideDB.selectedSeason or DungeonGuide_GetAvailableSeasons()[1]

    DungeonGuideContext.role = DungeonGuide_GetPlayerRole()
    DungeonGuideContext.encounter = zoneName -- fallback default
    DungeonGuideContext.season = season

    DungeonGuideContext.dungeon = DungeonGuide_FindDungeonIDByNameAndSeason(zoneName, season)

    DungeonGuide_DebugInfo("Detecting context for zone: " .. tostring(zoneName) .. " | resolved dungeonID: " .. tostring(DungeonGuideContext.dungeon))

    local dungeon = DungeonGuide_GetDungeonEntry(DungeonGuideContext.dungeon)

    if dungeon then
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
f:RegisterEvent("CHALLENGE_MODE_START")
f:RegisterEvent("CHALLENGE_MODE_MAPS_UPDATE")

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
        local zoneName = "Priory of the Sacred Flame"
        local season = DungeonGuideDB.selectedSeason or DungeonGuide_GetAvailableSeasons()[1]

        DungeonGuideContext = {
            role = DungeonGuide_GetPlayerRole(),
            encounter = "Route",
            dungeon = DungeonGuide_FindDungeonIDByNameAndSeason(zoneName, season),
            season = season,
            forceSelect = true
        }
    end

    if DungeonGuideUI and DungeonGuideUI.ShowGuide then
        DungeonGuideUI:ShowGuideButton()
        DungeonGuideUI:ShowGuide()
    end

    DungeonGuideContext.forceSelect = false
end