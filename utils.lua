-- DungeonGuide_FindDungeonIDByNameAndSeason retrieves the dungeon ID based on the dungeon name and season.
function DungeonGuide_FindDungeonIDByNameAndSeason(name, season)
    for id, guide in pairs(DungeonGuide_Guides) do
        if guide.name == name and guide.season == season then
            return id
        end
    end

    DungeonGuide_DebugInfo("[DungeonGuide_FindDungeonIDByNameAndSeason] No dungeon found for name: " .. tostring(name) .. ", season: " .. tostring(season))
    return nil
end

-- DungeonGuide_GetBaseEntry retrieves the base guide entry for a specific dungeon and encounter.
function DungeonGuide_GetBaseEntry(dungeonID, encounter)
    for bossName, bossEntry in pairs(DungeonGuide_GetDungeonEntry(dungeonID) or {}) do
        if bossName == encounter then
            return bossEntry
        end
    end

    DungeonGuide_DebugInfo("[DungeonGuide_GetBaseEntry] No base entry found for dungeon: " .. tostring(dungeonID) .. ", encounter: " .. tostring(encounter))
    return nil
end

-- DungeonGuide_GetOverrideEntry retrieves the override entry for a specific dungeon and encounter.
function DungeonGuide_GetOverrideEntry(dungeonID, encounter)
    local dungeonID = DungeonGuide_FindDungeonIDByNameAndSeason(dungeonName, DungeonGuideContext.season) or dungeonName

    if DungeonGuide_Overrides[dungeonID] and DungeonGuide_Overrides[dungeonID][encounter] then
        return DungeonGuide_Overrides[dungeonID][encounter]
    end

    DungeonGuide_DebugInfo("[DungeonGuide_GetOverrideEntry] No override found for dungeon: " .. tostring(dungeonID) .. ", encounter: " .. tostring(encounter))
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
function DungeonGuide_GetDungeonEntry(dungeonID)

    if not dungeonID then
        dungeonID = DungeonGuideContext.dungeonID
    end

    if not DungeonGuide_Guides[dungeonID] then
        DungeonGuide_DebugInfo("[DungeonGuide_GetDungeonEntry] Guide not found for ID: " .. tostring(dungeonID))
        return nil
    else
        return DungeonGuide_Guides[dungeonID]
    end
end

-- DungeonGuide_GetEncounterEntry retrieves the encounter entry for a specific dungeon and encounter.
function DungeonGuide_GetEncounterEntry(dungeonID, encounter)
    if not dungeonID then
        dungeonID = DungeonGuideContext.dungeonID
    end

    if not encounter then
        encounter = DungeonGuideContext.encounter
    end

    -- local dungeonID = DungeonGuide_FindDungeonIDByNameAndSeason(dungeonID, DungeonGuideContext.season) or dungeonID
    local guide = DungeonGuide_GetDungeonEntry(dungeonID)

    if guide and guide[encounter] then
        return guide[encounter]
    end

    return nil
end

-- DungeonGuide_GetGuideEntry retrieves the guide entry for a specific dungeon and encounter.
function DungeonGuide_GetGuideEntry(dungeonID, encounter, force)
    local base = nil
    local override = nil

    -- Fallback to context values
    if not dungeonID then
        dungeonID = DungeonGuideContext.dungeonID
    end

    if not encounter then
        encounter = DungeonGuideContext.encounter
    end

    if not force then
        force = DungeonGuideContext.forceSelect or false
    end

    DungeonGuide_DebugInfo("[DungeonGuide_GetGuideEntry] DungeonGuide_GetGuideEntry called with dungeon: " .. tostring(dungeon) .. ", encounter: " .. tostring(encounter) .. ", force: " .. tostring(force))

    -- Resolve dungeon ID from name + season if not already an ID
    --local dungeonID = DungeonGuide_FindDungeonIDByNameAndSeason(dungeon, DungeonGuideContext.season) or dungeon

    local function sortedEntries(override, base)
        if override then
            DungeonGuide_DebugInfo("[DungeonGuide_GetGuideEntry] Using override for " .. tostring(encounter) .. " in dungeon: " .. tostring(dungeonID))
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
        DungeonGuide_DebugInfo("[DungeonGuide_GetGuideEntry] Checking for target Guide - " .. targetName .. " in dungeon: " .. dungeonID)
        base = DungeonGuide_GetBaseEntry(dungeonID, targetName)

        if base then
            DungeonGuideContext.encounter = targetName
            encounter = targetName
            DungeonGuide_DebugInfo("[DungeonGuide_GetGuideEntry] Found Guide for Target - " .. targetName)
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
            DungeonGuide_DebugInfo("[DungeonGuide_MergeGuide] Adding base entry: " .. (entry.text or "Unnamed") .. " [" .. (entry.role or "ALL") .. "]")
        end
    end

    -- Add override entries
    for _, entry in ipairs(overrideEntries) do
        table.insert(merged, CopyTable(entry))
        DungeonGuide_DebugInfo("[DungeonGuide_MergeGuide] Adding override entry: " .. (entry.text or "Unnamed") .. " [" .. (entry.role or "ALL") .. "]")
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
function DungeonGuide_SaveBaseEntries(dungeonID, encounter)
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
function DungeonGuide_InitialiseOrderIfMissing(dungeonID, encounter, entries)
    if not dungeonID or not encounter or not entries then
        DungeonGuide_DebugInfo("[DungeonGuide_InitialiseOrderIfMissing] InitialiseOrder skipped due to missing params: " .. tostring(dungeonID) .. ", " .. tostring(encounter))
        return
    end

    DungeonGuide_Orders[dungeonID] = DungeonGuide_Orders[dungeonID] or {}
    DungeonGuide_Orders[dungeonID][encounter] = DungeonGuide_Orders[dungeonID][encounter] or {}

    local orderTable = DungeonGuide_Orders[dungeonID][encounter]

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

            DungeonGuide_DebugInfo(string.format("Initialised order for entry %s [%s] in %s - %s", entry.text or "Unnamed", entry.role or "ALL", dungeonID, encounter))
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
function DungeonGuide_FindNPCID(dungeonID, npcName)
    DungeonGuide_DebugInfo("[DungeonGuide_FindNPCID] " .. tostring(dungeonID) .. " - " .. tostring(npcName))

    -- Now look up the NPC ID using the resolved name
    local npcTable = DungeonGuide_NPCNames[dungeonID]

    if type(npcTable) == "table" then
        local npcID = npcTable[npcName]
        if npcID then
            DungeonGuide_DebugInfo("[DungeonGuide_FindNPCID] Found NPC ID: " .. tostring(npcID))
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
    local guide = DungeonGuide_GetDungeonEntry(dungeonID)

    if not guide then
        DungeonGuide_DebugInfo("[DungeonGuide_FindDungeonNameByID] No guide found for dungeon ID: " .. tostring(dungeonID))
        return nil
    end

    return guide.name
end

-- DungeonGuide_SetGuideContext sets the current guide context based on the provided parameters.
function DungeonGuide_SetGuideContext(season, role, dungeonID, encounter, forceSelect)
    DungeonGuideContext.season = season or DungeonGuideContext.season
    DungeonGuideContext.role = role or DungeonGuideContext.role
    DungeonGuideContext.dungeonID = dungeonID or DungeonGuideContext.dungeonID
    DungeonGuideContext.encounter = encounter or DungeonGuideContext.encounter
    DungeonGuideContext.forceSelect = forceSelect or DungeonGuideContext.forceSelect

    DungeonGuide_DebugInfo("[DungeonGuide_SetGuideContext] Set guide context: season=" .. tostring(DungeonGuideContext.season) .. " role=" .. tostring(DungeonGuideContext.role) .. " dungeonID=" .. tostring(DungeonGuideContext.dungeonID) .. ", encounter=" .. tostring(DungeonGuideContext.encounter) .. ", forceSelect=" .. tostring(DungeonGuideContext.forceSelect))
end