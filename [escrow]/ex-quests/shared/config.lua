Config = {}

Config.MissionTextTime = 60 -- Mission text display time in seconds

Config.QuestPeds = {
    [1] = { model = `u_m_m_edtoh`, location = vector4(-457.86, 1161.3, 325.86, 226.36) },
    -- Add more NPCs for different quests
}

Config.Quests = {
    [1] = {
        type = 1,
        rewards = { 'medicalbox' },
        missiontext = 'Find a medical crate in the pillbox and bring it back to the survivor camp',
        prop = { model = `xm_prop_smug_Crate_s_medical`, location = vector3(344.36, -589.78, 43.32), rewards = { 'medicalsupplies' }}
    },
    [2] = {
        type = 2,
        rewards = { 'ammocase' },
        missiontext = 'Locate and rescue the stranded soldier at the pier',
        npc = { model = `s_m_y_armymech_01`, location = vector4(-1838.58, -1269.12, 3.45, 56.09), rewards = { 'ammunitioncrate' }, npctext = 'Help me get out of here, I have valuable supplies!' }
    },
    [3] = {
        type = 1,
        rewards = { 'foodbox' },
        missiontext = 'Head to the gas station, find a food crate and bring it back to the survivor camp',
        prop = { model = `prop_cs_cardbox_01`, location = vector3(1163.68, -314.48, 69.21), rewards = { 'foodsupplies' } }
    },
    [4] = {
        type = 2,
        rewards = { 'toolcrate' },
        missiontext = 'Find and retrieve a toolbox from an engineer on El Rancho',
        npc = { model = `s_m_m_gaffer_01`, location = vector4(1193.73, -1258.25, 35.21, 237.3), rewards = { 'toolcase' }, npctext = 'I need to fix the generator, protect me!' }
    },
    -- [5] = {
    --     type = 1,
    --     rewards = { 'waterbottles' },
    --     missiontext = 'Find a clean water source in the mountains and bring back water bottles',
    --     prop = { model = `prop_drink_water`, location = vector3(1414.92, 6402.33, 24.12), rewards = { 'watercase' } }
    -- },
    -- [6] = {
    --     type = 2,
    --     rewards = { 'flaregun' },
    --     missiontext = 'Rescue the survivor trapped in the warehouse and bring them to the evacuation point',
    --     npc = { model = `a_m_m_afriamer_01`, location = vector4(972.45, -2307.81, 30.55, 276.61), rewards = { 'flaregun' }, npctext = 'Please help me, I can guide you to safety!' }
    -- },
    -- [7] = {
    --     type = 1,
    --     rewards = { 'toolbox' },
    --     missiontext = 'Retrieve a toolbox from the abandoned vehicle repair shop',
    --     prop = { model = `prop_toolchest_05`, location = vector3(-1280.44, -1410.67, 3.45), rewards = { 'toolbox' } }
    -- },
    -- [8] = {
    --     type = 2,
    --     rewards = { 'ammocase' },
    --     missiontext = 'Deliver ammunition to the outpost at the military base',
    --     npc = { model = `s_m_y_marine_01`, location = vector4(926.18, -3112.76, 5.9, 90.29), rewards = { 'ammunitioncrate' }, npctext = 'We are running low on ammo, bring us supplies!' }
    -- },
    -- [9] = {
    --     type = 1,
    --     rewards = { 'foodbox' },
    --     missiontext = 'Scavenge for canned food in the abandoned industrial zone',
    --     prop = { model = `prop_food_van_01`, location = vector3(2385.12, 2964.54, 46.27), rewards = { 'foodsupplies' } }
    -- },
    -- [10] = {
    --     type = 2,
    --     rewards = { 'medkit' },
    --     missiontext = 'Escort the medic to the injured survivor in the forest',
    --     npc = { model = `s_m_m_paramedic_01`, location = vector4(-792.13, 5907.22, 24.33, 287.78), rewards = { 'medicalkit' }, npctext = 'Hurry, someone needs urgent medical attention!' }
    -- },
    -- [11] = {
    --     type = 1,
    --     rewards = { 'flaregun' },
    --     missiontext = 'Find and activate emergency flares on the top of the mountain',
    --     prop = { model = `prop_flare_01`, location = vector3(2134.67, 5658.92, 54.32), rewards = { 'flaregun' } }
    -- },
    -- [12] = {
    --     type = 2,
    --     rewards = { 'toolbox' },
    --     missiontext = 'Rescue the trapped survivor in the underground bunker',
    --     npc = { model = `a_m_y_hippy_01`, location = vector4(-978.55, -1480.67, 5.36, 120.89), rewards = { 'toolbox' }, npctext = 'Help! The door is stuck, get me out!' }
    -- },
    -- [13] = {
    --     type = 1,
    --     rewards = { 'waterbottle' },
    --     missiontext = 'Collect rainwater in barrels from the rooftop of the apartment complex',
    --     prop = { model = `prop_barrel_02a`, location = vector3(-731.22, -122.54, 37.98), rewards = { 'cleanwater' } }
    -- },
    -- [14] = {
    --     type = 2,
    --     rewards = { 'ammocase' },
    --     missiontext = 'Defend the refugee camp from a zombie horde attack',
    --     npc = { model = `s_m_m_gaffer_01`, location = vector4(199.76, -909.33, 30.42, 269.83), rewards = { 'ammunitioncrate' }, npctext = 'They are coming! Protect the camp!' }
    -- },
    -- [15] = {
    --     type = 1,
    --     rewards = { 'foodbox' },
    --     missiontext = 'Harvest crops from the farm and bring fresh vegetables back to the settlement',
    --     prop = { model = `prop_veg_crop_03_cab`, location = vector3(1197.88, -2140.45, 55.32), rewards = { 'foodsupplies' } }
    -- },
    -- [16] = {
    --     type = 2,
    --     rewards = { 'medkit' },
    --     missiontext = 'Rescue the scientist and retrieve valuable research data from the laboratory',
    --     npc = { model = `s_m_m_scientist_01`, location = vector4(356.12, -999.76, 29.12, 271.76), rewards = { 'medicalkit' }, npctext = 'I have crucial data, help me escape!' }
    -- },
    -- [17] = {
    --     type = 1,
    --     rewards = { 'flaregun' },
    --     missiontext = 'Find a radio transmitter in the communication tower and activate it',
    --     prop = { model = `prop_radio_01`, location = vector3(1802.45, 2548.76, 83.21), rewards = { 'flaregun' } }
    -- },
    -- [18] = {
    --     type = 2,
    --     rewards = { 'toolbox' },
    --     missiontext = 'Escort the engineer to repair the damaged vehicle at the garage',
    --     npc = { model = `s_m_m_gardener_01`, location = vector4(-921.34, -1198.76, 7.45, 287.12), rewards = { 'toolbox' }, npctext = 'I need to get this vehicle running again!' }
    -- },
    -- [19] = {
    --     type = 1,
    --     rewards = { 'waterbottle' },
    --     missiontext = 'Purify water from the contaminated lake and deliver clean bottles to the outpost',
    --     prop = { model = `prop_drink_water`, location = vector3(872.45, -3265.67, 5.21), rewards = { 'cleanwater' } }
    -- },
    -- [20] = {
    --     type = 2,
    --     rewards = { 'ammocase' },
    --     missiontext = 'Retrieve military supplies from the crashed helicopter in the forest',
    --     npc = { model = `a_m_m_skater_01`, location = vector4(2126.67, 5639.92, 53.32, 180.21), rewards = { 'ammunitioncrate' }, npctext = 'I saw a military chopper go down nearby, let\'s check it out!' }
    -- },
}
