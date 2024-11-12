local QBCore = exports['qb-core']:GetCoreObject()

local function exploitBan(id, reason)
    MySQL.insert('INSERT INTO bans (name, license, discord, ip, reason, expire, bannedby) VALUES (?, ?, ?, ?, ?, ?, ?)',
        {
            GetPlayerName(id),
            QBCore.Functions.GetIdentifier(id, 'license'),
            QBCore.Functions.GetIdentifier(id, 'discord'),
            QBCore.Functions.GetIdentifier(id, 'ip'),
            reason,
            2147483647,
            'qb-blackmarket'
        })
    TriggerEvent('qb-log:server:CreateLog', 'BlackMarket', 'Player Banned', 'red',
        string.format('%s was banned by %s for %s', GetPlayerName(id), 'qb-blackmarket', reason), true)
    DropPlayer(id, 'You were permanently banned by the server for: Exploiting')
end

RegisterNetEvent('qb-blackmarket:server:sellbmItems', function(itemName, itemAmount, itemPrice)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local totalPrice = (tonumber(itemAmount) * itemPrice)
    -- local playerCoords = GetEntityCoords(GetPlayerPed(src))
    -- local dist
    -- for _, value in pairs(Config.bmLocation) do
    --     dist = #(playerCoords - value.coords)
    --     if #(playerCoords - value.coords) < 2 then
    --         dist = #(playerCoords - value.coords)
    --         break
    --     end
    -- end
    -- if dist > 5 then exploitBan(src, 'sellbmItems Exploiting') return end
    if Player.Functions.RemoveItem(itemName, tonumber(itemAmount)) then
        if Config.BankMoney then
            Player.Functions.AddMoney('bank', totalPrice)
        else
            Player.Functions.AddMoney('cash', totalPrice)
        end
        TriggerClientEvent('QBCore:Notify', src, Lang:t('success.sold', { value = tonumber(itemAmount), value2 = QBCore.Shared.Items[itemName].label, value3 = totalPrice }),'success')
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[itemName], 'remove')
    else
        TriggerClientEvent('QBCore:Notify', src, Lang:t('error.no_items'), 'error')
    end
    TriggerClientEvent('qb-blackmarket:client:openMenu', src)
end)

RegisterNetEvent('qb-blackmarket:server:meltItemRemove', function(itemName, itemAmount, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(itemName, itemAmount) then
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[itemName], 'remove')
        local meltTime = (tonumber(itemAmount) * item.time)
        TriggerClientEvent('qb-blackmarket:client:startMelting', src, item, tonumber(itemAmount), (meltTime * 60000 / 1000))
        TriggerClientEvent('QBCore:Notify', src, Lang:t('info.melt_wait', { value = meltTime }), 'primary')
    else
        TriggerClientEvent('QBCore:Notify', src, Lang:t('error.no_items'), 'error')
    end
end)

RegisterNetEvent('qb-blackmarket:server:pickupMelted', function(item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local playerCoords = GetEntityCoords(GetPlayerPed(src))
    local dist
    for _, value in pairs(Config.bmLocation) do
        dist = #(playerCoords - value.coords)
        if #(playerCoords - value.coords) < 2 then
            dist = #(playerCoords - value.coords)
            break
        end
    end
    if dist > 5 then exploitBan(src, 'pickupMelted Exploiting') return end
    for _, v in pairs(item.items) do
        local meltedAmount = v.amount
        for _, m in pairs(v.item.reward) do
            local rewardAmount = m.amount
            if Player.Functions.AddItem(m.item, (meltedAmount * rewardAmount)) then
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[m.item], 'add')
                TriggerClientEvent('QBCore:Notify', src, Lang:t('success.items_received',{ value = (meltedAmount * rewardAmount), value2 = QBCore.Shared.Items[m.item].label }), 'success')
            else
                TriggerClientEvent('QBCore:Notify', src, Lang:t('error.inventory_full', { value = QBCore.Shared.Items[m.item].label}), 'warning', 7500)
            end
        end
    end
    TriggerClientEvent('qb-blackmarket:client:resetPickup', src)
    TriggerClientEvent('qb-blackmarket:client:openMenu', src)
end)

QBCore.Functions.CreateCallback('qb-blackmarket:server:getInv', function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source)
    local inventory = Player.PlayerData.items
    return cb(inventory)
end)