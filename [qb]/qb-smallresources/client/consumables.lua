-- Variables

local QBCore = exports['qb-core']:GetCoreObject()
local alcoholCount = 0
local healing, parachuteEquipped = false, false
local currVest, currVestTexture = nil, nil

-- Functions
RegisterNetEvent('QBCore:Client:UpdateObject', function()
    QBCore = exports['qb-core']:GetCoreObject()
end)

local function loadAnimDict(dict)
    if HasAnimDictLoaded(dict) then return end
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Wait(10)
    end
end

local function equipParachuteAnim()
    loadAnimDict('clothingshirt')
    TaskPlayAnim(PlayerPedId(), 'clothingshirt', 'try_shirt_positive_d', 8.0, 1.0, -1, 49, 0, false, false, false)
end

local function healOxy()
    if healing then return end

    healing = true

    local count = 9
    while count > 0 do
        Wait(1000)
        count -= 1
        SetEntityHealth(PlayerPedId(), GetEntityHealth(PlayerPedId()) + 6)
    end
    healing = false
end

local function trevorEffect()
    StartScreenEffect('DrugsTrevorClownsFightIn', 3.0, 0)
    Wait(3000)
    StartScreenEffect('DrugsTrevorClownsFight', 3.0, 0)
    Wait(3000)
    StartScreenEffect('DrugsTrevorClownsFightOut', 3.0, 0)
    StopScreenEffect('DrugsTrevorClownsFight')
    StopScreenEffect('DrugsTrevorClownsFightIn')
    StopScreenEffect('DrugsTrevorClownsFightOut')
end

local function methBagEffect()
    local startStamina = 8
    trevorEffect()
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.49)
    while startStamina > 0 do
        Wait(1000)
        if math.random(5, 100) < 10 then
            RestorePlayerStamina(PlayerId(), 1.0)
        end
        startStamina = startStamina - 1
        if math.random(5, 100) < 51 then
            trevorEffect()
        end
    end
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
end

local function ecstasyEffect()
    local startStamina = 30
    SetFlash(0, 0, 500, 7000, 500)
    while startStamina > 0 do
        Wait(1000)
        startStamina -= 1
        RestorePlayerStamina(PlayerId(), 1.0)
        if math.random(1, 100) < 51 then
            SetFlash(0, 0, 500, 7000, 500)
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.08)
        end
    end
    if IsPedRunning(PlayerPedId()) then
        SetPedToRagdoll(PlayerPedId(), math.random(1000, 3000), math.random(1000, 3000), 3, false, false, false)
    end
end

local function alienEffect()
    StartScreenEffect('DrugsMichaelAliensFightIn', 3.0, 0)
    Wait(math.random(5000, 8000))
    StartScreenEffect('DrugsMichaelAliensFight', 3.0, 0)
    Wait(math.random(5000, 8000))
    StartScreenEffect('DrugsMichaelAliensFightOut', 3.0, 0)
    StopScreenEffect('DrugsMichaelAliensFightIn')
    StopScreenEffect('DrugsMichaelAliensFight')
    StopScreenEffect('DrugsMichaelAliensFightOut')
end

local function crackBaggyEffect()
    local startStamina = 8
    local ped = PlayerPedId()
    alienEffect()
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.3)
    while startStamina > 0 do
        Wait(1000)
        if math.random(1, 100) < 10 then
            RestorePlayerStamina(PlayerId(), 1.0)
        end
        startStamina -= 1
        if math.random(1, 100) < 60 and IsPedRunning(ped) then
            SetPedToRagdoll(ped, math.random(1000, 2000), math.random(1000, 2000), 3, false, false, false)
        end
        if math.random(1, 100) < 51 then
            alienEffect()
        end
    end
    if IsPedRunning(ped) then
        SetPedToRagdoll(ped, math.random(1000, 3000), math.random(1000, 3000), 3, false, false, false)
    end
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
end

local function cokeBaggyEffect()
    local startStamina = 20
    local ped = PlayerPedId()
    alienEffect()
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.1)
    while startStamina > 0 do
        Wait(1000)
        if math.random(1, 100) < 20 then
            RestorePlayerStamina(PlayerId(), 1.0)
        end
        startStamina -= 1
        if math.random(1, 100) < 10 and IsPedRunning(ped) then
            SetPedToRagdoll(ped, math.random(1000, 3000), math.random(1000, 3000), 3, false, false, false)
        end
        if math.random(1, 300) < 10 then
            alienEffect()
            Wait(math.random(3000, 6000))
        end
    end
    if IsPedRunning(ped) then
        SetPedToRagdoll(ped, math.random(1000, 3000), math.random(1000, 3000), 3, false, false, false)
    end
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
end

-- Events

-- canned_beans
RegisterNetEvent('consumables:client:EatBeans', function(itemName)
    QBCore.Functions.Progressbar('eat_something', Lang:t('consumables.eat_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'mp_player_intdrink',
        anim = 'loop_bottle',
        flags = 49
    }, {
        model = 'e_food_beanscan',
        bone = 60309,
        coords = vec3(0.0, 0.0, 0.09),
        rotation = vec3(0.0, 0.0, -30),
    }, {}, function() -- Done
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[itemName], 'remove')
        TriggerServerEvent('consumables:server:addHunger', QBCore.Functions.GetPlayerData().metadata.hunger + Config.Consumables.canned_beans[itemName])
        -- TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end)
end)

-- canned_soup
RegisterNetEvent('consumables:client:EatSoup', function(itemName)
    QBCore.Functions.Progressbar('eat_something', Lang:t('consumables.eat_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'mp_player_intdrink',
        anim = 'loop_bottle',
        flags = 49
    }, {
        model = 'e_food_lentejascan',
        bone = 60309,
        coords = vec3(0.0, 0.0, 0.09),
        rotation = vec3(0.0, 0.0, -30),
    }, {}, function() -- Done
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[itemName], 'remove')
        TriggerServerEvent('consumables:server:addHunger', QBCore.Functions.GetPlayerData().metadata.hunger + Config.Consumables.canned_beans[itemName])
        -- TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end)
end)

-- canned_meat
RegisterNetEvent('consumables:client:EatMeat', function(itemName)
    QBCore.Functions.Progressbar('eat_something', Lang:t('consumables.eat_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'mp_player_intdrink',
        anim = 'loop_bottle',
        flags = 49
    }, {
        model = 'e_food_meatcan',
        bone = 60309,
        coords = vec3(0.0, 0.0, 0.09),
        rotation = vec3(0.0, 0.0, -30),
    }, {}, function() -- Done
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[itemName], 'remove')
        TriggerServerEvent('consumables:server:addHunger', QBCore.Functions.GetPlayerData().metadata.hunger + Config.Consumables.canned_meat[itemName])
        -- TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end)
end)

-- canned_olives
RegisterNetEvent('consumables:client:EatOlives', function(itemName)
    QBCore.Functions.Progressbar('eat_something', Lang:t('consumables.eat_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'mp_player_intdrink',
        anim = 'loop_bottle',
        flags = 49
    }, {
        model = 'e_food_olivescan',
        bone = 60309,
        coords = vec3(0.0, 0.0, 0.09),
        rotation = vec3(0.0, 0.0, -30),
    }, {}, function() -- Done
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[itemName], 'remove')
        TriggerServerEvent('consumables:server:addHunger', QBCore.Functions.GetPlayerData().metadata.hunger + Config.Consumables.canned_olives[itemName])
        -- TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end)
end)

-- canned_peas
RegisterNetEvent('consumables:client:EatPeas', function(itemName)
    QBCore.Functions.Progressbar('eat_something', Lang:t('consumables.eat_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'mp_player_intdrink',
        anim = 'loop_bottle',
        flags = 49
    }, {
        model = 'e_food_peascan',
        bone = 60309,
        coords = vec3(0.0, 0.0, 0.09),
        rotation = vec3(0.0, 0.0, -30),
    }, {}, function() -- Done
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[itemName], 'remove')
        TriggerServerEvent('consumables:server:addHunger', QBCore.Functions.GetPlayerData().metadata.hunger + Config.Consumables.canned_peas[itemName])
        -- TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end)
end)

-- -- canned_food
-- RegisterNetEvent('consumables:client:EatUnknown', function(itemName)
--     QBCore.Functions.Progressbar('eat_something', Lang:t('consumables.eat_progress'), 5000, false, true, {
--         disableMovement = false,
--         disableCarMovement = false,
--         disableMouse = false,
--         disableCombat = true
--     }, {
--         animDict = 'mp_player_intdrink',
--         anim = 'loop_bottle',
--         flags = 49
--     }, {
--         model = 'e_food_olivescan',
--         bone = 60309,
--         coords = vec3(0.0, 0.0, 0.09),
--         rotation = vec3(0.0, 0.0, -30),
--     }, {}, function() -- Done
--         TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[itemName], 'remove')
--         TriggerServerEvent('consumables:server:addHunger', QBCore.Functions.GetPlayerData().metadata.hunger + Config.Consumables.canned_food[itemName])
--         -- TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
--     end)
-- end)

-- psnqs
RegisterNetEvent('consumables:client:EatPsnqs', function(itemName)
    QBCore.Functions.Progressbar('eat_something', Lang:t('consumables.eat_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'mp_player_inteat@burger',
        anim = 'mp_player_int_eat_burger',
        flags = 49
    }, {
        model = 'prop_candy_pqs',
        bone = 60309,
        coords = vec3(0.0, 0.0, -0.02),
        rotation = vec3(30, 0.0, 0.0),
    }, {}, function() -- Done
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[itemName], 'remove')
        TriggerServerEvent('consumables:server:addHunger', QBCore.Functions.GetPlayerData().metadata.hunger + Config.Consumables.psnqs[itemName])
        -- TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end)
end)

-- egochaser
RegisterNetEvent('consumables:client:EatEgochaser', function(itemName)
    QBCore.Functions.Progressbar('eat_something', Lang:t('consumables.eat_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'mp_player_inteat@burger',
        anim = 'mp_player_int_eat_burger',
        flags = 49
    }, {
        model = 'prop_choc_ego',
        bone = 60309,
        coords = vec3(0.0, 0.0, -0.02),
        rotation = vec3(30, 0.0, 0.0),
    }, {}, function() -- Done
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[itemName], 'remove')
        TriggerServerEvent('consumables:server:addHunger', QBCore.Functions.GetPlayerData().metadata.hunger + Config.Consumables.egochaser[itemName])
        -- TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end)
end)

-- meteorite
RegisterNetEvent('consumables:client:EatMeteorite', function(itemName)
    QBCore.Functions.Progressbar('eat_something', Lang:t('consumables.eat_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'mp_player_inteat@burger',
        anim = 'mp_player_int_eat_burger',
        flags = 49
    }, {
        model = 'prop_choc_meto',
        bone = 60309,
        coords = vec3(0.0, 0.0, -0.02),
        rotation = vec3(30, 0.0, 0.0),
    }, {}, function() -- Done
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[itemName], 'remove')
        TriggerServerEvent('consumables:server:addHunger', QBCore.Functions.GetPlayerData().metadata.hunger + Config.Consumables.meteorite[itemName])
        -- TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end)
end)

-- sandwiches
RegisterNetEvent('consumables:client:EatSandwich', function(itemName)
    QBCore.Functions.Progressbar('eat_something', Lang:t('consumables.eat_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'mp_player_inteat@burger',
        anim = 'mp_player_int_eat_burger',
        flags = 49
    }, {
        model = 'prop_sandwich_01',
        bone = 60309,
        coords = vec3(0.0, 0.0, -0.02),
        rotation = vec3(30, 0.0, 0.0),
    }, {}, function() -- Done
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[itemName], 'remove')
        TriggerServerEvent('consumables:server:addHunger', QBCore.Functions.GetPlayerData().metadata.hunger + Config.Consumables.sandwiches[itemName])
        -- TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end)
end)

-- cucumber
RegisterNetEvent('consumables:client:EatCucumber', function(itemName)
    QBCore.Functions.Progressbar('eat_something', Lang:t('consumables.eat_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'mp_player_inteat@burger',
        anim = 'mp_player_int_eat_burger',
        flags = 49
    }, {
        model = 'bzzz_plants_cucumber_04',
        bone = 60309,
        coords = vec3(0.0, 0.0, -0.02),
        rotation = vec3(30, 0.0, 0.0),
    }, {}, function() -- Done
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[itemName], 'remove')
        TriggerServerEvent('consumables:server:addHunger', QBCore.Functions.GetPlayerData().metadata.hunger + Config.Consumables.cucumber[itemName])
        -- TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end)
end)

-- eggplant
RegisterNetEvent('consumables:client:EatEggplant', function(itemName)
    QBCore.Functions.Progressbar('eat_something', Lang:t('consumables.eat_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'mp_player_inteat@burger',
        anim = 'mp_player_int_eat_burger',
        flags = 49
    }, {
        model = 'bzzz_plants_eggplant_04',
        bone = 60309,
        coords = vec3(0.0, 0.0, -0.02),
        rotation = vec3(30, 0.0, 0.0),
    }, {}, function() -- Done
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[itemName], 'remove')
        TriggerServerEvent('consumables:server:addHunger', QBCore.Functions.GetPlayerData().metadata.hunger + Config.Consumables.eggplant[itemName])
        -- TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end)
end)

-- onion
RegisterNetEvent('consumables:client:EatOnion', function(itemName)
    QBCore.Functions.Progressbar('eat_something', Lang:t('consumables.eat_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'mp_player_inteat@burger',
        anim = 'mp_player_int_eat_burger',
        flags = 49
    }, {
        model = 'bzzz_plants_onion_04',
        bone = 60309,
        coords = vec3(0.0, 0.0, -0.02),
        rotation = vec3(30, 0.0, 0.0),
    }, {}, function() -- Done
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[itemName], 'remove')
        TriggerServerEvent('consumables:server:addHunger', QBCore.Functions.GetPlayerData().metadata.hunger + Config.Consumables.onion[itemName])
        -- TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end)
end)

-- potato
RegisterNetEvent('consumables:client:EatPotato', function(itemName)
    QBCore.Functions.Progressbar('eat_something', Lang:t('consumables.eat_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'mp_player_inteat@burger',
        anim = 'mp_player_int_eat_burger',
        flags = 49
    }, {
        model = 'bzzz_plants_potato_04',
        bone = 60309,
        coords = vec3(0.0, 0.0, -0.02),
        rotation = vec3(30, 0.0, 0.0),
    }, {}, function() -- Done
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[itemName], 'remove')
        TriggerServerEvent('consumables:server:addHunger', QBCore.Functions.GetPlayerData().metadata.hunger + Config.Consumables.potato[itemName])
        -- TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end)
end)

-- strawberry
RegisterNetEvent('consumables:client:EatStrawberry', function(itemName)
    QBCore.Functions.Progressbar('eat_something', Lang:t('consumables.eat_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'mp_player_inteat@burger',
        anim = 'mp_player_int_eat_burger',
        flags = 49
    }, {
        model = 'bzzz_plants_strawberry',
        bone = 60309,
        coords = vec3(0.0, 0.0, -0.02),
        rotation = vec3(30, 0.0, 0.0),
    }, {}, function() -- Done
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[itemName], 'remove')
        TriggerServerEvent('consumables:server:addHunger', QBCore.Functions.GetPlayerData().metadata.hunger + Config.Consumables.strawberry[itemName])
        -- TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end)
end)

-- tomato
RegisterNetEvent('consumables:client:EatTomato', function(itemName)
    QBCore.Functions.Progressbar('eat_something', Lang:t('consumables.eat_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'mp_player_inteat@burger',
        anim = 'mp_player_int_eat_burger',
        flags = 49
    }, {
        model = 'bzzz_plants_tomato_04',
        bone = 60309,
        coords = vec3(0.0, 0.0, -0.02),
        rotation = vec3(30, 0.0, 0.0),
    }, {}, function() -- Done
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[itemName], 'remove')
        TriggerServerEvent('consumables:server:addHunger', QBCore.Functions.GetPlayerData().metadata.hunger + Config.Consumables.tomato[itemName])
        -- TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end)
end)

-- watermelon
RegisterNetEvent('consumables:client:EatWatermelon', function(itemName)
    QBCore.Functions.Progressbar('eat_something', Lang:t('consumables.eat_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'mp_player_inteat@burger',
        anim = 'mp_player_int_eat_burger',
        flags = 49
    }, {
        model = 'bzzz_plants_melon_06',
        bone = 60309,
        coords = vec3(0.0, 0.0, -0.02),
        rotation = vec3(30, 0.0, 0.0),
    }, {}, function() -- Done
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[itemName], 'remove')
        TriggerServerEvent('consumables:server:addHunger', QBCore.Functions.GetPlayerData().metadata.hunger + Config.Consumables.watermelon[itemName])
        -- TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end)
end)

-- water
RegisterNetEvent('consumables:client:DrinkWater', function(itemName)
    QBCore.Functions.Progressbar('drink_something', Lang:t('consumables.drink_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'mp_player_intdrink',
        anim = 'loop_bottle',
        flags = 49
    }, {
        model = 'vw_prop_casino_water_bottle_01a',
        bone = 60309,
        coords = vec3(0.0, 0.0, -0.05),
        rotation = vec3(0.0, 0.0, -40),
    }, {}, function() -- Done
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[itemName], 'remove')
        TriggerServerEvent('consumables:server:addThirst', QBCore.Functions.GetPlayerData().metadata.thirst + Config.Consumables.water[itemName])
    end)
end)

-- ecola
RegisterNetEvent('consumables:client:DrinkEcola', function(itemName)
    QBCore.Functions.Progressbar('drink_something', Lang:t('consumables.drink_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'mp_player_intdrink',
        anim = 'loop_bottle',
        flags = 49
    }, {
        model = 'ng_proc_sodacan_01a',
        bone = 60309,
        coords = vec3(0.0, 0.0, -0.05),
        rotation = vec3(0.0, 0.0, -40),
    }, {}, function() -- Done
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[itemName], 'remove')
        TriggerServerEvent('consumables:server:addThirst', QBCore.Functions.GetPlayerData().metadata.thirst + Config.Consumables.ecola[itemName])
    end)
end)

-- sprunk
RegisterNetEvent('consumables:client:DrinkSprunk', function(itemName)
    QBCore.Functions.Progressbar('drink_something', Lang:t('consumables.drink_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'mp_player_intdrink',
        anim = 'loop_bottle',
        flags = 49
    }, {
        model = 'ng_proc_sodacan_01b',
        bone = 60309,
        coords = vec3(0.0, 0.0, -0.05),
        rotation = vec3(0.0, 0.0, -40),
    }, {}, function() -- Done
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[itemName], 'remove')
        TriggerServerEvent('consumables:server:addThirst', QBCore.Functions.GetPlayerData().metadata.thirst + Config.Consumables.sprunk[itemName])
    end)
end)

-- orangotang
RegisterNetEvent('consumables:client:DrinkOrangotang', function(itemName)
    QBCore.Functions.Progressbar('drink_something', Lang:t('consumables.drink_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'mp_player_intdrink',
        anim = 'loop_bottle',
        flags = 49
    }, {
        model = 'prop_orang_can_01',
        bone = 60309,
        coords = vec3(0.0, 0.0, -0.05),
        rotation = vec3(0.0, 0.0, -40),
    }, {}, function() -- Done
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[itemName], 'remove')
        TriggerServerEvent('consumables:server:addThirst', QBCore.Functions.GetPlayerData().metadata.thirst + Config.Consumables.orangotang[itemName])
    end)
end)

-- coffee
RegisterNetEvent('consumables:client:DrinkCoffee', function(itemName)
    QBCore.Functions.Progressbar('drink_something', Lang:t('consumables.drink_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'mp_player_intdrink',
        anim = 'loop_bottle',
        flags = 49
    }, {
        model = 'prop_fib_coffee',
        bone = 60309,
        coords = vec3(0.0, 0.0, -0.05),
        rotation = vec3(0.0, 0.0, -40),
    }, {}, function() -- Done
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[itemName], 'remove')
        TriggerServerEvent('consumables:server:addThirst', QBCore.Functions.GetPlayerData().metadata.thirst + Config.Consumables.coffee[itemName])
    end)
end)

-- tea
RegisterNetEvent('consumables:client:DrinkTea', function(itemName)
    QBCore.Functions.Progressbar('drink_something', Lang:t('consumables.drink_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'mp_player_intdrink',
        anim = 'loop_bottle',
        flags = 49
    }, {
        model = 'v_res_fa_pottea',
        bone = 60309,
        coords = vec3(0.0, 0.0, -0.05),
        rotation = vec3(0.0, 0.0, -40),
    }, {}, function() -- Done
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[itemName], 'remove')
        TriggerServerEvent('consumables:server:addThirst', QBCore.Functions.GetPlayerData().metadata.thirst + Config.Consumables.tea[itemName])
    end)
end)

-- alcohol
RegisterNetEvent('consumables:client:DrinkAlcohol', function(itemName)
    QBCore.Functions.Progressbar('drink_alcohol', Lang:t('consumables.liqour_progress'), math.random(3000, 6000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'mp_player_intdrink',
        anim = 'loop_bottle',
        flags = 49
    }, {
        model = 'prop_cs_beer_bot_40oz',
        bone = 60309,
        coords = vec3(0.0, 0.0, -0.05),
        rotation = vec3(0.0, 0.0, -40),
    }, {}, function() -- Done
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[itemName], 'remove')
        TriggerServerEvent('consumables:server:drinkAlcohol', itemName)
        TriggerServerEvent('consumables:server:addThirst', QBCore.Functions.GetPlayerData().metadata.thirst + Config.Consumables.alcohol[itemName])
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        alcoholCount += 1
        AlcoholLoop()
        if alcoholCount > 1 and alcoholCount < 4 then
            TriggerEvent('evidence:client:SetStatus', 'alcohol', 200)
        elseif alcoholCount >= 4 then
            TriggerEvent('evidence:client:SetStatus', 'heavyalcohol', 200)
        end
    end, function() -- Cancel
        QBCore.Functions.Notify(Lang:t('consumables.canceled'), 'error')
    end)
end)

RegisterNetEvent('consumables:client:Custom', function(itemName)
    QBCore.Functions.TriggerCallback('consumables:itemdata', function(data)
        QBCore.Functions.Progressbar('custom_consumable', data.progress.label, data.progress.time, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true
        }, {
            animDict = data.animation.animDict,
            anim = data.animation.anim,
            flags = data.animation.flags
        }, {
            model = data.prop.model,
            bone = data.prop.bone,
            coords = data.prop.coords,
            rotation = data.prop.rotation
        }, {}, function() -- Done
            ClearPedTasks(PlayerPedId())
            TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[itemName], 'remove')
            if data.replenish.type then
                TriggerServerEvent('consumables:server:add' .. data.replenish.type, QBCore.Functions.GetPlayerData().metadata[string.lower(data.replenish.type)] + data.replenish.replenish)
            end
            if data.replenish.isAlcohol then
                alcoholCount += 1
                AlcoholLoop()
                if alcoholCount > 1 and alcoholCount < 4 then
                    TriggerEvent('evidence:client:SetStatus', 'alcohol', 200)
                elseif alcoholCount >= 4 then
                    TriggerEvent('evidence:client:SetStatus', 'heavyalcohol', 200)
                end
            end
            if data.replenish.event then
                TriggerEvent(data.replenish.event)
            end
        end)
    end, itemName)
end)

RegisterNetEvent('consumables:client:Cokebaggy', function()
    local ped = PlayerPedId()
    QBCore.Functions.Progressbar('snort_coke', Lang:t('consumables.coke_progress'), math.random(5000, 8000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'switch@trevor@trev_smoking_meth',
        anim = 'trev_smoking_meth_loop',
        flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(ped, 'switch@trevor@trev_smoking_meth', 'trev_smoking_meth_loop', 1.0)
        TriggerServerEvent('consumables:server:useCokeBaggy')
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['cokebaggy'], 'remove')
        TriggerEvent('evidence:client:SetStatus', 'widepupils', 200)
        cokeBaggyEffect()
    end, function() -- Cancel
        StopAnimTask(ped, 'switch@trevor@trev_smoking_meth', 'trev_smoking_meth_loop', 1.0)
        QBCore.Functions.Notify(Lang:t('consumables.canceled'), 'error')
    end)
end)

RegisterNetEvent('consumables:client:Crackbaggy', function()
    local ped = PlayerPedId()
    QBCore.Functions.Progressbar('snort_coke', Lang:t('consumables.crack_progress'), math.random(7000, 10000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'switch@trevor@trev_smoking_meth',
        anim = 'trev_smoking_meth_loop',
        flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(ped, 'switch@trevor@trev_smoking_meth', 'trev_smoking_meth_loop', 1.0)
        TriggerServerEvent('consumables:server:useCrackBaggy')
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['crack_baggy'], 'remove')
        TriggerEvent('evidence:client:SetStatus', 'widepupils', 300)
        crackBaggyEffect()
    end, function() -- Cancel
        StopAnimTask(ped, 'switch@trevor@trev_smoking_meth', 'trev_smoking_meth_loop', 1.0)
        QBCore.Functions.Notify(Lang:t('consumables.canceled'), 'error')
    end)
end)

RegisterNetEvent('consumables:client:EcstasyBaggy', function()
    QBCore.Functions.Progressbar('use_ecstasy', Lang:t('consumables.ecstasy_progress'), 3000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'mp_suicide',
        anim = 'pill',
        flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), 'mp_suicide', 'pill', 1.0)
        TriggerServerEvent('consumables:server:useXTCBaggy')
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['xtcbaggy'], 'remove')
        ecstasyEffect()
    end, function() -- Cancel
        StopAnimTask(PlayerPedId(), 'mp_suicide', 'pill', 1.0)
        QBCore.Functions.Notify(Lang:t('consumables.canceled'), 'error')
    end)
end)

RegisterNetEvent('consumables:client:oxy', function()
    QBCore.Functions.Progressbar('use_oxy', Lang:t('consumables.healing_progress'), 2000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'mp_suicide',
        anim = 'pill',
        flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), 'mp_suicide', 'pill', 1.0)
        TriggerServerEvent('consumables:server:useOxy')
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['oxy'], 'remove')
        ClearPedBloodDamage(PlayerPedId())
        healOxy()
    end, function() -- Cancel
        StopAnimTask(PlayerPedId(), 'mp_suicide', 'pill', 1.0)
        QBCore.Functions.Notify(Lang:t('consumables.canceled'), 'error')
    end)
end)

RegisterNetEvent('consumables:client:meth', function()
    QBCore.Functions.Progressbar('snort_meth', Lang:t('consumables.meth_progress'), 1500, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'switch@trevor@trev_smoking_meth',
        anim = 'trev_smoking_meth_loop',
        flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), 'switch@trevor@trev_smoking_meth', 'trev_smoking_meth_loop', 1.0)
        TriggerServerEvent('consumables:server:useMeth')
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['meth'], 'remove')
        TriggerEvent('evidence:client:SetStatus', 'widepupils', 300)
        TriggerEvent('evidence:client:SetStatus', 'agitated', 300)
        methBagEffect()
    end, function() -- Cancel
        StopAnimTask(PlayerPedId(), 'switch@trevor@trev_smoking_meth', 'trev_smoking_meth_loop', 1.0)
        QBCore.Functions.Notify(Lang:t('consumables.canceled'), 'error')
    end)
end)

RegisterNetEvent('consumables:client:UseJoint', function()
    QBCore.Functions.Progressbar('smoke_joint', Lang:t('consumables.joint_progress'), 1500, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['joint'], 'remove')
        if IsPedInAnyVehicle(PlayerPedId(), false) then
            TriggerEvent('animations:client:EmoteCommandStart', { 'smoke3' })
        else
            TriggerEvent('animations:client:EmoteCommandStart', { 'smokeweed' })
        end
        TriggerEvent('evidence:client:SetStatus', 'weedsmell', 300)
        TriggerEvent('animations:client:SmokeWeed')
    end)
end)

RegisterNetEvent('consumables:client:UseParachute', function()
    equipParachuteAnim()
    QBCore.Functions.Progressbar('use_parachute', Lang:t('consumables.use_parachute_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        local ped = PlayerPedId()
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['parachute'], 'remove')
        GiveWeaponToPed(ped, `GADGET_PARACHUTE`, 1, false, false)
        local parachuteData = {
            outfitData = { ['bag'] = { item = 7, texture = 0 } } -- Adding Parachute Clothing
        }
        TriggerEvent('qb-clothing:client:loadOutfit', parachuteData)
        parachuteEquipped = true
        TaskPlayAnim(ped, 'clothingshirt', 'exit', 8.0, 1.0, -1, 49, 0, false, false, false)
    end)
end)

RegisterNetEvent('consumables:client:ResetParachute', function()
    if parachuteEquipped then
        equipParachuteAnim()
        QBCore.Functions.Progressbar('reset_parachute', Lang:t('consumables.pack_parachute_progress'), 40000, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            local ped = PlayerPedId()
            TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['parachute'], 'add')
            local parachuteResetData = {
                outfitData = { ['bag'] = { item = 0, texture = 0 } } -- Removing Parachute Clothing
            }
            TriggerEvent('qb-clothing:client:loadOutfit', parachuteResetData)
            TaskPlayAnim(ped, 'clothingshirt', 'exit', 8.0, 1.0, -1, 49, 0, false, false, false)
            TriggerServerEvent('qb-smallpenis:server:AddParachute')
            parachuteEquipped = false
        end)
    else
        QBCore.Functions.Notify(Lang:t('consumables.no_parachute'), 'error')
    end
end)

-- RegisterNetEvent('consumables:client:UseArmor', function()
--     if GetPedArmour(PlayerPedId()) >= 75 then
--         QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
--         return
--     end
--     QBCore.Functions.Progressbar('use_armor', Lang:t('consumables.armor_progress'), 5000, false, true, {
--         disableMovement = false,
--         disableCarMovement = false,
--         disableMouse = false,
--         disableCombat = true,
--     }, {}, {}, {}, function() -- Done
--         TriggerServerEvent('consumables:server:useArmor')
--     end)
-- end)

-- RegisterNetEvent('consumables:client:UseHeavyArmor', function()
--     if GetPedArmour(PlayerPedId()) == 100 then
--         QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
--         return
--     end
--     local ped = PlayerPedId()
--     local PlayerData = QBCore.Functions.GetPlayerData()
--     QBCore.Functions.Progressbar('use_heavyarmor', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
--         disableMovement = false,
--         disableCarMovement = false,
--         disableMouse = false,
--         disableCombat = true,
--     }, {}, {}, {}, function() -- Done
--         if not Config.Disable.vestDrawable then
--             if PlayerData.charinfo.gender == 0 then
--                 currVest = GetPedDrawableVariation(ped, 9)
--                 currVestTexture = GetPedTextureVariation(ped, 9)
--                 if GetPedDrawableVariation(ped, 9) == 7 then
--                     SetPedComponentVariation(ped, 9, 19, GetPedTextureVariation(ped, 9), 2)
--                 else
--                     SetPedComponentVariation(ped, 9, 5, 2, 2)
--                 end
--             else
--                 currVest = GetPedDrawableVariation(ped, 30)
--                 currVestTexture = GetPedTextureVariation(ped, 30)
--                 SetPedComponentVariation(ped, 9, 30, 0, 2)
--             end
--         end
--         TriggerServerEvent('consumables:server:useHeavyArmor')
--     end)
-- end)

-- black_plate_carrier
RegisterNetEvent('consumables:client:UseSuperLightArmor1', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    
    -- Start progress bar for using the armor item
    QBCore.Functions.Progressbar('UseSuperLightArmor1', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        -- Remove the conditional check on vestDrawable and always change the drawable
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                -- Always set to the desired vest ID (e.g., 204) and texture (0)
                SetPedComponentVariation(ped, 8, 204, 0, 2)
            else
                -- For female character, always set to a different vest ID (e.g., 195)
                SetPedComponentVariation(ped, 8, 195, 0, 2)
            end
        end
        -- Trigger server event to finalize armor usage
        TriggerServerEvent('consumables:server:UseSuperLightArmor1')
    end)
end)

-- charcoal_plate_carrier
RegisterNetEvent('consumables:client:UseSuperLightArmor2', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    -- Start progress bar for using the armor item
    QBCore.Functions.Progressbar('UseSuperLightArmor2', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                -- Always set to the desired vest ID (e.g., 204) and texture (1)
                SetPedComponentVariation(ped, 8, 204, 1, 2)
            else
                -- For female character, always set to a different vest ID (e.g., 195)
                SetPedComponentVariation(ped, 8, 195, 1, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor2')
    end)
end)

-- ash_plate_carrier
RegisterNetEvent('consumables:client:UseSuperLightArmor3', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor3', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 204, 2, 2)
            else
                SetPedComponentVariation(ped, 8, 195, 2, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor3')
    end)
end)

-- ice_plate_carrier
RegisterNetEvent('consumables:client:UseSuperLightArmor4', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor4', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 204, 3, 2)
            else
                SetPedComponentVariation(ped, 8, 195, 3, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor4')
    end)
end)

-- navy_plate_carrier
RegisterNetEvent('consumables:client:UseSuperLightArmor5', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor5', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 204, 4, 2)
            else
                SetPedComponentVariation(ped, 8, 195, 4, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor5')
    end)
end)

-- chamois_plate_carrier
RegisterNetEvent('consumables:client:UseSuperLightArmor6', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor6', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 204, 5, 2)
            else
                SetPedComponentVariation(ped, 8, 195, 5, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor6')
    end)
end)

-- sand_plate_carrier
RegisterNetEvent('consumables:client:UseSuperLightArmor7', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor7', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 204, 6, 2)
            else
                SetPedComponentVariation(ped, 8, 195, 6, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor7')
    end)
end)

-- tan_plate_carrier
RegisterNetEvent('consumables:client:UseSuperLightArmor8', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor8', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 204, 7, 2)
            else
                SetPedComponentVariation(ped, 8, 195, 7, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor8')
    end)
end)

-- salmon_plate_carrier
RegisterNetEvent('consumables:client:UseSuperLightArmor9', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor9', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 204, 8, 2)
            else
                SetPedComponentVariation(ped, 8, 195, 8, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor9')
    end)
end)

-- moss_plate_carrier
RegisterNetEvent('consumables:client:UseSuperLightArmor10', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor10', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 204, 9, 2)
            else
                SetPedComponentVariation(ped, 8, 195, 9, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor10')
    end)
end)

-- peach_plate_carrier
RegisterNetEvent('consumables:client:UseSuperLightArmor11', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor11', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 204, 10, 2)
            else
                SetPedComponentVariation(ped, 8, 195, 10, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor11')
    end)
end)

-- brown_digital_plate_carrier
RegisterNetEvent('consumables:client:UseSuperLightArmor12', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor12', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 204, 11, 2)
            else
                SetPedComponentVariation(ped, 8, 195, 11, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor12')
    end)
end)

-- fall_plate_carrier
RegisterNetEvent('consumables:client:UseSuperLightArmor13', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor13', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 204, 12, 2)
            else
                SetPedComponentVariation(ped, 8, 195, 12, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor13')
    end)
end)

-- white_camo_plate_carrier
RegisterNetEvent('consumables:client:UseSuperLightArmor14', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor14', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 204, 13, 2)
            else
                SetPedComponentVariation(ped, 8, 195, 13, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor14')
    end)
end)

-- peach_camo_plate_carrier
RegisterNetEvent('consumables:client:UseSuperLightArmor15', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor15', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 204, 14, 2)
            else
                SetPedComponentVariation(ped, 8, 195, 14, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor15')
    end)
end)

-- red_camo_plate_carrier
RegisterNetEvent('consumables:client:UseSuperLightArmor16', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor16', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 204, 15, 2)
            else
                SetPedComponentVariation(ped, 8, 195, 15, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor16')
    end)
end)

-- green_plate_carrier
RegisterNetEvent('consumables:client:UseSuperLightArmor17', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor17', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 204, 16, 2)
            else
                SetPedComponentVariation(ped, 8, 195, 16, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor17')
    end)
end)

-- orange_plate_carrier
RegisterNetEvent('consumables:client:UseSuperLightArmor18', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor18', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 204, 17, 2)
            else
                SetPedComponentVariation(ped, 8, 195, 17, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor18')
    end)
end)

-- purple_plate_carrier
RegisterNetEvent('consumables:client:UseSuperLightArmor19', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor19', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 204, 18, 2)
            else
                SetPedComponentVariation(ped, 8, 195, 18, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor19')
    end)
end)

-- pink_plate_carrier
RegisterNetEvent('consumables:client:UseSuperLightArmor20', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 204, 19, 2)
            else
                SetPedComponentVariation(ped, 8, 195, 19, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor20')
    end)
end)

-- black_ultralight_strike_vest
RegisterNetEvent('consumables:client:UseSuperLightArmor21', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 186, 0, 2)
            else
                SetPedComponentVariation(ped, 8, 188, 0, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor21')
    end)
end)

-- beige_ultralight_strike_vest
RegisterNetEvent('consumables:client:UseSuperLightArmor22', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 186, 1, 2)
            else
                SetPedComponentVariation(ped, 8, 188, 1, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor22')
    end)
end)

-- dark_green_ultralight_strike_vest
RegisterNetEvent('consumables:client:UseSuperLightArmor23', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 186, 2, 2)
            else
                SetPedComponentVariation(ped, 8, 188, 2, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor23')
    end)
end)

-- sage_ultralight_strike_vest
RegisterNetEvent('consumables:client:UseSuperLightArmor24', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 186, 3, 2)
            else
                SetPedComponentVariation(ped, 8, 188, 3, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor24')
    end)
end)

-- forest_camo_ultralight_strike_vest
RegisterNetEvent('consumables:client:UseSuperLightArmor25', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 186, 4, 2)
            else
                SetPedComponentVariation(ped, 8, 188, 4, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor25')
    end)
end)

-- beige__digital_ultralight_strike_vest
RegisterNetEvent('consumables:client:UseSuperLightArmor26', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 186, 5, 2)
            else
                SetPedComponentVariation(ped, 8, 188, 5, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor26')
    end)
end)

-- contrast_camo_ultralight_strike_vest
RegisterNetEvent('consumables:client:UseSuperLightArmor27', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 186, 6, 2)
            else
                SetPedComponentVariation(ped, 8, 188, 6, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor27')
    end)
end)

-- blue_camo_ultralight_strike_vest
RegisterNetEvent('consumables:client:UseSuperLightArmor28', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 186, 7, 2)
            else
                SetPedComponentVariation(ped, 8, 188, 7, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor28')
    end)
end)

-- desert_camo_ultralight_strike_vest
RegisterNetEvent('consumables:client:UseSuperLightArmor29', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 186, 8, 2)
            else
                SetPedComponentVariation(ped, 8, 188, 8, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor29')
    end)
end)

-- splinter_camo_ultralight_strike_vest
RegisterNetEvent('consumables:client:UseSuperLightArmor30', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 186, 9, 2)
            else
                SetPedComponentVariation(ped, 8, 188, 9, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor30')
    end)
end)

-- violet_ultralight_strike_vest
RegisterNetEvent('consumables:client:UseSuperLightArmor31', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 186, 10, 2)
            else
                SetPedComponentVariation(ped, 8, 188, 10, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor31')
    end)
end)

-- green_ultralight_strike_vest
RegisterNetEvent('consumables:client:UseSuperLightArmor32', function()
    if GetPedArmour(PlayerPedId()) == 20 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 186, 11, 2)
            else
                SetPedComponentVariation(ped, 8, 188, 11, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseSuperLightArmor32')
    end)
end)

-- black_light_strike_vest
RegisterNetEvent('consumables:client:UseLightArmor1', function()
    if GetPedArmour(PlayerPedId()) == 40 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 159, 0, 2)
            else
                SetPedComponentVariation(ped, 8, 189, 0, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseLightArmor1')
    end)
end)

-- green_light_strike_vest
RegisterNetEvent('consumables:client:UseLightArmor2', function()
    if GetPedArmour(PlayerPedId()) == 40 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 159, 1, 2)
            else
                SetPedComponentVariation(ped, 8, 189, 1, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseLightArmor2')
    end)
end)

-- orange_light_strike_vest
RegisterNetEvent('consumables:client:UseLightArmor3', function()
    if GetPedArmour(PlayerPedId()) == 40 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 159, 2, 2)
            else
                SetPedComponentVariation(ped, 8, 189, 2, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseLightArmor3')
    end)
end)

-- purple_light_strike_vest
RegisterNetEvent('consumables:client:UseLightArmor4', function()
    if GetPedArmour(PlayerPedId()) == 40 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 159, 3, 2)
            else
                SetPedComponentVariation(ped, 8, 189, 3, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseLightArmor4')
    end)
end)

-- pink_light_strike_vest
RegisterNetEvent('consumables:client:UseLightArmor5', function()
    if GetPedArmour(PlayerPedId()) == 40 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 159, 4, 2)
            else
                SetPedComponentVariation(ped, 8, 189, 4, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseLightArmor5')
    end)
end)

-- black_mid_strike_vest
RegisterNetEvent('consumables:client:UseMidArmor1', function()
    if GetPedArmour(PlayerPedId()) == 60 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 160, 0, 2)
            else
                SetPedComponentVariation(ped, 8, 190, 0, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseMidArmor1')
    end)
end)

-- green_mid_strike_vest
RegisterNetEvent('consumables:client:UseMidArmor2', function()
    if GetPedArmour(PlayerPedId()) == 60 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 160, 1, 2)
            else
                SetPedComponentVariation(ped, 8, 190, 1, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseMidArmor2')
    end)
end)

-- orange_mid_strike_vest
RegisterNetEvent('consumables:client:UseMidArmor3', function()
    if GetPedArmour(PlayerPedId()) == 60 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 160, 2, 2)
            else
                SetPedComponentVariation(ped, 8, 190, 2, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseMidArmor3')
    end)
end)

-- purple_mid_strike_vest
RegisterNetEvent('consumables:client:UseMidArmor4', function()
    if GetPedArmour(PlayerPedId()) == 60 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 160, 3, 2)
            else
                SetPedComponentVariation(ped, 8, 190, 3, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseMidArmor4')
    end)
end)

-- pink_mid_strike_vest
RegisterNetEvent('consumables:client:UseMidArmor5', function()
    if GetPedArmour(PlayerPedId()) == 60 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 160, 4, 2)
            else
                SetPedComponentVariation(ped, 8, 190, 4, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseMidArmor5')
    end)
end)

-- black_heavy_strike_vest
RegisterNetEvent('consumables:client:UseHeavyArmor1', function()
    if GetPedArmour(PlayerPedId()) == 80 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 161, 0, 2)
            else
                SetPedComponentVariation(ped, 8, 191, 0, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseHeavyArmor1')
    end)
end)

-- green_heavy_strike_vest
RegisterNetEvent('consumables:client:UseHeavyArmor2', function()
    if GetPedArmour(PlayerPedId()) == 80 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 161, 1, 2)
            else
                SetPedComponentVariation(ped, 8, 191, 1, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseHeavyArmor2')
    end)
end)

-- orange_heavy_strike_vest
RegisterNetEvent('consumables:client:UseHeavyArmor3', function()
    if GetPedArmour(PlayerPedId()) == 80 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 161, 2, 2)
            else
                SetPedComponentVariation(ped, 8, 191, 2, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseHeavyArmor3')
    end)
end)

-- purple_heavy_strike_vest
RegisterNetEvent('consumables:client:UseHeavyArmor4', function()
    if GetPedArmour(PlayerPedId()) == 80 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 161, 3, 2)
            else
                SetPedComponentVariation(ped, 8, 191, 3, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseHeavyArmor4')
    end)
end)

-- pink_heavy_strike_vest
RegisterNetEvent('consumables:client:UseHeavyArmor5', function()
    if GetPedArmour(PlayerPedId()) == 80 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 161, 4, 2)
            else
                SetPedComponentVariation(ped, 8, 191, 4, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseHeavyArmor5')
    end)
end)

-- black_extreme_strike_vest
RegisterNetEvent('consumables:client:UseExtremeArmor1', function()
    if GetPedArmour(PlayerPedId()) == 100 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 162, 0, 2)
            else
                SetPedComponentVariation(ped, 8, 192, 0, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseHeavyArmor1')
    end)
end)

-- green_extreme_strike_vest
RegisterNetEvent('consumables:client:UseExtremeArmor2', function()
    if GetPedArmour(PlayerPedId()) == 100 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 162, 1, 2)
            else
                SetPedComponentVariation(ped, 8, 192, 1, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseExtremeArmor2')
    end)
end)

-- orange_extreme_strike_vest
RegisterNetEvent('consumables:client:UseExtremeArmor3', function()
    if GetPedArmour(PlayerPedId()) == 100 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 162, 2, 2)
            else
                SetPedComponentVariation(ped, 8, 192, 2, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseExtremeArmor3')
    end)
end)

-- purple_extreme_strike_vest
RegisterNetEvent('consumables:client:UseExtremeArmor4', function()
    if GetPedArmour(PlayerPedId()) == 100 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 162, 3, 2)
            else
                SetPedComponentVariation(ped, 8, 192, 3, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseExtremeArmor4')
    end)
end)

-- pink_extreme_strike_vest
RegisterNetEvent('consumables:client:UseExtremeArmor5', function()
    if GetPedArmour(PlayerPedId()) == 100 then
        QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error')
        return
    end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar('use_heavyarmor20', Lang:t('consumables.heavy_armor_progress'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.Disable.vestDrawable then
            if PlayerData.charinfo.gender == 0 then
                    SetPedComponentVariation(ped, 8, 162, 4, 2)
            else
                SetPedComponentVariation(ped, 8, 192, 4, 2)
            end
        end
        TriggerServerEvent('consumables:server:UseExtremeArmor5')
    end)
end)

-- RegisterNetEvent('consumables:client:ResetArmor', function()
--     local ped = PlayerPedId()
--     if currVest ~= nil and currVestTexture ~= nil then
--         QBCore.Functions.Progressbar('remove_armor', Lang:t('consumables.remove_armor_progress'), 2500, false, true, {
--             disableMovement = false,
--             disableCarMovement = false,
--             disableMouse = false,
--             disableCombat = true,
--         }, {}, {}, {}, function() -- Done
--             SetPedComponentVariation(ped, 9, currVest, currVestTexture, 2)
--             SetPedArmour(ped, 0)
--             TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['heavyarmor'], 'add')
--             TriggerServerEvent('consumables:server:resetArmor')
--         end)
--     else
--         QBCore.Functions.Notify(Lang:t('consumables.armor_empty'), 'error')
--     end
-- end)

-- RegisterNetEvent('consumables:client:UseRedSmoke', function()
--     if parachuteEquipped then
--         local ped = PlayerPedId()
--         SetPlayerParachuteSmokeTrailColor(ped, 255, 0, 0)
--         SetPlayerCanLeaveParachuteSmokeTrail(ped, true)
--         TriggerEvent("inventory:client:Itembox", QBCore.Shared.Items["smoketrailred"], "remove")
--     else
--         QBCore.Functions.Notify("You need to have a paracute to activate smoke!", "error")
--     end
-- end)

--Threads
local looped = false
function AlcoholLoop()
    if not looped then
        looped = true
        CreateThread(function()
            while true do
                Wait(10)
                if alcoholCount > 0 then
                    Wait(1000 * 60 * 15)
                    alcoholCount -= 1
                else
                    looped = false
                    break
                end
            end
        end)
    end
end
