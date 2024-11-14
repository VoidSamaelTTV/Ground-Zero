QBCore = exports['qb-core']:GetCoreObject()

-- Food box
RegisterNetEvent('consumables:client:openFoodbox', function(giftBoxType)
    local playerPed = PlayerPedId()
    
    QBCore.Functions.Progressbar('food_box', 'Opening Food Box', 5000, false, true, { 
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'amb@world_human_clipboard@male@idle_a',
        anim = 'idle_c',
        flags = 49,
    }, {}, {}, function()
        -- Trigger the server event with the gift box type
        TriggerServerEvent('consumables:server:foodboxFinished', giftBoxType)
    end, function()
        ClearPedTasks(playerPed)
        QBCore.Functions.Notify("Ok I Guess You Don't Want your rewards", "error")        
    end)
end)

-- Medical box
RegisterNetEvent('consumables:client:openMedicalbox', function(giftBoxType)
    local playerPed = PlayerPedId()
    
    QBCore.Functions.Progressbar('medical_box', 'Opening Medical Box', 5000, false, true, { 
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'amb@world_human_clipboard@male@idle_a',
        anim = 'idle_c',
        flags = 49,
    }, {}, {}, function()
        -- Trigger the server event with the gift box type
        TriggerServerEvent('consumables:server:medicalboxFinished', giftBoxType)
    end, function()
        ClearPedTasks(playerPed)
        QBCore.Functions.Notify("Ok I Guess You Don't Want your rewards", "error")        
    end)
end)

-- Ammo case
RegisterNetEvent('consumables:client:openAmmocase', function(giftBoxType)
    local playerPed = PlayerPedId()
    
    QBCore.Functions.Progressbar('ammo_case', 'Opening Ammo Case', 5000, false, true, { 
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'amb@world_human_clipboard@male@idle_a',
        anim = 'idle_c',
        flags = 49,
    }, {}, {}, function()
        -- Trigger the server event with the gift box type
        TriggerServerEvent('consumables:server:AmmocaseFinished', giftBoxType)
    end, function()
        ClearPedTasks(playerPed)
        QBCore.Functions.Notify("Ok I Guess You Don't Want your rewards", "error")        
    end)
end)

-- Tool crate
RegisterNetEvent('consumables:client:openToolcrate', function(giftBoxType)
    local playerPed = PlayerPedId()
    
    QBCore.Functions.Progressbar('tool_crate', 'Opening Tool Crate', 5000, false, true, { 
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'amb@world_human_clipboard@male@idle_a',
        anim = 'idle_c',
        flags = 49,
    }, {}, {}, function()
        -- Trigger the server event with the gift box type
        TriggerServerEvent('consumables:server:toolcrateFinished', giftBoxType)
    end, function()
        ClearPedTasks(playerPed)
        QBCore.Functions.Notify("Ok I Guess You Don't Want your rewards", "error")        
    end)
end)

-- Weapon Case
RegisterNetEvent('consumables:client:openweaponcase', function(giftBoxType)
    local playerPed = PlayerPedId()
    
    QBCore.Functions.Progressbar('weapon_case', 'Opening Weapon Case', 5000, false, true, { 
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'amb@world_human_clipboard@male@idle_a',
        anim = 'idle_c',
        flags = 49,
    }, {}, {}, function()
        -- Trigger the server event with the gift box type
        TriggerServerEvent('consumables:server:WeaponCaseFinished', giftBoxType)
    end, function()
        ClearPedTasks(playerPed)
        QBCore.Functions.Notify("Ok I Guess You Don't Want your rewards", "error")        
    end)
end)


