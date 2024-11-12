local QBCore = exports['qb-core']:GetCoreObject()
local flagObject = nil
local capturing = false
local blip = nil

-- Function to handle flag appearance
RegisterNetEvent('kingOfTheHill:spawnFlag')
AddEventHandler('kingOfTheHill:spawnFlag', function(x, y, z)
    if flagObject then
        DeleteObject(flagObject)
        if blip then
            RemoveBlip(blip)
        end
    end
    local flagHash = GetHashKey(Config.FlagProp)
    RequestModel(flagHash)
    while not HasModelLoaded(flagHash) do
        Citizen.Wait(500)
    end
    flagObject = CreateObject(flagHash, x, y, z, true, true, true)
    PlaceObjectOnGroundProperly(flagObject)
    SetEntityAlpha(flagObject, 255, false)
    SetModelAsNoLongerNeeded(flagHash)
    
    -- Create and display a blip on the map
    blip = AddBlipForCoord(x, y, z)
    SetBlipSprite(blip, 1) -- Change sprite ID if needed
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 1.0)
    SetBlipColour(blip, 1) -- Change colour ID if needed
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString('King of the Hill Event')
    EndTextCommandSetBlipName(blip)
end)

-- Function to handle event end
RegisterNetEvent('kingOfTheHill:endEvent')
AddEventHandler('kingOfTheHill:endEvent', function()
    if flagObject then
        DeleteObject(flagObject)
        flagObject = nil
    end
    if blip then
        RemoveBlip(blip)
        blip = nil
    end
    QBCore.Functions.Notify('The King of the Hill event has ended.')
end)

-- Function to attempt capture
function attemptCapture()
    if not capturing then
        capturing = true
        TriggerServerEvent('kingOfTheHill:attemptCapture')
        Citizen.Wait(Config.CaptureEvent.CaptureTime * 1000)
        capturing = false
    end
end

-- Example interaction trigger (e.g., using qb-target or another method)
RegisterCommand('capture', function()
    if flagObject then
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)
        local flagCoords = GetEntityCoords(flagObject)
        local distance = Vdist(playerCoords, flagCoords)
        
        if distance <= 5.0 then
            attemptCapture()
        else
            QBCore.Functions.Notify('You are too far from the flag to capture it.')
        end
    else
        QBCore.Functions.Notify('No flag is currently active.')
    end
end)
