DungeonGuideDB = DungeonGuideDB or {}
DungeonGuide_Guides = DungeonGuide_Guides or {}
DungeonGuide_Overrides = DungeonGuide_Overrides or {}
DungeonGuide_Orders = DungeonGuide_Orders or {}

BINDING_NAME_DUNGEONGUIDE_OPEN_SELECTOR = "Open Dungeon Selector"
BINDING_NAME_DUNGEONGUIDE_INSTANCE_INFORMATION = "Show Instance Information"

local f = CreateFrame("Frame")

DungeonGuideContext = {
    season = nil,
    forceSelect = false,
    role = nil,
    encounter = nil,
    dungeonID = nil
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
    local role = DungeonGuide_GetPlayerRole()
    local encounter = GetRealZoneText()
    local dungeonID = DungeonGuide_FindDungeonIDByNameAndSeason(zoneName, season)

    if not dungeonID then
        DungeonGuide_DebugInfo("[DungeonGuide_DetectGuideContext]: No dungeon found for name: " .. tostring(zoneName) .. ", season: " .. tostring(season))

        if DungeonGuideUI and DungeonGuideUI.GuideButton and DungeonGuideDB.autoHide then
            DungeonGuideUI.GuideButton:Hide()
        end
    else
        DungeonGuide_SetGuideContext(season, role, dungeonID, encounter, false)

        local dungeon = DungeonGuide_GetDungeonEntry(dungeonID)

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
end

-- Event registration
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:RegisterEvent("CHALLENGE_MODE_START")
f:RegisterEvent("ZONE_CHANGED_NEW_AREA")

f:SetScript("OnEvent", function()
    C_Timer.After(1, DungeonGuide_DetectGuideContext)
end)

-- Slash command handler
SLASH_DUNGEONGUIDE1 = "/dg"
SlashCmdList["DUNGEONGUIDE"] = function(msg)
    local role, encounter, dungeon = msg:match("^(.-)%s*@%s*(.-)%s*@%s*(.-)%s*$")

    if not role then
        role = DungeonGuide_GetPlayerRole()
    end

    if not encounter then
        encounter = "Route" -- default to route if not specified
    end

    if not dungeon then
        dungeon = "Priory of the Sacred Flame" -- default dungeon if not specified
    end

    local season = DungeonGuideDB.selectedSeason or DungeonGuide_GetAvailableSeasons()[1]
    local dungeonID = DungeonGuide_FindDungeonIDByNameAndSeason(dungeon, season)

    DungeonGuide_SetGuideContext(season, role, dungeonID, encounter, true)

    if DungeonGuideUI and DungeonGuideUI.ShowGuide then
        DungeonGuideUI:ShowGuideButton()
        DungeonGuideUI:ShowGuide()
    end

    DungeonGuideContext.forceSelect = false
end