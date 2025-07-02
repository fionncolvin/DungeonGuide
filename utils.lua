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
        if type(DungeonGuide_NPCNames[dungeonName]) == "table" then
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

function DungeonGuide_GetGuideEntry()
    local guide = nil
    local base = nil
    local override = nil

    if not DungeonGuideContext.encounter or not DungeonGuideContext.dungeon then
        return nil
    end

    -- If we have a specific encounter set, use that
    if DungeonGuideContext.forceSelect then
        base = DungeonGuide_FindGuideEntry(DungeonGuideContext.dungeon, DungeonGuideContext.encounter)
        override = DungeonGuide_Overrides[DungeonGuideContext.dungeon] and DungeonGuide_Overrides[DungeonGuideContext.dungeon][DungeonGuideContext.encounter]

        if override then
            DungeonGuide_DebugInfo("Using override for " .. DungeonGuideContext.encounter .. " in dungeon: " .. DungeonGuideContext.dungeon)
            return DungeonGuide_MergeGuide(base, override)
        end

        return base
    end

    DungeonGuide_DebugInfo("Checking for target Guide - " .. DungeonGuideContext.encounter .. " in dungeon: " .. DungeonGuideContext.dungeon)

    -- Check if we have a target and it matches a boss
    if UnitExists("target") then
        local targetName = UnitName("target")
        DungeonGuide_DebugInfo("Checking for target Guide - " .. targetName .. " in dungeon: " .. DungeonGuideContext.dungeon)
        base = DungeonGuide_FindGuideEntry(DungeonGuideContext.dungeon, targetName)

        if base then
            DungeonGuideContext.encounter = targetName
            DungeonGuide_DebugInfo("Found Guide for Target - " .. targetName)

            override = DungeonGuide_Overrides[DungeonGuideContext.dungeon] and DungeonGuide_Overrides[DungeonGuideContext.dungeon][DungeonGuideContext.encounter]

            if override then
                DungeonGuide_DebugInfo("Using override for " .. DungeonGuideContext.encounter .. " in dungeon: " .. DungeonGuideContext.dungeon)
                return DungeonGuide_MergeGuide(base, override)
            end

            return base
        end
    end

    DungeonGuideContext.encounter = DungeonGuideContext.dungeon
    base = DungeonGuide_FindGuideEntry(DungeonGuideContext.dungeon, DungeonGuideContext.encounter)
    override = DungeonGuide_Overrides[DungeonGuideContext.dungeon] and DungeonGuide_Overrides[DungeonGuideContext.dungeon][DungeonGuideContext.encounter]

    if override then
        DungeonGuide_DebugInfo("Using override for " .. DungeonGuideContext.encounter .. " in dungeon: " .. DungeonGuideContext.dungeon)
        return DungeonGuide_MergeGuide(base, override)
    end

    return base
end

function DungeonGuide_MergeGuide(base, override)
    local merged = { ALL = {}, TANK = {}, HEALER = {}, DPS = {} }

    for _, role in ipairs({ "ALL", "TANK", "HEALER", "DPS" }) do
        if base[role] then
            for _, entry in ipairs(base[role]) do
                table.insert(merged[role], CopyTable(entry))
            end
        end
    end

    if override then
        for _, entry in ipairs(override) do
            DungeonGuide_DebugInfo("Merging entry: " .. (entry.text or "Unnamed") .. " for role: " .. (entry.role or "ALL"))
            if entry.show ~= false then
                table.insert(merged[entry.role or "ALL"], CopyTable(entry))
            end
        end
    end

    for _, entries in pairs(merged) do
        table.sort(entries, function(a, b) return (a.order or 0) < (b.order or 0) end)
    end

    return merged
end

function DungeonGuide_GetModifiedOverrides(dungeon, encounter, editedEntries)
    local base = DungeonGuide_Guides[dungeon] and DungeonGuide_Guides[dungeon][encounter] or {}
    local overrides = {}

    local function findMatchingBase(entry)
        local candidates = base[entry.role] or {}
        for _, orig in ipairs(candidates) do
            if (orig.text == entry.text) then
                return orig
            end
        end
        return nil
    end

    for _, edited in ipairs(editedEntries) do
        local original = findMatchingBase(edited)

        local isDifferent = false

        if not original then
            isDifferent = true
        else
            if original.order ~= edited.order then isDifferent = true end
            if original.type ~= edited.type then isDifferent = true end
            if original.role ~= edited.role then isDifferent = true end
            if original.text ~= edited.text then isDifferent = true end
            if (original.show ~= false) ~= (edited.show ~= false) then isDifferent = true end
        end

        if isDifferent then
            table.insert(overrides, CopyTable(edited))
        end
    end

    return overrides
end