local QBCore = exports['qb-core']:GetCoreObject()

-- Define the prop object (laptop example)
local propObject = {
    model = "prop_generator_03b",
    coords = vector3(976.26, 6436.81, 32.08),  -- Set the coordinates of the prop where you want it to spawn
    heading = 0.0,  -- Set the heading of the prop (optional)
}

-- Function to send completion notification to clients
RegisterServerEvent('notifyUploadComplete')
AddEventHandler('notifyUploadComplete', function(location)
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div class="chat-message success">Intel uploaded at {location}</div>',
        args = {location = location}
    })
end)

-- Handle the upload process when triggered by qb-target
RegisterServerEvent('qb-target:server:closestObject')
AddEventHandler('qb-target:server:closestObject', function(propNetId)
    local propName = NetworkGetEntityFromNetworkId(propNetId)
    if DoesEntityExist(propName) then
        local model = GetEntityModel(propName)
        if model == GetHashKey(propObject.model) then
            TriggerClientEvent('startUpload', -1, propNetId)
        else
            print("Invalid prop model for intel upload.")
        end
    else
        print("Invalid prop entity for intel upload.")
    end
end)

-- Spawn the prop when the resource starts
Citizen.CreateThread(function()
    local prop = CreateObject(GetHashKey(propObject.model), propObject.coords.x, propObject.coords.y, propObject.coords.z, true, true, true)
    SetEntityHeading(prop, propObject.heading)
    FreezeEntityPosition(prop, true)
    SetEntityCollision(prop, true, true)
    PlaceObjectOnGroundProperly(prop)
end)



