-- Define roles as a module-level constant to avoid recreating the table
local DUNGEONGUIDE_ROLES = { "ALL", "TANK", "HEALER", "DPS" }

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
    DungeonGuide_DebugInfo("DungeonGuide_FindNPCID: " .. dungeonName .. " - " .. npcName)

    if (DungeonGuide_NPCNames[dungeonName]) then
        DungeonGuide_DebugInfo("DungeonGuide_NPCs: " .. tostring(DungeonGuide_NPCNames[dungeonName]))
        if type(DungeonGuide_NPCNames[dungeonName]) == "table" then
            if (DungeonGuide_NPCNames[dungeonName][npcName]) then
                DungeonGuide_DebugInfo("DungeonGuide_NPCs: " .. tostring(DungeonGuide_NPCNames[dungeonName][npcName]))
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
        if specID then
            role = select(5, GetSpecializationInfo(specID))
        end
    end

    return role
end

function DungeonGuide_DebugInfo(content)
    if (DungeonGuideDB.debug) then
        print("|cff8888ff[DungeonGuide Debug]|r " .. content)
    end
end

function DungeonGuide_GetDungeonEntry()
    return DungeonGuide_Guides[DungeonGuideContext.dungeon] or nil
end

function DungeonGuide_GetGuideEntry(dungeon, encounter, force)
    local base = nil
    local override = nil

    DungeonGuide_DebugInfo("DungeonGuide_GetGuideEntry called with dungeon: " .. tostring(dungeon) .. ", encounter: " .. tostring(encounter) .. ", force: " .. tostring(force))

    if not dungeon then
        dungeon = DungeonGuideContext.dungeon
    end

    if not encounter then
        encounter = DungeonGuideContext.encounter
    end

    -- If we have a specific encounter set, use that
    if force then
        base = DungeonGuide_FindGuideEntry(dungeon, encounter)
        override = DungeonGuide_Overrides[dungeon] and DungeonGuide_Overrides[dungeon][encounter]

        if override then
            DungeonGuide_DebugInfo("Using override for " .. encounter .. " in dungeon: " .. dungeon)
            return DungeonGuide_MergeGuide(base, override)
        end

        return base
    end

    DungeonGuide_DebugInfo("Checking for target Guide - " .. encounter .. " in dungeon: " .. dungeon)

    -- Check if we have a target and it matches a boss
    if UnitExists("target") then
        local targetName = UnitName("target")
        DungeonGuide_DebugInfo("Checking for target Guide - " .. targetName .. " in dungeon: " .. dungeon)
        base = DungeonGuide_FindGuideEntry(dungeon, targetName)

        if base then
            DungeonGuideContext.encounter = targetName
            encounter = targetName
            DungeonGuide_DebugInfo("Found Guide for Target - " .. targetName)

            override = DungeonGuide_Overrides[dungeon] and DungeonGuide_Overrides[dungeon][encounter]

            if override then
                DungeonGuide_DebugInfo("Using override for " .. encounter .. " in dungeon: " .. dungeon)
                return DungeonGuide_MergeGuide(base, override)
            end

            return base
        end
    end

    base = DungeonGuide_FindGuideEntry(dungeon, encounter)
    override = DungeonGuide_Overrides[dungeon] and DungeonGuide_Overrides[dungeon][encounter]

    if override then
        DungeonGuide_DebugInfo("Using override for " .. encounter .. " in dungeon: " .. dungeon)
        return DungeonGuide_MergeGuide(base, override)
    end

    return base
end

function DungeonGuide_MergeGuide(base, override)
    local merged = { ALL = {}, TANK = {}, HEALER = {}, DPS = {} }

    for _, role in ipairs(DUNGEONGUIDE_ROLES) do
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