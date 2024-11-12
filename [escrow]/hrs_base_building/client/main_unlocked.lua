itemLabels = {}

myCrew = nil
invitesCrew = nil
identifier = nil

RegisterNetEvent('hrs_base_building:setCrewC')
AddEventHandler('hrs_base_building:setCrewC', function(crew)
    myCrew = crew
end)

RegisterNetEvent('hrs_base_building:setInvitesC')
AddEventHandler('hrs_base_building:setInvitesC', function(invites)
    invitesCrew = invites
end)

function getLabel(item)
    if itemLabels[item] then
        return itemLabels[item]
    else
        if Config.itemLabels[item] then
            return Config.itemLabels[item]
        else
            print("item "..item.." does not exist")
            return item.."-ERROR"
        end
    end
end

function Round(value, numDecimalPlaces)
	if numDecimalPlaces then
		local power = 10^numDecimalPlaces
		return math.floor((value * power) + 0.5) / (power)
	else
		return math.floor(value + 0.5)
	end
end


function hasPermissionVeh(identifier,identifier2)

    if identifier == identifier2 then
        return true
    end

    if myCrew and myCrew.data[identifier2] then
        return true		
    end

	return false
end

exports("hasPermissionVeh", hasPermissionVeh)


----------- ESX RELATED

if Config.Framework == "ESX" then

    ESX = exports['es_extended']:getSharedObject()

    -- ESX = nil
    -- CreateThread(function()
	--     while ESX == nil do
	-- 	    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	-- 	    Wait(0)
	--     end
    -- end)

    function loadLabels()
        if Config.inventory == 'ox_inventory' then
            for k,v in pairs(exports.ox_inventory:Items()) do
                itemLabels[k] = v.label
            end
        else
            itemLabels = Config.itemLabels
        end
    end

    function loadEverything()
        FreezeEntityPosition(PlayerPedId(),true)
        BeginBasesLoad()

        loadLabels()
        loadTarget()

        TriggerServerEvent('hrs_base_building:getCrewS')     
    end

    RegisterNetEvent('esx:playerLoaded')
    AddEventHandler('esx:playerLoaded', function()
        loadEverything()
    end)

    function ShowNotification(text)
        ESX.ShowNotification(text)
    end

    if Config.ContextMenu == 'ox_lib' then

        AddEventHandler('hrs_base_building:crew:playerList', function()
            local elements = {}
    
            if myCrew then
                local players = GetActivePlayers()
                local player = PlayerId()
    
                local myCoords = GetEntityCoords(PlayerPedId())
                for k,v in ipairs(players) do
                    if player ~= v then
                        local entCoords = GetEntityCoords(GetPlayerPed(v))
                        if #(myCoords - entCoords) < 3.0 then
                            table.insert(elements,{
                                title = GetPlayerName(v),
                                serverEvent = 'hrs_base_building:addToCrew',
                                args = GetPlayerServerId(v),
                                description = Config.Locales["crew_invite_player"]
                            })
                        end
                    end
                end
    
                if #elements > 0 then
                    exports.ox_lib:registerContext({
                        id = 'crew_playerList',
                        title = Config.Locales["crew_playerList"],
                        options = elements
                    })
            
                    exports.ox_lib:showContext('crew_playerList')
                else
                    ShowNotification(Config.Locales["crew_no_players"])
                end
                
            end
        end)
    
        AddEventHandler('hrs_base_building:crew:manage', function()
            local elements = {}
    
            if myCrew and myCrew.data then
                for k,v in pairs(myCrew.data) do
                    if k ~= identifier then
                        table.insert(elements,{
                            title = v,
                            serverEvent = 'hrs_base_building:removeFromCrew',
                            args = k,
                            description  = Config.Locales["crew_remove_player"]
                        })
                    else
                        table.insert(elements,{
                            title = v,
                            disabled = true,
                            description = Config.Locales["crew_no_remove_you"]
                        })
                    end
                end
    
                exports.ox_lib:registerContext({
                    id = 'crew_manage',
                    title = Config.Locales["crew_manage"],
                    options = elements
                })
        
                exports.ox_lib:showContext('crew_manage')
            end
        end)
    
        AddEventHandler('hrs_base_building:crew:invitesList', function()
            local elements = {}
    
            if not myCrew and invitesCrew then
                for k,v in pairs(invitesCrew) do
                    table.insert(elements,{
                        title = v,
                        serverEvent = 'hrs_base_building:acceptCrew',
                        args = k, 
                        description = Config.Locales["crew_join"]
                    })
                end
    
                exports.ox_lib:registerContext({
                    id = 'crew_invitesList',
                    title = Config.Locales["crew_invitesList"],
                    options = elements
                })
        
                exports.ox_lib:showContext('crew_invitesList')
            else
                ShowNotification(Config.Locales["crew_no_invites"])
            end
        end)

        function OpenCrewMenu()
            local elements = {}
            if myCrew then
                if myCrew.owner == identifier then
                    table.insert(elements,{
                        title = Config.Locales["crew_invite_header"],
                        event = 'hrs_base_building:crew:playerList',
                        description = Config.Locales["crew_invite_desc"]
                    })
    
                    table.insert(elements,{
                        title = Config.Locales["crew_manage_header"],
                        event = 'hrs_base_building:crew:manage',
                        description = Config.Locales["crew_manage_desc"]
                    })
    
                    table.insert(elements,{
                        title = Config.Locales["crew_delete_header"],
                        serverEvent = 'hrs_base_building:deleteCrew',             
                        description = Config.Locales["crew_delete_desc"]
                    })
                else
                    table.insert(elements,{
                        title = Config.Locales["crew_leave_header"],
                        serverEvent = 'hrs_base_building:leaveCrew',
                        description = Config.Locales["crew_leave_desc"]
                    })
                end
            else
                table.insert(elements,{
                    title = Config.Locales["crew_invites_header"],
                    event = 'hrs_base_building:crew:invitesList',
                    description = Config.Locales["crew_invites_desc"]
                })
    
                table.insert(elements,{
                    title = Config.Locales["crew_create_header"],
                    serverEvent = 'hrs_base_building:createCrew',
                    description = Config.Locales["crew_create_desc"]
                })
            end
    
            exports.ox_lib:registerContext({
                id = 'OpenCrewMenu',
                title = Config.Locales["crew_menu"],
                options = elements
            })
    
            exports.ox_lib:showContext('OpenCrewMenu')
        end
    else

        function OpenPlayerManagement()
            local elements = {}
    
            if myCrew and myCrew.data then
                for k,v in pairs(myCrew.data) do
                    if k ~= identifier then
                        table.insert(elements,{
                            icon = "fa-regular fa-hand",
                            title = v,
                            value = k,
                            description = Config.Locales["crew_remove_player"]
                        })
                    else
                        table.insert(elements,{
                            icon = "fa-regular fa-hand",
                            title = v,
                            value = nil,
                            description = Config.Locales["crew_no_remove_you"]
                        })
                    end
                end
    
                exports["esx_context"]:Open("center" , elements,
                function(menu,element) -- On Select Function
                    if element.value then
                        TriggerServerEvent('hrs_base_building:removeFromCrew',element.value)
                        exports["esx_context"]:Close()
                        Wait(500)
                        OpenCrewMenu()
                    end
                end, function(menu) -- on close
                    OpenCrewMenu()
                end)
            end
        end
    
        function OpenPlayerList()
            local elements = {}
    
            if myCrew then
                local players = GetActivePlayers()
                local player = PlayerId()
    
                local myCoords = GetEntityCoords(PlayerPedId())
                for k,v in ipairs(players) do
                    if player ~= v then
                        local entCoords = GetEntityCoords(GetPlayerPed(v))
                        if #(myCoords - entCoords) < 3.0 then
                            table.insert(elements,{
                                icon = "fa-regular fa-hand",
                                title = GetPlayerName(v),
                                value = GetPlayerServerId(v),
                                description = Config.Locales["crew_invite_player"]
                            })
                        end
                    end
                end
    
                if #elements > 0 then
                    exports["esx_context"]:Open("center" , elements,
                    function(menu,element) -- On Select Function
                        if element.value then
                            TriggerServerEvent('hrs_base_building:addToCrew',element.value)
                            exports["esx_context"]:Close()
                            Wait(500)
                            OpenCrewMenu()
                        end
                    end, function(menu) -- on close
                        OpenCrewMenu()
                    end)
                else
                    ShowNotification(Config.Locales["crew_no_players"])
                end
                
    
            end
        end
    
        function OpenInvitesList()
            local elements = {}
    
            if not myCrew and invitesCrew then
                for k,v in pairs(invitesCrew) do
                    table.insert(elements,{
                        icon = "fa-regular fa-hand",
                        title = v,
                        value = k,
                        description = Config.Locales["crew_join"]
                    })
                end
    
                exports["esx_context"]:Open("center" , elements,
                function(menu,element) -- On Select Function
                    if element.value then
                        TriggerServerEvent('hrs_base_building:acceptCrew',element.value)
                        exports["esx_context"]:Close()
                        Wait(500)
                        OpenCrewMenu()
                    end
                end, function(menu) -- on close
                    OpenCrewMenu()
                end)
            else
                ShowNotification(Config.Locales["crew_no_invites"])
            end
    
    
        end

        function OpenCrewMenu()
            local elements = {}
            if myCrew then
                if myCrew.owner == identifier then
                    table.insert(elements,{
                        icon = "fa-regular fa-hand",
                        title = Config.Locales["crew_invite_header"],
                        value = 'playerList',
                        description = Config.Locales["crew_invite_desc"]
                    })
                    table.insert(elements,{
                        icon = "fa-regular fa-hand",
                        title = Config.Locales["crew_manage_header"],
                        value = 'manage',
                        description = Config.Locales["crew_manage_desc"]
                    })
                    table.insert(elements,{
                        icon = "fa-regular fa-hand",
                        title = Config.Locales["crew_delete_header"],
                        value = "delete",
                        description = Config.Locales["crew_delete_desc"]
                    })
                else
                    table.insert(elements,{
                        icon = "fa-regular fa-hand",
                        title = Config.Locales["crew_leave_header"],
                        value = 'leave',
                        description = Config.Locales["crew_leave_desc"]
                    })
                end
            else
                table.insert(elements,{
                    icon = "fa-regular fa-hand",
                    title = Config.Locales["crew_invites_header"],
                    value = 'invitesList',
                    description = Config.Locales["crew_invites_desc"]
                })
                table.insert(elements,{
                    icon = "fa-regular fa-hand",
                    title = Config.Locales["crew_create_header"],
                    value = 'create',
                    description = Config.Locales["crew_create_desc"]
                })
            end
    
            exports["esx_context"]:Open("center" , elements,
            function(menu,element) -- On Select Function
                if element.value == "create" then
                    TriggerServerEvent('hrs_base_building:createCrew')
                    exports["esx_context"]:Close()
                    Wait(500)
                    OpenCrewMenu()
                elseif element.value == "delete" then
                    TriggerServerEvent('hrs_base_building:deleteCrew')
                    exports["esx_context"]:Close()
                    Wait(500)
                    OpenCrewMenu()
                elseif element.value == "delete" then
                    TriggerServerEvent('hrs_base_building:deleteCrew')
                    exports["esx_context"]:Close()
                    Wait(500)
                    OpenCrewMenu()
                elseif element.value == "manage" then
                    exports["esx_context"]:Close()
                    OpenPlayerManagement()
                elseif element.value == "playerList" then
                    exports["esx_context"]:Close()
                    OpenPlayerList()
                elseif element.value == "invitesList" then
                    exports["esx_context"]:Close()
                    OpenInvitesList()
                elseif element.value == "leave" then
                    TriggerServerEvent('hrs_base_building:leaveCrew')
                    exports["esx_context"]:Close()
                    Wait(500)
                    OpenCrewMenu()
                else
                    exports["esx_context"]:Close()
                end
            end, function(menu) -- on close
                exports["esx_context"]:Close()
            end)
        end
    end

elseif Config.Framework == "QB" then
   
    QBCore = exports['qb-core']:GetCoreObject()

    function ShowNotification(text)
        QBCore.Functions.Notify(text)
    end

    -- CreateThread(function()
    --     Wait(500)
    --     BeginBasesLoad()
    -- end)

    function loadLabels()
        for k,v in pairs(QBCore.Shared.Items) do
            itemLabels[k] = v.label
        end
    end

    function loadEverything()
        FreezeEntityPosition(PlayerPedId(),true)
        BeginBasesLoad()

        loadLabels()
        loadTarget()

        TriggerServerEvent('hrs_base_building:getCrewS')
    end

    RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function() 
        loadEverything()       
    end)

    AddEventHandler('hrs_base_building:crew:playerList', function()
        local elements = {}

        if myCrew then
            local players = GetActivePlayers()
            local player = PlayerId()

            local myCoords = GetEntityCoords(PlayerPedId())
            for k,v in ipairs(players) do
                if player ~= v then
                    local entCoords = GetEntityCoords(GetPlayerPed(v))
                    if #(myCoords - entCoords) < 3.0 then
                        table.insert(elements,{
                            header = GetPlayerName(v),
                            params = {
                                isServer = true,
                                event = 'hrs_base_building:addToCrew',
                                args = GetPlayerServerId(v)
                            },
                            txt = Config.Locales["crew_invite_player"]
                        })
                    end
                end
            end

            if #elements > 0 then
                exports["qb-menu"]:openMenu(elements)
            else
                ShowNotification(Config.Locales["crew_no_players"])
            end
            
        end
    end)

    AddEventHandler('hrs_base_building:crew:manage', function()
        local elements = {}

        if myCrew and myCrew.data then
            for k,v in pairs(myCrew.data) do
                if k ~= identifier then
                    table.insert(elements,{
                        header = v,
                        params = {
                            isServer = true,
                            event = 'hrs_base_building:removeFromCrew',
                            args = k
                        },
                        txt = Config.Locales["crew_remove_player"]
                    })
                else
                    table.insert(elements,{
                        header = v,
                        disabled = true,
                        txt = Config.Locales["crew_no_remove_you"]
                    })
                end
            end

            exports["qb-menu"]:openMenu(elements)
        end
    end)

    AddEventHandler('hrs_base_building:crew:invitesList', function()
        local elements = {}

        if not myCrew and invitesCrew then
            for k,v in pairs(invitesCrew) do
                table.insert(elements,{
                    header = v,
                    params = {
                        isServer = true,
                        event = 'hrs_base_building:acceptCrew',
                        args = k
                    },
                    txt = Config.Locales["crew_join"]
                })
            end

            exports["qb-menu"]:openMenu(elements)
        else
            ShowNotification(Config.Locales["crew_no_invites"])
        end
    end)

    

    function OpenCrewMenu()
        local elements = {}
        if myCrew then
            if myCrew.owner == identifier then
                table.insert(elements,{
                    header = Config.Locales["crew_invite_header"],
                    params = {
                        isServer = false,
                        event = 'hrs_base_building:crew:playerList'
                    },
                    txt = Config.Locales["crew_invite_desc"]
                })

                table.insert(elements,{
                    header = Config.Locales["crew_manage_header"],
                    params = {
                        isServer = false,
                        event = 'hrs_base_building:crew:manage'
                    },
                    txt = Config.Locales["crew_manage_desc"]
                })

                table.insert(elements,{
                    header = Config.Locales["crew_delete_header"],
                    params = {
                        isServer = true,
                        event = 'hrs_base_building:deleteCrew'           
                    },
                    txt = Config.Locales["crew_delete_desc"]
                })
            else
                table.insert(elements,{
                    header = Config.Locales["crew_leave_header"],
                    params = {
                        isServer = true,
                        event = 'hrs_base_building:leaveCrew'
                    },
                    txt = Config.Locales["crew_leave_desc"]
                })
            end
        else
            table.insert(elements,{
                header = Config.Locales["crew_invites_header"],
                params = {
                    isServer = false,
                    event = 'hrs_base_building:crew:invitesList'
                },
                txt = Config.Locales["crew_invites_desc"]
            })

            table.insert(elements,{
                header = Config.Locales["crew_create_header"],
                params = {
                    isServer = true,
                    event = 'hrs_base_building:createCrew'
                },
                txt = Config.Locales["crew_create_desc"]
            })
        end

        exports["qb-menu"]:openMenu(elements)
    end

end



RegisterNetEvent("hrs_base_building:juststarted")
AddEventHandler("hrs_base_building:juststarted", function()
    loadEverything()
end)

------------------ Crew Menu --------------------------------








------------------ Command to open Crew Menu ----------------
RegisterCommand("crew", function()
    OpenCrewMenu()
end)






------------ PROP POSITIONING ---------

CreateThread(function()	
	while true do
		Wait(0)
				
		if prop then
            DisableControlAction(0,22,true)
            DisableControlAction(0,21,true)

            DisableControlAction(0,14,true)
            DisableControlAction(0,15,true)


            local needWait = false

            if IsControlPressed(0,172) then
                increzeZ()	
                needWait = true
			elseif IsControlPressed(0,173) then
                decreaseZ()	
                needWait = true
            end

			if IsControlPressed(0,175) then
                rotatePositive()
                needWait = true
			elseif IsControlPressed(0,174) then
                rotateNegative()
                needWait = true
            end

            if IsDisabledControlPressed(0,14) then               
				forwardChange(-0.1)
                needWait = true
            elseif IsDisabledControlPressed(0,15) then               
				forwardChange(0.1)
                needWait = true
			end	

            if needWait then
                Wait(50)
            else
			    if IsControlJustReleased(0,215) then               
				    applyFinalPos()
                end
            end
            
            
            --print(GetPedConfigFlag(PlayerPedId(),388))

            if IsControlJustReleased(0,177) or IsDisabledControlJustPressed(0,22) or IsDisabledControlJustPressed(0,21) or IsDisabledControlPressed(0,21) or IsDisabledControlPressed(0,22) then
                cancelPos()
            end	


		end
	end
end)


--- Disable climbing ladders while positioning props to prevent bugs
CreateThread(function()	
	while true do
		Wait(100)
		if prop then
            SetPedConfigFlag(PlayerPedId(),146,true)
            while prop do
                Wait(100)
            end
            SetPedConfigFlag(PlayerPedId(),146,false)
		end
	end
end)



----------------------------------------------------------------------------

function progressBar(index)
    if not Config.UseProgressBar then
        return true
    end

    local ped = PlayerPedId()
 
    local statusValue = nil

    local animType = Config.ProgressBars[index]

    progressBarActive = true

    if GetResourceState('ox_lib') ~= 'missing' then
        if not animType.animation.flags then
            animType.animation.flags = 1
        end

        statusValue = exports.ox_lib:progressCircle({
            duration = animType.duration,
            position = 'middle',
            useWhileDead = false,
            canCancel = true,
            label = animType.label,
            disable = {
                car = true,
                combat = true,
                move = true,
            },
            anim = {
                dict = animType.animation.animDict,
                clip = animType.animation.anim,
                scenario = animType.animation.task,
                flag = animType.animation.flags
            },
            prop = animType.prop
        })

    elseif GetResourceState('mythic_progbar') ~= 'missing' then

        TriggerEvent("mythic_progbar:client:progress", {
            name = type,
            duration = animType.duration,
            label = animType.label,
            useWhileDead = false,
            canCancel = true,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            },
            animation = {
                animDict = animType.animation.animDict,
                anim = animType.animation.anim,
                task = animType.animation.task,
                flags = animType.animation.flags
            },
            prop = animType.prop
        }, function(status)
            statusValue = not status 
        end) 

        while statusValue == nil do
            Wait(10)
        end

    elseif GetResourceState('esx_progressbar') ~= 'missing' then
        
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

        ClearPedTasks(ped)
        ClearPedTasksImmediately(ped)
        if animType.animation.animDict then
            StopAnimTask(ped, animType.animation.animDict, animType.animation.anim, 1.0)
        end

    elseif GetResourceState('qb-core') ~= 'missing' then

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

        QBCore.Functions.Progressbar(index, animType.label,animType.duration, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done   
            statusValue = true 
        end, function() -- Cancel
            statusValue = false
        end)

        while statusValue == nil do
            Wait(10)
        end
    
        ClearPedTasks(ped)
        ClearPedTasksImmediately(ped)
        if animType.animation.animDict then
            StopAnimTask(ped, animType.animation.animDict, animType.animation.anim, 1.0)
        end

    end

    progressBarActive = false

    return statusValue
end

-------------------------- prop interaction

function OnStorageOpen(id,hash,owner,date) 
    local text = 'HRS'..hash..""..id..""..date
    text = string.gsub(text, "-", "n")
    text = string.gsub(text, ":", "")
    text = string.gsub(text, "_", "")
    text = string.gsub(text, "/", "")



    if Config.inventory == 'ox_inventory' then
        if Config.usingOldInventoryMethod then
            text = tostring('HRS_'..hash.."_"..id.."_"..date)
        end

        local bool = exports.ox_inventory:openInventory('stash', text)
        if not bool then
            TriggerServerEvent('hrs_base_building:oxLoad',id,hash)
            exports.ox_inventory:openInventory('stash', text)
        end
    elseif Config.inventory == 'qb-inventory' then   
        if Config.usingOldInventoryMethod then
            text = 'HRS'..hash..""..id..""..date
            text = string.gsub(text, "-", "_")
        end
        
        TriggerServerEvent("inventory:server:OpenInventory", "stash", text, {
            maxweight = Config.Models[hash].weight,
            slots = Config.Models[hash].slots
        })
        TriggerEvent("inventory:client:SetCurrentStash", text)
    elseif Config.inventory == 'qb-inventory' then   
        if Config.usingOldInventoryMethod then
            text = 'HRS'..hash..""..id..""..date
            text = string.gsub(text, "-", "_")
        end
        
        TriggerServerEvent("inventory:server:OpenInventory", "stash", text, {
            maxweight = Config.Models[hash].weight,
            slots = Config.Models[hash].slots
        })
        TriggerEvent("inventory:client:SetCurrentStash", text)
    elseif Config.inventory == 'chezza_inventory' then 

        --text = tonumber(string.gsub(text, "HRS", ""))

        TriggerEvent('inventory:openInventory', {
            type = "stash",
            id = text,
            title = getLabel(Config.Models[hash].item),
            weight = Config.Models[hash].weight,
            delay = 0, 
            save = true 
        })        
    elseif Config.inventory == 'core_inventory' then 
        local coreStash = Config.Models[hash].coreStashName

        if not coreStash then
            coreStash = "stash"
        end

        TriggerServerEvent('core_inventory:server:openInventory', text, coreStash)

        --TriggerServerEvent('core_inventory:server:openInventory', text, "stash")
    elseif Config.inventory == 'qs-inventory' then 
        TriggerServerEvent("inventory:server:OpenInventory", "stash", "Stash_"..text)
        TriggerEvent("inventory:client:SetCurrentStash", "Stash_"..text)
    elseif Config.inventory == 'tp_inventory_hud' then 
        exports.tp_inventory_hud:registerStashInventory(text,{})
        Wait(200)
        exports.tp_inventory_hud:openInventory('stash', text)

    elseif Config.inventory == 'axfw-inventory' then 

        TriggerServerEvent('ax-inv:Server:OpenInventory','Stash-'..text,Config.Models[hash].slots)

    elseif Config.inventory == 'qb-inventory' then 

        exports["qb-inventory"]:CustomInventory(ourinventoryid, inventory_item_name, isTemporary)

    else
        print("PLEASE SETUP YOUR INVENTORY SYSTEM")
    end
end

function objectExplode(Object)
    if propsalreadyspowned[Object] then
        local UsedId = propsalreadyspowned[Object].id
        TriggerEvent('hrs_base_building:advancedInteractClient',"c4",UsedId)
    else
       
        ShowNotification(Config.Locales["no_interactions"])
    end
end

function getOwnedProps()
    local ownedProps = {}
    for k,v in pairs(props) do
        if hasPermissionVeh(identifier,v.identifier) then
            table.insert(ownedProps,k)
        end
    end
    return ownedProps
end

function objectInteractFunction(Object,isAdvanced)
    if propsalreadyspowned[Object] then
        if isAdvanced then

            local list = nil

            if Config.Models[propsalreadyspowned[Object].hash].type == 'upkeep' then
                list = getOwnedProps()
            end

            local UsedId = propsalreadyspowned[Object].id
            TriggerServerEvent("hrs_base_building:advancedInteractServer",UsedId,nil,list)
        else
            local typeEntity = getEntityModelInfo(Object,"type")
            local subtypeEntity = getEntityModelInfo(Object,"subtype")
            local entityId = getEntityId(Object)
            local trigger = getEntityModelInfo(Object,"TriggerEvent")
            local ent = propsalreadyspowned[Object]

            if propsalreadyspowned[Object].dooropen ~= nil then    
                TriggerServerEvent('hrs_base_building:doorstatus',entityId)	
            elseif typeEntity == "need_stand_weapon" then
                TriggerServerEvent('hrs_base_building:onstatusTurret',entityId)	
            elseif propsalreadyspowned[Object].on ~= nil then           
                TriggerServerEvent('hrs_base_building:onstatus',entityId)	
            elseif typeEntity == "storages" then
                if Config.Models[props[entityId].dead] and Config.Models[props[entityId].dead].itemStock then
                    TriggerServerEvent('hrs_base_building:openstock',entityId, "Dead Stock")
                else
                    TriggerServerEvent('hrs_base_building:canopenstorage',entityId)
                end
            elseif subtypeEntity == "biggateway" then
                local gate = GetBigGate(ent.coords)
                if gate then
                    local newId = getEntityId(gate)
                    TriggerServerEvent('hrs_base_building:doorstatus',newId)	
                else
                    ShowNotification(Config.Locales["no_gate"])
                end
            elseif subtypeEntity == "doorway" then
                local door = GetDoor(ent.coords)
                if door then
                    local newId = getEntityId(door)
                    TriggerServerEvent('hrs_base_building:doorstatus',newId)	
                else
                    ShowNotification(Config.Locales["no_door"])
                end
            elseif trigger then
                if getEntityModelInfo(Object,"needsEletricity") then
                    if getON(ent.coords,Config.generatorRadius,"generator") then
                        TriggerServerEvent('hrs_base_building:trigger',entityId,Object)
                    else
                        ShowNotification(Config.Locales["no_electricity"])
                    end
                else
                    TriggerServerEvent('hrs_base_building:trigger',entityId,Object)
                end            
            end
        end
    else
        local model = GetEntityModel(Object)
        if Config.Models[model] and Config.Models[model].mapProp and Config.Models[model].TriggerEvent then
            TriggerEvent('hrs_base_building:triggerfinal',model,Object)
        else
            ShowNotification(Config.Locales["no_interactions"])
        end
    end
end

RegisterNetEvent('building:interact', function(Object,isAdvanced)
    objectInteractFunction(Object,isAdvanced)
end)


------------------------ interaction sys
function loadTarget()
    if Config.UseTargetExport then
        
        for k,v in pairs(Config.Models) do
            if v.item then
                local models = {}
                table.insert(models,v.modelName)

                local options = {}

                if not v.disableIteract then
                    if v.mapProp then
                        table.insert(
                            options,
                            {
                                num= 1,
                                type = 'client',
                                icon = "fas fa-hammer",
                                label = Config.Locales["interact_with"] .. getLabel(v.item),
                                action = function(entity)
                                    TriggerEvent('building:interact',entity,false)
                                end
                            }
                        )
                    else
                        table.insert(
                            options,
                            {
                                num= 1,
                                type = 'client',
                                icon = "fas fa-hammer",
                                label = Config.Locales["interact_with"] .. getLabel(v.item),
                                action = function(entity)
                                    TriggerEvent('building:interact',entity,false)
                                end,
                                canInteract = function(entity)
                                    if propsalreadyspowned[entity] then
                                        return true
                                    end
                                    return false
                                end
                            }
                        )
                    end
                end

                if not v.disableIteractAdvanced then
                    if v.subtype == "deadStorage" then
                        table.insert(
                            options,
                            {
                                num= 2,
                                type = 'client',
                                icon = "fas fa-gear",
                                label = Config.Locales["delete"] .. getLabel(v.item),
                                action = function(entity)
                                    TriggerEvent('building:interact',entity,true)
                                end,
                                canInteract = function(entity)
                                    if propsalreadyspowned[entity] then
                                        return true
                                    end
                                    return false
                                end
                            }
                        )
                    else
                        table.insert(
                            options,
                            {
                                num= 2,
                                type = 'client',
                                icon = "fas fa-gear",
                                label = Config.Locales["open"] .. getLabel(v.item) .. Config.Locales["settings"],
                                action = function(entity)
                                    TriggerEvent('building:interact',entity,true)
                                end,
                                canInteract = function(entity)
                                    if propsalreadyspowned[entity] then
                                        return true
                                    end
                                    return false
                                end
                            }
                        )
                    end
                end

                table.insert(
                    options,
                    {
                        num= 3,
                        type = 'client',
                        icon = "fa-solid fa-explosion",
                        label = Config.Locales["use_c4"] .. getLabel(v.item),
                        action = function(entity)
                            objectExplode(entity)
                        end,
                        canInteract = function(entity)
                            if propsalreadyspowned[entity] then
                                if Config.disableExplosiveOptionOnOwnedProp then
                                    if (myCrew and myCrew.data[propsalreadyspowned[entity].identifier]) or propsalreadyspowned[entity].identifier == identifier then
                                        return false
                                    end
                                end
                                return true
                            end
                            return false
                        end
                    }
                )

                exports[Config.UseTargetExport]:AddTargetModel(models, {
                    options = options,
                    distance = 4.0
                })
            end
        end 

        if Config.showTutorial then
            CreateThread(function()	
                while true do
                    sleep = 0

                    if prop then                       
                        AddTextEntry('esxHelpNotification2', Config.Locales["tutorial_text"])
                        BeginTextCommandDisplayHelp('esxHelpNotification2')
                        EndTextCommandDisplayHelp(0, false, false, 0)
                    else
                        sleep = 500
                    end

                    Wait(sleep)   
                end
            end)
        end

   

    else

        myobject = nil

        local info = nil

        function getText(myobject)
            local type = getEntityModelInfo(myobject,"type")
            
            infoTextTest = Config.Locales["notarget_"..type]
            
            local subtype = getEntityModelInfo(myobject,"subtype")
            local newInfo = Config.Locales["notarget_"..subtype]
            if newInfo then
                infoTextTest = newInfo
            end

            return infoTextTest
        end

        CreateThread(function()
            while true do
                Wait(200)
            
                local infoText = info
                
                if canInteractConditions() then
                    local myobjectTest = RayCastGamePlayCamera(20.0,5.0)


                    if myobjectTest ~= myobject then            
                        myobject = myobjectTest
                    
                        if myobject then
                            if propsalreadyspowned[myobject] then
                                infoText = getText(myobject) 
                            end
                        end
                    else
                        if myobjectTest == nil then
                            myobject = nil
                            infoText = nil
                        end
                    end
                else
                    myobject = nil
                    infoText = nil
                end

                info = infoText
            end
        end)

        function canInteractConditions()
            if IsNuiFocused() or IsPauseMenuActive() or IsEntityDead(PlayerPedId()) or not IsPedOnFoot(PlayerPedId()) or prop or progressBarActive then
                return false
            else
                return true
            end
        end

        CreateThread(function()	
            while true do
                sleep = 0

                local text = nil
                if (info and myobject) then
                    text = info
                elseif Config.showTutorial and prop then
                    text = Config.Locales["tutorial_text"]
                else
                    sleep = 100
                end

                if text then
                    AddTextEntry('esxHelpNotification2', text)
                    BeginTextCommandDisplayHelp('esxHelpNotification2')
                    EndTextCommandDisplayHelp(0, false, false, 0)
                end

                Wait(sleep)
            end
        end)

        CreateThread(function()	
            while true do
                sleep = 0
                if myobject and propsalreadyspowned[myobject] then
                    local timerObject = myobject

                    if IsControlJustPressed(0,38) then
                        local timer = 0
                        while IsControlPressed(0,38) and timer < 100 do
                            Wait(50)
                            timer = timer + 4

                            if timer > 4 then
                                info = Config.Locales["notarget_pressingText"]..timer.."%"
                            end
                        end

                        local isAdvanced = false

                        if timer >= 100 then
                            isAdvanced = true
                        end

                        if myobject == timerObject then
                            info = getText(timerObject) 
                            objectInteractFunction(timerObject,isAdvanced)    
                        end

                        
                    end
                else
                    sleep = 100
                end
                Wait(sleep)
            end
        end)


    end
end

---------------- effects 
function Draw3DText(x, y, z, scl_factor, text,isRed)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local p = GetGameplayCamCoords()
    local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, x, y, z, 1)
    local scale = (1 / distance) * 2
    local fov = (1 / GetGameplayCamFov()) * 100
    local scale = scale * fov * scl_factor
    if onScreen then
        SetTextScale(0.0, scale)
        SetTextFont(0)
        SetTextProportional(1)
        if isRed then
            SetTextColour(255, 0, 0, 215)
        else
            SetTextColour(255, 255, 255, 215)
        end
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x, _y)
    end
end

RegisterNetEvent('hrs_base_building:explosionEffect')
AddEventHandler('hrs_base_building:explosionEffect', function(coords,weakerItem)
    ClearPedTasks(PlayerPedId())
    
    if Config.explosionItems[weakerItem].delay then
        local waitTime = Config.explosionItems[weakerItem].delay

        CreateThread(function()
            while waitTime > 0 do
                Wait(0)
                Draw3DText(coords.x,coords.y,coords.z + 1.0,0.6,"💣 ["..waitTime.."]",true)
            end
        end)

        while waitTime > 0 do
            Wait(1000)
            waitTime = waitTime - 1
        end
    end
 
    AddExplosion(coords.x,coords.y,coords.z, 2, 0.0, true, false, true, 0.0)
    showNonLoopParticle("veh_xs_vehicle_mods", "exp_xs_mine_emp", 2.0, coords.x, coords.y, coords.z, false)
end)

function drawLightFunc(coords,hash,forward,lightEntity,id)
    --ESX.Game.Utils.DrawText3D(coords,"0")
    DrawSpotLightWithShadow(coords.x,coords.y,coords.z,forward.x,forward.y,forward.z,255,255,190,12.0,1.0,0.0,80.0,10.0,id)
    DrawLightWithRange(coords.x,coords.y,coords.z,255,255,190,0.6,25.0)
    --DrawSpotLightWithShadow(coords.x,coords.y,coords.z,forward.x,forward.y,forward.z,255,255,190,12.0,1.0,0.0,80.0,1.0,1)
end



function showNonLoopParticle(dict, particleName, size, coordx, coordy, coordz, offset)
    RequestNamedPtfxAsset(dict)
    while not HasNamedPtfxAssetLoaded(dict) do
        Citizen.Wait(0)
    end
    local ped = PlayerPedId()
    local x,y,z = coordx, coordy, coordz

    local a = 0
    while a < 1 do
        UseParticleFxAssetNextCall(dict)
        SetParticleFxNonLoopedColour(255,255,255)
        if offset then
            StartNetworkedParticleFxNonLoopedAtCoord(particleName, x+math.random(-2,2), y+math.random(-1,2), z, 0.0, 0.0, 0.0, size, false, false, false)
        else
            -- print(x)
            -- print(y)
            -- print(z)
            StartNetworkedParticleFxNonLoopedAtCoord(particleName, x, y, z, 0.0, 0.0, 0.0, size, false, false, false)
        end
        a = a + 1
        Citizen.Wait(500)
    end
end

RegisterNetEvent('hrs_base_building:triggerfinal')
AddEventHandler('hrs_base_building:triggerfinal', function(hash,Object)
    local args = {}

    if Config.Models[hash].TriggerEvent.args then
        if Config.Models[hash].TriggerEvent.entityAsArg then
            for k,v in ipairs(Config.Models[hash].TriggerEvent.args) do          
                if v == Config.Models[hash].TriggerEvent.entityAsArg then
                    args[k] = Object
                else
                    args[k] = v
                end
            end
        else
            for k,v in ipairs(Config.Models[hash].TriggerEvent.args) do          
                args[k] = v               
            end
        end
    end

    if Config.Models[hash].TriggerEvent.type == "client" then
        TriggerEvent(Config.Models[hash].TriggerEvent.event,table.unpack(args))
    else
        TriggerServerEvent(Config.Models[hash].TriggerEvent.event,table.unpack(args))
    end
end)

------------------------- Blips

function createBlips()
    if Config.disableBuildingBlips then
        for k,v in ipairs(Config.disableBuilding) do
            local x,y,z = table.unpack(v.coords)
            local blip = AddBlipForRadius(x,y,z, v.radius)
            SetBlipHighDetail(blip, true)
            SetBlipColour(blip, Config.disableBuildingBlips.color)
            SetBlipAlpha (blip, Config.disableBuildingBlips.alpha)
            SetBlipAsShortRange(blip, Config.disableBuildingBlips.shortRange)
            local blip2 = AddBlipForCoord(x,y,z) 
            SetBlipSprite(blip2, Config.disableBuildingBlips.sprite)
            SetBlipScale(blip2, Config.disableBuildingBlips.scale)
            SetBlipAsShortRange(blip2, Config.disableBuildingBlips.shortRange)
            SetBlipColour(blip2,Config.disableBuildingBlips.color)
            BeginTextCommandSetBlipName('STRING')
            AddTextComponentSubstringPlayerName(Config.disableBuildingBlips.label)
            EndTextCommandSetBlipName(blip2)
        end
    end
end



-------------------------- CAN SPAWN PROP FUNCTION (if you want to add more conditions to spawning)

-- CreateThread(function()
--     while true do
--         Wait(500)
--         print(#GetGamePool('CObject'))
--     end
-- end)

function getBeds()
    local beds = nil
    for k,v  in pairs(props) do
        if Config.Models[v.hash].type == "beds" then 
            if v.identifier == identifier then 
                if not beds then
                    beds = {}
                end
                beds[v.id..'_'..v.hash] = {
                    coords = v.coords,
                    heading = v.heading,
                    bedKey = v.id..'_'..v.hash
                }
            end
        end
    end
    return beds
end

function getBed()
    for k,v  in pairs(props) do
        if Config.Models[v.hash].type == "beds" then 
            if v.identifier == identifier then 
                return v.coords
            end
        end
    end
    return nil
end

exports('getBeds',getBeds)
exports('getBed',getBed)


function canSpawnPropSecond(hash,coords,enableMessage)

    if Config.onlyOneBed then

        if Config.Models[hash].type == "beds" then 
            if getBed() then
                if enableMessage then
                    ShowNotification(Config.Locales["You can Only have One Bed"])
                end

                return false
            end
        end

    end



    -- if Config.onlyBuildOnClaimZones then
    --     if not Config.claimPropType[Config.Models[hash].type] then
    --         local inClaimZone = false
    --         for k,v in pairs(propsalreadyspowned) do
    --             if v.identifier == identifier and Config.claimPropType[Config.Models[v.hash].type] then
    --                 if GetDistanceXY(coords,v.coords) < (Config.claimPropType[Config.Models[v.hash].type].radius * 0.9) then
    --                     inClaimZone = true
    --                     break
    --                 end
    --             end
    --         end

    --         if not inClaimZone then
    --             if enableMessage then
    --                 ShowNotification("You can only build in a claim zone")
    --             end
    
    --             return false
    --         end
    --     else
    --         for k,v in pairs(propsalreadyspowned) do
    --             if v.identifier == identifier and Config.claimPropType[Config.Models[hash].type] then
    --                 if enableMessage then
    --                     ShowNotification("You can only have one territory")
    --                 end
        
    --                 return false
    --             end
    --         end
    --     end
    -- end

   
    if Config.poolSizeProtection then

        local poolSize = #GetGamePool('CObject')
        
        
        if poolSize > Config.poolSizeProtection then

            if enableMessage then
                ShowNotification(Config.Locales["to_much_props"])
            end

            return false
        end

    end
    
    if Config.disableBuilding then
        for k,v in ipairs(Config.disableBuilding) do
            if GetDistanceXY(coords,v.coords) < v.radius then
                
                if enableMessage then
                    ShowNotification(Config.Locales["no_build_zone"])
                end

                return false
            end
        end
    end

    if Config.maxPropsPerIdentifier then
        local myPropsCount = 0
        for k,v in pairs(props) do
            if v.identifier == identifier then
                myPropsCount = myPropsCount + 1
            end

            if myPropsCount >= Config.maxPropsPerIdentifier then
                if enableMessage then
                    ShowNotification(Config.Locales["build_limit_1"])
                end
                return false
            end
        end
    end


    local radiusInfo = 0
    if Config.claimPropType[Config.Models[hash].type] then
        radiusInfo = Config.claimPropType[Config.Models[hash].type].radius
    end

    if myCrew then
        for k,v in pairs(propsalreadyspowned) do
            if Config.claimPropType[Config.Models[v.hash].type] then
                if not myCrew.data[v.identifier] then
                    if GetDistanceXY(coords,v.coords) < (Config.claimPropType[Config.Models[v.hash].type].radius + radiusInfo) then
                        if enableMessage then
                            ShowNotification("You are in a claimed zone")
                        end

                        return false
                    end
                end
            end
        end
    else
        for k,v in pairs(propsalreadyspowned) do
        
            if Config.claimPropType[Config.Models[v.hash].type] then

                if v.identifier ~= identifier then
                    
                    if GetDistanceXY(coords,v.coords) < (Config.claimPropType[Config.Models[v.hash].type].radius + radiusInfo) then
                        if enableMessage then
                            ShowNotification("You are in a claimed zone")
                        end

                        return false
                    end
                end
            end
        end
    end



    return true
end

---------------------------------- BLACK SCREEN AND LOADING BASES --------------------------------------


function fadeSystem()
    CreateThread(function()
        FreezeEntityPosition(PlayerPedId(),true)
        AddTextEntry("CUSTOMLOADSTR", "Bases Loading...")
        BeginTextCommandBusyspinnerOn("CUSTOMLOADSTR")
        EndTextCommandBusyspinnerOn(4)
        while fade do
            Wait(100)
            if not IsScreenFadedOut() then
                DoScreenFadeOut(0)
            end
        end
        FreezeEntityPosition(PlayerPedId(),false)  
        BusyspinnerOff()
        DoScreenFadeIn(1000)
        TriggerEvent('hrs_base_building:allLoaded')
    end)
end


local outlineBool = true

function canSpawnOutline(ent,bool)
    if bool then
        SetEntityDrawOutline(ent,true)
        SetEntityDrawOutlineColor(0, 128, 0, 50)
    else
        SetEntityDrawOutline(ent,true)
        SetEntityDrawOutlineColor(255, 0, 0, 50)
    end

    outlineBool = bool
end

------------------------------------- TEST EVENTS ---------------------------------------
AddEventHandler('example:event', function(arg1,arg2,arg3,arg4)
    print(arg1,arg2,arg3,arg4)
end)

AddEventHandler('hrs_base_building:Regen', function(testEnt,type,anim,headingchange)
    local testEntcoords = GetEntityCoords(testEnt)
    local heading = GetEntityHeading(testEnt)
    local pedCoords = GetEntityCoords(PlayerPedId())
    local myPed = PlayerPedId()

    local isEmpty = true

    for k,v in ipairs(GetActivePlayers()) do
        if myPed ~= GetPlayerPed(v) then
            if #(testEntcoords - GetEntityCoords(GetPlayerPed(v))) < 1.2 then
                isEmpty = false
                break
            end
        end
    end

    if isEmpty then
        FreezeEntityPosition(myPed,true)
        SetEntityCoords(myPed,testEntcoords.x,testEntcoords.y,testEntcoords.z)

        SetEntityHeading(myPed,heading + headingchange)

        if progressBar(anim) then
            SetEntityHealth(myPed,GetEntityMaxHealth(myPed))
            ShowNotification("Life Regenerated") 
        end

        SetEntityCoords(myPed,pedCoords.x,pedCoords.y,pedCoords.z)
        FreezeEntityPosition(myPed,false)
    else
        ShowNotification("There is someone else sleeping")
    end
end)

-------------HTML
local display = false

function DoorMenu(id,lifepercent,upgrade)
    display = true
	SetNuiFocus(true,true)
	SendNUIMessage(
		{
            display = display,
            type = "Interact",
            isdoor = true,
            PropId = id,
            life = lifepercent,
            upgrade = upgrade
		}
	)
end

function get24base()
    local itemsList = {}
    for k,v in pairs(propsalreadyspowned) do
        if hasPermissionVeh(identifier,v.identifier) then
            local testList = getRepairMaterialsCheck24(v.hash)
            for k2,v2 in pairs(testList) do
                if not itemsList[v2.name] then
                    itemsList[v2.name] = v2.count
                else
                    itemsList[v2.name] = itemsList[v2.name] + v2.count
                end
            end
        end
    end
    local itemsList2 = {}
    for k,v in pairs(itemsList) do
        table.insert(itemsList2,{name = k, count = v})
    end
    return itemsList2
end

function OtherPropMenu(id,data,metadata,list)
    props[id].life = data.life
    props[id].fuel = data.fuel

    if list then
        for k,v in pairs(list) do
            if props[k] then
                props[k].life = v
            end
        end
    end

    --print(json.encode(list))

    local itemsList = {}

    local bars = {}
    if props[id].life then
        table.insert(bars,{
            max = Config.Models[props[id].hash].life,
            val = props[id].life,
            labelLeft = "Health"
        })
    end
    if props[id].fuel then
        if Config.Models[props[id].hash].bulletItem then
            table.insert(bars,{
                max = Config.Models[props[id].hash].maxAmmo,
                val = props[id].fuel,
                labelLeft = "Ammo",
                color = "rgba(220, 131, 15, 0.447)"
            })

            table.insert(itemsList, {name = Config.Models[props[id].hash].bulletItem, count = props[id].fuel, limit = Config.Models[props[id].hash].maxAmmo})
        else
            table.insert(bars,{
                max = Config.Models[props[id].hash].fuelTank,
                val = props[id].fuel,
                labelLeft = "Fuel",
                color = "rgba(220, 131, 15, 0.447)"
            })

            table.insert(itemsList, {name = Config.fuelItem, count = props[id].fuel, limit = Config.Models[props[id].hash].fuelTank})
        end
    end

    if Config.Models[props[id].hash]?.itemStock then
        for k,v in pairs(Config.Models[props[id].hash]?.itemStock) do
            table.insert(itemsList,{
                name = k,
                count = metadata?.items?[k] or 0,
                limit = v
            })
        end
    end

    local actions = {}

    table.insert(actions,{
        img = "repair_icon",
        action = "repairprop",
        description = {
            labelLeft = "Repair items needed",
            items = getRepairMaterials(id)
        }
    })

    table.insert(actions,{
        img = "delete_icon",
        action = "deleteprop",
        description = {
            labelLeft = "Return items",
            items = getReturnMaterials(id)
        }
    })
    
    if Config.Models[props[id].hash].upgrade then
        table.insert(actions,{
            img = "upgrade_icon",
            action = "upgradeprop",
            description = {
                labelLeft = "Upgrade items",
                items = getUpgradeMaterials(Config.Models[props[id].hash].upgrade)
            }
        })
    end

    if Config.Models[props[id].hash].type == "upkeep" then
        table.insert(actions,{
            img = "basefix_icon",
            action = "fixbase",
            description = {
                labelLeft = "Repair Base items",
                items = getRepairMaterialsList(list)
            }
        })
    end

    if Config.Models[props[id].hash]?.itemStock then
        table.insert(actions,{
            img = "boxes",
            action = "stock",
            description = {
                labelLeft = "Manage Stock",
                items = itemsList
            }
        })
    end

    if Config.Models[props[id].hash].bulletItem then
        table.insert(actions,{
            img = 'ammo_icon',
            action = "addammo",
            description = {
                labelLeft = "Manage Ammo",
                items = {
                    {name = Config.Models[props[id].hash].bulletItem, count = props[id].fuel}
                },
            }
        })
    else
        if props[id].fuel then
            table.insert(actions,{
                img = "fuel",
                action = "addfuel",
                description = {
                    labelLeft = "Manage Fuel",
                    items = {
                        {name = Config.fuelItem, count = props[id].fuel}
                    },
                }
            })
        end
    end

    if props[id].dooropen ~= nil or Config.Models[props[id].hash].type == "storages" then
        table.insert(actions,{
            img = "code_icon",
            action = "setcodeprop",
            description = {
                labelLeft = "Set Code"
            }
        })
    end

	display = true

    TriggerScreenblurFadeIn(500)

	SetNuiFocus(true,true)
	SendNUIMessage(
		{
            display = display,
            type = "Interact",
            PropId = id,
            bars = bars,
            actions = actions,
            itemsList = itemsList
		}
	)
end

RegisterNUICallback("itemManagement", function(data)
   -- print(json.encode(data))
    local count = tonumber(data.count)
    if not count or count < 1 then count = 1 end

    if data.action == "add" then
        TriggerServerEvent('hrs_base_building:additemprop',data.id,data.item, count, data.labelLeft)
        return
    end

    if data.action == "remove" then
        TriggerServerEvent('hrs_base_building:removeitemprop',data.id,data.item, count, data.labelLeft)
        return
    end
end)


RegisterNUICallback("action", function(data)
   

    if data.action == "deleteprop" then
        CloseHtml()
        if progressBar('prop_remove') then
            TriggerServerEvent('hrs_base_building:remove',data.id)	
        end
        return
    end



    if data.action == "addfuel" then
        SendNUIMessage(
            {
                display = display,
                type = "Management",
                labelLeft = data.labelLeft,
                PropId = data.id,
                items = data.extra.itemsList
            }
        )
        return
    end

    if data.action == "stock" then
        local message = {
            display = display,
            type = "Management",
            labelLeft = data.labelLeft,
            PropId = data.id,
            items = data.extra.itemsList
        }

        if Config.Models[props[data.id].hash].type == "upkeep" then
            message.description = {
                labelLeft = "Average 24h Upkeep",
                items = get24base()
            }
        end

        SendNUIMessage(message)
        return
    end

    if data.action == "addammo" then
        SendNUIMessage(
            {
                display = display,
                type = "Management",
                labelLeft = data.labelLeft,
                PropId = data.id,
                items = data.extra.itemsList
            }
        )
        return
    end

    if data.action == "upgradeprop" then
        CloseHtml()
        if progressBar("prop_upgrade") then
            TriggerServerEvent('hrs_base_building:upgrade',data.id)	
        end
        return
    end

    if data.action == "repairprop" then
        CloseHtml()
        if progressBar("prop_repair") then
            local toRepair = data.id
            --local toRepairList = GetPropsRepair(data.id)
            TriggerServerEvent('hrs_base_building:proplifereset',toRepair,toRepairList)
        end
        return
    end

    if data.action == "fixbase" then
        CloseHtml()
        if progressBar("prop_repair") then
            --local toRepair = data.id
            --local toRepairList = getOwnedProps()
            TriggerServerEvent('hrs_base_building:propliferesetnew',toRepair,toRepairList)
        end
        return
    end

    if data.action == "setcodeprop" then
        SendNUIMessage(
            {
                display = display,
                type = "Code",
                action = "SetCode",
                PropId = data.id
            }
        )
        return
    end

end)

RegisterNUICallback("setcodeprop", function(data)
    CloseHtml()
    Wait(150)
	display = true
	SetNuiFocus(true,true)
	SendNUIMessage(
		{
            display = display,
            type = "Code",
            action = "SetCode",
            PropId = data.id
		}
	)
end)

RegisterNetEvent('hrs_base_building:refreshItems')
AddEventHandler('hrs_base_building:refreshItems', function(data,meta,labelLeft) 
    local itemsList = {}

    local propHashUse = props[data.id].hash
    if props[data.id].dead then
        propHashUse = props[data.id].dead
    end

    if data.fuel then
        if Config.Models[propHashUse].bulletItem then
            table.insert(itemsList, {name = Config.Models[propHashUse].bulletItem, count = data.fuel, limit = Config.Models[propHashUse].maxAmmo})
        else
            table.insert(itemsList, {name = Config.fuelItem, count = data.fuel, limit = Config.Models[propHashUse].fuelTank})
        end
    end

    if Config.Models[propHashUse]?.itemStock or data.dead then
        for k,v in pairs(Config.Models[propHashUse]?.itemStock) do
            table.insert(itemsList,{
                name = k,
                count = meta?.items?[k] or 0,
                limit = v
            })
        end
    end

    if not display then
        SetNuiFocus(true,true)
        display = true
    end
    
    local message = {
        display = true,
        type = "Management",
        labelLeft = labelLeft,
        PropId = data.id,
        items = itemsList
    }

    if Config.Models[propHashUse].type == "upkeep" and not data.dead then
        message.description = {
            labelLeft = "Average 24h Upkeep",
            items = get24base()
        }
    end

    SendNUIMessage(message)

end)


RegisterNetEvent('hrs_base_building:insertcode')
AddEventHandler('hrs_base_building:insertcode', function(propid,adv)   
    if props[propid] then
        display = true
        SetNuiFocus(true,true)
        SendNUIMessage(
            {
                display = display,
                type = "Code",
                action = "OpenCode",
                PropId = propid,
                adv = adv
            }
        )
    end
end)

RegisterNUICallback("number", function(data)
    CodeNumber = tostring(data.number)

    if data.situation == "SetCode" then
        TriggerServerEvent('hrs_base_building:setcode',data.id,CodeNumber)	
    elseif data.situation == "OpenCode" then
        if data.adv then
            local list = nil

            if Config.Models[props[data.id].hash].type == 'upkeep' then
                list = getOwnedProps()
            end

            TriggerServerEvent('hrs_base_building:advancedInteractServer',data.id,CodeNumber,list)
        else
            local propHash = props[data.id].hash
            if Config.Models[propHash].type == "storages" then
                TriggerServerEvent('hrs_base_building:canopenstorage',data.id,CodeNumber)
            else
                TriggerServerEvent('hrs_base_building:doorstatus',data.id,CodeNumber)
            end
        end
    end

    CloseHtml()
end)

RegisterNUICallback("exit", function(data)
    CloseHtml()
end)

CreateThread(function()
    while true do 
        Wait(100)
        if display and IsEntityDead(PlayerPedId()) then
            CloseHtml()
        end
    end
end)

function CloseHtml()
    TriggerScreenblurFadeOut(500)
	display = false
	SetNuiFocus(false,false)
	SendNUIMessage(
		{
            display = display
		}
	)
end



-- CreateThread(function()
--     while display do
--         Wait(0)
--         DisableControlAction(0, 1, display) -- LookLeftRight
--         DisableControlAction(0, 2, display) -- LookUpDown
--         DisableControlAction(0, 142, display) -- MeleeAttackAlternate
--         DisableControlAction(0, 18, display) -- Enter
--         DisableControlAction(0, 322, display) -- ESC
--         DisableControlAction(0, 106, display) -- VehicleMouseControlOverride
--     end
-- end)


--------------------- TEST STUFF ------------------
-- AddEventHandler('ox_inventory:craftingEvent', function(id)
--     exports.ox_inventory:openInventory('crafting', { id = id, index = id})
-- end)


---- test code -------------------------------------------------------------------------------------------------------------------------


-- CreateThread(function()
--     while true do
--         Wait(0)
        --SetWeaponExplosionRadiusMultiplier(`weapon_stickybomb`,1.0)
        --SetWeaponExplosionRadiusMultiplier(`weapon_rpg`,1.0)
        --SetWeaponDamageModifier(`weapon_stickybomb`,0.01)
        --SetWeaponDamageModifier(`weapon_rpg`,0.01)
--     end
-- end)


--------------------------- DEFENSE UPGRADES --------------
function effectHandlerEntity(asset,name,entity,time,r,g,b,a,scale)
    CreateThread(function()
        if not HasNamedPtfxAssetLoaded(asset) then

            RequestNamedPtfxAsset(asset)
            while not HasNamedPtfxAssetLoaded(asset) do
                Citizen.Wait(1)
            end
        end
    
        SetPtfxAssetNextCall(asset)
    
        local fx = StartParticleFxLoopedOnEntity(name,entity, 0.0,0.0, 0.0, 0.0, 0.0, 0.0,scale, false, false, false, false)
        SetParticleFxLoopedColour(fx, r, g, b, 0)
        SetParticleFxLoopedAlpha(fx, a)
        Wait(time)
        StopParticleFxLooped(fx, 0)
    end)
end

function damageOnCollision(model,entity)
    local damageOnCollisionSpecs = Config.Models[model].damageOnCollision
    if damageOnCollisionSpecs.damage then
        ApplyDamageToPed(entity,damageOnCollisionSpecs.damage)
    end
    if damageOnCollisionSpecs.ptfx then
        effectHandlerEntity(damageOnCollisionSpecs.ptfx.asset,damageOnCollisionSpecs.ptfx.name,entity,1000,0.0,10.0,0.0,1.0,damageOnCollisionSpecs.ptfx.scale)
    end
end

function isEntityDead(entity)
    return IsEntityDead(entity)
end

