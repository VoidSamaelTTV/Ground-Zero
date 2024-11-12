local QBCore = exports['qb-core']:GetCoreObject()

-- RegisterNetEvent to start the upload process
RegisterNetEvent('startUpload')
AddEventHandler('startUpload', function(propNetId)
    local prop = NetworkGetEntityFromNetworkId(propNetId)
    if DoesEntityExist(prop) then
        QBCore.Functions.Progressbar("upload_intel", "Uploading Intel", 10000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function()
            TriggerServerEvent('notifyUploadComplete', "Coordinates or location name here")  -- Replace with actual location
        end)
    else
        print("Invalid prop entity for starting upload.")
    end
end)

-- RegisterNetEvent to receive the completion notification
RegisterNetEvent('notifyUploadComplete')
AddEventHandler('notifyUploadComplete', function(location)
    TriggerEvent('chat:addMessage', {
        template = '<div class="chat-message success">Intel uploaded at {location}</div>',
        args = {location = location}
    })
end)

-- Function to draw the targetable object for qb-target
Citizen.CreateThread(function()
    local propObject = {
        model = "prop_generator_03b",
        coords = vector3(976.26, 6436.81, 32.08),   -- Set the coordinates of the prop where you want it to spawn
    }

    local propEntity = nil

    -- Create the prop entity
    Citizen.CreateThread(function()
        propEntity = CreateObject(GetHashKey(propObject.model), propObject.coords.x, propObject.coords.y, propObject.coords.z, true, true, true)
        SetEntityHeading(propEntity, propObject.heading)
        FreezeEntityPosition(propEntity, true)
        SetEntityCollision(propEntity, true, true)
        PlaceObjectOnGroundProperly(propEntity)
        SetEntityAsMissionEntity(propEntity, true, true)
        SetModelAsNoLongerNeeded(GetHashKey(propObject.model))
    end)

    -- Register the prop as a target for qb-target
    QBCore.Functions.CreateTargetEntity(propEntity, {
        options = {
            {
                event = "qb-target:server:closestObject",
                icon = "fas fa-upload",
                label = "Upload Intel",
                duty = false,
            },
        },
    })
end)

