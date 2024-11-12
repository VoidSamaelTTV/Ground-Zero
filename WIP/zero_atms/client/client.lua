-- Variable to track if a robbery is currently in progress
local robberyInProgress = false
-- Variable to manage robbery cooldown state
local robberyCooldown = false
-- Variable to hold the cooldown end time
local cooldownEndTime = 0 
-- Getting the core object for QBCore
QBCore = exports['qb-core']:GetCoreObject()

-- Function to start the cooldown for robbery after it ends
local function startCooldown(duration)
    robberyCooldown = true  -- Set cooldown state to true
    cooldownEndTime = GetGameTimer() + duration  -- Calculate when the cooldown will end
    Citizen.Wait(duration)  -- Wait for the duration of the cooldown
    robberyCooldown = false  -- Reset cooldown state after waiting
end

-- Function to notify players about the robbery cooldown time left
local function notifyRobberyCooldown()
    local timeLeft = cooldownEndTime - GetGameTimer()  -- Calculate remaining time
    local minutesLeft = math.floor(timeLeft / 60000)  -- Convert milliseconds to minutes
    local secondsLeft = math.floor((timeLeft % 60000) / 1000)  -- Convert remaining time to seconds
    -- Send notification to players
    QBCore.Functions.Notify(string.format(Config.NotifyRobberyCooldown, minutesLeft, secondsLeft), "error")
end

-- Function to check if the player has the required item (crowbar) to start the robbery
local function hasRequiredItem()
    return QBCore.Functions.HasItem(Config.RequiredItem)  -- Check for the required item
end

-- Function to create blips on the map for the robbery and its zone
local function createBlips(playerCoords)
    -- Create a blip for the robbery location
    local robberyBlip = AddBlipForCoord(playerCoords)
    SetBlipSprite(robberyBlip, Config.BlipSpriteRobbery)  -- Set blip sprite
    SetBlipColour(robberyBlip, Config.BlipColourRobbery)  -- Set blip color
    SetBlipScale(robberyBlip, Config.BlipScaleRobbery)  -- Set blip size
    SetBlipAsShortRange(robberyBlip, true)  -- Make blip visible only when nearby
    BeginTextCommandSetBlipName("STRING")  -- Set blip name
    AddTextComponentString("ATM Robbery")  -- Name for the blip
    EndTextCommandSetBlipName(robberyBlip)  -- End blip name setup

    -- Create a blip for the robbery zone radius
    local robberyZoneBlip = AddBlipForRadius(playerCoords, Config.ZoneRadius)
    SetBlipSprite(robberyZoneBlip, Config.BlipSpriteZone)  -- Set zone blip sprite
    SetBlipColour(robberyZoneBlip, Config.BlipColourZone)  -- Set zone blip color
    SetBlipAlpha(robberyZoneBlip, Config.BlipAlphaZone)  -- Set transparency of the zone blip
    SetBlipAsShortRange(robberyZoneBlip, true)  -- Make zone blip visible only when nearby

    return robberyBlip, robberyZoneBlip  -- Return created blips
end

-- Function to start the robbery process
function StartRobbery()
    -- Check if a robbery is already in progress or if there's a cooldown
    if robberyInProgress or robberyCooldown then
        if robberyCooldown then
            notifyRobberyCooldown()  -- Notify the player about the cooldown
        else
            QBCore.Functions.Notify("A robbery is already in progress!", "error")  -- Notify about ongoing robbery
        end
        return  -- Exit the function if robbery can't start
    end

    -- Check if the player has the required item
    if not hasRequiredItem() then
        QBCore.Functions.Notify("You need a crowbar to rob this ATM!", "error")  -- Notify if item is missing
        return  -- Exit the function
    end

    robberyInProgress = true  -- Set robbery state to in progress
    local playerPed = PlayerPedId()  -- Get the player's character entity
    local playerCoords = GetEntityCoords(playerPed)  -- Get the player's coordinates

    -- Notify the server about the robbery event
    TriggerServerEvent('atmrobbery:notifyRobbery', playerCoords)
    QBCore.Functions.Notify(Config.NotifyRobberyStart, "success")  -- Notify that the robbery has started
    -- Play sound effect for the robbery
    TriggerEvent('InteractSound_CL:PlayWithinDistance', playerCoords, 100.0, 'facility_alarm', 1.0)

    local robberyBlip, robberyZoneBlip = createBlips(playerCoords)  -- Create blips for robbery
    local robberyTimer = Config.RobberyDuration  -- Set robbery duration
    local startTime = GetGameTimer()  -- Get the current time

    -- Thread to handle the robbery progress
    Citizen.CreateThread(function()
        while robberyTimer > 0 do
            Citizen.Wait(1000)  -- Wait for 1 second
            local playersInZone = GetPlayersInZone(playerCoords, Config.ZoneRadius)  -- Check for players in the area

            if #playersInZone > 0 then
                robberyTimer = robberyTimer - 1  -- Decrease timer if players are present
                local progress = math.floor(((Config.RobberyDuration - robberyTimer) / Config.RobberyDuration) * 100)  -- Calculate progress percentage
                -- Send progress updates to the UI
                SendNUIMessage({ action = "show" })
                SendNUIMessage({ action = "updateProgress", progress = progress, text = string.format("Progress: %d%%", progress) })
            else
                SendNUIMessage({ action = "hide" })  -- Hide UI if no players are present
                Citizen.Wait(1000)  -- Wait for another second
            end

            -- Check if the robbery fails due to timeout
            if GetGameTimer() - startTime >= Config.RobberyFailDuration then
                QBCore.Functions.Notify(Config.NotifyRobberyFailed, "error")  -- Notify robbery failed
                EndRobbery(true)  -- End robbery with timeout flag
                return
            end
        end
        EndRobbery(false)  -- End robbery successfully
    end)

    -- Event to notify players in the area about the robbery
    RegisterNetEvent('atmrobbery:notifyRobberyClient', function(coords)
        TriggerEvent('QBCore:Notify', string.format(Config.StreetNameMessage, GetStreetNameFromCoords(coords)))  -- Notify players with street name
    end)

    -- Thread to update player count in the UI
    Citizen.CreateThread(function()
        while robberyInProgress do
            Citizen.Wait(1000)  -- Wait for 1 second
            local playersInZone = GetPlayersInZone(playerCoords, Config.ZoneRadius)  -- Get players in the zone
            SendNUIMessage({ action = playersInZone and "updatePlayerCount" or "hide", count = #playersInZone })  -- Update UI or hide
        end
    end)
end

-- Function to end the robbery and handle its consequences
function EndRobbery(isTimeout)
    robberyInProgress = false  -- Set robbery state to not in progress
    RemoveBlip(robberyBlip)  -- Remove the robbery blip from the map
    RemoveBlip(robberyZoneBlip)  -- Remove the zone blip from the map
    SetNuiFocus(false)  -- Reset focus for NUI
    SendNUIMessage({ action = "hide" })  -- Hide NUI elements

    local playerId = PlayerId()  -- Get the player ID
    local playerName = GetPlayerName(playerId)  -- Get the player's name

    -- Notify the server about the robbery result (success or failed)
    TriggerServerEvent(isTimeout and 'atmrobbery:failedRobbery' or 'atmrobbery:completeRobbery', playerName)

    -- Start cooldown for the robbery
    Citizen.CreateThread(function()
        startCooldown(Config.RobberyCooldownDuration)  -- Call cooldown function
    end)
end

-- Function to get a list of players in a specified zone
function GetPlayersInZone(coords, radius)
    local players = {}  -- Initialize empty player list
    for _, playerId in ipairs(QBCore.Functions.GetPlayers()) do  -- Iterate over all players
        local targetPed = GetPlayerPed(playerId)  -- Get the player character
        local targetCoords = GetEntityCoords(targetPed)  -- Get the player's coordinates
        -- Check if the player is within the specified radius
        if #(coords - targetCoords) < radius then
            table.insert(players, playerId)  -- Add player to the list
        end
    end
    return players  -- Return the list of players
end

-- Setting up interaction target for the ATM model
exports['qb-target']:AddTargetModel('prop_atm_01', {
    options = {
        {
            type = "client",
            event = "atmrobbery:startRobbery",  -- Event to trigger on interaction
            icon = "fas fa-money-bill",  -- Icon for the interaction
            label = "Rob ATM",  -- Label shown in the interaction menu
            canInteract = function() return true end  -- Condition to allow interaction
        }
    },
    distance = 2.5  -- Distance within which the interaction can occur
})

-- Event to start the robbery when triggered
RegisterNetEvent('atmrobbery:startRobbery', function()
    if robberyCooldown then
        notifyRobberyCooldown()  -- Notify about the cooldown if active
        return  -- Exit the function
    end
    StartRobbery()  -- Start the robbery
end)

-- Function to get the street name based on coordinates
function GetStreetNameFromCoords(coords)
    local streetHash, _ = GetStreetNameAtCoord(coords.x, coords.y, coords.z)  -- Get street hash from coordinates
    return GetStreetNameFromHashKey(streetHash)  -- Return street name
end
