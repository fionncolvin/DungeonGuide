function DungeonGuide_FindGuideEntry(dungeonName, encounterName)
    for dungeon, encounters in pairs(DungeonGuide_Guides) do
        if dungeon == dungeonName then
            if type(encounters) == "table" then
                for bossName, bossEntry in pairs(encounters) do
                    if bossName == encounterName then
                        return bossEntry
                    end
                end
            end
        end
    end
end

function DungeonGuide_FindNPCID(dungeonName, npcName)
    local npcID = nil
    print("DungeonGuide_FindNPCID: " .. dungeonName .. " - " .. npcName)

    if (DungeonGuide_NPCNames[dungeonName]) then
        print("DungeonGuide_NPCs: " .. tostring(DungeonGuide_NPCNames[dungeonName]))
        if type(DungeonGuide_NPCNames[dungeonName] == "table") then
            if (DungeonGuide_NPCNames[dungeonName][npcName]) then
                print("DungeonGuide_NPCs: " .. tostring(DungeonGuide_NPCNames[dungeonName][npcName]))
                npcID = DungeonGuide_NPCNames[dungeonName][npcName]
            end
        end
    end

    return npcID
end

function DungeonGuide_GetPlayerRole()
    local role = UnitGroupRolesAssigned("player")
    
    if role == "NONE" then
        local specID = GetSpecialization()
        role = select(5, GetSpecializationInfo(specID))
    end

    return role
end

function DungeonGuide_DebugInfo(content)
    if (DungeonGuideDB.debug) then
        print("|cff8888ff[DungeonGuide Debug]|r " .. content)
    end
end