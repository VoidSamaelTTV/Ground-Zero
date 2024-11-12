if Config.Framework == "ESX" then
	local labelsLoaded = false
	labels = {}

	ESX = exports['es_extended']:getSharedObject()
	--ESX = nil  
	--TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

	

    function GetItemLabel(name)
        return ESX.GetItemLabel(name)
    end

    function GetPlayerFromId(source)
		return ESX.GetPlayerFromId(source)
	end

	function GetItemCount(xPlayer,item)
		return xPlayer.getInventoryItem(item).count
	end

	function RemoveInventoryItem(xPlayer,item,count) 
		xPlayer.removeInventoryItem(item,count)
	end

	function GetIdentifier(xPlayer)
		return xPlayer.getIdentifier()
	end

	function ShowNotification(source,text)
		TriggerClientEvent('esx:showNotification', source, text)
	end

	function AddInventoryItem(xPlayer,item,count)
        if xPlayer.canCarryItem(item,count) then
		    xPlayer.addInventoryItem(item,count)
            return true
        else
            return false
        end
	end

	RegisterNetEvent('hrs_vehicles:getLabelsS')
    AddEventHandler('hrs_vehicles:getLabelsS', function()
		local _source = source
        if not labelsLoaded then
			local items = {}

			if Config.OxInventory then
				items = exports.ox_inventory:Items()
			else
				ESX = exports['es_extended']:getSharedObject()

				items = ESX.Items
			end

			for k,v in pairs(items) do
				labels[k] = v.label
			end
			labelsLoaded = true
		end

		TriggerClientEvent('hrs_vehicles:getLabelsC',_source,labels)
    end)


	ESX.RegisterCommand('createveh', {"admin"}, function(xPlayer, args, showError)

		lastPlateGenerated = lastPlateGenerated + 1

		local thisCoords = xPlayer.getCoords()

		local tabVehicle = {
			coords = vector3(thisCoords.x,thisCoords.y,thisCoords.z),
			heading = 90.0,
			props = {}
		}

		tabVehicle.props.model = GetHashKey(args.model)

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

    end, false, {help = 'Create Vehicle', validate = false, arguments = {
        {name = 'model', help = "Vehicle PLate", type = 'any'}
    }})

	ESX.RegisterCommand('tpplate', {"admin"}, function(xPlayer, args, showError)

        local plate = ESX.Math.Trim(tostring(args.plate))
        local vehicles = GetAllVehicles()
        local foundVehicle = nil

        for k,v in ipairs(vehicles) do
            if ESX.Math.Trim(GetVehicleNumberPlateText(v)) == plate then
                local coords = GetEntityCoords(v)
                xPlayer.setCoords(coords)
                foundVehicle = true
                break
            end
        end
		
		if not foundVehicle then
			for k,v in pairs(vehiclesList) do
				if k == plate then
					local coords = v.coords
					xPlayer.setCoords(coords)
					foundVehicle = true
					break
				end
			end

		end

        if not foundVehicle then
            xPlayer.showNotification("NO CAR WITH THIS PLATE")
        end


    end, false, {help = 'Teleportto vehicle', validate = false, arguments = {
        {name = 'plate', help = "Vehicle PLate", type = 'any'}
    }})

	ESX.RegisterCommand('bringplate', {"admin"}, function(xPlayer, args, showError)

        local plate = ESX.Math.Trim(tostring(args.plate))
        
		if vehiclesList[plate] then
			local ped = GetPlayerPed(xPlayer.source)
			local playerCoords = GetEntityCoords(ped)
			if vehiclesList[plate].entity and DoesEntityExist(vehiclesList[plate].entity) then
				local vehicleCoords = GetEntityCoords(vehiclesList[plate].entity)
				SetEntityCoords(ped,vehicleCoords.x,vehicleCoords.y,vehicleCoords.z)
				Wait(1000)
				vehiclesList[plate].coords = playerCoords
				SetEntityCoords(vehiclesList[plate].entity,playerCoords.x,playerCoords.y,playerCoords.z)
				SetEntityCoords(ped,playerCoords.x,playerCoords.y,playerCoords.z)
			else
				xPlayer.showNotification("Vehicle not Spawned")
			end
		else
			xPlayer.showNotification("NO CAR WITH THIS PLATE")
		end

    end, false, {help = 'Teleport vehicle to ped', validate = false, arguments = {
        {name = 'plate', help = "Vehicle PLate", type = 'any'}
    }})

	ESX.RegisterCommand('clearvehicles', {"admin"}, function(xPlayer, args, showError)
		local myPlayer = GetPlayerPed(xPlayer.source)
		if not args.radius then
			local myCar = GetVehiclePedIsIn(myPlayer)
		
			if myCar ~= 0 then
				local plate = GetVehicleNumberPlateText(myCar)
				if vehiclesList[plate] then
					setVehicleNonPersitent(plate)
					DeleteEntity(myCar)
				end
			end
		else
			local vehicles = GetAllVehicles()
			local myCoords = GetEntityCoords(myPlayer)
			for k,v in ipairs(vehicles) do
				local plate = GetVehicleNumberPlateText(v)
				if vehiclesList[plate] then
					if #(myCoords - GetEntityCoords(v)) < tonumber(args.radius) then
						setVehicleNonPersitent(plate)
						DeleteEntity(v)
					end
				end
			end
		end
    end, false, {help = 'Clear persistent vehicles in radius', validate = false, arguments = {
        {name = 'radius', help = "Radius", type = 'any'}
    }})



	ESX.RegisterCommand('givekeys', 'user', function(xPlayer, args)
		local myPlayer = GetPlayerPed(xPlayer.source)
		local myCar = GetVehiclePedIsIn(myPlayer)
		
		if myCar ~= 0 then

			local plate = GetVehicleNumberPlateText(myCar)
			
			if vehiclesList[plate] and vehiclesList[plate].owner == GetIdentifier(xPlayer) then
				local otherIdentifier = GetIdentifier(args.playerId)
				if not ReachedLimit(otherIdentifier) then

					vehiclesList[plate].owner = GetIdentifier(args.playerId)

					Entity(vehiclesList[plate].entity).state:set('owner', vehiclesList[plate].owner, true)

					updateOwnerDatabase(args.playerId,plate)

					ShowNotification(xPlayer.source,"You gave vehicle with plate "..plate..' to player with ID '..args.playerId.source)
					ShowNotification(args.playerId.source,"You are the new owner of the vehicle with plate "..plate)

					TriggerClientEvent('hrs_vehicles:refreshKeys',xPlayer.source)
					TriggerClientEvent('hrs_vehicles:refreshKeys',args.playerId.source)
				else
					ShowNotification(xPlayer.source,"This player has reached his vehicle limit")
				end
			else
				ShowNotification(xPlayer.source,"This vehicle does not belong to you")
			end

		else
			ShowNotification(xPlayer.source,"You need to be in a vehicle")
		end
		
	end, true, {help = 'Give keys to a player', validate = true, arguments = {
		{name = 'playerId', help = 'Player ID', type = 'player'}
	}})

	if Config.stealItem then
		ESX.RegisterUsableItem(Config.stealItem, function(source)
			TriggerClientEvent('hrs_vehicles:stealVehicle',source)
		end)
	end

	if Config.unlockMethod == 'useitem' then
		ESX.RegisterUsableItem(Config.unlockItem, function(source)
			TriggerClientEvent('hrs_vehicles:useLockpick',source)
		end)
	end

	if Config.BicyclesAsItems then
		for k,v in pairs(Config.BicyclesAsItems) do
			ESX.RegisterUsableItem(v, function(source)
				spawnBycicle(v,k,source)
			end)
		end
	end

	function useVipPlate(source,item)
		TriggerClientEvent('hrs_vehicles:useVipPlate',source,item)
	end

	if Config.vipPlateItems then
		for k,v in pairs(Config.vipPlateItems) do
			ESX.RegisterUsableItem(k, function(source)
				local item = k
				useVipPlate(source,item)
			end)
		end
	end


	function setVehicleOwned(xPlayer,hash,plate,props,type)
		MySQL.insert('INSERT INTO owned_vehicles (owner, plate, vehicle, `type`, `stored`) VALUES (?, ?, ?, ?, ?)', {
			GetIdentifier(xPlayer),
			plate,
			json.encode(props),
			type,
			0
		})
	end

	function updateOwnerDatabase(xPlayer,plate)
		MySQL.Async.execute('UPDATE persistent_vehicles SET owner = @owner WHERE plate = @plate', {
			['@owner'] = GetIdentifier(xPlayer),
			['@plate'] = plate
		})

		MySQL.Async.execute('UPDATE owned_vehicles SET owner = @owner WHERE plate = @plate', {
			['@owner'] = GetIdentifier(xPlayer),
			['@plate'] = plate
		})
	end

	function deleteVehicleDatabase(plate)
		MySQL.query('DELETE FROM owned_vehicles WHERE plate = @plate', {['@plate'] = plate})
	end

	function plateCheck(plate)
		return MySQL.scalar.await('SELECT plate FROM owned_vehicles WHERE plate = ?', {plate})
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
			MySQL.query('SELECT * FROM `owned_vehicles` WHERE `owner` = @identifier',
			{
				['@identifier'] = identifier
			}, function(result)
		
				local vehiclesInGarage = {}
				if vehType then
					for i = 1, #result, 1 do
						if not vehiclesList[result[i].plate] and vehType[result[i].type] then
							table.insert(vehiclesInGarage, {
								vehicle 	= json.decode(result[i].vehicle),
								plate 		= result[i].plate
							})
						end
					end
				else
					for i = 1, #result, 1 do
						if not vehiclesList[result[i].plate] then
							table.insert(vehiclesInGarage, {
								vehicle 	= json.decode(result[i].vehicle),
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
		MySQL.update('UPDATE owned_vehicles SET vehicle = ? WHERE plate = ?', {json.encode(props), plate})
    end)


	function GetFailedAdd(xPlayer,list)
		for k,v in ipairs(list) do
			--print(v.name,v.count)
			if xPlayer.canCarryItem(v.name,v.count) then
				xPlayer.addInventoryItem(v.name,v.count)
			else
				return k - 1
			end
		end

		return nil
	end

	function AddItemList(xPlayer,list)
		local failedAdd = GetFailedAdd(xPlayer,list)

		if failedAdd then
			for i = 1, failedAdd do
				local item = list[i]
				xPlayer.removeInventoryItem(item.name,item.count)
			end
		else
			return true
		end
	end
end













