Config = {}

Config.CoreName = "qb-core"

Config.resetDelay = math.random(600000, 700000) -- time in ms (time that the server will verify if it should create another) if there is already a zone running or the max multipleZones has been reached it wont create and will wait again the timer
Config.chance = 50 -- chance to create the heli crash
Config.timeToLoot = 8000-- time in ms that the player will take to loot one position
Config.timeDeleteHeli = 10000 -- the time that will take for the heli to be deleted after the heli is looted
Config.weaponRequired = "weapon_flashlight" -- set this to "none" so player wont need the weapon, i recommend using a flashlight but you can use a crowbar or whatever....
Config.multipleZones = 1 -- The amount of zones that can be active at the same time (YOU MUST ADD NEW CRASHZONES IF YOU INCREASE THIS VALUE)

Config.Blip = {
    enableBlip = true, --This will show the exact position of the Heli crash
    sprite = 759,
    scale = 0.8,
    color = 4,

    enableRadius = false, --This will randomly create a circle blip around the heli so players know a certain area to scavenge
    radiusRange = 300.0,
    radiusColor = 1,
    radiusAlpha = 155
}

Config.LevelRewards = {
    -- Levels are from 0 to 100 exp scale, so imagine if a player have 500exp he is level 5 etc...
    -- It will choose one random item considering the level of the player

    -- You can add more levels and items for each level as you wish
    [0] = {
        [1] = {item = "black_plate_carrier", amount = 1},
        [2] = {item = "charcoal_plate_carrier", amount = 1},
        [3] = {item = "ash_plate_carrier", amount = 1},
        [4] = {item = "ice_plate_carrier", amount = 1},
        [5] = {item = "navy_plate_carrier", amount = 1},
        [6] = {item = "chamois_plate_carrier", amount = 1},
        [7] = {item = "sand_plate_carrier", amount = 1},
        [8] = {item = "tan_plate_carrier", amount = 1},
        [9] = {item = "salmon_plate_carrier", amount = 1},
        [10] = {item = "moss_plate_carrier", amount = 1},
        [11] = {item = "peach_plate_carrier", amount = 1},
        [12] = {item = "brown_digital_plate_carrier", amount = 1},
        [13] = {item = "fall_plate_carrier", amount = 1},
        [14] = {item = "white_camo_plate_carrier", amount = 1},
        [15] = {item = "peach_camo_plate_carrier", amount = 1},
        [16] = {item = "red_camo_plate_carrier", amount = 1},
        [17] = {item = "green_plate_carrier", amount = 1},
        [18] = {item = "orange_plate_carrier", amount = 1},
        [19] = {item = "purple_plate_carrier", amount = 1},
        [20] = {item = "pink_plate_carrier", amount = 1},
        [21] = {item = "black_ultralight_strike_vest", amount = 1},
        [22] = {item = "green_ultralight_strike_vest", amount = 1},
        [23] = {item = "violet_ultralight_strike_vest", amount = 1},
        [24] = {item = "green_camo_ultralight_strike_vest", amount = 1},
        [25] = {item = "desert_camo_ultralight_strike_vest", amount = 1},
        [26] = {item = "beige_ultralight_strike_vest", amount = 1},
        [27] = {item = "dark_green_ultralight_strike_vest", amount = 1},
        [28] = {item = "sage_ultralight_strike_vest", amount = 1},
        [29] = {item = "forest_camo_ultralight_strike_vest", amount = 1},
        [30] = {item = "beige_digital_ultralight_strike_vest", amount = 1},
        [31] = {item = "contrast_camo_ultralight_strike_vest", amount = 1},
        [32] = {item = "blue_camo_ultralight_strike_vest", amount = 1},
        [33] = {item = "bandit_pack", amount = 1},
        [34] = {item = "ranch_assault_pack", amount = 1},
        [35] = {item = "rush_24_bag", amount = 1},
        [36] = {item = "moab_rush_tactical_bag", amount = 1},
        [37] = {item = "burgen_bag", amount = 1},
        [38] = {item = "black_dual_helmet", amount = 1},
        [39] = {item = "moss_dual_helmet", amount = 1},
        [40] = {item = "brown_dual_helmet", amount = 1},
        [41] = {item = "white_dual_helmet", amount = 1},
        [42] = {item = "leopard_dual_helmet", amount = 1},
        [43] = {item = "brown_digital_dual_helmet", amount = 1},
        [44] = {item = "tiger_dual_helmet", amount = 1},
        [45] = {item = "aqua_camo_dual_helmet", amount = 1},
        [46] = {item = "splinter_dual_helmet", amount = 1},
        [47] = {item = "brushstroke_dual_helmet", amount = 1},
        [48] = {item = "black_red_dual_helmet", amount = 1},
        [49] = {item = "zebra_dual_helmet", amount = 1},
        [50] = {item = "pink_camo_dual_helmet", amount = 1},
        [51] = {item = "desert_dual_helmet", amount = 1},
        [52] = {item = "desert_dual_helmet", amount = 1},
        [53] = {item = "desert_dual_helmet", amount = 1},
        [54] = {item = "desert_dual_helmet", amount = 1},
        [55] = {item = "desert_dual_helmet", amount = 1},
        [56] = {item = "desert_dual_helmet", amount = 1},
        [57] = {item = "desert_dual_helmet", amount = 1},
        [58] = {item = "desert_dual_helmet", amount = 1},
        [59] = {item = "desert_dual_helmet", amount = 1},
        [60] = {item = "desert_dual_helmet", amount = 1},
        [61] = {item = "desert_dual_helmet", amount = 1},
        [62] = {item = "clip_attachment", amount = 1},
        [63] = {item = "drum_attachment", amount = 1},
        [64] = {item = "flashlight_attachment", amount = 1},
        [65] = {item = "smallscope_attachment", amount = 1},
        [66] = {item = "medscope_attachment", amount = 1},
        [67] = {item = "largescope_attachment", amount = 1},
        [68] = {item = "holoscope_attachment", amount = 1},
        [69] = {item = "advscope_attachment", amount = 1},
        [70] = {item = "nvscope_attachment", amount = 1},
        [71] = {item = "flat_muzzle_brake", amount = 1},
        [72] = {item = "tactical_muzzle_brake", amount = 1},
        [73] = {item = "fat_end_muzzle_brake", amount = 1},
        [74] = {item = "precision_muzzle_brake", amount = 1},
        [75] = {item = "heavy_duty_muzzle_brake", amount = 1},
        [76] = {item = "slanted_muzzle_brake", amount = 1},
        [77] = {item = "split_end_muzzle_brake", amount = 1},
        [78] = {item = "squared_muzzle_brake", amount = 1},
        [79] = {item = "bellend_muzzle_brake", amount = 1},
        [80] = {item = "barrel_attachment", amount = 1},
        [81] = {item = "grip_attachment", amount = 1},
        [82] = {item = "comp_attachment", amount = 1},
        [83] = {item = "bandage", amount = 20},
        [84] = {item = "ifaks", amount = 10},
        [85] = {item = "painkillers", amount = 10},
        [86] = {item = "radiationpill", amount = 5},
        [87] = {item = "antivirals", amount = 5},
        [88] = {item = "firstaid", amount = 1},
    },
    [1] = {
        [1] = {item = "black_plate_carrier", amount = 1},
        [2] = {item = "charcoal_plate_carrier", amount = 1},
        [3] = {item = "ash_plate_carrier", amount = 1},
        [4] = {item = "ice_plate_carrier", amount = 1},
        [5] = {item = "navy_plate_carrier", amount = 1},
        [6] = {item = "chamois_plate_carrier", amount = 1},
        [7] = {item = "sand_plate_carrier", amount = 1},
        [8] = {item = "tan_plate_carrier", amount = 1},
        [9] = {item = "salmon_plate_carrier", amount = 1},
        [10] = {item = "moss_plate_carrier", amount = 1},
        [11] = {item = "peach_plate_carrier", amount = 1},
        [12] = {item = "brown_digital_plate_carrier", amount = 1},
        [13] = {item = "fall_plate_carrier", amount = 1},
        [14] = {item = "white_camo_plate_carrier", amount = 1},
        [15] = {item = "peach_camo_plate_carrier", amount = 1},
        [16] = {item = "red_camo_plate_carrier", amount = 1},
        [17] = {item = "green_plate_carrier", amount = 1},
        [18] = {item = "orange_plate_carrier", amount = 1},
        [19] = {item = "purple_plate_carrier", amount = 1},
        [20] = {item = "pink_plate_carrier", amount = 1},
        [21] = {item = "black_ultralight_strike_vest", amount = 1},
        [22] = {item = "green_ultralight_strike_vest", amount = 1},
        [23] = {item = "violet_ultralight_strike_vest", amount = 1},
        [24] = {item = "green_camo_ultralight_strike_vest", amount = 1},
        [25] = {item = "desert_camo_ultralight_strike_vest", amount = 1},
        [26] = {item = "beige_ultralight_strike_vest", amount = 1},
        [27] = {item = "dark_green_ultralight_strike_vest", amount = 1},
        [28] = {item = "sage_ultralight_strike_vest", amount = 1},
        [29] = {item = "forest_camo_ultralight_strike_vest", amount = 1},
        [30] = {item = "beige_digital_ultralight_strike_vest", amount = 1},
        [31] = {item = "contrast_camo_ultralight_strike_vest", amount = 1},
        [32] = {item = "blue_camo_ultralight_strike_vest", amount = 1},
        [33] = {item = "bandit_pack", amount = 1},
        [34] = {item = "ranch_assault_pack", amount = 1},
        [35] = {item = "rush_24_bag", amount = 1},
        [36] = {item = "moab_rush_tactical_bag", amount = 1},
        [37] = {item = "burgen_bag", amount = 1},
        [38] = {item = "black_dual_helmet", amount = 1},
        [39] = {item = "moss_dual_helmet", amount = 1},
        [40] = {item = "brown_dual_helmet", amount = 1},
        [41] = {item = "white_dual_helmet", amount = 1},
        [42] = {item = "leopard_dual_helmet", amount = 1},
        [43] = {item = "brown_digital_dual_helmet", amount = 1},
        [44] = {item = "tiger_dual_helmet", amount = 1},
        [45] = {item = "aqua_camo_dual_helmet", amount = 1},
        [46] = {item = "splinter_dual_helmet", amount = 1},
        [47] = {item = "brushstroke_dual_helmet", amount = 1},
        [48] = {item = "black_red_dual_helmet", amount = 1},
        [49] = {item = "zebra_dual_helmet", amount = 1},
        [50] = {item = "pink_camo_dual_helmet", amount = 1},
        [51] = {item = "desert_dual_helmet", amount = 1},
        [52] = {item = "desert_dual_helmet", amount = 1},
        [53] = {item = "desert_dual_helmet", amount = 1},
        [54] = {item = "desert_dual_helmet", amount = 1},
        [55] = {item = "desert_dual_helmet", amount = 1},
        [56] = {item = "desert_dual_helmet", amount = 1},
        [57] = {item = "desert_dual_helmet", amount = 1},
        [58] = {item = "desert_dual_helmet", amount = 1},
        [59] = {item = "desert_dual_helmet", amount = 1},
        [60] = {item = "desert_dual_helmet", amount = 1},
        [61] = {item = "desert_dual_helmet", amount = 1},
        [62] = {item = "clip_attachment", amount = 1},
        [63] = {item = "drum_attachment", amount = 1},
        [64] = {item = "flashlight_attachment", amount = 1},
        [65] = {item = "smallscope_attachment", amount = 1},
        [66] = {item = "medscope_attachment", amount = 1},
        [67] = {item = "largescope_attachment", amount = 1},
        [68] = {item = "holoscope_attachment", amount = 1},
        [69] = {item = "advscope_attachment", amount = 1},
        [70] = {item = "nvscope_attachment", amount = 1},
        [71] = {item = "flat_muzzle_brake", amount = 1},
        [72] = {item = "tactical_muzzle_brake", amount = 1},
        [73] = {item = "fat_end_muzzle_brake", amount = 1},
        [74] = {item = "precision_muzzle_brake", amount = 1},
        [75] = {item = "heavy_duty_muzzle_brake", amount = 1},
        [76] = {item = "slanted_muzzle_brake", amount = 1},
        [77] = {item = "split_end_muzzle_brake", amount = 1},
        [78] = {item = "squared_muzzle_brake", amount = 1},
        [79] = {item = "bellend_muzzle_brake", amount = 1},
        [80] = {item = "barrel_attachment", amount = 1},
        [81] = {item = "grip_attachment", amount = 1},
        [82] = {item = "comp_attachment", amount = 1},
        [83] = {item = "bandage", amount = 20},
        [84] = {item = "ifaks", amount = 10},
        [85] = {item = "painkillers", amount = 10},
        [86] = {item = "radiationpill", amount = 5},
        [87] = {item = "antivirals", amount = 5},
        [88] = {item = "firstaid", amount = 1},
    },
    [2] = {
        [1] = {item = "black_plate_carrier", amount = 1},
        [2] = {item = "charcoal_plate_carrier", amount = 1},
        [3] = {item = "ash_plate_carrier", amount = 1},
        [4] = {item = "ice_plate_carrier", amount = 1},
        [5] = {item = "navy_plate_carrier", amount = 1},
        [6] = {item = "chamois_plate_carrier", amount = 1},
        [7] = {item = "sand_plate_carrier", amount = 1},
        [8] = {item = "tan_plate_carrier", amount = 1},
        [9] = {item = "salmon_plate_carrier", amount = 1},
        [10] = {item = "moss_plate_carrier", amount = 1},
        [11] = {item = "peach_plate_carrier", amount = 1},
        [12] = {item = "brown_digital_plate_carrier", amount = 1},
        [13] = {item = "fall_plate_carrier", amount = 1},
        [14] = {item = "white_camo_plate_carrier", amount = 1},
        [15] = {item = "peach_camo_plate_carrier", amount = 1},
        [16] = {item = "red_camo_plate_carrier", amount = 1},
        [17] = {item = "green_plate_carrier", amount = 1},
        [18] = {item = "orange_plate_carrier", amount = 1},
        [19] = {item = "purple_plate_carrier", amount = 1},
        [20] = {item = "pink_plate_carrier", amount = 1},
        [21] = {item = "black_ultralight_strike_vest", amount = 1},
        [22] = {item = "green_ultralight_strike_vest", amount = 1},
        [23] = {item = "violet_ultralight_strike_vest", amount = 1},
        [24] = {item = "green_camo_ultralight_strike_vest", amount = 1},
        [25] = {item = "desert_camo_ultralight_strike_vest", amount = 1},
        [26] = {item = "beige_ultralight_strike_vest", amount = 1},
        [27] = {item = "dark_green_ultralight_strike_vest", amount = 1},
        [28] = {item = "sage_ultralight_strike_vest", amount = 1},
        [29] = {item = "forest_camo_ultralight_strike_vest", amount = 1},
        [30] = {item = "beige_digital_ultralight_strike_vest", amount = 1},
        [31] = {item = "contrast_camo_ultralight_strike_vest", amount = 1},
        [32] = {item = "blue_camo_ultralight_strike_vest", amount = 1},
        [33] = {item = "bandit_pack", amount = 1},
        [34] = {item = "ranch_assault_pack", amount = 1},
        [35] = {item = "rush_24_bag", amount = 1},
        [36] = {item = "moab_rush_tactical_bag", amount = 1},
        [37] = {item = "burgen_bag", amount = 1},
        [38] = {item = "black_dual_helmet", amount = 1},
        [39] = {item = "moss_dual_helmet", amount = 1},
        [40] = {item = "brown_dual_helmet", amount = 1},
        [41] = {item = "white_dual_helmet", amount = 1},
        [42] = {item = "leopard_dual_helmet", amount = 1},
        [43] = {item = "brown_digital_dual_helmet", amount = 1},
        [44] = {item = "tiger_dual_helmet", amount = 1},
        [45] = {item = "aqua_camo_dual_helmet", amount = 1},
        [46] = {item = "splinter_dual_helmet", amount = 1},
        [47] = {item = "brushstroke_dual_helmet", amount = 1},
        [48] = {item = "black_red_dual_helmet", amount = 1},
        [49] = {item = "zebra_dual_helmet", amount = 1},
        [50] = {item = "pink_camo_dual_helmet", amount = 1},
        [51] = {item = "desert_dual_helmet", amount = 1},
        [52] = {item = "desert_dual_helmet", amount = 1},
        [53] = {item = "desert_dual_helmet", amount = 1},
        [54] = {item = "desert_dual_helmet", amount = 1},
        [55] = {item = "desert_dual_helmet", amount = 1},
        [56] = {item = "desert_dual_helmet", amount = 1},
        [57] = {item = "desert_dual_helmet", amount = 1},
        [58] = {item = "desert_dual_helmet", amount = 1},
        [59] = {item = "desert_dual_helmet", amount = 1},
        [60] = {item = "desert_dual_helmet", amount = 1},
        [61] = {item = "desert_dual_helmet", amount = 1},
        [62] = {item = "clip_attachment", amount = 1},
        [63] = {item = "drum_attachment", amount = 1},
        [64] = {item = "flashlight_attachment", amount = 1},
        [65] = {item = "smallscope_attachment", amount = 1},
        [66] = {item = "medscope_attachment", amount = 1},
        [67] = {item = "largescope_attachment", amount = 1},
        [68] = {item = "holoscope_attachment", amount = 1},
        [69] = {item = "advscope_attachment", amount = 1},
        [70] = {item = "nvscope_attachment", amount = 1},
        [71] = {item = "flat_muzzle_brake", amount = 1},
        [72] = {item = "tactical_muzzle_brake", amount = 1},
        [73] = {item = "fat_end_muzzle_brake", amount = 1},
        [74] = {item = "precision_muzzle_brake", amount = 1},
        [75] = {item = "heavy_duty_muzzle_brake", amount = 1},
        [76] = {item = "slanted_muzzle_brake", amount = 1},
        [77] = {item = "split_end_muzzle_brake", amount = 1},
        [78] = {item = "squared_muzzle_brake", amount = 1},
        [79] = {item = "bellend_muzzle_brake", amount = 1},
        [80] = {item = "barrel_attachment", amount = 1},
        [81] = {item = "grip_attachment", amount = 1},
        [82] = {item = "comp_attachment", amount = 1},
        [83] = {item = "bandage", amount = 20},
        [84] = {item = "ifaks", amount = 10},
        [85] = {item = "painkillers", amount = 10},
        [86] = {item = "radiationpill", amount = 5},
        [87] = {item = "antivirals", amount = 5},
        [88] = {item = "firstaid", amount = 1},
    },
}

Config.crashZones = {
    --You can add more crash zones as you wish
    [1] = {
        crashPos = vector4(-198.82, 4425.22, 45.5, 96.38), --Location that heli will crash
        expGiving = 15, -- The amount of EXP that the guy receives for each loot pos (Setting this to 0 wont give EXP to the player)
        lootPos = {--You can add more loot offset positions of the heli
            {x = -1.0, y = 1.7, z = 1.0}, --front left door
            {x = 1.0, y = 1.7, z = 1.0}, --front right door
            {x = -1.0, y = -0.1, z = 1.0}, --back left door
            {x = 1.0, y = -0.1, z = 1.0}, --back right door
        },
        rareDrop = {
            enabled = true, --If it should spawn the rare drop for this heliCrash
            chanceToSpawn = 30, --The chance for the rare drop to be created
            propModel = "prop_mb_crate_01a", --you can change this to another model, for example a dead corpse etc
            coords = vector4(-204.26, 4417.71, 45.84, 289.35), -- spawn position of the rareDrop
            possibleRewards = {--List of items, one of them will be randomly picked
                --You can add more items to the pool
                [1] = {item = "plastic", amount = 50},
                [2] = {item = "metalscrap", amount = 50},
                [3] = {item = "copper", amount = 50},
                [4] = {item = "aluminum", amount = 50},
                [5] = {item = "iron", amount = 50},
                [6] = {item = "steel", amount = 50},
                [7] = {item = "rubber", amount = 50},
                [8] = {item = "glass", amount = 50},
            }
            
        }
    },
    [2] = {
        crashPos = vector4(2835.86, -1444.03, 10.82, 164.51), --Location that heli will crash
        expGiving = 15, -- The amount of EXP that the guy receives for each loot pos (Setting this to 0 wont give EXP to the player)
        lootPos = {--You can add more loot offset positions of the heli
            {x = -1.0, y = 1.7, z = 1.0}, --front left door
            {x = 1.0, y = 1.7, z = 1.0}, --front right door
            {x = -1.0, y = -0.1, z = 1.0}, --back left door
            {x = 1.0, y = -0.1, z = 1.0}, --back right door
        },
        rareDrop = {
            enabled = true, --If it should spawn the rare drop for this heliCrash
            chanceToSpawn = 30, --The chance for the rare drop to be created
            propModel = "prop_mb_crate_01a", --you can change this to another model, for example a dead corpse etc
            coords = vector4(2841.73, -1441.06, 11.93, 176.75), -- spawn position of the rareDrop
            possibleRewards = {--List of items, one of them will be randomly picked
                --You can add more items to the pool
                [1] = {item = "plastic", amount = 50},
                [2] = {item = "metalscrap", amount = 50},
                [3] = {item = "copper", amount = 50},
                [4] = {item = "aluminum", amount = 50},
                [5] = {item = "iron", amount = 50},
                [6] = {item = "steel", amount = 50},
                [7] = {item = "rubber", amount = 50},
                [8] = {item = "glass", amount = 50},
            }
            
        }
    },
    [3] = {
        crashPos = vector4(2951.07, 5322.56, 101.03, 106.48), --Location that heli will crash
        expGiving = 15, -- The amount of EXP that the guy receives for each loot pos (Setting this to 0 wont give EXP to the player)
        lootPos = {--You can add more loot offset positions of the heli
            {x = -1.0, y = 1.7, z = 1.0}, --front left door
            {x = 1.0, y = 1.7, z = 1.0}, --front right door
            {x = -1.0, y = -0.1, z = 1.0}, --back left door
            {x = 1.0, y = -0.1, z = 1.0}, --back right door
        },
        rareDrop = {
            enabled = true, --If it should spawn the rare drop for this heliCrash
            chanceToSpawn = 30, --The chance for the rare drop to be created
            propModel = "prop_mb_crate_01a", --you can change this to another model, for example a dead corpse etc
            coords = vector4(2947.26, 5331.48, 101.49, 20.35), -- spawn position of the rareDrop
            possibleRewards = {--List of items, one of them will be randomly picked
                --You can add more items to the pool
                [1] = {item = "plastic", amount = 50},
                [2] = {item = "metalscrap", amount = 50},
                [3] = {item = "copper", amount = 50},
                [4] = {item = "aluminum", amount = 50},
                [5] = {item = "iron", amount = 50},
                [6] = {item = "steel", amount = 50},
                [7] = {item = "rubber", amount = 50},
                [8] = {item = "glass", amount = 50},
            }
            
        }
    },
    [4] = {
        crashPos = vector4(-2060.26, 1471.47, 273.63, 111.58), --Location that heli will crash
        expGiving = 15, -- The amount of EXP that the guy receives for each loot pos (Setting this to 0 wont give EXP to the player)
        lootPos = {--You can add more loot offset positions of the heli
            {x = -1.0, y = 1.7, z = 1.0}, --front left door
            {x = 1.0, y = 1.7, z = 1.0}, --front right door
            {x = -1.0, y = -0.1, z = 1.0}, --back left door
            {x = 1.0, y = -0.1, z = 1.0}, --back right door
        },
        rareDrop = {
            enabled = true, --If it should spawn the rare drop for this heliCrash
            chanceToSpawn = 30, --The chance for the rare drop to be created
            propModel = "prop_mb_crate_01a", --you can change this to another model, for example a dead corpse etc
            coords = vector4(-2055.7, 1454.45, 274.32, 275.45), -- spawn position of the rareDrop
            possibleRewards = {--List of items, one of them will be randomly picked
                --You can add more items to the pool
                [1] = {item = "plastic", amount = 50},
                [2] = {item = "metalscrap", amount = 50},
                [3] = {item = "copper", amount = 50},
                [4] = {item = "aluminum", amount = 50},
                [5] = {item = "iron", amount = 50},
                [6] = {item = "steel", amount = 50},
                [7] = {item = "rubber", amount = 50},
                [8] = {item = "glass", amount = 50},
            }
            
        }
    },
}

Locales = {
    ["bliptext"] = "Heli Crash",
    ["searchloot"] = "Press [~r~E~w~] to search",
    ["looting"] = "Searching for loot",
    ["alreadyLooted"] = "Someone already searched in here",
    ["earnedEXP"] = "You earned ",
    ["exp"] = "EXP",
    ["yourLevel"] = "Your Level: ",
    ["yourEXP"] = "Your EXP: "
}