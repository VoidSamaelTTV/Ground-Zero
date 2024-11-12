-- If you need any help join discord server and open a ticket with your TRANSACTION ID! 😃

local Framework = exports['d3MBA-lib']:GetFrameworkObject()

-- Gas mask 
Framework.CreateUseableItem('potions_mask', function(source, item)
    TriggerClientEvent('d3Potions:client:UseGasMask', source)
end)


Framework.CreateUseableItem('potion_empty_water_bottle', function(source, item)
    TriggerClientEvent('d3Potions:client:refill', source)
end)



-- Refilling bottle 
RegisterNetEvent('d3Potions:server:reffilingBottle', function()
    local waterItem = Config.WaterItem 
    if Config.WaterItem == "" or Config.WaterItem == nil or Config.WaterItem == " " then 
        waterItem = WaterItemFunction()
    end 

    if Framework.HasItem(source, "potion_empty_water_bottle", 1) then 
        Framework.RemoveItem(source, 'potion_empty_water_bottle', 1)
        Framework.AddItem(source, waterItem, 1)
    else
        TriggerClientEvent('d3MBA-lib:sendNotification', source, Config.Notifications["you_dont_have_empty_bottle"], Framework.NotificationsSettings.Error, 5000)
    end
end)


function WaterItemFunction()
    if Framework.Framework == "qbcore" then 
        return "water_bottle"
    elseif Framework.Framework == "esx" then 
        return "water"
    end 
end 