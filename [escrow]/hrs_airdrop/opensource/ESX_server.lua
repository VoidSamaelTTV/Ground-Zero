if Config.Framework == "ESX" then

	ESX = nil  
	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

	function GetItemLabel(name)
		local label = ""

		if name == "money" then
			label = Config.moneyLabel
		elseif ESX.GetItemLabel(name) then
			label = ESX.GetItemLabel(name)
		else
			label = name.." (no-label)"
		end

        return label
    end

    function GetPlayerFromId(source)
		return ESX.GetPlayerFromId(source)
	end

	function ShowNotification(source,text)
		TriggerClientEvent('esx:showNotification', source, text)
	end

	function HasEnoughtInventoryItem(xPlayer,item,count)
		local itemAmount = xPlayer.getInventoryItem(item)

		if not itemAmount then
			print("ITEM "..item.." IS NOT REGISTERED IN YOUR SERVER")
			return false
		end

		if itemAmount and itemAmount.count and itemAmount.count >= count then
			return true
		end

		return false
	end

	function AddInventoryItem(xPlayer,item,count)
		if item == "money" then
			xPlayer.addAccountMoney("money", count)
			TriggerEvent('hrs_airdrop:log','drop',xPlayer.source,'Situation: **Add Item** \n Item Added: **"'..item..'"**\n Count: **'..count.."**")
			return true
		else
			if xPlayer.canCarryItem(item,count) then
				xPlayer.addInventoryItem(item,count)
				TriggerEvent('hrs_airdrop:log','drop',xPlayer.source,'Situation: **Add Item** \n Item Added: **"'..item..'"**\n Count: **'..count.."**")
				return true
			else
				return false
			end
		end
	end


	function RemoveInventoryItem(xPlayer,item,count) 
		xPlayer.removeInventoryItem(item,count)
	end

	for k,v in pairs(Config.AirDropItems) do
		ESX.RegisterUsableItem(k, function(source)
			local _source = source
			local item = k
			local dropIndex = v
			local coords = GetEntityCoords(GetPlayerPed(_source))
			local xPlayer = GetPlayerFromId(_source)
			if HasEnoughtInventoryItem(xPlayer,item,1) then
				RemoveInventoryItem(xPlayer,item,1)
				TriggerEvent('hrs_airdrop:generateAirDrop',coords,dropIndex)
			end
			TriggerEvent('hrs_airdrop:log','drop',_source,'Situation: **Drop Call** \n Drop Type: **"'..dropIndex..'"**\n Location: **'..coords.."**")
		end)
	end

	ESX.RegisterCommand({'airdrop'}, 'admin', function(xPlayer, args, showError)
		local coords = GetEntityCoords(GetPlayerPed(xPlayer.source))
		TriggerEvent('hrs_airdrop:generateAirDrop',coords,args.dropIndex)
		TriggerEvent('hrs_airdrop:log','drop',xPlayer.source,'Situation: **Admin Drop** \n Drop Type: **"'..args.dropIndex..'"**\n Location: **'..coords.."**")
	end, false, {help = 'Spawn Air Drop', validate = false, arguments = {
		{name = 'dropIndex', help = "Drop Type", type = 'any'}
	}})



end
