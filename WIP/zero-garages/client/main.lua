local QBCore = exports['qb-core']:GetCoreObject()

local garageObject = nil

RegisterNetEvent('placeGarageObject')
AddEventHandler('placeGarageObject', function(x, y, z, object)
    garageObject = object
    SetEntityCoords(garageObject, x, y, z)
end)

RegisterNetEvent('removeGarageObject')
AddEventHandler('removeGarageObject', function()
    if garageObject ~= nil then
        DeleteEntity(garageObject)
        garageObject = nil
    end
end)

RegisterNetEvent('garage:spawnVehicle')
AddEventHandler('garage:spawnVehicle', function(vehicleProps)
    QBCore.Game.SpawnVehicle(vehicleProps, function(vehicle)
        QBCore.Functions.Notify('Vehicle retrieved from garage.')
    end)
end)

RegisterNetEvent('garage:storeVehicle')
AddEventHandler('garage:storeVehicle', function()
    local vehicle = QBCore.Game.GetClosestVehicle()
    if vehicle ~= 0 then
        QBCore.Functions.Notify('Vehicle stored in the garage.')
        local vehicleProps = QBCore.Game.GetVehicleProperties(vehicle)
        TriggerServerEvent('garage:storeVehicle', vehicleProps)
        QBCore.Game.DeleteVehicle(vehicle)
    else
        QBCore.Functions.Notify('No vehicle nearby to store.')
    end
end)

RegisterNetEvent('garage:retrieveVehicle')
AddEventHandler('garage:retrieveVehicle', function()
    TriggerServerEvent('garage:retrieveVehicle')
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustReleased(0, Keys['INSERT']) then -- Example keybind to place garage object
            local x, y, z = table.unpack(GetEntityCoords(PlayerPedId()))
            local garageObject = CreateObject(GetHashKey('prop_garage_control_01'), x, y, z, true, true, true)
            SetEntityAsMissionEntity(garageObject, true, true)
            TriggerServerEvent('placeGarageObject', x, y, z, garageObject)
        elseif IsControlJustReleased(0, Keys['DELETE']) then -- Example keybind to remove garage object
            TriggerServerEvent('removeGarageObject')
        end
    end
end)
