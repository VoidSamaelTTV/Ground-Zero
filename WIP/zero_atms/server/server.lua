-- Getting the core object for QBCore
QBCore = exports['qb-core']:GetCoreObject()

-- Table to store the last robbery time for each player
local lastRobberyTime = {}
local cooldownDuration = Config.RobberyCooldownDuration  -- Cooldown duration for robbing

-- Server event to notify players about the robbery
RegisterServerEvent('atmrobbery:notifyRobbery', function(coords)
    for _, playerId in ipairs(GetPlayers()) do  -- Iterate through all players
        TriggerClientEvent('atmrobbery:notifyRobberyClient', playerId, coords)  -- Notify each player
    end
end)

-- Server event to start the robbery
RegisterServerEvent('atmrobbery:startRobbery', function()
    local player = source  -- Get the player who triggered the event
    local playerData = QBCore.Functions.GetPlayer(player)  -- Get player data
    local currentTime = GetGameTimer()  -- Get the current game time

    -- Check if the player has the required item
    if not playerData.Functions.HasItem(Config.RequiredItem) then
        TriggerClientEvent('QBCore:Notify', player, "You need a crowbar to rob this ATM!", "error")  -- Notify if item is missing
        return  -- Exit the function
    end

    -- Check if the player is on cooldown for robbery
    if lastRobberyTime[player] and (currentTime - lastRobberyTime[player]) < cooldownDuration then
        local timeLeft = cooldownDuration - (currentTime - lastRobberyTime[player])  -- Calculate remaining cooldown time
        -- Notify the player about the remaining cooldown
        TriggerClientEvent('QBCore:Notify', player, string.format("You must wait %d minutes before robbing another ATM.", math.ceil(timeLeft / 60000)))
        return  -- Exit if still on cooldown
    end

    -- Notify all players about the robbery event
    local playerCoords = GetEntityCoords(GetPlayerPed(player))  -- Get the player's coordinates
    TriggerClientEvent('atmrobbery:notifyRobberyClient', -1, playerCoords)  -- Notify all players
    QBCore.Functions.Notify(Config.NotifyRobberyStart, "success")  -- Notify that the robbery has started

    -- Start the robbery logic here (you can copy the existing robbery logic from the StartRobbery function)
    robberyInProgress = true
    -- ... (continue with the robbery logic from the original StartRobbery)
end)


-- Server event to handle completion of the robbery
RegisterServerEvent('atmrobbery:completeRobbery', function()
    local player = source  -- Get the player who triggered the event
    local currentTime = GetGameTimer()  -- Get the current game time

    -- Check if the player is on cooldown for robbery
    if lastRobberyTime[player] and (currentTime - lastRobberyTime[player]) < cooldownDuration then
        local timeLeft = cooldownDuration - (currentTime - lastRobberyTime[player])  -- Calculate remaining cooldown time
        -- Notify the player about the remaining cooldown
        TriggerClientEvent('QBCore:Notify', player, string.format("You must wait %d minutes before robbing another ATM.", math.ceil(timeLeft / 60000)))
        return  -- Exit if still on cooldown
    end

    -- Generate a random cash reward for the robbery
    local randomCash = math.random(Config.MinReward, Config.MaxReward)
    local playerData = QBCore.Functions.GetPlayer(player)  -- Get player data

    if playerData then
        playerData.Functions.AddMoney('cash', randomCash)  -- Add cash to player's inventory
        -- Notify the player about the robbery success
        TriggerClientEvent('QBCore:Notify', player, string.format(Config.NotifyRobberySuccess, randomCash))

        -- Notify all players about the successful robbery completion
        local playerName = playerData.PlayerData.charinfo.firstname .. " " .. playerData.PlayerData.charinfo.lastname
        for _, playerId in ipairs(GetPlayers()) do
            TriggerClientEvent('QBCore:Notify', playerId, string.format(Config.NotifyRobberyCompletion, playerName, randomCash))
        end

        lastRobberyTime[player] = currentTime  -- Update the last robbery time for the player
    else
        print("Player data not found for player ID: " .. player)  -- Error logging if player data is not found
    end
end)

-- Server event to update the player count in the area
RegisterServerEvent('atmrobbery:updatePlayerCount', function(count)
    for _, playerId in ipairs(GetPlayers()) do  -- Iterate through all players
        TriggerClientEvent('QBCore:Notify', playerId, "Players in the area: " .. count)  -- Notify about the player count
    end
end)
