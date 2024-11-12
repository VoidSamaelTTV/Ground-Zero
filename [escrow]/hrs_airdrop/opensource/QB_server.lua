if Config.Framework == "QB" then
	QBCore = exports['qb-core']:GetCoreObject()

    function GetItemLabel(name)
		local label = ""

		if name == "money" then
			label = Config.moneyLabel
		elseif QBCore.Shared.Items[name] then
			label = QBCore.Shared.Items[name].label
		else
			label = name.." (no-label)"
		end

        return label
    end

	function GetPlayerFromId(source)
		return QBCore.Functions.GetPlayer(source)
	end

	function ShowNotification(source,text)
		TriggerClientEvent('QBCore:Notify', source, text)
	end

	function AddInventoryItem(xPlayer,item,count)
		if item == "money" then
			xPlayer.Functions.AddMoney("cash", count)
			TriggerEvent('hrs_airdrop:log','drop',xPlayer.PlayerData.source,'Situation: **Add Item** \n Item Added: **"'..item..'"**\n Count: **'..count.."**")
			return true
		else
			if xPlayer.Functions.AddItem(item,count) then
				TriggerEvent('hrs_airdrop:log','drop',xPlayer.PlayerData.source,'Situation: **Add Item** \n Item Added: **"'..item..'"**\n Count: **'..count.."**")
				return true
			else
				return false
			end
		end
	end

	function RemoveInventoryItem(xPlayer,item,count) 
		xPlayer.Functions.RemoveItem(item,count)
	end

	for k,v in pairs(Config.AirDropItems) do
		QBCore.Functions.CreateUseableItem(k, function(source)
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

	QBCore.Commands.Add('airdrop', 'Call a drop, you need to choose the drop type as argument', {}, false, function(xPlayer, args)
		if args[1] then
			if Config.DropTypes[args[1]] then
				local coords = GetEntityCoords(GetPlayerPed(xPlayer))
				TriggerEvent('hrs_airdrop:generateAirDrop',coords,args[1])
				TriggerEvent('hrs_airdrop:log','drop',_source,'Situation: **Admin Drop** \n Drop Type: **"'..args[1]..'"**\n Location: **'..coords.."**")
			end
		end
    end, 'admin')


    -- local clothes = {
    --     ['hat'] = {mID = 1, mModelMax = 173, mTexture = 0, wID = 1, wModelMax = 172, wTexture = 0},
    --     ['torso'] = {mID = 11, mModelMax = 173, mTexture = 0, mTorso = 15, wID = 11, wModelMax = 172, wTexture = 0, wTorso = 15},
    --     ['pants'] = {mID = 4, mModelMax = 173, mTexture = 0, wID = 4, wModelMax = 172, wTexture = 0},
    --     ['shoes'] = {mID = 6, mModelMax = 173, mTexture = 0, wID = 6, wModelMax = 172, wTexture = 0},
    --     ['watch'] = {mID = 7, mModelMax = 173, mTexture = 0, wID = 7, wModelMax = 172, wTexture = 0},
    --     ['tshirt'] = {mID = 8, mModelMax = 173, mTexture = 0, wID = 8, wModelMax = 172, wTexture = 0}
    -- }

    -- function AddInventoryItem(xPlayer,item,count)
    --     local metadata = nil
        
    --     if clothes[item] then
    --         metadata = {}

    --         for k,v in pairs(clothes[item]) do
    --             if k == "mModelMax" then
    --                 metadata.mModel = math.random(0,v)
    --             elseif k == "wModelMax" then
    --                 metadata.wModel = math.random(0,v)
    --             else
    --                 metadata[k] = v
    --             end
    --         end
    --     end

    --     if xPlayer.Functions.AddItem(item,count,nil,metadata) then
    --         return true
    --     else
    --         return false
    --     end
    -- end

	function HasEnoughtInventoryItem(xPlayer,item,count)
		local itemAmount = xPlayer.Functions.GetItemByName(item)
		if itemAmount and itemAmount.amount >= count then
			return true
		else
			return false
		end
	end

end
