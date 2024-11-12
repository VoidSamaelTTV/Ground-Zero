local QBCore = exports['qb-core']:GetCoreObject()
local spawnedItems = {}
local propEntities = {}  -- Track spawned props for interaction

-- Function to spawn prop
local function spawnProp(item, index)
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
    propEntities[prop] = index  -- Associate prop with index

    -- Add qb-target interaction
    exports['qb-target']:AddTargetEntity(prop, {
        options = {
            {
                type = "client",
                event = "looting:pickupItem",
                icon = "fas fa-cogs",
                label = "Loot " .. item.label,
                action = function()
                    print("Attempting to loot item with index:", index)
                    TriggerServerEvent('looting:pickupItem', index)
                end
            }
        },
        distance = 2.0 -- Adjust the interaction distance as needed
    })
end

-- Function to spawn items at spawn points
local function spawnItems()
    for _, point in ipairs(Config.SpawnPoints) do
        local lootClass = Config.LootClasses[point.lootClass]
        if lootClass then
            for _, item in ipairs(lootClass) do
                if math.random() < item.spawnChance / 100 then
                    local x, y, z = point.coords.x, point.coords.y, point.coords.z
                    table.insert(spawnedItems, {name = item.name, label = item.label, prop = item.prop, coords = vector3(x, y, z), spawned = true})
                    print("Spawned item:", item.name, "at", x, y, z)
                end
            end
        end
    end
end

-- Request the server to sync spawned items on client start
Citizen.CreateThread(function()
    TriggerServerEvent('looting:requestSpawnedItems')
end)

-- Function to remove props
local function removeProp(prop)
    if propEntities[prop] then
        local index = propEntities[prop]
        DeleteObject(prop)
        propEntities[prop] = nil
        exports['qb-target']:RemoveTargetEntity(prop) -- Remove qb-target interaction
        print("Removed prop for item index:", index)
    end
end

-- Event to remove prop when an item is picked up
RegisterNetEvent('looting:removeProp')
AddEventHandler('looting:removeProp', function(itemIndex)
    for prop, index in pairs(propEntities) do
        if index == itemIndex then
            removeProp(prop)
            break
        end
    end
end)

-- Event to sync spawned items with the client
RegisterNetEvent('looting:syncSpawnedItems')
AddEventHandler('looting:syncSpawnedItems', function(items)
    spawnedItems = items
    for index, item in ipairs(spawnedItems) do
        if item.spawned then
            spawnProp(item, index)
        end
    end
end)
