

-- !!!! DON'T CHANGE THE RESOURCE NAME OR IT WILL STOP WORKING !!!!

--[[
		TEBEX
					]]--


[1] = 'You need to setup your Tebex Webstore and connect it to your Fivem server adding this convar'

		sv_tebexSecret Your_Tebex_Secret_Key

[2] = 'Create a new Package on your Webstore'

[3] = 'Inside Package creation you will see a section called Commands'

[4] = 'Set Commands section like this: '

	--	From the Dropmenu select 'When this package is purchased'
	
[5] = 'After that paste this code:'
	
		tebex {transaction} 1 2

	-- This code is important, is the command that Tebex will trigger on your server after a player makes a purchase	
	-- You can change the first and second number only
	
	-- First number: months
	-- Second number: level
	
[6]	= 'If you Create a Package for 6 Months of VIP Gold (Level 3) set the command like this'
		
		tebex {transaction} 6 3
	
	-- Where 6 are the months and 3 the level
	-- {transaction} is the Tebex Transaction ID that you and the buyer receives
	-- Do the same for all your VIP packages, different months and levels, you can add as many as you want
	-- But always respect the code... tebex {transaction} months level
	
[7] = 'When a player buys a package, Tebex will take up to 10 minutes to trigger the command on your server, be patient'

[8] = 'Once the command is triggered by Tebex, you will receive a message on Discord and the database will also receive it'

[9] = 'Players have to use the command inside server with their Tebex Transaction ID'

[10] = "If your server was offline when a player bought the package and Tebex couldn't trigger the command then you can create a Gift Card for the player"

	-- NOT VIP players are Level 0 by default, don't create any package giving Level 0 

--[[
	
	GIFT CARDS
	
				]]--
				
				
[1] = 'Add your Admin/Mods on server > main.lua > line 3 inside admin table, use Steam or License'

[2] = 'Once you are whitelisted you are ready to create Gift Cards In Game by using the Command /giftcard [Months] [Level]'

[3] = "The Gift Card will be sent to Discord to prevent any kind of leak, for example if you are streaming while creating Gift Cards for your community"

[4] = 'Send the code to your player, he/she will be able to redeem it using command /vip_code [CODE]'


--[[

	How to get VIP status from Client Side:

												]]--

-- This is an example of getting the VIP status and level from a different resource using the exports

RegisterCommand('clvip',function()
	local vip = exports['av_vip']:isVIP() -- isVIP() returns TRUE or FALSE
	local lvl = exports['av_vip']:Level() -- Level() returns number
	if vip then
		print('VIP active')
		print('VIP Level '..lvl)
	else
		print('Not VIP')
	end
end)

-- Example of a Shop for VIP members Level 2
-- Not VIP players will return 0 on export Level(), be careful and don't use level 0

Citizen.CreateThread(function()
	local p = PlayerPedId()
	while true do
		Citizen.Wait(5)
		if #(GetEntityCoords(p) - vector3(387.653, -749.014, 29.293)) < 3 then
--			DrawMarker(a lot of config here)
			if IsControlJustPressed(0,38) and exports['av_vip']:isVIP() then				
				if exports['av_vip']:Level() == 2 then
					print('Open Shop')
				else
					print('You are VIP but not Level 2')
				end
			end
		end
	end
end)

--[[

	How to get VIP status from Server Side:

												]]--

-- This is an example of getting the VIP status and level from a different resource using events
-- Using TriggerEvent('av_vip:getVIP', source, function(data)
-- data.vip returns TRUE or FALSE
-- data.level returns number

RegisterCommand('svvip',function(source,args)	
	TriggerEvent('av_vip:getVIP', source, function(data)		
		if data.vip then
			local level = data.level
			print('VIP Active')				
			print(level)
		else
			print('Not VIP')
		end
	end)	
end)

