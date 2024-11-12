Config = {}
Config.Framework = "QB" -- "ESX" or "QB"
Config.DiscordLogs = true -- Set webhook in server.lua Line 1
Config.SpaceInLicensePlate = false -- Set to true if you want a space in license plate for vehicle reward
Config.LicensePlateLetters = 4 -- Amount of letters in plate for vehicle reward
Config.LicensePlateNumbers = 4 -- Amount of numbers in plate for vehicle reward
Config.Packages = {
	-- {
	-- 	PackageName = "Full Access", -- Exact package name from tebex
	-- 	Items = {
	-- 		{
	-- 			name = "bank", -- Item or account name depending on type specified below
	-- 			amount = 50000, -- Amount of item or money
	-- 			type = "account" -- Four types: account, item, or weapon and car and gang or job
	-- 		},
	-- 		{
	-- 			model = "ford70f100", -- Item or account name depending on type specified below
	-- 			type = "car" -- Four types: account, item, or weapon and car and gang or job
	-- 		},
	-- 	},
	-- },
	-- {
	-- 	PackageName = "Bull Shark Card", -- Exact package name from tebex
	-- 	Items = {
	-- 		{
	-- 			name = "bank", -- Item or account name depending on type specified below
	-- 			amount = 125000, -- Amount of item or money
	-- 			type = "account" -- Four types: account, item, or weapon and car and gang or job
	-- 		},
	-- 	},
	-- },
	-- {
	-- 	PackageName = "Great White Shark Card", -- Exact package name from tebex
	-- 	Items = {
	-- 		{
	-- 			name = "bank", -- Item or account name depending on type specified below
	-- 			amount = 300000, -- Amount of item or money
	-- 			type = "account" -- Four types: account, item, or weapon and car and gang or job
	-- 		},
	-- 	},
	-- },
	-- {
	-- 	PackageName = "Megalodon Shark Card", -- Exact package name from tebex
	-- 	Items = {
	-- 		{
	-- 			name = "bank", -- Item or account name depending on type specified below
	-- 			amount = 700000, -- Amount of item or money
	-- 			type = "account" -- Four types: account, item, or weapon and car and gang or job
	-- 		},
	-- 	},
	-- },
	{
		PackageName = "VIP Gold", -- Exact package name from tebex
		Items = {
	 		{
	 			name = "bank", -- Item or account name depending on type specified below
	 			amount = 10000, -- Amount of item or money
	 			type = "account" -- Four types: account, item, or weapon and car and gang or job
	 		},
		},
	},
	{
		PackageName = "VIP Platinum", -- Exact package name from tebex
		Items = {
	 		{
	 			name = "bank", -- Item or account name depending on type specified below
	 			amount = 20000, -- Amount of item or money
	 			type = "account" -- Four types: account, item, or weapon and car and gang or job
	 		},
		},
	},
	{
		PackageName = "VIP Diamond", -- Exact package name from tebex
		Items = {
	 		{
	 			name = "bank", -- Item or account name depending on type specified below
	 			amount = 30000, -- Amount of item or money
	 			type = "account" -- Four types: account, item, or weapon and car and gang or job
	 		},
		},
	},
	{
		PackageName = "Labor Enhancer", -- Exact package name from tebex
		Items = {
			{
				name = "labor_enhancer", -- Item or account name depending on type specified below
				amount = 1, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
		},
	},
	{
		PackageName = "Weapon Enhancer", -- Exact package name from tebex
		Items = {
			{
				name = "weaponry_enhancer", -- Item or account name depending on type specified below
				amount = 1, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
		},
	},
	{
		PackageName = "Foundry Enhancer", -- Exact package name from tebex
		Items = {
			{
				name = "foundry_enhancer", -- Item or account name depending on type specified below
				amount = 1, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
		},
	},
	{
		PackageName = "Chemist Enhancer", -- Exact package name from tebex
		Items = {
			{
				name = "chemist_enhancer", -- Item or account name depending on type specified below
				amount = 1, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
		},
	},
	{
		PackageName = "Foundry Specialist", -- Exact package name from tebex
		Items = {
			{
				name = "portable_builders", -- Item or account name depending on type specified below
				amount = 1, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "boxed_nails", -- Item or account name depending on type specified below
				amount = 1, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "wood_log", -- Item or account name depending on type specified below
				amount = 50, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "p_v_43_safe_s", -- Item or account name depending on type specified below
				amount = 1, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "v_ind_cfcovercrate", -- Item or account name depending on type specified below
				amount = 1, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "prop_generator_01a", -- Item or account name depending on type specified below
				amount = 1, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "prop_worklight_04c", -- Item or account name depending on type specified below
				amount = 1, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "weapon_hammer", -- Item or account name depending on type specified below
				amount = 1, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "weapon_hatchet", -- Item or account name depending on type specified below
				amount = 1, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "handsaw", -- Item or account name depending on type specified below
				amount = 1, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "codelock", -- Item or account name depending on type specified below
				amount = 1, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "codelock", -- Item or account name depending on type specified below
				amount = 1, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "foundry_enhancer_max", -- Item or account name depending on type specified below
				amount = 1, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "stone", -- Item or account name depending on type specified below
				amount = 100, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "metalscrap", -- Item or account name depending on type specified below
				amount = 50, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
		},
	},
	{
		PackageName = "Weapons Specialist", -- Exact package name from tebex
		Items = {
			{
				name = "portable_weaponry_pistols", -- Item or account name depending on type specified below
				amount = 1, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "portable_weaponry_shotguns", -- Item or account name depending on type specified below
				amount = 1, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "portable_weaponry_smg", -- Item or account name depending on type specified below
				amount = 1, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "portable_weaponry_assault", -- Item or account name depending on type specified below
				amount = 1, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "copper", -- Item or account name depending on type specified below
				amount = 2500, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "plastic", -- Item or account name depending on type specified below
				amount = 1000, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "steel", -- Item or account name depending on type specified below
				amount = 750, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "metalscrap", -- Item or account name depending on type specified below
				amount = 500, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "goldbar", -- Item or account name depending on type specified below
				amount = 10, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "pistol_ammo", -- Item or account name depending on type specified below
				amount = 100, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "smg_ammo", -- Item or account name depending on type specified below
				amount = 50, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "shotgun_ammo", -- Item or account name depending on type specified below
				amount = 50, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "rifle_ammo", -- Item or account name depending on type specified below
				amount = 25, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
		},
	},
	{
		PackageName = "Chemist Specialist", -- Exact package name from tebex
		Items = {
			{
				name = "chemist_enhancer_max", -- Item or account name depending on type specified below
				amount = 1, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "baggies", -- Item or account name depending on type specified below
				amount = 1000, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "marijuana_crop_high", -- Item or account name depending on type specified below
				amount = 500, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "marijuana_eighth_high", -- Item or account name depending on type specified below
				amount = 400, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "marijuana_nutrition", -- Item or account name depending on type specified below
				amount = 250, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "marijuana_water", -- Item or account name depending on type specified below
				amount = 250, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "rolling_paper", -- Item or account name depending on type specified below
				amount = 100, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "marijuana_1oz_high", -- Item or account name depending on type specified below
				amount = 50, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "trowel", -- Item or account name depending on type specified below
				amount = 10, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "portable_chemist", -- Item or account name depending on type specified below
				amount = 4, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "lighter", -- Item or account name depending on type specified below
				amount = 4, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
			{
				name = "scale", -- Item or account name depending on type specified below
				amount = 4, -- Amount of item or money
				type = "item" -- Four types: account, item, or weapon and car and gang or job
			},
		},
	},
	-- {
	-- 	PackageName = "Chemist Workstation", -- Exact package name from tebex
	-- 	Items = {
	-- 		{
	-- 			name = "portable_chemist", -- Item or account name depending on type specified below
	-- 			amount = 1, -- Amount of item or money
	-- 			type = "item" -- Four types: account, item, or weapon and car and gang or job
	-- 		},
	-- 	},
	-- },
	-- {
	-- 	PackageName = "Weaponry Workstation", -- Exact package name from tebex
	-- 	Items = {
	-- 		{
	-- 			name = "portable_weaponry", -- Item or account name depending on type specified below
	-- 			amount = 1, -- Amount of item or money
	-- 			type = "item" -- Four types: account, item, or weapon and car and gang or job
	-- 		},
	-- 	},
	-- },
	-- {
	-- 	PackageName = "Tuner Tablet", -- Exact package name from tebex
	-- 	Items = {
	-- 		{
	-- 			name = "tunerlaptop", -- Item or account name depending on type specified below
	-- 			amount = 1, -- Amount of item or money
	-- 			type = "item" -- Four types: account, item, or weapon and car and gang or job
	-- 		},
	-- 	},
	-- },
	-- {
	-- 	PackageName = "Green Weapon Tint", -- Exact package name from tebex
	-- 	Items = {
	-- 		{
	-- 			name = "weapontint_green", -- Item or account name depending on type specified below
	-- 			amount = 1, -- Amount of item or money
	-- 			type = "item" -- Four types: account, item, or weapon and car and gang or job
	-- 		},
	-- 	},
	-- },
	-- {
	-- 	PackageName = "Blue Weapon Tint", -- Exact package name from tebex
	-- 	Items = {
	-- 		{
	-- 			name = "weapontint_lspd", -- Item or account name depending on type specified below
	-- 			amount = 1, -- Amount of item or money
	-- 			type = "item" -- Four types: account, item, or weapon and car and gang or job
	-- 		},
	-- 	},
	-- },
	-- {
	-- 	PackageName = "Orange Weapon Tint", -- Exact package name from tebex
	-- 	Items = {
	-- 		{
	-- 			name = "weapontint_orange", -- Item or account name depending on type specified below
	-- 			amount = 1, -- Amount of item or money
	-- 			type = "item" -- Four types: account, item, or weapon and car and gang or job
	-- 		},
	-- 	},
	-- },
	-- {
	-- 	PackageName = "Pink Weapon Tint", -- Exact package name from tebex
	-- 	Items = {
	-- 		{
	-- 			name = "weapontint_pink", -- Item or account name depending on type specified below
	-- 			amount = 1, -- Amount of item or money
	-- 			type = "item" -- Four types: account, item, or weapon and car and gang or job
	-- 		},
	-- 	},
	-- },
	-- {
	-- 	PackageName = "Army Weapon Tint", -- Exact package name from tebex
	-- 	Items = {
	-- 		{
	-- 			name = "weapontint_army", -- Item or account name depending on type specified below
	-- 			amount = 1, -- Amount of item or money
	-- 			type = "item" -- Four types: account, item, or weapon and car and gang or job
	-- 		},
	-- 	},
	-- },
	-- {
	-- 	PackageName = "Gold Weapon Tint", -- Exact package name from tebex
	-- 	Items = {
	-- 		{
	-- 			name = "weapontint_gold", -- Item or account name depending on type specified below
	-- 			amount = 1, -- Amount of item or money
	-- 			type = "item" -- Four types: account, item, or weapon and car and gang or job
	-- 		},
	-- 	},
	-- },
	-- {
	-- 	PackageName = "Platinum Weapon Tint", -- Exact package name from tebex
	-- 	Items = {
	-- 		{
	-- 			name = "weapontint_plat", -- Item or account name depending on type specified below
	-- 			amount = 1, -- Amount of item or money
	-- 			type = "item" -- Four types: account, item, or weapon and car and gang or job
	-- 		},
	-- 	},
	-- },
	-- {
	-- 	PackageName = "NS9R", -- Exact package name from tebex
	-- 	Items = {
	-- 		{
	-- 			name = "WEAPON_NS9R", -- Item or account name depending on type specified below
	-- 			amount = 1, -- Amount of item or money
	-- 			type = "weapon" -- Four types: account, item, or weapon and car and gang or job
	-- 		},
	-- 		{
	-- 			name = "nsr9crate1", -- Item or account name depending on type specified below
	-- 			amount = 1, -- Amount of item or money
	-- 			type = "item" -- Four types: account, item, or weapon and car and gang or job
	-- 		},
	-- 		{
	-- 			name = "nsr9crate2", -- Item or account name depending on type specified below
	-- 			amount = 1, -- Amount of item or money
	-- 			type = "item" -- Four types: account, item, or weapon and car and gang or job
	-- 		},
	-- 		{
	-- 			name = "nsr9crate3", -- Item or account name depending on type specified below
	-- 			amount = 1, -- Amount of item or money
	-- 			type = "item" -- Four types: account, item, or weapon and car and gang or job
	-- 		},
	-- 		{
	-- 			name = "nsr9crate4", -- Item or account name depending on type specified below
	-- 			amount = 1, -- Amount of item or money
	-- 			type = "item" -- Four types: account, item, or weapon and car and gang or job
	-- 		},
	-- 		{
	-- 			name = "nsr9crate5", -- Item or account name depending on type specified below
	-- 			amount = 1, -- Amount of item or money
	-- 			type = "item" -- Four types: account, item, or weapon and car and gang or job
	-- 		},
	-- 		{
	-- 			name = "nsr9crate6", -- Item or account name depending on type specified below
	-- 			amount = 1, -- Amount of item or money
	-- 			type = "item" -- Four types: account, item, or weapon and car and gang or job
	-- 		},
	-- 		{
	-- 			name = "nsr9crate7", -- Item or account name depending on type specified below
	-- 			amount = 1, -- Amount of item or money
	-- 			type = "item" -- Four types: account, item, or weapon and car and gang or job
	-- 		},
	-- 	},
	-- },
	-- {
	-- 	PackageName = "Nissan R33", -- Exact package name from tebex
	-- 	Items = {
	-- 		{
	-- 			model = "nissanr33tbk", -- Item or account name depending on type specified below
	-- 			type = "car" -- Four types: account, item, or weapon and car and gang or job
	-- 		},
	-- 	},
	-- },
	{
		PackageName = "Dominator - RESERVED", -- Exact package name from tebex
		Items = {
			{
				model = "dominator4", -- Item or account name depending on type specified below
				type = "car" -- Four types: account, item, or weapon and car and gang or job
			},
		},
	},
	-- {
	-- 	PackageName = "Zlayworks - P944", -- Exact package name from tebex
	-- 	Items = {
	-- 		{
	-- 			model = "p944", -- Item or account name depending on type specified below
	-- 			type = "car" -- Four types: account, item, or weapon and car and gang or job
	-- 		},
	-- 	},
	-- },
	-- {
	-- 	PackageName = "Demonhawk", -- Exact package name from tebex
	-- 	Items = {
	-- 		{
	-- 			model = "demonhawk", -- Item or account name depending on type specified below
	-- 			type = "car" -- Four types: account, item, or weapon and car and gang or job
	-- 		},
	-- 	},
	-- },
	-- {
	-- 	PackageName = "Families Package", -- Exact package name from tebex
	-- 	Items = {
	-- 		{
	-- 			name = "families", -- gang name depending on type specified below
	-- 			rank = 3, -- set gang grade for boss menu
	-- 			type = "gang" -- Four types: account, item, or weapon and car and gang or job and gang or job
	-- 		},
	-- 	},
	-- },
	-- {
	-- 	PackageName = "Ballas Package", -- Exact package name from tebex
	-- 	Items = {
	-- 		{
	-- 			name = "ballas", -- gang name depending on type specified below
	-- 			rank = 3, -- set gang grade for boss menu
	-- 			type = "gang" -- Four types: account, item, or weapon and car and gang or job and gang or job
	-- 		},
	-- 	},
	-- },
	-- {
	-- 	PackageName = "Vagos Package", -- Exact package name from tebex
	-- 	Items = {
	-- 		{
	-- 			name = "vagos", -- gang name depending on type specified below
	-- 			rank = 3, -- set gang grade for boss menu
	-- 			type = "gang" -- Four types: account, item, or weapon and car and gang or job and gang or job
	-- 		},
	-- 	},
	-- },
	-- {
	-- 	PackageName = "Aztecas Package", -- Exact package name from tebex
	-- 	Items = {
	-- 		{
	-- 			name = "aztecas", -- gang name depending on type specified below
	-- 			rank = 3, -- set gang grade for boss menu
	-- 			type = "gang" -- Four types: account, item, or weapon and car and gang or job and gang or job
	-- 		},
	-- 	},
	-- },
	-- {
	-- 	PackageName = "Lost Package", -- Exact package name from tebex
	-- 	Items = {
	-- 		{
	-- 			name = "lostmc", -- gang name depending on type specified below
	-- 			rank = 8, -- set gang grade for boss menu
	-- 			type = "gang" -- Four types: account, item, or weapon and car and gang or job and gang or job
	-- 		},
	-- 	},
	-- },
	-- {
	-- 	PackageName = "Vanilla Unicorn", -- Exact package name from tebex
	-- 	Items = {
	-- 		{
	-- 			name = "vanilla", -- job name depending on type specified below
	-- 			rank = 4, -- set job grade for boss menu
	-- 			type = "job" -- Four types: account, item, or weapon and car and gang or job
	-- 		},
	-- 	},
	-- },
	-- {
	-- 	PackageName = "UwU Café", -- Exact package name from tebex
	-- 	Items = {
	-- 		{
	-- 			name = "catcafe", -- job name depending on type specified below
	-- 			rank = 4, -- set job grade for boss menu
	-- 			type = "job" -- Four types: account, item, or weapon and car and gang or job
	-- 		},
	-- 	},
	-- },
}