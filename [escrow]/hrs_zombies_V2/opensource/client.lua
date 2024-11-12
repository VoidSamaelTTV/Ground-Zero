if Config.Framework == 'QB' then
    QBCore = exports['qb-core']:GetCoreObject()
end


disableSounds = false
zombiesNumber = 0
isDay = false

bossNumber = 0
bossModels = {}


protectionTime = 0
gasProtectionTime = 0
extraSmellTime = 0
extraSmellRadious = 0.0

canSpawnPeds = false

CreateThread(function()
    while true do
        if protectionTime ~= 0 then
            protectionTime = protectionTime - 1
        end
        if gasProtectionTime ~= 0 then
            gasProtectionTime = gasProtectionTime - 1
        end
        if extraSmellTime ~= 0 then
            extraSmellTime = extraSmellTime - 1
            if extraSmellTime == 0 then
                extraSmellRadious = 0.0
            end
        end
        Wait(1000)
    end
end)

function setProtectionTime(value)
    protectionTime = value
end

function addProtectionTime(value)
    protectionTime = protectionTime + value
end

function getProtectionTime()
    return protectionTime 
end

function setGasProtectionTime(value)
    gasProtectionTime = value
end

function addGasProtectionTime(value)
    gasProtectionTime = gasProtectionTime + value
end

function getGasProtectionTime()
    return gasProtectionTime 
end

function setExtraSmellTime(value,radious)
    extraSmellTime = value
    if not radious then radious = 10.0 end
    extraSmellRadious = radious
end

function addExtraSmellTime(value)
    extraSmellTime = extraSmellTime + value
end

function getExtraSmellTime()
    return extraSmellTime 
end

exports("setExtraSmellTime", setExtraSmellTime)
exports("addExtraSmellTime", addExtraSmellTime)
exports("getExtraSmellTime", getExtraSmellTime)

exports("setProtectionTime", setProtectionTime)
exports("addProtectionTime", addProtectionTime)
exports("getProtectionTime", getProtectionTime)

exports("setGasProtectionTime", setGasProtectionTime)
exports("addGasProtectionTime", addGasProtectionTime)
exports("getGasProtectionTime", getGasProtectionTime)

hashList = {}

local debugTab = {}
for k,v in pairs(Config.specialZombiesSpecs) do
    local theHash = GetHashKey(k)
    bossModels[theHash] = true
    hashList[k] = theHash
    debugTab[theHash] = v
end
Config.specialZombiesSpecs = debugTab


CreateThread(function()
	StartAudioScene('CHARACTER_CHANGE_IN_SKY_SCENE')
	SetAudioFlag("PoliceScannerDisabled", true)
end)

function Round(value, numDecimalPlaces)
	if numDecimalPlaces then
		local power = 10^numDecimalPlaces
		return math.floor((value * power) + 0.5) / (power)
	else
		return math.floor(value + 0.5)
	end
end

function canBeZombie(entity)
    return true
end

CreateThread(function()
    while true do
        local peds = GetGamePool('CPed')
        local num = 0
        for k,v in ipairs(peds) do
            if not IsPedAPlayer(v) then
                if not IsPedDeadOrDying(v,true) then
                    if bossModels[GetEntityModel(v)] then
                        num = num + 1
                    end
                end
            end
        end
        bossNumber = num
        
        Wait(500)
    end
end)

function effectHandler(asset,name,coords,time,r,g,b,a,scale)

    if not HasNamedPtfxAssetLoaded(asset) then

        RequestNamedPtfxAsset(asset)
        while not HasNamedPtfxAssetLoaded(asset) do
            Citizen.Wait(1)
        end
    end

    SetPtfxAssetNextCall(asset)

    local x = coords.x
    local y = coords.y
    local z = coords.z

    local fx = StartParticleFxLoopedAtCoord(name, x, y, z, 0.0, 0.0, 0.0,scale, false, false, false, false)
    SetParticleFxLoopedColour(fx, r, g, b, 0)
    SetParticleFxLoopedAlpha(fx, a)
    Wait(time)
    StopParticleFxLooped(fx, 0)
end

function effectHandlerEntity(asset,name,entity,time,r,g,b,a,scale)
    CreateThread(function()
        if not HasNamedPtfxAssetLoaded(asset) then

            RequestNamedPtfxAsset(asset)
            while not HasNamedPtfxAssetLoaded(asset) do
                Citizen.Wait(1)
            end
        end
    
        SetPtfxAssetNextCall(asset)
    
        local fx = StartParticleFxLoopedOnEntity(name,entity, 0.0,0.0, 0.0, 0.0, 0.0, 0.0,scale, false, false, false, false)
        SetParticleFxLoopedColour(fx, r, g, b, 0)
        SetParticleFxLoopedAlpha(fx, a)
        Wait(time)
        StopParticleFxLooped(fx, 0)
    end)
end

function poisonGasPtfx(entity)
    effectHandlerEntity('core','exp_grd_rpg_post',entity,1000,0.0,10.0,0.0,1.0,1.0)
end

function eletricPtfx(entity)
    effectHandlerEntity('core','ent_dst_elec_crackle',entity,1000,0.0,10.0,0.0,1.0,5.0)
end

function firePtfx(entity)
    effectHandlerEntity('core','ent_amb_fbi_fire_beam',entity,1000,0.0,10.0,0.0,1.0,1.0)
end

function firePtfxAttack(entity)
    effectHandlerEntity('core','ent_amb_fbi_fire_beam',entity,1000,0.0,10.0,0.0,1.0,5.0)
end

function nestPtfx(entity,nestType)
    effectHandlerEntity('core','exp_grd_rpg_post',entity,1000,0.0,10.0,0.0,1.0,1.0)
end

function onNestAttackPed(entity,ped,damage)
    if gasProtectionTime == 0 then
        ApplyDamageToPed(ped, damage, false)
       
    end
end



AddEventHandler('onZombieDied', function(entity)
    if GetPedSourceOfDeath(entity) == PlayerPedId() then
        --exports.xperience:AddXP(100)
    end
end)

AddEventHandler('onAnimalDied', function(entity)
    if GetPedSourceOfDeath(entity) == PlayerPedId() then
        --exports.xperience:AddXP(50)
    end
end)

AddEventHandler('hrs_zombies:applyExtraFlags', function(entity,model)
   
end)

function onZombiePoisonPed(zombie,ped,damage)
    if gasProtectionTime == 0 then
        ApplyDamageToPed(ped, damage, false)
    end
end

function onZombieFirePed(zombie,ped,damage)
    CreateThread(function()
        StartEntityFire(ped)
        local time = 10
        while time > 0 do
            Wait(100)
            ApplyDamageToPed(ped, damage, false)  
            time = time - 1
        end
        StopEntityFire(ped)
    end)
end



function onZombieElectrocutePed(zombie,ped,damage)   
    SetPedToRagdoll(ped, 1000, 1000, 0, 0, 0, 0)
    eletricPtfx(ped)
    ApplyDamageToPed(ped, damage, false)  
end

function onZombiePoisonVehicle(zombie,vehicle,damage)
    SetVehicleEngineHealth(vehicle,-4000.0)
end

function onZombieScream(zombie,radius)
    setExtraSmellTime(30,radius)
    print("screaming")
    -- CreateThread(function()
    --     local id = GetSoundId()
    --     RequestScriptAudioBank('NIGEL_02_SOUNDSET', false)
    --     PlaySoundFromEntity(id, "SCREAMS", zombie, 'NIGEL_02_SOUNDSET', 0, 0)
    --     while not HasSoundFinished(id) do
    --         Wait(100)
    --     end
    --     ReleaseSoundId(id)  
    --     print("releases")   
    -- end)
end

function onZombieFireVehicle(zombie,vehicle,damage)
    CreateThread(function()
        StartEntityFire(vehicle)
        Wait(1000)
        StopEntityFire(vehicle)
    end)
    --SetVehicleEngineHealth(vehicle,-4000.0)
end

function onZombieElectrocuteVehicle(zombie,vehicle,damage)
    eletricPtfx(vehicle)
    SetVehicleEngineOn(vehicle,false,true,false)
   -- print("eletrocute veh")
    SetVehicleEngineHealth(vehicle,-4000.0)
    
    --if IsEntityTouchingEntity(zombie,vehicle) then
        --ExplodeVehicle(vehicle,false,true)
    --end
end

function onZombieAttackPed(zombie,ped,damage)
    ApplyDamageToPed(ped, damage, false)
    if Config.ragdollOnZombieAttackProbability then
        local rdm = math.random(1,100)

        if rdm <= Config.ragdollOnZombieAttackProbability then 
            SetPedToRagdoll(ped, 1000, 1000, 0, 0, 0, 0)
        end
    end
end

function onZombieAttackVehicle(zombie,vehicle,damage,zombieCoords)
    if Config.zombieVehicleExternalDamage then
        local vec = GetOffsetFromEntityGivenWorldCoords(vehicle,zombieCoords.x,zombieCoords.y,zombieCoords.z)  
        SetVehicleDamage(vehicle, vec.x, vec.y, vec.z, damage * 10.0, 100.0, true)
    end
    SetVehicleEngineHealth(vehicle,GetVehicleEngineHealth(vehicle) - damage)

end


RegisterCommand('stopzombiesound', function()
    disableSounds = not disableSounds
end, false)




-- RegisterCommand('spawnZombie', function()
--     local myPed = PlayerPedId()
--     local myPedCoords = GetEntityCoords(myPed)
--     local zombieModel = 's_m_m_dockwork_01' 
    
--     exports.hrs_zombies_V2:SpawnPed(zombieModel,myPedCoords)
-- end, false)


RegisterKeyMapping('stopzombiesound', 'Toggle Zombie sounds', 'keyboard', 'k')

function isInRedZoneCoords(coords)
    local defaulRedzone = nil
    local specialRedzone = nil

    for k,v in pairs(Config.redZones) do
        if #(v.coords.xy - coords.xy) < v.radious then
            if v.bosses then
                specialRedzone = k
            else
                defaulRedzone = k
            end
        end
    end

    if specialRedzone then
        return specialRedzone
    elseif defaulRedzone then
        return defaulRedzone
    else
        return false
    end
end

function isInSafeZoneCoords(coords)
    for k,v in pairs(Config.noSpawnZones) do
        if #(v.coords.xy - coords.xy) < v.radious then
            return true
        end
    end
    return false
end

function isInNestGenerationZoneCoords(coords)
    for k,v in pairs(Config.NestGenerationByZone) do
        if #(v.coords.xy - coords.xy) < v.radious then
            return v
        end
    end
    return false
end



exports("isInSafeZoneCoords", isInSafeZoneCoords)


function isInSafeZone(entity,coords)
    for k,v in pairs(Config.noSpawnZones) do
        if #(v.coords.xy - coords.xy) < v.radious then
            return true
        end
    end
    return false
end

function isInRedZone(entity,coords)
    for k,v in pairs(Config.redZones) do
        if #(v.coords.xy - coords.xy) < v.radious then
            return k
        end
    end
    return false
end



pedMult = 1.0
animalMult = 1.0

CreateThread(function()
    while true do
        Wait(500)
        local hours = GetClockHours()
        if hours >= 6 and hours < 20 then
            isDay = true
            pedMult = Config.dayMult
            animalMult = Config.dayMultAnimals
        else
            isDay = false
            pedMult = Config.nightMult
            animalMult = Config.nightMultAnimals
        end
       
    end
end)



CreateThread(function()
    if Config.safeZoneBlips then
        for k,v in ipairs(Config.noSpawnZones) do
            if not v.hiden then

                local x,y,z = table.unpack(v.coords)
                local blip = AddBlipForRadius(x,y,z, v.radious)
                SetBlipHighDetail(blip, true)
                SetBlipColour(blip, Config.safeZoneBlips.color)
                SetBlipAlpha (blip, Config.safeZoneBlips.alpha)
                SetBlipAsShortRange(blip, Config.safeZoneBlips.shortRange)
                local blip2 = AddBlipForCoord(x,y,z) 
                SetBlipSprite(blip2, Config.safeZoneBlips.sprite)
                SetBlipScale(blip2, Config.safeZoneBlips.scale)
                SetBlipAsShortRange(blip2, Config.safeZoneBlips.shortRange)
                SetBlipColour(blip2,Config.safeZoneBlips.color)
                BeginTextCommandSetBlipName('STRING')
                if v.label then
                    AddTextComponentSubstringPlayerName(v.label)
                else
                    AddTextComponentSubstringPlayerName(Config.safeZoneBlips.label)
                end
                EndTextCommandSetBlipName(blip2)

            end
        end
    end

    if Config.emsBlips then
        for k,v in ipairs(Config.emsBlipZones) do
            if not v.hiden then

                local x,y,z = table.unpack(v.coords)
                local blip = AddBlipForRadius(x,y,z, v.radious)
                SetBlipHighDetail(blip, true)
                SetBlipColour(blip, Config.emsBlips.color)
                SetBlipAlpha (blip, Config.emsBlips.alpha)
                SetBlipAsShortRange(blip, Config.emsBlips.shortRange)
                local blip2 = AddBlipForCoord(x,y,z) 
                SetBlipSprite(blip2, Config.emsBlips.sprite)
                SetBlipScale(blip2, Config.emsBlips.scale)
                SetBlipAsShortRange(blip2, Config.emsBlips.shortRange)
                SetBlipColour(blip2,Config.emsBlips.color)
                BeginTextCommandSetBlipName('STRING')
                if v.label then
                    AddTextComponentSubstringPlayerName(v.label)
                else
                    AddTextComponentSubstringPlayerName(Config.emsBlips.label)
                end
                EndTextCommandSetBlipName(blip2)

            end
        end
    end

    if Config.fob_memphis_blip then
        for k,v in ipairs(Config.fob_memphis_blipZones) do
            if not v.hiden then

                local x,y,z = table.unpack(v.coords)
                local blip = AddBlipForRadius(x,y,z, v.radious)
                SetBlipHighDetail(blip, true)
                SetBlipColour(blip, Config.fob_memphis_blip.color)
                SetBlipAlpha (blip, Config.fob_memphis_blip.alpha)
                SetBlipAsShortRange(blip, Config.fob_memphis_blip.shortRange)
                local blip2 = AddBlipForCoord(x,y,z) 
                SetBlipSprite(blip2, Config.fob_memphis_blip.sprite)
                SetBlipScale(blip2, Config.fob_memphis_blip.scale)
                SetBlipAsShortRange(blip2, Config.fob_memphis_blip.shortRange)
                SetBlipColour(blip2,Config.fob_memphis_blip.color)
                BeginTextCommandSetBlipName('STRING')
                if v.label then
                    AddTextComponentSubstringPlayerName(v.label)
                else
                    AddTextComponentSubstringPlayerName(Config.fob_memphis_blip.label)
                end
                EndTextCommandSetBlipName(blip2)

            end
        end
    end

    if Config.questBlips then
        for k,v in ipairs(Config.questBlipZones) do
            if not v.hiden then

                local x,y,z = table.unpack(v.coords)
                local blip = AddBlipForRadius(x,y,z, v.radious)
                SetBlipHighDetail(blip, true)
                SetBlipColour(blip, Config.questBlips.color)
                SetBlipAlpha (blip, Config.questBlips.alpha)
                SetBlipAsShortRange(blip, Config.questBlips.shortRange)
                local blip2 = AddBlipForCoord(x,y,z) 
                SetBlipSprite(blip2, Config.questBlips.sprite)
                SetBlipScale(blip2, Config.questBlips.scale)
                SetBlipAsShortRange(blip2, Config.questBlips.shortRange)
                SetBlipColour(blip2,Config.questBlips.color)
                BeginTextCommandSetBlipName('STRING')
                if v.label then
                    AddTextComponentSubstringPlayerName(v.label)
                else
                    AddTextComponentSubstringPlayerName(Config.questBlips.label)
                end
                EndTextCommandSetBlipName(blip2)

            end
        end
    end

    if Config.redBlips then
        for k,v in ipairs(Config.RedBlipZones) do
            if not v.hiden then

                local x,y,z = table.unpack(v.coords)
                local blip = AddBlipForRadius(x,y,z, v.radious)
                SetBlipHighDetail(blip, true)
                SetBlipColour(blip, Config.redBlips.color)
                SetBlipAlpha (blip, Config.redBlips.alpha)
                SetBlipAsShortRange(blip, Config.redBlips.shortRange)
                local blip2 = AddBlipForCoord(x,y,z) 
                SetBlipSprite(blip2, Config.redBlips.sprite)
                SetBlipScale(blip2, Config.redBlips.scale)
                SetBlipAsShortRange(blip2, Config.redBlips.shortRange)
                SetBlipColour(blip2,Config.redBlips.color)
                BeginTextCommandSetBlipName('STRING')
                if v.label then
                    AddTextComponentSubstringPlayerName(v.label)
                else
                    AddTextComponentSubstringPlayerName(Config.redBlips.label)
                end
                EndTextCommandSetBlipName(blip2)

            end
        end
    end

    if Config.hauntedBlip then
        for k,v in ipairs(Config.hauntedBlipZones) do
            if not v.hiden then

                local x,y,z = table.unpack(v.coords)
                local blip = AddBlipForRadius(x,y,z, v.radious)
                SetBlipHighDetail(blip, true)
                SetBlipColour(blip, Config.hauntedBlip.color)
                SetBlipAlpha (blip, Config.hauntedBlip.alpha)
                SetBlipAsShortRange(blip, Config.hauntedBlip.shortRange)
                local blip2 = AddBlipForCoord(x,y,z) 
                SetBlipSprite(blip2, Config.hauntedBlip.sprite)
                SetBlipScale(blip2, Config.hauntedBlip.scale)
                SetBlipAsShortRange(blip2, Config.hauntedBlip.shortRange)
                SetBlipColour(blip2,Config.hauntedBlip.color)
                BeginTextCommandSetBlipName('STRING')
                if v.label then
                    AddTextComponentSubstringPlayerName(v.label)
                else
                    AddTextComponentSubstringPlayerName(Config.hauntedBlip.label)
                end
                EndTextCommandSetBlipName(blip2)

            end
        end
    end

    if Config.militaryBlip then
        for k,v in ipairs(Config.militaryBlipZones) do
            if not v.hiden then

                local x,y,z = table.unpack(v.coords)
                local blip = AddBlipForRadius(x,y,z, v.radious)
                SetBlipHighDetail(blip, true)
                SetBlipColour(blip, Config.militaryBlip.color)
                SetBlipAlpha (blip, Config.militaryBlip.alpha)
                SetBlipAsShortRange(blip, Config.militaryBlip.shortRange)
                local blip2 = AddBlipForCoord(x,y,z) 
                SetBlipSprite(blip2, Config.militaryBlip.sprite)
                SetBlipScale(blip2, Config.militaryBlip.scale)
                SetBlipAsShortRange(blip2, Config.militaryBlip.shortRange)
                SetBlipColour(blip2,Config.militaryBlip.color)
                BeginTextCommandSetBlipName('STRING')
                if v.label then
                    AddTextComponentSubstringPlayerName(v.label)
                else
                    AddTextComponentSubstringPlayerName(Config.militaryBlip.label)
                end
                EndTextCommandSetBlipName(blip2)

            end
        end
    end

    if Config.govBlip then
        for k,v in ipairs(Config.govBlipZones) do
            if not v.hiden then

                local x,y,z = table.unpack(v.coords)
                local blip = AddBlipForRadius(x,y,z, v.radious)
                SetBlipHighDetail(blip, true)
                SetBlipColour(blip, Config.govBlip.color)
                SetBlipAlpha (blip, Config.govBlip.alpha)
                SetBlipAsShortRange(blip, Config.govBlip.shortRange)
                local blip2 = AddBlipForCoord(x,y,z) 
                SetBlipSprite(blip2, Config.govBlip.sprite)
                SetBlipScale(blip2, Config.govBlip.scale)
                SetBlipAsShortRange(blip2, Config.govBlip.shortRange)
                SetBlipColour(blip2,Config.govBlip.color)
                BeginTextCommandSetBlipName('STRING')
                if v.label then
                    AddTextComponentSubstringPlayerName(v.label)
                else
                    AddTextComponentSubstringPlayerName(Config.govBlip.label)
                end
                EndTextCommandSetBlipName(blip2)

            end
        end
    end

    if Config.prisonBlip then
        for k,v in ipairs(Config.prisonBlipZones) do
            if not v.hiden then

                local x,y,z = table.unpack(v.coords)
                local blip = AddBlipForRadius(x,y,z, v.radious)
                SetBlipHighDetail(blip, true)
                SetBlipColour(blip, Config.prisonBlip.color)
                SetBlipAlpha (blip, Config.prisonBlip.alpha)
                SetBlipAsShortRange(blip, Config.prisonBlip.shortRange)
                local blip2 = AddBlipForCoord(x,y,z) 
                SetBlipSprite(blip2, Config.prisonBlip.sprite)
                SetBlipScale(blip2, Config.prisonBlip.scale)
                SetBlipAsShortRange(blip2, Config.prisonBlip.shortRange)
                SetBlipColour(blip2,Config.prisonBlip.color)
                BeginTextCommandSetBlipName('STRING')
                if v.label then
                    AddTextComponentSubstringPlayerName(v.label)
                else
                    AddTextComponentSubstringPlayerName(Config.prisonBlip.label)
                end
                EndTextCommandSetBlipName(blip2)

            end
        end
    end

    if Config.humaneBlip then
        for k,v in ipairs(Config.humaneBlipZones) do
            if not v.hiden then

                local x,y,z = table.unpack(v.coords)
                local blip = AddBlipForRadius(x,y,z, v.radious)
                SetBlipHighDetail(blip, true)
                SetBlipColour(blip, Config.humaneBlip.color)
                SetBlipAlpha (blip, Config.humaneBlip.alpha)
                SetBlipAsShortRange(blip, Config.humaneBlip.shortRange)
                local blip2 = AddBlipForCoord(x,y,z) 
                SetBlipSprite(blip2, Config.humaneBlip.sprite)
                SetBlipScale(blip2, Config.humaneBlip.scale)
                SetBlipAsShortRange(blip2, Config.humaneBlip.shortRange)
                SetBlipColour(blip2,Config.humaneBlip.color)
                BeginTextCommandSetBlipName('STRING')
                if v.label then
                    AddTextComponentSubstringPlayerName(v.label)
                else
                    AddTextComponentSubstringPlayerName(Config.humaneBlip.label)
                end
                EndTextCommandSetBlipName(blip2)

            end
        end
    end

    if Config.radiationBlip then
        for k,v in ipairs(Config.radiationBlipZones) do
            if not v.hiden then

                local x,y,z = table.unpack(v.coords)
                local blip = AddBlipForRadius(x,y,z, v.radious)
                SetBlipHighDetail(blip, true)
                SetBlipColour(blip, Config.radiationBlip.color)
                SetBlipAlpha (blip, Config.radiationBlip.alpha)
                SetBlipAsShortRange(blip, Config.radiationBlip.shortRange)
                local blip2 = AddBlipForCoord(x,y,z) 
                SetBlipSprite(blip2, Config.radiationBlip.sprite)
                SetBlipScale(blip2, Config.radiationBlip.scale)
                SetBlipAsShortRange(blip2, Config.radiationBlip.shortRange)
                SetBlipColour(blip2,Config.radiationBlip.color)
                BeginTextCommandSetBlipName('STRING')
                if v.label then
                    AddTextComponentSubstringPlayerName(v.label)
                else
                    AddTextComponentSubstringPlayerName(Config.radiationBlip.label)
                end
                EndTextCommandSetBlipName(blip2)

            end
        end
    end

    if Config.RedZoneBlips then
        for k,v in ipairs(Config.redZones) do
            if not v.hiden then
                local x,y,z = table.unpack(v.coords)
                local blip = AddBlipForRadius(x,y,z, v.radious)
                SetBlipHighDetail(blip, true)
                SetBlipColour(blip, Config.RedZoneBlips.color)
                SetBlipAlpha (blip, Config.RedZoneBlips.alpha)
                SetBlipAsShortRange(blip, Config.RedZoneBlips.shortRange)
                local blip2 = AddBlipForCoord(x,y,z) 
                SetBlipSprite(blip2, Config.RedZoneBlips.sprite)
                SetBlipScale(blip2, Config.RedZoneBlips.scale)
                SetBlipAsShortRange(blip2, Config.RedZoneBlips.shortRange)
                SetBlipColour(blip2,Config.RedZoneBlips.color)
                BeginTextCommandSetBlipName('STRING')
                if v.label then
                    AddTextComponentSubstringPlayerName(v.label)
                else
                    AddTextComponentSubstringPlayerName(Config.RedZoneBlips.label)
                end
                EndTextCommandSetBlipName(blip2)
            end
        end
    end

end)

function CreateNestBlip(index)
end


if not Config.useEntityLockdown then
    CreateThread(function()
        while true do
            Wait(0)
            SetVehiclePopulationBudget(0)
            SetPedPopulationBudget(0)
        end
    end)
end

function isMyPedDead(myPed)

    if Config.Framework == "QB" then
        PlayerData = QBCore.Functions.GetPlayerData()
        if PlayerData and PlayerData.metadata and (PlayerData.metadata['inlaststand'] or PlayerData.metadata['isdead']) then
            return 1
        end
        return false
    end

    return IsPedDeadOrDying(myPed,true)
end


if Config.Framework == "ESX" then
    RegisterNetEvent('esx:playerLoaded')
    AddEventHandler('esx:playerLoaded', function()
        canSpawnPeds = true
    end)
elseif Config.Framework == "QB" then
    RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function() 
        canSpawnPeds = true
    end)
else
    canSpawnPeds = true
end

RegisterNetEvent('hrs_zombies:canSpawnPeds')
AddEventHandler('hrs_zombies:canSpawnPeds', function()
    canSpawnPeds = true
end)

-- -- VIP
-- RegisterNetEvent('qb-ambulancejob:safezonestash', function()
--     if exports['av_vip']:Level() == 0 then QBCore.Functions.Notify('You do not have VIP. To subscibe, please visit: ground-zero.tebex.io', 'error', 5000)
--     elseif exports['av_vip']:Level() == 1 then QBCore.Functions.Notify('Welcome, VIP Bronze member', 'success', 5000)
--         TriggerServerEvent("inventory:server:OpenInventory", "stash", "safezone", { maxweight = 25000, slots = 10, })
--     elseif exports['av_vip']:Level() == 2 then QBCore.Functions.Notify('Welcome, VIP Silver member', 'success', 5000)
--         TriggerServerEvent("inventory:server:OpenInventory", "stash", "safezone", { maxweight = 50000, slots = 20, })
--     elseif exports['av_vip']:Level() == 3 then QBCore.Functions.Notify('Welcome, VIP Gold member', 'success', 5000)
--         TriggerServerEvent("inventory:server:OpenInventory", "stash", "safezone", { maxweight = 100000, slots = 40, })
-- end
-- end)


----- SPAWN PED EXPORT, exports.hrs_zombies_BETA:SpawnPed(model,coords) -------




------------------------- SAFEZONE CODE ----------------------------------

function ShowNotification(text)
    BeginTextCommandThefeedPost("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandThefeedPostTicker(true, true)
end


AddEventHandler('hrs_zombies:triggerfinal', function(index,Object)
    local args = {}

    local thisEvent = Config.safezonePedsAndProps[index].noTargetInfo.TriggerEvent

    if thisEvent.args then
        if thisEvent.entityAsArg then
            for k,v in ipairs(thisEvent.args) do          
                if v == thisEvent.entityAsArg then
                    args[k] = Object
                else
                    args[k] = v
                end
            end
        else
            for k,v in ipairs(thisEvent.args) do          
                args[k] = v               
            end
        end
    end

    if thisEvent.type == "client" then
        TriggerEvent(thisEvent.event,table.unpack(args))
    else
        TriggerServerEvent(thisEvent.event,table.unpack(args))
    end
end)

local inSafeZone = false
local vehPoolOpen = GetGamePool('CVehicle') 
local pedPoolOpen = GetGamePool('CPed') 
local myVehOpen = GetVehiclePedIsIn(PlayerPedId())
local myPedOpen = PlayerPedId()
local myCoordsOpen = GetEntityCoords(myPedOpen)

CreateThread(function()
    while true do
        myPedOpen = PlayerPedId()
        local coords = GetEntityCoords(myPedOpen)

        inSafeZoneTest = isInSafeZoneCoords(coords)

        if inSafeZoneTest then
            if not inSafeZone then
                ShowNotification(Config.locales['in_safe'])
            end

            vehPoolOpen = GetGamePool('CVehicle') 
            pedPoolOpen = GetGamePool('CPed') 
            myVehOpen = GetVehiclePedIsIn(myPedOpen)

            if Config.safeZonePvE then
                NetworkSetFriendlyFireOption(false)
            end

            if Config.safeZoneGhost then
                SetLocalPlayerAsGhost(true)
            end
           -- SetArtificialLightsState(false)
           -- SetArtificialLightsStateAffectsVehicles(false)
            if Config.safeZoneInvincible then
                SetEntityInvincible(myPedOpen,true)
            end
        else

            if inSafeZone then
                ShowNotification(Config.locales['leave_safe'])
                
                local timer = Config.safeLeaveSafeZoneTimer * 2

                while timer > 0 do
                    Wait(500)
                    if isInSafeZoneCoords(GetEntityCoords(PlayerPedId())) then


                        break
                    end
                    timer = timer - 1
                end

                if not isInSafeZoneCoords(GetEntityCoords(PlayerPedId())) then
                    ShowNotification(Config.locales['end_invincible'])
                end
            end

            if Config.safeZonePvE then
                NetworkSetFriendlyFireOption(true)
            end

            if Config.safeZoneGhost then
                SetLocalPlayerAsGhost(false)
            end
          --  SetArtificialLightsState(true)
          --  SetArtificialLightsStateAffectsVehicles(false)
            if Config.safeZoneInvincible then
                SetEntityInvincible(myPedOpen,false)
            end
        end

        inSafeZone = inSafeZoneTest

        Wait(500)
    end
end)


if Config.safeZoneGoThrougthPlayers or Config.safeZoneDisableShootOrAttack then

    CreateThread(function()
        while true do
            local sleep = 500
        
            if inSafeZone then
                sleep = 0

                if Config.safeZoneGoThrougthPlayers then

                    for _,entity in ipairs(vehPoolOpen) do
                        SetEntityNoCollisionEntity(entity,myPedOpen,true)
                        if myVehOpen ~= 0 then
                            SetEntityNoCollisionEntity(entity,myVehOpen,true)               
                        end
                    end

                    local newVehs = {}

                    for _,entity in ipairs(pedPoolOpen) do               
                        SetEntityNoCollisionEntity(entity,myPedOpen,true)            
                        if myVehOpen ~= 0 then
                            SetEntityNoCollisionEntity(entity,myVehOpen,true)
                        end              
                    end

                end

                if Config.safeZoneDisableShootOrAttack then
                    DisablePlayerFiring(PlayerId(),true)    
                end        
            end
            Wait(sleep)
        end
    end)

end

local defaultInteractIndex = nil

if Config.safezonePedsAndProps then

    function canInteractConditions()
        if IsNuiFocused() or IsPauseMenuActive() or IsEntityDead(PlayerPedId()) or not IsPedOnFoot(PlayerPedId()) then
            return false
        else
            return true
        end
    end

    CreateThread(function()
        while true do
            local sleep = 100
            if defaultInteractIndex and canInteractConditions() then
                local text = Config.safezonePedsAndProps[defaultInteractIndex].noTargetInfo.label

                if text  then
                    AddTextEntry('zombiesnot', text)
                    BeginTextCommandDisplayHelp('zombiesnot')
                    EndTextCommandDisplayHelp(0, false, false, 0)
                    if IsControlJustPressed(0,38) then
                        TriggerEvent('hrs_zombies:triggerfinal',defaultInteractIndex,Config.safezonePedsAndProps[defaultInteractIndex].entity)
                        Wait(500)
                    end
                end
                
                sleep = 0
            end
            Wait(sleep)
        end
    end)

    CreateThread(function()

        local deleteList = {}
        for k,v in pairs(Config.safezonePedsAndProps) do
            if not IsModelInCdimage(v.model) then
                deleteList[k] = true
            end
        end
        
        for k,v in pairs(deleteList) do
            print("[^3WARNING^7] Config.safezonePedsAndProps INDEX "..k.." has a model that does not exist")
            Config.safezonePedsAndProps[k] = nil
        end



        while true do
            local coords = GetEntityCoords(myPedOpen)


            local defaultInteractIndexTest = nil
          
            for k,v in pairs(Config.safezonePedsAndProps) do
                local distanceReal = #(coords - v.coords)

                if distanceReal < v.drawDistance then
                    if not v.entity or (v.entity and not DoesEntityExist(v.entity)) then
                        RequestModel(v.model)
                        while not HasModelLoaded(v.model) do
                            Wait(1)
                        end

                        if v.type == 'ped' then
                            v.entity = CreatePed(1, v.model, v.coords.x, v.coords.y, v.coords.z - 1.0, v.heading, false, true)
                        else
                            v.entity = CreateObject(v.model, v.coords.x, v.coords.y, v.coords.z - 1.0, false, true, false)
                            SetEntityHeading(v.entity,v.heading)
                        end

                        SetModelAsNoLongerNeeded(v.model)

                        SetEntityAsMissionEntity(v.entity)
                        FreezeEntityPosition(v.entity, true) 
                        SetEntityInvincible(v.entity, true) 

                        if v.type == 'ped' then

                            SetBlockingOfNonTemporaryEvents(v.entity, true) 

                            if v.anim then
                                if v.anim.animDict and v.anim.animName then
                                    RequestAnimDict(v.anim.animDict)
                                    while not HasAnimDictLoaded(v.anim.animDict) do
                                        Wait(1)
                                    end
                                    TaskPlayAnim(v.entity, v.anim.animDict, v.anim.animName, 8.0, 0, -1, 1, 0, 0, 0)
                                end

                                if v.anim.scenario then
                                    TaskStartScenarioInPlace(v.entity, v.anim.scenario, 0, true) -- begins peds animation
                                end
                            end

                        end

                        if v.targetInfo and Config.UseTargetExport then
                            exports[Config.UseTargetExport]:AddTargetEntity(v.entity,v.targetInfo)
                        end

                    else
                        if v.noTargetInfo then
                            if distanceReal < v.noTargetInfo.distance  then
                                defaultInteractIndexTest = k
                            end
                        end
                    end
                else
                    if v.entity and DoesEntityExist(v.entity) then

                        if v.targetInfo and Config.UseTargetExport then
                            exports[Config.UseTargetExport]:RemoveTargetEntity(v.entity)
                        end

                        DeleteEntity(v.entity)
                        v.entity = nil
 
                    end
                end


            end

            
            defaultInteractIndex = defaultInteractIndexTest
            
            
            Wait(500)
        end
    end)


    for k,v in pairs(Config.safezonePedsAndProps) do
        if v.blip then
            local x,y,z = table.unpack(v.coords)
            local blip = AddBlipForCoord(x,y,z) 
            SetBlipSprite(blip, v.blip.sprite)
            SetBlipScale(blip, v.blip.scale)
            SetBlipAsShortRange(blip, v.blip.shortRange)
            SetBlipColour(blip,v.blip.color)
            BeginTextCommandSetBlipName('STRING')
            AddTextComponentSubstringPlayerName(v.blip.label)
            EndTextCommandSetBlipName(blip)
        end
    end
end




------------------------ EXAMPLE EVENT -----------

AddEventHandler('hrs_zombies:exampleEvent', function(entity,health)
    local myPed = PlayerPedId()
    SetEntityHealth(myPed,GetEntityHealth(myPed) + health)

    ShowNotification("You regenerated "..health.." of health")
end)

