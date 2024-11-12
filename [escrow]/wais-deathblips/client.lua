-----------------------------------------------------------------------------------------
-- EVENT'S --
-----------------------------------------------------------------------------------------

AddEventHandler('gameEventTriggered', function(name, data)
    if name == "CEventNetworkEntityDamage" then
        victim = tonumber(data[1])
        attacker = tonumber(data[2])
        victimDied = tonumber(data[6]) == 1 and true or false 
        weaponHash = tonumber(data[7])
        isMeleeDamage = tonumber(data[10]) ~= 0 and true or false 
        vehicleDamageTypeFlag = tonumber(data[11]) 
        local FoundLastDamagedBone, LastDamagedBone = GetPedLastDamageBone(victim)
        local bonehash = -1 
        if FoundLastDamagedBone then
            bonehash = tonumber(LastDamagedBone)
        end
        local PPed = PlayerPedId()
        local distance = IsEntityAPed(attacker) and #(GetEntityCoords(attacker) - GetEntityCoords(victim)) or -1
        local isplayer = IsPedAPlayer(attacker)
        local attackerid = isplayer and GetPlayerServerId(NetworkGetPlayerIndexFromPed(attacker)) or tostring(attacker==-1 and " " or attacker)
        local deadid = isplayer and GetPlayerServerId(NetworkGetPlayerIndexFromPed(victim)) or tostring(victim==-1 and " " or victim)
        local victimName = GetPlayerName(PlayerId())

        if victim == PPed then 
            if victimDied then
                if IsEntityAPed(attacker) then
                    TriggerServerEvent('wais:player:deathblips', attackerid, deadid)
                end
            end 
        end
    end
end)

RegisterNetEvent('wais:attacker:send:coords', function(coords, deadername)
	local blip = AddBlipForCoord(coords)
	SetBlipSprite(blip,  Config.Blips["killed"]["sprite"])
	SetBlipDisplay(blip, Config.Blips["killed"]["display"])
	SetBlipScale(blip,   Config.Blips["killed"]["scale"])
	SetBlipColour(blip,  Config.Blips["killed"]["colour"])
	SetBlipAsShortRange(blip, false)
	AddTextEntry('MYBLIP', (Config.Blips["killed"]["string"]:format(deadername)))
	BeginTextCommandSetBlipName('MYBLIP')
	AddTextComponentSubstringPlayerName(name)
	EndTextCommandSetBlipName(blip)
	SetTimeout(Config.Blips["cleantime"], function()
		RemoveBlip(blip)
	end)
end)

RegisterNetEvent('wais:deader:send:coords', function(coords)
	local blip = AddBlipForCoord(coords)
	SetBlipSprite(blip,  Config.Blips["death"]["sprite"])
	SetBlipDisplay(blip, Config.Blips["death"]["display"])
	SetBlipScale(blip,   Config.Blips["death"]["scale"])
	SetBlipColour(blip,  Config.Blips["death"]["colour"])
	SetBlipAsShortRange(blip, false)
	AddTextEntry('MYBLIP', Config.Blips["death"]["string"])
	BeginTextCommandSetBlipName('MYBLIP')
	AddTextComponentSubstringPlayerName(name)
	EndTextCommandSetBlipName(blip)
	SetTimeout(Config.Blips["cleantime"], function()
		RemoveBlip(blip)
	end)
end)

-----------------------------------------------------------------------------------------
-- NUI CALLBACK'S --
-----------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------
-- FUNCTION'S --
-----------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------
-- COMMAND'S --
-----------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------
-- THREAD'S --
-----------------------------------------------------------------------------------------

