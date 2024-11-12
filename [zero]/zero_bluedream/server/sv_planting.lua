QBCore = exports['qb-core']:GetCoreObject()
local bluedream_plant = {}

--- Functions

--- Method to calculate the growth percentage for a given bluedream_plant index
--- @param k number - bluedream_plant table index
--- @return retval number - growth index [0-100]
local calcGrowth = function(k)
    if not bluedream_plant[k] then return false end
    local current_time = os.time()
    local growTime = Shared.GrowTime * 60
    local progress = os.difftime(current_time, bluedream_plant[k].time)
    local growth = QBCore.Shared.Round(progress * 100 / growTime, 2)
    local retval = math.min(growth, 100.00)
    return retval
end

--- Method to calculate the growth stage of a weedplant for a given growth index
--- @param growth number - growth index [0-100]
--- @return stage number - growth stage number [1-5]
local calcStage = function(growth)
    local stage = math.floor(growth / 20)
    if stage == 0 then stage += 1 end
    return stage
end

--- Method to calculate the current fertilizer percentage for a given bluedream_plant index
--- @param k number - bluedream_plant table index
--- @return retval number - fertilizer index [0-100]
local calcFertilizer = function(k)
    if not bluedream_plant[k] then return false end
    local current_time = os.time()

    if #bluedream_plant[k].fertilizer == 0 then
        return 0
    else
        local last_fertilizer = bluedream_plant[k].fertilizer[#bluedream_plant[k].fertilizer]
        local time_elapsed = os.difftime(current_time, last_fertilizer)
        local fertilizer = QBCore.Shared.Round(100 - (time_elapsed / 60 * Shared.FertilizerDecay), 2)
        local retval = math.max(fertilizer, 0.00)
        return retval
    end
end

--- Method to calculate the current water percentage for a given bluedream_plant index
--- @param k number - bluedream_plant table index
--- @return retval number - water index [0-100]
local calcWater = function(k)
    if not bluedream_plant[k] then return false end
    local current_time = os.time()

    if #bluedream_plant[k].water == 0 then
        return 0
    else
        local last_water = bluedream_plant[k].water[#bluedream_plant[k].water]
        local time_elapsed = os.difftime(current_time, last_water)
        local water = QBCore.Shared.Round(100 - (time_elapsed / 60 * Shared.WaterDecay), 2)
        local retval = math.max(water, 0.00)
        return retval
    end
end

--- Method to calculate the health percentage for a given bluedream_plant index
--- @param k number - bluedream_plant table index
--- @return health number - health index [0-100]
local calcHealth = function(k)
    if not bluedream_plant[k] then return false end
    local health = 100
    local current_time = os.time()
    local planted_time = bluedream_plant[k].time
    local elapsed_time = os.difftime(current_time, planted_time)
    local intervals = math.floor(elapsed_time / 60 / Shared.LoopUpdate)
    if intervals == 0 then return 100 end

    for i=1, intervals, 1 do
        -- check current water and fertilizer levels at every interval timestamp, if below thresholds, remove some health
        local interval_time = planted_time + (i * Shared.LoopUpdate * 60)

        -- fertilizer at interval_time amount:
        local fertilizer_amount
        if #bluedream_plant[k].fertilizer == 0 then
            fertilizer_amount = 0
            health -= math.random(Shared.HealthBaseDecay[1], Shared.HealthBaseDecay[2])
        else
            local last_fertilizer = math.huge
            for i=1, #bluedream_plant[k].fertilizer, 1 do
                last_fertilizer = last_fertilizer < bluedream_plant[k].fertilizer[i] and last_fertilizer or bluedream_plant[k].fertilizer[i]
            end
            local time_since_fertilizer = os.difftime(interval_time, last_fertilizer)

            fertilizer_amount = math.max(QBCore.Shared.Round(100 - (time_since_fertilizer / 60 * Shared.FertilizerDecay), 2), 0.00)
            if fertilizer_amount < Shared.FertilizerThreshold then
                health -= math.random(Shared.HealthBaseDecay[1], Shared.HealthBaseDecay[2])
            end
        end

        -- water at interval_time amount:
        local water_amount
        if #bluedream_plant[k].water == 0 then
            water_amount = 0
            health -= math.random(Shared.HealthBaseDecay[1], Shared.HealthBaseDecay[2])
        else
            local last_water = math.huge
            for i=1, #bluedream_plant[k].water, 1 do
                last_water = last_water < bluedream_plant[k].water[i] and last_water or bluedream_plant[k].water[i]
            end
            local time_since_water = os.difftime(interval_time, last_water)

            water_amount = math.max(QBCore.Shared.Round(100 - (time_since_water / 60 * Shared.WaterDecay), 2), 0.00)
            if water_amount < Shared.WaterThreshold then
                health -= math.random(Shared.HealthBaseDecay[1], Shared.HealthBaseDecay[2])
            end
        end
    end

    return math.max(health, 0.0)
end

--- Method to setup all the bluedream_plant, fetched from the database
--- @return nil
local setupPlants = function()
    local result = MySQL.Sync.fetchAll('SELECT * FROM bluedream_plant')
    local current_time = os.time()
    local growTime = Shared.GrowTime * 60

    for k, v in pairs(result) do
        local progress = os.difftime(current_time, v.time)
        local growth = math.min(QBCore.Shared.Round(progress * 100 / growTime, 2), 100.00)
        local stage = calcStage(growth)
        local ModelHash = Shared.WeedProps[stage]
        local coords = json.decode(v.coords)
        local plant = CreateObjectNoOffset(ModelHash, coords.x, coords.y, coords.z + Shared.ObjectZOffset, true, true, false)
        FreezeEntityPosition(plant, true)
        bluedream_plant[plant] = {
            id = v.id,
            coords = vector3(coords.x, coords.y, coords.z),
            time = v.time,
            fertilizer = json.decode(v.fertilizer),
            water = json.decode(v.water),
            gender = v.gender
        }
    end
end

--- Method to delete all cached weed plants and their entities
--- @return nil
local destroyAllPlants = function()    
    for k, v in pairs(bluedream_plant) do
        if DoesEntityExist(k) then
            DeleteEntity(k)
            bluedream_plant[k] = nil
        end
    end
end

--- Method to update a plant object, removing the existing one and placing a new object
--- @param k number - bluedream_plant table index
--- @param stage number - Stage number
--- @return nil
local updatePlantProp = function(k, stage)
    if not bluedream_plant[k] then return end
    if not DoesEntityExist(k) then return end
    local ModelHash = Shared.WeedProps[stage]
    DeleteEntity(k)
    local plant = CreateObjectNoOffset(ModelHash, bluedream_plant[k].coords.x, bluedream_plant[k].coords.y, bluedream_plant[k].coords.z + Shared.ObjectZOffset, true, true, false)
    FreezeEntityPosition(plant, true)
    bluedream_plant[plant] = bluedream_plant[k]
    bluedream_plant[k] = nil
end

--- Method to perform an update on every weedplant, updating their prop if needed, repeats every Shared.LoopUpdate minutes
--- @return nil
updatePlants = function()
    for k, v in pairs(bluedream_plant) do
        local growth = calcGrowth(k)
        local stage = calcStage(growth)
        if stage ~= v.stage then
            bluedream_plant[k].stage = stage
            updatePlantProp(k, stage)
        end
    end

    SetTimeout(Shared.LoopUpdate * 60 * 1000, updatePlants)
end

--- Resource start/stop events

AddEventHandler('onResourceStart', function(resource)
    if resource ~= GetCurrentResourceName() then return end
    setupPlants()
    if Shared.ClearOnStartup then
        Wait(5000) -- Wait 5 seconds to allow all functions to be executed on startup
        for k, v in pairs(bluedream_plant) do
            if calcHealth(k) == 0 then
                DeleteEntity(k)
                MySQL.query('DELETE from bluedream_plant WHERE id = :id', {
                    ['id'] = bluedream_plant[k].id
                })
                bluedream_plant[k] = nil
            end
        end
    end
end)

AddEventHandler('onResourceStop', function(resource)
    if resource ~= GetCurrentResourceName() then return end
    destroyAllPlants()
end)

--- Events

RegisterNetEvent('zero-bluedream:server:ClearPlant', function(netId)
    local entity = NetworkGetEntityFromNetworkId(netId)
    if not bluedream_plant[entity] then return end
    if #(GetEntityCoords(GetPlayerPed(source)) - bluedream_plant[entity].coords) > 10 then return end
    if calcHealth(entity) ~= 0 then return end

    if DoesEntityExist(entity) then
        DeleteEntity(entity)
        MySQL.query('DELETE from bluedream_plant WHERE id = :id', {
            ['id'] = bluedream_plant[entity].id
        })
        bluedream_plant[entity] = nil
    end
end)

RegisterNetEvent('zero-bluedream:server:HarvestPlant', function(netId)
    local entity = NetworkGetEntityFromNetworkId(netId)
    if not bluedream_plant[entity] then return end
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if #(GetEntityCoords(GetPlayerPed(src)) - bluedream_plant[entity].coords) > 10 then return end
    if calcGrowth(entity) ~= 100 then return end

    if DoesEntityExist(entity) then
        local health = calcHealth(entity)
        if bluedream_plant[entity].gender == 'female' then
            local info = { health = health }
            Player.Functions.AddItem(Shared.BranchItem, math.random(5,20), false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Shared.BranchItem], 'add')
        -- else -- male seed added
        --     local mSeeds = math.floor(health / 50)
        --     local fSeeds = math.floor(health / 20)
        --     Player.Functions.AddItem(Shared.MaleSeed, mSeeds, false)
        --     Player.Functions.AddItem(Shared.FemaleSeed, fSeeds, false)
        --     TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Shared.MaleSeed], 'add', mSeeds)
        --     TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Shared.FemaleSeed], 'add', fSeeds)
        end
        
        DeleteEntity(entity)
        MySQL.query('DELETE from bluedream_plant WHERE id = :id', {
            ['id'] = bluedream_plant[entity].id
        })
        bluedream_plant[entity] = nil
    end
end)

-- RegisterNetEvent('zero-bluedream:server:PoliceDestroy', function(netId)
--     local entity = NetworkGetEntityFromNetworkId(netId)
--     if not bluedream_plant[entity] then return end
--     local src = source
--     local Player = QBCore.Functions.GetPlayer(src)
--     if not Player then return end
--     if Player.PlayerData.job.type ~= Shared.CopJob then return end
--     if #(GetEntityCoords(GetPlayerPed(src)) - bluedream_plant[entity].coords) > 10 then return end

--     if DoesEntityExist(entity) then
--         MySQL.query('DELETE from bluedream_plant WHERE id = :id', {
--             ['id'] = bluedream_plant[entity].id
--         })

--         TriggerClientEvent('zero-bluedream:client:FireGoBrrrrrrr', -1, bluedream_plant[entity].coords)
--         Wait(Shared.FireTime)
--         DeleteEntity(entity)

--         bluedream_plant[entity] = nil
--     end
-- end)

RegisterNetEvent('zero-bluedream:server:GiveWater', function(netId)
    local entity = NetworkGetEntityFromNetworkId(netId)
    if not bluedream_plant[entity] then return end
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if #(GetEntityCoords(GetPlayerPed(src)) - bluedream_plant[entity].coords) > 10 then return end

    if Player.Functions.RemoveItem(Shared.FullCanItem, 1, false) then
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Shared.FullCanItem], 'remove', 1)
        TriggerClientEvent('QBCore:Notify', src, _U('watered_plant'), 'success', 2500)
        Player.Functions.AddItem(Shared.EmptyCanItem, 1, false)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Shared.EmptyCanItem], 'add', 1)
        
        bluedream_plant[entity].water[#bluedream_plant[entity].water + 1] = os.time()
        MySQL.update('UPDATE bluedream_plant SET water = (:water) WHERE id = (:id)', {
            ['water'] = json.encode(bluedream_plant[entity].water),
            ['id'] = bluedream_plant[entity].id,
        })
    end
end)

RegisterNetEvent('zero-bluedream:server:GiveFertilizer', function(netId)
    local entity = NetworkGetEntityFromNetworkId(netId)
    if not bluedream_plant[entity] then return end
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if #(GetEntityCoords(GetPlayerPed(src)) - bluedream_plant[entity].coords) > 10 then return end

    if Player.Functions.RemoveItem(Shared.FertilizerItem, 1, false) then
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Shared.FertilizerItem], 'remove', 1)
        TriggerClientEvent('QBCore:Notify', src, _U('fertilizer_added'), 'success', 2500)
        
        bluedream_plant[entity].fertilizer[#bluedream_plant[entity].fertilizer + 1] = os.time()
        MySQL.update('UPDATE bluedream_plant SET fertilizer = (:fertilizer) WHERE id = (:id)', {
            ['fertilizer'] = json.encode(bluedream_plant[entity].fertilizer),
            ['id'] = bluedream_plant[entity].id,
        })
    end
end)

-- RegisterNetEvent('zero-bluedream:server:AddMaleSeed', function(netId)
--     local entity = NetworkGetEntityFromNetworkId(netId)
--     if not bluedream_plant[entity] then return end
--     local src = source
--     local Player = QBCore.Functions.GetPlayer(src)
--     if not Player then return end
--     if #(GetEntityCoords(GetPlayerPed(src)) - bluedream_plant[entity].coords) > 10 then return end

--     if Player.Functions.RemoveItem(Shared.MaleSeed, 1, false) then
--         TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Shared.MaleSeed], 'remove', 1)
--         TriggerClientEvent('QBCore:Notify', src, _U('male_seed_added'), 'success', 2500)
        
--         bluedream_plant[entity].gender = 'male'
--         MySQL.update('UPDATE bluedream_plant SET gender = (:gender) WHERE id = (:id)', {
--             ['gender'] = bluedream_plant[entity].gender,
--             ['id'] = bluedream_plant[entity].id,
--         })
--     end
-- end)

RegisterNetEvent('zero-bluedream:server:CreateNewPlant', function(coords)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if #(GetEntityCoords(GetPlayerPed(src)) - coords) > Shared.rayCastingDistance + 10 then return end
    if Player.Functions.RemoveItem(Shared.FemaleSeed, 1) then
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Shared.FemaleSeed], 'remove', 1)
        local ModelHash = Shared.WeedProps[1]
        local plant = CreateObjectNoOffset(ModelHash, coords.x, coords.y, coords.z + Shared.ObjectZOffset, true, true, false)
        FreezeEntityPosition(plant, true)
        local time = os.time()
        MySQL.insert('INSERT into bluedream_plant (coords, time, fertilizer, water, gender) VALUES (:coords, :time, :fertilizer, :water, :gender)', {
            ['coords'] = json.encode(coords),
            ['time'] = time,
            ['fertilizer'] = json.encode({}),
            ['water'] = json.encode({}),
            ['gender'] = 'female'
        }, function(data)
            bluedream_plant[plant] = {
                id = data,
                coords = coords,
                time = time,
                fertilizer = {},
                water = {},
                gender = 'female'
            }
        end)
    end
end)

RegisterNetEvent('zero-bluedream:server:GetFullWateringCan', function(netId)
   
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    if Player.Functions.RemoveItem(Shared.EmptyCanItem, 1, false) and Player.Functions.RemoveItem(Shared.WaterItem, 1, false) then
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Shared.EmptyCanItem], 'remove', 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Shared.WaterItem], 'remove', 1)
        TriggerClientEvent('QBCore:Notify', src, _U('filled_can'), 'success', 2500)
        Player.Functions.AddItem(Shared.FullCanItem, 1, false)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Shared.FullCanItem], 'add', 1)
    end
end)

RegisterNetEvent('ps-weedplanting:server:NotifyLabEntered')
AddEventHandler('ps-weedplanting:server:NotifyLabEntered', function()
    -- Message to notify all players
    local message = "A survivor has entered the Drug Laboratory!"

    -- Iterate over all players and send the notification
    for _, playerId in ipairs(GetPlayers()) do
        TriggerClientEvent('QBCore:Notify', playerId, message, 'info')
    end
end)

RegisterNetEvent('ps-weedplanting:server:NotifyLabEntered2')
AddEventHandler('ps-weedplanting:server:NotifyLabEntered', function()
    -- Message to notify all players
    local message = "A survivor has entered the IAA Facility!"

    -- Iterate over all players and send the notification
    for _, playerId in ipairs(GetPlayers()) do
        TriggerClientEvent('QBCore:Notify', playerId, message, 'info')
    end
end)

RegisterNetEvent('ps-weedplanting:server:NotifyLabEntered3')
AddEventHandler('ps-weedplanting:server:NotifyLabEntered', function()
    -- Message to notify all players
    local message = "A survivor has entered the Gunrunning Bunker!"

    -- Iterate over all players and send the notification
    for _, playerId in ipairs(GetPlayers()) do
        TriggerClientEvent('QBCore:Notify', playerId, message, 'info')
    end
end)

RegisterNetEvent('ps-weedplanting:server:RemoveLabKey')
AddEventHandler('ps-weedplanting:server:RemoveLabKey', function()
    local src = source -- Get the source player ID
    local Player = QBCore.Functions.GetPlayer(src) -- Get the player object

    if Player then
        -- Remove the labkey item from the player's inventory
        Player.Functions.RemoveItem(Shared.LabkeyItem, 1)
        TriggerClientEvent('QBCore:Notify', src, "Keycard removed from your inventory", 'success')
    end
end)

RegisterNetEvent('ps-weedplanting:server:RemoveWeaponsKey')
AddEventHandler('ps-weedplanting:server:RemoveWeaponsKey', function()
    local src = source -- Get the source player ID
    local Player = QBCore.Functions.GetPlayer(src) -- Get the player object

    if Player then
        -- Remove the labkey item from the player's inventory
        Player.Functions.RemoveItem(Shared.WeaponsKeyItem, 1)
        TriggerClientEvent('QBCore:Notify', src, "Keycard removed from your inventory", 'success')
    end
end)

RegisterNetEvent('ps-weedplanting:server:RemoveGunrunningKey')
AddEventHandler('ps-weedplanting:server:RemoveGunrunningKey', function()
    local src = source -- Get the source player ID
    local Player = QBCore.Functions.GetPlayer(src) -- Get the player object

    if Player then
        -- Remove the labkey item from the player's inventory
        Player.Functions.RemoveItem(Shared.GunrunningKeyItem, 1)
        TriggerClientEvent('QBCore:Notify', src, "Keycard removed from your inventory", 'success')
    end
end)


--- Callbacks

QBCore.Functions.CreateCallback('zero-bluedream:server:GetPlantData', function(source, cb, netId)
    local entity = NetworkGetEntityFromNetworkId(netId)
    if not bluedream_plant[entity] then cb(nil) return end
    local temp = {
        id = bluedream_plant[entity].id,
        coords = bluedream_plant[entity].coords,
        time = bluedream_plant[entity].time,
        fertilizer = calcFertilizer(entity),
        water = calcWater(entity),
        gender = bluedream_plant[entity].gender,
        stage = calcStage(calcGrowth(entity)),
        health = calcHealth(entity),
        growth = calcGrowth(entity)
    }
    cb(temp)
end)

--- Items

QBCore.Functions.CreateUseableItem(Shared.FemaleSeed, function(source)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
    local tub = Player.Functions.GetItemByName(Shared.DigItem)
	
    if tub ~= nil then
        TriggerClientEvent("zero-bluedream:client:UseWeedSeed", source)
    else
        TriggerClientEvent('QBCore:Notify', src, _U('missing_tub'), 'error', 2500)
    end
end)

QBCore.Functions.CreateUseableItem(Shared.EmptyCanItem, function(source)
    local src = source
    TriggerClientEvent("zero-bluedream:client:OpenFillWaterMenu", src)
end)


--- Threads

CreateThread(function()
    Wait(Shared.LoopUpdate * 60 * 1000)
    updatePlants()
end)
