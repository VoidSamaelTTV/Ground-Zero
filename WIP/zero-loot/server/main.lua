local QBCore = exports['qb-core']:GetCoreObject()

local spawnedItems = {}

-- Function to select a single item from a loot class based on spawn chances
local function selectItemFromLootClass(lootClass)
    local items = Config.LootClasses[lootClass]
    local totalChance = 0
    local randomChance = math.random(1, 100)

    for _, item in ipairs(items) do
        totalChance = totalChance + item.spawnChance
        if randomChance <= totalChance then
            return item
        end
    end

    return nil -- Return nil if no item is selected (unlikely with correct spawnChance values)
end

-- Function to spawn items at defined spawn points
local function spawnItems()
    spawnedItems = {} -- Clear previously spawned items

    for _, spawnPoint in ipairs(Config.SpawnPoints) do
        local item = selectItemFromLootClass(spawnPoint.lootClass)
        if item then
            table.insert(spawnedItems, {
                name = item.name,
                label = item.label,
                prop = item.prop,
                coords = spawnPoint.coords,
                spawned = true
            })
            spawnProp(spawnedItems[#spawnedItems])  -- Spawn the item prop
            print("Spawned item:", item.name, "at", spawnPoint.coords)
        end
    end
end

-- Function to spawn prop
local function spawnProp(item)
    local model = GetHashKey(item.prop)

    RequestModel(model)
    while not HasModelLoaded(model) do
        Citizen.Wait(0)
    end

    local prop = CreateObject(model, item.coords.x, item.coords.y, item.coords.z, true, true, true)
    SetEntityAsMissionEntity(prop, true, true)
    PlaceObjectOnGroundProperly(prop)
    FreezeEntityPosition(prop, true)
    item.propEntity = prop
end

-- Trigger item spawning periodically
Citizen.CreateThread(function()
    while true do
        spawnItems()
        Citizen.Wait(600000) -- Wait 10 minutes before spawning items again
    end
end)

-- Event to handle item pickup
RegisterServerEvent('looting:pickupItem')
AddEventHandler('looting:pickupItem', function(itemIndex)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = spawnedItems[itemIndex]
    if item and item.spawned then
        item.spawned = false
        Player.Functions.AddItem(item.name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item.name], "add")
        TriggerClientEvent('looting:removeProp', -1, itemIndex)
    end
end)

-- Sync items with clients
RegisterServerEvent('looting:requestSpawnedItems')
AddEventHandler('looting:requestSpawnedItems', function()
    local src = source
    TriggerClientEvent('looting:syncSpawnedItems', src, spawnedItems)
end)
