
ESX    = nil
QBCore = nil

if (Config.Framework == "qbcore") then
	QBCore = exports[Config.QBCoreName]:GetCoreObject()
elseif (Config.Framework == "esx") then
	if Config.IsESXLegacy then
		ESX = exports[Config.ESXLegacyName]:getSharedObject()
	else
		CreateThread(function()
			while (ESX == nil) do
				TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
				Wait(0)
			end
		end)
	end
end

function Notify(msg, type)
	if (Config.Framework == "qbcore") and (QBCore ~= nil) then
		local notif = (((type == 2) and "error") or "success")
		QBCore.Functions.Notify(msg, notif, 5000)
	elseif (Config.Framework == "esx") and (ESX ~= nil) then
		local notif = (((type == 2) and "~r~") or "~g~")
		ESX.ShowNotification(notif..""..msg)
	end
end

RegisterNetEvent('dz-fishing:client:Notify', function(msg, type)
	Notify(msg, type)
end)

RegisterNetEvent('dz-fishing:client:FishingAttempt', function()
	FishingAttempt()
end)

RegisterNetEvent('dz-fishing:client:PlaceTreasureBox', function()
	PlaceTreasureBox(-1) -- Treasure Box health, set it to -1 for invincible (cannot be destroyed, for dev who want to use a key or lockpick)
	
	exports[Config.TargetScriptName]:addLocalEntity(TreasureBox.ClosedBox, {
		{
			icon = 'fas fa-unlock',
			label = 'Unlock Treasure Box',
			onSelect = function()
				OpenClosestTreasureBox()
			end,
			distance = 2.5
		}
	})
end)

RegisterNetEvent('dz-fishing:client:UseTreasureKey', function()
	OpenClosestTreasureBox()
end)

function RemoveBait()
	TriggerServerEvent('dz-fishing:server:RemoveBait')
end

function RemoveTreasureBox()
	TriggerServerEvent('dz-fishing:server:RemoveTreasureBox')
end

function RemoveTreasureKey()
	TriggerServerEvent('dz-fishing:server:RemoveTreasureKey')
end

function TreasureBoxReward()
	TriggerServerEvent('dz-fishing:server:TreasureBoxReward')
end

function ReceiveFish(currentFishingZone)
	TriggerServerEvent('dz-fishing:server:ReceiveFish', currentFishingZone)
end

local TempPeds = {}

CreateThread(function()
	Wait(2000)
	
	-- Creating Peds & Blips & Targets
	
	for k,v in pairs(Config.Peds) do
		RequestAndWaitModel(v.Model)
		local SpawnedPed = CreatePed(0, v.Model, v.Coords.x, v.Coords.y, v.Coords.z - 1.0, v.Coords.w, false, true)
		FreezeEntityPosition(SpawnedPed, true)
		SetEntityInvincible(SpawnedPed, true)
		SetBlockingOfNonTemporaryEvents(SpawnedPed, true)
		TempPeds[#TempPeds+1] = SpawnedPed
		
		if v.Scenario then
			TaskStartScenarioInPlace(SpawnedPed, v.Scenario, 0, true)
		end
		
		if v.Blip.Enabled then
			local Blip = AddBlipForCoord(v.Coords.x, v.Coords.y, v.Coords.z)
			SetBlipSprite(Blip, v.Blip.Sprite)
			SetBlipDisplay(Blip, 4)
			SetBlipScale(Blip, v.Blip.Scale)
			SetBlipColour(Blip, v.Blip.Color)
			SetBlipAsShortRange(Blip, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString(v.Blip.Label)
			EndTextCommandSetBlipName(Blip)
		end
		
		if (Config.TargetType == 'qb') then
			exports[Config.TargetScriptName]:AddEntityZone("dz-fishing-peds-"..SpawnedPed, SpawnedPed, {
				name = "dz-fishing-peds-"..SpawnedPed,
				heading = GetEntityHeading(SpawnedPed),
				debugPoly = false,
			}, {
				options = {
					{
						type = "client",
						event = v.Event,
						icon = "fas fa-fish",
						label = v.Blip.Label,
					},
				},
				distance = 2.5
			})
		elseif (Config.TargetType == 'ox') then
			exports[Config.TargetScriptName]:addLocalEntity(SpawnedPed, {
				{
					icon = 'fas fa-fish',
					label = v.Blip.Label,
					onSelect = function()
						TriggerEvent(v.Event)
					end,
					distance = 2.5
				}
			})
		end
	end
	
	-- Creating Custom Fishing Zones Blips
	
	if Config.EnableCustomFishingZones then
		for k,v in pairs(Config.CustomFishingZones) do
			if v.BlipForZone.NormalBlip.Active then
				local Blip = AddBlipForCoord(v.Coords)
				SetBlipSprite(Blip, v.BlipForZone.NormalBlip.Sprite)
				SetBlipDisplay(Blip, 4)
				SetBlipScale(Blip, v.BlipForZone.NormalBlip.Scale)
				SetBlipColour(Blip, v.BlipForZone.NormalBlip.Color)
				SetBlipAsShortRange(Blip, true)
				BeginTextCommandSetBlipName("STRING")
				AddTextComponentString(v.BlipForZone.NormalBlip.Text)
				EndTextCommandSetBlipName(Blip)
			end
			
			if v.BlipForZone.RadiusBlip.Active then
				local Blip = AddBlipForRadius(v.Coords, v.Radius)
				SetBlipColour(Blip, v.BlipForZone.RadiusBlip.Color)
				SetBlipAlpha(Blip, v.BlipForZone.RadiusBlip.Alpha)
				SetBlipHighDetail(Blip, true)
			end
		end
	end
end)

-- Peds Interaction Events

RegisterNetEvent('dz-fishing:client:BuyGears', function()
	if (Config.UseOXInventoryShop) then
		exports.ox_inventory:openInventory('shop', { type = 'FishingGearsSeller' })
	else
		if (Config.Framework == "qbcore") and (QBCore ~= nil) then
			local ShopItems = {
				items = Config.ShopItems,
				slots = #Config.ShopItems,
				label = Config.Translation['fishing_gears_shop'],
			}
			TriggerServerEvent("inventory:server:OpenInventory", "shop", "Itemshop_FishingGear", ShopItems)
		elseif (Config.Framework == "esx") and (ESX ~= nil) then
			ESX.UI.Menu.CloseAll()
			
			local elements = {}
			for k,v in pairs(Config.ShopItems) do
				if v.amount > 1 then
					elements[#elements+1] = { label = Config.Translation['buy']..' '..v.label..' - $'..v.price..'', name = k, value = 1, min = 1, max = v.amount, type = 'slider' }
				else
					elements[#elements+1] = { label = Config.Translation['buy']..' '..v.label..' - $'..v.price..'', name = k, value = 1 }
				end
			end
			
			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'fishing_gears_shop', {
				css      = 'fishing_shop',
				title    = Config.Translation['fishing_gears_shop'],
				align    = 'top-left',
				elements = elements
			}, function(data, menu)
				local Product = data.current.name
				local Amount = data.current.value
				TriggerServerEvent('dz-fishing:server:BuyGears', Product, Amount)
			end, function(data, menu)
				menu.close()
			end)
		end
	end
end)

RegisterNetEvent('dz-fishing:client:SellFishes', function()
	TriggerServerEvent('dz-fishing:server:SellFishes', false)
end)

RegisterNetEvent('dz-fishing:client:SellIllegalFishes', function()
	TriggerServerEvent('dz-fishing:server:SellFishes', true)
end)

CreateThread(function()
	Wait(1000)
	if (Config.Framework == "esx") and (ESX ~= nil) then
		while true do
			local Ped = PlayerPedId()
			local Coords = GetEntityCoords(Ped)
			
			for k,v in pairs(Config.Peds) do
				if (#(vector3(v.Coords) - Coords) < 2.0) then
					SetTextComponentFormat('STRING')
					AddTextComponentString(Config.Translation['press_to_access']..' '..v.Blip.Label)
					DisplayHelpTextFromStringLabel(0, 0, 1, -1)
					if IsControlPressed(0, 38) then
						TriggerEvent(v.Event)
						Wait(2000)
					end
				end
			end
			Wait(0)
		end
	end
end)

AddEventHandler('onResourceStop', function(resourceName)
	if (GetCurrentResourceName() == resourceName) then
		for k,v in pairs(TempPeds) do
			DeleteEntity(v)
		end
	end
end)