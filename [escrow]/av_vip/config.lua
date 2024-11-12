-- Discord and Gift Cards config are located inside server/main.lua

Config = {}
Config.Identifier = 'license' -- 'steam' or 'license', depends on what identifier your server uses
Config.Command = 'vip_code' -- The command used to redeem your VIP package In Game
Config.vipCommand = 'vip' -- It will show a notification with your current VIP status and level
Config.CreateCommand = 'giftcard' -- /giftcard [months] [level] (For Admins Only, check HOW TO.lua)

Config.Lang = {
	['tebex_not_found'] = '^2[ERROR] ^3No Tebex Secret ID found on server.cfg',
	['transaction_missing'] = 'You need to insert your Tebex Transaction ID',
	['transaction_not_found'] = 'Transaction ID not found',
	['already_redeemed'] = 'This code has been already reedemed',
	['success'] = 'Congratulations! Code redeemed successfully',
	['vip_notfound'] = "Not VIP member",
	['vip_active'] = 'Your VIP is active until: ',
	['vip_level'] = 'Your VIP Level: ',
	['not_whitelisted'] = "You don't have access",
	['giftcard_created'] = 'Gift Card created, verify the Discord Channel'
}

--	Your Notification System
RegisterNetEvent('av_vip:notification')
AddEventHandler('av_vip:notification', function(type,msg)
--	Types used: (error | success)
--	print(msg)
	TriggerEvent('chat:addMessage', {color = { 255, 0, 0}, multiline = false, args = {"VIP", msg}}) 
exports['okokNotify']:Alert("VIP", msg, 5000, 'info')
end)