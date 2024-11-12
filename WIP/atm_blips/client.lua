Citizen.CreateThread(function()
    -- Define ATM models (use the appropriate ATM model hashes)
    local atmModels = {
        `prop_atm_01`, -- ATM model 1
        -- `prop_atm_02`, -- ATM model 2
        -- `prop_atm_03`, -- ATM model 3 (if applicable)
        -- Add more ATM models as needed
    }

    for _, model in ipairs(atmModels) do
        local atmHandle = FindFirstObject(model)
        local success, atm = true, atmHandle

        while success do
            local coords = GetEntityCoords(atm)
            -- Create a blip for the ATM
            local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
            SetBlipSprite(blip, 108) -- ATM sprite
            SetBlipDisplay(blip, 4)
            SetBlipScale(blip, 0.7)
            SetBlipColour(blip, 2) -- Green color
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString("ATM")
            EndTextCommandSetBlipName(blip)

            success, atm = FindNextObject(atmHandle)
        end
        
        EndFindObject(atmHandle)
    end
end)
