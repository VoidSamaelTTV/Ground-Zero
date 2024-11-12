local QBCore = exports['qb-core']:GetCoreObject()

-- check for right equipment

function IsWearingRadioactiveMask()
    local playerPed = PlayerPedId()
    local playerDrawable = GetPedDrawableVariation(playerPed, 1)
    local playerGender = GetEntityModel(playerPed)

    if Config.debugMode then
        print("RadiationDrawable:", playerDrawable)
        print("Checking for Radiation mask")
    end

    local gear = nil
    if IsModelInCdimage(playerGender) then -- Check if the player's gender model is valid
        local playerHash = GetHashKey("mp_f_freemode_01") -- Female character model hash
        if playerGender == playerHash then
            if Config.debugMode then
                print('player is Female')
            end
            gear = Config.hazardgear.Radiation.drawables.female
        else
            if Config.debugMode then
                print('player is Male')
            end
            gear = Config.hazardgear.Radiation.drawables.male
        end
    end

    if gear then
        for _, mask in pairs(gear) do
            if playerDrawable == mask then
                if Config.debugMode then
                    print("Radiation Drawable Match:", mask)
                end
                return true
            end
        end
    end

    if Config.debugMode then
        print("No Radiation mask match found. See console prints to check what mask you are wearing.")
    end

    return false
end


function IsWearingToxicMask()
    local playerPed = PlayerPedId()
    local playerDrawable = GetPedDrawableVariation(playerPed, 5)
    local playerGender = GetEntityModel(playerPed)

    if Config.debugMode then
        print("ToxicDrawable:", playerDrawable)
        print("Checking for Oxygen breather match")
    end

    local gear = nil
    if IsModelInCdimage(playerGender) then -- Check if the player's gender model is valid
        local playerHash = GetHashKey("mp_f_freemode_01") -- Female character model hash
        if playerGender == playerHash then
            if Config.debugMode then
                print('player is Female')
            end
            gear = Config.hazardgear.Toxic.drawables.female
        else
            if Config.debugMode then
                print('player is Male')
            end
            gear = Config.hazardgear.Toxic.drawables.male
        end
    end

    if gear then
        for _, mask in pairs(gear) do
            if playerDrawable == mask then
                if Config.debugMode then
                    print("Toxic Drawable Match:", mask)
                end
                return true
            end
        end
    end

    if Config.debugMode then
        print("No Toxic Oxygen breather match found. See console prints to check what mask you are wearing.")
    end

    return false
end



function IsWearingBiohazardSuit()
    local player = PlayerPedId()
    local isWearing = false

    local jacketDrawable = GetPedDrawableVariation(player, 11)
    local pantsDrawable = GetPedDrawableVariation(player, 4)
    local undershirtDrawable = GetPedDrawableVariation(player, 8)
    local vestDrawable = GetPedDrawableVariation(player, 5)
    local armsDrawable = GetPedDrawableVariation(player, 3)
    if Config.debugMode then
        print("jacketDrawable:", jacketDrawable)
        print("pantsDrawable:", pantsDrawable)
        print("undershirtDrawable:", undershirtDrawable)
        print("vestDrawable:", vestDrawable)
        print("armsDrawable:", armsDrawable)
    end
    for _, drawables in pairs(Config.hazardgear) do


        if Config.debugMode then
            print("Checking for correct jacket")
        end

        local jacketFound = false
        local playerGender = GetEntityModel(player)
        local femaleModelHash = GetHashKey("mp_f_freemode_01") -- Female character model hash

        if Config.debugMode then
            print("playerGender:", playerGender)
            print("femaleModelHash:", femaleModelHash)
        end

        if IsModelInCdimage(playerGender) then -- Check if the player's gender model is valid
            if playerGender == femaleModelHash then
                if Config.debugMode then
                    print('player is Female')
                end
                for _, drawable in pairs(Config.hazardgear.Biohazard.drawables.jacket_drawables.female) do
                    if jacketDrawable == drawable then
                        jacketFound = true
                        if Config.debugMode then
                            print("jacketFound:", jacketFound)
                        end
                        break
                    end
                end
            else
                if Config.debugMode then
                    print('player is Male')
                end
                for _, drawable in pairs(Config.hazardgear.Biohazard.drawables.jacket_drawables.male) do
                    if jacketDrawable == drawable then
                        jacketFound = true
                        if Config.debugMode then
                            print("jacketFound:", jacketFound)
                        end
                        break
                    end
                end
            end
        end


        if not jacketFound and Config.debugMode then
            print("No Suit Top match found. See print to match what you wear.")
        end

        if Config.debugMode then
            print("Checking for correct pants")
        end

        local pantsFound = false
        local playerGender = GetEntityModel(player)
        local femaleModelHash = GetHashKey("mp_f_freemode_01") -- Female character model hash

        if Config.debugMode then
            print("playerGender:", playerGender)
            print("femaleModelHash:", femaleModelHash)
        end

        if IsModelInCdimage(playerGender) then -- Check if the player's gender model is valid
            if playerGender == femaleModelHash then
                if Config.debugMode then
                    print('player is Female')
                end
                for _, drawable in pairs(Config.hazardgear.Biohazard.drawables.pants_drawables.female) do
                    if pantsDrawable == drawable then
                        pantsFound = true
                        if Config.debugMode then
                            print("pantsFound:", pantsFound)
                        end
                        break
                    end
                end
            else
                if Config.debugMode then
                    print('player is Male')
                end
                for _, drawable in pairs(Config.hazardgear.Biohazard.drawables.pants_drawables.male) do
                    if pantsDrawable == drawable then
                        pantsFound = true
                        if Config.debugMode then
                            print("pantsFound:", pantsFound)
                        end
                        break
                    end
                end
            end
        end


        if not pantsFound and Config.debugMode then
            print("No Pants match found. See print to match what you wear.")
        end

        if Config.debugMode then
            print("Checking for correct undershirt/t-shirt")
        end

        local undershirtFound = false
        local playerGender = GetEntityModel(player)
        local femaleModelHash = GetHashKey("mp_f_freemode_01") -- Female character model hash

        if Config.debugMode then
            print("playerGender:", playerGender)
            print("femaleModelHash:", femaleModelHash)
        end

        if IsModelInCdimage(playerGender) then -- Check if the player's gender model is valid
            if playerGender == femaleModelHash then
                if Config.debugMode then
                    print('player is Female')
                end
                for _, drawable in pairs(Config.hazardgear.Biohazard.drawables.undershirt_drawables.female) do
                    if undershirtDrawable == drawable then
                        undershirtFound = true
                        if Config.debugMode then
                            print("undershirtFound:", undershirtFound)
                        end
                        break
                    end
                end
            else
                if Config.debugMode then
                    print('player is Male')
                end
                for _, drawable in pairs(Config.hazardgear.Biohazard.drawables.undershirt_drawables.male) do
                    if undershirtDrawable == drawable then
                        undershirtFound = true
                        if Config.debugMode then
                            print("undershirtFound:", undershirtFound)
                        end
                        break
                    end
                end
            end
        end


        if not undershirtFound and Config.debugMode then
            print("No Undershirt/T-Shirt match found. See print to match what you wear.")
        end


        if Config.debugMode then
            print("Checking for correct bulletproof vest")
        end

        local vestFound = false
        local playerGender = GetEntityModel(player)
        local femaleModelHash = GetHashKey("mp_f_freemode_01") -- Female character model hash

        if Config.debugMode then
            print("playerGender:", playerGender)
            print("femaleModelHash:", femaleModelHash)
        end

        -- gloves

        if IsModelInCdimage(playerGender) then -- Check if the player's gender model is valid
            if playerGender == femaleModelHash then
                if Config.debugMode then
                    print('player is Female')
                end
                for _, drawable in pairs(Config.hazardgear.Biohazard.drawables.arms_drawables.female) do
                    if armsDrawable == drawable then
                        armsFound = true
                        if Config.debugMode then
                            print("armsFound:", armsFound)
                        end
                        break
                    end
                end
            else
                if Config.debugMode then
                    print('player is Male')
                end
                for _, drawable in pairs(Config.hazardgear.Biohazard.drawables.arms_drawables.male) do
                    if armsDrawable == drawable then
                        armsFound = true
                        if Config.debugMode then
                            print("armsFound:", armsFound)
                        end
                        break
                    end
                end
            end
        end


        if not armsFound and Config.debugMode then
            print("No Gloves match found. See print to match what you wear.")
        end


        if Config.debugMode then
            print("Checking for correct gloves")
        end

        local armsFound = false
        local playerGender = GetEntityModel(player)
        local femaleModelHash = GetHashKey("mp_f_freemode_01") -- Female character model hash

        if Config.debugMode then
            print("playerGender:", playerGender)
            print("femaleModelHash:", femaleModelHash)
        end

        --

        if IsModelInCdimage(playerGender) then -- Check if the player's gender model is valid
            if playerGender == femaleModelHash then
                if Config.debugMode then
                    print('player is Female')
                end
                for _, drawable in pairs(Config.hazardgear.Biohazard.drawables.vest_drawables.female) do
                    if vestDrawable == drawable then
                        vestFound = true
                        if Config.debugMode then
                            print("vestFound:", vestFound)
                        end
                        break
                    end
                end
            else
                if Config.debugMode then
                    print('player is Male')
                end
                for _, drawable in pairs(Config.hazardgear.Biohazard.drawables.vest_drawables.male) do
                    if vestDrawable == drawable then
                        vestFound = true
                        if Config.debugMode then
                            print("vestFound:", vestFound)
                        end
                        break
                    end
                end
            end
        end


        if not vestFound and Config.debugMode then
            print("No Bulletproof Vest match found. See print to match what you wear.")
        end


        if jacketFound and pantsFound and undershirtFound and vestFound then
            isWearing = true
            break
        end
    end
    if Config.debugMode then
        print("isWearing:", isWearing)
    end
    return isWearing
end



-- functions to do cough animations and base dmg if not using protective gear

function StartRadioactiveTimer(v)
    if Config.debugMode then
        print("dmgDelay from config Radioactive zone:", v.dmgDelay)
    end
    local dmgAmount = v.damage or 5 -- Set default damage to 5 if not specified in config
    local dmgDelay = v.dmgDelay or 5000 -- Set default delay to 5 seconds if not specified in config
    local player = PlayerPedId()
    insideradioactivetimer = true
    Citizen.Wait(dmgDelay)
    CreateThread(function()
        if insideradioactivetimer then
            local ped = PlayerPedId()
            QBCore.Functions.Progressbar("radioactiveburn", "Your lungs burns from radiation.", 3000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "timetable@gardener@smoking_joint",
                anim = "idle_cough",
                flags = 49,
            }, {}, {}, function() -- Done
                StopAnimTask(ped, "timetable@gardener@smoking_joint", "idle_cough", 1.0)
            end, function() -- Cancel
                StopAnimTask(ped, "timetable@gardener@smoking_joint", "idle_cough", 1.0)
                QBCore.Functions.Notify("Canceled.", "error")
            end)
            ApplyDamageToPed(player, dmgAmount, false) -- Apply base damage to player
        end
    end)
end




function StartBiohazardTimer(v)
    if Config.debugMode then
        print("dmgDelay from config Biohazard zone:", v.dmgDelay)
    end
    local dmgAmount = v.damage or 5 -- Set default damage to 5 if not specified in config
    local dmgDelay = v.dmgDelay or 5000 -- Set default delay to 5 seconds if not specified in config
    local player = PlayerPedId()
    insidebiohazardtimer = true
    Citizen.Wait(dmgDelay)
    CreateThread(function()
        if insidebiohazardtimer then
            local ped = PlayerPedId()
            QBCore.Functions.Progressbar("biohazardburn", "Hazardous fumes fills your lungs", 3000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "timetable@gardener@smoking_joint",
                anim = "idle_cough",
                flags = 49,
            }, {}, {}, function() -- Done
                StopAnimTask(ped, "mp_suicide", "pill", 1.0)

            end, function() -- Cancel
                StopAnimTask(ped, "mp_suicide", "pill", 1.0)
                QBCore.Functions.Notify("Canceled.", "error")
            end)
            ApplyDamageToPed(player, dmgAmount, false) -- Apply repeated damage to player
        end
    end)
end





function StartToxicTimer(v)
    if Config.debugMode then
        print("dmgDelay from config Toxic zone:", v.dmgDelay)
    end
    local dmgAmount = v.damage or 5 -- Set default damage to 5 if not specified in config
    local dmgDelay = v.dmgDelay or 5000 -- Set default delay to 5 seconds if not specified in config
    local player = PlayerPedId()
    insidetoxictimer = true
    Citizen.Wait(dmgDelay)
    CreateThread(function()
        if insidetoxictimer then
            local ped = PlayerPedId()
            QBCore.Functions.Progressbar("toxicburn", "Hazardous fumes fills your lungs", 3000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "timetable@gardener@smoking_joint",
                anim = "idle_cough",
                flags = 49,
            }, {}, {}, function() -- Done
                StopAnimTask(ped, "mp_suicide", "pill", 1.0)
            end, function() -- Cancel
                StopAnimTask(ped, "mp_suicide", "pill", 1.0)
                QBCore.Functions.Notify("Canceled.", "error")
            end)
            ApplyDamageToPed(player, dmgAmount, false) -- Apply repeated damage to player
        end
    end)
end



--- screen effect stuff

-- Event to handle radioactive screen effects
RegisterNetEvent('hazardZone:RadioactiveEffect', function()
    StartScreenEffect("DrugsTrevorClownsFight", 0, true)
    StartScreenEffect("DeathFailOut", 0, true)
    SetTimecycleModifierStrength(5.0)
    ShakeGameplayCam("SMALL_EXPLOSION_SHAKE", 0.1)
end)

-- Event to handle biohazard screen effects
RegisterNetEvent('hazardZone:BiohazardEffect', function()
    StartScreenEffect("DrugsTrevorClownsFight", 0, true)
    StartScreenEffect("DMT_flight_intro", 0, true)
    -- SetTimecycleModifier("hud_def_blur")
    SetTimecycleModifierStrength(2.0)
    ShakeGameplayCam("SMALL_EXPLOSION_SHAKE", 0.1)
end)

-- Event to handle toxic screen effects
RegisterNetEvent('hazardZone:ToxicEffect', function()
    StartScreenEffect("DrugsDrivingIn", 0, true)
    StartScreenEffect("DeathFailOut", 0, true)
    StartScreenEffect("ChopVision", 0, true)
    StartScreenEffect("MissionFailedMichaelOut", 0, true)
    SetTimecycleModifier("spectator5")
    SetTimecycleModifierStrength(0.2)
    ShakeGameplayCam("SMALL_EXPLOSION_SHAKE", 0.2)
end)
