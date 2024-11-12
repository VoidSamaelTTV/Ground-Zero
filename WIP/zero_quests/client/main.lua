local QBCore = exports['qb-core']:GetCoreObject()
local spawnedProps = {}  -- Track spawned props for interaction
local propEntities = {}   -- Track spawned props for qb-target interaction

-- Function to spawn prop
local function spawnProp(item, index)
    local model = GetHashKey(item.propModel)

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
                event = "qb-quest:collectItem",
                icon = "fas fa-hand-paper",
                label = "Collect " .. item.label,
                action = function()
                    TriggerServerEvent('qb-quest:collectItem', index) -- Notify server of item collection
                end
            }
        },
        distance = 2.0 -- Adjust interaction distance as needed
    })
end

-- Gather Supplies Quest
RegisterNetEvent('qb-quest:gatherSupplies')
AddEventHandler('qb-quest:gatherSupplies', function(data)
    local item = data.item
    local amount = data.amount
    local propLocation = data.propLocation

    QBCore.Functions.Notify('Gather ' .. amount .. ' ' .. item .. ' for the quest.', 'info')

    local propData = { 
        propModel = item.propModel, 
        coords = propLocation, 
        label = item.label 
    }

    -- Spawn the prop and register interaction
    spawnProp(propData, #spawnedProps + 1)
end)

-- Collect Item from Prop
RegisterNetEvent('qb-quest:collectItem')
AddEventHandler('qb-quest:collectItem', function(index)
    local playerPed = PlayerPedId()

    -- Play animation
    RequestAnimDict("pickup_object")
    while not HasAnimDictLoaded("pickup_object") do
        Wait(500)
    end

    TaskPlayAnim(playerPed, "pickup_object", "pick_up", 3.0, -1, 0, 0, 0, false, false, false)

    -- Start progress bar
    QBCore.Functions.Progressbar("collect_item", "Collecting item...", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- On success
        ClearPedTasks(playerPed)
        QBCore.Functions.Notify('You collected the item!', 'success')

        -- Give item to the player
        TriggerServerEvent('qb-quest:giveItem', index)

        -- Remove the prop after collection
        for prop, propIndex in pairs(propEntities) do
            if propIndex == index then
                DeleteObject(prop)
                propEntities[prop] = nil
                exports['qb-target']:RemoveTargetEntity(prop) -- Remove qb-target interaction
                break
            end
        end
    end, function() -- On cancel
        ClearPedTasks(playerPed)
        QBCore.Functions.Notify('Collection cancelled.', 'error')
    end)
end)

-- Optional: Ensure prop remains interactable while quest is ongoing
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000) -- Check every second

        for prop, index in pairs(propEntities) do
            if not DoesEntityExist(prop) then
                propEntities[prop] = nil -- Remove if the prop no longer exists
                exports['qb-target']:RemoveTargetEntity(prop) -- Ensure qb-target interaction is removed
            end
        end
    end
end)
