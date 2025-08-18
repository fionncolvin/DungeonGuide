DungeonGuideDB = DungeonGuideDB or {}
DungeonGuide_Guides = DungeonGuide_Guides or {}
DungeonGuide_Overrides = DungeonGuide_Overrides or {}
DungeonGuide_Orders = DungeonGuide_Orders or {}

BINDING_NAME_DUNGEONGUIDE_OPEN_SELECTOR = "Open Dungeon Selector"
BINDING_NAME_DUNGEONGUIDE_INSTANCE_INFORMATION = "Show Instance Information"

local f = CreateFrame("Frame")

DungeonGuideContext = {
    season = nil,
    role = nil,
    encounter = nil,
    dungeonID = nil
}

function DungeonGuide_ShowInstanceDetals()
    -- GetInstanceInfo basics
    local name, instanceType, difficultyID, difficultyName, maxPlayers,
          dynamicDifficulty, isDynamic, instanceID, instanceGroupSize,
          lfgDungeonID, toggleDifficultyID = GetInstanceInfo()

    -- Challenge Mode (Mythic+) map id + readable name (if any)
    local cmMapID = C_ChallengeMode and C_ChallengeMode.GetActiveChallengeMapID and C_ChallengeMode.GetActiveChallengeMapID()
    local cmName
    if cmMapID and C_ChallengeMode.GetMapUIInfo then
        local info = C_ChallengeMode.GetMapUIInfo(cmMapID) -- returns name (string)
        if type(info) == "table" then
            cmName = info.name
        else
            cmName = info -- some builds return string directly
        end
    end

    -- UiMapID + group + map name
    local uiMapID = C_Map and C_Map.GetBestMapForUnit and C_Map.GetBestMapForUnit("player")
    local mapGroupID = (uiMapID and C_Map.GetMapGroupID) and C_Map.GetMapGroupID(uiMapID) or nil
    local mapInfo = (uiMapID and C_Map.GetMapInfo) and C_Map.GetMapInfo(uiMapID) or nil
    local mapName = mapInfo and mapInfo.name or nil

    -- Optional: Encounter Journal instance id from map (may be nil)
    local ejInstanceID
    if uiMapID and EJ_GetInstanceForMap then
        ejInstanceID = EJ_GetInstanceForMap(uiMapID)
    elseif uiMapID and C_EncounterJournal and C_EncounterJournal.GetInstanceForMap then
        -- depending on client, this may exist instead
        ejInstanceID = C_EncounterJournal.GetInstanceForMap(uiMapID)
    end

    print("----- DungeonGuide Zone Info -----")
    print("Name:                ", tostring(name))
    print("Type:                ", tostring(instanceType))
    print("Difficulty ID:       ", tostring(difficultyID))
    print("Difficulty Name:     ", tostring(difficultyName))
    print("Max Players:         ", tostring(maxPlayers))
    print("Dynamic Difficulty:  ", tostring(dynamicDifficulty))
    print("Is Dynamic:          ", tostring(isDynamic))
    print("Instance ID:         ", tostring(instanceID))
    print("Group Size:          ", tostring(instanceGroupSize))
    print("LFG Dungeon ID:      ", tostring(lfgDungeonID))
    print("Toggle Difficulty ID:", tostring(toggleDifficultyID))
    print("--- Map Detection ----------------")
    print("CM Map ID:           ", tostring(cmMapID or "nil"), cmName and ("("..cmName..")") or "")
    print("UiMapID:             ", tostring(uiMapID or "nil"))
    print("Map Group ID:        ", tostring(mapGroupID or "nil"))
    print("Map Name:            ", tostring(mapName or "nil"))
    print("EJ Instance (map):   ", tostring(ejInstanceID or "nil"))
    print("----------------------------------")
end

-- Detect context based on zone and set guide data
function DungeonGuide_DetectGuideContext()
    local season = DungeonGuideDB.selectedSeason or DungeonGuide_GetAvailableSeasons()[1]
    local role = DungeonGuide_GetPlayerRole()
    local encounter = GetRealZoneText() -- still use zone text as default encounter

    local dungeonID = DungeonGuide_FindDungeonIDByContext()

    if not dungeonID then
        DungeonGuide_DebugInfo("[DungeonGuide_DetectGuideContext]: No dungeon found for current context, season: " .. tostring(season))
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
        elseif DungeonGuideUI and DungeonGuideUI.GuideButton and DungeonGuideDB.autoHide then
            DungeonGuideUI.GuideButton:Hide()
        end
    end
end

-- Event registration
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:RegisterEvent("CHALLENGE_MODE_START")
f:RegisterEvent("ZONE_CHANGED_NEW_AREA")

f:SetScript("OnEvent", function()
    C_Timer.After(5, DungeonGuide_DetectGuideContext)
end)

-- Slash command handler
SLASH_DGINSTANCE1 = "/dginfo"
SlashCmdList["DGINSTANCE"] = function() DungeonGuide_ShowInstanceDetals() end

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
end