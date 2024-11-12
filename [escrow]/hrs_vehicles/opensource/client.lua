progressBarActive = false
currentPedVehicle = 0
local canDriveVehicle = false
local persistentVeh = false

identifier = nil

RegisterNetEvent('hrs_vehicles:restartedScript')
AddEventHandler('hrs_vehicles:restartedScript', function()
    GetSpawnVehicles()
end)

CreateThread(function()
    while true do
        Wait(100)
        local myPed = PlayerPedId()
        local vehiclePedIsIn = GetVehiclePedIsIn(myPed,false)
        if vehiclePedIsIn ~= 0 and GetPedInVehicleSeat(vehiclePedIsIn,-1) == myPed then
            if currentPedVehicle ~= vehiclePedIsIn then
                if Entity(vehiclePedIsIn).state.persistent then
                    if not Entity(vehiclePedIsIn).state.owner then
                        canDriveVehicle = false
                        persistentVeh = true
                        
                        ShowNotification(Config.Locales["broken"])
                    else
                        if identifier == Entity(vehiclePedIsIn).state.owner then
                            canDriveVehicle = true
                            persistentVeh = true
                        else
                            if Config.usingBaseBuildingCrew then
                                if exports["hrs_base_building"]:hasPermissionVeh(identifier,Entity(vehiclePedIsIn).state.owner) then
                                    canDriveVehicle = true
                                    persistentVeh = true
                                else
                                    ShowNotification(Config.Locales["no_permission"])
                                    canDriveVehicle = false
                                    persistentVeh = true
                                end
                            else
                                ShowNotification(Config.Locales["no_permission"])
                                canDriveVehicle = false
                                persistentVeh = true
                            end
                        end
                    end

                    if canDriveVehicle == false then
                        SetVehicleUndriveable(vehiclePedIsIn,true)
                    end
                   -- canDriveVehicle = false
                    --persistentVeh = true
                    --TriggerServerEvent('hrs_vehicles:canDriveVehicle',GetVehicleNumberPlateText(vehiclePedIsIn))
                else
                    persistentVeh = false
                    canDriveVehicle = true
                end
            end
            currentPedVehicle = vehiclePedIsIn
        else
            if currentPedVehicle ~= vehiclePedIsIn then

            end
            currentPedVehicle = 0
        end
    end
end)



-- RegisterNetEvent('hrs_vehicles:canDrive')
-- AddEventHandler('hrs_vehicles:canDrive', function(plate)
--     if currentPedVehicle ~= 0 then
--         if GetVehicleNumberPlateText(currentPedVehicle) == plate then
--             canDriveVehicle = true
--             SetVehicleUndriveable(currentPedVehicle,false)
--         end
--     end
-- end)

RegisterNetEvent('hrs_vehicles:refreshKeys')
AddEventHandler('hrs_vehicles:refreshKeys', function()
    if currentPedVehicle ~= 0 then
        currentPedVehicle = 0
    end
end)



CreateThread(function()
    Wait(5000)
    local options = {}

    table.insert(
        options,
        {
            type = 'client',
            icon = "fa-solid fa-magnifying-glass",
            label = "Repair Wheel",
            action = function(vehicle)
                local tyre = getTire(vehicle)
                if tyre then
                    if IsVehicleTyreBurst(vehicle, tyre, false) then
                        local vehType = getVehicleType(vehicle)
                        if Config.vehicleTypes[vehType] and Config.vehicleTypes[vehType].wheelItem then
                            if ProgressBar("wheel_repair") then
                                TriggerServerEvent('hrs_vehicles:replaceWheel',NetworkGetNetworkIdFromEntity(vehicle),tyre,Config.vehicleTypes[vehType].wheelItem)
                            end
                        else
                            print("THERE IS NO TYRES SETUP BY THE OWNER OF THE SERVER FOR THIS VEHICLE")
                        end
                    else
                        ShowNotification(Config.Locales["wheel_ok"])
                    end
                else
                    ShowNotification(Config.Locales["no_close_wheels"])
                end
            end,
            canInteract = function(vehicle, distance, data)
                local tyre = getTire(vehicle)
                if tyre then
                    if IsVehicleTyreBurst(vehicle, tyre, false) then
                        return true
                    end
                end
                return false
            end
        }
    )

    exports[Config.UseTargetExport]:AddTargetBone({'wheel_lf', 'wheel_rf', 'wheel_lm1', 'wheel_rm1', 'wheel_lm2', 'wheel_rm2', 'wheel_lm3', 'wheel_rm3', 'wheel_lr', 'wheel_rr'}, {
        options = options,
        distance = 6.0
    })
end)


if Config.repairEngineTarget then
    CreateThread(function()
        Wait(5000)
        local options = {}

        table.insert(
            options,
            {
                type = 'client',
                icon = "fa-solid fa-magnifying-glass",
                label = "Repair Vehicle",
                action = function(vehicle)
                    SetVehicleDoorOpen(vehicle, 4,0,0)
                    if ProgressBar("engie_repair") then
                        TriggerServerEvent('hrs_vehicles:fixEngine',NetworkGetNetworkIdFromEntity(vehicle))    
                    end
                    SetVehicleDoorShut(vehicle, 4,0,0)
                end,
                canInteract = function(entity, distance, data) -- This will check if you can interact with it, this won't show up if it returns false, this is OPTIONAL
                    if string.match(GetVehicleNumberPlateText(entity),'HRS') and Entity(entity).state.persistent then
                        return false
                    else
                        return true
                    end
                end
            }
        )

        table.insert(
            options,
            {
                type = 'client',
                icon = "fa-solid fa-magnifying-glass",
                label = Config.Locales['repair'],
                action = function(entity)
                    openRepairMenu(entity)
                end,
                canInteract = function(entity, distance, data) -- This will check if you can interact with it, this won't show up if it returns false, this is OPTIONAL
                    if string.match(GetVehicleNumberPlateText(entity),'HRS') and Entity(entity).state.persistent then
                        return true
                    else
                        return false
                    end
                end
            }
        )

        exports[Config.UseTargetExport]:AddTargetBone({'engine'}, {
            options = options,
            distance = 6.0
        })
    end)
end

if Config.useLockSystem then
    CreateThread(function()
        Wait(5000)
        local options = {}

        table.insert(
            options,
            {
                type = 'client',
                icon = "fa-solid fa-magnifying-glass",
                label = "Lock vehicle",
                action = function(vehicle)
                    PlayVehicleDoorCloseSound(vehicle, 1)
                    TriggerServerEvent('hrs_vehicles:canLockVehicle',Entity(vehicle).state.plate)
                end,
                canInteract = function(vehicle, distance, data) -- This will check if you can interact with it, this won't show up if it returns false, this is OPTIONAL
                    local bool = false
                    if Entity(vehicle).state.persistent then
                        if not Entity(vehicle).state.locked then
                            if Entity(vehicle).state.owner then
                                if identifier == Entity(vehicle).state.owner then
                                    bool = true
                                else
                                    if Config.usingBaseBuildingCrew then
                                        if exports["hrs_base_building"]:hasPermissionVeh(identifier,Entity(vehicle).state.owner) then
                                            bool = true
                                        end
                                    end
                                end
                            end
                        end
                    end
                    return bool
                end
            }
        )

        table.insert(
            options,
            {
                type = 'client',
                icon = "fa-solid fa-magnifying-glass",
                label = "Unlock vehicle",
                action = function(vehicle)
                    PlayVehicleDoorOpenSound(vehicle, 0)
                    TriggerServerEvent('hrs_vehicles:canLockVehicle',Entity(vehicle).state.plate)
                end,
                canInteract = function(vehicle, distance, data) -- This will check if you can interact with it, this won't show up if it returns false, this is OPTIONAL
                    local bool = false
                    if Entity(vehicle).state.persistent then
                        if Entity(vehicle).state.locked then
                            if Entity(vehicle).state.owner then
                                if identifier == Entity(vehicle).state.owner then
                                    bool = true
                                else
                                    if Config.usingBaseBuildingCrew then
                                        if exports["hrs_base_building"]:hasPermissionVeh(identifier,Entity(vehicle).state.owner) then
                                            bool = true
                                        end
                                    end
                                end
                            end
                        end
                    end
                    return bool
                end
            }
        )


        if Config.unlockMethod == 'target' then

            table.insert(
                options,
                {
                    type = 'client',
                    icon = "fa-solid fa-magnifying-glass",
                    label = "Lockpick vehicle",
                    action = function(vehicle)
                        if ProgressBar("veh_unlock") then
                            PlayVehicleDoorOpenSound(vehicle, 0)
                            TriggerServerEvent('hrs_vehicles:canLockVehicle2',Entity(vehicle).state.plate) 
                        end
                    end,
                    canInteract = function(vehicle, distance, data) -- This will check if you can interact with it, this won't show up if it returns false, this is OPTIONAL
                        bool = false
                        if Entity(vehicle).state.persistent then
                            if Entity(vehicle).state.locked then
                                if identifier ~= Entity(vehicle).state.owner then
                                    if Config.usingBaseBuildingCrew then
                                        if not exports["hrs_base_building"]:hasPermissionVeh(identifier,Entity(vehicle).state.owner) then
                                            bool = true
                                        end
                                    else
                                        bool = true
                                    end
                                end 
                            end
                        end

                        return bool
                    end
                }
            )

        elseif Config.unlockMethod == 'useitem' then


            RegisterNetEvent('hrs_vehicles:useLockpick')
            AddEventHandler('hrs_vehicles:useLockpick', function()
                local vehicle = getClosestVeh()
                
                bool = false
                if Entity(vehicle).state.persistent then
                    if Entity(vehicle).state.locked then
                        if identifier ~= Entity(vehicle).state.owner then
                            if Config.usingBaseBuildingCrew then
                                if not exports["hrs_base_building"]:hasPermissionVeh(identifier,Entity(vehicle).state.owner) then
                                    bool = true
                                end
                            else
                                bool = true
                            end
                        end 
                    end
                end

                if bool then
                    if ProgressBar("veh_unlock") then
                        PlayVehicleDoorOpenSound(vehicle, 0)
                        TriggerServerEvent('hrs_vehicles:canLockVehicle2',Entity(vehicle).state.plate) 
                    end
                else
                    ShowNotification(Config.Locales["no_close_locked_veh"])
                end
            end)
            

        end

        exports[Config.UseTargetExport]:AddTargetBone({'door_dside_f', 'door_dside_r', 'door_pside_f', 'door_pside_r'}, {
            options = options,
            distance = 6.0
        })
    end)
end


function GetWheelsSituation(vehicle)
    local tyreBurst = {}
    local numWheels = tostring(GetVehicleNumberOfWheels(vehicle))
    local TyresIndex = { 
        ['2'] = {0, 4}, 
        ['3'] = {0, 1, 4, 5},
        ['4'] = {0, 1, 4, 5}, 
        ['6'] = {0, 1, 2, 3, 4, 5} 
    }

    if TyresIndex[numWheels] then
        for tyre, idx in pairs(TyresIndex[numWheels]) do
            if IsVehicleTyreBurst(vehicle, idx, false) then
                tyreBurst[tostring(idx)] = true
            else
                tyreBurst[tostring(idx)] = false
            end
        end
    end

    return {tyreBurst = tyreBurst}
end


RegisterNetEvent('hrs_vehicles:replaceWheel')
AddEventHandler('hrs_vehicles:replaceWheel', function(vehid, tyre)
    local vehicle = NetworkGetEntityFromNetworkId(vehid)
    if vehicle ~= 0 then
        if NetworkGetEntityOwner(vehicle) == 128 then    
            SetVehicleTyreFixed(vehicle,tyre)
            local currentSit = GetWheelsSituation(vehicle)
            for k,v in pairs(currentSit.tyreBurst) do
                if v == true then
                    SetVehicleTyreFixed(vehicle,tonumber(k))
                    SetVehicleTyreBurst(vehicle, tonumber(k), true, 1000.0)
                end
            end
            ActivatePhysics(vehicle)

            TriggerServerEvent('hrs_vehicles:syncWheelsNewServer',vehid,currentSit.tyreBurst)
        end
    end
end)

RegisterNetEvent('hrs_vehicles:fixEngine')
AddEventHandler('hrs_vehicles:fixEngine', function(vehid, tyre)
    local vehicle = NetworkGetEntityFromNetworkId(vehid)

    if vehicle ~= 0 then
        StopEntityFire(vehicle)
        local currentSit = GetWheelsSituation(vehicle)

        SetVehicleFixed(vehicle)
        SetVehicleDeformationFixed(vehicle)
        SetVehicleUndriveable(vehicle, false)
        SetVehicleEngineOn(vehicle, true, true)
        SetPlaneEngineHealth(vehicle,1000.0)
        SetVehicleEngineHealth(vehicle,1000.0)
        SetHeliTailRotorHealth(vehicle,1000.0)
        SetVehicleFixed(vehicle)
        SetVehiclePetrolTankHealth(vehicle, 1000.0)


        if NetworkGetEntityOwner(vehicle) == 128 then
            for k,v in pairs(currentSit.tyreBurst) do
                if v == true then
                    SetVehicleTyreFixed(vehicle,tonumber(k))
                    SetVehicleTyreBurst(vehicle, tonumber(k), true, 1000.0)
                end
            end
            TriggerServerEvent('hrs_vehicles:syncWheelsNewServer',vehid,currentSit.tyreBurst)
        end
    end
end)

RegisterNetEvent('hrs_vehicles:syncWheelsNew')
AddEventHandler('hrs_vehicles:syncWheelsNew', function(vehid, list)
   -- print(json.encode(list))
    local vehicle = NetworkGetEntityFromNetworkId(vehid)
   -- print(vehicle)
    if vehicle ~= 0 then
        for k,v in pairs(list) do
            if v == true then
                SetVehicleTyreFixed(vehicle,tonumber(k))
                SetVehicleTyreBurst(vehicle, tonumber(k), true, 1000.0)
            else
                SetVehicleTyreFixed(vehicle,tonumber(k))
            end
        end
        ActivatePhysics(vehicle)
    end
   -- print("Sync Wheels")
end)

if not Config.FuelScript == "hrs_fuel" then
    CreateThread(function()
        while true do
            Wait(500)

            if currentPedVehicle ~= 0 then
                if canDriveVehicle and persistentVeh then
                    
                    TriggerServerEvent('hrs_vehicles:updateFuel', GetVehicleNumberPlateText(currentPedVehicle), Round(GetVehicleFuelLevel(currentPedVehicle), 1))
                    Wait(4500)
                end
            end

        end
    end)
end

CreateThread(function()
    while true do
        Wait(100)
        if currentPedVehicle ~= 0 and persistentVeh then
            if canDriveVehicle and GetVehicleFuelLevel(currentPedVehicle) > 0.0 then
                SetVehicleUndriveable(currentPedVehicle,false)
                Wait(400)
            else
                SetVehicleUndriveable(currentPedVehicle,true)
                Wait(400)
            end
        end
    end
end)

CreateThread(function()
    while true do
        local wait = 100
        if currentPedVehicle ~= 0 and persistentVeh then
            if canDriveVehicle and GetVehicleFuelLevel(currentPedVehicle) > 0.0 then
            else
                wait = 0
                DisableControlAction(2,87,true)
                DisableControlAction(2,88,true)
            end
        end
        Wait(wait)
    end
end)

local vehicles = {}
local spawnLoad = {}
CreateThread(function()
    while true do
        Wait(500)
        for k,v in pairs(vehicles) do
            if not DoesEntityExist(k) then
                vehicles[k] = nil
            end
        end
    end
end)



function hasDoors(vehicle)
    local valid = GetIsDoorValid(vehicle,1)
    return valid
end


CreateThread(function()
    while true do
        Wait(500)
        local vehicleslist = GetGamePool('CVehicle')
        local myPedCoords = GetEntityCoords(PlayerPedId())

        for k,v in ipairs(vehicleslist) do


            local vehPlate = GetVehicleNumberPlateText(v)

            local isPersistent = Entity(v).state.persistent

            local isBroken = string.match(vehPlate,'HRS')

            if not vehicles[v] and isBroken and isPersistent then
                if spawnLoad[v] then
                    spawnLoad[v] = nil
            
                    local id = 0
                    if NetworkGetEntityIsNetworked(v) then id = NetworkGetNetworkIdFromEntity(v) end

                    vehicles[v] = id
    
                    local options = {}
    
                    SetEntityRenderScorched(v,true)
                else
                    spawnLoad[v] = true
                end
            end

            if isPersistent then
                if IsEntityPositionFrozen(v) and GetPedInVehicleSeat(v,-1) == 0 and (#(GetEntityCoords(v) - myPedCoords) < 50.0) then
                    FreezeEntityPosition(v,false)
                    ActivatePhysics(v)
                end

                if Config.useLockSystem then
                    local canUseLock = true
                    if Config.onlyLockIfHasDoors then
                        canUseLock = hasDoors(v) 
                    end

                    if canUseLock then
                        local locked = GetVehicleDoorLockStatus(v)
                        if Entity(v).state.locked then
                            if locked == 0 or locked == 1 then
                                SetVehicleDoorsLocked(v,2)
                            end
                        else
                            if locked == 2 then
                                SetVehicleDoorsLocked(v,1)
                            end
                        end
                    end
                end
            end

            if not isBroken and isPersistent then
                if IsEntityDead(v) then
                    if NetworkGetEntityIsNetworked(v) then 
                        id = NetworkGetNetworkIdFromEntity(v) 
                        SetVehicleEngineHealth(v,-4000.0)
                    end    
                end
            end
        end
    end
end)


function getClosestVeh()
    local vehicles = GetGamePool('CVehicle')
    local maxDist = 10.0
    local ped = PlayerPedId()
    local pedCoords = GetEntityCoords(ped)
    local vehicle = nil

    for k,v in pairs(vehicles) do
        local coords = GetEntityCoords(v)
        local realDistance = #(pedCoords - coords)
        if realDistance < maxDist then
            vehicle = v
            maxDist = realDistance
        end
    end

    return vehicle
end

function lockVehicle(vehicle)
    local ped = PlayerPedId()
    if vehicle then
        local bool = false

        if Entity(vehicle).state.persistent then
            if Entity(vehicle).state.owner then
                if identifier == Entity(vehicle).state.owner then
                    bool = true
                else
                    if Config.usingBaseBuildingCrew then
                        if exports["hrs_base_building"]:hasPermissionVeh(identifier,Entity(vehicle).state.owner) then
                            bool = true
                        end
                    end
                end
            end
        end

        if bool then
            if Entity(vehicle).state.locked then
                PlayVehicleDoorOpenSound(vehicle, 0)
            else
                PlayVehicleDoorCloseSound(vehicle, 1)
            end
            TriggerServerEvent('hrs_vehicles:canLockVehicle',Entity(vehicle).state.plate)
        else
            ShowNotification(Config.Locales["no_vehicles_lock"])
        end
    else
        ShowNotification(Config.Locales["no_vehicles_lock"])  
    end
end

exports("lockVehicle", lockVehicle)

if Config.useCommandForLocking then

    local canClick = true
    RegisterCommand('doorlock',function()
        if canClick then
            canClick = false
            local vehicle = getClosestVeh() 
            lockVehicle(vehicle)
            Wait(500)
            canClick = true
        end
    end)

    RegisterKeyMapping('doorlock', 'Lock/Unlock vehicle door', 'keyboard', Config.useCommandForLocking)

end


RegisterNetEvent('hrs_vehicles:clearTarget')
AddEventHandler('hrs_vehicles:clearTarget', function(vehid,plate)
    local vehicle = NetworkGetEntityFromNetworkId(vehid)
    if vehicle ~= 0 then
        clearVehicleIssues(vehicle,plate)
    end
end)

RegisterNetEvent('hrs_vehicles:stealVehicle')
AddEventHandler('hrs_vehicles:stealVehicle', function()
    if currentPedVehicle ~= 0 then
        openStealMenu(currentPedVehicle)
    end
end)



function ProgressBar(index)
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

function setFuelFunc(vehicle,level)
    if Config.FuelScript == "LegacyFuel" then
        exports["LegacyFuel"]:SetFuel(vehicle, level)
    elseif Config.FuelScript == "hrs_fuel" then
        exports['hrs_fuel']:SetFuelLevel(vehicle,level)
    else
        SetVehicleFuelLevel(vehicle, level)
    end
end

if Config.BicyclesAsItems then
    CreateThread(function()
        Wait(5000)
        for k,v in pairs(Config.BicyclesAsItems) do
            local options = {}

            table.insert(
                options,
                {
                    type = 'client',
                    icon = "fa-regular fa-hand",
                    label = Config.Locales["get_bicycle"],
                    action = function(entity)
                        if NetworkGetEntityIsNetworked(entity) and not isVehiclePersistent(entity) then 
                            if ProgressBar("get_bicycle") then
                                TriggerServerEvent('hrs_vehicles:getBicycle', NetworkGetNetworkIdFromEntity(entity), GetEntityModel(entity))
                            end
                        end
                    end
                }
            )

            exports[Config.UseTargetExport]:AddTargetModel(k, {
                options = options,
                distance = 4.0
            })
        end
    end)
end



RegisterNetEvent('hrs_vehicles:clearTarget')
AddEventHandler('hrs_vehicles:clearTarget', function(vehid,plate)
    local vehicle = NetworkGetEntityFromNetworkId(vehid)
    if vehicle ~= 0 then
        clearVehicleIssues(vehicle,plate)
    end
end)




CreateThread(function()
    if Config.VehicleSpawnBlips then
        for k,v in ipairs(Config.locations) do
            if not v.hiden then
                local x,y,z = table.unpack(v.coords)
                local blip = AddBlipForRadius(x,y,z, v.radius)
                SetBlipHighDetail(blip, true)
                SetBlipColour(blip, Config.VehicleSpawnBlips.color)
                SetBlipAlpha (blip, Config.VehicleSpawnBlips.alpha)
                SetBlipAsShortRange(blip, Config.VehicleSpawnBlips.shortRange)
                local blip2 = AddBlipForCoord(x,y,z) 
                SetBlipSprite(blip2, Config.VehicleSpawnBlips.sprite)
                SetBlipScale(blip2, Config.VehicleSpawnBlips.scale)
                SetBlipAsShortRange(blip2, Config.VehicleSpawnBlips.shortRange)
                SetBlipColour(blip2,Config.VehicleSpawnBlips.color)
                BeginTextCommandSetBlipName('STRING')
                if v.label then
                    AddTextComponentSubstringPlayerName(v.label)
                else
                    AddTextComponentSubstringPlayerName(Config.VehicleSpawnBlips.label)
                end
                EndTextCommandSetBlipName(blip2)
            end
        end
    end

    if Config.VehicleSpawnBlipsFixedLocations then
        for k,v in ipairs(Config.fixedLocations) do
            if not v.hiden then
                local x,y,z = table.unpack(v.coords)
                local blip = AddBlipForRadius(x,y,z, v.radius)
                SetBlipHighDetail(blip, true)
                SetBlipColour(blip, Config.VehicleSpawnBlipsFixedLocations.color)
                SetBlipAlpha (blip, Config.VehicleSpawnBlipsFixedLocations.alpha)
                SetBlipAsShortRange(blip, Config.VehicleSpawnBlipsFixedLocations.shortRange)
                local blip2 = AddBlipForCoord(x,y,z) 
                SetBlipSprite(blip2, Config.VehicleSpawnBlipsFixedLocations.sprite)
                SetBlipScale(blip2, Config.VehicleSpawnBlipsFixedLocations.scale)
                SetBlipAsShortRange(blip2, Config.VehicleSpawnBlipsFixedLocations.shortRange)
                SetBlipColour(blip2,Config.VehicleSpawnBlipsFixedLocations.color)
                BeginTextCommandSetBlipName('STRING')
                if v.label then
                    AddTextComponentSubstringPlayerName(v.label)
                else
                    AddTextComponentSubstringPlayerName(Config.VehicleSpawnBlipsFixedLocations.label)
                end
                EndTextCommandSetBlipName(blip2)
            end
        end
    end
end)





------ MENUS ----------------
AddEventHandler('hrs_vehicles:repairCall', function(tab)
    vehicle = tab.vehicle
    list = tab.list

    if ProgressBar("vehicle_repair") then
        if DoesEntityExist(vehicle) then
            local handling = {
                ['fInitialDriveMaxFlatVel'] = GetVehicleHandlingFloat(vehicle, "CHandlingData", "fInitialDriveMaxFlatVel"),
                ['fInitialDriveForce'] = GetVehicleHandlingFloat(vehicle, "CHandlingData", "fInitialDriveForce"),
                ['fMass'] = GetVehicleHandlingFloat(vehicle, "CHandlingData", "fMass"),
            }

            TriggerServerEvent('hrs_vehicles:repairVehicle',NetworkGetNetworkIdFromEntity(vehicle),GetVehicleNumberPlateText(vehicle),getVehicleType(vehicle),GetVehicleNumberOfWheels(vehicle),GetEntityModel(vehicle),handling)
        end
    end
end)

AddEventHandler('hrs_vehicles:stealCall', function(tab)
    vehicle = tab.vehicle
    list = tab.list

    if ProgressBar("vehicle_steal") then
        if DoesEntityExist(vehicle) then
            TriggerServerEvent('hrs_vehicles:stealVehicle',GetVehicleNumberPlateText(vehicle),getVehicleType(vehicle),GetVehicleNumberOfWheels(vehicle),GetEntityModel(vehicle))
        end
    end
end)



function openRepairMenu(vehicle)
    local list = getVehicleItemsList(vehicle)

    local elements = {}

    if GetResourceState('ox_lib') ~= 'missing' then
        table.insert(elements,{
            icon = 'fa-solid fa-wrench',
            title = Config.Locales["repair"],
            event = 'hrs_vehicles:repairCall',
            args = {
                vehicle = vehicle,
                list = list
            },
            description = Config.Locales["click_repair"],
        })

        for k,v in pairs(list) do
            local currentLabel = labels[k]
            if not labels[k] then
                currentLabel = k.." (no Label)"
            end

            local icon = 'fa-solid fa-gears'
           
            if string.match(k, "battery") then
                icon = 'fa-solid fa-car-battery'
            elseif string.match(k, "oil") then
                icon = 'fa-solid fa-oil-can'
            end

            table.insert(elements,{
                icon = icon,
                title = currentLabel.." x"..v,
                disabled = true,
                txt = ""
            })
        end

        exports.ox_lib:registerContext({
            id = 'repair_menu',
            title = 'Repair Menu',
            options = elements
        })
   
        exports.ox_lib:showContext('repair_menu')
    elseif GetResourceState('esx_context') ~= 'missing' then
        table.insert(elements,{
            icon = "fa-solid fa-screwdriver-wrench",
            title = Config.Locales["repair"],
            value = "restore",
            description = Config.Locales["click_repair"]
        })

        for k,v in pairs(list) do
            local currentLabel = labels[k]
            if not labels[k] then
                currentLabel = k.." (no Label)"
            end

            table.insert(elements,{
                icon = "fa-sharp fa-solid fa-toolbox",
                title = currentLabel.." x"..v,
                unselectable= true,
            })
        end
       
        exports["esx_context"]:Open("center" , elements,
        function(menu,element) -- On Select Function
            exports["esx_context"]:Close()
            if element.value == "restore" then
                if ProgressBar("vehicle_repair") then
                    if DoesEntityExist(vehicle) then
                        local handling = {
                            ['fInitialDriveMaxFlatVel'] = GetVehicleHandlingFloat(vehicle, "CHandlingData", "fInitialDriveMaxFlatVel"),
                            ['fInitialDriveForce'] = GetVehicleHandlingFloat(vehicle, "CHandlingData", "fInitialDriveForce"),
                            ['fMass'] = GetVehicleHandlingFloat(vehicle, "CHandlingData", "fMass"),
                        }

                        TriggerServerEvent('hrs_vehicles:repairVehicle',NetworkGetNetworkIdFromEntity(vehicle),GetVehicleNumberPlateText(vehicle),getVehicleType(vehicle),GetVehicleNumberOfWheels(vehicle),GetEntityModel(vehicle),handling)
                    end
                end
            end
        
            

        end, function(menu) -- on close

        end)
    elseif GetResourceState('qb-menu') ~= 'missing' then

        table.insert(elements,{
            header = Config.Locales["repair"],
            params = {
                event = 'hrs_vehicles:repairCall',
                args = {
                    vehicle = vehicle,
                    list = list
                }
            },
            txt = Config.Locales["click_repair"]
        })

        for k,v in pairs(list) do
            local currentLabel = labels[k]
            if not labels[k] then
                currentLabel = k.." (no Label)"
            end

            table.insert(elements,{
                header = currentLabel.." x"..v,
                disabled = true,
                txt = ""
            })
        end
        
        exports["qb-menu"]:openMenu(elements)

    end
    
end


function openStealMenu(vehicle)
    local list = getVehicleItemsListSteal(vehicle)

    local elements = {}

    if GetResourceState('ox_lib') ~= 'missing' then
        table.insert(elements,{
            icon = 'hand',
            title = Config.Locales["steal"],
            event = 'hrs_vehicles:stealCall',
            args = {
                vehicle = vehicle,
                list = list
            },
            description = Config.Locales["click_steal"],
        })

        for k,v in pairs(list) do
            local currentLabel = labels[k]
            if not labels[k] then
                currentLabel = k.." (no Label)"
            end

            table.insert(elements,{
                title = currentLabel.." x"..v,
                disabled = true,
                txt = ""
            })
        end

        exports.ox_lib:registerContext({
            id = 'steal_menu',
            title = 'Steal Menu',
            options = elements
        })

        exports.ox_lib:showContext('steal_menu')
    elseif GetResourceState('esx_context') ~= 'missing' then
        table.insert(elements,{
            icon = "fa-solid fa-screwdriver-wrench",
            title = Config.Locales["steal"],
            value = "restore",
            description = Config.Locales["click_steal"]
        })

        for k,v in pairs(list) do
            local currentLabel = labels[k]
            if not labels[k] then
                currentLabel = k.." (no Label)"
            end

            table.insert(elements,{
                icon = "fa-sharp fa-solid fa-toolbox",
                title = currentLabel.." x"..v,
                unselectable= true,
            })
        end
       
        exports["esx_context"]:Open("center" , elements,
        function(menu,element) -- On Select Function
            exports["esx_context"]:Close()
            if element.value == "restore" then
                if ProgressBar("vehicle_steal") then
                    if DoesEntityExist(vehicle) then
                        TriggerServerEvent('hrs_vehicles:stealVehicle',GetVehicleNumberPlateText(vehicle),getVehicleType(vehicle),GetVehicleNumberOfWheels(vehicle),GetEntityModel(vehicle))
                    end
                end
            end
        
            

        end, function(menu) -- on close

        end)
    elseif GetResourceState('qb-menu') ~= 'missing' then

        table.insert(elements,{
            header = Config.Locales["steal"],
            params = {
                event = 'hrs_vehicles:stealCall',
                args = {
                    vehicle = vehicle,
                    list = list
                }
            },
            txt = Config.Locales["click_steal"]
        })

        for k,v in pairs(list) do
            local currentLabel = labels[k]
            if not labels[k] then
                currentLabel = k.." (no Label)"
            end

            table.insert(elements,{
                header = currentLabel.." x"..v,
                disabled = true,
                txt = ""
            })
        end
        
        exports["qb-menu"]:openMenu(elements)
    end  
end



-------------------------- UTILS -------------------------------------------------

function GetVehicleProperties(vehicle)
    if DoesEntityExist(vehicle) then
        local colorPrimary, colorSecondary = GetVehicleColours(vehicle)
        local pearlescentColor, wheelColor = GetVehicleExtraColours(vehicle)
        local hasCustomPrimaryColor = GetIsVehiclePrimaryColourCustom(vehicle)
        local customPrimaryColor = nil
        if hasCustomPrimaryColor then
            local r, g, b = GetVehicleCustomPrimaryColour(vehicle)
            customPrimaryColor = {r, g, b}
        end

        local customXenonColorR, customXenonColorG, customXenonColorB = GetVehicleXenonLightsCustomColor(vehicle)
        local customXenonColor = nil
        if customXenonColorR and customXenonColorG and customXenonColorB then 
            customXenonColor = {customXenonColorR, customXenonColorG, customXenonColorB}
        end
        
        local hasCustomSecondaryColor = GetIsVehicleSecondaryColourCustom(vehicle)
        local customSecondaryColor = nil
        if hasCustomSecondaryColor then
            local r, g, b = GetVehicleCustomSecondaryColour(vehicle)
            customSecondaryColor = {r, g, b}
        end
        local extras = {}

        for extraId = 0, 12 do
            if DoesExtraExist(vehicle, extraId) then
                local state = IsVehicleExtraTurnedOn(vehicle, extraId)
                extras[tostring(extraId)] = state
            end
        end

        local doorsBroken, windowsBroken, tyreBurst = {}, {}, {}
        local numWheels = tostring(GetVehicleNumberOfWheels(vehicle))

        local TyresIndex = { -- Wheel index list according to the number of vehicle wheels.
            ['2'] = {0, 4}, -- Bike and cycle.
            ['3'] = {0, 1, 4, 5}, -- Vehicle with 3 wheels (get for wheels because some 3 wheels vehicles have 2 wheels on front and one rear or the reverse).
            ['4'] = {0, 1, 4, 5}, -- Vehicle with 4 wheels.
            ['6'] = {0, 1, 2, 3, 4, 5} -- Vehicle with 6 wheels.
        }

        if TyresIndex[numWheels] then
            for tyre, idx in pairs(TyresIndex[numWheels]) do
                if IsVehicleTyreBurst(vehicle, idx, false) then
                    tyreBurst[tostring(idx)] = true
                else
                    tyreBurst[tostring(idx)] = false
                end
            end
        end

        for windowId = 0, 7 do -- 13
            if not IsVehicleWindowIntact(vehicle, windowId) then
                windowsBroken[tostring(windowId)] = true
            else
                windowsBroken[tostring(windowId)] = false
            end
        end

        local numDoors = GetNumberOfVehicleDoors(vehicle)
        if numDoors and numDoors > 0 then
            for doorsId = 0, numDoors do
                if IsVehicleDoorDamaged(vehicle, doorsId) then
                    doorsBroken[tostring(doorsId)] = true
                else
                    doorsBroken[tostring(doorsId)] = false
                end
            end
        end

        return {
            model = GetEntityModel(vehicle),
            doorsBroken = doorsBroken,
            windowsBroken = windowsBroken,
            tyreBurst = tyreBurst,
            plate = GetVehicleNumberPlateText(vehicle),
            plateIndex = GetVehicleNumberPlateTextIndex(vehicle),

            bodyHealth = Round(GetVehicleBodyHealth(vehicle), 1),
            engineHealth = Round(GetVehicleEngineHealth(vehicle), 1),
            tankHealth = Round(GetVehiclePetrolTankHealth(vehicle), 1),

            fuelLevel = Round(GetVehicleFuelLevel(vehicle), 1),
            dirtLevel = Round(GetVehicleDirtLevel(vehicle), 1),
            color1 = colorPrimary,
            color2 = colorSecondary,
            customPrimaryColor = customPrimaryColor,
            customSecondaryColor = customSecondaryColor,

            pearlescentColor = pearlescentColor,
            wheelColor = wheelColor,

            wheels = GetVehicleWheelType(vehicle),
            windowTint = GetVehicleWindowTint(vehicle),
            xenonColor = GetVehicleXenonLightsColor(vehicle),
            customXenonColor = customXenonColor,

            neonEnabled = {IsVehicleNeonLightEnabled(vehicle, 0), IsVehicleNeonLightEnabled(vehicle, 1),
                           IsVehicleNeonLightEnabled(vehicle, 2), IsVehicleNeonLightEnabled(vehicle, 3)},

            neonColor = table.pack(GetVehicleNeonLightsColour(vehicle)),
            extras = extras,
            tyreSmokeColor = table.pack(GetVehicleTyreSmokeColor(vehicle)),

            modSpoilers = GetVehicleMod(vehicle, 0),
            modFrontBumper = GetVehicleMod(vehicle, 1),
            modRearBumper = GetVehicleMod(vehicle, 2),
            modSideSkirt = GetVehicleMod(vehicle, 3),
            modExhaust = GetVehicleMod(vehicle, 4),
            modFrame = GetVehicleMod(vehicle, 5),
            modGrille = GetVehicleMod(vehicle, 6),
            modHood = GetVehicleMod(vehicle, 7),
            modFender = GetVehicleMod(vehicle, 8),
            modRightFender = GetVehicleMod(vehicle, 9),
            modRoof = GetVehicleMod(vehicle, 10),

            modEngine = GetVehicleMod(vehicle, 11),
            modBrakes = GetVehicleMod(vehicle, 12),
            modTransmission = GetVehicleMod(vehicle, 13),
            modHorns = GetVehicleMod(vehicle, 14),
            modSuspension = GetVehicleMod(vehicle, 15),
            modArmor = GetVehicleMod(vehicle, 16),

            modTurbo = IsToggleModOn(vehicle, 18),
            modSmokeEnabled = IsToggleModOn(vehicle, 20),
            modXenon = IsToggleModOn(vehicle, 22),

            modFrontWheels = GetVehicleMod(vehicle, 23),
            modBackWheels = GetVehicleMod(vehicle, 24),

            modPlateHolder = GetVehicleMod(vehicle, 25),
            modVanityPlate = GetVehicleMod(vehicle, 26),
            modTrimA = GetVehicleMod(vehicle, 27),
            modOrnaments = GetVehicleMod(vehicle, 28),
            modDashboard = GetVehicleMod(vehicle, 29),
            modDial = GetVehicleMod(vehicle, 30),
            modDoorSpeaker = GetVehicleMod(vehicle, 31),
            modSeats = GetVehicleMod(vehicle, 32),
            modSteeringWheel = GetVehicleMod(vehicle, 33),
            modShifterLeavers = GetVehicleMod(vehicle, 34),
            modAPlate = GetVehicleMod(vehicle, 35),
            modSpeakers = GetVehicleMod(vehicle, 36),
            modTrunk = GetVehicleMod(vehicle, 37),
            modHydrolic = GetVehicleMod(vehicle, 38),
            modEngineBlock = GetVehicleMod(vehicle, 39),
            modAirFilter = GetVehicleMod(vehicle, 40),
            modStruts = GetVehicleMod(vehicle, 41),
            modArchCover = GetVehicleMod(vehicle, 42),
            modAerials = GetVehicleMod(vehicle, 43),
            modTrimB = GetVehicleMod(vehicle, 44),
            modTank = GetVehicleMod(vehicle, 45),
            modDoorR = GetVehicleMod(vehicle, 47),
            modLivery = GetVehicleMod(vehicle, 48) == -1 and GetVehicleLivery(vehicle) or GetVehicleMod(vehicle, 48),
            modLightbar = GetVehicleMod(vehicle, 49)
        }
    else
        return
    end

    --return ESX.Game.GetVehicleProperties(vehicle)
end

function SetVehicleProperties(vehicle, props, fix)
    if DoesEntityExist(vehicle) then

        if fix then
            SetVehicleFixed(vehicle)
            --print("fixesss")
        end

        local colorPrimary, colorSecondary = GetVehicleColours(vehicle)
        local pearlescentColor, wheelColor = GetVehicleExtraColours(vehicle)
        SetVehicleModKit(vehicle, 0)

        if props.plate then
            SetVehicleNumberPlateText(vehicle, props.plate)
        end
        if props.plateIndex then
            SetVehicleNumberPlateTextIndex(vehicle, props.plateIndex)
        end
        if props.bodyHealth then
            SetVehicleBodyHealth(vehicle, props.bodyHealth + 0.0)
        end
        if props.engineHealth then
            SetVehicleEngineHealth(vehicle, props.engineHealth + 0.0)
        end
        if props.tankHealth then
            SetVehiclePetrolTankHealth(vehicle, props.tankHealth + 0.0)
        end
        if props.fuelLevel then
            SetVehicleFuelLevel(vehicle, props.fuelLevel + 0.0)
        end
        if props.dirtLevel then
            SetVehicleDirtLevel(vehicle, props.dirtLevel + 0.0)
        end
        if props.customPrimaryColor then
            SetVehicleCustomPrimaryColour(vehicle, props.customPrimaryColor[1], props.customPrimaryColor[2],
                props.customPrimaryColor[3])
        end
        if props.customSecondaryColor then
            SetVehicleCustomSecondaryColour(vehicle, props.customSecondaryColor[1], props.customSecondaryColor[2],
                props.customSecondaryColor[3])
        end
        if props.color1 then
            SetVehicleColours(vehicle, props.color1, colorSecondary)
        end
        if props.color2 then
            SetVehicleColours(vehicle, props.color1 or colorPrimary, props.color2)
        end
        if props.pearlescentColor then
            SetVehicleExtraColours(vehicle, props.pearlescentColor, wheelColor)
        end
        if props.wheelColor then
            SetVehicleExtraColours(vehicle, props.pearlescentColor or pearlescentColor, props.wheelColor)
        end
        if props.wheels then
            SetVehicleWheelType(vehicle, props.wheels)
        end
        if props.windowTint then
            SetVehicleWindowTint(vehicle, props.windowTint)
        end

        if props.neonEnabled then
            SetVehicleNeonLightEnabled(vehicle, 0, props.neonEnabled[1])
            SetVehicleNeonLightEnabled(vehicle, 1, props.neonEnabled[2])
            SetVehicleNeonLightEnabled(vehicle, 2, props.neonEnabled[3])
            SetVehicleNeonLightEnabled(vehicle, 3, props.neonEnabled[4])
        end

        if props.extras then
            for extraId, enabled in pairs(props.extras) do
                if enabled then
                    SetVehicleExtra(vehicle, tonumber(extraId), 0)
                else
                    SetVehicleExtra(vehicle, tonumber(extraId), 1)
                end
            end
        end

        if props.neonColor then
            SetVehicleNeonLightsColour(vehicle, props.neonColor[1], props.neonColor[2], props.neonColor[3])
        end
        if props.xenonColor then
            SetVehicleXenonLightsColor(vehicle, props.xenonColor)
        end
        if props.customXenonColor then
            SetVehicleXenonLightsCustomColor(vehicle, props.customXenonColor[1], props.customXenonColor[2],
                props.customXenonColor[3])
        end
        if props.modSmokeEnabled then
            ToggleVehicleMod(vehicle, 20, true)
        end
        if props.tyreSmokeColor then
            SetVehicleTyreSmokeColor(vehicle, props.tyreSmokeColor[1], props.tyreSmokeColor[2], props.tyreSmokeColor[3])
        end
        if props.modSpoilers then
            SetVehicleMod(vehicle, 0, props.modSpoilers, false)
        end
        if props.modFrontBumper then
            SetVehicleMod(vehicle, 1, props.modFrontBumper, false)
        end
        if props.modRearBumper then
            SetVehicleMod(vehicle, 2, props.modRearBumper, false)
        end
        if props.modSideSkirt then
            SetVehicleMod(vehicle, 3, props.modSideSkirt, false)
        end
        if props.modExhaust then
            SetVehicleMod(vehicle, 4, props.modExhaust, false)
        end
        if props.modFrame then
            SetVehicleMod(vehicle, 5, props.modFrame, false)
        end
        if props.modGrille then
            SetVehicleMod(vehicle, 6, props.modGrille, false)
        end
        if props.modHood then
            SetVehicleMod(vehicle, 7, props.modHood, false)
        end
        if props.modFender then
            SetVehicleMod(vehicle, 8, props.modFender, false)
        end
        if props.modRightFender then
            SetVehicleMod(vehicle, 9, props.modRightFender, false)
        end
        if props.modRoof then
            SetVehicleMod(vehicle, 10, props.modRoof, false)
        end
        if props.modEngine then
            SetVehicleMod(vehicle, 11, props.modEngine, false)
        end
        if props.modBrakes then
            SetVehicleMod(vehicle, 12, props.modBrakes, false)
        end
        if props.modTransmission then
            SetVehicleMod(vehicle, 13, props.modTransmission, false)
        end
        if props.modHorns then
            SetVehicleMod(vehicle, 14, props.modHorns, false)
        end
        if props.modSuspension then
            SetVehicleMod(vehicle, 15, props.modSuspension, false)
        end
        if props.modArmor then
            SetVehicleMod(vehicle, 16, props.modArmor, false)
        end
        if props.modTurbo then
            ToggleVehicleMod(vehicle, 18, props.modTurbo)
        end
        if props.modXenon then
            ToggleVehicleMod(vehicle, 22, props.modXenon)
        end
        if props.modFrontWheels then
            SetVehicleMod(vehicle, 23, props.modFrontWheels, false)
        end
        if props.modBackWheels then
            SetVehicleMod(vehicle, 24, props.modBackWheels, false)
        end
        if props.modPlateHolder then
            SetVehicleMod(vehicle, 25, props.modPlateHolder, false)
        end
        if props.modVanityPlate then
            SetVehicleMod(vehicle, 26, props.modVanityPlate, false)
        end
        if props.modTrimA then
            SetVehicleMod(vehicle, 27, props.modTrimA, false)
        end
        if props.modOrnaments then
            SetVehicleMod(vehicle, 28, props.modOrnaments, false)
        end
        if props.modDashboard then
            SetVehicleMod(vehicle, 29, props.modDashboard, false)
        end
        if props.modDial then
            SetVehicleMod(vehicle, 30, props.modDial, false)
        end
        if props.modDoorSpeaker then
            SetVehicleMod(vehicle, 31, props.modDoorSpeaker, false)
        end
        if props.modSeats then
            SetVehicleMod(vehicle, 32, props.modSeats, false)
        end
        if props.modSteeringWheel then
            SetVehicleMod(vehicle, 33, props.modSteeringWheel, false)
        end
        if props.modShifterLeavers then
            SetVehicleMod(vehicle, 34, props.modShifterLeavers, false)
        end
        if props.modAPlate then
            SetVehicleMod(vehicle, 35, props.modAPlate, false)
        end
        if props.modSpeakers then
            SetVehicleMod(vehicle, 36, props.modSpeakers, false)
        end
        if props.modTrunk then
            SetVehicleMod(vehicle, 37, props.modTrunk, false)
        end
        if props.modHydrolic then
            SetVehicleMod(vehicle, 38, props.modHydrolic, false)
        end
        if props.modEngineBlock then
            SetVehicleMod(vehicle, 39, props.modEngineBlock, false)
        end
        if props.modAirFilter then
            SetVehicleMod(vehicle, 40, props.modAirFilter, false)
        end
        if props.modStruts then
            SetVehicleMod(vehicle, 41, props.modStruts, false)
        end
        if props.modArchCover then
            SetVehicleMod(vehicle, 42, props.modArchCover, false)
        end
        if props.modAerials then
            SetVehicleMod(vehicle, 43, props.modAerials, false)
        end
        if props.modTrimB then
            SetVehicleMod(vehicle, 44, props.modTrimB, false)
        end
        if props.modTank then
            SetVehicleMod(vehicle, 45, props.modTank, false)
        end
        if props.modWindows then
            SetVehicleMod(vehicle, 46, props.modWindows, false)
        end

        if props.modLivery then
            SetVehicleMod(vehicle, 48, props.modLivery, false)
            SetVehicleLivery(vehicle, props.modLivery)
        end

        if props.windowsBroken then
            for k, v in pairs(props.windowsBroken) do
                if v then
                    SmashVehicleWindow(vehicle, tonumber(k))
                end
            end
        end

        if props.doorsBroken then
            for k, v in pairs(props.doorsBroken) do
                if v then
                    SetVehicleDoorBroken(vehicle, tonumber(k), true)
                end
            end
        end

        if props.tyreBurst then
            for k, v in pairs(props.tyreBurst) do
                if v then
                    SetVehicleTyreBurst(vehicle, tonumber(k), true, 1000.0)
                end
            end
        end
    end
end



function getVehicleType(vehicle)
    local model = GetEntityModel(vehicle)
    
    if Config.trailers[model] then
        return 'Trailer'
    end

    if IsThisModelAnAmphibiousCar(model) then
        return 'AmphibiousCar'
    end

    if IsThisModelAnAmphibiousQuadbike(model) then
        return 'AmphibiousQuadbike'
    end

    if IsThisModelAJetski(model) then
        return 'Jetski'
    end

    if IsThisModelAQuadbike(model) then
        return 'Quadbike'
    end

    if IsThisModelABicycle(model) then
        return 'Bicycle'
    end

    if IsThisModelABike(model) then
        return 'Bike'
    end

    if IsThisModelABoat(model) then
        return 'Boat'
    end

    if IsThisModelACar(model) then
        if GetVehicleNumberOfWheels(vehicle) > 5 or GetVehicleHandlingFloat(vehicle, "CHandlingData", "fMass") > Config.weightToBeTruck then
            return 'Truck'
        else
            return 'Car'
        end
    end

    if IsThisModelAHeli(model) then
        return 'Heli'
    end

    if IsThisModelAPlane(model) then
        return 'Plane'
    end

    if IsThisModelATrain(model) then
        return 'Train'
    end

    

    return "General"
end



-------------------- GARAGE AND SHOP ---------------------
function spawnClientVeh(model, coords, heading, warp)
    local MyPed = PlayerPedId()
    if not coords then coords =  GetEntityCoords(MyPed) end
    if not heading then heading = GetEntityHeading(MyPed) end

    local ModelHash = model
    if not IsModelInCdimage(ModelHash) then return end
    RequestModel(ModelHash) 
    while not HasModelLoaded(ModelHash) do
      Wait(0)
    end
    
    local vehicle = CreateVehicle(ModelHash, coords, heading, false, true) 
    
    if warp then
        TaskWarpPedIntoVehicle(MyPed,vehicle,-1)
    end
    
    SetModelAsNoLongerNeeded(ModelHash)
    FreezeEntityPosition(vehicle,true)

    return vehicle 
end

RegisterNetEvent('hrs_vehicles:spawnVehGarage')
AddEventHandler('hrs_vehicles:spawnVehGarage', function(args)
    local MyPed = PlayerPedId()
    local myCoords = GetEntityCoords(MyPed)

    local vehicle = spawnClientVeh(args.vehicle.model , myCoords, nil, true)
    SetVehiclePropertiesSave(vehicle, args.vehicle)
    
    local alert = exports.ox_lib:alertDialog({
        header = 'do you want to spawn this vehicle?',
        centered = true,
        cancel = true
    })

    if alert ~= 'cancel' then
        DoScreenFadeOut(1000)
        Wait(1000)
        setVehiclePersistent(vehicle)
        Wait(1000)
        DoScreenFadeIn(1000)
    else
        SetEntityCoords(MyPed,myCoords)
        DeleteEntity(vehicle)
        exports.ox_lib:showContext('garage_menu')
    end
end)

RegisterNetEvent('hrs_vehicles:openGarage')
AddEventHandler('hrs_vehicles:openGarage', function(vehiclesInGarage)
    local elements = {}
   
    for i,v in ipairs(vehiclesInGarage) do
        table.insert(elements,{
            title = v.plate.. " - ["..GetDisplayNameFromVehicleModel(v.vehicle.model).."]",
            event = 'hrs_vehicles:spawnVehGarage',
            args = v,
        })
    end

    exports.ox_lib:registerContext({
        id = 'garage_menu',
        title = 'Garage ('..#elements..")",
        options = elements
    })

    exports.ox_lib:showContext('garage_menu')
end)

RegisterNetEvent('hrs_vehicles:saveLast')
AddEventHandler('hrs_vehicles:saveLast', function()
    local MyPed = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(MyPed)

    if vehicle == 0 then
        vehicle = GetVehiclePedIsIn(MyPed,true)
        if vehicle ~= 0 and #(GetEntityCoords(MyPed) - GetEntityCoords(vehicle)) > 10.0 then
            vehicle = 0
        end
    end
    
    if vehicle == 0 then
       ShowNotification("No Vehicle to Save")
    else
        if Entity(vehicle).state.persistent and Entity(vehicle).state.owner == identifier then
            local props = GetVehiclePropertiesSave(vehicle)
            local plate = Entity(vehicle).state.plate
            TriggerServerEvent('hrs_vehicles:updatePropsFramework', plate, props)
            removeVehiclePersistent(vehicle,true)
        else
            ShowNotification("You can't save this vehicle")
        end
    end
end)

function openGarage()
    local elements = {}
    table.insert(elements,{
        title = "Save Last or Current Vehicle",
        event = 'hrs_vehicles:saveLast',
    })
    table.insert(elements,{
        title = "Open Garage",
        serverEvent = 'hrs_vehicles:getOwnedVehicles',
    })

    exports.ox_lib:registerContext({
        id = 'garage_menu_1',
        title = 'Garage',
        options = elements
    })

    exports.ox_lib:showContext('garage_menu_1')
end

RegisterNetEvent('hrs_vehicles:openGarageEvent')
AddEventHandler('hrs_vehicles:openGarageEvent', function()
    openGarage()
end)


local vehShopVeh = nil
local vehShopVehIndex = nil
function openVehicleShop()
    local elementsk = {}
    local elements = {}

    for k,v in pairs(Config.vehicleShopVehicles) do
        if not elementsk[v.category.."_menu"] then
            table.insert(elements,{
                title = v.category,
                menu = v.category.."_menu",
                icon = 'bars'
            })
            elementsk[v.category.."_menu"] = {}
        end

        table.insert(elementsk[v.category.."_menu"], {
            title = v.label,
            description = v.price..'$',
            --menu = 'veh_shop_buy',
            onSelect = function()
                exports.ox_lib:registerContext({
                    id = "veh_shop_buy",
                    title = 'Buy '..v.price.."$",
                    menu = v.category.."_menu",
                    options = {
                        {
                            title = "Buy",
                            icon = 'check',
                            --title = "Keep Looking",
                            onSelect = function()
                                local hash = GetEntityModel(vehShopVeh)
                                local type = getVehicleType(vehShopVeh)
                                local props = GetVehiclePropertiesSave(vehShopVeh)

                                TriggerServerEvent('hrs_vehicles:buyVehicle',vehShopVehIndex ,hash, type, props)
                            end
                        },
                        {
                            title = "Keep Looking",
                            onSelect = function()
                                exports.ox_lib:hideContext(onExit)
                            end
                        }
                    }
                })

                exports.ox_lib:showContext('veh_shop_buy')

                CreateThread(function()
                    if vehShopVeh and DoesEntityExist(vehShopVeh) then
                        DeleteEntity(vehShopVeh)
                    end
                    vehShopVeh = spawnClientVeh(GetHashKey(k), nil, nil, true)
                    vehShopVehIndex = k
                    local MyPed = PlayerPedId()
                    while GetVehiclePedIsIn(MyPed) ~= vehShopVeh do
                        --print(GetVehiclePedIsIn(MyPed), vehShopVeh) 
                        Wait(100)
                    end
                    while GetVehiclePedIsIn(MyPed) == vehShopVeh do
                        --print(GetVehiclePedIsIn(MyPed), vehShopVeh) 
                        Wait(100)
                    end
                    if DoesEntityExist(vehShopVeh) then
                        DeleteEntity(vehShopVeh)
                    end
                    vehShopVeh = nil
                    vehShopVehIndex = nil
                end)
            end,
            onBack = function()
                exports.ox_lib:showContext(v.category.."_menu")
            end
        })
    end

    exports.ox_lib:registerContext({
        id = 'vehicleshop_menu',
        title = 'Vehicle Shop',
        -- menu = 'some_menu',
        options = elements
    })

    for k,v in pairs(elementsk) do
        exports.ox_lib:registerContext({
            id = k,
            title = 'Vehicle List',
            menu = 'vehicleshop_menu',
            options = v
        })
    end

    exports.ox_lib:showContext('vehicleshop_menu')
end

RegisterNetEvent('hrs_vehicles:openVehicleShopEvent')
AddEventHandler('hrs_vehicles:openVehicleShopEvent', function()
    openVehicleShop()
end)

RegisterNetEvent('hrs_vehicles:persistentShop')
AddEventHandler('hrs_vehicles:persistentShop', function(plate, hash)
    if vehShopVeh and DoesEntityExist(vehShopVeh) and GetEntityModel(vehShopVeh) == hash then
        SetVehicleNumberPlateText(vehShopVeh, plate)
        Wait(100)
        setVehiclePersistent(vehShopVeh)
    end
end)

-------------------------- scrap




AddEventHandler('hrs_vehicles:openVehicleScrapEvent', function()
    local MyPed = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(MyPed)

    if vehicle ~= 0 and NetworkGetEntityIsNetworked(vehicle) and Entity(vehicle).state.persistent then

        if ProgressBar("veh_scrap") then
            if DoesEntityExist(vehicle) and GetVehiclePedIsIn(MyPed) == vehicle then
                local handling = {
                    ['fInitialDriveMaxFlatVel'] = GetVehicleHandlingFloat(vehicle, "CHandlingData", "fInitialDriveMaxFlatVel"),
                    ['fInitialDriveForce'] = GetVehicleHandlingFloat(vehicle, "CHandlingData", "fInitialDriveForce"),
                    ['fMass'] = GetVehicleHandlingFloat(vehicle, "CHandlingData", "fMass"),
                }

                TriggerServerEvent('hrs_vehicles:scrapVehicle',GetVehicleNumberPlateText(vehicle),getVehicleType(vehicle),GetVehicleNumberOfWheels(vehicle),GetEntityModel(vehicle),handling)
            end
        end
    else
        ShowNotification("No vehicle to scrap")
    end
end)
-------------------------------

function simpleBlipCreation(v)
    if not v.hiden and v.blip then
        local x,y,z = table.unpack(v.coords)
        local blip = AddBlipForRadius(x,y,z, v.radius)
        SetBlipHighDetail(blip, true)
        SetBlipColour(blip, v.blip.color)
        SetBlipAlpha (blip, v.blip.alpha)
        SetBlipAsShortRange(blip, v.blip.shortRange)
        local blip2 = AddBlipForCoord(x,y,z) 
        SetBlipSprite(blip2, v.blip.sprite)
        SetBlipScale(blip2, v.blip.scale)
        SetBlipAsShortRange(blip2, v.blip.shortRange)
        SetBlipColour(blip2,v.blip.color)
        BeginTextCommandSetBlipName('STRING')
        if v.label then
            AddTextComponentSubstringPlayerName(v.label)
        else
            AddTextComponentSubstringPlayerName(v.blip.label)
        end
        EndTextCommandSetBlipName(blip2)
    end
end

CreateThread(function()
    if Config.garageLocations then
        for _,v in ipairs(Config.garageLocations) do
            simpleBlipCreation(v)
        end
    end
    if Config.vehicleShopLocations then
        for _,v in ipairs(Config.vehicleShopLocations) do
            simpleBlipCreation(v)
        end
    end
    if Config.vehicleScrapLocations then
        for _,v in ipairs(Config.vehicleScrapLocations) do
            simpleBlipCreation(v)
        end
    end
end)

local message = nil
local event = nil

CreateThread(function()
    while true do 
        local MyPed = PlayerPedId()
        local myCoords = GetEntityCoords(MyPed)
        local testMessage = nil
        local vehicle = GetVehiclePedIsIn(MyPed)

        if not IsNuiFocused() and not IsScreenFadedOut() and not progressBarActive then

            if Config.garageLocations then
                for _,v in ipairs(Config.garageLocations) do
                    if #(myCoords - v.coords) < v.radius then
                        testMessage = v.message
                        event = 'hrs_vehicles:openGarageEvent'
                    end
                end
            end

            
            if Config.vehicleShopLocations then
                for _,v in ipairs(Config.vehicleShopLocations) do
                    if #(myCoords - v.coords) < v.radius then
                        testMessage = v.message
                        event = 'hrs_vehicles:openVehicleShopEvent'
                    end
                end
            end

            if vehicle ~= 0 then
                if Config.vehicleScrapLocations then
                    for _,v in ipairs(Config.vehicleScrapLocations) do
                        if #(myCoords - v.coords) < v.radius then
                            testMessage = v.message
                            event = 'hrs_vehicles:openVehicleScrapEvent'
                        end
                    end
                end
            end

        end

        if testMessage ~= message then
            if testMessage == nil then
                exports.ox_lib:hideTextUI()
            else
                exports.ox_lib:showTextUI(testMessage, {position = "left-center"})
            end
        end

        message = testMessage
        Wait(500)
    end
end)

CreateThread(function()
    while true do
        local sleep = 500 
        if message and not progressBarActive then
            if IsControlJustPressed(0, 38) and not IsNuiFocused() then
                TriggerEvent(event)
                Wait(500)
            end
            sleep = 0
        end
        Wait(sleep)
    end
end)





-- RegisterCommand('opengarage',function()
--     openGarage()
-- end)