local Framework = exports['d3MBA-lib']:GetFrameworkObject()

-- Shop input menu 

RegisterNetEvent("d3MBA-potions:client:OpenShopInputMenu", function(data)
    local ItemLabel = Framework.GetItemLabel(data.ItemName)
    local InputAmount = nil   
    
    -- ox_lib
    if Framework.InputMenu == "ox_lib" then
        local dialog = Framework.OpenInputMenu("ox_lib", string.format(Config.InputMenu["enter_amount"], ItemLabel), {
            { type = "number", label = Config.InputMenu["amount"], default = 1, min = 1},
        })

        if dialog == nil then return end

        InputAmount = dialog[1] 
    end

    -- qb-input
    if Framework.InputMenu == "qb-input" then
        local dialog = Framework.OpenInputMenu("qb-input", string.format(Config.InputMenu["enter_amount"], ItemLabel), {
        {
            text = Config.InputMenu["amount"],
            name = "amount",
            type = "number",
        },
    })

    if dialog == nil then return end

    InputAmount = dialog.amount 
    end 

    -- nh-input
    if Framework.InputMenu == "nh-input" then
        local dialog, amount = Framework.OpenInputMenu("nh-input", string.format(Config.InputMenu["enter_amount"], ItemLabel), {Config.InputMenu["amount"]})

        if amount == nil then return end

        InputAmount = amount 
    end 

    InputAmount = tonumber(InputAmount) 
    InputAmount = math.floor(InputAmount)

    -- Input menu end
    if InputAmount ~= nil then 
        if InputAmount >= 1 then 
            local data = {
                ItemName = data.ItemName,
                Amount = InputAmount,
                Price = data.Price,
                itemLabel = Framework.GetItemLabel(data.ItemName)
            }
            TriggerServerEvent("d3MBA-potions:server:ShopBuyItem", data)
        else
            TriggerEvent("d3MBA-lib:sendNotification", Config.Notifications["invalid_amount"], Framework.NotificationsSettings.Error, 5000)
        end 
    end 
end)