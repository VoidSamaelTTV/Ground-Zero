local QBCore = exports['qb-core']:GetCoreObject()

local factions = {}

-- Load factions from the database when the server starts
MySQL.ready(function()
    MySQL.Async.fetchAll('SELECT * FROM factions', {}, function(results)
        for _, result in ipairs(results) do
            factions[result.name] = {
                members = json.decode(result.members) or {},
                invites = json.decode(result.invites) or {}
            }
        end
    end)
end)

-- Function to save factions to the database
local function saveFaction(factionName)
    local membersJson = json.encode(factions[factionName].members)
    local invitesJson = json.encode(factions[factionName].invites)

    MySQL.Async.execute('INSERT INTO factions (name, members, invites) VALUES (@name, @members, @invites) ON DUPLICATE KEY UPDATE members = @members, invites = @invites', {
        ['@name'] = factionName,
        ['@members'] = membersJson,
        ['@invites'] = invitesJson
    })
end

RegisterNetEvent('qb-factions:createFaction', function(factionName)
    local src = source
    if not factions[factionName] then
        factions[factionName] = { members = { src }, invites = {} }
        saveFaction(factionName)
        TriggerClientEvent('QBCore:Notify', src, 'Faction created: ' .. factionName, 'success')
    else
        TriggerClientEvent('QBCore:Notify', src, 'Faction already exists.', 'error')
    end
end)

RegisterNetEvent('qb-factions:invitePlayer', function(targetPlayerId)
    local src = source
    for name, faction in pairs(factions) do
        if table.contains(faction.members, src) then
            table.insert(faction.invites, targetPlayerId)
            saveFaction(name)
            TriggerClientEvent('QBCore:Notify', targetPlayerId, 'You have been invited to join the faction: ' .. name, 'success')
            return
        end
    end
    TriggerClientEvent('QBCore:Notify', src, 'You are not part of any faction.', 'error')
end)

RegisterNetEvent('qb-factions:requestJoin', function(factionName)
    local src = source
    if factions[factionName] then
        if table.contains(factions[factionName].members, src) or table.contains(factions[factionName].invites, src) then
            TriggerClientEvent('QBCore:Notify', src, 'You are already part of this faction.', 'error')
            return
        end

        for _, member in ipairs(factions[factionName].members) do
            TriggerClientEvent('QBCore:Notify', member, ('Player %s has requested to join faction: %s'):format(GetPlayerName(src), factionName), 'info')
        end

        TriggerClientEvent('QBCore:Notify', src, 'Your request to join the faction has been sent.', 'success')
    else
        TriggerClientEvent('QBCore:Notify', src, 'Faction does not exist.', 'error')
    end
end)

RegisterNetEvent('qb-factions:acceptRequest', function(factionName, playerId)
    local src = source
    if factions[factionName] and table.contains(factions[factionName].members, src) then
        table.insert(factions[factionName].members, playerId)
        factions[factionName].invites = removeItem(factions[factionName].invites, playerId)
        saveFaction(factionName)
        TriggerClientEvent('QBCore:Notify', playerId, 'Your request to join has been accepted!', 'success')
        TriggerClientEvent('QBCore:Notify', src, 'You have accepted the join request.', 'success')
    else
        TriggerClientEvent('QBCore:Notify', src, 'You are not authorized to accept requests for this faction.', 'error')
    end
end)

-- Helper function to remove an item from a table
function removeItem(tbl, item)
    for i, v in ipairs(tbl) do
        if v == item then
            table.remove(tbl, i)
            break
        end
    end
    return tbl
end
