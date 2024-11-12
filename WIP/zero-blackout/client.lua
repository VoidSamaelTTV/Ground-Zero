local QBCore = exports['qb-core']:GetCoreObject()

local CurrentWeather = 'THUNDER' -- Set default weather type for blackout
local lastWeather = CurrentWeather
local baseTime = 0
local timeOffset = 0
local timer = 0
local freezeTime = false
local blackout = true
local blackoutVehicle = true
local disable = false

-- Function to apply blackout effect
function ApplyBlackout()
    -- Start blackout with thunder weather
    CurrentWeather = 'THUNDER'
    blackout = true
    blackoutVehicle = true
    TriggerEvent('qb-weathersync:client:SyncWeather', CurrentWeather, blackout)
end

-- Function to clear blackout effect
function ClearBlackout()
    -- Restore previous weather and settings
    blackout = false
    blackoutVehicle = false
    TriggerEvent('qb-weathersync:client:SyncWeather', lastWeather, blackout)
end

-- Function to check if the player is within the restoration location
function IsInRestorationZone()
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    local location = Config.RestorationLocation.coords
    local radius = Config.RestorationLocation.radius

    return Vdist(playerCoords, location) <= radius
end

-- Function to check if the player has the required items
function HasRequiredItems()
    local player = QBCore.Functions.GetPlayerData()
    local playerItems = player.items or {}
    local itemLookup = {}

    -- Create a lookup table for player's items
    for _, item in ipairs(playerItems) do
        itemLookup[item.name] = (itemLookup[item.name] or 0) + item.amount
    end
    
    -- Check if player has all required items in the required amounts
    for _, requiredItem in ipairs(Config.RequiredItems) do
        if not itemLookup[requiredItem.name] or itemLookup[requiredItem.name] < requiredItem.amount then
            return false
        end
    end
    
    return true
end

-- Function to restore power with emote and props
function RestorePower()
    if IsInRestorationZone() then
        if HasRequiredItems() then
            -- Load the animation dictionary for the emote
            RequestAnimDict("anim@amb@nightclub@peds@")
            while not HasAnimDictLoaded("anim@amb@nightclub@peds@") do
                Citizen.Wait(100)
            end

            -- Play the emote
            local playerPed = PlayerPedId()
            TaskPlayAnim(playerPed, "anim@amb@nightclub@peds@", "move_m@hipster@a", 8.0, -8.0, -1, 1, 0, false, false, false)

            -- Start progress bar with props
            exports['progressbar']:Progress({
                name = "power_restoration",
                duration = Config.ProgressBarDuration,
                label = "Restoring Power",
                useWhileDead = false,
                canCancel = true,
                controlDisables = {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                },
                animation = {
                    animDict = "anim@amb@nightclub@peds@",
                    anim = "move_m@hipster@a",
                    flags = 49,
                },
                prop = {
                    model = 'prop_tool_broom',
                    bone = 18905, -- Adjust bone ID as necessary
                    coords = vec3(0.1, 0.02, 0.05),
                    rotation = vec3(10.0, 0.0, 0.0),
                },
                propTwo = {
                    model = 'prop_pencil_01',
                    bone = 58866, -- Adjust bone ID as necessary
                    coords = vec3(0.11, -0.02, 0.001),
                    rotation = vec3(-120.0, 0.0, 0.0),
                }
            }, function(cancelled)
                -- Stop the emote when the progress bar is finished or cancelled
                ClearPedTasks(playerPed)

                if not cancelled then
                    -- On success
                    TriggerServerEvent('power:restorePower')
                else
                    -- On cancel
                    QBCore.Functions.Notify("Power restoration failed", "error")
                end
            end)
        else
            QBCore.Functions.Notify("You don't have the required items", "error")
        end
    else
        QBCore.Functions.Notify("You are not at the correct location to restore power", "error")
    end
end

-- Event handler for blackout effect
RegisterNetEvent('power:blackout', function()
    ApplyBlackout()
end)

-- Event handler for when the power is restored
RegisterNetEvent('power:powerRestored', function()
    -- Clear blackout effect
    ClearBlackout()
    
    -- Play the sound
    TriggerEvent('InteractSound_CL:PlayOnOne', Config.RestorePowerSound, 1.0)
    
    -- Notify player
    QBCore.Functions.Notify("Power restored successfully!", "success")
end)

-- Event handler for explosion
RegisterNetEvent('power:explosion', function()
    -- Trigger explosion effect
    AddExplosion(GetEntityCoords(PlayerPedId()), 1, 100.0, true, false, 1.0)
    QBCore.Functions.Notify("Explosion occurred during power restoration!", "error")
end)

-- Create a blip for the restoration location
Citizen.CreateThread(function()
    local blip = AddBlipForCoord(Config.RestorationLocation.coords)
    SetBlipSprite(blip, 354) -- Choose a sprite ID for the blip (354 is a power plant icon)
    SetBlipScale(blip, 1.0)
    SetBlipColour(blip, 53) -- Choose a color ID for the blip
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Power Station")
    EndTextCommandSetBlipName(blip)
end)

-- Set up qb-target interaction
Citizen.CreateThread(function()
    exports['qb-target']:AddBoxZone("power_restoration", Config.RestorationLocation.coords, Config.RestorationLocation.radius, 1.0, {
        name = "power_restoration",
        heading = 0,
        debugPoly = false,
        minZ = Config.RestorationLocation.coords.z - 1.0,
        maxZ = Config.RestorationLocation.coords.z + 1.0
    }, {
        options = {
            {
                type = "client",
                event = "power:interact",
                icon = "fas fa-bolt", -- Icon for the interaction menu
                label = "Restore Power"
            }
        },
        distance = 2.0
    })
end)

-- Event for qb-target interaction
RegisterNetEvent('power:interact', function()
    RestorePower()
end)

-- Apply blackout effect when the resource starts
Citizen.CreateThread(function()
    Wait(1000) -- Wait for 1 second to ensure the resource is fully loaded
    ApplyBlackout()
end)
