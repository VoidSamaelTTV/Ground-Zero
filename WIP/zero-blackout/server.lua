local QBCore = exports['qb-core']:GetCoreObject()

-- Function to initiate blackout
-- function StartBlackout()
--     TriggerClientEvent('power:blackout', -1) -- Trigger on all clients
-- end

-- Event handler for power restoration
RegisterNetEvent('power:restorePower', function()
    local src = source
    local player = QBCore.Functions.GetPlayer(src)

    -- Determine if explosion should occur
    local explosionChance = math.random()
    if explosionChance <= Config.ExplosionChance then
        TriggerClientEvent('power:explosion', src)
    else
        TriggerClientEvent('power:powerRestored', src)
    end
end)

-- When the resource starts, start blackout
AddEventHandler('onResourceStart', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        StartBlackout()
    end
end)
