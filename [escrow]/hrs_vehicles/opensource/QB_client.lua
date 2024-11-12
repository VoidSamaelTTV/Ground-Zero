if Config.Framework == "QB" then
    labels = {}

    QBCore = exports['qb-core']:GetCoreObject()

    function loadLabels()
        local items = QBCore.Shared.Items

        for k,v in pairs(items) do
            labels[k] = v.label
        end
    end

    loadLabels()

    function ShowNotification(text)
        QBCore.Functions.Notify(text)
    end

    local firstSpawn = true

    RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function() 
        if firstSpawn then
            GetSpawnVehicles()
            firstSpawn = false
        end
    end)

    function GetVehiclePropertiesSave(vehicle)
        return QBCore.Functions.GetVehicleProperties(vehicle)
    end

    function SetVehiclePropertiesSave(vehicle, props)
        return QBCore.Functions.SetVehicleProperties(vehicle,props)
    end

    function ShowNotification(text)
        QBCore.Functions.Notify(text)
    end
end








