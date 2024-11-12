-- local props = {}

local function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(5)
    end
end

local function openHouseAnim()
    local ped = PlayerPedId()
    loadAnimDict("anim@heists@keycard@")
    TaskPlayAnim(ped, "anim@heists@keycard@", "exit", 5.0, 1.0, -1, 16, 0, 0, 0, 0 )
    Wait(100)
    -- if Shared.WeedLab.EnableSound then
    --     -- TriggerServerEvent("InteractSound_SV:PlayOnSource", "facility_alarm", 0.1)
    -- end
    DoScreenFadeOut(800)
    Wait(850)
    DoScreenFadeIn(900)
    ClearPedTasks(ped)
end

-- local function SpawnWeedProcessProps()
--     for k, v in pairs(Shared.ProcessingProps) do
-- 	    props[#props+1] = CreateObject(v.model,vector3(v.coords.x,v.coords.y,v.coords.z-1.00))
-- 	    SetEntityHeading(props[#props],v.coords.w)
--         FreezeEntityPosition(props, true)
--     end
-- end

CreateThread(function ()
    if Shared.WeedLab.EnableTp then
        exports['qb-target']:AddBoxZone('weedlab-enter', vector3(1569.67, -2129.59, 78.33), 3.0, 3.0, {
            name = 'weedlab-enter',
            heading = 90,
            minZ = 70.27 - 2,
            maxZ = 80.27 + 2,
            debugPoly = Shared.Debug,
        }, {
            options = {
                {
                    type = 'client',
                    event = 'ps-weedplanting:client:EnterLab',
                    icon = 'fa-solid fa-warehouse',
                    label = _U('enter_weedlab'),
                }
            },
            distance = 2.0
        })
        exports['qb-target']:AddBoxZone('weedlab-exit', vector3(1066.65, -3183.45, -39.16), 1.5, 0.5, {
            name = 'weedlab-exit',
            heading = 0,
            minZ = -39.16 - 2,
            maxZ = -39.16 + 2,
            debugPoly = Shared.Debug,
        }, {
            options = {
                {
                    type = 'client',
                    event = 'ps-weedplanting:client:ExitLab',
                    icon = 'fa-solid fa-warehouse',
                    label = _U('exit_weedlab'),
                }
            },
            distance = 2.0
        })
    end
end)

CreateThread(function ()
    if Shared.Weapons.EnableTp then
        exports['qb-target']:AddBoxZone('weapons-enter', vector3(1273.71, 2835.5, 49.36), 1.5, 1.0, {
            name = 'weapons-enter',
            heading = 90,
            minZ = 50.27 - 2,
            maxZ = 100.27 + 2,
            debugPoly = Shared.Debug,
        }, {
            options = {
                {
                    type = 'client',
                    event = 'ps-weedplanting:client:EnterWeapons',
                    icon = 'fa-solid fa-warehouse',
                    label = _U('enter_weedlab'),
                }
            },
            distance = 2.0
        })
        exports['qb-target']:AddBoxZone('weapons-exit', vector3(487.26, 4819.95, -58.38), 1.5, 0.5, {
            name = 'weapons-exit',
            heading = 0,
            minZ = -80.16 - 2,
            maxZ = -50.16 + 2,
            debugPoly = Shared.Debug,
        }, {
            options = {
                {
                    type = 'client',
                    event = 'ps-weedplanting:client:ExitWeapons',
                    icon = 'fa-solid fa-warehouse',
                    label = _U('exit_weedlab'),
                }
            },
            distance = 2.0
        })
    end
end)

CreateThread(function ()
    if Shared.Weapons.EnableTp then
        exports['qb-target']:AddBoxZone('gunrunning-enter', vector3(1802.11, 4709.67, 39.28), 1.5, 1.0, {
            name = 'gunrunning-enter',
            heading = 90,
            minZ = 35.27 - 2,
            maxZ = 40.27 + 2,
            debugPoly = Shared.Debug,
        }, {
            options = {
                {
                    type = 'client',
                    event = 'ps-weedplanting:client:EnterGunrunning',
                    icon = 'fa-solid fa-warehouse',
                    label = _U('enter_weedlab'),
                }
            },
            distance = 2.0
        })
        exports['qb-target']:AddBoxZone('gunrunning-exit', vector3(895.63, -3242.85, -98.00), 1.5, 0.5, {
            name = 'gunrunning-exit',
            heading = 0,
            minZ = -97.25 - 2,
            maxZ = -99 + 2,
            debugPoly = Shared.Debug,
        }, {
            options = {
                {
                    type = 'client',
                    event = 'ps-weedplanting:client:ExitGunrunning',
                    icon = 'fa-solid fa-warehouse',
                    label = _U('exit_weedlab'),
                }
            },
            distance = 2.0
        })
    end
end)

CreateThread(function ()
    if Shared.Recycle.EnableTp then
        exports['qb-target']:AddBoxZone('recycle-enter', vector3(55.57, 6472.2, 31.43), 1.5, 1.0, {
            name = 'recycle-enter',
            heading = 90,
            minZ = 10.27 - 2,
            maxZ = 40.27 + 2,
            debugPoly = Shared.Debug,
        }, {
            options = {
                {
                    type = 'client',
                    event = 'ps-weedplanting:client:EnterRecycle',
                    icon = 'fa-solid fa-warehouse',
                    label = _U('enter_weedlab'),
                }
            },
            distance = 3.0
        })
        exports['qb-target']:AddBoxZone('recycle-exit', vector3(1073.08, -3102.54, -39.0), 1.5, 0.5, {
            name = 'recycle-exit',
            heading = 0,
            minZ = -40 - 2,
            maxZ = -30 + 2,
            debugPoly = Shared.Debug,
        }, {
            options = {
                {
                    type = 'client',
                    event = 'ps-weedplanting:client:ExitRecycle',
                    icon = 'fa-solid fa-warehouse',
                    label = _U('exit_weedlab'),
                }
            },
            distance = 2.0
        })
    end
end)


RegisterNetEvent('ps-weedplanting:client:EnterLab', function()
    
    local hasItem = QBCore.Functions.HasItem(Shared.LabkeyItem)
    
    if Shared.WeedLab.RequireKey then
        if not hasItem then
            QBCore.Functions.Notify(_U('dont_have_key'), 'error')
            return
        end
    end
    local ped = PlayerPedId()    
    openHouseAnim()
    TriggerServerEvent('ps-weedplanting:server:NotifyLabEntered')
    TriggerServerEvent('ps-weedplanting:server:RemoveLabKey')

    TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 100, "facility_alarm", 0.8)
    SetEntityCoords(ped, 1066.2, -3183.38, -39.16)
    SetEntityHeading(ped, 89.3)
end)

RegisterNetEvent('ps-weedplanting:client:EnterWeapons', function()
    
    local hasItem = QBCore.Functions.HasItem(Shared.WeaponsKeyItem)
    
    if Shared.Weapons.RequireKey then
        if not hasItem then
            QBCore.Functions.Notify(_U('dont_have_key'), 'error')
            return
        end
    end
    local ped = PlayerPedId()    
    openHouseAnim()
    TriggerServerEvent('ps-weedplanting:server:NotifyLabEntered2')
    TriggerServerEvent('ps-weedplanting:server:RemoveWeaponsKey')

    TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 100, "facility_alarm", 0.8)
    SetEntityCoords(ped, 482.52, 4812.08, -58.38)
    SetEntityHeading(ped, 89.3)
end)

RegisterNetEvent('ps-weedplanting:client:EnterGunrunning', function()
    
    local hasItem = QBCore.Functions.HasItem(Shared.GunrunningKeyItem)
    
    if Shared.Gunrunning.RequireKey then
        if not hasItem then
            QBCore.Functions.Notify(_U('dont_have_key'), 'error')
            return
        end
    end
    local ped = PlayerPedId()    
    openHouseAnim()
    TriggerServerEvent('ps-weedplanting:server:NotifyLabEntered3')
    TriggerServerEvent('ps-weedplanting:server:RemoveWeaponsKey')

    TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 100, "facility_alarm", 0.8)
    SetEntityCoords(ped, 894.77, -3245.79, -98.26)
    SetEntityHeading(ped, 89.3)
end)

RegisterNetEvent('ps-weedplanting:client:EnterRecycle', function()
    
    local hasItem = QBCore.Functions.HasItem(Shared.RecycleKeyItem)
    
    if Shared.Recycle.RequireKey then
        if not hasItem then
            QBCore.Functions.Notify(_U('dont_have_key'), 'error')
            return
        end
    end
    local ped = PlayerPedId()    
    openHouseAnim()
    TriggerServerEvent('ps-weedplanting:server:NotifyLabEntered4')
    TriggerServerEvent('ps-weedplanting:server:RemoveRecycleKey')

    TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 100, "facility_alarm", 0.8)
    SetEntityCoords(ped, 1073.0, -3102.49, -39.0)
    SetEntityHeading(ped, 89.3)
end)


RegisterNetEvent('ps-weedplanting:client:ExitLab', function()
    local ped = PlayerPedId()    
    openHouseAnim()
    SetEntityCoords(ped, 1569.67, -2129.59, 78.33)
    SetEntityHeading(ped, 180.95)
end)

RegisterNetEvent('ps-weedplanting:client:ExitWeapons', function()
    local ped = PlayerPedId()    
    openHouseAnim()
    SetEntityCoords(ped, 1287.19, 2846.29, 49.39)
    SetEntityHeading(ped, 180.95)
end)

RegisterNetEvent('ps-weedplanting:client:ExitGunrunning', function()
    local ped = PlayerPedId()    
    openHouseAnim()
    SetEntityCoords(ped, 1802.11, 4709.67, 39.28)
    SetEntityHeading(ped, 180.95)
end)

RegisterNetEvent('ps-weedplanting:client:ExitRecycle', function()
    local ped = PlayerPedId()    
    openHouseAnim()
    SetEntityCoords(ped, 55.55, 6472.18, 31.43)
    SetEntityHeading(ped, 180.95)
end)
-- RegisterNetEvent('ps-weedplanting:client:ProcessBranch', function()
    
--     local hasItem = QBCore.Functions.HasItem(Shared.BranchItem, 1)
    
--     if not hasItem then
--         QBCore.Functions.Notify(_U('dont_have_branch'), 'error', 2500)
--         return
--     end

--     local ped = PlayerPedId()
--     local table = vector4(1045.4, -3197.62, -38.16, 0.0)

--     TaskTurnPedToFaceCoord(ped, table, 1000)
--     Wait(1300)
  
--     QBCore.Functions.Progressbar('weedbranch', _U('processing_branch'), 12000, false, true, {
--         disableMovement = true,
--         disableCarMovement = true,
--         disableMouse = false,
--         disableCombat = true,
--     }, { animDict = "mini@repair", anim = "fixing_a_ped", flags = 8, }, {}, {}, function()
--         TriggerServerEvent('ps-weedplanting:server:ProcessBranch')
--     end, function() -- Cancel
--         QBCore.Functions.Notify(_U('canceled'), 'error', 2500)
--         ClearPedTasks(ped)
--     end)
-- end)

-- RegisterNetEvent('ps-weedplanting:client:PackDryWeed', function()
    
--     local hasItem = QBCore.Functions.HasItem(Shared.WeedItem)
    
--     if not hasItem then
--         QBCore.Functions.Notify(_U('dont_have_enough_dryweed'), 'error', 2500)
--         return
--     end
  
--     local ped = PlayerPedId()
--     local table = vector4(1045.4, -3197.62, -38.16, 0.0)

--     TaskTurnPedToFaceCoord(ped, table, 1000)
--     Wait(1300)
   
--     QBCore.Functions.Progressbar('dryweed', _U('packaging_weed'), 12000, false, true, {
--         disableMovement = true,
--         disableCarMovement = true,
--         disableMouse = false,
--         disableCombat = true,
--     }, { animDict = "mini@repair", anim = "fixing_a_ped", flags = 8, }, {}, {}, function()
--         TriggerServerEvent('ps-weedplanting:server:PackageWeed')
--     end, function() -- Cancel
--         QBCore.Functions.Notify(_U('canceled'), 'error', 2500)
--         ClearPedTasks(ped)
--     end)
-- end)