QBCore = exports['qb-core']:GetCoreObject()

-- Food box
QBCore.Functions.CreateUseableItem("foodbox", function(source, item)
    TriggerClientEvent("consumables:client:openFoodbox", source, item.name)
end)

RegisterNetEvent('consumables:server:foodboxFinished', function(giftBoxType)
    local Player = QBCore.Functions.GetPlayer(source)
    
    if Player.Functions.RemoveItem('foodbox', 1) then
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['foodbox'], "remove")
        
        local giftItems = Config.GiftBoxes[giftBoxType]
        
        if giftItems then
            for name, amt in pairs(giftItems) do
                Player.Functions.AddItem(name, amt)
                TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[name], "add")
            end
        else
        end
    else
    end
end)

-- Medical box
QBCore.Functions.CreateUseableItem("medicalbox", function(source, item)
    TriggerClientEvent("consumables:client:openMedicalbox", source, item.name)
end)

RegisterNetEvent('consumables:server:medicalboxFinished', function(giftBoxType)
    local Player = QBCore.Functions.GetPlayer(source)
    
    if Player.Functions.RemoveItem('medicalbox', 1) then
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['medicalbox'], "remove")
        
        local giftItems = Config.GiftBoxes[giftBoxType]
        
        if giftItems then
            for name, amt in pairs(giftItems) do
                Player.Functions.AddItem(name, amt)
                TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[name], "add")
            end
        else
        end
    else
    end
end)

-- Ammo case
QBCore.Functions.CreateUseableItem("ammocase", function(source, item)
    TriggerClientEvent("consumables:client:openAmmocase", source, item.name)
end)

RegisterNetEvent('consumables:server:AmmocaseFinished', function(giftBoxType)
    local Player = QBCore.Functions.GetPlayer(source)
    
    if Player.Functions.RemoveItem('ammocase', 1) then
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['ammocase'], "remove")
        
        local giftItems = Config.GiftBoxes[giftBoxType]
        
        if giftItems then
            for name, amt in pairs(giftItems) do
                Player.Functions.AddItem(name, amt)
                TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[name], "add")
            end
        else
        end
    else
    end
end)

-- Tool crate
QBCore.Functions.CreateUseableItem("toolcrate", function(source, item)
    TriggerClientEvent("consumables:client:openToolcrate", source, item.name)
end)

RegisterNetEvent('consumables:server:toolcrateFinished', function(giftBoxType)
    local Player = QBCore.Functions.GetPlayer(source)
    
    if Player.Functions.RemoveItem('toolcrate', 1) then
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['toolcrate'], "remove")
        
        local giftItems = Config.GiftBoxes[giftBoxType]
        
        if giftItems then
            for name, amt in pairs(giftItems) do
                Player.Functions.AddItem(name, amt)
                TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[name], "add")
            end
        else
        end
    else
    end
end)

