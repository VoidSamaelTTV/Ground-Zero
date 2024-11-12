
ESX    = nil
QBCore = nil

if (Config.Framework == "qbcore") then
	QBCore = exports[Config.QBCoreName]:GetCoreObject()
	
	QBCore.Functions.CreateUseableItem(Config.FishingRodItem, function(source, item)
		local src = source
		local Player = QBCore.Functions.GetPlayer(src)
		
		if (Config.RequireJob) and (Player.PlayerData.job.name ~= Config.FishingJobName) then
			TriggerClientEvent('dz-fishing:client:Notify', src, Config.Translation['need_job'], 2)
			return
		end
		
		if (Config.RequireBait) and (not Player.Functions.GetItemByName(Config.FishingBaitItem)) then
			TriggerClientEvent('dz-fishing:client:Notify', src, Config.Translation['need_fish_bait'], 2)
			return
		end
		
		TriggerClientEvent('dz-fishing:client:FishingAttempt', src)
	end)

	QBCore.Functions.CreateUseableItem("treasure_box", function(source)
		local src = source
		TriggerClientEvent('dz-fishing:client:PlaceTreasureBox', src)
	end)

	QBCore.Functions.CreateUseableItem("treasure_key", function(source)
		local src = source
		TriggerClientEvent('dz-fishing:client:UseTreasureKey', src)
	end)
elseif (Config.Framework == "esx") then
	if Config.IsESXLegacy then
		ESX = exports[Config.ESXLegacyName]:getSharedObject()
	else
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	end

	ESX.RegisterUsableItem(Config.FishingRodItem, function(source)
		local src = source
		local Player = ESX.GetPlayerFromId(src)
		
		if (Config.RequireJob) and (Player.job.name ~= Config.FishingJobName) then
			TriggerClientEvent('dz-fishing:client:Notify', src, Config.Translation['need_job'], 2)
			return
		end
		
		if (Config.RequireBait) and ((not Player.getInventoryItem(Config.FishingBaitItem)) or (Player.getInventoryItem(Config.FishingBaitItem)[Config.ItemsAmountType] <= 0)) then
			TriggerClientEvent('dz-fishing:client:Notify', src, Config.Translation['need_fish_bait'], 2)
			return
		end
		
		TriggerClientEvent('dz-fishing:client:FishingAttempt', src)
	end)

	ESX.RegisterUsableItem("treasure_box", function(source)
		local src = source
		TriggerClientEvent('dz-fishing:client:PlaceTreasureBox', src)
	end)

	ESX.RegisterUsableItem("treasure_key", function(source)
		local src = source
		TriggerClientEvent('dz-fishing:client:UseTreasureKey', src)
	end)
end

RegisterNetEvent('dz-fishing:server:RemoveBait', function()
	local src = source
	
	if Config.RequireBait then
		if (Config.Framework == "qbcore") and (QBCore ~= nil) then
			local Player = QBCore.Functions.GetPlayer(src)
			Player.Functions.RemoveItem(Config.FishingBaitItem, 1)
			TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.FishingBaitItem], "remove", 1)
		elseif (Config.Framework == "esx") and (ESX ~= nil) then
			local Player = ESX.GetPlayerFromId(src)
			Player.removeInventoryItem(Config.FishingBaitItem, 1)
		end
	end
end)

RegisterNetEvent('dz-fishing:server:RemoveTreasureBox', function()
	local src = source
	
	if (Config.Framework == "qbcore") and (QBCore ~= nil) then
		local Player = QBCore.Functions.GetPlayer(src)
		Player.Functions.RemoveItem('treasure_box', 1)
		TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['treasure_box'], "remove", 1)
	elseif (Config.Framework == "esx") and (ESX ~= nil) then
		local Player = ESX.GetPlayerFromId(src)
		Player.removeInventoryItem('treasure_box', 1)
	end
end)

RegisterNetEvent('dz-fishing:server:RemoveTreasureKey', function()
	local src = source
	
	if (Config.Framework == "qbcore") and (QBCore ~= nil) then
		local Player = QBCore.Functions.GetPlayer(src)
		Player.Functions.RemoveItem('treasure_key', 1)
		TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['treasure_key'], "remove", 1)
	elseif (Config.Framework == "esx") and (ESX ~= nil) then
		local Player = ESX.GetPlayerFromId(src)
		Player.removeInventoryItem('treasure_key', 1)
	end
end)

RegisterNetEvent('dz-fishing:server:BuyGears', function(id, amount)
	local src = source
	local ItemId = tonumber(id)
	local ItemAmount = tonumber(amount)
	local Player = ESX.GetPlayerFromId(src)
	
	if Config.ShopItems[ItemId] then
		local ItemData = Config.ShopItems[ItemId]
		local TotalCost = ItemData.price * ItemAmount
		
		if (Player.getMoney() >= TotalCost) then
			Player.removeMoney(TotalCost)
			Player.addInventoryItem(ItemData.name, ItemAmount)
			TriggerClientEvent('dz-fishing:client:Notify', src, Config.Translation['item_bought_success'], 1)
		else
			TriggerClientEvent('dz-fishing:client:Notify', src, Config.Translation['dont_have_enough_money'], 2)
		end
	end
end)

RegisterNetEvent('dz-fishing:server:ReceiveFish', function(zone)
    local src = source
	
	local FishingReward = CalculateAndPickRandomFishingReward(zone)
	
	if (Config.Framework == "qbcore") and (QBCore ~= nil) then
		local itemInfo = QBCore.Shared.Items[FishingReward]
		if itemInfo then
			local Player = QBCore.Functions.GetPlayer(src)
			Player.Functions.AddItem(FishingReward, 1)
			TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add", 1)
			TriggerClientEvent('dz-fishing:client:Notify', src, Config.Translation['you_caught_fish']..itemInfo.label, 1)
		else
			TriggerClientEvent('dz-fishing:client:Notify', src, Config.Translation['item_not_found'], 2)
		end
	elseif (Config.Framework == "esx") and (ESX ~= nil) then
		local Player = ESX.GetPlayerFromId(src)
		Player.addInventoryItem(FishingReward, 1)
	end
end)

RegisterNetEvent('dz-fishing:server:TreasureBoxReward', function()
    local src = source
	local TreasureRewards = Config.FishingRewardsAndSellPrices["treasure_box"].RandomRewards
	local RandomItem = TreasureRewards[math.random(1, #TreasureRewards)]
	
	if (Config.Framework == "qbcore") and (QBCore ~= nil) then
		local Player = QBCore.Functions.GetPlayer(src)
		Player.Functions.AddItem(RandomItem.item, RandomItem.amount)
		TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[RandomItem.item], RandomItem.amount)
	elseif (Config.Framework == "esx") and (ESX ~= nil) then
		local Player = ESX.GetPlayerFromId(src)
		Player.addInventoryItem(RandomItem.item, RandomItem.amount)
	end
end)

RegisterNetEvent('dz-fishing:server:SellFishes', function(illegal)
    local src = source
	local Illegal = illegal
	
	if (Config.Framework == "qbcore") and (QBCore ~= nil) then
		local Player = QBCore.Functions.GetPlayer(src)
		if Player then
			local TotalSellPrice = 0
			for k, v in pairs(Player.PlayerData.items) do
				if Config.FishingRewardsAndSellPrices[v.name] and Config.FishingRewardsAndSellPrices[v.name].SellPrice then
					if ((not Illegal) and (not Config.FishingRewardsAndSellPrices[v.name].Illegal)) or ((Illegal) and (Config.FishingRewardsAndSellPrices[v.name].Illegal)) then 
						if (Player.Functions.RemoveItem(v.name, v[Config.ItemsAmountType], k)) then
							TotalSellPrice = TotalSellPrice + (Config.FishingRewardsAndSellPrices[v.name].SellPrice * v[Config.ItemsAmountType])
							TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[v.name], "remove", v[Config.ItemsAmountType])
						end
					end
				end
			end
			
			if (TotalSellPrice > 0) then
				if (Illegal) then
					Player.Functions.AddItem('markedbills', 1, false, { worth = TotalSellPrice })
					TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['markedbills'], 1)
				else
					Player.Functions.AddMoney("cash", TotalSellPrice)
				end
				TriggerClientEvent('dz-fishing:client:Notify', src, Config.Translation['fishes_sold_for_amount']..TotalSellPrice, 1)
			else
				TriggerClientEvent('dz-fishing:client:Notify', src, Config.Translation['dont_have_enough_fishes'], 2)
			end
		end
	elseif (Config.Framework == "esx") and (ESX ~= nil) then
		local Player = ESX.GetPlayerFromId(src)
		if Player then
			local TotalSellPrice = 0
			for k,v in pairs(Config.FishingRewardsAndSellPrices) do
				if ((not Illegal) and (not v.Illegal)) or ((Illegal) and (v.Illegal)) then 
					local ItemData = Player.getInventoryItem(k)
					if (ItemData ~= nil) then
						if (ItemData[Config.ItemsAmountType] > 0) and (v.SellPrice) then
							Player.removeInventoryItem(k, ItemData[Config.ItemsAmountType])
							TotalSellPrice = TotalSellPrice + (v.SellPrice * ItemData[Config.ItemsAmountType])
						end
					end
				end
			end
			
			if TotalSellPrice > 0 then
				if (Illegal) then
					Player.addInventoryItem('dirty', TotalSellPrice)
				else
					Player.addMoney(TotalSellPrice)
				end
				TriggerClientEvent('dz-fishing:client:Notify', src, Config.Translation['fishes_sold_for_amount']..TotalSellPrice, 1)
			else
				TriggerClientEvent('dz-fishing:client:Notify', src, Config.Translation['dont_have_enough_fishes'], 2)
			end
		end
	end
end)

CreateThread(function()
	if Config.UseOXInventoryShop then
		local Items = {}
		for k,v in pairs(Config.ShopItems) do
			Items[#Items+1] = { name = v.name, price = v.price }
		end
		exports.ox_inventory:RegisterShop('FishingGearsSeller', {
			name = Config.Translation['fishing_gears_shop'],
			inventory = Items
		})
	end
end)