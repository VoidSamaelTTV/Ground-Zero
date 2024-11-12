vehiclesList = {}
updatedPlates = {}

lastPlateGenerated = Config.numberOfVehiclesPerRestart 


bicycleModels = {}

if Config.BicyclesAsItems then

	for k,v in pairs(Config.BicyclesAsItems) do
		bicycleModels[GetHashKey(k)] = v
	end

end


-- RegisterNetEvent('hrs_vehicles:canDriveVehicle')
-- AddEventHandler('hrs_vehicles:canDriveVehicle', function(plate)
--     local _source = source
--     local xPlayer = GetPlayerFromId(_source)
--     local ident = GetIdentifier(xPlayer)

--     local canDrive = true

--     if vehiclesList[plate] then
-- 		if Config.usingBaseBuildingCrew then
-- 			canDrive = exports["hrs_base_building"]:hasPermissionVeh(ident,vehiclesList[plate].owner)
-- 		else
-- 			if vehiclesList[plate].owner ~= ident then
-- 				canDrive = false
-- 			end
-- 		end
--     end

--     if canDrive then
--         TriggerClientEvent('hrs_vehicles:canDrive',_source,plate)
-- 	else
-- 		ShowNotification(_source,Config.Locales['no_permission'])
--     end
-- end)



------- IN DEVELOPMENT -------------------------------------------------------------------------------------------

-- RegisterNetEvent('hrs_vehicles:canLockVehicle')
-- AddEventHandler('hrs_vehicles:canLockVehicle', function(plate)
--     local _source = source
--     local xPlayer = GetPlayerFromId(_source)
--     local ident = GetIdentifier(xPlayer)

--     local canDrive = true

--     if vehiclesList[plate] then
-- 		if Config.usingBaseBuildingCrew then
-- 			canDrive = exports["hrs_base_building"]:hasPermissionVeh(ident,vehiclesList[plate].owner)
-- 		else
-- 			if vehiclesList[plate].owner ~= ident then
-- 				canDrive = false
-- 			end
-- 		end
--     end

--     if canDrive then
-- 		local entity = vehiclesList[plate].entity

-- 		if Entity(entity).state.locked then
-- 			Entity(entity).state:set('locked', true, true)
-- 			ShowNotification(_source,"Vehicle Locked")
-- 		else
-- 			Entity(entity).state:set('locked', false, true)
-- 			ShowNotification(_source,"You can't lock this vehicle")
-- 		end
-- 	else
-- 		ShowNotification(_source,"You can't lock this vehicle")
--     end
-- end)

RegisterNetEvent('hrs_vehicles:canLockVehicle3')
AddEventHandler('hrs_vehicles:canLockVehicle3', function(plate)
    local _source = source
    local xPlayer = GetPlayerFromId(_source)
    local ident = GetIdentifier(xPlayer)

    local canDrive = true

    if vehiclesList[plate] then
		if Config.usingBaseBuildingCrew then
			canDrive = exports["hrs_base_building"]:hasPermissionVeh(ident,vehiclesList[plate].owner)
		else
			if vehiclesList[plate].owner ~= ident then
				canDrive = false
			end
		end
    end

    if canDrive then
		local entity = vehiclesList[plate].entity

		if Entity(entity).state.locked then
			vehiclesList[plate].locked = nil
			Entity(entity).state:set('locked', nil, true)
			ShowNotification(_source,Config.Locales['veh_unlocked'])
		else
			vehiclesList[plate].locked = 1
			Entity(entity).state:set('locked', 1, true)
			ShowNotification(_source,Config.Locales['veh_locked'])
		end
	else
		ShowNotification(_source,Config.Locales['no_lock'])
    end
end)

RegisterNetEvent('hrs_vehicles:canLockVehicle2')
AddEventHandler('hrs_vehicles:canLockVehicle2', function(plate)
    local _source = source
    local xPlayer = GetPlayerFromId(_source)
    local ident = GetIdentifier(xPlayer)
	local entity = vehiclesList[plate].entity

	if Entity(entity).state.locked then
		if GetItemCount(xPlayer,Config.unlockItem) >= 1 then
			RemoveInventoryItem(xPlayer,Config.unlockItem,1)

			vehiclesList[plate].locked = nil
			Entity(entity).state:set('locked', nil, true)
			ShowNotification(_source,Config.Locales['veh_unlocked'])
		else
			ShowNotification(_source,Config.Locales['no_lockpick'])
		end
	end
end)

RegisterNetEvent('hrs_vehicles:canLockVehicle')
AddEventHandler('hrs_vehicles:canLockVehicle', function(plate)
	local _source = source
	if vehiclesList[plate] then
		local entity = vehiclesList[plate].entity
		if Entity(entity).state.locked then
			vehiclesList[plate].locked = nil
			Entity(entity).state:set('locked', nil, true)
			ShowNotification(_source,Config.Locales['veh_unlocked'])
		else
			vehiclesList[plate].locked = 1
			Entity(entity).state:set('locked', 1, true)
			ShowNotification(_source,Config.Locales['veh_locked'])
		end
	end
end)


function spawnBycicle(itemName,hash,source)
	local xPlayer = GetPlayerFromId(source)
	RemoveInventoryItem(xPlayer,itemName,1)
	local myPlayer = GetPlayerPed(source)
	local coords = GetEntityCoords(myPlayer)
	local heading = GetEntityHeading(myPlayer)
	CreateThread(function()
		local newVehicle = CreateVehicle(hash,coords,heading,true,true)
		if newVehicle ~= 0 then
			while not DoesEntityExist(newVehicle) do
				Wait(100)
			end
			if DoesEntityExist(newVehicle) then
				SetEntityRoutingBucket(newVehicle, Config.forcedBucket)
			end
		end
	end)
	
end

local inDeleteTime = {}

RegisterNetEvent('hrs_vehicles:getBicycle')
AddEventHandler('hrs_vehicles:getBicycle', function(id,model)
    local _source = source
    local vehicle = NetworkGetEntityFromNetworkId(id)
    local xPlayer = GetPlayerFromId(_source)

	if not inDeleteTime[vehicle] then
		if DoesEntityExist(vehicle) then
			--local model = GetEntityModel(vehicle)
			local item = bicycleModels[model]

			--print(model)
			--print(item)

			if item then

				if AddInventoryItem(xPlayer,item,1) then
					inDeleteTime[vehicle] = _source
					DeleteEntity(vehicle)
					while DoesEntityExist(vehicle) do
						DeleteEntity(vehicle)
						Wait(10)   
					end
					inDeleteTime[vehicle] = nil
				end

			end
		end
	end
end)









------------------------------- GENERATE PLATES --------------------------------------------------------------
local numbers = {
	0,1,2,3,4,5,6,7,8,9
}
local letters = {
	"A","B","C","D",'E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z' 
}

function generatePlate()
	local plate = ""
	for k,v in ipairs(Config.generatedPlates) do
		if v == "number" then
			plate = plate .. numbers[math.random(1,#numbers)]
		elseif v == "letter" then
			plate = plate .. letters[math.random(1,#letters)]
		elseif v == "-" then
			plate = plate .. "-"
		end
	end

	local result = plateCheck(plate)

	if result then
		return generatePlate()
	else
		return plate
	end
end

exports('generatePlate',generatePlate)

----------------------------------------------------------------------


MySQL.ready(function()
	MySQL.Async.fetchAll("SELECT * FROM persistent_vehicles", {}, function(result)		
		for k,v in ipairs(result) do
			local props = json.decode(v.props)
			local addNames = {
				["engineHealth"] = true,
				["bodyHealth"] = true,
				["tankHealth"] = true,
				["fuelLevel"] = true
			}

			local addNames2 = {
				["tyreBurst"] = true,
				["windowsBroken"] = true,
				["doorsBroken"] = true
			}

			for k2,v2 in pairs(addNames) do
				props[k2] = v[k2]
			end

			for k2,v2 in pairs(addNames2) do
				props[k2] = json.decode(v[k2])
			end

			vehiclesList[v.plate] = {
				owner = v.owner,
				props = props,
				plate = v.plate,
				heading = v.h,
				coords = vector3(v.x,v.y,v.z),
				deadTime = v.deadTime,
				locked = 1,
				vipPlate = v.vipPlate
			}
		end

		TriggerClientEvent('hrs_vehicles:restartedScript',-1)
	end)
end)



function addVipPlate(plate)
	vehiclesList[plate].vipPlate = 1
	MySQL.Async.execute('UPDATE persistent_vehicles SET vipPlate = @vipPlate WHERE plate = @plate', {
		['@vipPlate'] = 1,
		['@plate'] = plate
	})
end

function removeVipPlate(plate)
	vehiclesList[plate].vipPlate = nil
	MySQL.Async.execute('UPDATE persistent_vehicles SET vipPlate = @vipPlate WHERE plate = @plate', {
		['@vipPlate'] = nil,
		['@plate'] = plate
	})
end


RegisterNetEvent('hrs_vehicles:addVipPlate')
AddEventHandler('hrs_vehicles:addVipPlate', function(plate,item)
    local _source = source
    local xPlayer = GetPlayerFromId(_source)

	if vehiclesList[plate].owner == GetIdentifier(xPlayer) then
		--print(category)

		if GetItemCount(xPlayer,item) > 0 then
			RemoveInventoryItem(xPlayer,item,1)
			addVipPlate(plate)
			ShowNotification(_source,Config.Locales['new_vipplate'])
		else
			ShowNotification(_source,Config.Locales['no_plate'])
		end
	else
		ShowNotification(_source,Config.Locales['is_not_yours'])
	end
end)


function setVehiclePersitent(xPlayer,props,plate,coords,heading,newVehicle)
	if not vehiclesList[plate] then
		vehiclesList[plate] = {
			owner = GetIdentifier(xPlayer),
			props = props,
			plate = plate,
			heading = heading,
			coords = coords,
			entity = newVehicle,
			id = NetworkGetNetworkIdFromEntity(newVehicle)
		}

		

		local propsDatabase = {}
		local removeNames = {
			["engineHealth"] = true,
			["bodyHealth"] = true,
			["tankHealth"] = true,
			['tyreBurst'] = true,
			['windowsBroken'] = true,
			['doorsBroken'] = true,
			['fuelLevel'] = true,
		}

		
		for k,v in pairs(props) do
			if not removeNames[k] then
				propsDatabase[k] = v
			end
		end

		
		--if not string.match(plate, "SUN") then

		MySQL.insert('INSERT INTO persistent_vehicles (owner, plate, props, x, y, z, h, engineHealth, bodyHealth, tankHealth, tyreBurst, windowsBroken, doorsBroken, fuelLevel) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)', {
			vehiclesList[plate].owner,
			vehiclesList[plate].plate,
			json.encode(propsDatabase),
			vehiclesList[plate].coords.x,
			vehiclesList[plate].coords.y,
			vehiclesList[plate].coords.z,
			vehiclesList[plate].heading,
			vehiclesList[plate].props.engineHealth,
			vehiclesList[plate].props.bodyHealth,
			vehiclesList[plate].props.tankHealth,
			json.encode(vehiclesList[plate].props.tyreBurst),
			json.encode(vehiclesList[plate].props.windowsBroken),
			json.encode(vehiclesList[plate].props.doorsBroken),
			vehiclesList[plate].props.fuelLevel
		})
	end
end

function addToDatabase(plate)
	if vehiclesList[plate] then

		local propsDatabase = {}
		local removeNames = {
			["engineHealth"] = true,
			["bodyHealth"] = true,
			["tankHealth"] = true,
			['tyreBurst'] = true,
			['windowsBroken'] = true,
			['doorsBroken'] = true,
			['fuelLevel'] = true,
		}

		for k,v in pairs(vehiclesList[plate].props) do
			if not removeNames[k] then
				propsDatabase[k] = v
			end
		end

		MySQL.insert('INSERT INTO persistent_vehicles (owner, plate, props, x, y, z, h, engineHealth, bodyHealth, tankHealth, tyreBurst, windowsBroken, doorsBroken, fuelLevel) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)', {
			vehiclesList[plate].owner,
			vehiclesList[plate].plate,
			json.encode(propsDatabase),
			vehiclesList[plate].coords.x,
			vehiclesList[plate].coords.y,
			vehiclesList[plate].coords.z,
			vehiclesList[plate].heading,
			vehiclesList[plate].props.engineHealth,
			vehiclesList[plate].props.bodyHealth,
			vehiclesList[plate].props.tankHealth,
			json.encode(vehiclesList[plate].props.tyreBurst),
			json.encode(vehiclesList[plate].props.windowsBroken),
			json.encode(vehiclesList[plate].props.doorsBroken),
			vehiclesList[plate].props.fuelLevel
		})
	end
end

function updateProps(plate)
	if vehiclesList[plate] then

		local propsDatabase = {}
		local removeNames = {
			["engineHealth"] = true,
			["bodyHealth"] = true,
			["tankHealth"] = true,
			['tyreBurst'] = true,
			['windowsBroken'] = true,
			['doorsBroken'] = true,
			['fuelLevel'] = true,
		}

		for k,v in pairs(vehiclesList[plate].props) do
			if not removeNames[k] then
				propsDatabase[k] = v
			end
		end

		MySQL.Async.execute('UPDATE persistent_vehicles SET props = @props WHERE plate = @plate', {
			['@props'] = json.encode(propsDatabase),
			['@plate'] = plate
		})

	end
end

function updateVehiclePersitentEntity(plate,newVehicle)
	if vehiclesList[plate] then
		vehiclesList[plate].entity = newVehicle
		vehiclesList[plate].id = NetworkGetNetworkIdFromEntity(newVehicle)
	end
end

function setVehicleNonPersitent(plate)
	if vehiclesList[plate] then
		vehiclesList[plate] = nil

		MySQL.Async.execute('DELETE FROM persistent_vehicles WHERE plate = @plate', {
			['@plate'] = plate
		})
	end
end


------------------- called when the Config.deadCounterDeleteTime reached its max value deleting the vehicle --------

function vehicleDead(plate)
	if vehiclesList[plate] then
		local entity = vehiclesList[plate].entity

		vehiclesList[plate] = nil

		MySQL.Async.execute('DELETE FROM persistent_vehicles WHERE plate = @plate', {
			['@plate'] = plate
		})

		if entity then
			DeleteEntity(entity)
			while DoesEntityExist(entity) do
				DeleteEntity(entity)
				Wait(10)
			end
		end
	end
end

function saveOnStopScript()

	for k,v in pairs(updatedPlates) do
		if vehiclesList[k] then

			local executeText = 'UPDATE persistent_vehicles SET'
			local executeTab = {}

			if v.coords then
				executeTab['@x'] = vehiclesList[k].coords.x
				executeTab['@y'] = vehiclesList[k].coords.y
				executeTab['@z'] = vehiclesList[k].coords.z
				executeTab['@h'] = vehiclesList[k].heading

				executeText = executeText..' x = @x, y = @y, z = @z, h = @h,'
			end
			if v.engineHealth then
				executeTab['@engineHealth'] = vehiclesList[k].props.engineHealth
				executeText = executeText..' engineHealth = @engineHealth,'
			end	
			if v.bodyHealth then
				executeTab['@bodyHealth'] = vehiclesList[k].props.bodyHealth
				executeText = executeText..' bodyHealth = @bodyHealth,'
			end
			if v.tankHealth then
				executeTab['@tankHealth'] = vehiclesList[k].props.tankHealth
				executeText = executeText..' tankHealth = @tankHealth,'
			end
			if v.fuelLevel then
				executeTab['@fuelLevel'] = vehiclesList[k].props.fuelLevel
				executeText = executeText..' fuelLevel = @fuelLevel,'
			end
			if v.tyreBurst then
				executeTab['@tyreBurst'] = json.encode(vehiclesList[k].props.tyreBurst)
				executeText = executeText..' tyreBurst = @tyreBurst,'
			end
			if v.doorsBroken then
				executeTab['@doorsBroken'] = json.encode(vehiclesList[k].props.doorsBroken)
				executeText = executeText..' doorsBroken = @doorsBroken,'
			end
			if v.windowsBroken then
				executeTab['@windowsBroken'] = json.encode(vehiclesList[k].props.windowsBroken)
				executeText = executeText..' windowsBroken = @windowsBroken,'
			end
			if v.deadTime then
				executeTab['@deadTime'] = vehiclesList[k].deadTime
				executeText = executeText..' deadTime = @deadTime,'
			end

			executeTab['@plate'] = k
			executeText = executeText:sub(1, -2)
			executeText = executeText..' WHERE plate = @plate'

			if vehiclesList[k] and vehiclesList[k].owner then
				MySQL.Async.execute(executeText,executeTab)
			end
		end
	end

	updatedPlates = {}
	
end

function updateDeadStatus(plate,value)
	if vehiclesList[plate] then
		MySQL.Async.execute('UPDATE persistent_vehicles SET deadTime = @deadTime WHERE plate = @plate', {
			['@deadTime'] = value,
			['@plate'] = plate
		})
	end	
end

CreateThread(function()
	while true do
		Wait(Config.databaseSaveRefreshTime * 1000)
		saveOnStopScript()
	end
end)

AddEventHandler('onResourceStop', function(resourceName)
    if (GetCurrentResourceName() == resourceName) then 
		saveOnStopScript()
	end    
end)

AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
    if eventData.secondsRemaining == 60 then
		saveOnStopScript()
	end    
end)

CreateThread(function()
    while true do
        local dupPlates = {}
        local vehs = GetAllVehicles()
        for k,v in ipairs(vehs) do
            local plate = GetVehicleNumberPlateText(v)

			--print(plate)

			local shouldPlate = Entity(v).state.plate

			if shouldPlate and shouldPlate ~= plate then
				SetVehicleNumberPlateText(v,shouldPlate)
				plate = shouldPlate
			end

            if vehiclesList[plate] and vehiclesList[plate].entity ~= v then
                DeleteEntity(v)
            end
        end
        Wait(1250)
    end
end)




RegisterNetEvent('hrs_vehicles:giveKeys')
AddEventHandler('hrs_vehicles:giveKeys', function(id)
	local _source = source
	local yPlayerId = tonumber(id)

	if yPlayerId then
		local yPlayer = GetPlayerFromId(id)
		
		if yPlayer then
			local myPlayer = GetPlayerPed(_source)
			local myCar = GetVehiclePedIsIn(myPlayer)

			if myCar ~= 0 then

				local plate = GetVehicleNumberPlateText(myCar)
				

				if vehiclesList[plate] and vehiclesList[plate].owner == GetIdentifier(GetPlayerFromId(_source)) then
					vehiclesList[plate].owner = GetIdentifier(yPlayer)
					
					updateOwnerDatabase(yPlayer,plate)

					ShowNotification(_source,"You gave vehicle with plate "..plate..' to player with ID '..yPlayerId)
					ShowNotification(yPlayerId,"You are the new owner of the vehicle with plate "..plate)

					TriggerClientEvent('hrs_vehicles:refreshKeys',_source)
					TriggerClientEvent('hrs_vehicles:refreshKeys',yPlayerId)

				else
					ShowNotification(_source,"This vehicle does not belong to you")
				end

			else
				ShowNotification(_source,"You need to be in a vehicle")
			end
		else
			ShowNotification(_source,"No Player Online with this ID")
		end
	else
		ShowNotification(_source,"Invalid ID")
	end
end)



RegisterNetEvent('hrs_vehicles:syncWheelsNewServer')
AddEventHandler('hrs_vehicles:syncWheelsNewServer', function(id,list)
    TriggerClientEvent('hrs_vehicles:syncWheelsNew',-1,id,list)
end)



RegisterNetEvent('hrs_vehicles:fixEngine')
AddEventHandler('hrs_vehicles:fixEngine', function(id)
	local _source = source
    local xPlayer = GetPlayerFromId(_source)

	local vehicle = NetworkGetEntityFromNetworkId(id)

	if vehicle ~= 0 then
		--local owner = NetworkGetEntityOwner(vehicle)
		--if owner ~= -1 then
            if Config.fixKitItem then
                if GetItemCount(xPlayer,Config.fixKitItem) > 0 then
                    local plate = GetVehicleNumberPlateText(vehicle)
                    print(plate)
                    if vehiclesList[plate] then
                        vehiclesList[plate].props.engineHealth = 1000.0
                    end
                    RemoveInventoryItem(xPlayer,Config.fixKitItem,1)
                    TriggerClientEvent('hrs_vehicles:fixEngine',-1,id)
                else
                    ShowNotification(_source,Config.Locales["no_repairkit"])
                end
            else
               -- RemoveInventoryItem(xPlayer,Config.fixKitItem,1)
                TriggerClientEvent('hrs_vehicles:fixEngine',-1,id)
            end
		--end
	end
end)

function ReachedLimit(ident,source)
    if Config.vehiclesLimitPerPlayer then
        local count = 0
        for k,v in pairs(vehiclesList) do
			
            if v.owner == ident then
                count = count + 1
            end
        end
        if count >= Config.vehiclesLimitPerPlayer then
			if source then
            	ShowNotification(source,Config.Locales['veh_limit'])
			end
            return true
        else
            return false
        end
    else
        return false
    end
end


RegisterNetEvent('hrs_vehicles:buyVehicle')
AddEventHandler('hrs_vehicles:buyVehicle', function(index, hash, type, props)
	local _source = source
    local xPlayer = GetPlayerFromId(_source)

	if Config.vehicleShopVehicles[index].price <= getMoney(xPlayer) then
		removeMoney(xPlayer, Config.vehicleShopVehicles[index].price)
		local plate = generatePlate()
		props.plate = plate
		setVehicleOwned(xPlayer,hash,plate,props,type)
		TriggerClientEvent('hrs_vehicles:persistentShop', _source, plate, hash)
	else
		ShowNotification(_source, "Not Enought Money")
	end
end)


function getRandomParts(value)
	local percentage = math.random(Config.scrapVehiclePercentage.min, Config.scrapVehiclePercentage.max) / 100
	local count = Round(value * percentage)
	if count < 1 then count = 1 end
	return count
end

RegisterNetEvent('hrs_vehicles:scrapVehicle')
AddEventHandler('hrs_vehicles:scrapVehicle', function(plate,type,numWheels,model,handling)
	local _source = source
    local xPlayer = GetPlayerFromId(_source)
	local identifier = GetIdentifier(xPlayer)
	
	if vehiclesList[plate] and vehiclesList[plate].owner == identifier then
		local list = getVehicleItemsList(type,numWheels,model,handling)
		local list2 = {}
		for k,v in pairs(list) do
			table.insert(list2, {name = k, count = getRandomParts(v)})
		end

		if AddItemList(xPlayer,list2) then
			deleteVehicleDatabase(plate)
			vehicleDead(plate)
		else
			ShowNotification(_source, "You can't carry all the items")
		end
	else
		ShowNotification(_source, "You can't scrap this vehicle")
	end
end)

function createNewBrokenVeh(thisCoords, heading, vehType)
	lastPlateGenerated = lastPlateGenerated + 1


	local tabVehicle = {
		coords = vector3(thisCoords.x,thisCoords.y,thisCoords.z),
		heading = heading,
		props = {}
	}

	tabVehicle.props.model = Config.vehicleLists[vehType][math.random(1,#Config.vehicleLists[vehType])]

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

exports('createNewBrokenVeh', createNewBrokenVeh)