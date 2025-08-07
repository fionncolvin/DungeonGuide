-- DungeonGuide_FindDungeonIDByNameAndSeason retrieves the dungeon ID based on the dungeon name and season.
function DungeonGuide_FindDungeonIDByNameAndSeason(name, season)
    DungeonGuide_DebugInfo("DungeonGuide_FindDungeonIDByNameAndSeason called with name: " .. tostring(name) .. ", season: " .. tostring(season))

    for id, guide in pairs(DungeonGuide_Guides) do
        if guide.name == name and guide.season == season then
            return id
        end
    end
    return nil
end

-- DungeonGuide_GetBaseEntry retrieves the base guide entry for a specific dungeon and encounter.
function DungeonGuide_GetBaseEntry(dungeonName, encounterName)
    local dungeonID = DungeonGuide_FindDungeonIDByNameAndSeason(dungeonName, DungeonGuideContext.season) or dungeonName

    for bossName, bossEntry in pairs(DungeonGuide_Guides[dungeonID] or {}) do
        if bossName == encounterName then
            return bossEntry
        end
    end
end

-- DungeonGuide_GetOverrideEntry retrieves the override entry for a specific dungeon and encounter.
function DungeonGuide_GetOverrideEntry(dungeonName, encounterName)
    local dungeonID = DungeonGuide_FindDungeonIDByNameAndSeason(dungeonName, DungeonGuideContext.season) or dungeonName

    if DungeonGuide_Overrides[dungeonID] and DungeonGuide_Overrides[dungeonID][encounterName] then
        return DungeonGuide_Overrides[dungeonID][encounterName]
    end
    return nil
end

-- DungeonGuide_GetSeasonDungeonList retrieves a list of dungeons for a specific season.
function DungeonGuide_GetSeasonDungeonList(season)
    local dungeons = {}

    for _, entry in pairs(DungeonGuide_Guides) do
        if entry.season == season and entry.name then
            table.insert(dungeons, entry.name)
        end
    end

    table.sort(dungeons, function(a, b)
        return a < b
    end)

    return dungeons
end

-- DungeonGuide_GetDungeonEntry retrieves the dungeon entry for a specific dungeon.
function DungeonGuide_GetDungeonEntry(dungeon)
    if not dungeon then
        dungeon = DungeonGuideContext.dungeon
    end

    local dungeonID = DungeonGuide_FindDungeonIDByNameAndSeason(dungeon, DungeonGuideContext.season) or dungeon

    if not DungeonGuide_Guides[dungeonID] then
        DungeonGuide_DebugInfo("Guide not found for ID: " .. tostring(dungeonID))
    end

    return DungeonGuide_Guides[dungeonID] or nil
end

-- DungeonGuide_GetEncounterEntry retrieves the encounter entry for a specific dungeon and encounter.
function DungeonGuide_GetEncounterEntry(dungeon, encounter)
    if not dungeon then
        dungeon = DungeonGuideContext.dungeon
    end

    if not encounter then
        encounter = DungeonGuideContext.encounter
    end

    local dungeonID = DungeonGuide_FindDungeonIDByNameAndSeason(dungeon, DungeonGuideContext.season) or dungeon
    local guide = DungeonGuide_Guides[dungeonID]

    if guide and guide[encounter] then
        return guide[encounter]
    end

    return nil
end

-- DungeonGuide_GetGuideEntry retrieves the guide entry for a specific dungeon and encounter.
function DungeonGuide_GetGuideEntry(dungeon, encounter, force)
    local base = nil
    local override = nil

    -- Fallback to context values
    if not dungeon then
        dungeon = DungeonGuideContext.dungeon
    end
    if not encounter then
        encounter = DungeonGuideContext.encounter
    end
    if not force then
        force = DungeonGuideContext.forceSelect or false
    end

    DungeonGuide_DebugInfo("DungeonGuide_GetGuideEntry called with dungeon: " .. tostring(dungeon) .. ", encounter: " .. tostring(encounter) .. ", force: " .. tostring(force))

    -- Resolve dungeon ID from name + season if not already an ID
    local dungeonID = DungeonGuide_FindDungeonIDByNameAndSeason(dungeon, DungeonGuideContext.season) or dungeon

    local function sortedEntries(override, base)
        if override then
            DungeonGuide_DebugInfo("Using override for " .. tostring(encounter) .. " in dungeon: " .. tostring(dungeonID))
            local merged = DungeonGuide_MergeGuide(base, override)
            DungeonGuide_SortEntries(merged.entries, dungeonID, encounter)
            return merged
        end

        if base then
            DungeonGuide_SortEntries(base.entries, dungeonID, encounter)
        end

        return base
    end

    -- Force-select bypasses detection
    if force then
        base = DungeonGuide_GetBaseEntry(dungeonID, encounter)
        override = DungeonGuide_GetOverrideEntry(dungeonID, encounter)
        return sortedEntries(override, base)
    end

    -- Try to use target name as encounter if available
    if UnitExists("target") then
        local targetName = UnitName("target")
        DungeonGuide_DebugInfo("Checking for target Guide - " .. targetName .. " in dungeon: " .. dungeonID)
        base = DungeonGuide_GetBaseEntry(dungeonID, targetName)

        if base then
            DungeonGuideContext.encounter = targetName
            encounter = targetName
            DungeonGuide_DebugInfo("Found Guide for Target - " .. targetName)
            override = DungeonGuide_GetOverrideEntry(dungeonID, encounter)
            return sortedEntries(override, base)
        end
    end

    -- Fallback to provided/selected encounter
    base = DungeonGuide_GetBaseEntry(dungeonID, encounter)
    override = DungeonGuide_GetOverrideEntry(dungeonID, encounter)

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
            DungeonGuide_DebugInfo(
                "Adding base entry: " .. (entry.text or "Unnamed") .. " [" .. (entry.role or "ALL") .. "]")
        end
    end

    -- Add override entries
    for _, entry in ipairs(overrideEntries) do
        table.insert(merged, CopyTable(entry))
        DungeonGuide_DebugInfo(
            "Adding override entry: " .. (entry.text or "Unnamed") .. " [" .. (entry.role or "ALL") .. "]")
    end

    return {
        entries = merged
    }
end

-- DungeonGuide_AreEntriesEqual is a utility function that checks if two entries are equal.
function DungeonGuide_AreEntriesEqual(a, b)
    if not a or not b then
        return false
    end

    return (a.type == b.type) and (a.role == b.role) and (a.text == b.text) and (a.target == b.target) and ((a.hide or false) == (b.hide or false))
end

-- DungeonGuide_SaveBaseEntries is a utility function that saves the base entries of a guide.
function DungeonGuide_SaveBaseEntries(dungeon, encounter)
    local season = DungeonGuideContext.season
    local dungeonID = DungeonGuide_FindDungeonIDByNameAndSeason(dungeon, season) or dungeon

    local guide = DungeonGuide_GetBaseEntry(dungeonID, encounter)
    local baseEntries = {}

    for _, entry in ipairs(guide and guide.entries or {}) do
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
    if not entries then
        return
    end

    local season = DungeonGuideContext.season
    local dungeonID = DungeonGuide_FindDungeonIDByNameAndSeason(dungeon, season) or dungeon

    local orderTable = DungeonGuide_Orders[dungeonID] and DungeonGuide_Orders[dungeonID][encounter]

    if not orderTable then
        DungeonGuide_InitialiseOrderIfMissing(dungeonID, encounter, entries)
        orderTable = DungeonGuide_Orders[dungeonID] and DungeonGuide_Orders[dungeonID][encounter]
    end

    table.sort(entries, function(a, b)
        return (orderTable[a.id] or 9999) < (orderTable[b.id] or 9999)
    end)
end

-- DungeonGuide_InitialiseOrderIfMissing initializes the order table for a dungeon and encounter if it is missing.
function DungeonGuide_InitialiseOrderIfMissing(dungeonID, encounterID, entries)
    if not dungeonID or not encounterID or not entries then
        DungeonGuide_DebugInfo("InitialiseOrder skipped due to missing params: " .. tostring(dungeonID) .. ", " .. tostring(encounterID))
        return
    end

    DungeonGuide_Orders[dungeonID] = DungeonGuide_Orders[dungeonID] or {}
    DungeonGuide_Orders[dungeonID][encounterID] = DungeonGuide_Orders[dungeonID][encounterID] or {}

    local orderTable = DungeonGuide_Orders[dungeonID][encounterID]

    -- Get current max index in the order table
    local maxIndex = 0
    for _, index in pairs(orderTable) do
        if index > maxIndex then
            maxIndex = index
        end
    end

    -- Add missing entries to the order table
    for _, entry in ipairs(entries) do
        if entry.id and not orderTable[entry.id] then
            maxIndex = maxIndex + 1
            orderTable[entry.id] = maxIndex

            DungeonGuide_DebugInfo(string.format(
                "Initialised order for entry %s [%s] in %s - %s",
                entry.text or "Unnamed", entry.role or "ALL", dungeonID, encounterID
            ))
        end
    end
end

-- DungeonGuide_GetAvailableSeasons retrieves a list of unique seasons available in the guides.
function DungeonGuide_GetAvailableSeasons()
    local seen = {}
    local seasons = {}

    for _, guide in pairs(DungeonGuide_Guides or {}) do
        if guide.season and not seen[guide.season] then
            seen[guide.season] = true
            table.insert(seasons, guide.season)
        end
    end

    table.sort(seasons, function(a, b) return a > b end) -- Newest first
    return seasons
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

-- DungeonGuide_FindNPCID retrieves the NPC ID for a given dungeon and NPC name.
function DungeonGuide_FindNPCID(dungeonName, npcName)
    DungeonGuide_DebugInfo("DungeonGuide_FindNPCID: " .. tostring(dungeonName) .. " - " .. tostring(npcName))

    -- Resolve to dungeon display name if a guide ID is passed
    local resolvedName = dungeonName
    if DungeonGuide_Guides[dungeonName] then
        resolvedName = DungeonGuide_Guides[dungeonName].name
        DungeonGuide_DebugInfo("Resolved dungeonName to guide name: " .. resolvedName)
    end

    -- Now look up the NPC ID using the resolved name
    local npcTable = DungeonGuide_NPCNames[resolvedName]
    if type(npcTable) == "table" then
        local npcID = npcTable[npcName]
        if npcID then
            DungeonGuide_DebugInfo("Found NPC ID: " .. tostring(npcID))
            return npcID
        end
    end

    return nil
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
    if DungeonGuideDB and DungeonGuideDB.debug then
        print("|cff8888ff[DungeonGuide Debug]|r " .. content)
    end
end

-- DungeonGuide_FindDungeonNameByID retrieves the dungeon name based on the dungeon ID.
function DungeonGuide_FindDungeonNameByID(dungeonID)
    return DungeonGuide_Guides[dungeonID] and DungeonGuide_Guides[dungeonID].name
end