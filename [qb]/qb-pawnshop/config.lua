Config = {}

Config.PawnLocation = {
    [1] = {
            coords = vector3(-425.15, 1105.22, 327.68),
            length = 0.7,
            width = 0.7,
            heading = 100.01,
            debugPoly = false,
            minZ = 327.00,
            maxZ = 328.55,
            distance = 5.0
        },
    }

Config.BankMoney = false -- Set to true if you want the money to go into the players bank
Config.UseTimes = false -- Set to false if you want the pawnshop open 24/7
Config.TimeOpen = 7 -- Opening Time
Config.TimeClosed = 17 -- Closing Time
Config.SendMeltingEmail = true

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

Config.PawnItems = {
    -- melee
    [1] = {
        item = 'weapon_knife',
        price = math.random(200,400)
    },
    [2] = {
        item = 'weapon_switchblade',
        price = math.random(200,400)
    },
    [3] = {
        item = 'weapon_machete',
        price = math.random(250,500)
    },
    [4] = {
        item = 'weapon_crowbar',
        price = math.random(100,200)
    },
    [5] = {
        item = 'weapon_knuckle',
        price = math.random(150,300)
    },
    [6] = {
        item = 'weapon_golfclub',
        price = math.random(100,200)
    },
    [7] = {
        item = 'weapon_hatchet',
        price = math.random(1000,2000)
    },
    [8] = {
        item = 'weapon_stone_hatchet',
        price = math.random(1500,3000)
    },
    [9] = {
        item = 'weapon_battleaxe',
        price = math.random(300,600)
    },
    -- pistols
    [10] = {
        item = 'weapon_snspistol',
        price = math.random(500,1000)
    },
    [11] = {
        item = 'weapon_vintagepistol',
        price = math.random(600,1200)
    },
    [12] = {
        item = 'weapon_pistol',
        price = math.random(600,1200)
    },
    [13] = {
        item = 'weapon_combatpistol',
        price = math.random(600,1200)
    },
    [14] = {
        item = 'weapon_appistol',
        price = math.random(900,1800)
    },
    [15] = {
        item = 'weapon_heavypistol',
        price = math.random(800,1600)
    },
    [16] = {
        item = 'weapon_revolver',
        price = math.random(700,1400)
    },
    [17] = {
        item = 'weapon_doubleaction',
        price = math.random(800,1600)
    },
    [18] = {
        item = 'weapon_navyrevolver',
        price = math.random(800,1600)
    },
    [19] = {
        item = 'weapon_pistol50',
        price = math.random(800,1600)
    },
    --- shotguns
    [20] = {
        item = 'weapon_sawnoffshotgun',
        price = math.random(900,1800)
    },
    [21] = {
        item = 'weapon_dbshotgun',
        price = math.random(900,1800)
    },
    [22] = {
        item = 'weapon_pumpshotgun',
        price = math.random(1000,2000)
    },
    [23] = {
        item = 'weapon_combatshotgun',
        price = math.random(1100,2200)
    },
    [24] = {
        item = 'weapon_bullpupshotgun',
        price = math.random(900,1800)
    },
    [25] = {
        item = 'weapon_assaultshotgun',
        price = math.random(1400,2800)
    },
    [26] = {
        item = 'weapon_autoshotgun',
        price = math.random(1200,2400)
    },
    [27] = {
        item = 'weapon_heavyshotgun',
        price = math.random(1100,2200)
    },
    --- smg
    [28] = {
        item = 'weapon_microsmg',
        price = math.random(1000,2000)
    },
    [29] = {
        item = 'weapon_minismg',
        price = math.random(1100,2200)
    },
    [30] = {
        item = 'weapon_machinepistol',
        price = math.random(800,1600)
    },
    [31] = {
        item = 'weapon_smg',
        price = math.random(1200,2400)
    },
    [32] = {
        item = 'weapon_assaultsmg',
        price = math.random(1300,2600)
    },
    [33] = {
        item = 'weapon_combatpdw',
        price = math.random(1300,2600)
    },
    -- assault rifles
    [34] = {
        item = 'weapon_assaultrifle',
        price = math.random(1600,3200)
    },
    [35] = {
        item = 'weapon_carbinerifle',
        price = math.random(1600,3200)
    },
    [36] = {
        item = 'weapon_advancedrifle',
        price = math.random(1800,3600)
    },
    [37] = {
        item = 'weapon_specialcarbine',
        price = math.random(1700,3400)
    },
    [38] = {
        item = 'weapon_bullpuprifle',
        price = math.random(1400,2800)
    },
    [39] = {
        item = 'weapon_compactrifle',
        price = math.random(1500,3000)
    },
    [40] = {
        item = 'weapon_militaryrifle',
        price = math.random(2000,4000)
    },
    -- Vehicle Items
    [41] = {
        item = 'vehicleparts',
        price = math.random(5,10)
    },
    [42] = {
        item = 'engineoil',
        price = math.random(100,200)
    },
    [43] = {
        item = 'cables',
        price = math.random(1000,2000)
    },
    [44] = {
        item = 'truck_battery',
        price = math.random(4000,8000)
    },
    [45] = {
        item = 'antivirals',
        price = math.random(500,1000)
    },
    [46] = {
        item = 'engineoil',
        price = math.random(50,100)
    },
    [47] = {
        item = 'radiationpill',
        price = math.random(100,200)
    },
    [48] = {
        item = '24v_battery',
        price = math.random(1500,3000)
    },
    [49] = {
        item = '12v_battery',
        price = math.random(1000,2000)
    },
    [50] = {
        item = '6v_battery',
        price = math.random(500,1000)
    },
    [51] = {
        item = 'fixkit',
        price = math.random(750,1500)
    },
    [52] = {
        item = 'toolbox',
        price = math.random(750,1500)
    },
    [53] = {
        item = 'ducttape',
        price = math.random(100,200)
    },
    [54] = {
        item = 'underglow_controller',
        price = math.random(450,900)
    },
    [55] = {
        item = 'headlights',
        price = math.random(500,1000)
    },
    [56] = {
        item = 'tint_supplies',
        price = math.random(500,1000)
    },
    [57] = {
        item = 'customplate',
        price = math.random(300,600)
    },
    [58] = {
        item = 'hood',
        price = math.random(800,1600)
    },
    [59] = {
        item = 'roof',
        price = math.random(700,1400)
    },
    [60] = {
        item = 'spoiler',
        price = math.random(300,600)
    },
    [61] = {
        item = 'bumper',
        price = math.random(100,200)
    },
    [62] = {
        item = 'skirts',
        price = math.random(100,200)
    },
    [63] = {
        item = 'exhaust',
        price = math.random(800,1600)
    },
    [64] = {
        item = 'seat',
        price = math.random(500,1000)
    },
    [65] = {
        item = 'rollcage',
        price = math.random(250,500)
    },
    [66] = {
        item = 'rims',
        price = math.random(700,1400)
    },
    [67] = {
        item = 'livery',
        price = math.random(1000,2000)
    },
    [68] = {
        item = 'horn',
        price = math.random(50,100)
    },
    [69] = {
        item = 'internals',
        price = math.random(400,800)
    },
    [70] = {
        item = 'externals',
        price = math.random(400,800)
    },
    [71] = {
        item = 'car_armor',
        price = math.random(5000,10000)
    },
    [72] = {
        item = 'engine1',
        price = math.random(250,500)
    },
    [73] = {
        item = 'engine2',
        price = math.random(1000,2000)
    },
    [74] = {
        item = 'engine3',
        price = math.random(3000,6000)
    },
    [75] = {
        item = 'engine4',
        price = math.random(7000,14000)
    },
    [76] = {
        item = 'transmission1',
        price = math.random(150,300)
    },
    [77] = {
        item = 'transmission2',
        price = math.random(300,600)
    },
    [78] = {
        item = 'transmission3',
        price = math.random(450,900)
    },
    [79] = {
        item = 'transmission4',
        price = math.random(600,1200)
    },
    [80] = {
        item = 'brakes1',
        price = math.random(400,800)
    },
    [81] = {
        item = 'brakes2',
        price = math.random(800,1600)
    },
    [82] = {
        item = 'brakes3',
        price = math.random(1200,2400)
    },
    [83] = {
        item = 'suspension1',
        price = math.random(200,400)
    },
    [84] = {
        item = 'suspension2',
        price = math.random(400,800)
    },
    [85] = {
        item = 'suspension3',
        price = math.random(600,1200)
    },
    [86] = {
        item = 'suspension4',
        price = math.random(800,1600)
    },
    [87] = {
        item = 'suspension5',
        price = math.random(1000,2000)
    },
    [88] = {
        item = 'bprooftires',
        price = math.random(8000,16000)
    },
    [89] = {
        item = 'harness',
        price = math.random(250,500)
    },
    [90] = {
        item = 'weapon_hammer',
        price = math.random(100,200)
    },
    [91] = {
        item = 'handsaw',
        price = math.random(250,500)
    },
    [92] = {
        item = 'boxed_nails',
        price = math.random(5000,10000)
    },
    [93] = {
        item = 'weapon_hatchet',
        price = math.random(300,600)
    },
    [94] = {
        item = 'weapon_stone_hatchet',
        price = math.random(500,1000)
    },
    [95] = {
        item = 'weapon_flashlight',
        price = math.random(100,200)
    },
    [96] = {
        item = 'radio',
        price = math.random(50,100)
    },
    [97] = {
        item = 'emptycanteen',
        price = math.random(50,100)
    },
    [98] = {
        item = 'divinggear',
        price = math.random(250,500)
    },
    [99] = {
        item = 'trowel',
        price = math.random(25,50)
    },
    [100] = {
        item = 'bkr_prop_biker_campbed_01',
        price = math.random(250,500)
    },
    [101] = {
        item = 'v_tre_sofa_mess_b_s',
        price = math.random(900,1800)
    },
    [102] = {
        item = 'prop_generator_01a',
        price = math.random(3000,6000)
    },
    [103] = {
        item = 'prop_worklight_02a',
        price = math.random(125,250)
    },
    [104] = {
        item = 'prop_worklight_04c',
        price = math.random(250,500)
    },
    [105] = {
        item = 'prop_worklight_01a',
        price = math.random(500,1000)
    },
    [106] = {
        item = 'prop_box_wood01a',
        price = math.random(1500,3000)
    },
    [107] = {
        item = 'gr_prop_gr_gunlocker_01a',
        price = math.random(2000,4000)
    },
    [108] = {
        item = 'p_v_43_safe_s',
        price = math.random(2000,4000)
    },
    [109] = {
        item = 'xm3_prop_xm3_whshelf_03a',
        price = math.random(1000,2000)
    },
    [110] = {
        item = 'v_ind_cfcovercrate',
        price = math.random(500,1000)
    },
    [111] = {
        item = 'bandage',
        price = math.random(25,50)
    },
    [112] = {
        item = 'painkillers',
        price = math.random(10,20)
    },
    [113] = {
        item = 'ifaks',
        price = math.random(45,90)
    },
    [114] = {
        item = 'weapon_flaregun',
        price = math.random(300,600)
    },
    [115] = {
        item = 'fitbit',
        price = math.random(10,20)
    },
    [116] = {
        item = 'weapon_bottle',
        price = math.random(10,20)
    },
    [117] = {
        item = 'weapon_poolcue',
        price = math.random(20,40)
    },
    [118] = {
        item = 'binoculars',
        price = math.random(100,200)
    },
    -- Ammo
    [119] = {
        item = 'pistol_ammo',
        price = math.random(50,100)
    },
    [120] = {
        item = 'shotgun_ammo',
        price = math.random(75,150)
    },
    [121] = {
        item = 'smg_ammo',
        price = math.random(75,150)
    },
    [122] = {
        item = 'rifle_ammo',
        price = math.random(100,200)
    },
    [123] = {
        item = 'mg_ammo',
        price = math.random(150,300)
    },
    [124] = {
        item = 'snp_ammo',
        price = math.random(200,400)
    },
    [125] = {
        item = 'codelock',
        price = math.random(2000,4000)
    },
    [126] = {
        item = 'fishingrod',
        price = math.random(250,500)
    },
    [127] = {
        item = 'fishingrod2',
        price = math.random(400,800)
    },
    [128] = {
        item = 'fishingrod3',
        price = math.random(400,800)
    },
    [129] = {
        item = 'fishinglure',
        price = math.random(50,100)
    },
    [130] = {
        item = 'skill-reel',
        price = math.random(90,180)
    },
    [131] = {
        item = 'fishinglure2',
        price = math.random(90,180)
    },
    [132] = {
        item = 'fishingbait',
        price = math.random(5,10)
    },
    [133] = {
        item = 'pro-reel',
        price = math.random(200,400)
    },
    [134] = {
        item = 'meat_cow',
        price = math.random(200,400)
    },
    [135] = {
        item = 'skin_cow',
        price = math.random(2000,4000)
    },
    [136] = {
        item = 'meat_deer',
        price = math.random(250,500)
    },
    [137] = {
        item = 'skin_deer',
        price = math.random(2500,5000)
    },
    [138] = {
        item = 'meat_cayote',
        price = math.random(100,200)
    },
    [139] = {
        item = 'skin_cayote',
        price = math.random(1000,2000)
    },
    [140] = {
        item = 'meat_mtlion',
        price = math.random(200,400)
    },
    [141] = {
        item = 'skin_mtlion',
        price = math.random(1000,2000)
    },
    [142] = {
        item = 'fish',
        price = math.random(100,200)
    },
    [143] = {
        item = 'stripedbass',
        price = math.random(250,500)
    },
    [144] = {
        item = 'bluefish',
        price = math.random(350,600)
    },
    [145] = {
        item = 'redfish',
        price = math.random(350,700)
    },
    [146] = {
        item = 'goldfish',
        price = math.random(500,1000)
    },
    [147] = {
        item = 'largemouthbass',
        price = math.random(650,1300)
    },
    [148] = {
        item = 'swordfish',
        price = math.random(800,1600)
    },
    [149] = {
        item = 'salmon',
        price = math.random(900,1800)
    },
    [150] = {
        item = 'catfish',
        price = math.random(1100,2200)
    },
    [151] = {
        item = 'rainbowtrout',
        price = math.random(1250,2500)
    },
    [152] = {
        item = 'tigershark',
        price = math.random(1600,3200)
    },
    [153] = {
        item = 'stingraymeat',
        price = math.random(1800,3600)
    },
    [154] = {
        item = 'tuna-fish',
        price = math.random(2000,4000)
    },
    [155] = {
        item = 'killerwhale',
        price = math.random(5000,10000)
    },
    [156] = {
        item = 'metalscrap',
        price = math.random(15,30)
    },
    [157] = {
        item = 'plastic',
        price = math.random(5,10)
    },
    [158] = {
        item = 'copper',
        price = math.random(15,30)
    },
    [159] = {
        item = 'rubber',
        price = math.random(15,30)
    },
    [160] = {
        item = 'steel',
        price = math.random(45,60)
    },
    [161] = {
        item = 'meat_pig',
        price = math.random(100,200)
    },
    [162] = {
        item = 'skin_pig',
        price = math.random(1000,2000)
    },
    [163] = {
        item = 'meat_rat',
        price = math.random(10,20)
    },
    [164] = {
        item = 'skin_rat',
        price = math.random(100,200)
    },
    [165] = {
        item = 'meat_rabbit',
        price = math.random(25,50)
    },
    [166] = {
        item = 'skin_rabbit',
        price = math.random(250,500)
    },
    [167] = {
        item = 'lockpick',
        price = math.random(500,1000)
    },
    [168] = {
        item = 'wrench',
        price = math.random(100,200)
    },
    [169] = {
        item = 'nightstick',
        price = math.random(50,100)
    },
    [170] = {
        item = 'weapon_stungun',
        price = math.random(300,600)
    },
    [171] = {
        item = 'weapon_marksmanpistol',
        price = math.random(400,800)
    },
    [172] = {
        item = 'repairkit',
        price = math.random(800,1600)
    },
    [173] = {
        item = 'advancedlockpick',
        price = math.random(1000,2000)
    },
    [174] = {
        item = 'electronickit',
        price = math.random(200,400)
    },
    [175] = {
        item = 'screwdriverset',
        price = math.random(100,200)
    },
    [176] = {
        item = 'drill',
        price = math.random(600,1200)
    },
    [177] = {
        item = 'cleaningkit',
        price = math.random(50,100)
    },
    [178] = {
        item = 'mechanic_tools',
        price = math.random(200,400)
    },
    [179] = {
        item = 'mechboard',
        price = math.random(100,200)
    },
    [180] = {
        item = 'turbo',
        price = math.random(1000,2000)
    },
    [181] = {
        item = 'clip_attachment',
        price = math.random(200,400)
    },
    [182] = {
        item = 'oilp1',
        price = math.random(300,600)
    },
    [183] = {
        item = 'oilp2',
        price = math.random(400,800)
    },
    [184] = {
        item = 'oilp3',
        price = math.random(500,1000)
    },
    [185] = {
        item = 'drives1',
        price = math.random(500,1000)
    },
    [186] = {
        item = 'drives2',
        price = math.random(650,1300)
    },
    [187] = {
        item = 'drives3',
        price = math.random(800,1600)
    },
    [188] = {
        item = 'cylind1',
        price = math.random(400,800)
    },
    [189] = {
        item = 'cylind2',
        price = math.random(600,1200)
    },
    [190] = {
        item = 'cylind3',
        price = math.random(800,1600)
    },
    [191] = {
        item = 'cables1',
        price = math.random(100,250)
    },
    [192] = {
        item = 'cables2',
        price = math.random(200,400)
    },
    [193] = {
        item = 'cables3',
        price = math.random(300,600)
    },
    [194] = {
        item = 'fueltank1',
        price = math.random(150,300)
    },
    [195] = {
        item = 'fueltank2',
        price = math.random(450,600)
    },
    [196] = {
        item = 'fueltank3',
        price = math.random(750,900)
    },
    [197] = {
        item = 'bicycle_tire',
        price = math.random(250,500)
    },
    [198] = {
        item = 'bike_tire',
        price = math.random(1000,2500)
    },
    [199] = {
        item = 'car_tire',
        price = math.random(3000, 6000)
    },
    [200] = {
        item = 'truck_tire',
        price = math.random(4000, 8000)
    },
    [201] = {
        item = 'firstaid',
        price = math.random(800, 1600)
    },
    [202] = {
        item = 'drum_attachment',
        price = math.random(550, 1100)
    },
    [203] = {
        item = 'flashlight_attachment',
        price = math.random(175, 350)
    },
    [204] = {
        item = 'suppressor_attachment',
        price = math.random(2000, 4000)
    },
    [205] = {
        item = 'smallscope_attachment',
        price = math.random(375, 750)
    },
    [206] = {
        item = 'medscope_attachment',
        price = math.random(425, 850)
    },
    [207] = {
        item = 'largescope_attachment',
        price = math.random(500, 1000)
    },
    [208] = {
        item = 'holoscope_attachment',
        price = math.random(550, 1100)
    },
    [209] = {
        item = 'advscope_attachment',
        price = math.random(600, 1200)
    },
    [210] = {
        item = 'nvscope_attachment',
        price = math.random(675, 1350)
    },
    [211] = {
        item = 'thermalscope_attachment',
        price = math.random(700, 1400)
    },
    [212] = {
        item = 'flat_muzzle_brake',
        price = math.random(300, 1600)
    },
    [213] = {
        item = 'tactical_muzzle_brake',
        price = math.random(310, 620)
    },
    [214] = {
        item = 'fat_end_muzzle_brake',
        price = math.random(325, 650)
    },
    [215] = {
        item = 'precision_muzzle_brake',
        price = math.random(400, 800)
    },
    [216] = {
        item = 'heavy_duty_muzzle_brake',
        price = math.random(450, 900)
    },
    [217] = {
        item = 'slanted_muzzle_brake',
        price = math.random(450, 900)
    },
    [218] = {
        item = 'split_end_muzzle_brake',
        price = math.random(475, 950)
    },
    [219] = {
        item = 'squared_muzzle_brake',
        price = math.random(500, 1000)
    },
    [220] = {
        item = 'bellend_muzzle_brake',
        price = math.random(500, 1000)
    },
    [221] = {
        item = 'barrel_attachment',
        price = math.random(600, 1200)
    },
    [222] = {
        item = 'grip_attachment',
        price = math.random(260, 520)
    },
    [223] = {
        item = 'comp_attachment',
        price = math.random(180, 360)
    },
    [224] = {
        item = 'luxuryfinish_attachment',
        price = math.random(1000, 2000)
    },
    [225] = {
        item = 'digicamo_attachment',
        price = math.random(1000, 2000)
    },
    [226] = {
        item = 'brushcamo_attachment',
        price = math.random(1000, 2000)
    },
    [227] = {
        item = 'woodcamo_attachment',
        price = math.random(1000, 2000)
    },
    [228] = {
        item = 'skullcamo_attachment',
        price = math.random(1000, 2000)
    },
    [229] = {
        item = 'sessantacamo_attachment',
        price = math.random(1000, 2000)
    },
    [230] = {
        item = 'perseuscamo_attachment',
        price = math.random(1000, 2000)
    },
    [231] = {
        item = 'leopardcamo_attachment',
        price = math.random(1000, 2000)
    },
    [232] = {
        item = 'zebracamo_attachment',
        price = math.random(1000, 2000)
    },
    [233] = {
        item = 'geocamo_attachment',
        price = math.random(1000, 2000)
    },
    [234] = {
        item = 'boomcamo_attachment',
        price = math.random(1000, 2000)
    },
    [235] = {
        item = 'patriotcamo_attachment',
        price = math.random(1000, 2000)
    },
    [236] = {
        item = 'weapontint_0',
        price = math.random(300, 600)
    },
    [237] = {
        item = 'weapontint_1',
        price = math.random(300, 600)
    },
    [238] = {
        item = 'weapontint_2',
        price = math.random(300, 600)
    },
    [239] = {
        item = 'weapontint_3',
        price = math.random(300, 600)
    },
    [240] = {
        item = 'weapontint_4',
        price = math.random(300, 600)
    },
    [241] = {
        item = 'weapontint_5',
        price = math.random(300, 600)
    },
    [242] = {
        item = 'weapontint_6',
        price = math.random(300, 600)
    },
    [243] = {
        item = 'weapontint_7',
        price = math.random(300, 600)
    },
    [244] = {
        item = 'weapontint_mk2_0',
        price = math.random(500, 1000)
    },
    [245] = {
        item = 'weapontint_mk2_1',
        price = math.random(500, 1000)
    },
    [246] = {
        item = 'weapontint_mk2_2',
        price = math.random(500, 1000)
    },
    [247] = {
        item = 'weapontint_mk2_3',
        price = math.random(500, 1000)
    },
    [248] = {
        item = 'weapontint_mk2_4',
        price = math.random(500, 1000)
    },
    [249] = {
        item = 'weapontint_mk2_5',
        price = math.random(500, 1000)
    },
    [250] = {
        item = 'weapontint_mk2_6',
        price = math.random(500, 1000)
    },
    [251] = {
        item = 'weapontint_mk2_7',
        price = math.random(500, 1000)
    },
    [252] = {
        item = 'weapontint_mk2_8',
        price = math.random(500, 1000)
    },
    [253] = {
        item = 'weapontint_mk2_9',
        price = math.random(500, 1000)
    },
    [254] = {
        item = 'weapontint_mk2_10',
        price = math.random(500, 1000)
    },
    [255] = {
        item = 'weapontint_mk2_11',
        price = math.random(500, 1000)
    },
    [256] = {
        item = 'weapontint_mk2_12',
        price = math.random(500, 1000)
    },
    [257] = {
        item = 'weapontint_mk2_13',
        price = math.random(500, 1000)
    },
    [258] = {
        item = 'weapontint_mk2_14',
        price = math.random(500, 1000)
    },
    [259] = {
        item = 'weapontint_mk2_15',
        price = math.random(500, 1000)
    },
    [260] = {
        item = 'weapontint_mk2_16',
        price = math.random(500, 1000)
    },
    [261] = {
        item = 'weapontint_mk2_17',
        price = math.random(500, 1000)
    },
    [262] = {
        item = 'weapontint_mk2_18',
        price = math.random(500, 1000)
    },
    [263] = {
        item = 'weapontint_mk2_19',
        price = math.random(500, 1000)
    },
    [264] = {
        item = 'weapontint_mk2_20',
        price = math.random(500, 1000)
    },
    [265] = {
        item = 'weapontint_mk2_21',
        price = math.random(500, 1000)
    },
    [266] = {
        item = 'weapontint_mk2_22',
        price = math.random(500, 1000)
    },
    [267] = {
        item = 'weapontint_mk2_23',
        price = math.random(500, 1000)
    },
    [268] = {
        item = 'weapontint_mk2_24',
        price = math.random(500, 1000)
    },
    [269] = {
        item = 'weapontint_mk2_25',
        price = math.random(500, 1000)
    },
    [270] = {
        item = 'weapontint_mk2_26',
        price = math.random(500, 1000)
    },
    [271] = {
        item = 'weapontint_mk2_27',
        price = math.random(500, 1000)
    },
    [272] = {
        item = 'weapontint_mk2_28',
        price = math.random(500, 1000)
    },
    [273] = {
        item = 'weapontint_mk2_29',
        price = math.random(500, 1000)
    },
    [274] = {
        item = 'model_door_wood',
        price = math.random(300, 600)
    },
    [275] = {
        item = 'model_window_wood',
        price = math.random(200, 400)
    },
    [276] = {
        item = 'model_windowway_wood',
        price = math.random(1000, 2000)
    },
    [277] = {
        item = 'model_wall_wood',
        price = math.random(1000, 2000)
    },
    [278] = {
        item = 'model_doorway_wood',
        price = math.random(1000, 2000)
    },
    [279] = {
        item = 'model_gateway_wood',
        price = math.random(1000, 2000)
    },
    [280] = {
        item = 'model_base_wood',
        price = math.random(1000, 2000)
    },
    [281] = {
        item = 'model_ceiling_wood',
        price = math.random(1000, 2000)
    },
    [282] = {
        item = 'model_ceilingstairs_wood',
        price = math.random(1000, 2000)
    },
    [283] = {
        item = 'model_pillar_wood',
        price = math.random(1000, 2000)
    },
    [284] = {
        item = 'model_gate_wood',
        price = math.random(1000, 2000)
    },
    [285] = {
        item = 'model_bigwall_wood',
        price = math.random(1000, 2000)
    },
    [286] = {
        item = 'model_biggateway_wood',
        price = math.random(1000, 2000)
    },
    [287] = {
        item = 'model_biggate_wood',
        price = math.random(1000, 2000)
    },
    [288] = {
        item = 'bkr_prop_biker_campbed_01',
        price = math.random(800, 1600)
    },
    [289] = {
        item = 'prop_generator_01a',
        price = math.random(2500, 5000)
    },
    [290] = {
        item = 'prop_box_wood01a',
        price = math.random(1000, 2000)
    },
    [291] = {
        item = 'gr_prop_gr_gunlocker_01a',
        price = math.random(1500, 3000)
    },
    [292] = {
        item = 'p_v_43_safe_s',
        price = math.random(2000, 4000)
    },
    [293] = {
        item = 'prop_worklight_02a',
        price = math.random(600, 1200)
    },
    [294] = {
        item = 'prop_worklight_04c',
        price = math.random(750, 1400)
    },
    [295] = {
        item = 'gr_prop_gr_hobo_stove_01',
        price = math.random(500, 1000)
    },
    [296] = {
        item = 'prop_worklight_01a',
        price = math.random(500, 1000)
    },
    [297] = {
        item = 'model_mg_stand',
        price = math.random(1500, 3000)
    },
    [298] = {
        item = 'model_fire_turret',
        price = math.random(1500, 3000)
    },
    [299] = {
        item = 'model_grenadelauncher',
        price = math.random(4000, 8000)
    },
    [300] = {
        item = 'model_rpg',
        price = math.random(5000, 10000)
    },
    [301] = {
        item = 'model_mg',
        price = math.random(2000, 4000)
    },
    [302] = {
        item = 'model_spikeswall_wood',
        price = math.random(1000, 2000)
    },
    [303] = {
        item = 'model_electricfence',
        price = math.random(2000, 4000)
    },
    [304] = {
        item = 'wood_plank',
        price = math.random(50, 100)
    },
    [305] = {
        item = 'wood_log',
        price = math.random(100, 200)
    },
    [306] = {
        item = 'aluminum',
        price = math.random(15, 30)
    },
    [307] = {
        item = 'iron',
        price = math.random(75, 90)
    },
    [308] = {
        item = 'weapon_nightstick',
        price = math.random(100, 200)
    },
    [309] = {
        item = 'glass',
        price = math.random(5, 10)
    },
    [310] = {
        item = 'paintcan',
        price = math.random(900, 1800)
    },
    [311] = {
        item = 'tires',
        price = math.random(1000, 2000)
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
                item = 'goldbar',
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
