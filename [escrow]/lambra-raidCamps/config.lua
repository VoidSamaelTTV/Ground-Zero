Config = {}
Config.CoreName = "qb-core"

Config.Target = "qb-target" --"none" if you don't want to use target otherwise set this to "qb-target"
Config.Webhook = "" --If you want to receive a log of who opened the crate

Config.maxWeight = 120000 --Set your max weight according to your inventory

Config.resetDelay = 60000 -- time in ms (time that the server will verify if there is a slot for a zone to be created)
Config.delaySetup = false -- Enabling this will skip the first time for creating a zone once the resource starts
Config.forceAllDead = true -- This will only let players loot the box once all the peds are dead
Config.multipleZones = 4 -- The amount of zones/available slots that can be active at the same time (you must add more Camps if you want to use more than 1)

Config.Blip = {
    enableBlip = true,
    enableRadius = false,
    sprite = 84,
    scale = 0.7,
    color = 1,
    radiusColor = 1,
    radiusAlpha = 250
}

Config.Announces = {-- set those options to true if you want people to get notified
    onCreate = true,
    onFinished = true
}

Config.timeToLoot = 10000 -- time in ms

Config.LevelRewards = {
    -- You can add more Levels and add multiple items to each level
    -- Levels are from 0 to 100 exp scale, so imagine if a player have 300exp he is level 3 etc...
    [0] = {
        {item = "ifaks", amount = 2, chance = 10},
        {item = "bandage", amount = 2, chance = 10},
        {item = "weapon_pumpshotgun", amount = 1, chance = 5},
        {item = "weapon_pistol", amount = 1, chance = 10},
        {item = "pistol_ammo", amount = 10, chance = 10},
        {item = "black_plate_carrier", amount = 1, chance = 1},
        {item = "charcoal_plate_carrier", amount = 1, chance = 1},
        {item = "ash_plate_carrier", amount = 1, chance = 1},
        {item = "ice_plate_carrier", amount = 1, chance = 1},
        {item = "navy_plate_carrier", amount = 1, chance = 1},
        {item = "chamois_plate_carrier", amount = 1, chance = 1},
        {item = "sand_plate_carrier", amount = 1, chance = 1},
        {item = "tan_plate_carrier", amount = 1, chance = 1},
        {item = "salmon_plate_carrier", amount = 1, chance = 1},
        {item = "moss_plate_carrier", amount = 1, chance = 1},
        {item = "peach_plate_carrier", amount = 1, chance = 1},
        {item = "brown_digital_plate_carrier", amount = 1, chance = 1},
        {item = "fall_plate_carrier", amount = 1, chance = 1},
        {item = "white_camo_plate_carrier", amount = 1, chance = 1},
        {item = "peach_camo_plate_carrier", amount = 1, chance = 1},
        {item = "red_camo_plate_carrier", amount = 1, chance = 1},
        {item = "green_plate_carrier", amount = 1, chance = 1},
        {item = "orange_plate_carrier", amount = 1, chance = 1},
        {item = "purple_plate_carrier", amount = 1, chance = 1},
        {item = "pink_plate_carrier", amount = 1, chance = 1},
        {item = "black_ultralight_strike_vest", amount = 1, chance = 1},
        {item = "green_ultralight_strike_vest", amount = 1, chance = 1},
        {item = "violet_ultralight_strike_vest", amount = 1, chance = 1},
        {item = "green_camo_ultralight_strike_vest", amount = 1, chance = 1},
        {item = "desert_camo_ultralight_strike_vest", amount = 1, chance = 1},
        {item = "beige_ultralight_strike_vest", amount = 1, chance = 1},
        {item = "dark_green_ultralight_strike_vest", amount = 1, chance = 1},
        {item = "sage_ultralight_strike_vest", amount = 1, chance = 1},
        {item = "forest_camo_ultralight_strike_vest", amount = 1, chance = 1},
        {item = "beige_digital_ultralight_strike_vest", amount = 1, chance = 1},
        {item = "contrast_camo_ultralight_strike_vest", amount = 1, chance = 1},
        {item = "blue_camo_ultralight_strike_vest", amount = 1, chance = 1},
        {item = "cash", amount = 10000, chance = 5},

    },
    [1] = {
        {item = "ifaks", amount = 4, chance = 10},
        {item = "bandage", amount = 4, chance = 10},
        {item = "weapon_smg", amount = 1, chance = 5},
        {item = "weapon_carbinerifle", amount = 1, chance = 5},
        {item = "black_light_strike_vest", amount = 1, chance = 5},
        {item = "green_light_strike_vest", amount = 1, chance = 5},
        {item = "orange_light_strike_vest", amount = 1, chance = 5},
        {item = "purple_light_strike_vest", amount = 1, chance = 5},
        {item = "pink_light_strike_vest", amount = 1, chance = 5},
        {item = "gas_mask", amount = 1, chance = 5},
        {item = "combat_gas_mask", amount = 1, chance = 5},
        {item = "gray_heavy_gas_mask", amount = 1, chance = 5},
        {item = "carbon_heavy_gas_mask", amount = 1, chance = 5},
        {item = "goggled_gas_mask", amount = 1, chance = 5},
        {item = "metalscrap", amount = 1, chance = 10},
        {item = "cash", amount = 20000, chance = 10},
    },
    [2] = {
        {item = "ifaks", amount = 4, chance = 10},
        {item = "bandage", amount = 4, chance = 10},
        {item = "weapon_smg", amount = 1, chance = 10},
        {item = "weapon_carbinerifle", amount = 1, chance = 5},
        {item = "black_mid_strike_vest", amount = 1, chance = 5},
        {item = "green_mid_strike_vest", amount = 1, chance = 5},
        {item = "orange_mid_strike_vest", amount = 1, chance = 5},
        {item = "purple_mid_strike_vest", amount = 1, chance = 5},
        {item = "pink_mid_strike_vest", amount = 1, chance = 5},
        {item = "black_dual_helmet", amount = 1, chance = 2},
        {item = "moss_dual_helmet", amount = 1, chance = 2},
        {item = "brown_dual_helmet", amount = 1, chance = 2},
        {item = "white_dual_helmet", amount = 1, chance = 2},
        {item = "leopard_dual_helmet", amount = 1, chance = 2},
        {item = "brown_digital_dual_helmet", amount = 1, chance = 2},
        {item = "tiger_dual_helmet", amount = 1, chance = 1},
        {item = "aqua_camo_dual_helmet", amount = 1, chance = 1},
        {item = "splinter_dual_helmet", amount = 1, chance = 1},
        {item = "brushstroke_dual_helmet", amount = 1, chance = 1},
        {item = "black_red_dual_helmet", amount = 1, chance = 1},
        {item = "zebra_dual_helmet", amount = 1, chance = 1},
        {item = "pink_camo_dual_helmet", amount = 1, chance = 1},
        {item = "desert_dual_helmet", amount = 1, chance = 1},
        {item = "cash", amount = 40000, chance = 20},
    },
}

Config.Camps = {
    -- You can add more Camps
    [1] = {
        name = " (Stab City)", --the name of a camp will appear at onAnnounce if the notications are ON, you can leave this empty
        lootPos = vector3(60.99, 3717.23, 38.75),
        range = 500.0, -- How much range the player needs to be from the lootpos to spawn the peds
        prop = "ba_prop_battle_crate_closed_bc", --The object that will spawn for loot
        expGiving = 15, -- The amount of EXP that the guy who loots the crate will get
        expRadius = 5, -- Set this to Recommended 5 or 10 if you want to people close to the crate get EXP too, [[0 value will only give to the one opening the crate]]
        itemPickAmount = 4, -- How many items from Config.LevelRewards will be picked according to the player level
        selfDelay = 60, --time in minutes that will take for the zone to be available for the server zone check creation (leave at 0 if you dont want)
        peds = {--You can add more peds for this camp
            {model = "g_m_y_lost_02", coords = vector4(78.54, 3707.21, 41.08, 50.94), weapon = "weapon_pistol", health = 150, armor = 0, canTakeHeadshot = false},
            {model = "g_m_y_lost_03", coords = vector4(46.04, 3704.03, 39.76, 332.75), weapon = "weapon_sawnoffshotgun", health = 150, armor = 0, canTakeHeadshot = false},
            {model = "g_f_y_lost_01", coords = vector4(88.03, 3723.73, 39.72, 59.25), weapon = "weapon_compactrifle", health = 150, armor = 0, canTakeHeadshot = false},
            {model = "g_m_y_lost_01", coords = vector4(62.18, 3670.69, 39.81, 356.67), weapon = "weapon_pistol", health = 150, armor = 0, canTakeHeadshot = false},

        }
    },

    [2] = {
        name = " (Kortz Center)", --the name of a camp will appear at onAnnounce if the notications are ON, you can leave this empty
        lootPos = vector3(-2295.44, 187.94, 166.9),
        range = 500.0, -- How much range the player needs to be from the lootpos to spawn the peds
        prop = "ba_prop_battle_crate_closed_bc", --The object that will spawn for loot
        expGiving = 30, -- The amount of EXP that the guy who loots the crate will get
        expRadius = 10, -- Set this to Recommended 5 or 10 if you want to people close to the crate get EXP too, [[0 value will only give to the one opening the crate]]
        itemPickAmount = 8, -- How many items from Config.LevelRewards will be picked according to the player level
        selfDelay = 60, --time in minutes that will take for the zone to be available for the server zone check creation (leave at 0 if you dont want)
        peds = {--You can add more peds for this camp
            {model = "g_m_m_armlieut_01", coords = vector4(-2280.5, 173.55, 167.6, 26.67), weapon = "weapon_pistol", health = 150, armor = 0, canTakeHeadshot = false},
            {model = "g_m_m_armgoon_01", coords = vector4(-2294.97, 172.08, 167.6, 12.46), weapon = "weapon_smg", health = 150, armor = 0, canTakeHeadshot = false},
            {model = "g_m_m_armboss_01", coords = vector4(-2305.15, 187.67, 167.6, 329.49), weapon = "weapon_combatshotgun", health = 100, armor = 0, canTakeHeadshot = false},
            {model = "g_m_m_armlieut_01", coords = vector4(-2308.13, 208.64, 167.6, 247.56), weapon = "weapon_pistol", health = 100, armor = 0, canTakeHeadshot = false},
            {model = "g_m_m_armgoon_01", coords = vector4(-2293.93, 211.95, 167.6, 100.97), weapon = "weapon_pistol", health = 150, armor = 0, canTakeHeadshot = false},
            {model = "g_m_m_armboss_01", coords = vector4(-2306.83, 220.37, 167.6, 275.34), weapon = "weapon_pistol", health = 150, armor = 0, canTakeHeadshot = false},
            {model = "g_m_m_armlieut_01", coords = vector4(-2318.8, 224.76, 167.6, 290.42), weapon = "weapon_specialcarbine", health = 100, armor = 0, canTakeHeadshot = false},
            {model = "g_m_m_armgoon_01", coords = vector4(-2292.66, 235.94, 167.6, 117.38), weapon = "weapon_pumpshotgun", health = 100, armor = 0, canTakeHeadshot = false},
        }
    },


    [3] = {
        name = " (Merryweather Port)", --the name of a camp will appear at onAnnounce if the notications are ON, you can leave this empty
        lootPos = vector3(491.64, -3172.34, 6.07),
        range = 500.0, -- How much range the player needs to be from the lootpos to spawn the peds
        prop = "ba_prop_battle_crate_closed_bc", --The object that will spawn for loot
        expGiving = 30, -- The amount of EXP that the guy who loots the crate will get
        expRadius = 10, -- Set this to Recommended 5 or 10 if you want to people close to the crate get EXP too, [[0 value will only give to the one opening the crate]]
        itemPickAmount = 8, -- How many items from Config.LevelRewards will be picked according to the player level
        selfDelay = 60, --time in minutes that will take for the zone to be available for the server zone check creation (leave at 0 if you dont want)
        peds = {--You can add more peds for this camp
            {model = "csb_mweather", coords = vector4(471.83, -3155.02, 6.07, 271.01), weapon = "weapon_pistol", health = 150, armor = 0, canTakeHeadshot = false},
            {model = "csb_mweather", coords = vector4(507.38, -3156.89, 6.07, 84.08), weapon = "weapon_smg", health = 150, armor = 0, canTakeHeadshot = false},
            {model = "csb_mweather", coords = vector4(506.61, -3180.48, 6.07, 32.5), weapon = "weapon_combatshotgun", health = 100, armor = 0, canTakeHeadshot = false},
            {model = "csb_mweather", coords = vector4(461.66, -3184.26, 6.07, 266.32), weapon = "weapon_heavypistol", health = 100, armor = 0, canTakeHeadshot = false},
            {model = "csb_mweather", coords = vector4(496.8, -3140.04, 6.07, 359.63), weapon = "weapon_carbinerifle", health = 150, armor = 0, canTakeHeadshot = false},
            {model = "csb_mweather", coords = vector4(474.7, -3171.52, 6.07, 279.62), weapon = "weapon_combatpdw", health = 150, armor = 0, canTakeHeadshot = false},
            {model = "csb_mweather", coords = vector4(509.69, -3167.19, 6.07, 333.36), weapon = "weapon_specialcarbine", health = 100, armor = 0, canTakeHeadshot = false},
            {model = "csb_mweather", coords = vector4(509.5, -3157.39, 6.07, 29.42), weapon = "weapon_pumpshotgun", health = 100, armor = 0, canTakeHeadshot = false},
        }
    },

    [4] = {
        name = " (La Fuente)", --the name of a camp will appear at onAnnounce if the notications are ON, you can leave this empty
        lootPos = vector3(1456.28, 1111.08, 113.83),
        range = 500.0, -- How much range the player needs to be from the lootpos to spawn the peds
        prop = "ba_prop_battle_crate_closed_bc", --The object that will spawn for loot
        expGiving = 30, -- The amount of EXP that the guy who loots the crate will get
        expRadius = 10, -- Set this to Recommended 5 or 10 if you want to people close to the crate get EXP too, [[0 value will only give to the one opening the crate]]
        itemPickAmount = 8, -- How many items from Config.LevelRewards will be picked according to the player level
        selfDelay = 60, --time in minutes that will take for the zone to be available for the server zone check creation (leave at 0 if you dont want)
        peds = {--You can add more peds for this camp
            {model = "g_m_y_mexgang_01", coords = vector4(1460.76, 1086.85, 114.33, 358.34), weapon = "weapon_appistol", health = 150, armor = 0, canTakeHeadshot = false},
            {model = "g_m_y_mexgoon_01", coords = vector4(1455.56, 1131.24, 114.33, 72.63), weapon = "weapon_microsmg", health = 150, armor = 0, canTakeHeadshot = false},
            {model = "g_m_y_mexgoon_02", coords = vector4(1464.11, 1134.47, 114.32, 284.79), weapon = "weapon_minismg", health = 100, armor = 0, canTakeHeadshot = false},
            {model = "g_m_y_mexgoon_03", coords = vector4(1483.3, 1129.84, 114.33, 351.69), weapon = "weapon_dbshotgun", health = 100, armor = 0, canTakeHeadshot = false},
            {model = "g_m_y_mexgang_01", coords = vector4(1483.2, 1106.82, 114.33, 73.95), weapon = "weapon_autoshotgun", health = 150, armor = 0, canTakeHeadshot = false},
            {model = "g_m_y_mexgoon_01", coords = vector4(1489.02, 1104.04, 114.33, 137.68), weapon = "weapon_assaultrifle", health = 150, armor = 0, canTakeHeadshot = false},
            {model = "g_m_y_mexgoon_02", coords = vector4(1460.14, 1098.38, 114.33, 357.5), weapon = "weapon_assaultrifle", health = 100, armor = 0, canTakeHeadshot = false},
            {model = "g_m_y_mexgoon_03", coords = vector4(1457.16, 1081.85, 114.33, 310.07), weapon = "weapon_pistol", health = 100, armor = 0, canTakeHeadshot = false},
        }
    },
}

Locales = {
    ["BlipText"] = "Raidable Camp",
    ["interactCrate"] = "Loot Crate",
    ["looting"] = "Grabbing the loot",
    ["earnedEXP"] = "You earned ",
    ["exp"] = "EXP",
    ["yourLevel"] = "Your Level: ",
    ["yourEXP"] = "Your EXP: ",
    ["alreadyLooted"] = "Someone already looted this",
    ["onCreate"] = "Some scavs have taken a location",
    ["onFinished"] = "Location of the scavs has been contained",
    ["noSpaceInv"] = "Your inventory is full",
    ["pedsAlive"] = "There's someone to kill..."
}

function DrawText3D(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 170)
    ClearDrawOrigin()
end