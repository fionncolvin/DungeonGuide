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

    -- Build a quick lookup of override IDs
    local overrideMap = {}

    for _, entry in ipairs(override or {}) do
        if entry.id then
            overrideMap[entry.id] = true
        end
    end

    -- Copy base entries unless overridden
    for _, role in ipairs(DUNGEONGUIDE_ROLES) do
        if base[role] then
            for _, entry in ipairs(base[role]) do
                if not entry.id then
                    DungeonGuide_DebugInfo("WARNING: Entry is missing ID: " .. (entry.text or "???"))
                end
                
                if not (entry.id and overrideMap[entry.id]) then
                    table.insert(merged[role], CopyTable(entry))

                    DungeonGuide_DebugInfo("Adding base entry: " .. (entry.text or "Unnamed") .. " for role: " .. role)
                end
            end
        end
    end

    -- Add overrides (which replace matching base entries)
    for _, entry in ipairs(override or {}) do
        if entry.show ~= false then
            table.insert(merged[entry.role or "ALL"], CopyTable(entry))

            DungeonGuide_DebugInfo("Adding override entry: " .. (entry.text or "Unnamed") .. " for role: " .. (entry.role or "ALL"))
        end
    end

    -- Sort all
    for _, entries in pairs(merged) do
        table.sort(entries, function(a, b) return (a.order or 0) < (b.order or 0) end)
    end

    return merged
end

function DungeonGuide_GetModifiedOverridesFromBase(baseEntries, editedEntries)
    local overrides = {}

    local baseById = {}
    for _, entry in ipairs(baseEntries) do
        if entry.id then
            baseById[entry.id] = entry
        end
    end

    local function areEntriesDifferent(a, b)
        return
            (a.order ~= b.order) or
            (a.type ~= b.type) or
            (a.role ~= b.role) or
            (a.text ~= b.text) or
            ((a.hide ~= false) ~= (b.hide ~= false))
    end

    for _, edited in ipairs(editedEntries) do
        local original = edited.id and baseById[edited.id]

        if not original or not DungeonGuide_AreEntriesEqual(original, edited) then
            table.insert(overrides, CopyTable(edited))
        end
    end

    return overrides
end

function DungeonGuide_BuildEntryMapById(entries)
    local map = {}
    for _, entry in ipairs(entries) do
        if entry.id then
            map[entry.id] = entry
        end
    end
    return map
end

function DungeonGuide_AreEntriesEqual(a, b)
    return
        (a.type == b.type) and
        (a.role == b.role) and
        (a.text == b.text) and
        ((a.hide ~= false) == (b.hide ~= false))
end

function DungeonGuide_EnsureEntryIDs(guide)
    for _, role in ipairs(DUNGEONGUIDE_ROLES) do
        for _, entry in ipairs(guide[role] or {}) do
            if not entry.id then
                entry.id = "gen-" .. math.random(1e9)
            end
        end
    end
end

function DungeonGuide_SaveBaseEntries(guide)
    local baseEntries = {}
    for _, role in ipairs(DUNGEONGUIDE_ROLES) do
        for _, entry in ipairs(guide[role] or {}) do
            if entry.id then
                local copied = CopyTable(entry)
                copied.role = copied.role or role -- Ensure role is present
                baseEntries[copied.id] = copied
            end
        end
    end
    return baseEntries
end