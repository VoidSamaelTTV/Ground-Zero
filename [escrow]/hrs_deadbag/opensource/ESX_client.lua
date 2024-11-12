if Config.Framework == "ESX" then

    ESX = exports["es_extended"]:getSharedObject()

    -- ESX = nil
    -- CreateThread(function()
	--     while ESX == nil do
	-- 	    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	-- 	    Wait(0)
	--     end
    -- end)

    RegisterNetEvent('esx:playerLoaded')
    AddEventHandler('esx:playerLoaded', function()
        dropBagFunc()
    end)

    function ShowNotification(text)
        ESX.ShowNotification(text)
    end

    AddEventHandler('hrs_deadbag:menuevent', function(data)    
        TriggerServerEvent('hrs_deadbag:getLoot',data.id, data.value)
    end)

    AddEventHandler('hrs_deadbag:menuevent2', function(data)
        TriggerServerEvent('hrs_deadbag:getLootAll',data.id)
    end)

    RegisterNetEvent('hrs_deadbag:openLootMenu')
    AddEventHandler('hrs_deadbag:openLootMenu', function(id,list)
        
        local elements = {}
    
        if GetResourceState('ox_lib') ~= 'missing' then
            for k,v in pairs(list) do
                table.insert(elements,{
                    icon = 'hand',
                    title = v.label.." x"..v.count,
                    event = 'hrs_deadbag:menuevent',
                    args = {
                        id = id,
                        value = k
                    },
                    description = Config.Locales["click_get_item"]
                })
            end

            table.insert(elements,{
                icon = 'hand',
                title = Config.Locales["get_all"],
                event = 'hrs_deadbag:menuevent2',
                args = {
                    id = id,
                },
                description = Config.Locales["click_get_items"],
            })

            exports.ox_lib:registerContext({
                id = 'dead_menu',
                title = 'Dead Person Bag',
                options = elements
            })

            exports.ox_lib:showContext('dead_menu')
        elseif GetResourceState('esx_context') ~= 'missing' then
            for k,v in pairs(list) do
                table.insert(elements,{
                    icon = "fa-regular fa-hand",
                    title = v.label.." x"..v.count,
                    value = k,
                    description = Config.Locales["click_get_item"]
                })
            end

            table.insert(elements,{
                icon = "fa-regular fa-hand",
                title = Config.Locales["get_all"],
                value = "all_items_list",
                description = Config.Locales["click_get_items"]
            })
                
            exports["esx_context"]:Open("center" , elements,
            function(menu,element) -- On Select Function
                if element.value == "all_items_list" then
                    TriggerServerEvent('hrs_deadbag:getLootAll',id)
                else
                    TriggerServerEvent('hrs_deadbag:getLoot',id,element.value)
                end

                exports["esx_context"]:Close()

            end, function(menu) -- on close

            end)
        else
            for k,v in pairs(list) do
                table.insert(elements,{label = v.label.." x"..v.count,value = k})
            end

            table.insert(elements,{label = Config.Locales["get_all"],value = "all_items_list"})
    
            ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'loot_menu', {
                title = "Get Item",
                align = 'top-left',
                elements = elements
            }, function(data, menu)
                menu.close()

                if data.current.value == "all_items_list" then
                    TriggerServerEvent('hrs_deadbag:getLootAll',id)
                else
                    TriggerServerEvent('hrs_deadbag:getLoot',id,data.current.value)
                end
               
            end, function(data, menu)
                menu.close()
            end)
        end   
    end)




end








