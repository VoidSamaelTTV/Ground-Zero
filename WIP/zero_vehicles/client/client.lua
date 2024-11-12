-- List of weaponized vehicles
local weaponizedVehicles = {
    "rhino",
    "hunter",
    "oppressor",
    "oppressor2",
    "barrage",
    "avenger",
    "insurgent",
    -- Add other weaponized vehicles as needed
}

-- Function to disable weapons in weaponized vehicles
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000) -- Check every second

        local playerPed = PlayerPedId()
        if IsPedInAnyVehicle(playerPed, false) then
            local vehicle = GetVehiclePedIsIn(playerPed, false)
            local vehicleName = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))

            for _, v in ipairs(weaponizedVehicles) do
                if string.lower(vehicleName) == v then
                    -- Disable firing
                    DisableVehicleWeapon(vehicle)

                    -- Notify the player
                    NotifyPlayer("Weapons have been disabled for this vehicle.")
                    break
                end
            end
        end
    end
end)

function DisableVehicleWeapon(vehicle)
    -- Disable the vehicle's weapons
    SetVehicleHasWeapons(vehicle, false)
    SetVehicleWeaponEnabled(vehicle, 0, false) -- Example for primary weapon
    SetVehicleWeaponEnabled(vehicle, 1, false) -- Example for secondary weapon
    SetVehicleWeaponEnabled(vehicle, 2, false) -- Additional weapon slots if applicable
    -- More slots can be added based on the vehicle's weapon setup
end

function NotifyPlayer(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(false, true)
end
