local QBCore = exports['qb-core']:GetCoreObject()
local isEventActive = false
local activeZone = nil

-- Function to spawn a flag at a random zone
local function spawnFlag()
    local zone = Config.Zones[math.random(#Config.Zones)]
    activeZone = zone
    TriggerClientEvent('kingOfTheHill:spawnFlag', -1, zone.x, zone.y, zone.z)
end

-- Function to handle capturing the zone
local function captureZone(playerId)
    local player = QBCore.Functions.GetPlayer(playerId)
    if player then
        -- Grant rewards
        for _, reward in pairs(Config.Rewards) do
            if reward.item == "money" then
                player.Functions.AddMoney('cash', reward.quantity)
            else
                player.Functions.AddItem(reward.item, reward.quantity)
            end
        end
        TriggerClientEvent('QBCore:Notify', playerId, 'Zone captured! Rewards have been given.')
    end
end

-- Function to start the event
local function startEvent()
    isEventActive = true
    spawnFlag()
    Citizen.SetTimeout(Config.CaptureEvent.Interval, function()
        isEventActive = false
        TriggerClientEvent('kingOfTheHill:endEvent', -1)
    end)
end

-- Check for player capture
RegisterServerEvent('kingOfTheHill:attemptCapture')
AddEventHandler('kingOfTheHill:attemptCapture', function()
    local src = source
    if isEventActive then
        captureZone(src)
        startEvent()
    end
end)

-- Start event periodically
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(Config.CaptureEvent.Interval)
        if not isEventActive then
            startEvent()
        end
    end
end)
