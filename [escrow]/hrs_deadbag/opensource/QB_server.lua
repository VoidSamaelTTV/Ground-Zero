if Config.Framework == "QB" then

	QBCore = exports['qb-core']:GetCoreObject()

    function GetItemLabel(name)
        return QBCore.Shared.Items[name].label
    end

	function GetPlayerFromId(source)
		return QBCore.Functions.GetPlayer(source)
	end

	function ShowNotification(source,text)
		TriggerClientEvent('QBCore:Notify', source, text)
	end

	function AddInventoryItem(xPlayer,item,count,metadata)
		-- if Config.inventory == 'core_inventory' then
		-- 	local newItem = xPlayer.Functions.AddItem(item,count,nil,metadata)

		-- 	--print(json.encode(newItem))

			

		-- 	if newItem then
		-- 		if type(newItem) == 'table' and metadata then
		-- 			print(json.encode(metadata))
		-- 			exports['core_inventory']:updateMetadata('content-' ..  xPlayer.PlayerData.citizenid, newItem.id, metadata)
		-- 		end
		-- 		return true
		-- 	end
		-- else
			if xPlayer.Functions.AddItem(item,count,nil,metadata) then
				return true
			end
		--end
		return false
	end

	function coreInvToBag(invName,idInfo,bool)
		local inv = exports['core_inventory']:getInventory(invName)
		for k,v in pairs(inv) do
			if v and v.name and not Config.itemsNotLoose[v.name] then
				if v.category == 'backpacks' or v.category == 'cases' then
					coreInvToBag('inv-'..v.id,idInfo)
				end

				if v.info then
					if v.info.attachments then
						for k2,v2 in pairs(v.info.attachments) do
							AddBagItem(idInfo, v2.name, 1)  
						end
						v.info.attachments = {}
					end
				end

				if bool then
					if v.amount then
						exports['core_inventory']:removeItem(invName, v.name, v.amount)
					else
						v.amount = 1
						exports['core_inventory']:removeItemExact(invName, v.id)
					end
				end

				AddBagItem(idInfo, v.name, v.amount, v.info)   
			end
		end
	end



	function ClearInventory(xPlayer,coords)
		if Config.inventory == 'ox_inventory' then
			if xPlayer then
				local idInfo = xPlayer.PlayerData.source..""..Round(coords.x * 10)..Round(coords.y * 10)..Round(coords.z * 10)
				idInfo = string.gsub(idInfo, "-", "m")

				local inv = exports.ox_inventory:GetInventoryItems(xPlayer.PlayerData.source)

				exports.ox_inventory:RegisterStash(idInfo,"deadped",50,50000)
				local empty = true
				for k,v in pairs(inv) do
					if v and v.name and not Config.itemsNotLoose[v.name] then	
						empty = false
						--print(v.name..":"..v.count.." Slot: "..v.slot)
						xPlayer.Functions.RemoveItem(v.name, v.count, v.metadata, v.slot)
						exports.ox_inventory:AddItem(idInfo, v.name, v.count, v.metadata,v.slot)	
						
						
					end
				end

				if empty then
					idInfo = false
				else
					
				end

				return idInfo
			else
				return false
			end
		elseif Config.inventory == 'core_inventory' then
			
			if xPlayer then
				local idInfo = xPlayer.PlayerData.source..""..Round(coords.x * 10)..Round(coords.y * 10)..Round(coords.z * 10)
				idInfo = string.gsub(idInfo, "-", "m")
				
				local invName = 'content-' ..  xPlayer.PlayerData.citizenid
				
				RegisterBag(idInfo)
				coreInvToBag(invName,idInfo,true)

				--coreInvToBag('primary-' ..  xPlayer.PlayerData.citizenid,idInfo,true)
				--coreInvToBag('secondry-' ..  xPlayer.PlayerData.citizenid,idInfo,true)
							
				if IsBagEmpty(idInfo) then
					ClearBag(idInfo) 
					idInfo = false				
				end

				return idInfo
			else
				return false
			end

		else
			if xPlayer then
				local idInfo = xPlayer.PlayerData.source..""..Round(coords.x * 10)..Round(coords.y * 10)..Round(coords.z * 10)
				idInfo = string.gsub(idInfo, "-", "m")

				local inv = xPlayer.PlayerData.items
		
				RegisterBag(idInfo)
				local empty = true
				for k,v in pairs(inv) do
					if v and v.name and not Config.itemsNotLoose[v.name] then	
						empty = false
						xPlayer.Functions.RemoveItem(v.name, v.amount, v.slot)
						AddBagItem(idInfo, v.name, v.amount, v.info)					
					end
				end
				
				if empty then
					ClearBag(idInfo) 

					idInfo = false
				else
					
				end

				return idInfo
			else
				return false
			end
		end
	end

	function SendDeadLog(xPlayer,coords,idInfo)
		if idInfo and not IsInventoryEmpty(idInfo) then
			local items = CheckInventoryItems(idInfo)
			if items then
				--print('Situation: **Died** \n Items Lost: **"'..json.encode(items)..'"**\n Coords: **'..coords.."**")
				TriggerEvent('hrs_deadbag:log','dead',xPlayer.PlayerData.source,'Situation: **Died** \n Items Lost: **"'..json.encode(items)..'"**\n Coords: **'..coords.."**")
			end
		end
	end

	function IsInventoryEmpty(idInfo)
		if Config.inventory == 'ox_inventory' then
			local inventory = exports.ox_inventory:GetInventory(idInfo, false)
			
			if not inventory then
				return true
			end

			if not inventory.items then
				return true
			end

			for k,v in pairs(inventory.items) do
				return false
			end

			return true
		else
			return IsBagEmpty(idInfo)
		end
	end

	function CheckInventoryItems(idInfo)
		if Config.inventory == 'ox_inventory' then
			local inventory = exports.ox_inventory:GetInventory(idInfo, false)

			if not inventory then
				return nil
			end

			if not inventory.items then
				return nil
			end

			return inventory.items
		else
			return GetBagItems(idInfo)
		end
	end


	function GetPlayerCoords(xPlayer,source)
		return GetEntityCoords(GetPlayerPed(source))
	end

	function DeleteInventory(idInfo)
		if Config.inventory == 'ox_inventory' then
			exports.ox_inventory:ClearInventory(idInfo)
		else
			ClearBag(idInfo)
		end	
	end

	function GetChance(xPlayer)
		return math.random(1,100)
	end

end
