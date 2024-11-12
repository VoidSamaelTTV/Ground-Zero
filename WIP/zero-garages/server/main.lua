local QBCore = exports['qb-core']:GetCoreObject()

local storedVehicles = {}

RegisterServerEvent('garage:storeVehicle')
AddEventHandler('garage:storeVehicle', function(vehicleProps)
    local playerId = QBCore.Functions.GetPlayer(source).PlayerData.citizenid
    storedVehicles[playerId] = vehicleProps
end)

RegisterServerEvent('garage:retrieveVehicle')
AddEventHandler('garage:retrieveVehicle', function()
    local playerId = QBCore.Functions.GetPlayer(source).PlayerData.citizenid
    local vehicleProps = storedVehicles[playerId]
    if vehicleProps then
        TriggerClientEvent('garage:spawnVehicle', source, vehicleProps)
        storedVehicles[playerId] = nil
    else
        TriggerClientEvent('QBCore:Notify', source, 'No vehicle stored in the garage.')
    end
end)

QBCore.Functions.CreateCallback('garage:server:GetVehicleProperties', function(source, cb, plate)
    local vehicle = QBCore.Functions.GetVehicleByPlate(plate)
    if vehicle then
        cb(vehicle.props)
    else
        cb(nil)
    end
end)

QBCore.Functions.CreateUseableItem('portablegarage', function(source)
    local player = QBCore.Functions.GetPlayer(source)
    local playerId = player.PlayerData.citizenid
    if storedVehicles[playerId] then
        TriggerClientEvent('QBCore:Notify', source, 'You cannot remove the garage while a vehicle is stored inside.')
    else
        storedVehicles[playerId] = nil
        TriggerClientEvent('inventory:client:SetCurrentStash', source, 'portablegarage')
        TriggerClientEvent('inventory:client:closeInventory', source)
    end
end)
