Config = {}

Config.bmLocation = {
    [1] = {
            coords = vector3(0, 0, 0),
            length = 0.0,
            width = 0.0,
            heading = 100.01,
            debugPoly = false,
            minZ = 0.00,
            maxZ = 0.80,
            distance = 0.0
        },
    }

Config.BankMoney = false -- Set to true if you want the money to go into the players bank
Config.UseTimes = false -- Set to false if you want the blackmarket open 24/7
Config.TimeOpen = 7 -- Opening Time
Config.TimeClosed = 17 -- Closing Time
Config.SendMeltingEmail = true

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

Config.bmItems = {
    -- melee
    [1] = {
        item = 'weapon_stickybomb',
        price = math.random(5000,10000)
    },
    [2] = {
        item = 'weapon_grenade',
        price = math.random(1000,2500)
    },
    [3] = {
        item = 'weapon_pipebomb',
        price = math.random(800,1600)
    },
    [4] = {
        item = 'weapon_rpg',
        price = math.random(10000,20000)
    },
    [5] = {
        item = 'weapon_grenadelauncher',
        price = math.random(7500,15000)
    },
    [6] = {
        item = 'weapon_mg',
        price = math.random(3000,6000)
    },
    [7] = {
        item = 'weapon_combatmg',
        price = math.random(3500,7000)
    },
    [8] = {
        item = 'weapon_combatmg_mk2',
        price = math.random(5250,10500)
    },
    [9] = {
        item = 'weapon_sniperrifle',
        price = math.random(4500,9000)
    },
    [10] = {
        item = 'weapon_heavysniper_mk2',
        price = math.random(6000,12000)
    },
    [11] = {
        item = 'weapon_marksmanrifle_mk2',
        price = math.random(75000,75000)
    },
    [12] = {
        item = 'weapon_heavysniper',
        price = math.random(6000,12000)
    },
    [13] = {
        item = 'weapon_marksmanrifle',
        price = math.random(4000,8000)
    },
    [14] = {
        item = 'weapon_pistol_mk2',
        price = math.random(900,1800)
    },
    [15] = {
        item = 'weapon_revolver_mk2',
        price = math.random(1050,2100)
    },
    [16] = {
        item = 'weapon_snspistol_mk2',
        price = math.random(750,1500)
    },
    [17] = {
        item = 'weapon_smg_mk2',
        price = math.random(1800,3600)
    },
    [18] = {
        item = 'weapon_pumpshotgun_mk2',
        price = math.random(1500,3000)
    },
    [19] = {
        item = 'weapon_assaultrifle_mk2',
        price = math.random(2400,4800)
    },
    [20] = {
        item = 'weapon_carbinerifle_mk2',
        price = math.random(2400,4800)
    },
    [21] = {
        item = 'weapon_specialcarbine_mk2',
        price = math.random(2550,5100)
    },
    [22] = {
        item = 'light_combat_vest1',
        price = math.random(100,500)
    },
    [23] = {
        item = 'light_combat_vest2',
        price = math.random(100,500)
    },
    [24] = {
        item = 'light_combat_vest3',
        price = math.random(100,500)
    },
    [25] = {
        item = 'light_combat_vest4',
        price = math.random(100,500)
    },
    [26] = {
        item = 'light_combat_vest5',
        price = math.random(100,500)
    },
    [27] = {
        item = 'heavy_combat_vest1',
        price = math.random(500,2500)
    },
    [28] = {
        item = 'heavy_combat_vest2',
        price = math.random(500,2500)
    },
    [29] = {
        item = 'heavy_combat_vest3',
        price = math.random(500,2500)
    },
    [30] = {
        item = 'hinterland_duffle',
        price = math.random(1000,2000)
    },
    [31] = {
        item = 'leather_duffle',
        price = math.random(1000,2000)
    },
    [32] = {
        item = 'chianski_duffle',
        price = math.random(1000,2000)
    },
    [33] = {
        item = 'gas_mask',
        price = math.random(1000,2000)
    },
    [34] = {
        item = 'skunk_crop',
        price = math.random(50,50)
    },
    [35] = {
        item = 'lemonhaze_crop',
        price = math.random(150,150)
    },
    [36] = {
        item = 'bluedream_crop',
        price = math.random(150,150)
    },
    [37] = {
        item = 'grapeape_crop',
        price = math.random(200,200)
    },
    [38] = {
        item = 'skywalkerog_crop',
        price = math.random(200,200)
    },
    [39] = {
        item = 'skunk_eighth',
        price = math.random(400,400)
    },
    [40] = {
        item = 'lemonhaze_eighth',
        price = math.random(625,625)
    },
    [41] = {
        item = 'bluedream_eighth',
        price = math.random(625,625)
    },
    [42] = {
        item = 'grapeape_eighth',
        price = math.random(750,750)
    },
    [43] = {
        item = 'skywalkerog_eighth',
        price = math.random(750,750)
    },
    [44] = {
        item = 'skunk_oz',
        price = math.random(4000,4000)
    },
    [45] = {
        item = 'lemonhaze_oz',
        price = math.random(5000,5000)
    },
    [46] = {
        item = 'bluedream_oz',
        price = math.random(5000,5000)
    },
    [47] = {
        item = 'grapeape_oz',
        price = math.random(6000,6000)
    },
    [48] = {
        item = 'skywalkerog_oz',
        price = math.random(6000,6000)
    },
    [49] = {
        item = 'coca_leaf',
        price = math.random(300,300)
    },
    [50] = {
        item = 'cocaine',
        price = math.random(1500,1500)
    },
    [51] = {
        item = 'cocaine_baggy',
        price = math.random(8000,8000)
    },
    [52] = {
        item = 'red_keycard',
        price = math.random(7500,7500)
    },
    [53] = {
        item = 'goldbar',
        price = math.random(5000,5000)
    },
    [54] = {
        item = 'captainskull',
        price = math.random(10000,10000)
    },
    [55] = {
        item = 'weapon_minigun',
        price = math.random(16500,41250)
    },
    [56] = {
        item = 'skunk_brick',
        price = math.random(10000,10000)
    },
    [57] = {
        item = 'lemonhaze_brick',
        price = math.random(12500,12500)
    },
    [58] = {
        item = 'bluedream_brick',
        price = math.random(15000,15000)
    },
    [59] = {
        item = 'grapeape_brick',
        price = math.random(17500,17500)
    },
    [60] = {
        item = 'skywalkerog_brick',
        price = math.random(20000,20000)
    },
    [61] = {
        item = 'coke_brick',
        price = math.random(60000,60000)
    },
    [62] = {
        item = 'weapon_molotov',
        price = math.random(100,200)
    },
    [63] = {
        item = 'weapon_smokegrenade',
        price = math.random(100,200)
    },
    [64] = {
        item = 'weapon_bzgas',
        price = math.random(500,1000)
    },
    [65] = {
        item = 'cpu',
        price = math.random(15000,15000)
    },
    [66] = {
        item = 'ssd',
        price = math.random(9000,9000)
    },
    [67] = {
        item = 'ram',
        price = math.random(5000,5000)
    },
    [68] = {
        item = 'cpufan',
        price = math.random(800,800)
    },
    [69] = {
        item = 'mouse',
        price = math.random(1000,1000)
    },
    [70] = {
        item = 'keyboard',
        price = math.random(1500,1500)
    },
    [71] = {
        item = 'psu',
        price = math.random(2000,2000)
    },
    [72] = {
        item = 'flashdrive',
        price = math.random(4000,4000)
    },
    [73] = {
        item = 'gpu',
        price = math.random(30000,30000)
    },
    [74] = {
        item = 'intelligence',
        price = math.random(10000,10000)
    },
    [75] = {
        item = 'military_documents',
        price = math.random(8000,8000)
    },
}

Config.MeltingItems = { -- meltTime is amount of time in minutes per item
    [1] = {
        item = 'goldchain',
        rewards = {
            [1] = {
                item = 'goldbar',
                amount = 2
            }
        },
        meltTime = 0.15
    },
    [2] = {
        item = 'diamond_ring',
        rewards = {
            [1] = {
                item = 'diamond',
                amount = 1
            },
            [2] = {
                item = 'gold_bar',
                amount = 1
            }
        },
        meltTime = 0.15
    },
    [3] = {
        item = 'rolex',
        rewards = {
            [1] = {
                item = 'diamond',
                amount = 1
            },
            [2] = {
                item = 'goldbar',
                amount = 1
            },
            [3] = {
                item = 'electronickit',
                amount = 1
            }
        },
        meltTime = 0.15
    },
    [4] = {
        item = '10kgoldchain',
        rewards = {
            [1] = {
                item = 'diamond',
                amount = 5
            },
            [2] = {
                item = 'goldbar',
                amount = 1
            }
        },
        meltTime = 0.15
    },
}
