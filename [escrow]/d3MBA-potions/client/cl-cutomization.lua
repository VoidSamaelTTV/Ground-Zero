-- If you need any help join discord server and open a ticket with your TRANSACTION ID! 😃

local Framework = exports['d3MBA-lib']:GetFrameworkObject()


local failure = 0 
local reffilingBottle = false

-- 🧠 Stress 

RegisterNetEvent('d3Potions:client:reduceStress', function(reduceStress)
    --              ⚠️⚠️⚠️⚠️⚠️ EDIT ME ⚠️⚠️⚠️⚠️⚠️
    
    -- 🔴"reduceStress" = For how much stress will be reduced. 
    TriggerServerEvent('hud:server:RelieveStress', reduceStress) -- ⬅️
end)


-- Gas mask event 
-- Here you can find all masks from GTA5 : https://wiki.rage.mp/index.php?title=Masks

RegisterNetEvent('d3Potions:client:UseGasMask', function()
    local ped = PlayerPedId()
    local model = GetEntityModel(ped)
    if not crafting then
        helmet = not helmet
        if model == `mp_m_freemode_01` then -- 🔴Male
            if helmet then
                while not HasAnimDictLoaded("mp_masks@standard_car@ds@") do RequestAnimDict("mp_masks@standard_car@ds@") Wait(10) end
                TaskPlayAnim(ped, "mp_masks@standard_car@ds@", "put_on_mask", 3.0, 3.0, 600, 51, 0, false, false, false)
                Wait(500)
                SetPedComponentVariation(ped, 1, 175, 0, true)  -- ⚠️ 175 = Number of mask from skin menu (clothing shop menu)
            else
                while not HasAnimDictLoaded("missheist_agency2ahelmet") do RequestAnimDict("missheist_agency2ahelmet") Wait(10) end
                TaskPlayAnim(ped, "missheist_agency2ahelmet", "take_off_helmet_stand", 3.0, 3.0, 1200, 51, 0, false, false, false)
                Wait(700)
                SetPedComponentVariation(ped, 1, 0, 0, true)
            end
        else -- 🔴Female
            if helmet then
                while not HasAnimDictLoaded("mp_masks@standard_car@ds@") do RequestAnimDict("mp_masks@standard_car@ds@") Wait(10) end
                TaskPlayAnim(ped, "mp_masks@standard_car@ds@", "put_on_mask", 3.0, 3.0, 600, 51, 0, false, false, false)
                Wait(500)
                SetPedComponentVariation(ped, 1, 175, 0, true)  -- ⚠️ 175 = Number of mask from skin menu (clothing shop menu)
            else
                while not HasAnimDictLoaded("missheist_agency2ahelmet") do RequestAnimDict("missheist_agency2ahelmet") Wait(10) end
                TaskPlayAnim(ped, "missheist_agency2ahelmet", "take_off_helmet_stand", 3.0, 3.0, 1200, 51, 0, false, false, false)
                Wait(700)
                SetPedComponentVariation(ped, 1, 0, 0, true)
            end
        end
    else
        TriggerEvent('d3MBA-lib:sendNotification', Config.Notifications["remove_mask_error"], Framework.NotificationsSettings.Error, 5000)
    end
end)

-- Blip 

CreateThread(function()
    -- Crafting table blip
    if Config.Blip.Use == true then 
        local blip = AddBlipForCoord(Config.TablePos)
        SetBlipSprite(blip, Config.Blip.Sprite)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, Config.Blip.Scale)
        SetBlipAsShortRange(blip, true)
        SetBlipColour(blip, Config.Blip.Color)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(Config.Blip.Label)
        EndTextCommandSetBlipName(blip)
    end
    -- Shop Blip 
    if Config.ShopPed.Blip.Use == true then 
        local shopBlip = AddBlipForCoord(Config.ShopPed.Pos)
        SetBlipSprite(shopBlip, Config.ShopPed.Blip.Sprite)
        SetBlipDisplay(shopBlip, 4)
        SetBlipScale(shopBlip, Config.ShopPed.Blip.Scale)
        SetBlipAsShortRange(shopBlip, true)
        SetBlipColour(shopBlip, Config.ShopPed.Blip.Color)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(Config.ShopPed.Blip.Label)
        EndTextCommandSetBlipName(shopBlip)
    end
end)

-- Crafting - mini game 

-- exports('thermiteminigame', function(correctBlocks, incorrectBlocks, timetoShow, timetoLose)⚠️⬇️

RegisterNetEvent('d3Potions:server:craftingMiniGame', function(potion)

    if Config.UseMiniGame == true then 
        exports["memorygame"]:thermiteminigame(5 + failure, 3, 3, 10, -- Explained ⬆️
        function() -- success
            failure = 0 
            TriggerServerEvent('d3Potions:server:startCraftingPotion', potion, false)
        end,
        function() -- failure
            local randomChance = math.random(1, 101)
            if randomChance >= 60 then -- 60 means is 40% chance to run this exploasion below. 40 = 60% chance, 20 = 80% chance...
                AddExplosion(Config.TablePos, 23, 10.0, true, false, 2.0) -- ⚠️Explained -- https://docs.fivem.net/natives/?_0xE3AD2BDBAEE269AC
            end
            failure = failure + 1 
            if failure >= 3 then 
                failure = 0
            end
        end)
    else
        TriggerServerEvent('d3Potions:server:startCraftingPotion', potion, false)
    end
end)


-- Refill bottle of water  

RegisterNetEvent('d3Potions:client:refill', function()
    if reffilingBottle == false then 
        Framework.LoadAnim("mp_player_intdrink")
        
        if IsEntityInWater(PlayerPedId()) then 
            TaskStartScenarioInPlace(PlayerPedId(), 'PROP_HUMAN_BUM_BIN', 0, true)
            FreezeEntityPosition(PlayerPedId(), true)
            -- Progress bar 
            local controls = { -- controls to disable while progressbar is running 
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            } 
            if Framework.ProgressBar("potions:UsePotion", Config.ProgressBar.Refill, 7, controls) then -- 7 = time in seconds 
                FreezeEntityPosition(PlayerPedId(), false)
                ClearPedTasks(PlayerPedId())
                if Config.ClearPedTasksImmediately == true then
                    ClearPedTasksImmediately(PlayerPedId())
                end

                TriggerServerEvent('d3Potions:server:reffilingBottle', source)
            end 
        else
            TriggerEvent('d3MBA-lib:sendNotification', Config.Notifications["not_near_water"], Framework.NotificationsSettings.Error, 5000)
            return
        end
    else
        TriggerEvent('d3MBA-lib:sendNotification', Config.Notifications["already_reffiling"], Framework.NotificationsSettings.Error, 5000)
        return
    end
end)

