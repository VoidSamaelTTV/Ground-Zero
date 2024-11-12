RegisterNetEvent('um-tutorial:server:doneTutorial', function()
--[[
    Code here will be executed when the client has finished the tutorial
]]
    Debug('Tutorial completed')
end)

RegisterCommand('opentutorial', function(source, args, rawCommand)
    -- Trigger the event 'um-tutorial:client:openTutorial' on the client side
    TriggerClientEvent('um-tutorial:client:openTutorial', source)
end, false)