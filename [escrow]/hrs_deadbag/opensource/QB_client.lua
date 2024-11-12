if Config.Framework == "QB" then

    QBCore = exports['qb-core']:GetCoreObject()

    function ShowNotification(text)
        QBCore.Functions.Notify(text)
    end

    RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function() 
        dropBagFunc()
    end)

    AddEventHandler('hrs_deadbag:menuevent', function(data)
        TriggerServerEvent('hrs_deadbag:getLoot',data.id, data.value)      
    end)

    AddEventHandler('hrs_deadbag:menuevent2', function(data)
        TriggerServerEvent('hrs_deadbag:getLootAll',data.id)      
    end)

    RegisterNetEvent('hrs_deadbag:openLootMenu')
    AddEventHandler('hrs_deadbag:openLootMenu', function(id,list)
        local elements = {}

        for k,v in pairs(list) do
            table.insert(elements,{
                icon = 'nui://qb-inventory/html/images/'..v.item..'.png',
                header = v.label.." x"..v.count,
                params = {
                    event = "hrs_deadbag:menuevent",
                    args = {
                        id = id,
                        value = k
                    }
                },
                txt = Config.Locales["click_get_items"]
            })
        end

        table.insert(elements,{
            header = Config.Locales["get_all"],
            params = {
                event = "hrs_deadbag:menuevent2",
                args = {
                    id = id
                }
            },
            txt = Config.Locales["click_get_items"]
        })

        exports["qb-menu"]:openMenu(elements)
    
    end)

end








