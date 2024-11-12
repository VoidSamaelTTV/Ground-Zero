Config = {}

Config.Schedule = {
	['01:00:00'] = {
		['drop_1'] = 100    --- drop probability, you can define multiple drop types with different probability
	},
	['02:00:00'] = {
		['drop_2'] = 100    --- drop probability, you can define multiple drop types with different probability
	},
	['03:00:00'] = {
		['drop_3'] = 100    --- drop probability, you can define multiple drop types with different probability
	 },
	['04:00:00'] = {
		['drop_1'] = 100    --- drop probability, you can define multiple drop types with different probability
	},
	['05:00:00'] = {
		['drop_2'] = 100    --- drop probability, you can define multiple drop types with different probability
	},
	['06:00:00'] = {
		['drop_3'] = 100    --- drop probability, you can define multiple drop types with different probability
	},
	['07:00:00'] = {
		['drop_1'] = 100    --- drop probability, you can define multiple drop types with different probability
	},
	['08:00:00'] = {
		['drop_2'] = 100    --- drop probability, you can define multiple drop types with different probability
	},
	['09:00:00'] = {
		['drop_3'] = 100    --- drop probability, you can define multiple drop types with different probability
	},
	['10:00:00'] = {
		['drop_1'] = 100    --- drop probability, you can define multiple drop types with different probability
	},
	['11:00:00'] = {
		['drop_2'] = 100    --- drop probability, you can define multiple drop types with different probability
	},
	['12:00:00'] = {
		['drop_3'] = 100    --- drop probability, you can define multiple drop types with different probability
	},
	['13:00:00'] = {
		['drop_1'] = 100    --- drop probability, you can define multiple drop types with different probability
	},
	['14:00:00'] = {
		['drop_2'] = 100    --- drop probability, you can define multiple drop types with different probability
	},
	['15:00:00'] = {
	 	['drop_3'] = 100    --- drop probability, you can define multiple drop types with different probability
	},
	['16:00:00'] = {
		['drop_1'] = 100    --- drop probability, you can define multiple drop types with different probability
	},
	['17:00:00'] = {
		['drop_2'] = 100    --- drop probability, you can define multiple drop types with different probability
	},
	['18:00:00'] = {
	 	['drop_3'] = 100    --- drop probability, you can define multiple drop types with different probability
	},
	['19:00:00'] = {
		['drop_1'] = 100    --- drop probability, you can define multiple drop types with different probability
	},
	['20:00:00'] = {
		['drop_2'] = 100    --- drop probability, you can define multiple drop types with different probability
	},
	['21:00:00'] = {
	 	['drop_3'] = 100    --- drop probability, you can define multiple drop types with different probability
	},
	['22:00:00'] = {
		['drop_1'] = 100    --- drop probability, you can define multiple drop types with different probability
	},
	['23:00:00'] = {
		['drop_2'] = 100    --- drop probability, you can define multiple drop types with different probability
	},
	['00:00:00'] = {
	 	['drop_3'] = 100    --- drop probability, you can define multiple drop types with different probability
	},
} --- this is the time on your Host PC

Config.DropTypes = {
	['drop_1'] = {
		plane = `cargobob`, -- plane model
		parachute = `prop_v_parachute`, -- parachute model
		message = "Incoming airdrop!", -- message when the airdrop is comming
		messageFinish = "Airdrop event is finished!",
		pilot = `s_m_m_pilot_02`, -- pilot model
		crate = `prop_mil_crate_01`, -- crate model
		crateModelName = 'prop_mil_crate_01', -- for target purpose 
		crateZChange = -0.5, -- change in Z for correct crate posittionning
		parachuteZChange = 5.0, -- change in Z for correct parachute posittionning
		spawnDistance = 1000.0, --- meters 
		minHeight = 50, --- min height the plane can go seems fine like this
		fallSpeed = 5.0, --- m/s, speed of the falling crate
		planeSpeed = 20.0, --- m/s 
		openTimer = 120, --- seconds, how much time to be able to open the crate
		dropTimeLimit = 1800, --- seconds, how much time till the airdrop event finishes
		flareEffectClosed = {
			dict = 'scr_oddjobtraffickingair', -- effect dict
			name = 'scr_crate_drop_flare', -- effect name
			scale = 5.0, -- scale
			r = 10.0, -- red
			g = 0.0, -- green
			b = 0.0, -- blue
			a = 1.0, -- alpha
			time = 120000 -- ms
		},
		flareEffectOpen = {
			dict = 'scr_oddjobtraffickingair', -- effect dict
			name = 'scr_crate_drop_flare', -- effect name
			scale = 5.0, -- scale
			r = 0.0, -- red
			g = 10.0, -- green
			b = 0.0, -- blue
			a = 1.0, -- alpha
			time = 100000 -- ms
		},
		planeBlip = {
			sprite = 481,
			scale = 0.7,
			color = 1,
			alpha = 255,
			label = 'Air Drop Vehicle',
		},
		fallingBlip = {
			sprite = 94,
			scale = 0.7,
			color = 1,
			alpha = 255,
			label = 'Falling Drop',
		},
		onGroundBlip = {
			sprite = 568,
			scale = 0.7,
			color = 1,
			alpha = 255,
			label = 'Drop',
		}
	},
	['drop_2'] = {
		plane = `havok`, -- plane model
		parachute = `p_cargo_chute_s`, -- parachute model
		message = "Incoming airdrop!", -- message when the airdrop is comming
		messageFinish = "Airdrop event is finished!",
		pilot = `s_m_m_pilot_02`, -- pilot model
		crate = `prop_mil_crate_01`, -- crate model
		crateModelName = 'prop_mil_crate_01', -- for target purpose 
		crateZChange = -0.9, -- change in Z for correct crate posittionning
		parachuteZChange = 0.0, -- change in Z for correct parachute posittionning
		spawnDistance = 1500.0, --- meters
		minHeight = 10, --- min height the plane can go seems fine like this
		fallSpeed = 5.0, --- m/s, speed of the falling crate
		planeSpeed = 50.0, --- m/s 
		openTimer = 120, --- seconds, how much time to be able to open the crate
		dropTimeLimit = 1800, --- seconds, how much time till the airdrop event finishes
		flareEffectClosed = {
			dict = 'scr_oddjobtraffickingair', -- effect dict
			name = 'scr_crate_drop_flare', -- effect name
			scale = 2.0, -- scale
			r = 10.0, -- red
			g = 0.0, -- green
			b = 0.0, -- blue
			a = 1.0, -- alpha
			time = 30000 -- ms
		},
		flareEffectOpen = {
			dict = 'scr_oddjobtraffickingair', -- effect dict
			name = 'scr_crate_drop_flare', -- effect name
			scale = 2.0, -- scale
			r = 0.0, -- red
			g = 10.0, -- green
			b = 0.0, -- blue
			a = 1.0, -- alpha
			time = 100000 -- ms
		},
		planeBlip = {
			sprite = 602,
			scale = 0.7,
			color = 2,
			alpha = 255,
			label = 'Supply Vehicle',
		},
		fallingBlip = {
			sprite = 94,
			scale = 0.7,
			color = 2,
			alpha = 255,
			label = 'Falling Supply Box',
		},
		onGroundBlip = {
			sprite = 615,
			scale = 0.7,
			color = 2,
			alpha = 255,
			label = 'Supply Box',
		}
	},
	['drop_3'] = {
		plane = `havok`, -- plane model
		parachute = `p_cargo_chute_s`, -- parachute model
		message = "Incoming airdrop!", -- message when the airdrop is comming
		messageFinish = "Airdrop event is finished!",
		pilot = `s_m_m_pilot_02`, -- pilot model
		crate = `prop_mil_crate_01`, -- crate model
		crateModelName = 'prop_mil_crate_01', -- for target purpose 
		crateZChange = -0.9, -- change in Z for correct crate posittionning
		parachuteZChange = 0.0, -- change in Z for correct parachute posittionning
		spawnDistance = 1500.0, --- meters
		minHeight = 10, --- min height the plane can go seems fine like this
		fallSpeed = 5.0, --- m/s, speed of the falling crate
		planeSpeed = 50.0, --- m/s 
		openTimer = 120, --- seconds, how much time to be able to open the crate
		dropTimeLimit = 1800, --- seconds, how much time till the airdrop event finishes
		flareEffectClosed = {
			dict = 'scr_oddjobtraffickingair', -- effect dict
			name = 'scr_crate_drop_flare', -- effect name
			scale = 2.0, -- scale
			r = 10.0, -- red
			g = 0.0, -- green
			b = 0.0, -- blue
			a = 1.0, -- alpha
			time = 30000 -- ms
		},
		flareEffectOpen = {
			dict = 'scr_oddjobtraffickingair', -- effect dict
			name = 'scr_crate_drop_flare', -- effect name
			scale = 2.0, -- scale
			r = 0.0, -- red
			g = 10.0, -- green
			b = 0.0, -- blue
			a = 1.0, -- alpha
			time = 100000 -- ms
		},
		planeBlip = {
			sprite = 602,
			scale = 0.7,
			color = 2,
			alpha = 255,
			label = 'Supply Vehicle',
		},
		fallingBlip = {
			sprite = 94,
			scale = 0.7,
			color = 2,
			alpha = 255,
			label = 'Falling Supply Box',
		},
		onGroundBlip = {
			sprite = 615,
			scale = 0.7,
			color = 2,
			alpha = 255,
			label = 'Supply Box',
		}
	}  
}

Config.AirDropItems = {
	['red_transmitter'] = 'drop_1',
	['blue_transmitter'] = 'drop_2',
	['green_transmitter'] = 'drop_3',
} --- this items if used will call an airdrop choosen by you on the location the item was used

Config.moneyLabel = "Cash" --- you can edit the accounts on the open source side of the code in the server side of your Framework

----- this works exactly the same as the hrs_loot script -----------------------------------
Config.types = {
    ["drop_1"] = {
        fixedLoots = {
			-- {name = "bandage",count = 1}
	 	},
	 	probabilityLoots = {
		 	loop = 6,
			 --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
		 	items = {
				{names = {'portable_weaponry_pistols', 'portable_weaponry_shotguns', 'portable_weaponry_smg', 'portable_weaponry_assault'},minValue = 1,maxValue = 1,probability = 5},
				{names = {'hinterland_duffle','leather_duffle','chianski_duffle','bandit_pack','black_sports_bag','chinook_lifesaver_bag','ranch_assault_pack','rush_24_bag','lspd_field_bag','moab_rush_tactical_bag','burgen_bag'},minValue = 1,maxValue = 1,probability = 10},
				{names = {'black_plate_carrier','charcoal_plate_carrier','ash_plate_carrier','ice_plate_carrier','navy_plate_carrier','chamois_plate_carrier','sand_plate_carrier','tan_plate_carrier','salmon_plate_carrier','moss_plate_carrier','peach_plate_carrier','brown_digital_plate_carrier','fall_plate_carrier','white_camo_plate_carrier','peach_camo_plate_carrier','red_camo_plate_carrier','green_plate_carrier','orange_plate_carrier','purple_plate_carrier','pink_plate_carrier','black_ultralight_strike_vest','green_ultralight_strike_vest','violet_ultralight_strike_vest','green_camo_ultralight_strike_vest','desert_camo_ultralight_strike_vest','beige_ultralight_strike_vest','dark_green_ultralight_strike_vest','sage_ultralight_strike_vest','forest_camo_ultralight_strike_vest','beige_digital_ultralight_strike_vest','contrast_camo_ultralight_strike_vest','blue_camo_ultralight_strike_vest','black_light_strike_vest','green_light_strike_vest','orange_light_strike_vest','purple_light_strike_vest','pink_light_strike_vest','black_mid_strike_vest','green_mid_strike_vest','orange_mid_strike_vest','purple_mid_strike_vest','pink_mid_strike_vest','desert_quad_helmet','black_dual_helmet','moss_dual_helmet','brown_dual_helmet','white_dual_helmet','leopard_dual_helmet','brown_digital_dual_helmet','tiger_dual_helmet','aqua_camo_dual_helmet','splinter_dual_helmet','brushstroke_dual_helmet','black_red_dual_helmet','zebra_dual_helmet','pink_camo_dual_helmet','desert_dual_helmet'},minValue = 1,maxValue = 1,probability = 10},
				{names = {'pistol_ammo','smg_ammo','shotgun_ammo','snp_ammo','mg_ammo','rpg_ammo'},minValue = 5,maxValue = 10,probability = 15},
			 	{names = {'weapon_pumpshotgun','weapon_sawnoffshotgun','weapon_assaultshotgun','weapon_bullpupshotgun','weapon_musket','weapon_heavyshotgun','weapon_dbshotgun','weapon_autoshotgun','weapon_combatshotgun'},minValue = 1,maxValue = 1,probability = 10},
			 	{names = {'weapon_microsmg','weapon_smg','weapon_assaultsmg','weapon_combatpdw','weapon_machinepistol','weapon_minismg'},minValue = 1,maxValue = 1,probability = 10},
				{names = {'weapon_pistol','weapon_combatpistol','weapon_appistol','weapon_pistol50','weapon_snspistol','weapon_heavypistol','weapon_vintagepistol','weapon_marksmanpistol','weapon_revolver','weapon_doubleaction','weapon_navyrevolver'},minValue = 1,maxValue = 1,probability = 10},
				{names = {'weapon_mg', 'weapon_combatmg'},minValue = 1,maxValue = 1,probability = 5},
				{names = {'weapon_sniperrifle','weapon_heavysniper','weapon_marksmanrifle'},minValue = 1,maxValue = 1,probability = 5},
				{names = {'weapon_assaultrifle','weapon_carbinerifle','weapon_advancedrifle','weapon_specialcarbine','weapon_bullpuprifle','weapon_compactrifle','weapon_militaryrifle',},minValue = 1,maxValue = 1,probability = 10},
		 	}
	 	}
    },
	["drop_2"] = {
        fixedLoots = {
			-- {name = "bandage",count = 1}
	 	},
	 	probabilityLoots = {
		 	loop = 6,
			 --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
		 	items = {
				{names = {'codelock'},minValue = 1,maxValue = 2,probability = 10},
				{names = {'wood_plank','metalscrap','stone','iron','plastic','copper','steel'},minValue = 50,maxValue = 100,probability = 20},
				{names = {'model_electricfence','model_spikeswall_wood','model_mg','model_rpg','model_grenadelauncher','model_fire_turret','model_mg_stand'},minValue = 1,maxValue = 2,probability = 10},
				{names = {'nails'},minValue = 100,maxValue = 200,probability = 15},
				{names = {'weapon_stickybomb'},minValue = 1,maxValue = 1,probability = 5},
				{names = {'weapon_hatchet','weapon_stone_hatchet','weapon_crowbar','weapon_hammer','handsaw'},minValue = 1,maxValue = 1,probability = 20},
				{names = {'bkr_prop_biker_campbed_01','prop_generator_01a','prop_box_wood01a','gr_prop_gr_gunlocker_01a','p_v_43_safe_s','prop_planer_01','prop_worklight_02a','prop_worklight_04c','prop_worklight_01a','xm3_prop_xm3_whshelf_03a','v_ind_cfcovercrate', 'portable_foundry', 'portable_builders'},minValue = 1,maxValue = 1,probability = 10},
		 	}
	 	}
    },
	["drop_3"] = {
        fixedLoots = {
			-- {name = "bandage",count = 1}
	 	},
	 	probabilityLoots = {
		 	loop = 6,
			 --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
		 	items = {
				{names = {'seed_weed_skunk', 'seed_weed_bluedream', 'seed_weed_grapeape', 'seed_weed_lemonhaze', 'seed_weed_skywalkerog','coca_seed'},minValue = 5,maxValue = 10,probability = 15},
				{names = {'baggies'},minValue = 10,maxValue = 25,probability = 10},
				{names = {'scale'},minValue = 1,maxValue = 1,probability = 10},
				{names = {'skunk_crop','bluedream_crop','grapeape_crop','lemonhaze_crop','skywalkerog_crop','cocaine'},minValue = 25,maxValue = 50,probability = 15},
				{names = {'skunk_eighth','lemonhaze_eighth','whitewidow_eighth','masterkush_eighth','skywalkerog_eighth','cocaine_baggy'},minValue = 10,maxValue = 50,probability = 10},
				{names = {'skunk_oz','lemonhaze_oz','whitewidow_oz','masterkush_oz','skywalkerog_oz'},minValue = 1,maxValue = 5,probability = 10},
				{names = {'skunk_brick','lemonhaze_brick','whitewidow_brick','masterkush_brick','skywalkerog_brick','coke_brick'},minValue = 1,maxValue = 2,probability = 5},
				{names = {'weed_nutrition'},minValue = 1,maxValue = 5,probability = 10},
				{names = {'full_watering_can'},minValue = 1,maxValue = 5,probability = 10},	
				{names = {'portable_chemist'},minValue = 1,maxValue = 1,probability = 5},	
		 	}
	 	}
    },
}

Config.Locales = {
	['open_drop'] = 'Open Drop',
	["get_all"] = "Get All Items",
	["click_get_item"] = "Click to get item",
	["click_get_items"] = "Click to get all item",
	["open_time1"] = "You have to wait ",
	["open_time2"] = "s for the airdrop to open!!!",
}

Config.DropLocations = {
	vector3(31.8008, -279.2625, 47.7243),
	vector3(567.7755, -354.2054, 43.6050),
	vector3(105.2091, -1366.0150, 29.3420),
	vector3(-385.8213, -1829.2578, 21.6536),
	vector3(-1341.56, -3040.71, 13.94),
	vector3(176.8940, -3320.8425, 5.7812),
	vector3(979.4988, -3061.0764, 5.9008),
	vector3(932.2869, -2077.3037, 30.5957),
	vector3(1415.6384, -1070.9573, 54.0512),
	vector3(-1135.7487, 1542.0977, 239.6900),
	vector3(-2350.9590, 1346.8446, 336.4475),
	vector3(-2332.6736, 2250.1616, 32.9388),
	vector3(839.1597, 2699.2852, 40.6257),
	vector3(2431.7041, 2948.7241, 40.4992),
	vector3(2688.0413, 3496.6279, 61.525),
	vector3(1104.58, 3089.04, 40.41),
	vector3(1064.2673, 3591.1543, 31.4131),
	vector3(-1174.2922, 4289.5688, 81.7734),
	vector3(-1527.6136, 4981.0581, 62.4258),
	vector3(818.0535, 4496.9624, 52.6826),
	vector3(503.2610, 5628.9160, 792.9443),
	vector3(2608.8291, 5104.0532, 44.8125),
	vector3(3702.6284, 4513.4927, 21.2682),
	vector3(935.2263, 6488.3477, 21.1250),
	vector3(-222.6808, 6151.8535, 31.1915),
	vector3(-2808.94, 3310.68, 32.81),
	vector3(-2779.6777, 33.3987, 15.0922),
} ---- this locations will be choosen in a random way when using the Config.Schedule drops

Config.DistanceCheck = 15.0 ---- recommended  (security reasons)




--------------- DONT TOUCH THIS

Config.ModelsList = {}

for k,v in pairs(Config.DropTypes) do
	Config.ModelsList[v.crateModelName] = true
end




------------ GET SCRIPTS
Config.Framework = nil
Config.UseTargetExport = nil
--------------------------------------
if GetResourceState('es_extended') ~= 'missing' then 
    Config.Framework = "ESX"
elseif GetResourceState('qb-core') ~= 'missing' then 
    Config.Framework = "QB"
else
    print("[^3WARNING^7] NO COMPATIBLE FRAMEWORK FOUND")
end

if GetResourceState('ox_target') ~= 'missing' or GetResourceState('qtarget') ~= 'missing' then 
    Config.UseTargetExport = 'qtarget'
elseif GetResourceState('qb-target') ~= 'missing' then 
    Config.UseTargetExport = "qb-target"
else
    print("[^3WARNING^7] NO TARGET SCRIPT FOUND")
end

local errorTypes = nil
for k,v in pairs(Config.types) do
    if v.probabilityLoots and v.probabilityLoots.items then
        local count = 0
        for k2,v2 in ipairs(v.probabilityLoots.items) do
            count = count + v2.probability
        end
        if count > 100 then
            if not errorTypes then
                errorTypes = '[^3LIST^7] '..k
            else
                errorTypes = errorTypes..","..k
            end
        end
    end
end

if errorTypes then
    print("[^3WARNING^7] THE SUM OF YOUR PROBABILITY IS BIGGER THAN 100% IN THIS LOOT TYPES: \n"..errorTypes)
end