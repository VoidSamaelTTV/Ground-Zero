
local registered = {}
local inNoLootZone = false
local isDead = false

function getExtraInfo()
    return 'info'
end

CreateThread(function()
    Wait(1000)


    if not Config.UsePressE then

        local options = {}
        table.insert(
            options,
            {
                type = 'client',
                icon = "fa-solid fa-magnifying-glass",
                label = Config.Locales['search'],
                action = function(entity)
                    if GetEntityType(entity) == 1 and not IsPedAPlayer(entity) and IsPedHuman(entity) and IsPedDeadOrDying(entity,true) then
                        lootPed(entity)
                    end
                end,
                canInteract = function(entity)

                    --if exports.hrs_zombies_V2:isInSafeZoneCoords(GetEntityCoords(PlayerPedId())) then return false end

                    if inNoLootZone then return false end
                    if not canInteractConditions() then return false end

                    if GetEntityType(entity) == 1 and not IsPedAPlayer(entity) and IsPedHuman(entity) and IsPedDeadOrDying(entity,true) then return true end
                    return false
                end
            }
        )

        local label2 = Config.Locales['search_animal'] 
        if not label2 then
            label2 = "-"..Config.Locales['search']
        end

        table.insert(
            options,
            {
                type = 'client',
                icon = "fa-solid fa-magnifying-glass",
                label = label2,
                action = function(entity)
                    if GetEntityType(entity) == 1 and not IsPedAPlayer(entity) and not IsPedHuman(entity) and IsPedDeadOrDying(entity,true) then        
                        --print("i am an animal")
                        lootAnimal(entity)
                    end
                end,
                canInteract = function(entity)

                    if inNoLootZone then return false end
                    if not canInteractConditions() then return false end
                    --if exports.hrs_zombies_V2:isInSafeZoneCoords(GetEntityCoords(PlayerPedId())) then return false end

                    if GetEntityType(entity) == 1 and not IsPedAPlayer(entity) and not IsPedHuman(entity) and IsPedDeadOrDying(entity,true) then return true end
                    return false
                end
            }
        )

        if Config.UseTargetExport == "qtarget" then
            exports[Config.UseTargetExport]:Ped({
                options = options,
                distance = 4.0, 
            })
        elseif Config.UseTargetExport == "ox_target" then
            Config.UseTargetExport = "qtarget"
            
            exports[Config.UseTargetExport]:Ped({
                options = options,
                distance = 4.0, 
            })
        else
            exports[Config.UseTargetExport]:AddGlobalPed({
                options = options,
                distance = 4.0,
            })
        end

    
        for k,v in pairs(Config.lootByHashTypeProps) do

            local options = {}
    
            table.insert(
                options,
                {
                    type = 'client',
                    icon = "fa-solid fa-magnifying-glass",
                    label = Config.Locales['search'],
                    action = function(entity)
                        propLoot(entity)
                    end,
                    canInteract = function(entity)

                        if inNoLootZone then return false end
                        if not canInteractConditions() then return false end

                        --if exports.hrs_zombies_V2:isInSafeZoneCoords(GetEntityCoords(PlayerPedId())) then return false end
                        return true
                    end
                }
            )
    
            exports[Config.UseTargetExport]:AddTargetModel(k, {
                options = options,
                distance = 4.0
            })
        end
    
    
    end


end)





if Config.UsePressE then

    local propsHash = {}
    for k,v in pairs(Config.lootByHashTypeProps) do
        propsHash[GetHashKey(k)] = true
    end

    local pedLoot = nil
    local pedLootType = nil

    local propLootEnt = nil

    CreateThread(function()
        while true do
            Wait(500)

            local myCoords = GetEntityCoords(PlayerPedId())

            --if exports.hrs_zombies_V2:isInSafeZoneCoords(GetEntityCoords(PlayerPedId())) then return end

            local peds = GetGamePool('CPed')
            local dist = 3.0
            

            local currentPedLoot = nil
            local currentPedLootType = nil

            if not inNoLootZone and canInteractConditions() then
                for k,v in pairs(peds) do
                    if IsEntityDead(v) then
                        if IsPedHuman(v) then
                            if not IsPedAPlayer(v) then
                                local distance = #(myCoords - GetEntityCoords(v))
                                if distance < dist then
                                    dist = distance
                                    currentPedLoot = v
                                    currentPedLootType = 'zombie'
                                end
                            end
                        else
                            local distance = #(myCoords - GetEntityCoords(v))
                            if distance < dist then
                                dist = distance
                                currentPedLoot = v
                                currentPedLootType = 'animal'
                            end
                        end
                    end
                end 
            end
            
            pedLoot = currentPedLoot
            pedLootType = currentPedLootType

            if not inNoLootZone and canInteractConditions()  then

                if not pedLoot then
                    local props = GetGamePool('CObject')
                    local dist = 5.0
                    local myCoords = GetEntityCoords(PlayerPedId())

                    local currentPropLoot = nil
                
                    for k,v in pairs(props) do
                        local model = GetEntityModel(v)

                        if propsHash[model] then
                            local distance = #(myCoords - GetEntityCoords(v))
                            if distance < dist then
                                dist = distance
                                currentPropLoot = v
                            end
                        end
                    end 
                    
                    propLootEnt = currentPropLoot
                end

            else
                propLootEnt = nil
            end

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
            if pedLoot and not IsNuiFocused() then
                local coords = GetWorldPositionOfEntityBone(pedLoot,GetPedRagdollBoneIndex(pedLoot,1))
                Draw3DText(coords.x,coords.y,coords.z,0.5,"[E] to Search")
                if IsControlJustPressed(0,51) then
                    if pedLootType == 'animal' then
                        lootAnimal(pedLoot)
                    else
                        lootPed(pedLoot)
                    end
                    Wait(500)
                end
            elseif propLootEnt and not IsNuiFocused()  then
                local coords = GetEntityCoords(propLootEnt)
                Draw3DText(coords.x,coords.y,coords.z + 0.5,0.5,"[E] to Search")
                if IsControlJustPressed(0,51) then
                    propLoot(propLootEnt)
                    Wait(500)
                end
            end
        end
    end)

end


function ProgressBar(index)
    if not Config.UseProgressBar then
        return true
    end

    local ped = PlayerPedId()
 
    local statusValue = nil

    local animType = Config.ProgressBars[index]

    progressBarActive = true

    -- if GetResourceState('ox_lib') ~= 'missing' then
    --     if not animType.animation.flags then
    --         animType.animation.flags = 1
    --     end

    --     statusValue = exports.ox_lib:progressCircle({
    --         duration = animType.duration,
    --         position = 'middle',
    --         useWhileDead = false,
    --         canCancel = true,
    --         label = animType.label,
    --         disable = {
    --             car = true,
    --             combat = true,
    --             move = true,
    --         },
    --         anim = {
    --             dict = animType.animation.animDict,
    --             clip = animType.animation.anim,
    --             scenario = animType.animation.task,
    --             flag = animType.animation.flags
    --         },
    --         prop = animType.prop
    --     })

    -- else
        
        if GetResourceState('mythic_progbar') ~= 'missing' then

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

function inNoLootZoneCheck(coords)

    if not Config.disableLootZones then return false end
    if not next(Config.disableLootZones) then return false end

    for _,v in ipairs(Config.disableLootZones) do
        if #(coords - v.coords) < v.radius then
            return true
        end
    end
    return false
end

function isMyPedDead(myPed)

    if Config.Framework == "QB" then
        PlayerData = QBCore.Functions.GetPlayerData()
        if PlayerData and PlayerData.metadata and (PlayerData.metadata['inlaststand'] or PlayerData.metadata['isdead']) then
            return true
        end
        return false
    end

    return IsPedDeadOrDying(myPed,true)
end

--if Config.disableLootZones and next(Config.disableLootZones) then
CreateThread(function()
    while true do
        Wait(500)
        local myPed = PlayerPedId()
        inNoLootZone = inNoLootZoneCheck(GetEntityCoords(myPed))
        --isDead = isMyPedDead(myPed)
    end
end)
--end




function isMyPedDead(myPed)

    if Config.Framework == "QB" then
        PlayerData = QBCore.Functions.GetPlayerData()
        if PlayerData and PlayerData.metadata and (PlayerData.metadata['inlaststand'] or PlayerData.metadata['isdead']) then
            return 1
        end
        return false
    end

    return IsPedDeadOrDying(myPed,true)
end

function canInteractConditions()
    local myPed = PlayerPedId()
    if isMyPedDead(myPed) then return end
    if not IsPedOnFoot(myPed) then return end

    return true
end