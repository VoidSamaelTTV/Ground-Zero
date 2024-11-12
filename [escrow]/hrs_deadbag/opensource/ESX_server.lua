function Round(value, numDecimalPlaces)
	if numDecimalPlaces then
		local power = 10^numDecimalPlaces
		return math.floor((value * power) + 0.5) / (power)
	else
		return math.floor(value + 0.5)
	end
end

if Config.Framework == "ESX" then

	ESX = exports["es_extended"]:getSharedObject()

	-- ESX = nil  
	-- TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

    function GetItemLabel(name)

		if Config.inventory == 'default_esx' then
			if string.match(name,'WEAPON') then
				return ESX.GetWeaponLabel(string.upper(name))
			end
		end

        return ESX.GetItemLabel(name)
    end

    function GetPlayerFromId(source)
		return ESX.GetPlayerFromId(source)
	end

	function coreInvToBag(invName,idInfo,bool)
		local inv = exports['core_inventory']:getInventory(invName)

		--print(json.encode(inv))

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
		--local idInfo = nil

		if Config.inventory == 'ox_inventory' then
			if xPlayer then
				local idInfo = xPlayer.source..""..Round(coords.x * 10)..Round(coords.y * 10)..Round(coords.z * 10)
				idInfo = string.gsub(idInfo, "-", "m")

				local inv = xPlayer.getInventory()

				exports.ox_inventory:RegisterStash(idInfo,"deadped",50,50000)
				local empty = true
				for k,v in pairs(inv) do
					if v and v.name and not Config.itemsNotLoose[v.name] then	
						empty = false
						xPlayer.removeInventoryItem(v.name, v.count, v.metadata, v.slot)
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
				local idInfo = xPlayer.source..""..Round(coords.x * 10)..Round(coords.y * 10)..Round(coords.z * 10)
				idInfo = string.gsub(idInfo, "-", "m")
				
				local invName = 'content-' ..  xPlayer.identifier:gsub(":", "")

				
				
				RegisterBag(idInfo)
				coreInvToBag(invName,idInfo,true)

				coreInvToBag('primary-' ..  xPlayer.identifier:gsub(":", ""),idInfo,true)
				coreInvToBag('secondry-' ..  xPlayer.identifier:gsub(":", ""),idInfo,true)
							
				if IsBagEmpty(idInfo) then
					ClearBag(idInfo) 
					idInfo = false				
				end

				return idInfo
			else
				return false
			end

		elseif Config.inventory == 'qs-inventory' then
			if xPlayer then
				local idInfo = xPlayer.source..""..Round(coords.x * 10)..Round(coords.y * 10)..Round(coords.z * 10)
				idInfo = string.gsub(idInfo, "-", "m")

				local inv = xPlayer.getInventory()

				--print(json.encode(inv))

				RegisterBag(idInfo)
				local empty = true
				for k,v in pairs(inv) do
					if v and v.name and not Config.itemsNotLoose[v.name] then	
						empty = false

						exports['qs-inventory']:RemoveItem(xPlayer.source, v.name, v.amount, v.slot, v.info)
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
		else
			if xPlayer then
				local idInfo = xPlayer.source..""..Round(coords.x * 10)..Round(coords.y * 10)..Round(coords.z * 10)
				idInfo = string.gsub(idInfo, "-", "m")

				local inv = xPlayer.getInventory()

				--print(json.encode(inv))

				RegisterBag(idInfo)
				local empty = true
				for k,v in pairs(inv) do
					if v and v.name and not Config.itemsNotLoose[v.name] and v.count > 0 then	
						empty = false
						xPlayer.removeInventoryItem(v.name, v.count, v.metadata, v.slot)
						AddBagItem(idInfo, v.name, v.count, v.metadata)					
					end
				end
				
				if Config.inventory == 'default_esx' then
					local loadout = xPlayer.getLoadout()
					for k,v in pairs(loadout) do
						if v and v.name and not Config.itemsNotLoose[v.name] then	
							empty = false
							xPlayer.removeWeapon(v.name)
							AddBagItem(idInfo, v.name, 1, v)					
						end
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



		--print(idInfo)


	end

	function SendDeadLog(xPlayer,coords,idInfo)
		if idInfo and not IsInventoryEmpty(idInfo) then
			local items = CheckInventoryItems(idInfo)
			if items then
				--print('Situation: **Died** \n Items Lost: **"'..json.encode(items)..'"**\n Coords: **'..coords.."**")
				TriggerEvent('hrs_deadbag:log','dead',xPlayer.source,'Situation: **Died** \n Items Lost: **"'..json.encode(items)..'"**\n Coords: **'..coords.."**")
			end
		end
	end

	function GetPlayerCoords(xPlayer)
		return xPlayer.getCoords(true)
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

	function DeleteInventory(idInfo)
		if Config.inventory == 'ox_inventory' then
			exports.ox_inventory:ClearInventory(idInfo)
		else
			ClearBag(idInfo)
		end
	end

	function ShowNotification(source,text)
		TriggerClientEvent('esx:showNotification', source, text)
	end

	function AddInventoryItem(xPlayer,item,count,metadata)
		if Config.inventory == 'core_inventory' then
			return xPlayer.addInventoryItem(item,count,metadata)
		elseif Config.inventory == 'qs-inventory' then
			if xPlayer.canCarryItem(item,count) then
				exports['qs-inventory']:AddItem(xPlayer.source, item, count, nil, metadata)
				
				return true
			else
				return false
			end
		else
			if Config.inventory == 'default_esx' then
				if string.match(item,'WEAPON') then
					if not xPlayer.hasWeapon(item) then

						xPlayer.addWeapon(item, metadata.ammo or 1)
						if metadata.components then
							for k,v in pairs(metadata.components) do
								xPlayer.addWeaponComponent(item, v)
							end
						end
						if metadata.tintIndex then
							xPlayer.setWeaponTint(item, metadata.tintIndex)
						end
						
						return true
					else
						return false
					end
				end
			end

			if xPlayer.canCarryItem(item,count) then
				xPlayer.addInventoryItem(item,count,metadata)
				return true
			else
				return false
			end
		end
	end

	function GetChance(xPlayer)
		return math.random(1,100)
	end

end
