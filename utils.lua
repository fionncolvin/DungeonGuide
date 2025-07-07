-- DungeonGuide_GetBaseEntry retrieves the base guide entry for a specific dungeon and encounter.
function DungeonGuide_GetBaseEntry(dungeonName, encounterName)
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

-- DungeonGuide_GetOverrideEntry retrieves the override entry for a specific dungeon and encounter.
function DungeonGuide_GetOverrideEntry(dungeonName, encounterName)
    if DungeonGuide_Overrides[dungeonName] and DungeonGuide_Overrides[dungeonName][encounterName] then
        return DungeonGuide_Overrides[dungeonName][encounterName]
    end

    return nil
end

-- DungeonGuide_FindNPCID retrieves the NPC ID for a given dungeon and NPC name.
function DungeonGuide_FindNPCID(dungeonName, npcName)
    local npcID = nil
    DungeonGuide_DebugInfo("DungeonGuide_FindNPCID: " .. dungeonName .. " - " .. npcName)

    if DungeonGuide_NPCNames[dungeonName] then
        DungeonGuide_DebugInfo("DungeonGuide_NPCs: " .. tostring(DungeonGuide_NPCNames[dungeonName]))
        if type(DungeonGuide_NPCNames[dungeonName]) == "table" then
            if DungeonGuide_NPCNames[dungeonName][npcName] then
                DungeonGuide_DebugInfo("DungeonGuide_NPCs: " .. tostring(DungeonGuide_NPCNames[dungeonName][npcName]))
                npcID = DungeonGuide_NPCNames[dungeonName][npcName]
            end
        end
    end

    return npcID
end

-- DungeonGuide_GetPlayerRole retrieves the player's role based on their specialization.
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

-- DungeonGuide_DebugInfo is a utility function that prints debug information if debugging is enabled.
function DungeonGuide_DebugInfo(content)
    if DungeonGuideDB.debug then
        print("|cff8888ff[DungeonGuide Debug]|r " .. content)
    end
end

-- DungeonGuide_GetDungeonEntry retrieves the dungeon entry for a specific dungeon.
function DungeonGuide_GetDungeonEntry(dungeon)
    if not dungeon then
        dungeon = DungeonGuideContext.dungeon
    end

    return DungeonGuide_Guides[dungeon] or nil
end

-- DungeonGuide_GetEncounterEntry retrieves the encounter entry for a specific dungeon and encounter.
function DungeonGuide_GetEncounterEntry(dungeon, encounter)
    if not dungeon then
        dungeon = DungeonGuideContext.dungeon
    end

    if not encounter then
        encounter = DungeonGuideContext.encounter
    end

    return DungeonGuide_Guides[dungeon][encounter] or nil
end

-- DungeonGuide_GetGuideEntry retrieves the guide entry for a specific dungeon and encounter.
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

    if not force then
        force = DungeonGuideContext.forceSelect or false
    end

    local function sortedEntries(override, base)
        if override then
            DungeonGuide_DebugInfo("Using override for " .. tostring(encounter) .. " in dungeon: " .. tostring(dungeon))
            local merged = DungeonGuide_MergeGuide(base, override)
            DungeonGuide_SortEntries(merged.entries, dungeon, encounter)
            return merged
        end

        if base then
            DungeonGuide_SortEntries(base.entries, dungeon, encounter)
        end

        return base
    end

    if force then
        base = DungeonGuide_GetBaseEntry(dungeon, encounter)
        override = DungeonGuide_GetOverrideEntry(dungeon, encounter)

        return sortedEntries(override, base)
    end

    if UnitExists("target") then
        local targetName = UnitName("target")
        DungeonGuide_DebugInfo("Checking for target Guide - " .. targetName .. " in dungeon: " .. dungeon)
        base = DungeonGuide_GetBaseEntry(dungeon, targetName)

        if base then
            DungeonGuideContext.encounter = targetName
            encounter = targetName
            DungeonGuide_DebugInfo("Found Guide for Target - " .. targetName)
            override = DungeonGuide_GetOverrideEntry(dungeon, encounter)

            return sortedEntries(override, base)
        end
    end

    base = DungeonGuide_GetBaseEntry(dungeon, encounter) or nil
    override = DungeonGuide_GetOverrideEntry(dungeon, encounter) or nil
    
    return sortedEntries(override, base)
end

-- DungeonGuide_MergeGuide is a utility function that merges a base guide with an override.
function DungeonGuide_MergeGuide(base, override)
    local merged = {}

    local baseEntries = base and base.entries or {}
    local overrideEntries = override or {}

    -- Build lookup of override IDs
    local overrideMap = {}
    for _, entry in ipairs(overrideEntries) do
        if entry.id then
            overrideMap[entry.id] = true
        end
    end

    -- Add base entries not overridden
    for _, entry in ipairs(baseEntries) do
        if not entry.id or not overrideMap[entry.id] then
            table.insert(merged, CopyTable(entry))
            DungeonGuide_DebugInfo("Adding base entry: " .. (entry.text or "Unnamed") .. " [" .. (entry.role or "ALL") .. "]")
        end
    end

    -- Add override entries
    for _, entry in ipairs(overrideEntries) do
        table.insert(merged, CopyTable(entry))
        DungeonGuide_DebugInfo("Adding override entry: " .. (entry.text or "Unnamed") .. " [" .. (entry.role or "ALL") ..
                                "]")
    end

    return { entries = merged }
end

-- DungeonGuide_AreEntriesEqual is a utility function that checks if two entries are equal.
function DungeonGuide_AreEntriesEqual(a, b)
    if not a or not b then
        return false
    end

    return
        (a.type == b.type) and
        (a.role == b.role) and
        (a.text == b.text) and
        (a.target == b.target) and
        ((a.hide or false) == (b.hide or false))
end

-- DungeonGuide_SaveBaseEntries is a utility function that saves the base entries of a guide.
function DungeonGuide_SaveBaseEntries(dungeon, encounter)
    local guide = DungeonGuide_GetBaseEntry(dungeon, encounter)
    local baseEntries = {}

    for _, entry in ipairs(guide.entries or {}) do
        if entry.id then
            local copied = CopyTable(entry)
            copied.role = copied.role or "ALL"
            baseEntries[copied.id] = copied
        end
    end

    return baseEntries
end

-- DungeonGuide_tIndexOf is a utility function that finds the index of a value in a list.
function DungeonGuide_tIndexOf(list, value)
    for i = 1, #list do
        if list[i] == value then
            return i
        end
    end

    return nil
end

-- DungeonGuide_SortEntries sorts the entries of a dungeon guide based on a predefined order.
function DungeonGuide_SortEntries(entries, dungeon, encounter)
    if not entries then return end

    local orderTable = DungeonGuide_Orders[dungeon] and DungeonGuide_Orders[dungeon][encounter]
    if not orderTable then return end

    table.sort(entries, function(a, b)
        return (orderTable[a.id] or 9999) < (orderTable[b.id] or 9999)
    end)
end

-- DungeonGuide_BuildEntryMapById is a utility function that creates a map of entries by their IDs.
function DungeonGuide_BuildEntryMapById(entries)
    local map = {}
    for _, entry in ipairs(entries) do
        if entry.id then
            map[entry.id] = entry
        end
    end
    return map
end

-- Ensures all entries in the guide have unique IDs
function DungeonGuide_EnsureEntryIDs(guide)
    for _, entry in ipairs(guide.entries or {}) do
        if not entry.id then
            entry.id = "gen-" .. math.random(1e9)
        end
    end
end