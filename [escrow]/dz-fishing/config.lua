Config = {}

-- QBCore Framework
Config.Framework = "qbcore" -- Set you framework "qbcore" or "esx"
Config.QBCoreName = "qb-core" -- You QBCore script name must be correct to work (only if you use QBCore Framework)

-- ESX Framework
Config.IsESXLegacy = false -- Set it true is you're using esx legacy (only if you use ESX Framework)
Config.ESXLegacyName = "es_extended" -- You ESX Legacy script name must be correct to work (only if you use ESX Legacy Framework)

-- Item Amount Type
Config.ItemsAmountType = 'amount' -- For custom inventory items amount/count - Usage: "amount" for QBCore qb/qs-inventory - "count" for ESX Framework & ox_inventory

------------------------------------------------------------------------------------------------------------------
----------------------------------------------- Fishing General --------------------------------------------------

Config.FishHookTimeBetween = {4000, 8000} -- Estimated waiting time for the fish to be hooked after the rod is thrown, betweed 8000 (8 seconds) and 15000 (15 second)
Config.FishingDifficulty = 3 -- Fishing Difficulty Level from 1 to 5 / 1 = hard / 5 = easy
Config.HookedFishMovement = 3 -- Hooked Fish Movement Speed from 1 to 5 / 1 = slow / 5 = fast

Config.FishingLineChangesColor = true -- Set this to "false" if you don't want the fishing line to change colors

------------------------------------------------------------------------------------------------------------------
--------------------------------------------- Require Fishing Job ------------------------------------------------

Config.RequireJob = false -- set to "true" if you want the player have a fishing job to be able to use the rod and fish
Config.FishingJobName = 'fisher' -- set your fishing job name if you want to use Required Job option

------------------------------------------------------------------------------------------------------------------
------------------------------------------------ Fishing Items ---------------------------------------------------

Config.FishingRodItem = "fishing_rod" -- Fishing Rod item name

Config.RequireBait = true -- "true" if player must have bait item in his inventory
Config.FishingBaitItem = "fishing_bait" -- Fishing Bait item name

------------------------------------------------------------------------------------------------------------------
------------------------------------------------ Target & Peds ---------------------------------------------------

Config.TargetType = "qb" -- Your target script type either "qb" or "ox"
Config.TargetScriptName = "qb-target" -- Your target script name must be correct to work

Config.Peds = {
	-- {
	-- 	Model = "a_m_m_trampbeac_01", -- Peds List: https://docs.fivem.net/docs/game-references/ped-models/
	-- 	Coords = vector4(-1803.68, -1197.97, 13.02, 49.88),
	-- 	Scenario = nil,
	-- 	Blip = { -- Blips List: https://docs.fivem.net/docs/game-references/blips/
	-- 		Enabled = true,
	-- 		Label = "Fishing Gears",
	-- 		Sprite = 52,
	-- 		Color = 3,
	-- 		Scale = 0.8,
	-- 	},
	-- 	Event = "dz-fishing:client:BuyGears",
	-- },
	-- {
	-- 	Model = "a_m_o_beach_01", -- Peds List: https://docs.fivem.net/docs/game-references/ped-models/
	-- 	Coords = vector4(-1847.01, -1190.77, 14.32, 147.49),
	-- 	Scenario = nil,
	-- 	Blip = { -- Blips List: https://docs.fivem.net/docs/game-references/blips/
	-- 		Enabled = true,
	-- 		Label = "Fish Buyer",
	-- 		Sprite = 266,
	-- 		Color = 3,
	-- 		Scale = 0.8,
	-- 	},
	-- 	Event = "dz-fishing:client:SellFishes",
	-- },
	-- {
	-- 	Model = "a_m_o_beach_01", -- Peds List: https://docs.fivem.net/docs/game-references/ped-models/
	-- 	Coords = vector4(2646.7, 5414.99, 59.03, 205.05),
	-- 	Scenario = nil,
	-- 	Blip = { -- Blips List: https://docs.fivem.net/docs/game-references/blips/
	-- 		Enabled = true,
	-- 		Label = "Illegal Fish Buyer",
	-- 		Sprite = 429,
	-- 		Color = 3,
	-- 		Scale = 0.8,
	-- 	},
	-- 	Event = "dz-fishing:client:SellIllegalFishes",
	-- },
}

------------------------------------------------------------------------------------------------------------------
----------------------------------------------- Gear Shop Items --------------------------------------------------

-- Setup your fishing gear shop by adding items
-- this section uses qb-inventory script to setup the shop

Config.ShopItems = {
	-- {
	-- 	label = "Fishing Rod",
	-- 	name = "fishing_rod",
	-- 	price = 500,
	-- 	amount = 100,
	-- 	info = {},
	-- 	type = "item",
	-- 	slot = 1,
	-- },
	-- {
	-- 	label = "Fishing Bait",
	-- 	name = "fishing_bait",
	-- 	price = 10,
	-- 	amount = 100,
	-- 	info = {},
	-- 	type = "item",
	-- 	slot = 2,
	-- },
}

Config.UseOXInventoryShop = false -- Set this to "true" if you want to use OX Inventory Shop

------------------------------------------------------------------------------------------------------------------
------------------------------------------- Use Custom Fishing Zones ---------------------------------------------

-- You can Enable custom lakes beach or sea where you can find a specific type of fishes or a Treasure Box
-- If You Enable Custom Fishing zones, you need to setup the type of rewards and the catching chance

Config.EnableCustomFishingZones = false

Config.CustomFishingZones = { -- Zones coords and radius and the zone rewards
	{ -- Small Lake
		Coords = vector3(2542.91, 6148.45, 161.11),
		Radius = 100.0,
		Rewards = { -- Rewards total chances better be 100 for pourcentage calculation
			["sea_boot"] = {
				Chance = 24,  -- 24% chance
			},
			
			["sea_tin"] = {
				Chance = 24,  -- 24% chance
			},
			
			["fish_small"] = {
				Chance = 24,  -- 24% chance
			},
			
			["fish_mackerel"] = {
				Chance = 24,  -- 24% chance
			},
			
			["treasure_box"] =	{ -- Don't change the name, otherwise the treasure bow wont work / You can only remove it
				Chance = 4,   -- 4% chance
			},
		},
		BlipForZone = {
			NormalBlip = {
				Active = false, -- Show custom area blip in the minimap
				Sprite = 68,
				Scale = 0.8,
				Color = 3,
				Text = 'Small Fishes Area'
			},
			RadiusBlip = {
				Active = false,	-- Show custom area blip radius in the minimap
				Color = 3,
				Alpha = 150,
			}
		}
	},
	-- [2] = { -- Big Lake/Pool Exemple
		-- Coords = vector3(0.0, 0.0, 0.0),
		-- Radius = 50.0,
		-- Rewards = {},
		-- BlipForZone = {},
	-- },
}

Config.RewardsOutOfCustomFishingZones = { -- Rewards when you use 'Custom Fishing Zones' and you fish out of Custom Fishing Zones
	["sea_boot"] = {
		Chance = 25,	-- 25% chance
	},
	
	["sea_tin"] = {
		Chance = 25,	-- 25% chance
	},
	
	["fish_small"] = {
		Chance = 50,	-- 50% chance
	},
} -- Rewards total chances better be 100 for pourcentage calculation


-- Note: The Fishing Rewards must be included in the 'Fishing Rewards And Sell Prices' down bellow, including their sell prices and illegal status

------------------------------------------------------------------------------------------------------------------
--------------------------------------- Fishing Rewards And Sell Prices ------------------------------------------

Config.FishingRewardsAndSellPrices = { -- Rewards total chances better be 100 for pourcentage calculation
    ["sea_tin"] = {
		Chance = 15,		-- 15% chance
		SellPrice = 100,	-- Change the sell price "100" or remove the entire line if you don't want this item to be sold
		Illegal = false,	-- Is this reward is illegal (illegal reward can only be sold to illegal fish buyer)
	},
	
    ["sea_boot"] = {
		Chance = 15,		-- 15% chance
		SellPrice = 100,	-- Change the sell price "100" or remove the entire line if you don't want this item to be sold
		Illegal = false,	-- Is this reward is illegal (illegal reward can only be sold to illegal fish buyer)
	},
	
	["fish_small"] = {
		Chance = 10,		-- 10% chance
		SellPrice = 100,	-- Change the sell price "100" or remove the entire line if you don't want this item to be sold
		Illegal = false,	-- Is this reward is illegal (illegal reward can only be sold to illegal fish buyer)
	},
	
    ["fish_bass"] = {
		Chance = 10,		-- 10% chance
		SellPrice = 100,	-- Change the sell price "100" or remove the entire line if you don't want this item to be sold
		Illegal = false,	-- Is this reward is illegal (illegal reward can only be sold to illegal fish buyer)
	},
	
    ["fish_bluefish"] = {
		Chance = 10,		-- 10% chance
		SellPrice = 100,	-- Change the sell price "100" or remove the entire line if you don't want this item to be sold
		Illegal = false,	-- Is this reward is illegal (illegal reward can only be sold to illegal fish buyer)
	},
	
    ["fish_cod"] = {
		Chance = 10,		-- 10% chance
		SellPrice = 100,	-- Change the sell price "100" or remove the entire line if you don't want this item to be sold
		Illegal = false,	-- Is this reward is illegal (illegal reward can only be sold to illegal fish buyer)
	},
	
    ["fish_flounder"] = {
		Chance = 10,		-- 10% chance
		SellPrice = 100,	-- Change the sell price "100" or remove the entire line if you don't want this item to be sold
		Illegal = false,	-- Is this reward is illegal (illegal reward can only be sold to illegal fish buyer)
	},
	
    ["fish_mackerel"] = {
		Chance = 10,		-- 10% chance
		SellPrice = 100,	-- Change the sell price "100" or remove the entire line if you don't want this item to be sold
		Illegal = false,	-- Is this reward is illegal (illegal reward can only be sold to illegal fish buyer)
	},
	
    ["fish_dolphin"] = {
		Chance = 3,			-- 3% chance
		SellPrice = 100,	-- Change the sell price "100" or remove the entire line if you don't want this item to be sold
		Illegal = true,		-- Is this reward is illegal (illegal reward can only be sold to illegal fish buyer)
	},
	
    ["fish_shark"] = {
		Chance = 3,			-- 3% chance
		SellPrice = 100,	-- Change the sell price "100" or remove the entire line if you don't want this item to be sold
		Illegal = true,		-- Is this reward is illegal (illegal reward can only be sold to illegal fish buyer)
	},
	
    ["fish_whale"] = {
		Chance = 3,			-- 3% chance
		SellPrice = 100,	-- Change the sell price "100" or remove the entire line if you don't want this item to be sold
		Illegal = true,		-- Is this reward is illegal (illegal reward can only be sold to illegal fish buyer)
	},
	
    ["treasure_box"] =	{	-- Don't change the name, otherwise the treasure bow wont work / You can only remove it
		Chance = 1,			-- 1% chance
		RandomRewards = { 	-- Player will get a random reward between those
			{ item = 'gold_coin', amount = 100 },
			{ item = 'golden_pocket_watch', amount = 1 },
			{ item = 'weapon_vintagepistol', amount = 1 },
		},
	},
}

------------------------------------------------------------------------------------------------------------------
------------------------------------------------- Translation ----------------------------------------------------

Config.Translation = {
	['fishing_canceled']			= 'Fishing canceled',
	['cant_fish_while_swimming'] 	= 'You can\'t fish while swimming',
	['cant_fish_while_inveh'] 		= 'You can\'t fish while in vehicle',
	['cant_fish_while_falling'] 	= 'You can\'t fish while in falling',
	['cant_fish_blocking'] 			= 'You can\'t fish here, something is blocking',
	['need_job'] 					= 'You need fishing job',
	['attempt_to_fish'] 			= 'Attempting to fish, Please Wait...',
	['need_fish_bait'] 				= 'You need a fish bait',
	['need_close_to_water'] 		= 'You need to be close and aim towards the water to fish.',
	['you_failed'] 					= 'You failed',
	['dont_have_enough_money'] 		= 'You don\'t have enough money',
	['item_bought_success'] 		= 'Item bought successfully',
	['item_not_found'] 				= 'Item not found',
	['you_caught_fish'] 			= 'You caught a ',
	['fishes_sold_for_amount'] 		= 'Fishes sold for $',
	['dont_have_enough_fishes'] 	= 'You don\'t have enough fishes',
	['already_placed_treasure'] 	= 'You already placed a Treasure Box',
	['lock_health'] 				= 'Lock Health',
	['treasure_box'] 				= 'Treasure Box',
	['search_treasure_box'] 		= 'Search Treasure Box',
	['no_treasure_nearby'] 			= 'No Treasure Box nearby',
	['looting'] 					= 'Looting',
	
	['buy'] 				 		= 'Buy',
	['fishing_gears_shop']  		= 'Fishing Gears Shop',
	
	['press_to_access']	 			= 'Press ~INPUT_CONTEXT~ to access',
	
	['invalid_fish_rod_model']	 	= '[Dev] Invalid fishing rod model',
}

------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------

Config.DevDebug = false -- Just prints few lines for test purposes