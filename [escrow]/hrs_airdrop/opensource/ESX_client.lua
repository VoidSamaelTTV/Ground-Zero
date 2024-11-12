if Config.Framework == "ESX" then

    ESX = nil
    CreateThread(function()
	    while ESX == nil do
		    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		    Wait(0)
	    end
    end)

    RegisterNetEvent('esx:playerLoaded')
    AddEventHandler('esx:playerLoaded', function()
        TriggerServerEvent('hrs_loot:lists')
    end)

    function ShowNotification(text)
        ESX.ShowNotification(text)
    end


    AddEventHandler('hrs_airdrop:menuevent', function(data)    
        TriggerServerEvent('hrs_airdrop:getLoot',data.id, data.value)
    end)

    AddEventHandler('hrs_airdrop:menuevent2', function(data)
        TriggerServerEvent('hrs_airdrop:getLootAll',data.id)
    end)

    RegisterNetEvent('hrs_airdrop:openLootMenu')
    AddEventHandler('hrs_airdrop:openLootMenu', function(id,list)
        
    
        local elements = {}
    
        if GetResourceState('ox_lib') ~= 'missing' then
            for k,v in pairs(list) do
                table.insert(elements,{
                    icon = 'hand',
                    title = v.label.." x"..v.count,
                    event = 'hrs_airdrop:menuevent',
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
                event = 'hrs_airdrop:menuevent2',
                args = {
                    id = id,
                },
                description = Config.Locales["click_get_items"],
            })

            exports.ox_lib:registerContext({
                id = 'airdrop_menu',
                title = 'Airdrop Menu',
                options = elements
            })

            exports.ox_lib:showContext('airdrop_menu')
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
                    TriggerServerEvent('hrs_airdrop:getLootAll',id)
                else
                    TriggerServerEvent('hrs_airdrop:getLoot',id,element.value)
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
                    TriggerServerEvent('hrs_airdrop:getLootAll',id)
                else
                    TriggerServerEvent('hrs_airdrop:getLoot',id,data.current.value)
                end
               
            end, function(data, menu)
                menu.close()
            end)
        end   
    end)

    function ProgressBar(index)
        if not Config.UseProgressBar then
            return true
        end
    
        local ped = PlayerPedId()
     
        local statusValue = nil
    
        local animType = Config.ProgressBars[index]

        if animType.animation.task then
            TaskStartScenarioInPlace(ped, animType.animation.task, 0, true)
        elseif animType.animation.animDict then
            RequestAnimDict(animType.animation.animDict)
            while not HasAnimDictLoaded(animType.animation.animDict) do 
                Wait(10)
            end

            TaskPlayAnim(ped, animType.animation.animDict, animType.animation.anim, 1.0, 1.0, -1, 1, 1.0, false,false,false)
            RemoveAnimDict(animType.animation.animDict)       
        end

        ESX.Progressbar(animType.label, animType.duration,{
            FreezePlayer = true, 
            animation ={},
            onFinish = function()
                statusValue = true
        end, onCancel = function()
                statusValue = false
        end})
  
        while statusValue == nil do
            Wait(10)
        end
    
        ClearPedTasks(ped)
        ClearPedTasksImmediately(ped)
        if animType.animation.animDict then
            StopAnimTask(ped, animType.animation.animDict, animType.animation.anim, 1.0)
        end
  
        return statusValue
    end

end








