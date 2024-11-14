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
        npc = { model = `s_m_y_armymech_01`, location = vector4(-1845.26, -1196.05, 19.18, 157.19), rewards = { 'ammunitioncrate' }, npctext = 'Help me get out of here, I have valuable supplies!' }
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
    [5] = {
        type = 1,
        rewards = { 'weaponcase' },
        missiontext = 'Find and reclaim the XM3 Pistol owned by Trevor',
        prop = { model = `prop_idol_case_02`, location = vector3(1975.93, 3819.25, 33.44), rewards = { 'xm3pistol' } }
    },
    [6] = {
        type = 2,
        rewards = { 'foodbox' },
        missiontext = 'Rescue the survivor trapped in the Salvage Yard',
        npc = { model = `g_m_y_lost_02`, location = vector4(-578.92, -1602.57, 27.01, 180.26), rewards = { 'foodsupplies' }, npctext = 'Please help me, I can guide you to safety!' }
    },
    [7] = {
        type = 1,
        rewards = { 'ammocase' },
        missiontext = 'Go to the Paleto police station and collect the ammo',
        prop = { model = `prop_cs_duffel_01b`, location = vector3(-447.96, 6013.14, 32.1), rewards = { 'ammunitioncrate' } }
    },
    [8] = {
        type = 2,
        rewards = { 'ammocase' },
        missiontext = 'Deliver ammunition to the outpost at the military base',
        npc = { model = `s_m_y_armymech_01`, location = vector4(-582.87, -175.92, 38.04, 41.4), rewards = { 'ammunitioncrate' }, npctext = 'We are running low on ammo, bring us supplies!' }
    },
    [9] = {
        type = 1,
        rewards = { 'foodbox' },
        missiontext = 'Scavenge for food at the Taco Restaurant',
        prop = { model = `prop_cs_cardbox_01`, location = vector3(12.32, -1605.6, 22.0), rewards = { 'foodsupplies' } }
    },
    [10] = {
        type = 2,
        rewards = { 'medicalbox' },
        missiontext = 'Find the medic in mirror park',
        npc = { model = `s_m_m_doctor_01`, location = vector4(1074.94, -691.53, 57.57, 13.67), rewards = { 'medicalsupplies' }, npctext = 'Hurry, someone needs urgent medical attention!' }
    },
    [11] = {
        type = 1,
        rewards = { 'weaponcase' },
        missiontext = 'Find the Weapons left by the prepper',
        prop = { model = `prop_cs_duffel_01b`, location = vector3(1509.95, 6326.44, 23.59), rewards = { 'xm3pistol' } }
    },
    [12] = {
        type = 2,
        rewards = { 'toolcrate' },
        missiontext = 'Rescue the mechanics girlfriend in the abandoned mine',
        npc = { model = `g_f_y_lost_01`, location = vector4(-439.07, 2060.97, 121.51, 108.0), rewards = { 'toolcase' }, npctext = 'Hey you found me!' }
    },
    [13] = {
        type = 1,
        rewards = { 'foodbox' },
        missiontext = 'Collect rainwater in barrels from the rooftop of the Vinewood PD',
        prop = { model = `prop_barrel_02a`, location = vector3(561.1, 8.64, 103.19), rewards = { 'foodsupplies' } }
    },
    [14] = {
        type = 2,
        rewards = { 'ammocase' },
        missiontext = 'Find the Refugee camp at the refinery',
        npc = { model = `s_m_m_gaffer_01`, location = vector4(966.42, -1932.93, 31.13, 335.05), rewards = { 'ammunitioncrate' }, npctext = 'You found us please tell your safezone we are here!' }
    },
    [15] = {
        type = 1, 
        rewards = { 'weaponcase' },
        missiontext = 'Collect the weapons from the Sandy police station',
        prop = { model = 'prop_cs_duffel_01b', location = vector3(1853.08, 3688.29, 34.60), rewards = { 'xm3pistol' } }
    },
    [16] = {
        type = 2,
        rewards = { 'medicalbox' },
        missiontext = 'Rescue the scientist and retrieve valuable research data from the LS Medical Centre',
        npc = { model = `s_m_m_doctor_01`, location = vector4(294.98, -1426.94, 29.8, 207.46), rewards = { 'medicalsupplies' }, npctext = 'I have crucial data, help me escape!' }
    },
    [17] = {
        type = 2,
        rewards = { 'toolcrate' },
        missiontext = 'Find the radio technician and collect the tools case from him',
        npc = { model = `s_m_y_armymech_01`, location = vector4(739.43, 2579.2, 75.47, 200.79), rewards = { 'toolcase' }, npctext = 'Thanks for coming' }
    },
    [18] = {
        type = 2,
        rewards = { 'toolcrate' },
        missiontext = 'Take food to Gary at the Hayes Auto Garage',
        npc = { model = `g_m_y_lost_03`, location = vector4(479.03, -1323.7, 29.21, 336.72), rewards = { 'toolcase' }, npctext = 'Thanks for bringing the food i needed!' }
    },
    [19] = {
        type = 1,
        rewards = { 'foodbox' },
        missiontext = 'Purify water from the contaminated lake and deliver clean bottles to the outpost',
        prop = { model = `prop_barrel_02a`, location = vector3(1152.1, -209.64, 55.1), rewards = { 'foodsupplies' } }
    },
    [20] = {
        type = 2,
        rewards = { 'ammocase' },
        missiontext = 'Retrieve military supplies from the Army Mechanic on Stationed on the Alamo Sea',
        npc = { model = `s_m_y_armymech_01`, location = vector4(558.8, 3899.44, 33.74, 273.28), rewards = { 'ammunitioncrate' }, npctext = 'I saw a military chopper go down nearby, let\'s check it out!' }
    },
}
