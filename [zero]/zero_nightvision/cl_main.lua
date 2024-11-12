local QBCore = exports[Config.CoreName]:GetCoreObject()
local mode = 0
local canToggle = false

-- black_quad_helmet
RegisterCommand('toggleNV', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
        
    if QBCore.Functions.HasItem(Config.NVItem) then
        if Config.CheckHelmet then
            if PlayerData.charinfo.gender == 0 then

            if GetPedPropIndex(PlayerPedId(), 0) == 149 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 0 then
                canToggle = true
            elseif GetPedPropIndex(PlayerPedId(), 0) == 148 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 0 then
                canToggle = true
            else
                if PlayerData.charinfo.gender == 1 then
                    if GetPedPropIndex(PlayerPedId(), 0) == 148 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 0 then
                        canToggle = true
                    elseif GetPedPropIndex(PlayerPedId(), 0) == 147 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 0 then
                        canToggle = true
                    end
            else
                canToggle = false
            end
        end
        else
            canToggle = true
        end
    end
        

        if canToggle then
            if mode == 0 then
                QBCore.Functions.Progressbar("random_task", "Acvtivating Goggles", 500, false, true, {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "veh@bike@sport@front@base",
                        anim = "goggles_down",
                        flags = 49,
                    }, {}, {}, function()
                        -- Done
                    end, function()
                        -- Cancel
                    end)
                    Wait(500)
                    if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 148, 0, true)
                    else 
                        if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 147, 0, true)
                        end
                    end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
                SetNightvision(true)
                mode = 1
            elseif mode == 1 then
                SetSeethrough(true)
                mode = 2
            elseif mode == 2 then
                QBCore.Functions.Progressbar("random_task", "Disabling Goggles", 500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@bike@sport@front@base",
                    anim = "goggles_up",
                    flags = 49,
                }, {}, {}, function()
                    -- Done
                end, function()
                    -- Cancel
                end)
                Wait(500)
                if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 149, 0, true)
                else
                if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 148, 0, true)
                end
            end
                SetNightvision(false)
                SetSeethrough(false)
                mode = 0
            end
        end
    end
end)

-- moss_quad_helmet
RegisterCommand('toggleNV2', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
        
    if QBCore.Functions.HasItem(Config.NVItem2) then
        if Config.CheckHelmet2 then
            if PlayerData.charinfo.gender == 0 then

            if GetPedPropIndex(PlayerPedId(), 0) == 149 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 1 then
                canToggle = true
            elseif GetPedPropIndex(PlayerPedId(), 0) == 148 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 1 then
                canToggle = true
            else
                if PlayerData.charinfo.gender == 1 then
                    if GetPedPropIndex(PlayerPedId(), 0) == 148 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 1 then
                        canToggle = true
                    elseif GetPedPropIndex(PlayerPedId(), 0) == 147 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 1 then
                        canToggle = true
                    end
            else
                canToggle = false
            end
        end
        else
            canToggle = true
        end
    end
        

        if canToggle then
            if mode == 0 then
                QBCore.Functions.Progressbar("random_task", "Acvtivating Goggles", 500, false, true, {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "veh@bike@sport@front@base",
                        anim = "goggles_down",
                        flags = 49,
                    }, {}, {}, function()
                        -- Done
                    end, function()
                        -- Cancel
                    end)
                    Wait(500)
                    if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 148, 1, true)
                    else 
                        if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 147, 1, true)
                        end
                    end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
                SetNightvision(true)
                mode = 1
            elseif mode == 1 then
                SetSeethrough(true)
                mode = 2
            elseif mode == 2 then
                QBCore.Functions.Progressbar("random_task", "Disabling Goggles", 500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@bike@sport@front@base",
                    anim = "goggles_up",
                    flags = 49,
                }, {}, {}, function()
                    -- Done
                end, function()
                    -- Cancel
                end)
                Wait(500)
                if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 149, 1, true)
                else
                if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 148, 1, true)
                end
            end
                SetNightvision(false)
                SetSeethrough(false)
                mode = 0
            end
        end
    end
end)

-- brown_quad_helmet
RegisterCommand('toggleNV3', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
        
    if QBCore.Functions.HasItem(Config.NVItem3) then
        if Config.CheckHelmet3 then
            if PlayerData.charinfo.gender == 0 then

            if GetPedPropIndex(PlayerPedId(), 0) == 149 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 2 then
                canToggle = true
            elseif GetPedPropIndex(PlayerPedId(), 0) == 148 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 2 then
                canToggle = true
            else
                if PlayerData.charinfo.gender == 1 then
                    if GetPedPropIndex(PlayerPedId(), 0) == 148 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 2 then
                        canToggle = true
                    elseif GetPedPropIndex(PlayerPedId(), 0) == 147 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 2 then
                        canToggle = true
                    end
            else
                canToggle = false
            end
        end
        else
            canToggle = true
        end
    end
        

        if canToggle then
            if mode == 0 then
                QBCore.Functions.Progressbar("random_task", "Acvtivating Goggles", 500, false, true, {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "veh@bike@sport@front@base",
                        anim = "goggles_down",
                        flags = 49,
                    }, {}, {}, function()
                        -- Done
                    end, function()
                        -- Cancel
                    end)
                    Wait(500)
                    if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 148, 2, true)
                    else 
                        if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 147, 2, true)
                        end
                    end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
                SetNightvision(true)
                mode = 1
            elseif mode == 1 then
                SetSeethrough(true)
                mode = 2
            elseif mode == 2 then
                QBCore.Functions.Progressbar("random_task", "Disabling Goggles", 500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@bike@sport@front@base",
                    anim = "goggles_up",
                    flags = 49,
                }, {}, {}, function()
                    -- Done
                end, function()
                    -- Cancel
                end)
                Wait(500)
                if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 149, 2, true)
                else
                if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 148, 2, true)
                end
            end
                SetNightvision(false)
                SetSeethrough(false)
                mode = 0
            end
        end
    end
end)

-- white_quad_helmet
RegisterCommand('toggleNV4', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
        
    if QBCore.Functions.HasItem(Config.NVItem4) then
        if Config.CheckHelmet4 then
            if PlayerData.charinfo.gender == 0 then

            if GetPedPropIndex(PlayerPedId(), 0) == 149 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 3 then
                canToggle = true
            elseif GetPedPropIndex(PlayerPedId(), 0) == 148 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 3 then
                canToggle = true
            else
                if PlayerData.charinfo.gender == 1 then
                    if GetPedPropIndex(PlayerPedId(), 0) == 148 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 3 then
                        canToggle = true
                    elseif GetPedPropIndex(PlayerPedId(), 0) == 147 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 3 then
                        canToggle = true
                    end
            else
                canToggle = false
            end
        end
        else
            canToggle = true
        end
    end
        

        if canToggle then
            if mode == 0 then
                QBCore.Functions.Progressbar("random_task", "Acvtivating Goggles", 500, false, true, {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "veh@bike@sport@front@base",
                        anim = "goggles_down",
                        flags = 49,
                    }, {}, {}, function()
                        -- Done
                    end, function()
                        -- Cancel
                    end)
                    Wait(500)
                    if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 148, 3, true)
                    else 
                        if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 147, 3, true)
                        end
                    end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
                SetNightvision(true)
                mode = 1
            elseif mode == 1 then
                SetSeethrough(true)
                mode = 2
            elseif mode == 2 then
                QBCore.Functions.Progressbar("random_task", "Disabling Goggles", 500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@bike@sport@front@base",
                    anim = "goggles_up",
                    flags = 49,
                }, {}, {}, function()
                    -- Done
                end, function()
                    -- Cancel
                end)
                Wait(500)
                if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 149, 3, true)
                else
                if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 148, 3, true)
                end
            end
                SetNightvision(false)
                SetSeethrough(false)
                mode = 0
            end
        end
    end
end)

-- leopard_quad_helmet
RegisterCommand('toggleNV5', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
        
    if QBCore.Functions.HasItem(Config.NVItem5) then
        if Config.CheckHelmet5 then
            if PlayerData.charinfo.gender == 0 then

            if GetPedPropIndex(PlayerPedId(), 0) == 149 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 8 then
                canToggle = true
            elseif GetPedPropIndex(PlayerPedId(), 0) == 148 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 8 then
                canToggle = true
            else
                if PlayerData.charinfo.gender == 1 then
                    if GetPedPropIndex(PlayerPedId(), 0) == 148 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 8 then
                        canToggle = true
                    elseif GetPedPropIndex(PlayerPedId(), 0) == 147 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 8 then
                        canToggle = true
                    end
            else
                canToggle = false
            end
        end
        else
            canToggle = true
        end
    end
        

        if canToggle then
            if mode == 0 then
                QBCore.Functions.Progressbar("random_task", "Acvtivating Goggles", 500, false, true, {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "veh@bike@sport@front@base",
                        anim = "goggles_down",
                        flags = 49,
                    }, {}, {}, function()
                        -- Done
                    end, function()
                        -- Cancel
                    end)
                    Wait(500)
                    if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 148, 8, true)
                    else 
                        if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 147, 8, true)
                        end
                    end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
                SetNightvision(true)
                mode = 1
            elseif mode == 1 then
                SetSeethrough(true)
                mode = 2
            elseif mode == 2 then
                QBCore.Functions.Progressbar("random_task", "Disabling Goggles", 500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@bike@sport@front@base",
                    anim = "goggles_up",
                    flags = 49,
                }, {}, {}, function()
                    -- Done
                end, function()
                    -- Cancel
                end)
                Wait(500)
                if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 149, 8, true)
                else
                if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 148, 8, true)
                end
            end
                SetNightvision(false)
                SetSeethrough(false)
                mode = 0
            end
        end
    end
end)

-- brown_digital_quad_helmet
RegisterCommand('toggleNV6', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
        
    if QBCore.Functions.HasItem(Config.NVItem6) then
        if Config.CheckHelmet6 then
            if PlayerData.charinfo.gender == 0 then

            if GetPedPropIndex(PlayerPedId(), 0) == 149 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 9 then
                canToggle = true
            elseif GetPedPropIndex(PlayerPedId(), 0) == 148 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 9 then
                canToggle = true
            else
                if PlayerData.charinfo.gender == 1 then
                    if GetPedPropIndex(PlayerPedId(), 0) == 148 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 9 then
                        canToggle = true
                    elseif GetPedPropIndex(PlayerPedId(), 0) == 147 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 9 then
                        canToggle = true
                    end
            else
                canToggle = false
            end
        end
        else
            canToggle = true
        end
    end
        

        if canToggle then
            if mode == 0 then
                QBCore.Functions.Progressbar("random_task", "Acvtivating Goggles", 500, false, true, {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "veh@bike@sport@front@base",
                        anim = "goggles_down",
                        flags = 49,
                    }, {}, {}, function()
                        -- Done
                    end, function()
                        -- Cancel
                    end)
                    Wait(500)
                    if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 148, 9, true)
                    else 
                        if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 147, 9, true)
                        end
                    end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
                SetNightvision(true)
                mode = 1
            elseif mode == 1 then
                SetSeethrough(true)
                mode = 2
            elseif mode == 2 then
                QBCore.Functions.Progressbar("random_task", "Disabling Goggles", 500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@bike@sport@front@base",
                    anim = "goggles_up",
                    flags = 49,
                }, {}, {}, function()
                    -- Done
                end, function()
                    -- Cancel
                end)
                Wait(500)
                if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 149, 9, true)
                else
                if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 148, 9, true)
                end
            end
                SetNightvision(false)
                SetSeethrough(false)
                mode = 0
            end
        end
    end
end)

-- tiger_quad_helmet
RegisterCommand('toggleNV7', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
        
    if QBCore.Functions.HasItem(Config.NVItem7) then
        if Config.CheckHelmet7 then
            if PlayerData.charinfo.gender == 0 then

            if GetPedPropIndex(PlayerPedId(), 0) == 149 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 10 then
                canToggle = true
            elseif GetPedPropIndex(PlayerPedId(), 0) == 148 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 10 then
                canToggle = true
            else
                if PlayerData.charinfo.gender == 1 then
                    if GetPedPropIndex(PlayerPedId(), 0) == 148 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 10 then
                        canToggle = true
                    elseif GetPedPropIndex(PlayerPedId(), 0) == 147 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 10 then
                        canToggle = true
                    end
            else
                canToggle = false
            end
        end
        else
            canToggle = true
        end
    end
        

        if canToggle then
            if mode == 0 then
                QBCore.Functions.Progressbar("random_task", "Acvtivating Goggles", 500, false, true, {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "veh@bike@sport@front@base",
                        anim = "goggles_down",
                        flags = 49,
                    }, {}, {}, function()
                        -- Done
                    end, function()
                        -- Cancel
                    end)
                    Wait(500)
                    if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 148, 10, true)
                    else 
                        if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 147, 10, true)
                        end
                    end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
                SetNightvision(true)
                mode = 1
            elseif mode == 1 then
                SetSeethrough(true)
                mode = 2
            elseif mode == 2 then
                QBCore.Functions.Progressbar("random_task", "Disabling Goggles", 500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@bike@sport@front@base",
                    anim = "goggles_up",
                    flags = 49,
                }, {}, {}, function()
                    -- Done
                end, function()
                    -- Cancel
                end)
                Wait(500)
                if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 149, 10, true)
                else
                if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 148, 10, true)
                end
            end
                SetNightvision(false)
                SetSeethrough(false)
                mode = 0
            end
        end
    end
end)

-- aqua_camo_quad_helmet
RegisterCommand('toggleNV8', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
        
    if QBCore.Functions.HasItem(Config.NVItem8) then
        if Config.CheckHelmet8 then
            if PlayerData.charinfo.gender == 0 then

            if GetPedPropIndex(PlayerPedId(), 0) == 149 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 18 then
                canToggle = true
            elseif GetPedPropIndex(PlayerPedId(), 0) == 148 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 18 then
                canToggle = true
            else
                if PlayerData.charinfo.gender == 1 then
                    if GetPedPropIndex(PlayerPedId(), 0) == 148 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 18 then
                        canToggle = true
                    elseif GetPedPropIndex(PlayerPedId(), 0) == 147 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 18 then
                        canToggle = true
                    end
            else
                canToggle = false
            end
        end
        else
            canToggle = true
        end
    end
        

        if canToggle then
            if mode == 0 then
                QBCore.Functions.Progressbar("random_task", "Acvtivating Goggles", 500, false, true, {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "veh@bike@sport@front@base",
                        anim = "goggles_down",
                        flags = 49,
                    }, {}, {}, function()
                        -- Done
                    end, function()
                        -- Cancel
                    end)
                    Wait(500)
                    if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 148, 18, true)
                    else 
                        if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 147, 18, true)
                        end
                    end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
                SetNightvision(true)
                mode = 1
            elseif mode == 1 then
                SetSeethrough(true)
                mode = 2
            elseif mode == 2 then
                QBCore.Functions.Progressbar("random_task", "Disabling Goggles", 500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@bike@sport@front@base",
                    anim = "goggles_up",
                    flags = 49,
                }, {}, {}, function()
                    -- Done
                end, function()
                    -- Cancel
                end)
                Wait(500)
                if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 149, 18, true)
                else
                if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 148, 18, true)
                end
            end
                SetNightvision(false)
                SetSeethrough(false)
                mode = 0
            end
        end
    end
end)

-- splinter_quad_helmet
RegisterCommand('toggleNV9', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
        
    if QBCore.Functions.HasItem(Config.NVItem9) then
        if Config.CheckHelmet9 then
            if PlayerData.charinfo.gender == 0 then

            if GetPedPropIndex(PlayerPedId(), 0) == 149 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 19 then
                canToggle = true
            elseif GetPedPropIndex(PlayerPedId(), 0) == 148 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 19 then
                canToggle = true
            else
                if PlayerData.charinfo.gender == 1 then
                    if GetPedPropIndex(PlayerPedId(), 0) == 148 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 19 then
                        canToggle = true
                    elseif GetPedPropIndex(PlayerPedId(), 0) == 147 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 19 then
                        canToggle = true
                    end
            else
                canToggle = false
            end
        end
        else
            canToggle = true
        end
    end
        

        if canToggle then
            if mode == 0 then
                QBCore.Functions.Progressbar("random_task", "Acvtivating Goggles", 500, false, true, {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "veh@bike@sport@front@base",
                        anim = "goggles_down",
                        flags = 49,
                    }, {}, {}, function()
                        -- Done
                    end, function()
                        -- Cancel
                    end)
                    Wait(500)
                    if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 148, 19, true)
                    else 
                        if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 147, 19, true)
                        end
                    end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
                SetNightvision(true)
                mode = 1
            elseif mode == 1 then
                SetSeethrough(true)
                mode = 2
            elseif mode == 2 then
                QBCore.Functions.Progressbar("random_task", "Disabling Goggles", 500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@bike@sport@front@base",
                    anim = "goggles_up",
                    flags = 49,
                }, {}, {}, function()
                    -- Done
                end, function()
                    -- Cancel
                end)
                Wait(500)
                if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 149, 19, true)
                else
                if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 148, 19, true)
                end
            end
                SetNightvision(false)
                SetSeethrough(false)
                mode = 0
            end
        end
    end
end)

-- brushstroke_quad_helmet
RegisterCommand('toggleNV10', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
        
    if QBCore.Functions.HasItem(Config.NVItem10) then
        if Config.CheckHelmet10 then
            if PlayerData.charinfo.gender == 0 then

            if GetPedPropIndex(PlayerPedId(), 0) == 149 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 22 then
                canToggle = true
            elseif GetPedPropIndex(PlayerPedId(), 0) == 148 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 22 then
                canToggle = true
            else
                if PlayerData.charinfo.gender == 1 then
                    if GetPedPropIndex(PlayerPedId(), 0) == 148 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 22 then
                        canToggle = true
                    elseif GetPedPropIndex(PlayerPedId(), 0) == 147 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 22 then
                        canToggle = true
                    end
            else
                canToggle = false
            end
        end
        else
            canToggle = true
        end
    end
        

        if canToggle then
            if mode == 0 then
                QBCore.Functions.Progressbar("random_task", "Acvtivating Goggles", 500, false, true, {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "veh@bike@sport@front@base",
                        anim = "goggles_down",
                        flags = 49,
                    }, {}, {}, function()
                        -- Done
                    end, function()
                        -- Cancel
                    end)
                    Wait(500)
                    if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 148, 22, true)
                    else 
                        if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 147, 22, true)
                        end
                    end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
                SetNightvision(true)
                mode = 1
            elseif mode == 1 then
                SetSeethrough(true)
                mode = 2
            elseif mode == 2 then
                QBCore.Functions.Progressbar("random_task", "Disabling Goggles", 500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@bike@sport@front@base",
                    anim = "goggles_up",
                    flags = 49,
                }, {}, {}, function()
                    -- Done
                end, function()
                    -- Cancel
                end)
                Wait(500)
                if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 149, 22, true)
                else
                if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 148, 22, true)
                end
            end
                SetNightvision(false)
                SetSeethrough(false)
                mode = 0
            end
        end
    end
end)

-- black_red_quad_helmet
RegisterCommand('toggleNV11', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
        
    if QBCore.Functions.HasItem(Config.NVItem11) then
        if Config.CheckHelmet11 then
            if PlayerData.charinfo.gender == 0 then

            if GetPedPropIndex(PlayerPedId(), 0) == 149 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 24 then
                canToggle = true
            elseif GetPedPropIndex(PlayerPedId(), 0) == 148 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 24 then
                canToggle = true
            else
                if PlayerData.charinfo.gender == 1 then
                    if GetPedPropIndex(PlayerPedId(), 0) == 148 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 24 then
                        canToggle = true
                    elseif GetPedPropIndex(PlayerPedId(), 0) == 147 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 24 then
                        canToggle = true
                    end
            else
                canToggle = false
            end
        end
        else
            canToggle = true
        end
    end
        

        if canToggle then
            if mode == 0 then
                QBCore.Functions.Progressbar("random_task", "Acvtivating Goggles", 500, false, true, {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "veh@bike@sport@front@base",
                        anim = "goggles_down",
                        flags = 49,
                    }, {}, {}, function()
                        -- Done
                    end, function()
                        -- Cancel
                    end)
                    Wait(500)
                    if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 148, 24, true)
                    else 
                        if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 147, 24, true)
                        end
                    end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
                SetNightvision(true)
                mode = 1
            elseif mode == 1 then
                SetSeethrough(true)
                mode = 2
            elseif mode == 2 then
                QBCore.Functions.Progressbar("random_task", "Disabling Goggles", 500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@bike@sport@front@base",
                    anim = "goggles_up",
                    flags = 49,
                }, {}, {}, function()
                    -- Done
                end, function()
                    -- Cancel
                end)
                Wait(500)
                if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 149, 24, true)
                else
                if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 148, 24, true)
                end
            end
                SetNightvision(false)
                SetSeethrough(false)
                mode = 0
            end
        end
    end
end)

-- zebra_quad_helmet
RegisterCommand('toggleNV12', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
        
    if QBCore.Functions.HasItem(Config.NVItem12) then
        if Config.CheckHelmet12 then
            if PlayerData.charinfo.gender == 0 then

            if GetPedPropIndex(PlayerPedId(), 0) == 149 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 25 then
                canToggle = true
            elseif GetPedPropIndex(PlayerPedId(), 0) == 148 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 25 then
                canToggle = true
            else
                if PlayerData.charinfo.gender == 1 then
                    if GetPedPropIndex(PlayerPedId(), 0) == 148 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 25 then
                        canToggle = true
                    elseif GetPedPropIndex(PlayerPedId(), 0) == 147 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 25 then
                        canToggle = true
                    end
            else
                canToggle = false
            end
        end
        else
            canToggle = true
        end
    end
        

        if canToggle then
            if mode == 0 then
                QBCore.Functions.Progressbar("random_task", "Acvtivating Goggles", 500, false, true, {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "veh@bike@sport@front@base",
                        anim = "goggles_down",
                        flags = 49,
                    }, {}, {}, function()
                        -- Done
                    end, function()
                        -- Cancel
                    end)
                    Wait(500)
                    if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 148, 25, true)
                    else 
                        if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 147, 25, true)
                        end
                    end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
                SetNightvision(true)
                mode = 1
            elseif mode == 1 then
                SetSeethrough(true)
                mode = 2
            elseif mode == 2 then
                QBCore.Functions.Progressbar("random_task", "Disabling Goggles", 500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@bike@sport@front@base",
                    anim = "goggles_up",
                    flags = 49,
                }, {}, {}, function()
                    -- Done
                end, function()
                    -- Cancel
                end)
                Wait(500)
                if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 149, 25, true)
                else
                if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 148, 25, true)
                end
            end
                SetNightvision(false)
                SetSeethrough(false)
                mode = 0
            end
        end
    end
end)

-- pink_camo_quad_helmet
RegisterCommand('toggleNV13', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
        
    if QBCore.Functions.HasItem(Config.NVItem13) then
        if Config.CheckHelmet13 then
            if PlayerData.charinfo.gender == 0 then

            if GetPedPropIndex(PlayerPedId(), 0) == 149 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 7 then
                canToggle = true
            elseif GetPedPropIndex(PlayerPedId(), 0) == 148 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 7 then
                canToggle = true
            else
                if PlayerData.charinfo.gender == 1 then
                    if GetPedPropIndex(PlayerPedId(), 0) == 148 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 7 then
                        canToggle = true
                    elseif GetPedPropIndex(PlayerPedId(), 0) == 147 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 7 then
                        canToggle = true
                    end
            else
                canToggle = false
            end
        end
        else
            canToggle = true
        end
    end
        

        if canToggle then
            if mode == 0 then
                QBCore.Functions.Progressbar("random_task", "Acvtivating Goggles", 500, false, true, {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "veh@bike@sport@front@base",
                        anim = "goggles_down",
                        flags = 49,
                    }, {}, {}, function()
                        -- Done
                    end, function()
                        -- Cancel
                    end)
                    Wait(500)
                    if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 148, 7, true)
                    else 
                        if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 147, 7, true)
                        end
                    end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
                SetNightvision(true)
                mode = 1
            elseif mode == 1 then
                SetSeethrough(true)
                mode = 2
            elseif mode == 2 then
                QBCore.Functions.Progressbar("random_task", "Disabling Goggles", 500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@bike@sport@front@base",
                    anim = "goggles_up",
                    flags = 49,
                }, {}, {}, function()
                    -- Done
                end, function()
                    -- Cancel
                end)
                Wait(500)
                if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 149, 7, true)
                else
                if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 148, 7, true)
                end
            end
                SetNightvision(false)
                SetSeethrough(false)
                mode = 0
            end
        end
    end
end)

-- desert_quad_helmet
RegisterCommand('toggleNV14', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
        
    if QBCore.Functions.HasItem(Config.NVItem14) then
        if Config.CheckHelmet14 then
            if PlayerData.charinfo.gender == 0 then

            if GetPedPropIndex(PlayerPedId(), 0) == 149 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 9 then
                canToggle = true
            elseif GetPedPropIndex(PlayerPedId(), 0) == 148 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 9 then
                canToggle = true
            else
                if PlayerData.charinfo.gender == 1 then
                    if GetPedPropIndex(PlayerPedId(), 0) == 148 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 9 then
                        canToggle = true
                    elseif GetPedPropIndex(PlayerPedId(), 0) == 147 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 9 then
                        canToggle = true
                    end
            else
                canToggle = false
            end
        end
        else
            canToggle = true
        end
    end
        

        if canToggle then
            if mode == 0 then
                QBCore.Functions.Progressbar("random_task", "Acvtivating Goggles", 500, false, true, {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "veh@bike@sport@front@base",
                        anim = "goggles_down",
                        flags = 49,
                    }, {}, {}, function()
                        -- Done
                    end, function()
                        -- Cancel
                    end)
                    Wait(500)
                    if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 148, 9, true)
                    else 
                        if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 147, 9, true)
                        end
                    end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
                SetNightvision(true)
                mode = 1
            elseif mode == 1 then
                SetSeethrough(true)
                mode = 2
            elseif mode == 2 then
                QBCore.Functions.Progressbar("random_task", "Disabling Goggles", 500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@bike@sport@front@base",
                    anim = "goggles_up",
                    flags = 49,
                }, {}, {}, function()
                    -- Done
                end, function()
                    -- Cancel
                end)
                Wait(500)
                if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 149, 9, true)
                else
                if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 148, 9, true)
                end
            end
                SetNightvision(false)
                SetSeethrough(false)
                mode = 0
            end
        end
    end
end)

-- black_dual_helmet
RegisterCommand('toggleNV15', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
        
    if QBCore.Functions.HasItem(Config.NVItem15) then
        if Config.CheckHelmet15 then
            if PlayerData.charinfo.gender == 0 then

            if GetPedPropIndex(PlayerPedId(), 0) == 147 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 0 then
                canToggle = true
            elseif GetPedPropIndex(PlayerPedId(), 0) == 146 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 0 then
                canToggle = true
            else
                if PlayerData.charinfo.gender == 1 then
                    if GetPedPropIndex(PlayerPedId(), 0) == 146 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 0 then
                        canToggle = true
                    elseif GetPedPropIndex(PlayerPedId(), 0) == 145 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 0 then
                        canToggle = true
                    end
            else
                canToggle = false
            end
        end
        else
            canToggle = true
        end
    end
        

        if canToggle then
            if mode == 0 then
                QBCore.Functions.Progressbar("random_task", "Acvtivating Goggles", 500, false, true, {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "veh@bike@sport@front@base",
                        anim = "goggles_down",
                        flags = 49,
                    }, {}, {}, function()
                        -- Done
                    end, function()
                        -- Cancel
                    end)
                    Wait(500)
                    if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 146, 0, true)
                    else 
                        if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 145, 0, true)
                        end
                    end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
                SetNightvision(true)
                mode = 1
            elseif mode == 1 then
                QBCore.Functions.Progressbar("random_task", "Disabling Goggles", 500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@bike@sport@front@base",
                    anim = "goggles_up",
                    flags = 49,
                }, {}, {}, function()
                    -- Done
                end, function()
                    -- Cancel
                end)
                Wait(500)
                if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 147, 0, true)
                else
                if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 146, 0, true)
                end
            end
                SetNightvision(false)
                SetSeethrough(false)
                mode = 0
            end
        end
    end
end)

-- moss_dual_helmet
RegisterCommand('toggleNV16', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
        
    if QBCore.Functions.HasItem(Config.NVItem16) then
        if Config.CheckHelmet16 then
            if PlayerData.charinfo.gender == 0 then

            if GetPedPropIndex(PlayerPedId(), 0) == 147 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 1 then
                canToggle = true
            elseif GetPedPropIndex(PlayerPedId(), 0) == 146 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 1 then
                canToggle = true
            else
                if PlayerData.charinfo.gender == 1 then
                    if GetPedPropIndex(PlayerPedId(), 0) == 146 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 1 then
                        canToggle = true
                    elseif GetPedPropIndex(PlayerPedId(), 0) == 145 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 1 then
                        canToggle = true
                    end
            else
                canToggle = false
            end
        end
        else
            canToggle = true
        end
    end
        

        if canToggle then
            if mode == 0 then
                QBCore.Functions.Progressbar("random_task", "Acvtivating Goggles", 500, false, true, {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "veh@bike@sport@front@base",
                        anim = "goggles_down",
                        flags = 49,
                    }, {}, {}, function()
                        -- Done
                    end, function()
                        -- Cancel
                    end)
                    Wait(500)
                    if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 146, 1, true)
                    else 
                        if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 145, 1, true)
                        end
                    end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
                SetNightvision(true)
                mode = 1
            elseif mode == 1 then
                QBCore.Functions.Progressbar("random_task", "Disabling Goggles", 500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@bike@sport@front@base",
                    anim = "goggles_up",
                    flags = 49,
                }, {}, {}, function()
                    -- Done
                end, function()
                    -- Cancel
                end)
                Wait(500)
                if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 147, 1, true)
                else
                if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 146, 1, true)
                end
            end
                SetNightvision(false)
                SetSeethrough(false)
                mode = 0
            end
        end
    end
end)

-- brown_dual_helmet
RegisterCommand('toggleNV17', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
        
    if QBCore.Functions.HasItem(Config.NVItem17) then
        if Config.CheckHelmet17 then
            if PlayerData.charinfo.gender == 0 then

            if GetPedPropIndex(PlayerPedId(), 0) == 147 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 2 then
                canToggle = true
            elseif GetPedPropIndex(PlayerPedId(), 0) == 146 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 2 then
                canToggle = true
            else
                if PlayerData.charinfo.gender == 1 then
                    if GetPedPropIndex(PlayerPedId(), 0) == 146 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 2 then
                        canToggle = true
                    elseif GetPedPropIndex(PlayerPedId(), 0) == 145 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 2 then
                        canToggle = true
                    end
            else
                canToggle = false
            end
        end
        else
            canToggle = true
        end
    end
        

        if canToggle then
            if mode == 0 then
                QBCore.Functions.Progressbar("random_task", "Acvtivating Goggles", 500, false, true, {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "veh@bike@sport@front@base",
                        anim = "goggles_down",
                        flags = 49,
                    }, {}, {}, function()
                        -- Done
                    end, function()
                        -- Cancel
                    end)
                    Wait(500)
                    if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 146, 2, true)
                    else 
                        if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 145, 2, true)
                        end
                    end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
                SetNightvision(true)
                mode = 1
            elseif mode == 1 then
                QBCore.Functions.Progressbar("random_task", "Disabling Goggles", 500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@bike@sport@front@base",
                    anim = "goggles_up",
                    flags = 49,
                }, {}, {}, function()
                    -- Done
                end, function()
                    -- Cancel
                end)
                Wait(500)
                if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 147, 2, true)
                else
                if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 146, 2, true)
                end
            end
                SetNightvision(false)
                SetSeethrough(false)
                mode = 0
            end
        end
    end
end)

-- white_dual_helmet
RegisterCommand('toggleNV18', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
        
    if QBCore.Functions.HasItem(Config.NVItem18) then
        if Config.CheckHelmet18 then
            if PlayerData.charinfo.gender == 0 then

            if GetPedPropIndex(PlayerPedId(), 0) == 147 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 3 then
                canToggle = true
            elseif GetPedPropIndex(PlayerPedId(), 0) == 146 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 3 then
                canToggle = true
            else
                if PlayerData.charinfo.gender == 1 then
                    if GetPedPropIndex(PlayerPedId(), 0) == 146 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 3 then
                        canToggle = true
                    elseif GetPedPropIndex(PlayerPedId(), 0) == 145 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 3 then
                        canToggle = true
                    end
            else
                canToggle = false
            end
        end
        else
            canToggle = true
        end
    end
        

        if canToggle then
            if mode == 0 then
                QBCore.Functions.Progressbar("random_task", "Acvtivating Goggles", 500, false, true, {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "veh@bike@sport@front@base",
                        anim = "goggles_down",
                        flags = 49,
                    }, {}, {}, function()
                        -- Done
                    end, function()
                        -- Cancel
                    end)
                    Wait(500)
                    if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 146, 3, true)
                    else 
                        if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 145, 3, true)
                        end
                    end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
                SetNightvision(true)
                mode = 1
            elseif mode == 1 then
                QBCore.Functions.Progressbar("random_task", "Disabling Goggles", 500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@bike@sport@front@base",
                    anim = "goggles_up",
                    flags = 49,
                }, {}, {}, function()
                    -- Done
                end, function()
                    -- Cancel
                end)
                Wait(500)
                if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 147, 3, true)
                else
                if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 146, 3, true)
                end
            end
                SetNightvision(false)
                SetSeethrough(false)
                mode = 0
            end
        end
    end
end)

-- leopard_dual_helmet
RegisterCommand('toggleNV19', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
        
    if QBCore.Functions.HasItem(Config.NVItem19) then
        if Config.CheckHelmet19 then
            if PlayerData.charinfo.gender == 0 then

            if GetPedPropIndex(PlayerPedId(), 0) == 147 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 8 then
                canToggle = true
            elseif GetPedPropIndex(PlayerPedId(), 0) == 146 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 8 then
                canToggle = true
            else
                if PlayerData.charinfo.gender == 1 then
                    if GetPedPropIndex(PlayerPedId(), 0) == 146 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 8 then
                        canToggle = true
                    elseif GetPedPropIndex(PlayerPedId(), 0) == 145 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 8 then
                        canToggle = true
                    end
            else
                canToggle = false
            end
        end
        else
            canToggle = true
        end
    end
        

        if canToggle then
            if mode == 0 then
                QBCore.Functions.Progressbar("random_task", "Acvtivating Goggles", 500, false, true, {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "veh@bike@sport@front@base",
                        anim = "goggles_down",
                        flags = 49,
                    }, {}, {}, function()
                        -- Done
                    end, function()
                        -- Cancel
                    end)
                    Wait(500)
                    if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 146, 8, true)
                    else 
                        if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 145, 8, true)
                        end
                    end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
                SetNightvision(true)
                mode = 1
            elseif mode == 1 then
                QBCore.Functions.Progressbar("random_task", "Disabling Goggles", 500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@bike@sport@front@base",
                    anim = "goggles_up",
                    flags = 49,
                }, {}, {}, function()
                    -- Done
                end, function()
                    -- Cancel
                end)
                Wait(500)
                if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 147, 8, true)
                else
                if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 146, 8, true)
                end
            end
                SetNightvision(false)
                SetSeethrough(false)
                mode = 0
            end
        end
    end
end)

-- brown_digital_dual_helmet
RegisterCommand('toggleNV20', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
        
    if QBCore.Functions.HasItem(Config.NVItem20) then
        if Config.CheckHelmet20 then
            if PlayerData.charinfo.gender == 0 then

            if GetPedPropIndex(PlayerPedId(), 0) == 147 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 9 then
                canToggle = true
            elseif GetPedPropIndex(PlayerPedId(), 0) == 146 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 9 then
                canToggle = true
            else
                if PlayerData.charinfo.gender == 1 then
                    if GetPedPropIndex(PlayerPedId(), 0) == 146 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 9 then
                        canToggle = true
                    elseif GetPedPropIndex(PlayerPedId(), 0) == 145 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 9 then
                        canToggle = true
                    end
            else
                canToggle = false
            end
        end
        else
            canToggle = true
        end
    end
        

        if canToggle then
            if mode == 0 then
                QBCore.Functions.Progressbar("random_task", "Acvtivating Goggles", 500, false, true, {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "veh@bike@sport@front@base",
                        anim = "goggles_down",
                        flags = 49,
                    }, {}, {}, function()
                        -- Done
                    end, function()
                        -- Cancel
                    end)
                    Wait(500)
                    if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 146, 9, true)
                    else 
                        if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 145, 9, true)
                        end
                    end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
                SetNightvision(true)
                mode = 1
            elseif mode == 1 then
                QBCore.Functions.Progressbar("random_task", "Disabling Goggles", 500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@bike@sport@front@base",
                    anim = "goggles_up",
                    flags = 49,
                }, {}, {}, function()
                    -- Done
                end, function()
                    -- Cancel
                end)
                Wait(500)
                if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 147, 9, true)
                else
                if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 146, 9, true)
                end
            end
                SetNightvision(false)
                SetSeethrough(false)
                mode = 0
            end
        end
    end
end)

-- tiger_dual_helmet
RegisterCommand('toggleNV21', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
        
    if QBCore.Functions.HasItem(Config.NVItem21) then
        if Config.CheckHelmet21 then
            if PlayerData.charinfo.gender == 0 then

            if GetPedPropIndex(PlayerPedId(), 0) == 147 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 10 then
                canToggle = true
            elseif GetPedPropIndex(PlayerPedId(), 0) == 146 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 10 then
                canToggle = true
            else
                if PlayerData.charinfo.gender == 1 then
                    if GetPedPropIndex(PlayerPedId(), 0) == 146 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 10 then
                        canToggle = true
                    elseif GetPedPropIndex(PlayerPedId(), 0) == 145 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 10 then
                        canToggle = true
                    end
            else
                canToggle = false
            end
        end
        else
            canToggle = true
        end
    end
        

        if canToggle then
            if mode == 0 then
                QBCore.Functions.Progressbar("random_task", "Acvtivating Goggles", 500, false, true, {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "veh@bike@sport@front@base",
                        anim = "goggles_down",
                        flags = 49,
                    }, {}, {}, function()
                        -- Done
                    end, function()
                        -- Cancel
                    end)
                    Wait(500)
                    if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 146, 10, true)
                    else 
                        if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 145, 10, true)
                        end
                    end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
                SetNightvision(true)
                mode = 1
            elseif mode == 1 then
                QBCore.Functions.Progressbar("random_task", "Disabling Goggles", 500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@bike@sport@front@base",
                    anim = "goggles_up",
                    flags = 49,
                }, {}, {}, function()
                    -- Done
                end, function()
                    -- Cancel
                end)
                Wait(500)
                if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 147, 10, true)
                else
                if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 146, 10, true)
                end
            end
                SetNightvision(false)
                SetSeethrough(false)
                mode = 0
            end
        end
    end
end)

-- aqua_camo_dual_helmet
RegisterCommand('toggleNV22', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
        
    if QBCore.Functions.HasItem(Config.NVItem22) then
        if Config.CheckHelmet22 then
            if PlayerData.charinfo.gender == 0 then

            if GetPedPropIndex(PlayerPedId(), 0) == 147 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 18 then
                canToggle = true
            elseif GetPedPropIndex(PlayerPedId(), 0) == 146 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 18 then
                canToggle = true
            else
                if PlayerData.charinfo.gender == 1 then
                    if GetPedPropIndex(PlayerPedId(), 0) == 146 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 18 then
                        canToggle = true
                    elseif GetPedPropIndex(PlayerPedId(), 0) == 145 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 18 then
                        canToggle = true
                    end
            else
                canToggle = false
            end
        end
        else
            canToggle = true
        end
    end
        

        if canToggle then
            if mode == 0 then
                QBCore.Functions.Progressbar("random_task", "Acvtivating Goggles", 500, false, true, {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "veh@bike@sport@front@base",
                        anim = "goggles_down",
                        flags = 49,
                    }, {}, {}, function()
                        -- Done
                    end, function()
                        -- Cancel
                    end)
                    Wait(500)
                    if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 146, 18, true)
                    else 
                        if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 145, 18, true)
                        end
                    end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
                SetNightvision(true)
                mode = 1
            elseif mode == 1 then
                QBCore.Functions.Progressbar("random_task", "Disabling Goggles", 500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@bike@sport@front@base",
                    anim = "goggles_up",
                    flags = 49,
                }, {}, {}, function()
                    -- Done
                end, function()
                    -- Cancel
                end)
                Wait(500)
                if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 147, 18, true)
                else
                if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 146, 18, true)
                end
            end
                SetNightvision(false)
                SetSeethrough(false)
                mode = 0
            end
        end
    end
end)

-- splinter_dual_helmet
RegisterCommand('toggleNV23', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
        
    if QBCore.Functions.HasItem(Config.NVItem23) then
        if Config.CheckHelmet23 then
            if PlayerData.charinfo.gender == 0 then

            if GetPedPropIndex(PlayerPedId(), 0) == 147 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 19 then
                canToggle = true
            elseif GetPedPropIndex(PlayerPedId(), 0) == 146 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 19 then
                canToggle = true
            else
                if PlayerData.charinfo.gender == 1 then
                    if GetPedPropIndex(PlayerPedId(), 0) == 146 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 19 then
                        canToggle = true
                    elseif GetPedPropIndex(PlayerPedId(), 0) == 145 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 19 then
                        canToggle = true
                    end
            else
                canToggle = false
            end
        end
        else
            canToggle = true
        end
    end
        

        if canToggle then
            if mode == 0 then
                QBCore.Functions.Progressbar("random_task", "Acvtivating Goggles", 500, false, true, {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "veh@bike@sport@front@base",
                        anim = "goggles_down",
                        flags = 49,
                    }, {}, {}, function()
                        -- Done
                    end, function()
                        -- Cancel
                    end)
                    Wait(500)
                    if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 146, 19, true)
                    else 
                        if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 145, 19, true)
                        end
                    end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
                SetNightvision(true)
                mode = 1
            elseif mode == 1 then
                QBCore.Functions.Progressbar("random_task", "Disabling Goggles", 500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@bike@sport@front@base",
                    anim = "goggles_up",
                    flags = 49,
                }, {}, {}, function()
                    -- Done
                end, function()
                    -- Cancel
                end)
                Wait(500)
                if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 147, 19, true)
                else
                if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 146, 19, true)
                end
            end
                SetNightvision(false)
                SetSeethrough(false)
                mode = 0
            end
        end
    end
end)

-- brushstroke_quad_helmet
RegisterCommand('toggleNV24', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
        
    if QBCore.Functions.HasItem(Config.NVItem24) then
        if Config.CheckHelmet24 then
            if PlayerData.charinfo.gender == 0 then

            if GetPedPropIndex(PlayerPedId(), 0) == 147 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 22 then
                canToggle = true
            elseif GetPedPropIndex(PlayerPedId(), 0) == 146 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 22 then
                canToggle = true
            else
                if PlayerData.charinfo.gender == 1 then
                    if GetPedPropIndex(PlayerPedId(), 0) == 146 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 22 then
                        canToggle = true
                    elseif GetPedPropIndex(PlayerPedId(), 0) == 145 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 22 then
                        canToggle = true
                    end
            else
                canToggle = false
            end
        end
        else
            canToggle = true
        end
    end
        

        if canToggle then
            if mode == 0 then
                QBCore.Functions.Progressbar("random_task", "Acvtivating Goggles", 500, false, true, {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "veh@bike@sport@front@base",
                        anim = "goggles_down",
                        flags = 49,
                    }, {}, {}, function()
                        -- Done
                    end, function()
                        -- Cancel
                    end)
                    Wait(500)
                    if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 146, 22, true)
                    else 
                        if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 145, 22, true)
                        end
                    end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
                SetNightvision(true)
                mode = 1
            elseif mode == 1 then
                QBCore.Functions.Progressbar("random_task", "Disabling Goggles", 500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@bike@sport@front@base",
                    anim = "goggles_up",
                    flags = 49,
                }, {}, {}, function()
                    -- Done
                end, function()
                    -- Cancel
                end)
                Wait(500)
                if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 147, 22, true)
                else
                if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 146, 22, true)
                end
            end
                SetNightvision(false)
                SetSeethrough(false)
                mode = 0
            end
        end
    end
end)

-- black_red_dual_helmet
RegisterCommand('toggleNV25', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
        
    if QBCore.Functions.HasItem(Config.NVItem25) then
        if Config.CheckHelmet25 then
            if PlayerData.charinfo.gender == 0 then

            if GetPedPropIndex(PlayerPedId(), 0) == 147 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 24 then
                canToggle = true
            elseif GetPedPropIndex(PlayerPedId(), 0) == 146 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 24 then
                canToggle = true
            else
                if PlayerData.charinfo.gender == 1 then
                    if GetPedPropIndex(PlayerPedId(), 0) == 146 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 24 then
                        canToggle = true
                    elseif GetPedPropIndex(PlayerPedId(), 0) == 145 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 24 then
                        canToggle = true
                    end
            else
                canToggle = false
            end
        end
        else
            canToggle = true
        end
    end
        

        if canToggle then
            if mode == 0 then
                QBCore.Functions.Progressbar("random_task", "Acvtivating Goggles", 500, false, true, {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "veh@bike@sport@front@base",
                        anim = "goggles_down",
                        flags = 49,
                    }, {}, {}, function()
                        -- Done
                    end, function()
                        -- Cancel
                    end)
                    Wait(500)
                    if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 146, 24, true)
                    else 
                        if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 145, 24, true)
                        end
                    end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
                SetNightvision(true)
                mode = 1
            elseif mode == 1 then
                QBCore.Functions.Progressbar("random_task", "Disabling Goggles", 500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@bike@sport@front@base",
                    anim = "goggles_up",
                    flags = 49,
                }, {}, {}, function()
                    -- Done
                end, function()
                    -- Cancel
                end)
                Wait(500)
                if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 147, 24, true)
                else
                if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 146, 24, true)
                end
            end
                SetNightvision(false)
                SetSeethrough(false)
                mode = 0
            end
        end
    end
end)

-- zebra_dual_helmet
RegisterCommand('toggleNV26', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
        
    if QBCore.Functions.HasItem(Config.NVItem26) then
        if Config.CheckHelmet26 then
            if PlayerData.charinfo.gender == 0 then

            if GetPedPropIndex(PlayerPedId(), 0) == 147 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 25 then
                canToggle = true
            elseif GetPedPropIndex(PlayerPedId(), 0) == 146 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 25 then
                canToggle = true
            else
                if PlayerData.charinfo.gender == 1 then
                    if GetPedPropIndex(PlayerPedId(), 0) == 146 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 25 then
                        canToggle = true
                    elseif GetPedPropIndex(PlayerPedId(), 0) == 145 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 25 then
                        canToggle = true
                    end
            else
                canToggle = false
            end
        end
        else
            canToggle = true
        end
    end
        

        if canToggle then
            if mode == 0 then
                QBCore.Functions.Progressbar("random_task", "Acvtivating Goggles", 500, false, true, {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "veh@bike@sport@front@base",
                        anim = "goggles_down",
                        flags = 49,
                    }, {}, {}, function()
                        -- Done
                    end, function()
                        -- Cancel
                    end)
                    Wait(500)
                    if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 146, 25, true)
                    else 
                        if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 145, 25, true)
                        end
                    end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
                SetNightvision(true)
                mode = 1
            elseif mode == 1 then
                QBCore.Functions.Progressbar("random_task", "Disabling Goggles", 500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@bike@sport@front@base",
                    anim = "goggles_up",
                    flags = 49,
                }, {}, {}, function()
                    -- Done
                end, function()
                    -- Cancel
                end)
                Wait(500)
                if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 147, 25, true)
                else
                if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 146, 25, true)
                end
            end
                SetNightvision(false)
                SetSeethrough(false)
                mode = 0
            end
        end
    end
end)

-- pink_camo_dual_helmet
RegisterCommand('toggleNV27', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
        
    if QBCore.Functions.HasItem(Config.NVItem27) then
        if Config.CheckHelmet27 then
            if PlayerData.charinfo.gender == 0 then

            if GetPedPropIndex(PlayerPedId(), 0) == 147 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 7 then
                canToggle = true
            elseif GetPedPropIndex(PlayerPedId(), 0) == 146 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 7 then
                canToggle = true
            else
                if PlayerData.charinfo.gender == 1 then
                    if GetPedPropIndex(PlayerPedId(), 0) == 146 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 7 then
                        canToggle = true
                    elseif GetPedPropIndex(PlayerPedId(), 0) == 145 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 7 then
                        canToggle = true
                    end
            else
                canToggle = false
            end
        end
        else
            canToggle = true
        end
    end
        

        if canToggle then
            if mode == 0 then
                QBCore.Functions.Progressbar("random_task", "Acvtivating Goggles", 500, false, true, {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "veh@bike@sport@front@base",
                        anim = "goggles_down",
                        flags = 49,
                    }, {}, {}, function()
                        -- Done
                    end, function()
                        -- Cancel
                    end)
                    Wait(500)
                    if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 146, 7, true)
                    else 
                        if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 145, 7, true)
                        end
                    end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
                SetNightvision(true)
                mode = 1
            elseif mode == 1 then
                QBCore.Functions.Progressbar("random_task", "Disabling Goggles", 500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@bike@sport@front@base",
                    anim = "goggles_up",
                    flags = 49,
                }, {}, {}, function()
                    -- Done
                end, function()
                    -- Cancel
                end)
                Wait(500)
                if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 147, 7, true)
                else
                if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 146, 7, true)
                end
            end
                SetNightvision(false)
                SetSeethrough(false)
                mode = 0
            end
        end
    end
end)

-- desert_dual_helmet
RegisterCommand('toggleNV28', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
        
    if QBCore.Functions.HasItem(Config.NVItem28) then
        if Config.CheckHelmet28 then
            if PlayerData.charinfo.gender == 0 then

            if GetPedPropIndex(PlayerPedId(), 0) == 147 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 9 then
                canToggle = true
            elseif GetPedPropIndex(PlayerPedId(), 0) == 146 and
            GetPedPropTextureIndex(PlayerPedId(), 0) == 9 then
                canToggle = true
            else
                if PlayerData.charinfo.gender == 1 then
                    if GetPedPropIndex(PlayerPedId(), 0) == 146 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 9 then
                        canToggle = true
                    elseif GetPedPropIndex(PlayerPedId(), 0) == 145 and
                    GetPedPropTextureIndex(PlayerPedId(), 0) == 9 then
                        canToggle = true
                    end
            else
                canToggle = false
            end
        end
        else
            canToggle = true
        end
    end
        

        if canToggle then
            if mode == 0 then
                QBCore.Functions.Progressbar("random_task", "Acvtivating Goggles", 500, false, true, {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "veh@bike@sport@front@base",
                        anim = "goggles_down",
                        flags = 49,
                    }, {}, {}, function()
                        -- Done
                    end, function()
                        -- Cancel
                    end)
                    Wait(500)
                    if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 146, 9, true)
                    else 
                        if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 145, 9, true)
                        end
                    end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
                SetNightvision(true)
                mode = 1
            elseif mode == 1 then
                QBCore.Functions.Progressbar("random_task", "Disabling Goggles", 500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "veh@bike@sport@front@base",
                    anim = "goggles_up",
                    flags = 49,
                }, {}, {}, function()
                    -- Done
                end, function()
                    -- Cancel
                end)
                Wait(500)
                if PlayerData.charinfo.gender == 0 then
                SetPedPropIndex(PlayerPedId(), 0, 147, 9, true)
                else
                if PlayerData.charinfo.gender == 1 then
                SetPedPropIndex(PlayerPedId(), 0, 146, 9, true)
                end
            end
                SetNightvision(false)
                SetSeethrough(false)
                mode = 0
            end
        end
    end
end)

-- black_quad_helmet
RegisterNetEvent('nightvision:toggleNV', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.charinfo.gender == 0 then

    if GetPedPropIndex(PlayerPedId(), 0) == 149 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 0 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 149, 0, true)
    end
end

if PlayerData.charinfo.gender == 1 then

    if GetPedPropIndex(PlayerPedId(), 0) == 148 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 0 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 148, 0, true)
    end
end
end)

-- moss_quad_helmet
RegisterNetEvent('nightvision:toggleNV2', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.charinfo.gender == 0 then

    if GetPedPropIndex(PlayerPedId(), 0) == 149 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 1 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 149, 1, true)
    end
end

if PlayerData.charinfo.gender == 1 then

    if GetPedPropIndex(PlayerPedId(), 0) == 148 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 1 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 148, 1, true)
    end
end
end)

-- brown_quad_helmet
RegisterNetEvent('nightvision:toggleNV3', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.charinfo.gender == 0 then

    if GetPedPropIndex(PlayerPedId(), 0) == 149 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 2 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 149, 2, true)
    end
end

if PlayerData.charinfo.gender == 1 then

    if GetPedPropIndex(PlayerPedId(), 0) == 148 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 2 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 148, 2, true)
    end
end
end)

-- white_quad_helmet
RegisterNetEvent('nightvision:toggleNV4', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.charinfo.gender == 0 then

    if GetPedPropIndex(PlayerPedId(), 0) == 149 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 2 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 149, 2, true)
    end
end

if PlayerData.charinfo.gender == 1 then

    if GetPedPropIndex(PlayerPedId(), 0) == 148 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 2 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 148, 2, true)
    end
end
end)

-- leopard_quad_helmet
RegisterNetEvent('nightvision:toggleNV5', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.charinfo.gender == 0 then

    if GetPedPropIndex(PlayerPedId(), 0) == 149 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 8 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 149, 8, true)
    end
end

if PlayerData.charinfo.gender == 1 then

    if GetPedPropIndex(PlayerPedId(), 0) == 148 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 8 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 148, 8, true)
    end
end
end)

-- brown_digital_quad_helmet
RegisterNetEvent('nightvision:toggleNV6', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.charinfo.gender == 0 then

    if GetPedPropIndex(PlayerPedId(), 0) == 149 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 9 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 149, 9, true)
    end
end

if PlayerData.charinfo.gender == 1 then

    if GetPedPropIndex(PlayerPedId(), 0) == 148 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 9 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 148, 9, true)
    end
end
end)

-- tiger_quad_helmet
RegisterNetEvent('nightvision:toggleNV7', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.charinfo.gender == 0 then

    if GetPedPropIndex(PlayerPedId(), 0) == 149 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 10 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 149, 10, true)
    end
end

if PlayerData.charinfo.gender == 1 then

    if GetPedPropIndex(PlayerPedId(), 0) == 148 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 10 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 148, 10, true)
    end
end
end)

-- aqua_camo_quad_helmet
RegisterNetEvent('nightvision:toggleNV8', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.charinfo.gender == 0 then

    if GetPedPropIndex(PlayerPedId(), 0) == 149 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 18 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 149, 18, true)
    end
end

if PlayerData.charinfo.gender == 1 then

    if GetPedPropIndex(PlayerPedId(), 0) == 148 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 18 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 148, 18, true)
    end
end
end)

-- splinter_quad_helmet
RegisterNetEvent('nightvision:toggleNV9', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.charinfo.gender == 0 then

    if GetPedPropIndex(PlayerPedId(), 0) == 149 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 19 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 149, 19, true)
    end
end

if PlayerData.charinfo.gender == 1 then

    if GetPedPropIndex(PlayerPedId(), 0) == 148 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 19 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 148, 19, true)
    end
end
end)

-- brushstroke_quad_helmet
RegisterNetEvent('nightvision:toggleNV10', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.charinfo.gender == 0 then

    if GetPedPropIndex(PlayerPedId(), 0) == 149 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 22 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 149, 22, true)
    end
end

if PlayerData.charinfo.gender == 1 then

    if GetPedPropIndex(PlayerPedId(), 0) == 148 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 19 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 148, 22, true)
    end
end
end)

-- black_red_quad_helmet
RegisterNetEvent('nightvision:toggleNV11', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.charinfo.gender == 0 then

    if GetPedPropIndex(PlayerPedId(), 0) == 149 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 24 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 149, 24, true)
    end
end

if PlayerData.charinfo.gender == 1 then

    if GetPedPropIndex(PlayerPedId(), 0) == 148 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 24 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 148, 24, true)
    end
end
end)

-- zebra_quad_helmet
RegisterNetEvent('nightvision:toggleNV12', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.charinfo.gender == 0 then

    if GetPedPropIndex(PlayerPedId(), 0) == 149 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 25 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 149, 25, true)
    end
end

if PlayerData.charinfo.gender == 1 then

    if GetPedPropIndex(PlayerPedId(), 0) == 148 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 25 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 148, 25, true)
    end
end
end)

-- pink_camo_quad_helmet
RegisterNetEvent('nightvision:toggleNV13', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.charinfo.gender == 0 then

    if GetPedPropIndex(PlayerPedId(), 0) == 149 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 7 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 149, 7, true)
    end
end

if PlayerData.charinfo.gender == 1 then

    if GetPedPropIndex(PlayerPedId(), 0) == 148 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 7 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 148, 7, true)
    end
end
end)

-- desert_quad_helmet
RegisterNetEvent('nightvision:toggleNV14', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.charinfo.gender == 0 then

    if GetPedPropIndex(PlayerPedId(), 0) == 149 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 9 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 149, 9, true)
    end
end

if PlayerData.charinfo.gender == 1 then

    if GetPedPropIndex(PlayerPedId(), 0) == 148 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 9 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 148, 9, true)
    end
end
end)

-- black_dual_helmet
RegisterNetEvent('nightvision:toggleNV15', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.charinfo.gender == 0 then

    if GetPedPropIndex(PlayerPedId(), 0) == 147 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 0 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 147, 0, true)
    end
end

if PlayerData.charinfo.gender == 1 then

    if GetPedPropIndex(PlayerPedId(), 0) == 146 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 0 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 146, 0, true)
    end
end
end)

-- moss_dual_helmet
RegisterNetEvent('nightvision:toggleNV16', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.charinfo.gender == 0 then

    if GetPedPropIndex(PlayerPedId(), 0) == 147 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 1 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 147, 1, true)
    end
end

if PlayerData.charinfo.gender == 1 then

    if GetPedPropIndex(PlayerPedId(), 0) == 146 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 1 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 146, 1, true)
    end
end
end)

-- brown_dual_helmet
RegisterNetEvent('nightvision:toggleNV17', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.charinfo.gender == 0 then

    if GetPedPropIndex(PlayerPedId(), 0) == 147 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 2 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 147, 2, true)
    end
end

if PlayerData.charinfo.gender == 1 then

    if GetPedPropIndex(PlayerPedId(), 0) == 146 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 2 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 146, 2, true)
    end
end
end)

-- white_dual_helmet
RegisterNetEvent('nightvision:toggleNV18', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.charinfo.gender == 0 then

    if GetPedPropIndex(PlayerPedId(), 0) == 147 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 3 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 147, 3, true)
    end
end

if PlayerData.charinfo.gender == 1 then

    if GetPedPropIndex(PlayerPedId(), 0) == 146 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 3 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 146, 3, true)
    end
end
end)

-- leopard_dual_helmet
RegisterNetEvent('nightvision:toggleNV19', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.charinfo.gender == 0 then

    if GetPedPropIndex(PlayerPedId(), 0) == 147 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 8 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 147, 8, true)
    end
end

if PlayerData.charinfo.gender == 1 then

    if GetPedPropIndex(PlayerPedId(), 0) == 146 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 8 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 146, 8, true)
    end
end
end)

-- brown_digital_dual_helmet
RegisterNetEvent('nightvision:toggleNV20', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.charinfo.gender == 0 then

    if GetPedPropIndex(PlayerPedId(), 0) == 147 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 9 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 147, 9, true)
    end
end

if PlayerData.charinfo.gender == 1 then

    if GetPedPropIndex(PlayerPedId(), 0) == 146 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 9 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 146, 9, true)
    end
end
end)

-- tiger_dual_helmet
RegisterNetEvent('nightvision:toggleNV21', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.charinfo.gender == 0 then

    if GetPedPropIndex(PlayerPedId(), 0) == 147 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 10 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 147, 10, true)
    end
end

if PlayerData.charinfo.gender == 1 then

    if GetPedPropIndex(PlayerPedId(), 0) == 146 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 10 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 146, 10, true)
    end
end
end)

-- aqua_camo_dual_helmet
RegisterNetEvent('nightvision:toggleNV22', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.charinfo.gender == 0 then

    if GetPedPropIndex(PlayerPedId(), 0) == 147 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 18 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 147, 18, true)
    end
end

if PlayerData.charinfo.gender == 1 then

    if GetPedPropIndex(PlayerPedId(), 0) == 146 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 18 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 146, 18, true)
    end
end
end)

-- splinter_dual_helmet
RegisterNetEvent('nightvision:toggleNV23', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.charinfo.gender == 0 then

    if GetPedPropIndex(PlayerPedId(), 0) == 147 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 19 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 147, 19, true)
    end
end

if PlayerData.charinfo.gender == 1 then

    if GetPedPropIndex(PlayerPedId(), 0) == 146 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 19 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 146, 19, true)
    end
end
end)

-- brushstroke_dual_helmet
RegisterNetEvent('nightvision:toggleNV24', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.charinfo.gender == 0 then

    if GetPedPropIndex(PlayerPedId(), 0) == 147 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 22 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 147, 22, true)
    end
end

if PlayerData.charinfo.gender == 1 then

    if GetPedPropIndex(PlayerPedId(), 0) == 146 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 22 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 146, 22, true)
    end
end
end)

-- black_red_dual_helmet
RegisterNetEvent('nightvision:toggleNV25', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.charinfo.gender == 0 then

    if GetPedPropIndex(PlayerPedId(), 0) == 147 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 24 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 147, 24, true)
    end
end

if PlayerData.charinfo.gender == 1 then

    if GetPedPropIndex(PlayerPedId(), 0) == 146 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 24 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 146, 24, true)
    end
end
end)

-- zebra_dual_helmet
RegisterNetEvent('nightvision:toggleNV26', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.charinfo.gender == 0 then

    if GetPedPropIndex(PlayerPedId(), 0) == 147 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 25 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 147, 25, true)
    end
end

if PlayerData.charinfo.gender == 1 then

    if GetPedPropIndex(PlayerPedId(), 0) == 146 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 25 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 146, 25, true)
    end
end
end)

-- pink_camo_dual_helmet
RegisterNetEvent('nightvision:toggleNV27', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.charinfo.gender == 0 then

    if GetPedPropIndex(PlayerPedId(), 0) == 147 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 7 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 147, 7, true)
    end
end

if PlayerData.charinfo.gender == 1 then

    if GetPedPropIndex(PlayerPedId(), 0) == 146 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 7 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 146, 7, true)
    end
end
end)

-- desert_dual_helmet
RegisterNetEvent('nightvision:toggleNV28', function()
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if PlayerData.charinfo.gender == 0 then

    if GetPedPropIndex(PlayerPedId(), 0) == 147 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 9 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
        if mode == 1 then
            SetNightvision(false)
            SetSeethrough(false)
            mode = 0
        end
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 147, 9, true)
    end
end

if PlayerData.charinfo.gender == 1 then

    if GetPedPropIndex(PlayerPedId(), 0) == 146 and
    GetPedPropTextureIndex(PlayerPedId(), 0) == 9 then
        QBCore.Functions.Progressbar("random_task", "Removing Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 49, 0, true)
    else
        QBCore.Functions.Progressbar("random_task", "Equipping Helmet", 500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "veh@bike@sport@front@base",
            anim = "goggles_up",
            flags = 49,
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)
        Wait(1)
        SetPedPropIndex(PlayerPedId(), 0, 146, 9, true)
    end
end
end)

-- quad
RegisterKeyMapping('toggleNV', 'Toggle nightvision', 'keyboard', Config.NVKey) -- black_quad_helmet
RegisterKeyMapping('toggleNV2', 'Toggle nightvision', 'keyboard', Config.NVKey) -- moss_quad_helmet
RegisterKeyMapping('toggleNV3', 'Toggle nightvision', 'keyboard', Config.NVKey) -- brown_quad_helmet
RegisterKeyMapping('toggleNV4', 'Toggle nightvision', 'keyboard', Config.NVKey) -- white_quad_helmet
RegisterKeyMapping('toggleNV5', 'Toggle nightvision', 'keyboard', Config.NVKey) -- leopard_quad_helmet
RegisterKeyMapping('toggleNV6', 'Toggle nightvision', 'keyboard', Config.NVKey) -- brown_digital_quad_helmet
RegisterKeyMapping('toggleNV7', 'Toggle nightvision', 'keyboard', Config.NVKey) -- tiger_quad_helmet
RegisterKeyMapping('toggleNV8', 'Toggle nightvision', 'keyboard', Config.NVKey) -- aqua_camo_quad_helmet
RegisterKeyMapping('toggleNV9', 'Toggle nightvision', 'keyboard', Config.NVKey) -- splinter_quad_helmet
RegisterKeyMapping('toggleNV10', 'Toggle nightvision', 'keyboard', Config.NVKey) -- brushstroke_quad_helmet
RegisterKeyMapping('toggleNV11', 'Toggle nightvision', 'keyboard', Config.NVKey) -- black_red_quad_helmet
RegisterKeyMapping('toggleNV12', 'Toggle nightvision', 'keyboard', Config.NVKey) -- zebra_quad_helmet
RegisterKeyMapping('toggleNV13', 'Toggle nightvision', 'keyboard', Config.NVKey) -- pink_camo_quad_helmet
RegisterKeyMapping('toggleNV14', 'Toggle nightvision', 'keyboard', Config.NVKey) -- desert_quad_helmet

-- dual
RegisterKeyMapping('toggleNV15', 'Toggle nightvision', 'keyboard', Config.NVKey) -- black_dual_helmet
RegisterKeyMapping('toggleNV16', 'Toggle nightvision', 'keyboard', Config.NVKey) -- moss_dual_helmet
RegisterKeyMapping('toggleNV17', 'Toggle nightvision', 'keyboard', Config.NVKey) -- brown_dual_helmet
RegisterKeyMapping('toggleNV18', 'Toggle nightvision', 'keyboard', Config.NVKey) -- white_dual_helmet
RegisterKeyMapping('toggleNV19', 'Toggle nightvision', 'keyboard', Config.NVKey) -- leopard_dual_helmet
RegisterKeyMapping('toggleNV20', 'Toggle nightvision', 'keyboard', Config.NVKey) -- brown_digital_dual_helmet
RegisterKeyMapping('toggleNV21', 'Toggle nightvision', 'keyboard', Config.NVKey) -- tiger_dual_helmet
RegisterKeyMapping('toggleNV22', 'Toggle nightvision', 'keyboard', Config.NVKey) -- aqua_camo_dual_helmet
RegisterKeyMapping('toggleNV23', 'Toggle nightvision', 'keyboard', Config.NVKey) -- splinter_dual_helmet
RegisterKeyMapping('toggleNV24', 'Toggle nightvision', 'keyboard', Config.NVKey) -- brushstroke_dual_helmet
RegisterKeyMapping('toggleNV25', 'Toggle nightvision', 'keyboard', Config.NVKey) -- black_red_dual_helmet
RegisterKeyMapping('toggleNV26', 'Toggle nightvision', 'keyboard', Config.NVKey) -- zebra_dual_helmet
RegisterKeyMapping('toggleNV27', 'Toggle nightvision', 'keyboard', Config.NVKey) -- pink_camo_dual_helmet
RegisterKeyMapping('toggleNV28', 'Toggle nightvision', 'keyboard', Config.NVKey) -- desert_dual_helmet