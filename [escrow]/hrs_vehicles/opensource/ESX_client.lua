if Config.Framework == "ESX" then
    labels = {}

    ESX = exports['es_extended']:getSharedObject()


    -- ESX = nil
    -- CreateThread(function()
	--     while ESX == nil do
	-- 	    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	-- 	    Wait(0)
	--     end
        TriggerServerEvent('hrs_vehicles:getLabelsS')
    --end)


    local firstSpawn = true
    RegisterNetEvent('esx:playerLoaded')
    AddEventHandler('esx:playerLoaded', function()
        if firstSpawn then
            GetSpawnVehicles()
            firstSpawn = false
        end
    end)

    RegisterNetEvent('hrs_vehicles:getLabelsC')
    AddEventHandler('hrs_vehicles:getLabelsC', function(lab)
        for k,v in pairs(lab) do
            labels[k] = v
        end
    end)

    function GetVehiclePropertiesSave(vehicle)
        return ESX.Game.GetVehicleProperties(vehicle)
    end

    function SetVehiclePropertiesSave(vehicle, props)
        return ESX.Game.SetVehicleProperties(vehicle, props)
    end

    function ShowNotification(text)
        ESX.ShowNotification(text)
    end
end



-- RegisterCommand('convertper',function()
--     --setVehiclePersistent(GetVehiclePedIsIn(PlayerPedId()))
--     SetVehicleNumberPlateText(GetVehiclePedIsIn(PlayerPedId()),"3618SQHW")
-- end)




