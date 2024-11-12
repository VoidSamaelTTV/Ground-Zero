local QBCore = exports['qb-core']:GetCoreObject()

-- Give Item Event
RegisterNetEvent('qb-quest:giveItem')
AddEventHandler('qb-quest:giveItem', function(item, amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player.Functions.AddItem(item, amount) then
        TriggerClientEvent('QBCore:Notify', src, 'You received ' .. amount .. ' ' .. item, 'success')
    else
        TriggerClientEvent('QBCore:Notify', src, 'Inventory full!', 'error')
    end
end)
