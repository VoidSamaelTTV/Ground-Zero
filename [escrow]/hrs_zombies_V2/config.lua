Config = {}

Config.showNoiseWave = true ---- show minimap noise
Config.showNoiseWaveInfo = {color = 1,alpha = 80}

Config.zombiesAudioMemory = 600 -- 60 seconds (the time the zombies will follow you after they fisrt heared you)

Config.poolLimit = 60 --- recommend not changing this

Config.betterHitBox = true --------- makes the zombie attack harder to dodge 

Config.zombieVehicleExternalDamage = true ------------ if the zombie can do exterior damage to the vehicle

Config.ragdollOnZombieAttackProbability = 5 -------- 1% probability of ragdoll when zombie attack you

Config.debug = false -- check location, zombie numbers , pool size

Config.useEntityLockdown = false --- this prevents any kind of client side spawn on your server

Config.zombieApproach = false --- if true zombies will get closer to you with time 

Config.zombieIgnoreFire = true --- zombie will ignore beeing on fire

Config.RedZoneBlips = false

Config.nightMult = 3.0 ---- ped spawn mult at night
Config.dayMult = 1.5 ---- ped spawn mult at day

Config.nightMultAnimals = 0.5 ---- animal spawn mult at night 
Config.dayMultAnimals = 1.0 ---- animal spawn mult at day

Config.nightHealthMult = 1.0 ---- health mult at night
Config.nightDamageMult = 1.0 ---- damage mult at night 

Config.redZoneHealthMult = 1.0 ---- health mult at redzone
Config.redZoneDamageMult = 1.0 ---- damage mult at redzone 

Config.canRemoveFromVehicle = true ------ zombies can remove you from the car

Config.maxBossesAroundYou = 10 -- max number of bosses around you

Config.poisonGasRadious = 5.0

Config.eletricRadious = 2.0

Config.fireRadious = 3.0

Config.eletricChargeMissProbability = 60 --- 50% chance of the eletric zombie to miss his attack

Config.fireChargeMissProbability = 60 --- 50% chance of the fire zombie to miss his attack

Config.maxOwnedDeadPeds = 10

Config.deadDeleteTime = 180 --- seconds

Config.deleteZombieOnSafe = true

Config.zombiesUseLadders = false

Config.walkingAnimSet = 'move_m@drunk@verydrunk'

Config.attackAnimSet = {
    animDict = 'melee@unarmed@streamed_core_fps', 
    animName = 'ground_attack_0_psycho'
}

Config.specialZombiesProb = {
    {models = {"s_m_y_fireman_01"},probability = 0,probabilityRedzone = 30},
    {models = {"chriswalker"},probability = 0,probabilityRedzone = 15},
    {models = {"bigfatzombie"},probability = 0,probabilityRedzone = 5},
    {models = {"creature01"},probability = 0,probabilityRedzone = 20},
    {models = {"executioner"},probability = 0,probabilityRedzone = 20},
    {models = {"u_m_y_juggernaut_01"},probability = 0,probabilityRedzone = 10},

} ---- this zombies will replace population zombies with this models based on the percentage you choose

Config.zombiesLeaveYouOnceDead = true

Config.specialZombiesSpecs = {
    ['executioner'] = {
        life = 300,
        headShotResistent = false,
        disableRagdoll = true,
        setProofs = {false,true,false,true,false,false,false,false},
        pedDamage = 4,
        carDamage = 2,
        blip = true,
        poisonGas = true,
        poisonGasDamage = 1,
        -- eletric = true,
        -- eletricDamage = 5,
        -- fire = true,
        -- fireDamage = 5
    }, 
    ['bigfatzombie'] = {
        life = 900,
        headShotResistent = false,
        disableRagdoll = true,
        setProofs = {false,false,false,false,false,false,true,false},
        pedDamage = 20,
        carDamage = 10,
        blip = true,
        poisonGas = false,
        poisonGasDamage = 2,
        -- eletric = true,
        -- eletricDamage = 5,
        -- fire = true,
        -- fireDamage = 5
    }, 
    ['chriswalker'] = {
        life = 450,
        headShotResistent = false,
        disableRagdoll = true,
        setProofs = {false,false,false,false,false,false,false,false},
        pedDamage = 10,
        carDamage = 5,
        blip = true,
        poisonGas = false,
        poisonGasDamage = 2,
        -- eletric = true,
        -- eletricDamage = 5,
        -- fire = true,
        -- fireDamage = 5
    }, 
    ['s_m_y_fireman_01'] = {
        life = 150,
        headShotResistent = false,
        disableRagdoll = false,
        setProofs = {false,false,false,false,false,false,false,false},
        pedDamage = 2,
        carDamage = 1,
        blip = true,
        -- poisonGas = true,
        -- poisonGasDamage = 5,
        -- eletric = true,
        -- eletricDamage = 5,
        fire = true,
        fireDamage = 2
    },
    ['creature01'] = {
        life = 300,
        headShotResistent = false,
        disableRagdoll = true,
        setProofs = {false,false,false,false,false,false,false,false},
        pedDamage = 4,
        carDamage = 2,
        blip = true,
        poisonGas = true,
        poisonGasDamage = 1,
        -- eletric = true,
        -- eletricDamage = 5,
        fire = false,
        fireDamage = 2
    },
    ['u_m_y_juggernaut_01'] = {
        life = 600,
        headShotResistent = false,
        disableRagdoll = true,
        setProofs = {false,true,false,false,true,false,false,false},
        pedDamage = 10,
        carDamage = 5,
        blip = true,
        -- poisonGas = true,
        -- poisonGasDamage = 5,
        eletric = true,
        eletricDamage = 3
    },
    ['u_f_y_corpse_01'] = {
        life = 150,
        headShotResistent = false,
        disableRagdoll = false,
        setProofs = {false,false,false,false,false,false,false,false},
        pedDamage = 3,
        carDamage = 1,
        blip = true,
        poisonGas = false,
        poisonGasDamage = 2,
        -- eletric = true,
        -- eletricDamage = 5
    },
    ['u_m_y_corpse_01'] = {
        life = 150,
        headShotResistent = false,
        disableRagdoll = false,
        setProofs = {false,false,false,false,false,false,false,false},
        pedDamage = 3,
        carDamage = 1,
        blip = true,
        poisonGas = false,
        poisonGasDamage = 2,
        -- eletric = true,
        -- eletricDamage = 5
    },
    ['dr_head'] = {
        life = 450,
        headShotResistent = true,
        disableRagdoll = true,
        setProofs = {false,true,false,false,false,false,false,false},
        pedDamage = 5,
        carDamage = 2,
        blip = true,
        poisonGas = false,
        poisonGasDamage = 2,
        -- eletric = true,
        -- eletricDamage = 5
    },
    ['BF4RusAssault'] = {
        life = 200,
        blip = false,
        isNPC = true,
        weapon = `WEAPON_ASSAULTRIFLE`,
        ammo = 1000000,
        accuracy = 10
    },
    ['BF4RusEngineer'] = {
        life = 200,
        blip = false,
        isNPC = true,
        weapon = `WEAPON_ASSAULTSMG`,
        ammo = 1000000,
        accuracy = 10
    },
    ['BF4RusSniper'] = {
        life = 200,
        blip = false,
        isNPC = true,
        weapon = `WEAPON_SNIPERRIFLE`,
        ammo = 1000000,
        accuracy = 20
    },
    ['BF4RusSupport'] = {
        life = 200,
        blip = false,
        isNPC = true,
        weapon = `WEAPON_ASSAULTSHOTGUN`,
        ammo = 1000000,
        accuracy = 10
    },
    ['RusBeret'] = {
        life = 200,
        blip = false,
        isNPC = true,
        weapon = `WEAPON_PISTOL`,
        ammo = 1000000,
        accuracy = 10
    },
    ['RusFSB'] = {
        life = 200,
        blip = false,
        isNPC = true,
        weapon = `WEAPON_SMG`,
        ammo = 1000000,
        accuracy = 10
    },
} --- change some zombies features

Config.defaultZombies = {
    life = 125,
    headShotResistent = false,
    disableRagdoll = false,
    setProofs = nil,
    pedDamage = 2,
    carDamage = 1,
    blip = false,
    --maxSpeed = 2.0
}

Config.redZones = {
    {
        coords = vector3(3524.05, 3721.07, 36.64),
        radious = 150.0,
        label = "Humane Labs",
        bosses = {
            -- {models = {"chriswalker"},probability = 15},
            -- {models = {"bigfatzombie"},probability = 10},
            {models = {"executioner"},probability = 20},
            -- {models = {"s_m_y_fireman_01"},probability = 25},
            -- {models = {'u_m_y_juggernaut_01'},probability = 10},
            {models = {'creature01'},probability = 20}
        }
    },

    -- {
    --     coords = vector3(-1778.2087, -1165.4779, 12.3628),
    --     radious =  150.0,
    --     label = "Del Perro Pier",
    --     bosses = {
    --         {models = {"s_m_y_fireman_01"},probability = 5},
    --         {models = {'u_f_y_corpse_01','u_m_y_corpse_01'},probability = 5},
    --         {models = {'u_m_y_zombie_01'},probability = 5},
    --         {models = {'executioner'},probability = 5}
    --     }
    -- },

    {
        coords = vector3(-1726.44, -192.71, 58.51),
        radious = 150.0,
        label = "Graveyard",
        bosses = {
            {models = {"dr_head"},probability = 25},
            -- {models = {"chriswalker"},probability = 15},
            -- {models = {"bigfatzombie"},probability = 5},
            -- {models = {"executioner"},probability = 20},
            -- {models = {"s_m_y_fireman_01"},probability = 25},
            -- {models = {'u_m_y_juggernaut_01'},probability = 10},
            -- {models = {'creature01'},probability = 20}
        }
    },

    {
        coords = vector3(1689.61, 2605.72, 45.56),
        radious = 300.0,
        label = "Bolingbroke Penitentiary",
        bosses = {
            -- {models = {"chriswalker"},probability = 15},
            -- {models = {"bigfatzombie"},probability = 5},
            -- {models = {"executioner"},probability = 20},
            {models = {"s_m_y_fireman_01"},probability = 25},
            -- {models = {'u_m_y_juggernaut_01'},probability = 10},
            -- {models = {'creature01'},probability = 20}

        }
    },

    -- {
    --     coords = vector3(1689.61, 2605.72, 45.56),
    --     radious = 300.0,
    --     label = "LS Airport",
    --     bosses = {
    --         -- {models = {"chriswalker"},probability = 15},
    --         {models = {"bigfatzombie"},probability = 10},
    --         -- {models = {"executioner"},probability = 20},
    --         -- {models = {"s_m_y_fireman_01"},probability = 25},
    --         -- {models = {'u_m_y_juggernaut_01'},probability = 10},
    --         -- {models = {'creature01'},probability = 20}

    --     }
    -- },

    {
        coords = vector3(-1683.95, -1099.57, 13.15),
        radious = 300.0,
        label = "Del Perro Pier",
        bosses = {
            {models = {"chriswalker"},probability = 15},
            -- {models = {"bigfatzombie"},probability = 10},
            -- {models = {"executioner"},probability = 20},
            -- {models = {"s_m_y_fireman_01"},probability = 25},
            -- {models = {'u_m_y_juggernaut_01'},probability = 10},
            -- {models = {'creature01'},probability = 20}

        }
    },

    -- {
    --     coords = vector3(897.91, 3000.69, 43.3),
    --     radious = 800.0,
    --     label = "FOB Memphis",
    --     bosses = {
    --         {models = {"chriswalker"},probability = 15},
    --         {models = {"bigfatzombie"},probability = 5},
    --         {models = {"executioner"},probability = 20},
    --         {models = {"s_m_y_fireman_01"},probability = 25},
    --         {models = {'u_m_y_juggernaut_01'},probability = 10},
    --         {models = {'creature01'},probability = 20}
    --     }
    -- },
     
    -- {
    --     coords = vector3(1689.61, 2605.72, 45.56),
    --     radious = 150.0,
    --     label = "Bolingbroke Penitentiary",
    --     bosses = {
    --         {models = {"s_m_y_fireman_01"},probability = 5},
    --         {models = {'u_f_y_corpse_01','u_m_y_corpse_01'},probability = 5},
    --         {models = {'u_m_y_zombie_01'},probability = 5},
    --         {models = {'executioner'},probability = 5}
    --     }
    -- },

    -- {
    --     coords = vector3(2500.67, -383.64, 96.92),
    --     radious = 150.0,
    --     label = "Government Facility",
    --     bosses = {
    --         {models = {"s_m_y_fireman_01"},probability = 5},
    --         {models = {'u_f_y_corpse_01','u_m_y_corpse_01'},probability = 5},
    --         {models = {'u_m_y_zombie_01'},probability = 5},
    --         {models = {'executioner'},probability = 5}
    --     }
    -- },

    -- {
    --     coords = vector3(-135.54, 6379.7, 31.93),
    --     radious = 150.0,
    --     label = "Paleto Bay",
    --     bosses = {
    --         {models = {"s_m_y_fireman_01"},probability = 5},
    --         {models = {'u_f_y_corpse_01','u_m_y_corpse_01'},probability = 5},
    --         {models = {'u_m_y_zombie_01'},probability = 5},
    --         {models = {'executioner'},probability = 5}
    --     }
    -- },

    -- {
    --     coords = vector3(-2209.57, 3056.11, 32.85),
    --     radious = 1000.0,
    --     label = "Fort Zancudo",
    --     bosses = {
    --         {models = {"s_m_y_fireman_01"},probability = 0},
    --         {models = {'u_f_y_corpse_01','u_m_y_corpse_01'},probability = 0},
    --         {models = {'u_m_y_zombie_01'},probability = 0},
    --         {models = {'executioner'},probability = 0}
    --     }
    -- },
    
    -- {
    --     coords = vector3(182.05, 2780.1, 45.67),
    --     radious = 200.0,
    --     label = "Fort Zancudo",
    --     bosses = {
    --         {models = {"s_m_y_fireman_01"},probability = 0},
    --         {models = {'u_f_y_corpse_01','u_m_y_corpse_01'},probability = 0},
    --         {models = {'u_m_y_zombie_01'},probability = 0},
    --         {models = {'executioner'},probability = 0}
    --     }
    -- },
}

Config.pedLists = {
    ['test'] = {
        's_m_y_fireman_01'
    },
    ['jail'] = {
        'csb_rashcosvki',
        's_m_y_prismuscl_01',
        's_m_y_prisoner_01',
        'csb_prolsec',
        'ig_rashcosvki',
        's_m_m_prisguard_01',
        's_m_m_security_01'
    },
    ['airp'] = {
        'csb_trafficwarden',
        's_m_m_gardener_01',
        's_m_m_ups_01',
        's_m_y_airworker',
        's_m_m_strpreach_01',
        's_m_m_highsec_01',
        's_m_m_highsec_02'
    },
    ['farm'] = {
        'cs_hunter',
        'cs_josef',
        'cs_old_man1a',
        'cs_old_man2',
        'cs_nervousron',
        'cs_russiandrunk',
        'csb_cletus',
        'csb_maude',
        'g_f_importexport_01',
        'u_m_y_proldriver_01'
    },
    ['city'] = {
        'a_f_m_bevhills_01',
        'a_f_y_bevhills_01',
        'a_f_y_bevhills_03',
        'a_f_y_clubcust_01',
        'a_f_y_genhot_01',
        'a_m_m_soucent_02',
        'a_m_m_stlat_02',
        'a_m_y_business_02',
        'a_m_y_business_03',
        'a_m_y_genstreet_01',
        'cs_joeminuteman',
        'g_m_y_famdnf_01',
        'g_m_y_famca_01'
    },
    ['military'] = {
        'csb_ramp_marine',
        's_m_m_marine_01',
        's_m_y_blackops_01',
        's_m_y_blackops_02',
        's_m_y_blackops_03',
        's_m_y_marine_01',
        's_m_y_marine_02',
        's_m_y_marine_03',
        's_m_y_swat_01',
        's_m_m_marine_02',
        'u_m_o_filmnoir'
    },
    ['workers'] = {
        's_m_m_dockwork_01',
        's_m_m_gaffer_01',
        's_m_m_gardener_01',
        's_m_m_lathandy_01',
        's_m_y_airworker',
        's_m_y_construct_01',
        's_m_y_construct_02',
        's_m_y_dockwork_01',
        's_m_y_garbage'
    },
    ['beach'] = {
        'a_f_m_beach_01',
        'a_f_m_bodybuild_01',
        'a_f_m_fatcult_01',
        'a_f_y_beach_01',
        'a_f_y_juggalo_01',
        'a_f_y_topless_01',
        'a_m_m_beach_02',
        'a_m_m_tranvest_01',
        'a_m_y_jetski_01',
        'a_m_y_musclbeac_01',
        'a_m_y_surfer_01',
        's_f_y_baywatch_01',
        's_m_y_baywatch_01',
        'ig_tylerdix'
    },
    ['animals'] = {
        'a_c_boar',
        'a_c_coyote',
        'a_c_deer',
        -- 'a_c_mtlion',
        'a_c_rabbit_01'
    }, --- animals that will spawn in dirt and grass locations
    ['hospital'] = {
        's_f_y_scrubs_01',
        's_m_m_doctor_01',
        's_m_y_autopsy_01',
        'u_f_y_corpse_02' 
    },
    ['walk'] = {
        'a_f_y_fitness_01',
        'a_f_y_fitness_02',
        'a_f_y_runner_01',
        'a_f_y_tourist_01',
        'a_m_y_breakdance_01',
        'a_m_y_runner_01',
        'a_m_y_runner_02',
        'cs_maryann'
    },
    ['motard'] = {
        'cs_clay',
        'csb_jackhowitzer',
        'g_m_y_lost_01',
        'g_m_y_lost_02',
        'g_m_y_lost_03',
        'g_m_y_mexgang_01'
    },
    ['police'] = {
        'cs_casey',
        'cs_michelle',
        'csb_ramp_marine',
        'mp_m_fibsec_01',
        'mp_s_m_armoured_01',
        's_f_y_cop_01',
        's_m_m_armoured_01',
        's_m_m_armoured_02',
        's_m_m_fibsec_01',
        's_m_y_cop_01',
        'ig_casey'
    },
    ['npc'] = {
        'BF4RusAssault',
        'BF4RusEngineer',
        'BF4RusSniper',
        'BF4RusSupport',
        'RusBeret',
        'RusFSB'
    }
}

Config.AnimalModels = {
    ['a_c_boar'] = `WILD_ANIMAL`,
    ['a_c_cat_01'] = `WILD_ANIMAL`,
    ['a_c_chickenhawk'] = `WILD_ANIMAL`,
    ['a_c_chimp'] = `WILD_ANIMAL`,
    ['a_c_chop'] = `GUARD_DOG`,
    ['a_c_cormorant'] = `WILD_ANIMAL`,
    ['a_c_cow'] = `DOMESTIC_ANIMAL`,
    ['a_c_coyote'] = `WILD_ANIMAL`,
    ['a_c_crow'] = `WILD_ANIMAL`,
    ['a_c_deer'] = `DEER`,
    ['a_c_dolphin'] = `WILD_ANIMAL`,
    ['a_c_fish'] = `WILD_ANIMAL`,
    ['a_c_hen'] = `HEN`,
    ['a_c_humpback'] = `WILD_ANIMAL`,
    ['a_c_husky'] = `GUARD_DOG`,
    ['a_c_killerwhale'] = `WILD_ANIMAL`,
    ['a_c_mtlion'] = `COUGAR`,
    ['a_c_pig'] = `DOMESTIC_ANIMAL`,
    ['a_c_pigeon'] = `WILD_ANIMAL`,
    ['a_c_poodle'] = `GUARD_DOG`,
    ['a_c_pug'] = `GUARD_DOG`,
    ['a_c_rabbit_01'] = `WILD_ANIMAL`,
    ['a_c_rat'] = `WILD_ANIMAL`,
    ['a_c_retriever'] = `GUARD_DOG`,
    ['a_c_rhesus'] = `WILD_ANIMAL`,
    ['a_c_rottweiler'] = `GUARD_DOG`,
    ['a_c_seagull'] = `WILD_ANIMAL`,
    ['a_c_sharkhammer'] = `SHARK`,
    ['a_c_sharktiger'] = `SHARK`,
    ['a_c_shepherd'] = `GUARD_DOG`,
    ['a_c_stingray'] = `WILD_ANIMAL`,
    ['a_c_westy'] = `GUARD_DOG`,
    ['a_c_panther'] = `WILD_ANIMAL`
} --- this models will have animal behaviour , in the right you have their relationship group

for k,v in pairs(Config.AnimalModels) do
    Config.AnimalModels[GetHashKey(k)] = v
end

Config.mapLocations = {
    ['AIRP'] = {
        humansList = 'airp',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10,
    },
    ['ALAMO'] = {
        humansList = 'farm',
        animalsList = 'animals',
        maxHumans = 15,
        maxAnimals = 15,
    },
    ['ALTA'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10,
    },
    ['ARMYB'] = {
        humansList = 'military',
        animalsList = 'animals',
        maxHumans = 0,
        maxAnimals = 10
    },
    ['BHAMCA'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['BANNING'] = {
        humansList = 'workers',
        animalsList = 'animals',
        maxHumans = 25,
        maxAnimals = 5
    },
    ['BEACH'] = {
        humansList = 'beach',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['BHAMCA'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['BRADT'] = {
        humansList = 'farm',
        animalsList = 'animals',
        maxHumans = 15,
        maxAnimals = 15
    },
    ['BURTON'] = {
        humansList = 'farm',
        animalsList = 'animals',
        maxHumans = 15,
        maxAnimals = 15
    },
    ['CANNY'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['CCREAK'] = {
        humansList = 'farm',
        animalsList = 'animals',
        maxHumans = 15,
        maxAnimals = 15
    },
    ['CHAMH'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['CHIL'] = {
        humansList = 'farm',
        animalsList = 'animals',
        maxHumans = 15,
        maxAnimals = 15
    },
    ['CHU'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['CMSW'] = {
        humansList = 'farm',
        animalsList = 'animals',
        maxHumans = 15,
        maxAnimals = 15
    },
    ['CYPRE'] = {
        humansList = 'workers',
        animalsList = 'animals',
        maxHumans = 25,
        maxAnimals = 5
    },
    ['DAVIS'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['DELBE'] = {
        humansList = 'beach',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['DELPE'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['DELSOL'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['DTVINE'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['DESRT'] = {
        humansList = 'farm',
        animalsList = 'animals',
        maxHumans = 0,
        maxAnimals = 15
    },
    ['EAST_V'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['EBURO'] = {
        humansList = 'workers',
        animalsList = 'animals',
        maxHumans = 25,
        maxAnimals = 5
    },
    ['ELGORL'] = {
        humansList = 'workers',
        animalsList = 'animals',
        maxHumans = 25,
        maxAnimals = 5
    },

    ['ELYSIAN'] = {
        humansList = 'workers',
        animalsList = 'animals',
        maxHumans = 25,
        maxAnimals = 5
    },
    ['GALFISH'] = {
        humansList = 'farm',
        animalsList = 'animals',
        maxHumans = 15,
        maxAnimals = 15
    },
    ['GOLF'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['GRAPES'] = {
        humansList = 'farm',
        animalsList = 'animals',
        maxHumans = 15,
        maxAnimals = 15
    },
    ['GREATC'] = {
        humansList = 'farm',
        animalsList = 'animals',
        maxHumans = 15,
        maxAnimals = 15
    },
    ['HARMO'] = {
        humansList = 'workers',
        animalsList = 'animals',
        maxHumans = 25,
        maxAnimals = 5
    },
    ['HAWICK'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['HORS'] = {
        humansList = 'workers',
        animalsList = 'animals',
        maxHumans = 25,
        maxAnimals = 5
    },
    ['HUMLAB'] = {
        humansList = 'hospital',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['JAIL'] = {
        humansList = 'jail',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['KOREAT'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['LACT'] = {
        humansList = 'workers',
        animalsList = 'animals',
        maxHumans = 25,
        maxAnimals = 5
    },
    ['LAGO'] = {
        humansList = 'military',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['LDAM'] = {
        humansList = 'workers',
        animalsList = 'animals',
        maxHumans = 25,
        maxAnimals = 5
    },
    ['LEGSQU'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['LMESA'] = {
        humansList = 'workers',
        animalsList = 'animals',
        maxHumans = 25,
        maxAnimals = 5
    },
    ['LOSPUER'] = {
        humansList = 'workers',
        animalsList = 'animals',
        maxHumans = 25,
        maxAnimals = 5
    },
    ['MIRR'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['MORN'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['MOVIE'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['MTCHIL'] = {
        humansList = 'walk',
        animalsList = 'animals',
        maxHumans = 5,
        maxAnimals = 20
    },
    ['MTGORDO'] = {
        humansList = 'farm',
        animalsList = 'animals',
        maxHumans = 15,
        maxAnimals = 15
    },
    ['MTJOSE'] = {
        humansList = 'walk',
        animalsList = 'animals',
        maxHumans = 5,
        maxAnimals = 20
    },
    ['MURRI'] = {
        humansList = 'workers',
        animalsList = 'animals',
        maxHumans = 25,
        maxAnimals = 5
    },
    ['NCHU'] = {
        humansList = 'motard',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['NOOSE'] = {
        humansList = 'military',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['OCEANA'] = {
        humansList = 'beach',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['PALCOV'] = {
        humansList = 'farm',
        animalsList = 'animals',
        maxHumans = 15,
        maxAnimals = 15
    },
    ['PALETO'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['PALFOR'] = {
        humansList = 'farm',
        animalsList = 'animals',
        maxHumans = 15,
        maxAnimals = 15
    },
    ['PALHIGH'] = {
        humansList = 'walk',
        animalsList = 'animals',
        maxHumans = 5,
        maxAnimals = 20
    },
    ['PALMPOW'] = {
        humansList = 'workers',
        animalsList = 'animals',
        maxHumans = 25,
        maxAnimals = 5
    },
    ['PBLUFF'] = {
        humansList = 'walk',
        animalsList = 'animals',
        maxHumans = 5,
        maxAnimals = 20
    },
    ['PBOX'] = {
        humansList = 'hospital',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['PROCOB'] = {
        humansList = 'beach',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['RANCHO'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['RGLEN'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['RICHM'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['ROCKF'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['RTRAK'] = {
        humansList = 'farm',
        animalsList = 'animals',
        maxHumans = 15,
        maxAnimals = 15
    },
    ['SANAND'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['SANCHIA'] = {
        humansList = 'walk',
        animalsList = 'animals',
        maxHumans = 5,
        maxAnimals = 20
    },
    ['SANDY'] = {
        humansList = 'farm',
        animalsList = 'animals',
        maxHumans = 15,
        maxAnimals = 15
    },
    ['SKID'] = {
        humansList = 'police',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['SLAB'] = {
        humansList = 'motard',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['STAD'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['STRAW'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['TATAMO'] = {
        humansList = 'walk',
        animalsList = 'animals',
        maxHumans = 5,
        maxAnimals = 20
    },
    ['TERMINA'] = {
        humansList = 'workers',
        animalsList = 'animals',
        maxHumans = 25,
        maxAnimals = 5
    },
    ['TEXTI'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['TONGVAH'] = {
        humansList = 'walk',
        animalsList = 'animals',
        maxHumans = 5,
        maxAnimals = 20
    },
    ['TONGVAV'] = {
        humansList = 'walk',
        animalsList = 'animals',
        maxHumans = 5,
        maxAnimals = 20
    },
    ['VCANA'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['VESP'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['VINE'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['WINDF'] = {
        humansList = 'walk',
        animalsList = 'animals',
        maxHumans = 5,
        maxAnimals = 20
    },
    ['WVINE'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['ZANCUDO'] = {
        humansList = 'walk',
        animalsList = 'animals',
        maxHumans = 0,
        maxAnimals = 20
    },
    ['ZP_ORT'] = {
        humansList = 'workers',
        animalsList = 'animals',
        maxHumans = 25,
        maxAnimals = 5
    },
    ['ZQ_UAR'] = {
        humansList = 'workers',
        animalsList = 'animals',
        maxHumans = 25,
        maxAnimals = 5
    },
    ['PROL'] = {
        humansList = 'city',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
    ['ISHEIST'] = {
        humansList = 'military',
        animalsList = 'animals',
        maxHumans = 35,
        maxAnimals = 10
    },
}



-----------------------------------------------------
------------------ NESTS ----------------------------
-----------------------------------------------------
Config.NestWeaponDamages = {
    [`weapon_molotov`] = 100.0,
    [-544306709] = 10.0, ---- GAME FIRE
}

Config.NestTypes = {
    -- ['npc_nest'] = {
    --     propModel = `prop_barrier_wat_03b`,
    --     pedsType = 'npc',
    --     zChange = 0.0,
    --     damageRadius = 5.0,
    --     damagePed = 0,
    --     drawDistance = 120.0, ---- recommended value
    --     -- blip = {
    --     --     label = "Enemy HQ",
    --     --     color = 1,
    --     --     alpha = 128,
    --     --     scale = 1.0,
    --     --     sprite = 378,
    --     --     shortRange = true  
    --     -- }, -- false will disable it
    --     maxHealth = 1.00,
    --     regenTime = 300, --- seconds, if nil the nest will not respawn
    --     maxZombies = 5,
    --     ptfx = false,
    -- },
    ['graveyard_boss'] = {
        propModel = `prop_mem_candle_05`,
        pedsType = 'city',
        zChange = 0.0,
        damageRadius = 5.0,
        damagePed = 0,
        drawDistance = 120.0, ---- recommended value
        blip = {
            label = "Zombie Nest",
            color = 1,
            alpha = 128,
            scale = 1.0,
            sprite = 378,
            shortRange = true  
        }, -- false will disable it
        maxHealth = 200.00,
        regenTime = 14400, --- seconds, if nil the nest will not respawn
        maxZombies = 10,
        ptfx = true,
    },
    ['graveyard_nest'] = {
        propModel = `prop_prlg_gravestone_01a`,
        pedsType = 'city',
        zChange = 0.0,
        damageRadius = 5.0,
        damagePed = 0,
        drawDistance = 120.0, ---- recommended value
        blip = {
            label = "Zombie Nest",
            color = 1,
            alpha = 128,
            scale = 1.0,
            sprite = 378,
            shortRange = true  
        }, -- false will disable it
        maxHealth = 200.00,
        regenTime = 14400, --- seconds, if nil the nest will not respawn
        maxZombies = 30,
        ptfx = true,
    },
    ['zombie_nest'] = {
        propModel = `prop_bush_lrg_01c_cr`,
        pedsType = 'city',
        zChange = 0.0,
        damageRadius = 5.0,
        damagePed = 0,
        drawDistance = 120.0, ---- recommended value
        blip = {
            label = "Zombie Nest",
            color = 1,
            alpha = 128,
            scale = 1.0,
            sprite = 378,
            shortRange = true  
        }, -- false will disable it
        maxHealth = 200.00,
        regenTime = 14400, --- seconds, if nil the nest will not respawn
        maxZombies = 20,
        ptfx = true,
    },
    ['prison_zombies'] = {
        propModel = `prop_bush_lrg_01c_cr`,
        pedsType = 'jail',
        zChange = 0.0,
        damageRadius = 5.0,
        damagePed = 0,
        drawDistance = 120.0, ---- recommended value
        blip = {
            label = "Zombie Nest",
            color = 1,
            alpha = 128,
            scale = 1.0,
            sprite = 378,
            shortRange = true  
        }, -- false will disable it
        maxHealth = 200.00,
        regenTime = 14400, --- seconds, if nil the nest will not respawn
        maxZombies = 30,
        ptfx = true,
    },
    -- ['military_nest'] = {
    --     propModel = `prop_mb_sandblock_05_cr`,
    --     pedsType = 'military',
    --     zChange = -1.0,
    --     damageRadius = 5.0,
    --     damagePed = 15,
    --     drawDistance = 120.0, ---- recommended value
    --     blip = {
    --         label = "Zombie Nest",
    --         color = 1,
    --         alpha = 128,
    --         scale = 1.0,
    --         sprite = 378,
    --         shortRange = true  
    --     }, -- false will disable it
    --     maxHealth = 200.00,
    --     regenTime = 120, --- seconds
    --     maxZombies = 5,
    --     ptfx = true
    -- },
}

Config.NestGenerationByZone = {
    -- {
    --     coords = vector3(188.8815, -950.6802, 30.0919),
    --     radious = 150.0,
    --     nestType = 'military_nest',
    --     minDistanceBetweenNests = 100.0
    -- }
}

Config.NestGenerationByLocation = {
    -- ['ARMYB'] = {
    --     nestType = 'npc_nest',
    --     minDistanceBetweenNests = 100.0
    -- },
    -- ['ISHEIST'] = {
    --     nestType = 'military_nest',
    --     minDistanceBetweenNests = 100.0
    -- }
}

Config.Nests = {
    -- ['Boat_Nest_1'] = {
    --     coords = vector3(3061.5498, -4683.6440, 15.2623),
    --     nestType = 'military_nest'
    -- },

    -- ['Boat_Nest_2'] = {
    --     coords = vector3(3080.6509, -4760.6401, 6.0772),
    --     nestType = 'military_nest'
    -- },

    -- ['Cayo_1'] = {
    --     coords = vector3(5007.4717, -5195.1128, 2.5163),
    --     nestType = 'military_nest'
    -- },

    -- ['Cayo_2'] = {
    --     coords = vector3(5120.4375, -5145.7007, 2.2519),
    --     nestType = 'military_nest'
    -- },

    -- ['Cayo_3'] = {
    --     coords = vector3(5018.2305, -5092.8184, 6.1626),
    --     nestType = 'military_nest'
    -- },

    -- ['Cayo_4'] = {
    --     coords = vector3(5021.1152, -5231.5542, 9.6508),
    --     nestType = 'military_nest'
    -- },

    -- ['extra_1'] = {
    --     coords = vector3(-1038.12,-3216.35,13.944),
    --     nestType = 'military_nest'
    -- },
    ['graveyard_nest1'] = {
        coords = vector3(-1686.37, -243.6, 54.27),
        nestType = 'graveyard_nest'
    },
    ['graveyard_nest2'] = {
        coords = vector3(-1627.51, -152.78, 57.19),
        nestType = 'graveyard_nest'
    },
    ['graveyard_nest3'] = {
        coords = vector3(-1737.71, -165.51, 59.02),
        nestType = 'graveyard_nest'
    },
    ['graveyard_nest4'] = {
        coords = vector3(-1811.4, -227.99, 46.65),
        nestType = 'graveyard_nest'
    },
    ['graveyard_boss'] = {
        coords = vector3(-1806.64, -126.14, 78.79),
        nestType = 'graveyard_boss'
    },
    -- ['fort_zancudo'] = {
    --     coords = vector3(-1594.07, 2818.21, 17.3),
    --     nestType = 'npc_nest'
    -- },
    -- ['fort_zancudo2'] = {
    --     coords = vector3(-1739.84, 2868.27, 32.81),
    --     nestType = 'npc_nest'
    -- },
    -- ['fort_zancudo3'] = {
    --     coords = vector3(-1862.53, 2832.43, 32.97),
    --     nestType = 'npc_nest'
    -- },
    -- ['fort_zancudo4'] = {
    --     coords = vector3(-1962.64, 2802.79, 32.81),
    --     nestType = 'npc_nest'
    -- },
    -- ['fort_zancudo5'] = {
    --     coords = vector3(-2067.57, 2808.68, 32.81),
    --     nestType = 'npc_nest'
    -- },
    -- ['fort_zancudo6'] = {
    --     coords = vector3(-2141.69, 2844.92, 32.81),
    --     nestType = 'npc_nest'
    -- },
    -- ['fort_zancudo7'] = {
    --     coords = vector3(-2363.35, 2951.67, 32.91),
    --     nestType = 'npc_nest'
    -- },
    -- ['fort_zancudo8'] = {
    --     coords = vector3(-2460.9, 2959.48, 32.96),
    --     nestType = 'npc_nest'
    -- },
    -- ['fort_zancudo9'] = {
    --     coords = vector3(-2581.9, 3136.65, 33.01),
    --     nestType = 'npc_nest'
    -- },
    -- ['fort_zancudo10'] = {
    --     coords = vector3(-2767.23, 3220.69, 32.81),
    --     nestType = 'npc_nest'
    -- },
    -- ['fort_zancudo11'] = {
    --     coords = vector3(-2856.11, 3347.59, 32.81),
    --     nestType = 'npc_nest'
    -- },
    -- ['fort_zancudo12'] = {
    --     coords = vector3(-2721.17, 3298.0, 32.81),
    --     nestType = 'npc_nest'
    -- },
    -- ['fort_zancudo13'] = {
    --     coords = vector3(-2609.41, 3263.77, 32.96),
    --     nestType = 'npc_nest'
    -- },
    -- ['fort_zancudo14'] = {
    --     coords = vector3(-2387.61, 3408.65, 32.83),
    --     nestType = 'npc_nest'
    -- },
    -- ['fort_zancudo15'] = {
    --     coords = vector3(-2280.0, 3350.26, 32.96),
    --     nestType = 'npc_nest'
    -- },
    -- ['fort_zancudo16'] = {
    --     coords = vector3(-2087.9, 3332.97, 32.81),
    --     nestType = 'npc_nest'
    -- },
    -- ['fort_zancudo17'] = {
    --     coords = vector3(-1953.75, 3331.16, 32.96),
    --     nestType = 'npc_nest'
    -- },
    -- ['fort_zancudo18'] = {
    --     coords = vector3(-1795.96, 3238.08, 32.83),
    --     nestType = 'npc_nest'
    -- },
    -- ['fort_zancudo19'] = {
    --     coords = vector3(-1717.53, 3101.3, 32.96),
    --     nestType = 'npc_nest'
    -- },
    -- ['fort_zancudo20'] = {
    --     coords = vector3(-1717.33, 2991.2, 33.09),
    --     nestType = 'npc_nest'
    -- },
    -- ['fort_zancudo21'] = {
    --     coords = vector3(-1810.93, 3104.4, 32.84),
    --     nestType = 'npc_nest'
    -- },
    -- ['fort_zancudo22'] = {
    --     coords = vector3(-1821.5, 2966.11, 32.81),
    --     nestType = 'npc_nest'
    -- },
    -- ['fort_zancudo23'] = {
    --     coords = vector3(-2015.91, 2944.78, 32.81),
    --     nestType = 'npc_nest'
    -- },
    -- ['fort_zancudo24'] = {
    --     coords = vector3(-2149.93, 3289.47, 32.81),
    --     nestType = 'npc_nest'
    -- },
    -- ['fort_zancudo25'] = {
    --     coords = vector3(-2287.32, 3199.33, 32.81),
    --     nestType = 'npc_nest'
    -- },
    ['peer1'] = {
        coords = vector3(-1651.47, -1019.23, 12.02),
        nestType = 'zombie_nest'
    },
    ['peer2'] = {
        coords = vector3(-1632.7935, -1070.7703, 12.1199),
        nestType = 'zombie_nest'
    },
    ['peer3'] = {
        coords = vector3(-1657.9830, -1130.6274, 12.0268),
        nestType = 'zombie_nest'
    },
    ['peer4'] = {
        coords = vector3(-1821.0925, -1240.6030, 12.0173),
        nestType = 'zombie_nest'
    },
    ['peer5'] = {
        coords = vector3(-1861.9614, -1198.1006, 12.0172),
        nestType = 'zombie_nest'
    },
    ['peer6'] = {
        coords = vector3(-1790.1301, -1179.4833, 12.0176),
        nestType = 'zombie_nest'
    },
    ['fib1'] = {
        coords = vector3(2564.9922, -294.5422, 91.9925),
        nestType = 'zombie_nest'
    },
    ['fib2'] = {
        coords = vector3(2499.2092, -329.6206, 91.9928),
        nestType = 'zombie_nest'
    },
    ['fib3'] = {
        coords = vector3(2523.71, -383.96, 91.99),
        nestType = 'zombie_nest'
    },
    ['fib4'] = {
        coords = vector3(2499.2385, -445.4135, 91.9928),
        nestType = 'zombie_nest'
    },
    ['fib5'] = {
        coords = vector3(2454.8157, -383.9635, 91.9927),
        nestType = 'zombie_nest'
    },
    ['fib6'] = {
        coords = vector3(2591.8110, -513.7772, 72.6062),
        nestType = 'zombie_nest'
    },
    ['fib7'] = {
        coords = vector3(2514.3215, -424.7116, 117.1888),
        nestType = 'zombie_nest'
    },
    ['fib8'] = {
        coords = vector3(2514.5740, -338.4799, 117.0332),
        nestType = 'zombie_nest'
    },
    ['jail1'] = {
        coords = vector3(1803.5959, 2611.6917, 44.9500),
        nestType = 'prison_zombies'
    },
    ['jail2'] = {
        coords = vector3(1720.02, 2606.12, 44.56),
        nestType = 'prison_zombies'
    },
    ['jail3'] = {
        coords = vector3(1644.71, 2605.25, 44.99),
        nestType = 'prison_zombies'
    },
    ['jail4'] = {
        coords = vector3(1711.28, 2662.34, 44.99),
        nestType = 'prison_zombies'
    },
    ['jail5'] = {
        coords = vector3(1759.8, 2658.48, 44.55),
        nestType = 'prison_zombies'
    },
    ['jail6'] = {
        coords = vector3(1625.49, 2663.29, 54.19),
        nestType = 'prison_zombies'
    },
    ['jail7'] = {
        coords = vector3(1617.6520, 2546.6040, 44.7256),
        nestType = 'prison_zombies'
    },
    ['jail8'] = {
        coords = vector3(1721.5511, 2556.2319, 45.5583),
        nestType = 'prison_zombies'
    },
    ['jail9'] = {
        coords = vector3(1778.7153, 2497.7769, 54.3562),
        nestType = 'prison_zombies'
    },
    ['jail10'] = {
        coords = vector3(1780.6088, 2533.2529, 45.5649),
        nestType = 'prison_zombies'
    },
    ['jail11'] = {
        coords = vector3(1693.01, 2484.25, 45.56),
        nestType = 'prison_zombies'
    },
    ['jail12'] = {
        coords = vector3(1594.59, 2572.18, 55.19),
        nestType = 'prison_zombies'
    },
    ['jail13'] = {
        coords = vector3(1675.16, 2466.39, 55.16), 
        nestType = 'prison_zombies'
    },
    ['jail14'] = {
        coords = vector3(1680.43, 2512.95, 45.00), 
        nestType = 'prison_zombies'
    },
    ['labs1'] = {
        coords = vector3(3415.7053, 3752.4124, 30.6919),
        nestType = 'zombie_nest'
    },
    ['labs2'] = {
        coords = vector3(3526.6008, 3720.8052, 36.6306),
        nestType = 'zombie_nest'
    },
    ['labs3'] = {
        coords = vector3(3616.8467, 3737.2781, 28.8645),
        nestType = 'zombie_nest'
    },
    ['labs4'] = {
        coords = vector3(3591.9207, 3713.1599, 29.6893),
        nestType = 'zombie_nest'
    },
    ['labs5'] = {
        coords = vector3(3562.5220, 3762.1216, 28.8436),
        nestType = 'zombie_nest'
    },
    ['labs6'] = {
        coords = vector3(3576.6335, 3715.8013, 35.3822),
        nestType = 'zombie_nest'
    },
    ['labs7'] = {
        coords = vector3(3580.2229, 3662.9861, 33.0603),
        nestType = 'zombie_nest'
    },
    ['labs8'] = {
        coords = vector3(3455.4519, 3686.2146, 31.4888),
        nestType = 'zombie_nest'
    },
    ['labs9'] = {
        coords = vector3(3370.1152, 3708.2954, 35.4439),
        nestType = 'zombie_nest'
    },
    ['labs10'] = {
        coords = vector3(3599.7175, 3808.8259, 28.8959),
        nestType = 'zombie_nest'
    },
    ['paleto1'] = {
        coords = vector3(-159.4332, 6419.4814, 30.9961),
        nestType = 'zombie_nest'
    },
    ['paleto2'] = {
        coords = vector3(-112.5081, 6501.0405, 30.2170),
        nestType = 'zombie_nest'
    },
    ['paleto3'] = {
        coords = vector3(-238.8119, 6457.0830, 28.8983),
        nestType = 'zombie_nest'
    },
    ['paleto4'] = {
        coords = vector3(-175.1814, 6284.0288, 32.3637),
        nestType = 'zombie_nest'
    },
    ['paleto5'] = {
        coords = vector3(-102.1278, 6266.6182, 30.55188),
        nestType = 'zombie_nest'
    },
    ['paleto6'] = {
        coords = vector3(-25.4545, 6407.8823, 30.4856),
        nestType = 'zombie_nest'
    },
    ['paleto7'] = {
        coords = vector3(-64.3532, 6482.3760, 30.5097),
        nestType = 'zombie_nest'
    },
    ['paleto8'] = {
        coords = vector3(-136.9457, 6353.5635, 30.4945),
        nestType = 'zombie_nest'
    },
    ['paleto9'] = {
        coords = vector3(-267.0801, 6391.7822, 30.0965),
        nestType = 'zombie_nest'
    },
}

-------------------------------------------------------------
---------------------------- SAFEZONE RELATED ---------------
-------------------------------------------------------------

Config.safeZoneBlips = {
    label = "Safe Zone",
    color = 2,
    alpha = 128,
    scale = 0.8,
    sprite = 176,
    shortRange = true      
}

Config.redBlips = {
    label = "Del Perro Pier",
    color = 46,
    alpha = 128,
    scale = 0.7,
    sprite = 266,
    shortRange = true      
}

Config.hauntedBlip = {
    label = "Graveyard",
    color = 46,
    alpha = 128,
    scale = 0.8,
    sprite = 484,
    shortRange = true      
}

Config.fob_memphis_blip = {
    label = "FOB Memphis",
    color = 52,
    alpha = 128,
    scale = 0.6,
    sprite = 557,
    shortRange = true      
}

Config.prisonBlip = {
    label = "Bolingbroke Penitentiary",
    color = 46,
    alpha = 128,
    scale = 0.8,
    sprite = 188,
    shortRange = true      
}

Config.questBlips = {
    label = "Quests",
    color = 4,
    alpha = 128,
    scale = 0.6,
    sprite = 525,
    shortRange = true      
}

Config.humaneBlip = {
    label = "Humane Labs",
    color = 46,
    alpha = 128,
    scale = 0.6,
    sprite = 499,
    shortRange = true      
}

-- Config.radiationBlip = {
--     label = "LS Airport",
--     color = 46,
--     alpha = 128,
--     scale = 0.7,
--     sprite = 251,
--     shortRange = true      
-- }

Config.emsBlips = {
    label = "Safe Zone",
    color = 2,
    alpha = 128,
    scale = 0.8,
    sprite = 61,
    shortRange = true      
}

Config.militaryBlip = {
    label = "Fort Zancudo",
    color = 52,
    alpha = 0,
    scale = 0.6,
    sprite = 557,
    shortRange = true      
}

Config.RedBlipZones = {
    {coords = vector3(-1658.53, -1074.18, 20.45),radious = 0.0,label = "Del Perro Pier",hiden = false},
}

Config.questBlipZones = {
    {coords = vector3(-457.47, 1160.98, 325.86),radious = 0.0,label = "Quests",hiden = false},
}

Config.fob_memphis_blipZones = {
    {coords = vector3(897.91, 3000.69, 45.48),radious = 0.0,label = "FOB Memphis",hiden = false},
}

Config.hauntedBlipZones = {
    {coords = vector3(-1728.3, -198.69, 57.79),radious = 0.0,label = "Graveyard",hiden = false},
}

Config.govBlipZones = {
    {coords = vector3(2501.13, -383.7, 94.33),radious = 200.0,label = "Government Facility",hiden = false},
}

Config.prisonBlipZones = {
    {coords = vector3(1686.2, 2588.19, 51.39),radious = 0.0,label = "Bolingbroke Penitentiary",hiden = false},
}

Config.humaneBlipZones = {
    {coords = vector3(3515.4, 3730.73, 37.53),radious = 0.0,label = "Humane Labs",hiden = false},
}

-- Config.radiationBlipZones = {
--     {coords = vector3(-1303.5, -2653.3, 38.48),radious = 0.0,label = "LS Airport",hiden = false},
-- }

Config.noSpawnZones = {
    {coords = vector3(-401.35, 1204.18, 325.88),radious = 200.0,label = "Galileo Safezone",hiden = false},
    {coords = vector3(749.04, 1286.76, 360.3),radious = 200.0,label = "Medical Center",hiden = true},
} 

Config.emsBlipZones = {
    {coords = vector3(749.04, 1286.76, 360.3),radious = 200.0,label = "Medical Center",hiden = false},
}

Config.militaryBlipZones = {
    {coords = vector3(-2114.06, 3122.04, 32.81),radious = 0.0,label = "Fort Zancudo",hiden = false},
}
-- Config.emsZones = {
--     {coords = vector3(749.04, 1286.76, 360.3),radious = 200.0,label = "Mecial Center",hiden = false},
-- }
 
Config.safeZoneGoThrougthPlayers = false ---- players go throught each other in safe zone (resource expensive)
Config.safeZoneInvincible = true --- You are in GodMode in the SafeZone
Config.safeZonePvE = true --- You can't shoot other players in SafeZone
Config.safeZoneDisableShootOrAttack = true --- You can't shoot in SafeZone at all
Config.safeZoneGhost = false --- Player will be a ghost

Config.safeLeaveSafeZoneTimer = 20 --- Seconds player will keep invincible after leaving safezone

Config.militaryZoneGoThrougthPlayers = false ---- players go throught each other in safe zone (resource expensive)
Config.militaryZoneInvincible = false --- You are in GodMode in the SafeZone
Config.militaryZonePvE = false --- You can't shoot other players in SafeZone
Config.militaryZoneDisableShootOrAttack = false --- You can't shoot in SafeZone at all
Config.militaryZoneGhost = false --- Player will be a ghost

Config.safeLeaveMilitaryZoneTimer = 20 --- Seconds player will keep invincible after leaving safezone

Config.locales = {
    ['in_military'] = "~r~You are entering Fort Zancudo",
    ['leave_military'] = "~r~You are leaving Fort Zancudo",
    ['in_safe'] = "~g~You Are in SafeZone Now",
    ['leave_safe'] = "~r~You Left the SafeZone",
    ['end_invincible'] = "~r~Your invincible time is over"
}

----- THIS ARE ALL EXAMPLES THEY WILL NOT WORK IF YOU DON'T CONFIG THEM
Config.safezonePedsAndProps = {
    ['storage_1'] = {
        type = 'prop',
        model = `prop_container_05mb`,
        coords = vector3(-401.47, 1111.4, 325.87),
        heading = 74.5,
        drawDistance = 160.0,
        noTargetInfo = {
            label = 'Press ~INPUT_CONTEXT~ to open stash',
            distance = 5.0,
            TriggerEvent = { 
                type = "client",
                event = "openstash:open",
                args = {"thisEnt",10},
                entityAsArg = "thisEnt" --- in the arguments, this word will be replaced by the Entity
            },
        },
        blip = {
            label = "Safe Storage",
            color = 16,
            alpha = 128,
            scale = 0.7,
            sprite = 478,
            shortRange = true 
        }
    },
    ['storage_2'] = {
        type = 'prop',
        model = `prop_container_05mb`,
        coords = vector3(792.12, 1284.69, 360.3),
        heading = 180.5,
        drawDistance = 160.0,
        noTargetInfo = {
            label = 'Press ~INPUT_CONTEXT~ to open stash',
            distance = 5.0,
            TriggerEvent = { 
                type = "client",
                event = "openstash:open",
                args = {"thisEnt",10},
                entityAsArg = "thisEnt" --- in the arguments, this word will be replaced by the Entity
            },
        },
        blip = {
            label = "Safe Storage",
            color = 16,
            alpha = 128,
            scale = 0.7,
            sprite = 478,
            shortRange = true 
        }
    }
}
---------------------------- some checks --------------------

Config.UseTargetExport = nil
--------------------------------------
if GetResourceState('ox_target') ~= 'missing' or GetResourceState('qtarget') ~= 'missing' then 
    Config.UseTargetExport = 'qtarget'
elseif GetResourceState('qb-target') ~= 'missing' then 
    Config.UseTargetExport = "qb-target"
else
    --print("[^3WARNING^7] NO TARGET SCRIPT FOUND")
end

Config.Framework = nil

if GetResourceState('es_extended') ~= 'missing' then
    Config.Framework = 'ESX'
elseif GetResourceState('qb-core') ~= 'missing' then
    Config.Framework = 'QB'
end



-------------------------------- RELEVANT EXPORTS

-- exports.hrs_zombies_V2:SpawnPed(model,coords)
-- exports.hrs_zombies_V2:SpawnNest(index,nestType,coords)





