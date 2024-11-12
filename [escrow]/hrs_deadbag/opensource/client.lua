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




RegisterNetEvent('hrs_deadbag:openBag')
AddEventHandler('hrs_deadbag:openBag', function(idInfo)
    if Config.inventory == 'ox_inventory' then 
        exports.ox_inventory:openInventory('stash', idInfo)
    else
        TriggerServerEvent('hrs_deadbag:openLoot',idInfo)
    end
end)

local carryBag = nil

if Config.UsePressE then
    local BagModel = GetHashKey(Config.BagModel)

    local bagLoot = nil

    CreateThread(function()
        while true do
            Wait(500)
            local props = GetGamePool('CObject')
            local dist = 2.0
            local myCoords = GetEntityCoords(PlayerPedId())

            local currentBagLoot = nil
            for k,v in pairs(props) do
                local model = GetEntityModel(v)

                if model == BagModel and not IsEntityAttached(v) then
                    
                    local distance = #(myCoords - GetEntityCoords(v))

                    if distance < dist then
                        dist = distance
                        currentBagLoot = v
                    end
                end
            end 

            bagLoot = currentBagLoot

           -- print(bagLoot)
        end
    end)

    function Draw3DText(x, y, z, scl_factor, text)
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
            SetTextColour(255, 255, 255, 215)
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

    CreateThread(function()
        while true do
            Wait(0)
            if bagLoot and not IsNuiFocused() then
                local coords = GetEntityCoords(bagLoot)
                Draw3DText(coords.x,coords.y,coords.z + 0.5,0.5,"[~r~E~w~] to Search \n [~r~H~w~] to Pickup")
                if IsControlJustPressed(0,74) then
                    if IsEntityAttached(bagLoot) then
                        DetachEntity(bagLoot, true, true)
                    else
                        local ped = PlayerPedId()
                        CreateThread(function()
                            local attempt = 0
                            while DoesEntityExist(bagLoot) and not NetworkHasControlOfEntity(bagLoot) and attempt < 100 and not carryBag do
                                Wait(100)
                                NetworkRequestControlOfEntity(bagLoot)
                                attempt = attempt + 1
                            end
    
                            if not carryBag then
    
                                AttachEntityToEntity(bagLoot, ped, GetPedBoneIndex(ped, Config.Bone), Config.BagPos.x, Config.BagPos.y, Config.BagPos.z, Config.BagRot.x, Config.BagRot.y, Config.BagRot.z, true, true, false, true, 1, true)
                                carryBag = bagLoot
                            end
                        end)
                    end  
                    Wait(500)
                elseif IsControlJustPressed(0,51) then
                    if NetworkGetEntityIsNetworked(bagLoot) then
                        local id = NetworkGetNetworkIdFromEntity(bagLoot)

                        if progressBar("bag_check") then
                            TriggerServerEvent('hrs_deadbag:openId',id)
                        end
                    end
                    Wait(500)
                end
                
            end
        end
    end)


else
    CreateThread(function()
        Wait(1000)
       
        local options = {}
    
        table.insert(
            options,
            {
                type = 'client',
                icon = "fa-solid fa-magnifying-glass",
                label = "Search",
                action = function(entity)
                    if NetworkGetEntityIsNetworked(entity) then
                        local id = NetworkGetNetworkIdFromEntity(entity)
                        if progressBar("bag_check") then
                            TriggerServerEvent('hrs_deadbag:openId',id)
                        end
                    end
                end
            }
        )
    
        table.insert(
            options,
            {
                type = 'client',
                icon = "fa-solid fa-magnifying-glass",
                label = "Pick up",
                action = function(entity)
    
                    if IsEntityAttached(entity) then
                        DetachEntity(entity, true, true)
                    else
                        local ped = PlayerPedId()
                        CreateThread(function()
                            local attempt = 0
                            while DoesEntityExist(entity) and not NetworkHasControlOfEntity(entity) and attempt < 100 and not carryBag do
                                Wait(100)
                                NetworkRequestControlOfEntity(entity)
                                attempt = attempt + 1
                            end
    
                            if not carryBag then
    
                                AttachEntityToEntity(entity, ped, GetPedBoneIndex(ped, Config.Bone), Config.BagPos.x, Config.BagPos.y, Config.BagPos.z, Config.BagRot.x, Config.BagRot.y, Config.BagRot.z, true, true, false, true, 1, true)
                                carryBag = entity
                            end
                        end)
                    end              
                end
            }
        )
    

        -- table.insert(
        --     options,
        --     {
        --         type = 'client',
        --         icon = "fa-solid fa-magnifying-glass",
        --         label = "Delete",
        --         action = function(entity)
        --             DeleteEntity(entity)
        --         end
        --     }
        -- )


        exports[Config.UseTargetExport]:AddTargetModel(Config.BagModel, {
            options = options,
            distance = 4.0
        })
      
    end)
end



CreateThread(function()
	while true do
		local sleep = 500
		if carryBag then
            sleep = 0
            DisablePlayerFiring(PlayerId(), true)
            DisableControlAction(0,25,true) -- disable aim
            DisableControlAction(0, 44,  true) -- INPUT_COVER
            DisableControlAction(0,37,true) -- INPUT_SELECT_WEAPON
            SetCurrentPedWeapon(GetPlayerPed(-1), GetHashKey("WEAPON_UNARMED"), true)
           
		end
        Wait(sleep)
	end
end)

CreateThread(function()
	while true do
		Wait(500)
		if carryBag then
            if not DoesEntityExist(carryBag) or not IsEntityAttached(carryBag) then
                carryBag = nil
            end
            if carryBag and IsPedDeadOrDying(PlayerPedId(),true) then
                DetachEntity(carryBag, true, true)
                carryBag = nil
            end
		end
	end
end)
           
CreateThread(function()
    local BagModel2 = GetHashKey(Config.BagModel)

    while true do
        Wait(500)
        local props = GetGamePool('CObject')
        local players = GetActivePlayers()

        local list = {}

        for k,v in ipairs(props) do
            if GetEntityModel(v) == BagModel2 then
                if IsEntityAttachedToAnyPed(v) then
                    list[v] = true
                else
                    ActivatePhysics(v)
                end
            end
        end

        for k,v in ipairs(players) do
            local ped = GetPlayerPed(v)
            if IsPedFatallyInjured(ped) then
                for k2,v2 in pairs(list) do
                    if IsEntityAttachedToEntity(k2,ped) then
                        DetachEntity(k2, true, true)
                        ActivatePhysics(k2)
                    end
                end
            end       
        end      
    end
end)

function dropBagFunc()
    if carryBag then
        DetachEntity(carryBag, true, true)
        carryBag = nil
    end
end

RegisterCommand('dropbag', function()
    if carryBag then
        DetachEntity(carryBag, true, true)
        carryBag = nil
    end
end, false)

RegisterKeyMapping('dropbag', 'Drop bag', 'keyboard', 'x')




local isDead = false
CreateThread(function()
    while true do
        Wait(100)
        local ped = PlayerPedId()
        if IsPedFatallyInjured(ped) then




            if not isDead then
                isDead = true

                
                local data = {coords = GetEntityCoords(ped)}

                --if #(data.coords - vector3(2412.619140625, 4978.0043945313, 46.17004776001)) < 350.0 then

                --if not exports['hrs_zombies_BETA']:isInSafeZoneCoords(data.coords) then
                
                    TriggerServerEvent('hrs_deadbag:died', data)
                --end

                --end
            end
        else
            isDead = false
        end
    end
end)


-- function Draw3DText(x, y, z, text, newScale)
--     local onScreen, _x, _y = World3dToScreen2d(x, y, z)
--     if onScreen then
--         --local dist = GetDistanceBetweenCoords(GetGameplayCamCoords(), x, y, z, 1)
-- 		local dist = #(GetGameplayCamCoords() - vector3(x, y, z))

--         local scale = newScale * (1 / dist) * (1 / GetGameplayCamFov()) * 100
--         SetTextScale(scale, scale)
--         SetTextFont(4)
--         SetTextProportional(1)
--         SetTextColour(255, 255, 255, 255)
--         SetTextDropShadow(0, 0, 0, 0, 255)
--         SetTextDropShadow()
--         SetTextEdge(4, 0, 0, 0, 255)
--         SetTextOutline()
--         SetTextEntry("STRING")
--         SetTextCentre(1)
--         AddTextComponentString(text)
--         DrawText(_x, _y)
--     end
-- end

-- CreateThread(function()
--     while true do
--         Wait(0)
--        -- local peds = GetGamePool('CPed')
-- 	  	local peds = GetGamePool('CObject')
--         local pedCooords = GetEntityCoords(PlayerPedId())
--         for k,v in ipairs(peds) do
--             local coords =  GetEntityCoords(v) 
-- 			Draw3DText(coords.x,coords.y,coords.z,tostring(IsEntityAttachedToAnyPed(v)).." "..tostring(IsEntityAttachedToEntity(v,PlayerPedId())),1.0)
--         end
--     end
-- end)






