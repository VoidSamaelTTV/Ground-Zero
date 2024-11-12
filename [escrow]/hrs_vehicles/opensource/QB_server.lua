if Config.Framework == "QB" then
	local labelsLoaded = false
	labels = {}

	QBCore = exports['qb-core']:GetCoreObject()

	function loadLabels()
		local items = QBCore.Shared.Items

		for k,v in pairs(items) do
			labels[k] = v.label
		end
	end

	loadLabels()

    function GetItemLabel(name)
        return QBCore.Shared.Items[name].label
    end

	function GetPlayerFromId(source)
		return QBCore.Functions.GetPlayer(source)
	end

	function GetItemCount(xPlayer,item)
		local itemAmount = xPlayer.Functions.GetItemByName(item)
		if itemAmount and itemAmount.amount then
			return itemAmount.amount
		else
			return 0
		end
	end

	function RemoveInventoryItem(xPlayer,item,count) 
		xPlayer.Functions.RemoveItem(item,count)
	end

	function GetIdentifier(xPlayer)
		local license = QBCore.Functions.GetIdentifier(xPlayer.PlayerData.source, 'license')
		return license
	end

	

	function ShowNotification(source,text)
		TriggerClientEvent('QBCore:Notify', source, text)
	end

	function AddInventoryItem(xPlayer,item,count)
        if xPlayer.Functions.AddItem(item,count) then
            return true
        else
            return false
        end
	end

	QBCore.Commands.Add('createveh', 'Create Vehicle to repair (admin)', {}, false, function(xPlayer, args)
        if args[1] then
			lastPlateGenerated = lastPlateGenerated + 1

			local myPlayer = GetPlayerPed(xPlayer)
			local thisCoords = GetEntityCoords(myPlayer)
	
			local tabVehicle = {
				coords = vector3(thisCoords.x,thisCoords.y,thisCoords.z),
				heading = 90.0,
				props = {}
			}
	
			tabVehicle.props.model = GetHashKey(args[1])

			if Config.brokenVehiclesProperties then
				if Config.brokenVehiclesProperties[tabVehicle.props.model] then
					tabVehicle.extraProps = Config.brokenVehiclesProperties[tabVehicle.props.model]
				end
			end
	
			local plate = "HRS"..lastPlateGenerated
		
			local neededZeros = 8 - string.len(plate)
		
			if neededZeros > 0 then
				for i = 1,neededZeros do
					plate = plate ..'0'
				end
			end
	
			vehiclesList[plate] = tabVehicle
		end
    end, 'admin')

	QBCore.Commands.Add('tpplate', 'Teleport to vehicle plate (admin)', {}, false, function(xPlayer, args)
        if args[1] then
			local plate = tostring(args[1])
			local vehicles = GetAllVehicles()
			local foundVehicle = nil

			local myPlayer = GetPlayerPed(xPlayer)
	
			for k,v in ipairs(vehicles) do
				if tostring(GetVehicleNumberPlateText(v)) == plate then
					local coords = GetEntityCoords(v)
					SetEntityCoords(myPlayer,coords)
					break
				end
			end
			
			if not foundVehicle then
				for k,v in pairs(vehiclesList) do
					if k == plate then
						local coords = v.coords
						SetEntityCoords(myPlayer,coords)					
						break
					end
				end
	
			end
	
			if not foundVehicle then
				ShowNotification(xPlayer,"NO CAR WITH THIS PLATE")
			end
		end
    end, 'admin')

	QBCore.Commands.Add('bringplate', 'Teleport to vehicle plate (admin) to ped', {}, false, function(xPlayer, args)
		if args[1] then
			local plate = tostring(args[1])
			
			if vehiclesList[plate] then
				local ped = GetPlayerPed(xPlayer)
				local playerCoords = GetEntityCoords(ped)
				if vehiclesList[plate].entity and DoesEntityExist(vehiclesList[plate].entity) then
					local vehicleCoords = GetEntityCoords(vehiclesList[plate].entity)
					SetEntityCoords(ped,vehicleCoords.x,vehicleCoords.y,vehicleCoords.z)
					Wait(1000)
					vehiclesList[plate].coords = playerCoords
					SetEntityCoords(vehiclesList[plate].entity,playerCoords.x,playerCoords.y,playerCoords.z)
					SetEntityCoords(ped,playerCoords.x,playerCoords.y,playerCoords.z)
				else
					ShowNotification(xPlayer,"Vehicle not Spawned")
				end
			else
				ShowNotification(xPlayer,"NO CAR WITH THIS PLATE")
			end
		else

		end
	end, 'admin')


	QBCore.Commands.Add('givekeys', 'Give keys to a player', {}, false, function(xPlayer, args)
        --if args[1] and type(args[1]) == 'number' then
		local yPlayerId = tonumber(args[1])

		if yPlayerId then
			local yPlayer = GetPlayerFromId(yPlayerId)
			
			if yPlayer then
				local myPlayer = GetPlayerPed(xPlayer)
				local myCar = GetVehiclePedIsIn(myPlayer)

				if myCar ~= 0 then

					local plate = GetVehicleNumberPlateText(myCar)


					if vehiclesList[plate] and vehiclesList[plate].owner == GetIdentifier(GetPlayerFromId(xPlayer)) then

						local otherIdentifier = GetIdentifier(yPlayer)
						if not ReachedLimit(otherIdentifier) then

							vehiclesList[plate].owner = otherIdentifier
							
							Entity(vehiclesList[plate].entity).state:set('owner', vehiclesList[plate].owner, true)

							updateOwnerDatabase(yPlayer,plate)

							ShowNotification(xPlayer,"You gave vehicle with plate "..plate..' to player with ID '..yPlayerId)
							ShowNotification(yPlayer.PlayerData.source,"You are the new owner of the vehicle with plate "..plate)

							TriggerClientEvent('hrs_vehicles:refreshKeys',xPlayer)
							TriggerClientEvent('hrs_vehicles:refreshKeys',yPlayer.PlayerData.source)
						else
							ShowNotification(xPlayer,"This player has reached his vehicle limit")
						end

					else
						ShowNotification(xPlayer,"This vehicle does not belong to you")
					end

				else
					ShowNotification(xPlayer,"You need to be in a vehicle")
				end
			else
				ShowNotification(xPlayer,"No Player Online with this ID")
			end
		else
			ShowNotification(xPlayer,"Invalid ID")
		end
    end)

	QBCore.Commands.Add('clearvehicles', 'Clear persistent vehicles in radius', {}, false, function(xPlayer, args)
		local myPlayer = GetPlayerPed(xPlayer)
		if args[1] then
			local vehicles = GetAllVehicles()
			local myCoords = GetEntityCoords(myPlayer)
			for k,v in ipairs(vehicles) do
				local plate = GetVehicleNumberPlateText(v)
				if vehiclesList[plate] then
					if #(myCoords - GetEntityCoords(v)) < tonumber(args[1]) then
						setVehicleNonPersitent(plate)
						DeleteEntity(v)
					end
				end
			end
		else
			local myCar = GetVehiclePedIsIn(myPlayer)
		
			if myCar ~= 0 then
				local plate = GetVehicleNumberPlateText(myCar)
				if vehiclesList[plate] then
					setVehicleNonPersitent(plate)
					DeleteEntity(myCar)
				end
			end
		end
	end, 'admin')

	if Config.stealItem then
		QBCore.Functions.CreateUseableItem(Config.stealItem, function(source)
			TriggerClientEvent('hrs_vehicles:stealVehicle',source)
		end)
	end

	if Config.unlockMethod == 'useitem' then
		QBCore.Functions.CreateUseableItem(Config.unlockItem, function(source)
			TriggerClientEvent('hrs_vehicles:useLockpick',source)
		end)
	end


	if Config.BicyclesAsItems then
		for k,v in pairs(Config.BicyclesAsItems) do
			QBCore.Functions.CreateUseableItem(v, function(source)
				spawnBycicle(v,k,source)
			end)
		end
	end

	if Config.shellItems then
		for k,v in pairs(Config.shellItems) do
			QBCore.Functions.CreateUseableItem(k, function(source)
				local item = k
				local model = v

				local xPlayer = GetPlayerFromId(source)
				RemoveInventoryItem(xPlayer,item,1) 

				lastPlateGenerated = lastPlateGenerated + 1

				local myPlayer = GetPlayerPed(source)
				local thisCoords = GetEntityCoords(myPlayer)
		
				local tabVehicle = {
					coords = vector3(thisCoords.x,thisCoords.y,thisCoords.z),
					heading = 90.0,
					props = {}
				}
		
				tabVehicle.props.model = model
	
				if Config.brokenVehiclesProperties then
					if Config.brokenVehiclesProperties[tabVehicle.props.model] then
						tabVehicle.extraProps = Config.brokenVehiclesProperties[tabVehicle.props.model]
					end
				end
		
				local plate = "HRS"..lastPlateGenerated
			
				local neededZeros = 8 - string.len(plate)
			
				if neededZeros > 0 then
					for i = 1,neededZeros do
						plate = plate ..'0'
					end
				end
		
				vehiclesList[plate] = tabVehicle
			end)
		end
	end

	function useVipPlate(source,item)
		TriggerClientEvent('hrs_vehicles:useVipPlate',source,item)
	end

	if Config.vipPlateItems then
		for k,v in pairs(Config.vipPlateItems) do
			QBCore.Functions.CreateUseableItem(k, function(source)
				local item = k
				useVipPlate(source,item)
			end)
		end
	end

	function setVehicleOwned(xPlayer,hash,plate,props,type)
        MySQL.insert('INSERT INTO player_vehicles (license, citizenid, vehicle, hash, mods, plate, garage, state) VALUES (?, ?, ?, ?, ?, ?, ?, ?)', {
            xPlayer.PlayerData.license,
            xPlayer.PlayerData.citizenid,
            hash,
            hash,
            json.encode(props),
            plate,
            'pillboxgarage',
            0
        })
	end

	function updateOwnerDatabase(xPlayer,plate)
		MySQL.Async.execute('UPDATE persistent_vehicles SET owner = @owner WHERE plate = @plate', {
			['@owner'] = GetIdentifier(xPlayer),
			['@plate'] = plate
		})

		MySQL.Async.execute('UPDATE player_vehicles SET license = @license, citizenid = @citizenid  WHERE plate = @plate', {
			['@license'] = xPlayer.PlayerData.license,
			['@citizenid'] = xPlayer.PlayerData.citizenid,
			['@plate'] = plate
		})
	end

	function deleteVehicleDatabase(plate)
		MySQL.query('DELETE FROM player_vehicles WHERE plate = @plate', {['@plate'] = plate})
	end

	function plateCheck(plate)
		return MySQL.scalar.await('SELECT plate FROM player_vehicles WHERE plate = ?', {plate})
	end

	function getMoney(xPlayer)
		return xPlayer.getMoney()
	end

	function removeMoney(xPlayer, count)
		return xPlayer.removeMoney(count)
	end

	RegisterNetEvent('hrs_vehicles:getOwnedVehicles')
    AddEventHandler('hrs_vehicles:getOwnedVehicles', function(vehType)
		local _source = source
		local xPlayer = GetPlayerFromId(_source)
		local identifier = GetIdentifier(xPlayer)

		if not ReachedLimit(identifier, _source) then

			-- MySQL.query('SELECT * FROM `owned_vehicles` WHERE `owner` = @identifier AND `type` = @type',
			-- {
			-- 	['@identifier'] = identifier,
			-- 	['@type'] = vehType
			MySQL.query('SELECT * FROM `player_vehicles` WHERE `license` = @license AND `citizenid` = @citizenid' ,
			{
				['@license'] = xPlayer.PlayerData.license,
				['@citizenid'] = xPlayer.PlayerData.citizenid
			}, function(result)
		
				local vehiclesInGarage = {}
				if vehType then
					for i = 1, #result, 1 do
						if not vehiclesList[result[i].plate] and vehType[result[i].type] then
							table.insert(vehiclesInGarage, {
								vehicle 	= json.decode(result[i].mods),
								plate 		= result[i].plate
							})
						end
					end
				else
					for i = 1, #result, 1 do
						if not vehiclesList[result[i].plate] then
							table.insert(vehiclesInGarage, {
								vehicle 	= json.decode(result[i].mods),
								plate 		= result[i].plate
							})
						end
					end
				end
				
				

		
				TriggerClientEvent('hrs_vehicles:openGarage', _source, vehiclesInGarage)
			end)

		end

    end)

	RegisterNetEvent('hrs_vehicles:updatePropsFramework')
    AddEventHandler('hrs_vehicles:updatePropsFramework', function(plate,props)
		local _source = source
		local xPlayer = GetPlayerFromId(_source)
		local identifier = GetIdentifier(xPlayer)
		MySQL.update('UPDATE player_vehicles SET mods = ? WHERE plate = ?', {json.encode(props), plate})
    end)

	function GetFailedAdd(xPlayer,list)
		for k,v in ipairs(list) do	
			local bool = xPlayer.Functions.AddItem(v.name,v.count)
			if not bool then
				return k
			end
		end

		return nil
	end

	function AddItemList(xPlayer,list)
		local failedAdd = GetFailedAdd(xPlayer,list)

		if failedAdd then
			for i = 1, failedAdd do
				local item = list[i]
				xPlayer.Functions.RemoveItem(item.name,item.count)
			end
		else
			return true
		end
	end

	function getMoney(xPlayer)
		return xPlayer.Functions.GetMoney('cash')
	end

	function removeMoney(xPlayer, count)
		return xPlayer.Functions.RemoveMoney('cash', count)
	end
end





