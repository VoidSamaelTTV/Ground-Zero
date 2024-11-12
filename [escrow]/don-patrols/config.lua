Config = {}

Config.Framework = 'qb' -- Framework to use // esx or qb (qb-core)
Config.DebugMode = false -- Set true if you want to see debug messages in the console

Config.Cooldown = 240 -- In minutes // Cooldown for the active patrol to respawn after it's been spawned
Config.DeathPercent = 90 -- Percentage of patrol members that can die before the patrol is removed // 75 = 75% of the patrol members can die before the patrol is removed
Config.ResetsOnDeath = false -- Set true if you want the patrol to respawn after it's been removed due to deaths rather than waiting for the cooldown
Config.DeleteOnReset = false -- Set true if you want the patrol to be deleted when it's removed due to deaths rather than waiting for engine to despawn it
Config.SpawnDistance = 10000.0 -- Distance from any patrol point to spawn the patrol // 250 = 250 meters from any patrol point
Config.DespawnDistance = 20000.0 -- Distance from any patrol point to despawn the patrol // 500 = 500 meters from any patrol point

------------------------------------------------------------------------------------------------------------------------------

Config.Locations = {
  {
    name = 'recycle_center_int_2',
    ['Enabled'] = {guards = true, patrols = false, vehicles = false},
    ['Routes'] = {
      guard = {
        {coords = vector3(1048.02, -3097.16, -39.0), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(1048.96, -3106.39, -39.0), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},

      }
    },
    ['Peds'] = {
      guard = {
        {
          ['Base'] = {
            model = 'csb_cop', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_carbinerifle', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 9999, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }, {
          ['Base'] = {
            model = 's_f_y_ranger_01',
            weapon = 'weapon_pistol',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }, {
          ['Base'] = {
            model = 's_m_m_snowcop_01',
            weapon = 'weapon_pumpshotgun',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 's_m_y_swat_01',
            weapon = 'weapon_smg',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'mp_m_fibsec_01',
            weapon = 'weapon_specialcarbine',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 's_f_y_ranger_01',
            weapon = 'weapon_pistol',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }
      },
      patrol = {
        {
          ['Base'] = {
            model = 's_m_y_blackops_02', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_heavypistol', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 9999, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }
      },
      vehicle = {
        {  -- If passenger number is set below, each peds copies the config from below and applies that to the amount of passengers deinfed below.
          ['Base'] = {
            model = 's_m_y_marine_01', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_smg', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 9999, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
            flags = {29, 32, 116, 151, 229, 241, 250, 366, 391, 398} -- This has it's best use for vehicles, as no vehicle flags are set by default
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }
      }
    },
    ['Vehicles'] = {
      vehicle = {
        {
          ['Base'] = {
            model = 'unarmed1', -- https://docs.fivem.net/docs/game-references/vehicle-models/
            vehType = 'automobile',
            passengers = 2, -- Can be omitted, will default to the table length of the peds array above
            lockType = 3, -- 0 = None, 1 = Unlocked, 2 = Locked, 3 = LockedForPlayer, 4 = LockedPlayerInside, 5 = LockedInitially
            health = 1000.0,
            dirtLevel = 40.0,
            plate = 'REPUBLICAN'
          }
        }
      }
    },
    ['Settings'] = {
      ['Behavior'] = {
        ignoreMelee = false, -- Set to true if you want the ped not react to melee actions
        ignoreFire = false, -- Set to true if you want the ped not react to fire
        ignoreBeingJacked = false, -- Set to true if you want the ped not react to being jacked
        ignoreSilencedClone = true, -- Set to true if you want the ped not react to silenced weapons
        ignoreExplosion = false, -- Set to true if you want the ped not react to explosions
        preventMeleeTaunts = false, -- Set to true if you want the ped not melee taunt
        disableHurt = false, -- Set to true if you want the ped not have hurt reactions
        disableWrithe = false, -- Set to true if you want the ped not writhe on the ground
        preferInjuredGetup = true, -- Set to true if you want the ped to prefer getting up from an injured state
        onlyWritheFromWeapon = true, -- Set to true if you want the ped to only writhe from weapon damage
        runFromFires = true, -- Set to true if you want the ped to run from fires
        dontShoutTarget = false, -- Set to true if you want the ped to not communicate their targets postion
        dontCryForHelp = false -- Set to true if you want the ped to not call for help when injured
      },
      ['Blips'] = {
        enabled = false, -- Set to true if you want the ped to have a blip
        hasCone = false, -- Whether the blip has a view cone on the minimap whilst active
        colour = 1, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        range = 50.0, -- The range the blip can be activated from
        clearOnDeath = true
      },
      ['Combat'] = {
        attributes = {5, 14, 15, 22, 42, 44, 46}, -- https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201
        ability = 20, -- 0-50 = Poor, 50-75 = Average, 75+ = Professional
        accuracy = 10, -- 0 - 100
        alertness = 3, -- 0 = Calm, 3 = Paranoid
        movement = 1, -- 0 = Stationary, 1 = Defensive, 2 = WillAdvance, 3 = WillRetreat
        range = 2, -- 0 = Near, 1 = Medium, 2 = Far, 3 = VeryFar
        targetResponse = 2, -- 0 = Exist Task, 1 = Never Lose target, 2 = Search For Target
        canAttackFriendly = false, -- Whether the ped can attack friendly peds
        canUseCover = true, -- Whether the ped can use cover
        useDiminishingAmmo = true, -- Set false for the ped to have infinite ammo, true to use ammo declared in ['Peds']['Base'].ammo
        blockWeaponSwitching = false, -- Whether the ped can switch weapons
        enableWeaponBlocking = false, -- Whether the ped can block weapon attacks
        keepWeaponHolstered = false, -- Whether the ped will keep their weapon holstered until fired
        disableMelee = false, -- Whether the ped can use melee attacks
        disableUnarmedDriveby = false, -- Whether the ped can use unarmed drivebys
        disableWritheShooting = false, -- Whether the ped can shoot whilst writheing on the ground
        respondToHelpCries = true, -- Whether the ped will respond to help cries
        seeApproachingVehicles = true, -- Whether the ped can always see approaching vehicles
        treatDislikeAsHated = false, -- Whether the ped will treat dislike as hated (Relationship type 4)
        treatNonFriendlyAsHated = false, -- Whether the ped will treat non friendly as hated (Any Relationship from 3 and above)
        broadcastGoingToThreat = true -- Whether the ped will broadcast that they are going to a threat
      },
      ['Damages'] = {
        diesWhenInjured = false, -- Set to true if you want the ped to die when injured
        incapacitation = true, -- Set to true if you want the ped to writhe when injured
        criticals = true, -- Set to true if you want the ped to suffer critical hits
        bullets = true, -- Set to true if you want the ped to suffer bullet damage
        fire = true, -- Set to true if you want the ped to suffer fire damage
        explosion = true, -- Set to true if you want the ped to suffer explosion damage
        collision = true, -- Set to true if you want the ped to suffer collision damage
        steam = true, -- Set to true if you want the ped to suffer steam damage
        melee = true, -- Set to true if you want the ped to suffer melee damage
        drown = true, -- Set to true if you want the ped to drown
        electric = true, -- Set to true if you want the ped to suffer electric damage
        ragdoll = false, -- Set to true if you want the ped to die when ragdolled
        invincible = false -- Set to true if you want the ped to be invincible
      },
      ['Drops'] = {
        weapons = false, -- Set to true if you want the ped to drop their weapon when killed
        healthSnacks = false -- Set to true if you want the ped to drop a health snack when killed
      },
      ['Events'] = {
        generateSoundEvents = true, -- Set to true if you want the ped to generate sound events
        listensToSoundEvents = true, -- Set to true if you want the ped to listen to sound events
        checkLOSForSoundEvents = true, -- Set to true if you want the ped to check line of sight to generate/respond sound events
        disableWeirdPedEvents = false, -- Set to true if you want the ped to disable weird ped events
        disableCryForHelpEvents = false, -- Set to true if you want the ped to disable cry for help events
        usePerceptionForAimEvents = true, -- Set to true if you want the ped to use perception for aim events
        disableShockingEvents = false, -- Set to true if you want the ped to disable shocking events
        disableShockingDrivingEvents = false -- Set to true if you want the ped to disable shocking driving events
      },
      ['Pathing'] = {
        ['Avoidance'] = {
          avoidDrops = true, -- Set to true if you want the ped to avoid falls from height
          avoidFire = true, -- Set to true if you want the ped to avoid fire
          avoidPeds = true, -- Set to true if you want the ped to avoid other peds
          avoidTearGas = true, -- Set to true if you want the ped to avoid tear gas
          avoidWater = true -- Set to true if you want the ped to avoid water
        },
        ['Movement'] = {
          disableCrouch = false, -- Set to true if you want the ped to disable crouching
          disableDives = false, -- Set to true if you want the ped to disable evasive diving
          disableClimbing = false, -- Set to true if you want the ped to disable climbing over objects
          disableLadders = false -- Set to true if you want the ped to disable climbing ladders
        },
        ['Ragdolling'] = {
          canRagdoll = true, -- Set to true if you want the ped to be able to ragdoll
          pedImpact = true, -- Set to true if you want the ped to ragdoll from ped impacts
          vehicleImpact = true, -- Set to true if you want the ped to ragdoll from vehicle impacts
          bulletImpact = true, -- Set to true if you want the ped to ragdoll from bullet impacts
          explosion = true, -- Set to true if you want the ped to ragdoll from explosions
          fire = true, -- Set to true if you want the ped to ragdoll from fires
          electrocution = true, -- Set to true if you want the ped to ragdoll from being electrocuted
          objectImpact = true, -- Set to true if you want the ped to ragdoll from object impacts
          melee = true, -- Set to true if you want the ped to ragdoll from melee attacks
          waterjetImpact = true, -- Set to true if you want the ped to ragdoll from water jet impacts
          drowning = true, -- Set to true if you want the ped to ragdoll from drowning
          falling = true, -- Set to true if you want the ped to ragdoll from falling
          onBoats = true, -- Set to true if you want the ped to ragdoll from being on boats whilst they're moving
          rubberBullet = true, -- Set to true if you want the ped to ragdoll from rubber bullet impacts
          smokeGrenades = true, -- Set to true if you want the ped to ragdoll from smoke grenade impacts
          pedCollision = true, -- Set to true if you want the ped to ragdoll from ped collisions
          vehicleCollision = true, -- Set to true if you want the ped to ragdoll from vehicle collisions
          playerImpact = true, -- Set to true if you want the ped to ragdoll from player impacts
          aiRagdollImpact = true, -- Set to true if you want the ped to ragdoll from ai ragdoll impacts
          playerRagdollImpact = true, -- Set to true if you want the ped to ragdoll from player ragdoll impacts
          minorPlayerImpact = true, -- Set to true if you want the ped to ragdoll from minor player impacts
          ragdollOnDeath = true -- Set to true if you want the ped to ragdoll on death
        }
      },
      ['Relationships'] = { -- 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
        [5] = {'ZOMBIE'}, -- Can be a table of jobs
        [3] = {'PLAYER'}, -- Can be a table of jobs
        override = 'The Resistance' -- If multiple patrols need to be friendly to each other, set this as the same for each patrol
      },
    }
  },
  {
    name = 'recycle_center_ext_2',
    ['Enabled'] = {guards = true, patrols = false, vehicles = false},
    ['Routes'] = {
      guard = {
        {coords = vector3(77.87, 6471.37, 31.4), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(95.44, 6444.64, 31.35), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(119.39, 6471.46, 31.26), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(113.46, 6431.06, 31.76), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(84.78, 6391.13, 31.38), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(34.6, 6386.93, 31.57), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},

      }
    },
    ['Peds'] = {
      guard = {
        {
          ['Base'] = {
            model = 'csb_cop', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_carbinerifle', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 9999, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }, {
          ['Base'] = {
            model = 's_f_y_ranger_01',
            weapon = 'weapon_pistol',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }, {
          ['Base'] = {
            model = 's_m_m_snowcop_01',
            weapon = 'weapon_pumpshotgun',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 's_m_y_swat_01',
            weapon = 'weapon_smg',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'mp_m_fibsec_01',
            weapon = 'weapon_specialcarbine',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 's_f_y_ranger_01',
            weapon = 'weapon_pistol',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }
      },
      patrol = {
        {
          ['Base'] = {
            model = 's_m_y_blackops_02', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_heavypistol', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 9999, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }
      },
      vehicle = {
        {  -- If passenger number is set below, each peds copies the config from below and applies that to the amount of passengers deinfed below.
          ['Base'] = {
            model = 's_m_y_marine_01', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_smg', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 9999, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
            flags = {29, 32, 116, 151, 229, 241, 250, 366, 391, 398} -- This has it's best use for vehicles, as no vehicle flags are set by default
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }
      }
    },
    ['Vehicles'] = {
      vehicle = {
        {
          ['Base'] = {
            model = 'unarmed1', -- https://docs.fivem.net/docs/game-references/vehicle-models/
            vehType = 'automobile',
            passengers = 2, -- Can be omitted, will default to the table length of the peds array above
            lockType = 3, -- 0 = None, 1 = Unlocked, 2 = Locked, 3 = LockedForPlayer, 4 = LockedPlayerInside, 5 = LockedInitially
            health = 1000.0,
            dirtLevel = 40.0,
            plate = 'REPUBLICAN'
          }
        }
      }
    },
    ['Settings'] = {
      ['Behavior'] = {
        ignoreMelee = false, -- Set to true if you want the ped not react to melee actions
        ignoreFire = false, -- Set to true if you want the ped not react to fire
        ignoreBeingJacked = false, -- Set to true if you want the ped not react to being jacked
        ignoreSilencedClone = true, -- Set to true if you want the ped not react to silenced weapons
        ignoreExplosion = false, -- Set to true if you want the ped not react to explosions
        preventMeleeTaunts = false, -- Set to true if you want the ped not melee taunt
        disableHurt = false, -- Set to true if you want the ped not have hurt reactions
        disableWrithe = false, -- Set to true if you want the ped not writhe on the ground
        preferInjuredGetup = true, -- Set to true if you want the ped to prefer getting up from an injured state
        onlyWritheFromWeapon = true, -- Set to true if you want the ped to only writhe from weapon damage
        runFromFires = true, -- Set to true if you want the ped to run from fires
        dontShoutTarget = false, -- Set to true if you want the ped to not communicate their targets postion
        dontCryForHelp = false -- Set to true if you want the ped to not call for help when injured
      },
      ['Blips'] = {
        enabled = false, -- Set to true if you want the ped to have a blip
        hasCone = false, -- Whether the blip has a view cone on the minimap whilst active
        colour = 1, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        range = 50.0, -- The range the blip can be activated from
        clearOnDeath = true
      },
      ['Combat'] = {
        attributes = {5, 14, 15, 22, 42, 44, 46}, -- https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201
        ability = 20, -- 0-50 = Poor, 50-75 = Average, 75+ = Professional
        accuracy = 10, -- 0 - 100
        alertness = 3, -- 0 = Calm, 3 = Paranoid
        movement = 1, -- 0 = Stationary, 1 = Defensive, 2 = WillAdvance, 3 = WillRetreat
        range = 2, -- 0 = Near, 1 = Medium, 2 = Far, 3 = VeryFar
        targetResponse = 2, -- 0 = Exist Task, 1 = Never Lose target, 2 = Search For Target
        canAttackFriendly = false, -- Whether the ped can attack friendly peds
        canUseCover = true, -- Whether the ped can use cover
        useDiminishingAmmo = true, -- Set false for the ped to have infinite ammo, true to use ammo declared in ['Peds']['Base'].ammo
        blockWeaponSwitching = false, -- Whether the ped can switch weapons
        enableWeaponBlocking = false, -- Whether the ped can block weapon attacks
        keepWeaponHolstered = false, -- Whether the ped will keep their weapon holstered until fired
        disableMelee = false, -- Whether the ped can use melee attacks
        disableUnarmedDriveby = false, -- Whether the ped can use unarmed drivebys
        disableWritheShooting = false, -- Whether the ped can shoot whilst writheing on the ground
        respondToHelpCries = true, -- Whether the ped will respond to help cries
        seeApproachingVehicles = true, -- Whether the ped can always see approaching vehicles
        treatDislikeAsHated = false, -- Whether the ped will treat dislike as hated (Relationship type 4)
        treatNonFriendlyAsHated = false, -- Whether the ped will treat non friendly as hated (Any Relationship from 3 and above)
        broadcastGoingToThreat = true -- Whether the ped will broadcast that they are going to a threat
      },
      ['Damages'] = {
        diesWhenInjured = false, -- Set to true if you want the ped to die when injured
        incapacitation = true, -- Set to true if you want the ped to writhe when injured
        criticals = true, -- Set to true if you want the ped to suffer critical hits
        bullets = true, -- Set to true if you want the ped to suffer bullet damage
        fire = true, -- Set to true if you want the ped to suffer fire damage
        explosion = true, -- Set to true if you want the ped to suffer explosion damage
        collision = true, -- Set to true if you want the ped to suffer collision damage
        steam = true, -- Set to true if you want the ped to suffer steam damage
        melee = true, -- Set to true if you want the ped to suffer melee damage
        drown = true, -- Set to true if you want the ped to drown
        electric = true, -- Set to true if you want the ped to suffer electric damage
        ragdoll = false, -- Set to true if you want the ped to die when ragdolled
        invincible = false -- Set to true if you want the ped to be invincible
      },
      ['Drops'] = {
        weapons = false, -- Set to true if you want the ped to drop their weapon when killed
        healthSnacks = false -- Set to true if you want the ped to drop a health snack when killed
      },
      ['Events'] = {
        generateSoundEvents = true, -- Set to true if you want the ped to generate sound events
        listensToSoundEvents = true, -- Set to true if you want the ped to listen to sound events
        checkLOSForSoundEvents = true, -- Set to true if you want the ped to check line of sight to generate/respond sound events
        disableWeirdPedEvents = false, -- Set to true if you want the ped to disable weird ped events
        disableCryForHelpEvents = false, -- Set to true if you want the ped to disable cry for help events
        usePerceptionForAimEvents = true, -- Set to true if you want the ped to use perception for aim events
        disableShockingEvents = false, -- Set to true if you want the ped to disable shocking events
        disableShockingDrivingEvents = false -- Set to true if you want the ped to disable shocking driving events
      },
      ['Pathing'] = {
        ['Avoidance'] = {
          avoidDrops = true, -- Set to true if you want the ped to avoid falls from height
          avoidFire = true, -- Set to true if you want the ped to avoid fire
          avoidPeds = true, -- Set to true if you want the ped to avoid other peds
          avoidTearGas = true, -- Set to true if you want the ped to avoid tear gas
          avoidWater = true -- Set to true if you want the ped to avoid water
        },
        ['Movement'] = {
          disableCrouch = false, -- Set to true if you want the ped to disable crouching
          disableDives = false, -- Set to true if you want the ped to disable evasive diving
          disableClimbing = false, -- Set to true if you want the ped to disable climbing over objects
          disableLadders = false -- Set to true if you want the ped to disable climbing ladders
        },
        ['Ragdolling'] = {
          canRagdoll = true, -- Set to true if you want the ped to be able to ragdoll
          pedImpact = true, -- Set to true if you want the ped to ragdoll from ped impacts
          vehicleImpact = true, -- Set to true if you want the ped to ragdoll from vehicle impacts
          bulletImpact = true, -- Set to true if you want the ped to ragdoll from bullet impacts
          explosion = true, -- Set to true if you want the ped to ragdoll from explosions
          fire = true, -- Set to true if you want the ped to ragdoll from fires
          electrocution = true, -- Set to true if you want the ped to ragdoll from being electrocuted
          objectImpact = true, -- Set to true if you want the ped to ragdoll from object impacts
          melee = true, -- Set to true if you want the ped to ragdoll from melee attacks
          waterjetImpact = true, -- Set to true if you want the ped to ragdoll from water jet impacts
          drowning = true, -- Set to true if you want the ped to ragdoll from drowning
          falling = true, -- Set to true if you want the ped to ragdoll from falling
          onBoats = true, -- Set to true if you want the ped to ragdoll from being on boats whilst they're moving
          rubberBullet = true, -- Set to true if you want the ped to ragdoll from rubber bullet impacts
          smokeGrenades = true, -- Set to true if you want the ped to ragdoll from smoke grenade impacts
          pedCollision = true, -- Set to true if you want the ped to ragdoll from ped collisions
          vehicleCollision = true, -- Set to true if you want the ped to ragdoll from vehicle collisions
          playerImpact = true, -- Set to true if you want the ped to ragdoll from player impacts
          aiRagdollImpact = true, -- Set to true if you want the ped to ragdoll from ai ragdoll impacts
          playerRagdollImpact = true, -- Set to true if you want the ped to ragdoll from player ragdoll impacts
          minorPlayerImpact = true, -- Set to true if you want the ped to ragdoll from minor player impacts
          ragdollOnDeath = true -- Set to true if you want the ped to ragdoll on death
        }
      },
      ['Relationships'] = { -- 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
        [5] = {'ZOMBIE'}, -- Can be a table of jobs
        [0] = {'PLAYER'}, -- Can be a table of jobs
        override = 'The Resistance' -- If multiple patrols need to be friendly to each other, set this as the same for each patrol
      },
    }
  },
  {
    name = 'recycle_center_ext',
    ['Enabled'] = {guards = true, patrols = false, vehicles = false},
    ['Routes'] = {
      guard = {
        {coords = vector3(59.33, 6475.3, 31.43), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(52.69, 6468.7, 31.43), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(41.86, 6457.17, 31.43), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(77.46, 6427.34, 31.53), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(61.69, 6451.69, 31.36), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(22.88, 6433.96, 31.43), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},

      }
    },
    ['Peds'] = {
      guard = {
        {
          ['Base'] = {
            model = 'RussianSF', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_carbinerifle', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 9999, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }, {
          ['Base'] = {
            model = 'RussianSF2',
            weapon = 'weapon_pistol',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }, {
          ['Base'] = {
            model = 'RussianSF3',
            weapon = 'weapon_pumpshotgun',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'Spetnaz',
            weapon = 'weapon_smg',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian11',
            weapon = 'weapon_specialcarbine',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian10',
            weapon = 'weapon_pistol',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }
      },
      patrol = {
        {
          ['Base'] = {
            model = 's_m_y_blackops_02', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_heavypistol', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 9999, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }
      },
      vehicle = {
        {  -- If passenger number is set below, each peds copies the config from below and applies that to the amount of passengers deinfed below.
          ['Base'] = {
            model = 's_m_y_marine_01', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_smg', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 9999, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
            flags = {29, 32, 116, 151, 229, 241, 250, 366, 391, 398} -- This has it's best use for vehicles, as no vehicle flags are set by default
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }
      }
    },
    ['Vehicles'] = {
      vehicle = {
        {
          ['Base'] = {
            model = 'unarmed1', -- https://docs.fivem.net/docs/game-references/vehicle-models/
            vehType = 'automobile',
            passengers = 2, -- Can be omitted, will default to the table length of the peds array above
            lockType = 3, -- 0 = None, 1 = Unlocked, 2 = Locked, 3 = LockedForPlayer, 4 = LockedPlayerInside, 5 = LockedInitially
            health = 1000.0,
            dirtLevel = 40.0,
            plate = 'REPUBLICAN'
          }
        }
      }
    },
    ['Settings'] = {
      ['Behavior'] = {
        ignoreMelee = false, -- Set to true if you want the ped not react to melee actions
        ignoreFire = false, -- Set to true if you want the ped not react to fire
        ignoreBeingJacked = false, -- Set to true if you want the ped not react to being jacked
        ignoreSilencedClone = true, -- Set to true if you want the ped not react to silenced weapons
        ignoreExplosion = false, -- Set to true if you want the ped not react to explosions
        preventMeleeTaunts = false, -- Set to true if you want the ped not melee taunt
        disableHurt = false, -- Set to true if you want the ped not have hurt reactions
        disableWrithe = false, -- Set to true if you want the ped not writhe on the ground
        preferInjuredGetup = true, -- Set to true if you want the ped to prefer getting up from an injured state
        onlyWritheFromWeapon = true, -- Set to true if you want the ped to only writhe from weapon damage
        runFromFires = true, -- Set to true if you want the ped to run from fires
        dontShoutTarget = false, -- Set to true if you want the ped to not communicate their targets postion
        dontCryForHelp = false -- Set to true if you want the ped to not call for help when injured
      },
      ['Blips'] = {
        enabled = false, -- Set to true if you want the ped to have a blip
        hasCone = false, -- Whether the blip has a view cone on the minimap whilst active
        colour = 1, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        range = 50.0, -- The range the blip can be activated from
        clearOnDeath = true
      },
      ['Combat'] = {
        attributes = {5, 14, 15, 22, 42, 44, 46}, -- https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201
        ability = 20, -- 0-50 = Poor, 50-75 = Average, 75+ = Professional
        accuracy = 10, -- 0 - 100
        alertness = 3, -- 0 = Calm, 3 = Paranoid
        movement = 1, -- 0 = Stationary, 1 = Defensive, 2 = WillAdvance, 3 = WillRetreat
        range = 2, -- 0 = Near, 1 = Medium, 2 = Far, 3 = VeryFar
        targetResponse = 2, -- 0 = Exist Task, 1 = Never Lose target, 2 = Search For Target
        canAttackFriendly = false, -- Whether the ped can attack friendly peds
        canUseCover = true, -- Whether the ped can use cover
        useDiminishingAmmo = true, -- Set false for the ped to have infinite ammo, true to use ammo declared in ['Peds']['Base'].ammo
        blockWeaponSwitching = false, -- Whether the ped can switch weapons
        enableWeaponBlocking = false, -- Whether the ped can block weapon attacks
        keepWeaponHolstered = false, -- Whether the ped will keep their weapon holstered until fired
        disableMelee = false, -- Whether the ped can use melee attacks
        disableUnarmedDriveby = false, -- Whether the ped can use unarmed drivebys
        disableWritheShooting = false, -- Whether the ped can shoot whilst writheing on the ground
        respondToHelpCries = true, -- Whether the ped will respond to help cries
        seeApproachingVehicles = true, -- Whether the ped can always see approaching vehicles
        treatDislikeAsHated = false, -- Whether the ped will treat dislike as hated (Relationship type 4)
        treatNonFriendlyAsHated = false, -- Whether the ped will treat non friendly as hated (Any Relationship from 3 and above)
        broadcastGoingToThreat = true -- Whether the ped will broadcast that they are going to a threat
      },
      ['Damages'] = {
        diesWhenInjured = false, -- Set to true if you want the ped to die when injured
        incapacitation = true, -- Set to true if you want the ped to writhe when injured
        criticals = true, -- Set to true if you want the ped to suffer critical hits
        bullets = true, -- Set to true if you want the ped to suffer bullet damage
        fire = true, -- Set to true if you want the ped to suffer fire damage
        explosion = true, -- Set to true if you want the ped to suffer explosion damage
        collision = true, -- Set to true if you want the ped to suffer collision damage
        steam = true, -- Set to true if you want the ped to suffer steam damage
        melee = true, -- Set to true if you want the ped to suffer melee damage
        drown = true, -- Set to true if you want the ped to drown
        electric = true, -- Set to true if you want the ped to suffer electric damage
        ragdoll = false, -- Set to true if you want the ped to die when ragdolled
        invincible = false -- Set to true if you want the ped to be invincible
      },
      ['Drops'] = {
        weapons = false, -- Set to true if you want the ped to drop their weapon when killed
        healthSnacks = false -- Set to true if you want the ped to drop a health snack when killed
      },
      ['Events'] = {
        generateSoundEvents = true, -- Set to true if you want the ped to generate sound events
        listensToSoundEvents = true, -- Set to true if you want the ped to listen to sound events
        checkLOSForSoundEvents = true, -- Set to true if you want the ped to check line of sight to generate/respond sound events
        disableWeirdPedEvents = false, -- Set to true if you want the ped to disable weird ped events
        disableCryForHelpEvents = false, -- Set to true if you want the ped to disable cry for help events
        usePerceptionForAimEvents = true, -- Set to true if you want the ped to use perception for aim events
        disableShockingEvents = false, -- Set to true if you want the ped to disable shocking events
        disableShockingDrivingEvents = false -- Set to true if you want the ped to disable shocking driving events
      },
      ['Pathing'] = {
        ['Avoidance'] = {
          avoidDrops = true, -- Set to true if you want the ped to avoid falls from height
          avoidFire = true, -- Set to true if you want the ped to avoid fire
          avoidPeds = true, -- Set to true if you want the ped to avoid other peds
          avoidTearGas = true, -- Set to true if you want the ped to avoid tear gas
          avoidWater = true -- Set to true if you want the ped to avoid water
        },
        ['Movement'] = {
          disableCrouch = false, -- Set to true if you want the ped to disable crouching
          disableDives = false, -- Set to true if you want the ped to disable evasive diving
          disableClimbing = false, -- Set to true if you want the ped to disable climbing over objects
          disableLadders = false -- Set to true if you want the ped to disable climbing ladders
        },
        ['Ragdolling'] = {
          canRagdoll = true, -- Set to true if you want the ped to be able to ragdoll
          pedImpact = true, -- Set to true if you want the ped to ragdoll from ped impacts
          vehicleImpact = true, -- Set to true if you want the ped to ragdoll from vehicle impacts
          bulletImpact = true, -- Set to true if you want the ped to ragdoll from bullet impacts
          explosion = true, -- Set to true if you want the ped to ragdoll from explosions
          fire = true, -- Set to true if you want the ped to ragdoll from fires
          electrocution = true, -- Set to true if you want the ped to ragdoll from being electrocuted
          objectImpact = true, -- Set to true if you want the ped to ragdoll from object impacts
          melee = true, -- Set to true if you want the ped to ragdoll from melee attacks
          waterjetImpact = true, -- Set to true if you want the ped to ragdoll from water jet impacts
          drowning = true, -- Set to true if you want the ped to ragdoll from drowning
          falling = true, -- Set to true if you want the ped to ragdoll from falling
          onBoats = true, -- Set to true if you want the ped to ragdoll from being on boats whilst they're moving
          rubberBullet = true, -- Set to true if you want the ped to ragdoll from rubber bullet impacts
          smokeGrenades = true, -- Set to true if you want the ped to ragdoll from smoke grenade impacts
          pedCollision = true, -- Set to true if you want the ped to ragdoll from ped collisions
          vehicleCollision = true, -- Set to true if you want the ped to ragdoll from vehicle collisions
          playerImpact = true, -- Set to true if you want the ped to ragdoll from player impacts
          aiRagdollImpact = true, -- Set to true if you want the ped to ragdoll from ai ragdoll impacts
          playerRagdollImpact = true, -- Set to true if you want the ped to ragdoll from player ragdoll impacts
          minorPlayerImpact = true, -- Set to true if you want the ped to ragdoll from minor player impacts
          ragdollOnDeath = true -- Set to true if you want the ped to ragdoll on death
        }
      },
      ['Relationships'] = { -- 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
        [5] = {'ZOMBIE', 'PLAYER'}, -- Can be a table of jobs
        override = 'Russian' -- If multiple patrols need to be friendly to each other, set this as the same for each patrol
      },
    }
  },
  {
    name = 'blackmarket',
    ['Enabled'] = {guards = true, patrols = false, vehicles = false},
    ['Routes'] = {
      guard = {
        {coords = vector3(-284.05, -2215.82, 9.92), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(-306.52, -2191.63, 10.84), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(-296.26, -2178.96, 10.25), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(-279.04, -2195.4, 10.24), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(-291.38, -2241.26, 8.19), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(-325.28, -2213.78, 8.1), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},

      },
      patrol = {
        { -- Gunrunning Patrol
          {coords = vector3(534.27, 246.02, 103.12), heading = 50.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(554.91, 237.63, 103.08), heading = 50.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(568.14, 260.84, 103.03), heading = 50.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(586.78, 256.89, 103.04), heading = 50.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(606.68, 243.83, 102.65), heading = 50.92, stopTime = math.random(1000, 5000)},

        }
      },
      vehicle = { -- https://vespura.com/fivem/drivingstyle/
      { -- Mesa Property Rotation
        {coords = vector3(392.84, 258.17, 102.85), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(418.4, 278.99, 102.85), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(428.76, 290.74, 102.86), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(459.57, 285.77, 102.83), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(506.93, 263.06, 102.91), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(598.89, 229.44, 102.61), speed = 10.0, drivingStyle = 262716},

      },
    }
    },
    ['Peds'] = {
      guard = {
        {
          ['Base'] = {
            model = 'mp_m_bogdangoon', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_carbinerifle', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 9999, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }, {
          ['Base'] = {
            model = 'mp_m_bogdangoon',
            weapon = 'weapon_pistol',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }, {
          ['Base'] = {
            model = 'mp_m_bogdangoon',
            weapon = 'weapon_pumpshotgun',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'csb_bogdan',
            weapon = 'weapon_smg',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'mp_m_bogdangoon',
            weapon = 'weapon_specialcarbine',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'csb_bogdan',
            weapon = 'weapon_pistol',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }
      },
      patrol = {
        {
          ['Base'] = {
            model = 's_m_y_blackops_02', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_heavypistol', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 9999, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }
      },
      vehicle = {
        {  -- If passenger number is set below, each peds copies the config from below and applies that to the amount of passengers deinfed below.
          ['Base'] = {
            model = 's_m_y_marine_01', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_smg', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 9999, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
            flags = {29, 32, 116, 151, 229, 241, 250, 366, 391, 398} -- This has it's best use for vehicles, as no vehicle flags are set by default
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }
      }
    },
    ['Vehicles'] = {
      vehicle = {
        {
          ['Base'] = {
            model = 'unarmed1', -- https://docs.fivem.net/docs/game-references/vehicle-models/
            vehType = 'automobile',
            passengers = 2, -- Can be omitted, will default to the table length of the peds array above
            lockType = 3, -- 0 = None, 1 = Unlocked, 2 = Locked, 3 = LockedForPlayer, 4 = LockedPlayerInside, 5 = LockedInitially
            health = 1000.0,
            dirtLevel = 40.0,
            plate = 'REPUBLICAN'
          }
        }
      }
    },
    ['Settings'] = {
      ['Behavior'] = {
        ignoreMelee = false, -- Set to true if you want the ped not react to melee actions
        ignoreFire = false, -- Set to true if you want the ped not react to fire
        ignoreBeingJacked = false, -- Set to true if you want the ped not react to being jacked
        ignoreSilencedClone = true, -- Set to true if you want the ped not react to silenced weapons
        ignoreExplosion = false, -- Set to true if you want the ped not react to explosions
        preventMeleeTaunts = false, -- Set to true if you want the ped not melee taunt
        disableHurt = false, -- Set to true if you want the ped not have hurt reactions
        disableWrithe = false, -- Set to true if you want the ped not writhe on the ground
        preferInjuredGetup = true, -- Set to true if you want the ped to prefer getting up from an injured state
        onlyWritheFromWeapon = true, -- Set to true if you want the ped to only writhe from weapon damage
        runFromFires = true, -- Set to true if you want the ped to run from fires
        dontShoutTarget = false, -- Set to true if you want the ped to not communicate their targets postion
        dontCryForHelp = false -- Set to true if you want the ped to not call for help when injured
      },
      ['Blips'] = {
        enabled = false, -- Set to true if you want the ped to have a blip
        hasCone = false, -- Whether the blip has a view cone on the minimap whilst active
        colour = 1, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        range = 50.0, -- The range the blip can be activated from
        clearOnDeath = true
      },
      ['Combat'] = {
        attributes = {5, 14, 15, 22, 42, 44, 46}, -- https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201
        ability = 20, -- 0-50 = Poor, 50-75 = Average, 75+ = Professional
        accuracy = 10, -- 0 - 100
        alertness = 3, -- 0 = Calm, 3 = Paranoid
        movement = 1, -- 0 = Stationary, 1 = Defensive, 2 = WillAdvance, 3 = WillRetreat
        range = 2, -- 0 = Near, 1 = Medium, 2 = Far, 3 = VeryFar
        targetResponse = 2, -- 0 = Exist Task, 1 = Never Lose target, 2 = Search For Target
        canAttackFriendly = false, -- Whether the ped can attack friendly peds
        canUseCover = true, -- Whether the ped can use cover
        useDiminishingAmmo = true, -- Set false for the ped to have infinite ammo, true to use ammo declared in ['Peds']['Base'].ammo
        blockWeaponSwitching = false, -- Whether the ped can switch weapons
        enableWeaponBlocking = false, -- Whether the ped can block weapon attacks
        keepWeaponHolstered = false, -- Whether the ped will keep their weapon holstered until fired
        disableMelee = false, -- Whether the ped can use melee attacks
        disableUnarmedDriveby = false, -- Whether the ped can use unarmed drivebys
        disableWritheShooting = false, -- Whether the ped can shoot whilst writheing on the ground
        respondToHelpCries = true, -- Whether the ped will respond to help cries
        seeApproachingVehicles = true, -- Whether the ped can always see approaching vehicles
        treatDislikeAsHated = false, -- Whether the ped will treat dislike as hated (Relationship type 4)
        treatNonFriendlyAsHated = false, -- Whether the ped will treat non friendly as hated (Any Relationship from 3 and above)
        broadcastGoingToThreat = true -- Whether the ped will broadcast that they are going to a threat
      },
      ['Damages'] = {
        diesWhenInjured = false, -- Set to true if you want the ped to die when injured
        incapacitation = true, -- Set to true if you want the ped to writhe when injured
        criticals = true, -- Set to true if you want the ped to suffer critical hits
        bullets = true, -- Set to true if you want the ped to suffer bullet damage
        fire = true, -- Set to true if you want the ped to suffer fire damage
        explosion = true, -- Set to true if you want the ped to suffer explosion damage
        collision = true, -- Set to true if you want the ped to suffer collision damage
        steam = true, -- Set to true if you want the ped to suffer steam damage
        melee = true, -- Set to true if you want the ped to suffer melee damage
        drown = true, -- Set to true if you want the ped to drown
        electric = true, -- Set to true if you want the ped to suffer electric damage
        ragdoll = false, -- Set to true if you want the ped to die when ragdolled
        invincible = false -- Set to true if you want the ped to be invincible
      },
      ['Drops'] = {
        weapons = false, -- Set to true if you want the ped to drop their weapon when killed
        healthSnacks = false -- Set to true if you want the ped to drop a health snack when killed
      },
      ['Events'] = {
        generateSoundEvents = true, -- Set to true if you want the ped to generate sound events
        listensToSoundEvents = true, -- Set to true if you want the ped to listen to sound events
        checkLOSForSoundEvents = true, -- Set to true if you want the ped to check line of sight to generate/respond sound events
        disableWeirdPedEvents = false, -- Set to true if you want the ped to disable weird ped events
        disableCryForHelpEvents = false, -- Set to true if you want the ped to disable cry for help events
        usePerceptionForAimEvents = true, -- Set to true if you want the ped to use perception for aim events
        disableShockingEvents = false, -- Set to true if you want the ped to disable shocking events
        disableShockingDrivingEvents = false -- Set to true if you want the ped to disable shocking driving events
      },
      ['Pathing'] = {
        ['Avoidance'] = {
          avoidDrops = true, -- Set to true if you want the ped to avoid falls from height
          avoidFire = true, -- Set to true if you want the ped to avoid fire
          avoidPeds = true, -- Set to true if you want the ped to avoid other peds
          avoidTearGas = true, -- Set to true if you want the ped to avoid tear gas
          avoidWater = true -- Set to true if you want the ped to avoid water
        },
        ['Movement'] = {
          disableCrouch = false, -- Set to true if you want the ped to disable crouching
          disableDives = false, -- Set to true if you want the ped to disable evasive diving
          disableClimbing = false, -- Set to true if you want the ped to disable climbing over objects
          disableLadders = false -- Set to true if you want the ped to disable climbing ladders
        },
        ['Ragdolling'] = {
          canRagdoll = true, -- Set to true if you want the ped to be able to ragdoll
          pedImpact = true, -- Set to true if you want the ped to ragdoll from ped impacts
          vehicleImpact = true, -- Set to true if you want the ped to ragdoll from vehicle impacts
          bulletImpact = true, -- Set to true if you want the ped to ragdoll from bullet impacts
          explosion = true, -- Set to true if you want the ped to ragdoll from explosions
          fire = true, -- Set to true if you want the ped to ragdoll from fires
          electrocution = true, -- Set to true if you want the ped to ragdoll from being electrocuted
          objectImpact = true, -- Set to true if you want the ped to ragdoll from object impacts
          melee = true, -- Set to true if you want the ped to ragdoll from melee attacks
          waterjetImpact = true, -- Set to true if you want the ped to ragdoll from water jet impacts
          drowning = true, -- Set to true if you want the ped to ragdoll from drowning
          falling = true, -- Set to true if you want the ped to ragdoll from falling
          onBoats = true, -- Set to true if you want the ped to ragdoll from being on boats whilst they're moving
          rubberBullet = true, -- Set to true if you want the ped to ragdoll from rubber bullet impacts
          smokeGrenades = true, -- Set to true if you want the ped to ragdoll from smoke grenade impacts
          pedCollision = true, -- Set to true if you want the ped to ragdoll from ped collisions
          vehicleCollision = true, -- Set to true if you want the ped to ragdoll from vehicle collisions
          playerImpact = true, -- Set to true if you want the ped to ragdoll from player impacts
          aiRagdollImpact = true, -- Set to true if you want the ped to ragdoll from ai ragdoll impacts
          playerRagdollImpact = true, -- Set to true if you want the ped to ragdoll from player ragdoll impacts
          minorPlayerImpact = true, -- Set to true if you want the ped to ragdoll from minor player impacts
          ragdollOnDeath = true -- Set to true if you want the ped to ragdoll on death
        }
      },
      ['Relationships'] = { -- 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
        [5] = {'ZOMBIE'}, -- Can be a table of jobs
        [3] = {'PLAYER'}, -- Can be a table of jobs
        override = 'The Resistance' -- If multiple patrols need to be friendly to each other, set this as the same for each patrol
      },
    }
  },
  {
    name = 'vinewood_us',
    ['Enabled'] = {guards = true, patrols = true, vehicles = true},
    ['Routes'] = {
      guard = {
        {coords = vector3(618.35, 239.48, 101.5), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(602.13, 250.63, 103.13), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(605.29, 224.21, 102.25), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(609.29, 252.53, 103.25), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(575.68, 229.32, 103.09), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(625.55, 203.06, 98.57), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},

      },
      patrol = {
        { -- Gunrunning Patrol
          {coords = vector3(534.27, 246.02, 103.12), heading = 50.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(554.91, 237.63, 103.08), heading = 50.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(568.14, 260.84, 103.03), heading = 50.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(586.78, 256.89, 103.04), heading = 50.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(606.68, 243.83, 102.65), heading = 50.92, stopTime = math.random(1000, 5000)},

        }
      },
      vehicle = { -- https://vespura.com/fivem/drivingstyle/
      { -- Mesa Property Rotation
        {coords = vector3(392.84, 258.17, 102.85), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(418.4, 278.99, 102.85), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(428.76, 290.74, 102.86), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(459.57, 285.77, 102.83), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(506.93, 263.06, 102.91), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(598.89, 229.44, 102.61), speed = 10.0, drivingStyle = 262716},

      },
    }
    },
    ['Peds'] = {
      guard = {
        {
          ['Base'] = {
            model = 's_m_m_marine_01', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_carbinerifle', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 9999, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }, {
          ['Base'] = {
            model = 's_m_y_ammucity_01',
            weapon = 'weapon_pistol',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }, {
          ['Base'] = {
            model = 's_m_y_armymech_01',
            weapon = 'weapon_pumpshotgun',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 's_m_y_blackops_01',
            weapon = 'weapon_smg',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 's_m_y_swat_01',
            weapon = 'weapon_specialcarbine',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 's_f_y_cop_01',
            weapon = 'weapon_pistol',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }
      },
      patrol = {
        {
          ['Base'] = {
            model = 's_m_y_blackops_02', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_heavypistol', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 9999, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }
      },
      vehicle = {
        {  -- If passenger number is set below, each peds copies the config from below and applies that to the amount of passengers deinfed below.
          ['Base'] = {
            model = 's_m_y_marine_01', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_smg', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 9999, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
            flags = {29, 32, 116, 151, 229, 241, 250, 366, 391, 398} -- This has it's best use for vehicles, as no vehicle flags are set by default
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }
      }
    },
    ['Vehicles'] = {
      vehicle = {
        {
          ['Base'] = {
            model = 'unarmed1', -- https://docs.fivem.net/docs/game-references/vehicle-models/
            vehType = 'automobile',
            passengers = 2, -- Can be omitted, will default to the table length of the peds array above
            lockType = 3, -- 0 = None, 1 = Unlocked, 2 = Locked, 3 = LockedForPlayer, 4 = LockedPlayerInside, 5 = LockedInitially
            health = 1000.0,
            dirtLevel = 40.0,
            plate = 'REPUBLICAN'
          }
        }
      }
    },
    ['Settings'] = {
      ['Behavior'] = {
        ignoreMelee = false, -- Set to true if you want the ped not react to melee actions
        ignoreFire = false, -- Set to true if you want the ped not react to fire
        ignoreBeingJacked = false, -- Set to true if you want the ped not react to being jacked
        ignoreSilencedClone = true, -- Set to true if you want the ped not react to silenced weapons
        ignoreExplosion = false, -- Set to true if you want the ped not react to explosions
        preventMeleeTaunts = false, -- Set to true if you want the ped not melee taunt
        disableHurt = false, -- Set to true if you want the ped not have hurt reactions
        disableWrithe = false, -- Set to true if you want the ped not writhe on the ground
        preferInjuredGetup = true, -- Set to true if you want the ped to prefer getting up from an injured state
        onlyWritheFromWeapon = true, -- Set to true if you want the ped to only writhe from weapon damage
        runFromFires = true, -- Set to true if you want the ped to run from fires
        dontShoutTarget = false, -- Set to true if you want the ped to not communicate their targets postion
        dontCryForHelp = false -- Set to true if you want the ped to not call for help when injured
      },
      ['Blips'] = {
        enabled = false, -- Set to true if you want the ped to have a blip
        hasCone = false, -- Whether the blip has a view cone on the minimap whilst active
        colour = 1, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        range = 50.0, -- The range the blip can be activated from
        clearOnDeath = true
      },
      ['Combat'] = {
        attributes = {5, 14, 15, 22, 42, 44, 46}, -- https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201
        ability = 20, -- 0-50 = Poor, 50-75 = Average, 75+ = Professional
        accuracy = 10, -- 0 - 100
        alertness = 3, -- 0 = Calm, 3 = Paranoid
        movement = 1, -- 0 = Stationary, 1 = Defensive, 2 = WillAdvance, 3 = WillRetreat
        range = 2, -- 0 = Near, 1 = Medium, 2 = Far, 3 = VeryFar
        targetResponse = 2, -- 0 = Exist Task, 1 = Never Lose target, 2 = Search For Target
        canAttackFriendly = false, -- Whether the ped can attack friendly peds
        canUseCover = true, -- Whether the ped can use cover
        useDiminishingAmmo = true, -- Set false for the ped to have infinite ammo, true to use ammo declared in ['Peds']['Base'].ammo
        blockWeaponSwitching = false, -- Whether the ped can switch weapons
        enableWeaponBlocking = false, -- Whether the ped can block weapon attacks
        keepWeaponHolstered = false, -- Whether the ped will keep their weapon holstered until fired
        disableMelee = false, -- Whether the ped can use melee attacks
        disableUnarmedDriveby = false, -- Whether the ped can use unarmed drivebys
        disableWritheShooting = false, -- Whether the ped can shoot whilst writheing on the ground
        respondToHelpCries = true, -- Whether the ped will respond to help cries
        seeApproachingVehicles = true, -- Whether the ped can always see approaching vehicles
        treatDislikeAsHated = false, -- Whether the ped will treat dislike as hated (Relationship type 4)
        treatNonFriendlyAsHated = false, -- Whether the ped will treat non friendly as hated (Any Relationship from 3 and above)
        broadcastGoingToThreat = true -- Whether the ped will broadcast that they are going to a threat
      },
      ['Damages'] = {
        diesWhenInjured = false, -- Set to true if you want the ped to die when injured
        incapacitation = true, -- Set to true if you want the ped to writhe when injured
        criticals = true, -- Set to true if you want the ped to suffer critical hits
        bullets = true, -- Set to true if you want the ped to suffer bullet damage
        fire = true, -- Set to true if you want the ped to suffer fire damage
        explosion = true, -- Set to true if you want the ped to suffer explosion damage
        collision = true, -- Set to true if you want the ped to suffer collision damage
        steam = true, -- Set to true if you want the ped to suffer steam damage
        melee = true, -- Set to true if you want the ped to suffer melee damage
        drown = true, -- Set to true if you want the ped to drown
        electric = true, -- Set to true if you want the ped to suffer electric damage
        ragdoll = false, -- Set to true if you want the ped to die when ragdolled
        invincible = false -- Set to true if you want the ped to be invincible
      },
      ['Drops'] = {
        weapons = false, -- Set to true if you want the ped to drop their weapon when killed
        healthSnacks = false -- Set to true if you want the ped to drop a health snack when killed
      },
      ['Events'] = {
        generateSoundEvents = true, -- Set to true if you want the ped to generate sound events
        listensToSoundEvents = true, -- Set to true if you want the ped to listen to sound events
        checkLOSForSoundEvents = true, -- Set to true if you want the ped to check line of sight to generate/respond sound events
        disableWeirdPedEvents = false, -- Set to true if you want the ped to disable weird ped events
        disableCryForHelpEvents = false, -- Set to true if you want the ped to disable cry for help events
        usePerceptionForAimEvents = true, -- Set to true if you want the ped to use perception for aim events
        disableShockingEvents = false, -- Set to true if you want the ped to disable shocking events
        disableShockingDrivingEvents = false -- Set to true if you want the ped to disable shocking driving events
      },
      ['Pathing'] = {
        ['Avoidance'] = {
          avoidDrops = true, -- Set to true if you want the ped to avoid falls from height
          avoidFire = true, -- Set to true if you want the ped to avoid fire
          avoidPeds = true, -- Set to true if you want the ped to avoid other peds
          avoidTearGas = true, -- Set to true if you want the ped to avoid tear gas
          avoidWater = true -- Set to true if you want the ped to avoid water
        },
        ['Movement'] = {
          disableCrouch = false, -- Set to true if you want the ped to disable crouching
          disableDives = false, -- Set to true if you want the ped to disable evasive diving
          disableClimbing = false, -- Set to true if you want the ped to disable climbing over objects
          disableLadders = false -- Set to true if you want the ped to disable climbing ladders
        },
        ['Ragdolling'] = {
          canRagdoll = true, -- Set to true if you want the ped to be able to ragdoll
          pedImpact = true, -- Set to true if you want the ped to ragdoll from ped impacts
          vehicleImpact = true, -- Set to true if you want the ped to ragdoll from vehicle impacts
          bulletImpact = true, -- Set to true if you want the ped to ragdoll from bullet impacts
          explosion = true, -- Set to true if you want the ped to ragdoll from explosions
          fire = true, -- Set to true if you want the ped to ragdoll from fires
          electrocution = true, -- Set to true if you want the ped to ragdoll from being electrocuted
          objectImpact = true, -- Set to true if you want the ped to ragdoll from object impacts
          melee = true, -- Set to true if you want the ped to ragdoll from melee attacks
          waterjetImpact = true, -- Set to true if you want the ped to ragdoll from water jet impacts
          drowning = true, -- Set to true if you want the ped to ragdoll from drowning
          falling = true, -- Set to true if you want the ped to ragdoll from falling
          onBoats = true, -- Set to true if you want the ped to ragdoll from being on boats whilst they're moving
          rubberBullet = true, -- Set to true if you want the ped to ragdoll from rubber bullet impacts
          smokeGrenades = true, -- Set to true if you want the ped to ragdoll from smoke grenade impacts
          pedCollision = true, -- Set to true if you want the ped to ragdoll from ped collisions
          vehicleCollision = true, -- Set to true if you want the ped to ragdoll from vehicle collisions
          playerImpact = true, -- Set to true if you want the ped to ragdoll from player impacts
          aiRagdollImpact = true, -- Set to true if you want the ped to ragdoll from ai ragdoll impacts
          playerRagdollImpact = true, -- Set to true if you want the ped to ragdoll from player ragdoll impacts
          minorPlayerImpact = true, -- Set to true if you want the ped to ragdoll from minor player impacts
          ragdollOnDeath = true -- Set to true if you want the ped to ragdoll on death
        }
      },
      ['Relationships'] = { -- 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
        [5] = {'ZOMBIE'}, -- Can be a table of jobs
        [0] = {'PLAYER'}, -- Can be a table of jobs
        override = 'The Resistance' -- If multiple patrols need to be friendly to each other, set this as the same for each patrol
      },
    }
  },
  {
    name = 'nikola_battle_us',
    ['Enabled'] = {guards = true, patrols = true, vehicles = true},
    ['Routes'] = {
      guard = {
        {coords = vector3(1178.48, -513.66, 65.14), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(1197.37, -505.5, 65.11), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(1211.69, -534.51, 66.53), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(1155.49, -491.78, 65.34), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(1146.7, -454.84, 66.98), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(1204.35, -469.87, 66.27), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},

      },
      patrol = {
        { -- Gunrunning Patrol
          {coords = vector3(1160.1, -525.62, 64.82), heading = 50.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(1161.91, -523.5, 64.91), heading = 50.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(1187.51, -526.81, 64.86), heading = 50.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(1198.83, -526.36, 65.41), heading = 50.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(1220.9, -541.62, 67.25), heading = 50.92, stopTime = math.random(1000, 5000)},

        }
      },
      vehicle = { -- https://vespura.com/fivem/drivingstyle/
      { -- Mesa Property Rotation
        {coords = vector3(1137.91, -512.59, 64.48), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(1172.81, -511.0, 64.99), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(1189.73, -511.71, 64.8), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(1244.38, -544.31, 68.45), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(1267.15, -549.98, 68.86), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(1320.7, -561.41, 72.3), speed = 10.0, drivingStyle = 262716},

      },
    }
    },
    ['Peds'] = {
      guard = {
        {
          ['Base'] = {
            model = 's_m_m_marine_01', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_carbinerifle', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 9999, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }, {
          ['Base'] = {
            model = 's_m_y_ammucity_01',
            weapon = 'weapon_pistol',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }, {
          ['Base'] = {
            model = 's_m_y_armymech_01',
            weapon = 'weapon_pumpshotgun',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 's_m_y_blackops_01',
            weapon = 'weapon_smg',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 's_m_y_swat_01',
            weapon = 'weapon_specialcarbine',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 's_f_y_cop_01',
            weapon = 'weapon_pistol',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }
      },
      patrol = {
        {
          ['Base'] = {
            model = 's_m_y_blackops_02', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_heavypistol', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 9999, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }
      },
      vehicle = {
        {  -- If passenger number is set below, each peds copies the config from below and applies that to the amount of passengers deinfed below.
          ['Base'] = {
            model = 's_m_y_marine_01', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_smg', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 9999, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
            flags = {29, 32, 116, 151, 229, 241, 250, 366, 391, 398} -- This has it's best use for vehicles, as no vehicle flags are set by default
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }
      }
    },
    ['Vehicles'] = {
      vehicle = {
        {
          ['Base'] = {
            model = 'unarmed1', -- https://docs.fivem.net/docs/game-references/vehicle-models/
            vehType = 'automobile',
            passengers = 2, -- Can be omitted, will default to the table length of the peds array above
            lockType = 3, -- 0 = None, 1 = Unlocked, 2 = Locked, 3 = LockedForPlayer, 4 = LockedPlayerInside, 5 = LockedInitially
            health = 1000.0,
            dirtLevel = 40.0,
            plate = 'REPUBLICAN'
          }
        }
      }
    },
    ['Settings'] = {
      ['Behavior'] = {
        ignoreMelee = false, -- Set to true if you want the ped not react to melee actions
        ignoreFire = false, -- Set to true if you want the ped not react to fire
        ignoreBeingJacked = false, -- Set to true if you want the ped not react to being jacked
        ignoreSilencedClone = true, -- Set to true if you want the ped not react to silenced weapons
        ignoreExplosion = false, -- Set to true if you want the ped not react to explosions
        preventMeleeTaunts = false, -- Set to true if you want the ped not melee taunt
        disableHurt = false, -- Set to true if you want the ped not have hurt reactions
        disableWrithe = false, -- Set to true if you want the ped not writhe on the ground
        preferInjuredGetup = true, -- Set to true if you want the ped to prefer getting up from an injured state
        onlyWritheFromWeapon = true, -- Set to true if you want the ped to only writhe from weapon damage
        runFromFires = true, -- Set to true if you want the ped to run from fires
        dontShoutTarget = false, -- Set to true if you want the ped to not communicate their targets postion
        dontCryForHelp = false -- Set to true if you want the ped to not call for help when injured
      },
      ['Blips'] = {
        enabled = false, -- Set to true if you want the ped to have a blip
        hasCone = false, -- Whether the blip has a view cone on the minimap whilst active
        colour = 1, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        range = 50.0, -- The range the blip can be activated from
        clearOnDeath = true
      },
      ['Combat'] = {
        attributes = {5, 14, 15, 22, 42, 44, 46}, -- https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201
        ability = 20, -- 0-50 = Poor, 50-75 = Average, 75+ = Professional
        accuracy = 10, -- 0 - 100
        alertness = 3, -- 0 = Calm, 3 = Paranoid
        movement = 1, -- 0 = Stationary, 1 = Defensive, 2 = WillAdvance, 3 = WillRetreat
        range = 2, -- 0 = Near, 1 = Medium, 2 = Far, 3 = VeryFar
        targetResponse = 2, -- 0 = Exist Task, 1 = Never Lose target, 2 = Search For Target
        canAttackFriendly = false, -- Whether the ped can attack friendly peds
        canUseCover = true, -- Whether the ped can use cover
        useDiminishingAmmo = true, -- Set false for the ped to have infinite ammo, true to use ammo declared in ['Peds']['Base'].ammo
        blockWeaponSwitching = false, -- Whether the ped can switch weapons
        enableWeaponBlocking = false, -- Whether the ped can block weapon attacks
        keepWeaponHolstered = false, -- Whether the ped will keep their weapon holstered until fired
        disableMelee = false, -- Whether the ped can use melee attacks
        disableUnarmedDriveby = false, -- Whether the ped can use unarmed drivebys
        disableWritheShooting = false, -- Whether the ped can shoot whilst writheing on the ground
        respondToHelpCries = true, -- Whether the ped will respond to help cries
        seeApproachingVehicles = true, -- Whether the ped can always see approaching vehicles
        treatDislikeAsHated = false, -- Whether the ped will treat dislike as hated (Relationship type 4)
        treatNonFriendlyAsHated = false, -- Whether the ped will treat non friendly as hated (Any Relationship from 3 and above)
        broadcastGoingToThreat = true -- Whether the ped will broadcast that they are going to a threat
      },
      ['Damages'] = {
        diesWhenInjured = false, -- Set to true if you want the ped to die when injured
        incapacitation = true, -- Set to true if you want the ped to writhe when injured
        criticals = true, -- Set to true if you want the ped to suffer critical hits
        bullets = true, -- Set to true if you want the ped to suffer bullet damage
        fire = true, -- Set to true if you want the ped to suffer fire damage
        explosion = true, -- Set to true if you want the ped to suffer explosion damage
        collision = true, -- Set to true if you want the ped to suffer collision damage
        steam = true, -- Set to true if you want the ped to suffer steam damage
        melee = true, -- Set to true if you want the ped to suffer melee damage
        drown = true, -- Set to true if you want the ped to drown
        electric = true, -- Set to true if you want the ped to suffer electric damage
        ragdoll = false, -- Set to true if you want the ped to die when ragdolled
        invincible = false -- Set to true if you want the ped to be invincible
      },
      ['Drops'] = {
        weapons = false, -- Set to true if you want the ped to drop their weapon when killed
        healthSnacks = false -- Set to true if you want the ped to drop a health snack when killed
      },
      ['Events'] = {
        generateSoundEvents = true, -- Set to true if you want the ped to generate sound events
        listensToSoundEvents = true, -- Set to true if you want the ped to listen to sound events
        checkLOSForSoundEvents = true, -- Set to true if you want the ped to check line of sight to generate/respond sound events
        disableWeirdPedEvents = false, -- Set to true if you want the ped to disable weird ped events
        disableCryForHelpEvents = false, -- Set to true if you want the ped to disable cry for help events
        usePerceptionForAimEvents = true, -- Set to true if you want the ped to use perception for aim events
        disableShockingEvents = false, -- Set to true if you want the ped to disable shocking events
        disableShockingDrivingEvents = false -- Set to true if you want the ped to disable shocking driving events
      },
      ['Pathing'] = {
        ['Avoidance'] = {
          avoidDrops = true, -- Set to true if you want the ped to avoid falls from height
          avoidFire = true, -- Set to true if you want the ped to avoid fire
          avoidPeds = true, -- Set to true if you want the ped to avoid other peds
          avoidTearGas = true, -- Set to true if you want the ped to avoid tear gas
          avoidWater = true -- Set to true if you want the ped to avoid water
        },
        ['Movement'] = {
          disableCrouch = false, -- Set to true if you want the ped to disable crouching
          disableDives = false, -- Set to true if you want the ped to disable evasive diving
          disableClimbing = false, -- Set to true if you want the ped to disable climbing over objects
          disableLadders = false -- Set to true if you want the ped to disable climbing ladders
        },
        ['Ragdolling'] = {
          canRagdoll = true, -- Set to true if you want the ped to be able to ragdoll
          pedImpact = true, -- Set to true if you want the ped to ragdoll from ped impacts
          vehicleImpact = true, -- Set to true if you want the ped to ragdoll from vehicle impacts
          bulletImpact = true, -- Set to true if you want the ped to ragdoll from bullet impacts
          explosion = true, -- Set to true if you want the ped to ragdoll from explosions
          fire = true, -- Set to true if you want the ped to ragdoll from fires
          electrocution = true, -- Set to true if you want the ped to ragdoll from being electrocuted
          objectImpact = true, -- Set to true if you want the ped to ragdoll from object impacts
          melee = true, -- Set to true if you want the ped to ragdoll from melee attacks
          waterjetImpact = true, -- Set to true if you want the ped to ragdoll from water jet impacts
          drowning = true, -- Set to true if you want the ped to ragdoll from drowning
          falling = true, -- Set to true if you want the ped to ragdoll from falling
          onBoats = true, -- Set to true if you want the ped to ragdoll from being on boats whilst they're moving
          rubberBullet = true, -- Set to true if you want the ped to ragdoll from rubber bullet impacts
          smokeGrenades = true, -- Set to true if you want the ped to ragdoll from smoke grenade impacts
          pedCollision = true, -- Set to true if you want the ped to ragdoll from ped collisions
          vehicleCollision = true, -- Set to true if you want the ped to ragdoll from vehicle collisions
          playerImpact = true, -- Set to true if you want the ped to ragdoll from player impacts
          aiRagdollImpact = true, -- Set to true if you want the ped to ragdoll from ai ragdoll impacts
          playerRagdollImpact = true, -- Set to true if you want the ped to ragdoll from player ragdoll impacts
          minorPlayerImpact = true, -- Set to true if you want the ped to ragdoll from minor player impacts
          ragdollOnDeath = true -- Set to true if you want the ped to ragdoll on death
        }
      },
      ['Relationships'] = { -- 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
        [5] = {'ZOMBIE'}, -- Can be a table of jobs
        [0] = {'PLAYER'}, -- Can be a table of jobs
        override = 'The Resistance' -- If multiple patrols need to be friendly to each other, set this as the same for each patrol
      },
    }
  },
  {
    name = 'nikola_battle',
    ['Enabled'] = {guards = true, patrols = true, vehicles = true},
    ['Routes'] = {
      guard = {
        {coords = vector3(1323.47, -546.76, 72.33), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(1370.44, -566.24, 74.34), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(1275.15, -537.21, 68.97), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(1235.16, -548.56, 68.22), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},

      },
      patrol = {
        { -- Gunrunning Patrol
          {coords = vector3(1367.23, -598.86, 74.34), heading = 50.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(1367.13, -596.75, 74.34), heading = 50.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(1347.09, -582.98, 74.32), heading = 50.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(1326.88, -570.82, 73.24), heading = 50.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(1299.67, -561.92, 70.98), heading = 50.92, stopTime = math.random(1000, 5000)},

        }
      },
      vehicle = { -- https://vespura.com/fivem/drivingstyle/
      { -- Mesa Property Rotation
        {coords = vector3(1374.34, -584.19, 74.13), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(1339.66, -562.6, 73.65), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(1280.47, -545.18, 69.12), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(1266.77, -539.08, 68.94), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(1242.85, -539.01, 68.14), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(1199.28, -513.92, 65.05), speed = 10.0, drivingStyle = 262716},

      },
    }
    },
    ['Peds'] = {
      guard = {
        {
          ['Base'] = {
            model = 'BF4Russian10', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_assaultrifle', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 9999, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }, {
          ['Base'] = {
            model = 'BF4Russian11',
            weapon = 'weapon_heavypistol',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }, {
          ['Base'] = {
            model = 'RussianSF',
            weapon = 'weapon_assaultrifle',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'RussianSF2',
            weapon = 'weapon_compactrifle',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian4',
            weapon = 'weapon_minismg',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian7',
            weapon = 'weapon_snspistol',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }
      },
      patrol = {
        {
          ['Base'] = {
            model = 'RussianSF3', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_autoshotgun', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 9999, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }
      },
      vehicle = {
        {  -- If passenger number is set below, each peds copies the config from below and applies that to the amount of passengers deinfed below.
          ['Base'] = {
            model = 'spetnaz', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_smg', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 9999, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
            flags = {29, 32, 116, 151, 229, 241, 250, 366, 391, 398} -- This has it's best use for vehicles, as no vehicle flags are set by default
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }
      }
    },
    ['Vehicles'] = {
      vehicle = {
        {
          ['Base'] = {
            model = 'unarmed2', -- https://docs.fivem.net/docs/game-references/vehicle-models/
            vehType = 'automobile',
            passengers = 2, -- Can be omitted, will default to the table length of the peds array above
            lockType = 3, -- 0 = None, 1 = Unlocked, 2 = Locked, 3 = LockedForPlayer, 4 = LockedPlayerInside, 5 = LockedInitially
            health = 1000.0,
            dirtLevel = 40.0,
            plate = 'RUSSIA'
          }
        }
      }
    },
    ['Settings'] = {
      ['Behavior'] = {
        ignoreMelee = false, -- Set to true if you want the ped not react to melee actions
        ignoreFire = false, -- Set to true if you want the ped not react to fire
        ignoreBeingJacked = false, -- Set to true if you want the ped not react to being jacked
        ignoreSilencedClone = true, -- Set to true if you want the ped not react to silenced weapons
        ignoreExplosion = false, -- Set to true if you want the ped not react to explosions
        preventMeleeTaunts = false, -- Set to true if you want the ped not melee taunt
        disableHurt = false, -- Set to true if you want the ped not have hurt reactions
        disableWrithe = false, -- Set to true if you want the ped not writhe on the ground
        preferInjuredGetup = true, -- Set to true if you want the ped to prefer getting up from an injured state
        onlyWritheFromWeapon = true, -- Set to true if you want the ped to only writhe from weapon damage
        runFromFires = true, -- Set to true if you want the ped to run from fires
        dontShoutTarget = false, -- Set to true if you want the ped to not communicate their targets postion
        dontCryForHelp = false -- Set to true if you want the ped to not call for help when injured
      },
      ['Blips'] = {
        enabled = false, -- Set to true if you want the ped to have a blip
        hasCone = false, -- Whether the blip has a view cone on the minimap whilst active
        colour = 1, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        range = 50.0, -- The range the blip can be activated from
        clearOnDeath = true
      },
      ['Combat'] = {
        attributes = {5, 14, 15, 22, 42, 44, 46}, -- https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201
        ability = 20, -- 0-50 = Poor, 50-75 = Average, 75+ = Professional
        accuracy = 10, -- 0 - 100
        alertness = 3, -- 0 = Calm, 3 = Paranoid
        movement = 2, -- 0 = Stationary, 1 = Defensive, 2 = WillAdvance, 3 = WillRetreat
        range = 1, -- 0 = Near, 1 = Medium, 2 = Far, 3 = VeryFar
        targetResponse = 2, -- 0 = Exist Task, 1 = Never Lose target, 2 = Search For Target
        canAttackFriendly = false, -- Whether the ped can attack friendly peds
        canUseCover = true, -- Whether the ped can use cover
        useDiminishingAmmo = true, -- Set false for the ped to have infinite ammo, true to use ammo declared in ['Peds']['Base'].ammo
        blockWeaponSwitching = false, -- Whether the ped can switch weapons
        enableWeaponBlocking = false, -- Whether the ped can block weapon attacks
        keepWeaponHolstered = false, -- Whether the ped will keep their weapon holstered until fired
        disableMelee = false, -- Whether the ped can use melee attacks
        disableUnarmedDriveby = false, -- Whether the ped can use unarmed drivebys
        disableWritheShooting = false, -- Whether the ped can shoot whilst writheing on the ground
        respondToHelpCries = true, -- Whether the ped will respond to help cries
        seeApproachingVehicles = true, -- Whether the ped can always see approaching vehicles
        treatDislikeAsHated = false, -- Whether the ped will treat dislike as hated (Relationship type 4)
        treatNonFriendlyAsHated = false, -- Whether the ped will treat non friendly as hated (Any Relationship from 3 and above)
        broadcastGoingToThreat = true -- Whether the ped will broadcast that they are going to a threat
      },
      ['Damages'] = {
        diesWhenInjured = false, -- Set to true if you want the ped to die when injured
        incapacitation = true, -- Set to true if you want the ped to writhe when injured
        criticals = true, -- Set to true if you want the ped to suffer critical hits
        bullets = true, -- Set to true if you want the ped to suffer bullet damage
        fire = true, -- Set to true if you want the ped to suffer fire damage
        explosion = true, -- Set to true if you want the ped to suffer explosion damage
        collision = true, -- Set to true if you want the ped to suffer collision damage
        steam = true, -- Set to true if you want the ped to suffer steam damage
        melee = true, -- Set to true if you want the ped to suffer melee damage
        drown = true, -- Set to true if you want the ped to drown
        electric = true, -- Set to true if you want the ped to suffer electric damage
        ragdoll = false, -- Set to true if you want the ped to die when ragdolled
        invincible = false -- Set to true if you want the ped to be invincible
      },
      ['Drops'] = {
        weapons = false, -- Set to true if you want the ped to drop their weapon when killed
        healthSnacks = false -- Set to true if you want the ped to drop a health snack when killed
      },
      ['Events'] = {
        generateSoundEvents = true, -- Set to true if you want the ped to generate sound events
        listensToSoundEvents = true, -- Set to true if you want the ped to listen to sound events
        checkLOSForSoundEvents = true, -- Set to true if you want the ped to check line of sight to generate/respond sound events
        disableWeirdPedEvents = false, -- Set to true if you want the ped to disable weird ped events
        disableCryForHelpEvents = false, -- Set to true if you want the ped to disable cry for help events
        usePerceptionForAimEvents = true, -- Set to true if you want the ped to use perception for aim events
        disableShockingEvents = false, -- Set to true if you want the ped to disable shocking events
        disableShockingDrivingEvents = false -- Set to true if you want the ped to disable shocking driving events
      },
      ['Pathing'] = {
        ['Avoidance'] = {
          avoidDrops = true, -- Set to true if you want the ped to avoid falls from height
          avoidFire = true, -- Set to true if you want the ped to avoid fire
          avoidPeds = true, -- Set to true if you want the ped to avoid other peds
          avoidTearGas = true, -- Set to true if you want the ped to avoid tear gas
          avoidWater = true -- Set to true if you want the ped to avoid water
        },
        ['Movement'] = {
          disableCrouch = false, -- Set to true if you want the ped to disable crouching
          disableDives = false, -- Set to true if you want the ped to disable evasive diving
          disableClimbing = false, -- Set to true if you want the ped to disable climbing over objects
          disableLadders = false -- Set to true if you want the ped to disable climbing ladders
        },
        ['Ragdolling'] = {
          canRagdoll = true, -- Set to true if you want the ped to be able to ragdoll
          pedImpact = true, -- Set to true if you want the ped to ragdoll from ped impacts
          vehicleImpact = true, -- Set to true if you want the ped to ragdoll from vehicle impacts
          bulletImpact = true, -- Set to true if you want the ped to ragdoll from bullet impacts
          explosion = true, -- Set to true if you want the ped to ragdoll from explosions
          fire = true, -- Set to true if you want the ped to ragdoll from fires
          electrocution = true, -- Set to true if you want the ped to ragdoll from being electrocuted
          objectImpact = true, -- Set to true if you want the ped to ragdoll from object impacts
          melee = true, -- Set to true if you want the ped to ragdoll from melee attacks
          waterjetImpact = true, -- Set to true if you want the ped to ragdoll from water jet impacts
          drowning = true, -- Set to true if you want the ped to ragdoll from drowning
          falling = true, -- Set to true if you want the ped to ragdoll from falling
          onBoats = true, -- Set to true if you want the ped to ragdoll from being on boats whilst they're moving
          rubberBullet = true, -- Set to true if you want the ped to ragdoll from rubber bullet impacts
          smokeGrenades = true, -- Set to true if you want the ped to ragdoll from smoke grenade impacts
          pedCollision = true, -- Set to true if you want the ped to ragdoll from ped collisions
          vehicleCollision = true, -- Set to true if you want the ped to ragdoll from vehicle collisions
          playerImpact = true, -- Set to true if you want the ped to ragdoll from player impacts
          aiRagdollImpact = true, -- Set to true if you want the ped to ragdoll from ai ragdoll impacts
          playerRagdollImpact = true, -- Set to true if you want the ped to ragdoll from player ragdoll impacts
          minorPlayerImpact = true, -- Set to true if you want the ped to ragdoll from minor player impacts
          ragdollOnDeath = true -- Set to true if you want the ped to ragdoll on death
        }
      },
      ['Relationships'] = { -- 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
        [5] = {'PLAYER'}, -- Can be a table of jobs
        [5] = {'ZOMBIE'}, -- Can be a table of jobs
        override = 'Russian' -- If multiple patrols need to be friendly to each other, set this as the same for each patrol
      },
    }
  },
  {
    name = 'gunrunning_bunker_ext',
    ['Enabled'] = {guards = true, patrols = true, vehicles = false},
    ['Routes'] = {
      guard = {
        {coords = vector3(1802.22, 4711.41, 39.03), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(1805.6, 4700.49, 40.17), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(1835.1, 4712.8, 37.98), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(1835.14, 4702.08, 38.91), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},

      },
      patrol = {
        { -- Gunrunning Patrol
          {coords = vector3(1801.18, 4705.36, 39.84), heading = 50.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(1784.84, 4703.3, 40.75), heading = 50.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(1770.75, 4700.82, 41.99), heading = 50.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(1750.89, 4699.96, 42.6), heading = 50.92, stopTime = math.random(1000, 5000)},

        }
      },
      vehicle = { -- https://vespura.com/fivem/drivingstyle/
      { -- Mesa Property Rotation
        {coords = vector3(1844.01, 4671.68, 32.52), speed = 10.0, drivingStyle = 262716},
      },
    }
    },
    ['Peds'] = {
      guard = {
        {
          ['Base'] = {
            model = 'BF4Russian10', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_assaultrifle', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 9999, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }, {
          ['Base'] = {
            model = 'BF4Russian11',
            weapon = 'weapon_snspistol',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }, {
          ['Base'] = {
            model = 'RussianSF',
            weapon = 'weapon_marksmanrifle',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'RussianSF2',
            weapon = 'weapon_combatmg',
            health = 200,
            armour = 0,
            ammo = 9999,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }
      },
      patrol = {
        {
          ['Base'] = {
            model = 'RussianSF3', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_heavypistol', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 9999, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }
      },
      vehicle = {
        {  -- If passenger number is set below, each peds copies the config from below and applies that to the amount of passengers deinfed below.
          ['Base'] = {
            model = 'spetnaz', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_smg', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 9999, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
            flags = {29, 32, 116, 151, 229, 241, 250, 366, 391, 398} -- This has it's best use for vehicles, as no vehicle flags are set by default
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }
      }
    },
    ['Vehicles'] = {
      vehicle = {
        {
          ['Base'] = {
            model = 'unarmed2', -- https://docs.fivem.net/docs/game-references/vehicle-models/
            vehType = 'automobile',
            passengers = 2, -- Can be omitted, will default to the table length of the peds array above
            lockType = 3, -- 0 = None, 1 = Unlocked, 2 = Locked, 3 = LockedForPlayer, 4 = LockedPlayerInside, 5 = LockedInitially
            health = 1000.0,
            dirtLevel = 40.0,
            plate = 'RUSSIA'
          }
        }
      }
    },
    ['Settings'] = {
      ['Behavior'] = {
        ignoreMelee = false, -- Set to true if you want the ped not react to melee actions
        ignoreFire = false, -- Set to true if you want the ped not react to fire
        ignoreBeingJacked = false, -- Set to true if you want the ped not react to being jacked
        ignoreSilencedClone = true, -- Set to true if you want the ped not react to silenced weapons
        ignoreExplosion = false, -- Set to true if you want the ped not react to explosions
        preventMeleeTaunts = false, -- Set to true if you want the ped not melee taunt
        disableHurt = false, -- Set to true if you want the ped not have hurt reactions
        disableWrithe = false, -- Set to true if you want the ped not writhe on the ground
        preferInjuredGetup = true, -- Set to true if you want the ped to prefer getting up from an injured state
        onlyWritheFromWeapon = true, -- Set to true if you want the ped to only writhe from weapon damage
        runFromFires = true, -- Set to true if you want the ped to run from fires
        dontShoutTarget = false, -- Set to true if you want the ped to not communicate their targets postion
        dontCryForHelp = false -- Set to true if you want the ped to not call for help when injured
      },
      ['Blips'] = {
        enabled = false, -- Set to true if you want the ped to have a blip
        hasCone = false, -- Whether the blip has a view cone on the minimap whilst active
        colour = 1, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        range = 50.0, -- The range the blip can be activated from
        clearOnDeath = true
      },
      ['Combat'] = {
        attributes = {5, 14, 15, 22, 42, 44, 46}, -- https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201
        ability = 35, -- 0-50 = Poor, 50-75 = Average, 75+ = Professional
        accuracy = 10, -- 0 - 100
        alertness = 3, -- 0 = Calm, 3 = Paranoid
        movement = 2, -- 0 = Stationary, 1 = Defensive, 2 = WillAdvance, 3 = WillRetreat
        range = 1, -- 0 = Near, 1 = Medium, 2 = Far, 3 = VeryFar
        targetResponse = 2, -- 0 = Exist Task, 1 = Never Lose target, 2 = Search For Target
        canAttackFriendly = false, -- Whether the ped can attack friendly peds
        canUseCover = true, -- Whether the ped can use cover
        useDiminishingAmmo = true, -- Set false for the ped to have infinite ammo, true to use ammo declared in ['Peds']['Base'].ammo
        blockWeaponSwitching = false, -- Whether the ped can switch weapons
        enableWeaponBlocking = false, -- Whether the ped can block weapon attacks
        keepWeaponHolstered = false, -- Whether the ped will keep their weapon holstered until fired
        disableMelee = false, -- Whether the ped can use melee attacks
        disableUnarmedDriveby = false, -- Whether the ped can use unarmed drivebys
        disableWritheShooting = false, -- Whether the ped can shoot whilst writheing on the ground
        respondToHelpCries = true, -- Whether the ped will respond to help cries
        seeApproachingVehicles = true, -- Whether the ped can always see approaching vehicles
        treatDislikeAsHated = false, -- Whether the ped will treat dislike as hated (Relationship type 4)
        treatNonFriendlyAsHated = false, -- Whether the ped will treat non friendly as hated (Any Relationship from 3 and above)
        broadcastGoingToThreat = true -- Whether the ped will broadcast that they are going to a threat
      },
      ['Damages'] = {
        diesWhenInjured = false, -- Set to true if you want the ped to die when injured
        incapacitation = true, -- Set to true if you want the ped to writhe when injured
        criticals = true, -- Set to true if you want the ped to suffer critical hits
        bullets = true, -- Set to true if you want the ped to suffer bullet damage
        fire = true, -- Set to true if you want the ped to suffer fire damage
        explosion = true, -- Set to true if you want the ped to suffer explosion damage
        collision = true, -- Set to true if you want the ped to suffer collision damage
        steam = true, -- Set to true if you want the ped to suffer steam damage
        melee = true, -- Set to true if you want the ped to suffer melee damage
        drown = true, -- Set to true if you want the ped to drown
        electric = true, -- Set to true if you want the ped to suffer electric damage
        ragdoll = false, -- Set to true if you want the ped to die when ragdolled
        invincible = false -- Set to true if you want the ped to be invincible
      },
      ['Drops'] = {
        weapons = false, -- Set to true if you want the ped to drop their weapon when killed
        healthSnacks = false -- Set to true if you want the ped to drop a health snack when killed
      },
      ['Events'] = {
        generateSoundEvents = true, -- Set to true if you want the ped to generate sound events
        listensToSoundEvents = true, -- Set to true if you want the ped to listen to sound events
        checkLOSForSoundEvents = true, -- Set to true if you want the ped to check line of sight to generate/respond sound events
        disableWeirdPedEvents = false, -- Set to true if you want the ped to disable weird ped events
        disableCryForHelpEvents = false, -- Set to true if you want the ped to disable cry for help events
        usePerceptionForAimEvents = true, -- Set to true if you want the ped to use perception for aim events
        disableShockingEvents = false, -- Set to true if you want the ped to disable shocking events
        disableShockingDrivingEvents = false -- Set to true if you want the ped to disable shocking driving events
      },
      ['Pathing'] = {
        ['Avoidance'] = {
          avoidDrops = true, -- Set to true if you want the ped to avoid falls from height
          avoidFire = true, -- Set to true if you want the ped to avoid fire
          avoidPeds = true, -- Set to true if you want the ped to avoid other peds
          avoidTearGas = true, -- Set to true if you want the ped to avoid tear gas
          avoidWater = true -- Set to true if you want the ped to avoid water
        },
        ['Movement'] = {
          disableCrouch = false, -- Set to true if you want the ped to disable crouching
          disableDives = false, -- Set to true if you want the ped to disable evasive diving
          disableClimbing = false, -- Set to true if you want the ped to disable climbing over objects
          disableLadders = false -- Set to true if you want the ped to disable climbing ladders
        },
        ['Ragdolling'] = {
          canRagdoll = true, -- Set to true if you want the ped to be able to ragdoll
          pedImpact = true, -- Set to true if you want the ped to ragdoll from ped impacts
          vehicleImpact = true, -- Set to true if you want the ped to ragdoll from vehicle impacts
          bulletImpact = true, -- Set to true if you want the ped to ragdoll from bullet impacts
          explosion = true, -- Set to true if you want the ped to ragdoll from explosions
          fire = true, -- Set to true if you want the ped to ragdoll from fires
          electrocution = true, -- Set to true if you want the ped to ragdoll from being electrocuted
          objectImpact = true, -- Set to true if you want the ped to ragdoll from object impacts
          melee = true, -- Set to true if you want the ped to ragdoll from melee attacks
          waterjetImpact = true, -- Set to true if you want the ped to ragdoll from water jet impacts
          drowning = true, -- Set to true if you want the ped to ragdoll from drowning
          falling = true, -- Set to true if you want the ped to ragdoll from falling
          onBoats = true, -- Set to true if you want the ped to ragdoll from being on boats whilst they're moving
          rubberBullet = true, -- Set to true if you want the ped to ragdoll from rubber bullet impacts
          smokeGrenades = true, -- Set to true if you want the ped to ragdoll from smoke grenade impacts
          pedCollision = true, -- Set to true if you want the ped to ragdoll from ped collisions
          vehicleCollision = true, -- Set to true if you want the ped to ragdoll from vehicle collisions
          playerImpact = true, -- Set to true if you want the ped to ragdoll from player impacts
          aiRagdollImpact = true, -- Set to true if you want the ped to ragdoll from ai ragdoll impacts
          playerRagdollImpact = true, -- Set to true if you want the ped to ragdoll from player ragdoll impacts
          minorPlayerImpact = true, -- Set to true if you want the ped to ragdoll from minor player impacts
          ragdollOnDeath = true -- Set to true if you want the ped to ragdoll on death
        }
      },
      ['Relationships'] = { -- 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
        [5] = {'ZOMBIE','PLAYER'}, -- Can be a table of jobs
        override = 'Russian' -- If multiple patrols need to be friendly to each other, set this as the same for each patrol
      },
    }
  },
  {
    name = 'gunrunning_bunker_int',
    ['Enabled'] = {guards = true, patrols = true, vehicles = false},
    ['Routes'] = {
      guard = {
        {coords = vector3(833.61, -3242.03, -98.7), heading = 325.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(855.78, -3230.39, -98.48), heading = 175.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(894.9, -3192.02, -97.03), heading = 40.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(910.88, -3237.36, -98.29), heading = 86.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(900.65, -3205.24, -97.19), heading = 98.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(891.39, -3225.24, -98.23), heading = 280.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(889.89, -3211.91, -98.2), heading = 390.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(934.88, -3202.61, -98.26), heading = 230.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(947.96, -3230.97, -98.3), heading = 120.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(946.46, -3210.56, -98.28), heading = 120.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(938.07, -3210.11, -98.27), heading = 120.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json

      },
      patrol = {
        { -- Gunrunning Patrol
          {coords = vector3(867.56, -3186.33, -96.25), heading = 50.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(874.45, -3185.73, -96.57), heading = 200.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(873.07, -3203.49, -96.88), heading = 200.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(877.29, -3204.42, -97.4), heading = 200.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(872.51, -3210.06, -97.19), heading = 200.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(868.9, -3224.91, -98.05), heading = 200.92, stopTime = math.random(1000, 5000)},
        },
        { -- Gunrunning Patrol II
          {coords = vector3(856.76, -3212.46, -98.48), heading = 200.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(857.06, -3215.04, -98.47), heading = 200.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(870.41, -3219.0, -97.68), heading = 200.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(867.88, -3233.72, -98.29), heading = 200.92, stopTime = math.random(1000, 5000)},
        },
        { -- Gunrunning Patrol III
        {coords = vector3(902.13, -3182.31, -97.06), heading = 200.92, stopTime = math.random(1000, 5000)},
        {coords = vector3(894.02, -3182.07, -97.08), heading = 200.92, stopTime = math.random(1000, 5000)},
        {coords = vector3(893.32, -3190.58, -97.03), heading = 200.92, stopTime = math.random(1000, 5000)},
        {coords = vector3(886.88, -3191.15, -98.23), heading = 200.92, stopTime = math.random(1000, 5000)},
      }
      },
    --   vehicle = { -- https://vespura.com/fivem/drivingstyle/
    --   { -- Mesa Property Rotation
    --     {coords = vector3(1080.01, 2944.42, 38.98), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(1021.38, 3007.82, 40.82), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(1004.36, 3051.48, 40.85), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(992.73, 3071.15, 41.02), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(968.09, 3085.33, 41.35), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(928.17, 3090.83, 41.17), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(756.19, 3101.85, 43.56), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(606.07, 3063.66, 42.19), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(541.76, 3056.46, 39.73), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(464.99, 3094.01, 40.69), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(387.82, 3104.87, 43.37), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(325.7, 3136.23, 39.98), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(233.63, 3137.27, 42.1), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(212.73, 3152.07, 42.17), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(209.42, 3187.1, 42.35), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(211.28, 3228.49, 42.18), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(221.28, 3253.28, 41.58), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(235.57, 3311.93, 40.14), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(248.71, 3319.29, 39.81), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(286.73, 3299.31, 40.83), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(454.1, 3218.28, 43.07), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(780.21, 3200.82, 38.47), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(940.42, 3222.87, 38.33), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(974.72, 3229.74, 38.02), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(989.09, 3199.38, 38.78), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(996.92, 3150.31, 39.72), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(1002.46, 3127.37, 41.04), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(992.21, 3113.36, 41.12), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(949.72, 3096.49, 41.19), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(956.54, 3080.67, 41.18), speed = 10.0, drivingStyle = 262716},
    --     {coords = vector3(1006.51, 3032.97, 41.1), speed = 10.0, drivingStyle = 262716},
    --   },
    -- }
    },
    ['Peds'] = {
      guard = {
        {
          ['Base'] = {
            model = 'BF4Russian', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_assaultrifle', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }, {
          ['Base'] = {
            model = 'BF4Russian2',
            weapon = 'weapon_snspistol',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }, {
          ['Base'] = {
            model = 'BF4Sniper',
            weapon = 'weapon_marksmanrifle',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian3',
            weapon = 'weapon_combatmg',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian4',
            weapon = 'weapon_bullpuprifle',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian5',
            weapon = 'weapon_compactrifle',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian6',
            weapon = 'weapon_assaultrifle',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'ig_makarov',
            weapon = 'wweapon_combatmg',
            health = 200,
            armour = 200,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'ig_lev',
            weapon = 'weapon_assaultshotgun',
            health = 200,
            armour = 200,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'ig_victor',
            weapon = 'weapon_advancedrifle',
            health = 200,
            armour = 200,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'ig_kirill',
            weapon = 'weapon_combatsmg',
            health = 200,
            armour = 100,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }
      },
      patrol = {
        {
          ['Base'] = {
            model = 'BF4Russian5', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_heavypistol', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        },
        {
          ['Base'] = {
            model = 'RussianSF2', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_assaultrifle', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        },
        {
          ['Base'] = {
            model = 'RussianSF2', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_assaultrifle', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }
      },
      vehicle = {
        {  -- If passenger number is set below, each peds copies the config from below and applies that to the amount of passengers deinfed below.
          ['Base'] = {
            model = 'BF4Russian6', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_heavypistol', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 500, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
            flags = {29, 32, 116, 151, 229, 241, 250, 366, 391, 398} -- This has it's best use for vehicles, as no vehicle flags are set by default
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }
      }
    },
    ['Vehicles'] = {
      vehicle = {
        {
          ['Base'] = {
            model = 'unarmed2', -- https://docs.fivem.net/docs/game-references/vehicle-models/
            vehType = 'automobile',
            passengers = 3, -- Can be omitted, will default to the table length of the peds array above
            lockType = 3, -- 0 = None, 1 = Unlocked, 2 = Locked, 3 = LockedForPlayer, 4 = LockedPlayerInside, 5 = LockedInitially
            health = 1000.0,
            dirtLevel = 40.0,
            plate = 'RUSSIA'
          }
        }
      }
    },
    ['Settings'] = {
      ['Behavior'] = {
        ignoreMelee = false, -- Set to true if you want the ped not react to melee actions
        ignoreFire = false, -- Set to true if you want the ped not react to fire
        ignoreBeingJacked = false, -- Set to true if you want the ped not react to being jacked
        ignoreSilencedClone = true, -- Set to true if you want the ped not react to silenced weapons
        ignoreExplosion = false, -- Set to true if you want the ped not react to explosions
        preventMeleeTaunts = false, -- Set to true if you want the ped not melee taunt
        disableHurt = false, -- Set to true if you want the ped not have hurt reactions
        disableWrithe = false, -- Set to true if you want the ped not writhe on the ground
        preferInjuredGetup = true, -- Set to true if you want the ped to prefer getting up from an injured state
        onlyWritheFromWeapon = true, -- Set to true if you want the ped to only writhe from weapon damage
        runFromFires = true, -- Set to true if you want the ped to run from fires
        dontShoutTarget = false, -- Set to true if you want the ped to not communicate their targets postion
        dontCryForHelp = false -- Set to true if you want the ped to not call for help when injured
      },
      ['Blips'] = {
        enabled = false, -- Set to true if you want the ped to have a blip
        hasCone = false, -- Whether the blip has a view cone on the minimap whilst active
        colour = 1, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        range = 50.0, -- The range the blip can be activated from
        clearOnDeath = true
      },
      ['Combat'] = {
        attributes = {5, 14, 15, 22, 42, 44, 46}, -- https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201
        ability = 35, -- 0-50 = Poor, 50-75 = Average, 75+ = Professional
        accuracy = 10, -- 0 - 100
        alertness = 3, -- 0 = Calm, 3 = Paranoid
        movement = 2, -- 0 = Stationary, 1 = Defensive, 2 = WillAdvance, 3 = WillRetreat
        range = 1, -- 0 = Near, 1 = Medium, 2 = Far, 3 = VeryFar
        targetResponse = 2, -- 0 = Exist Task, 1 = Never Lose target, 2 = Search For Target
        canAttackFriendly = false, -- Whether the ped can attack friendly peds
        canUseCover = true, -- Whether the ped can use cover
        useDiminishingAmmo = true, -- Set false for the ped to have infinite ammo, true to use ammo declared in ['Peds']['Base'].ammo
        blockWeaponSwitching = false, -- Whether the ped can switch weapons
        enableWeaponBlocking = false, -- Whether the ped can block weapon attacks
        keepWeaponHolstered = false, -- Whether the ped will keep their weapon holstered until fired
        disableMelee = false, -- Whether the ped can use melee attacks
        disableUnarmedDriveby = false, -- Whether the ped can use unarmed drivebys
        disableWritheShooting = false, -- Whether the ped can shoot whilst writheing on the ground
        respondToHelpCries = true, -- Whether the ped will respond to help cries
        seeApproachingVehicles = true, -- Whether the ped can always see approaching vehicles
        treatDislikeAsHated = false, -- Whether the ped will treat dislike as hated (Relationship type 4)
        treatNonFriendlyAsHated = false, -- Whether the ped will treat non friendly as hated (Any Relationship from 3 and above)
        broadcastGoingToThreat = true -- Whether the ped will broadcast that they are going to a threat
      },
      ['Damages'] = {
        diesWhenInjured = false, -- Set to true if you want the ped to die when injured
        incapacitation = true, -- Set to true if you want the ped to writhe when injured
        criticals = true, -- Set to true if you want the ped to suffer critical hits
        bullets = true, -- Set to true if you want the ped to suffer bullet damage
        fire = true, -- Set to true if you want the ped to suffer fire damage
        explosion = true, -- Set to true if you want the ped to suffer explosion damage
        collision = true, -- Set to true if you want the ped to suffer collision damage
        steam = true, -- Set to true if you want the ped to suffer steam damage
        melee = true, -- Set to true if you want the ped to suffer melee damage
        drown = true, -- Set to true if you want the ped to drown
        electric = true, -- Set to true if you want the ped to suffer electric damage
        ragdoll = false, -- Set to true if you want the ped to die when ragdolled
        invincible = false -- Set to true if you want the ped to be invincible
      },
      ['Drops'] = {
        weapons = false, -- Set to true if you want the ped to drop their weapon when killed
        healthSnacks = false -- Set to true if you want the ped to drop a health snack when killed
      },
      ['Events'] = {
        generateSoundEvents = true, -- Set to true if you want the ped to generate sound events
        listensToSoundEvents = true, -- Set to true if you want the ped to listen to sound events
        checkLOSForSoundEvents = true, -- Set to true if you want the ped to check line of sight to generate/respond sound events
        disableWeirdPedEvents = false, -- Set to true if you want the ped to disable weird ped events
        disableCryForHelpEvents = false, -- Set to true if you want the ped to disable cry for help events
        usePerceptionForAimEvents = true, -- Set to true if you want the ped to use perception for aim events
        disableShockingEvents = false, -- Set to true if you want the ped to disable shocking events
        disableShockingDrivingEvents = false -- Set to true if you want the ped to disable shocking driving events
      },
      ['Pathing'] = {
        ['Avoidance'] = {
          avoidDrops = true, -- Set to true if you want the ped to avoid falls from height
          avoidFire = true, -- Set to true if you want the ped to avoid fire
          avoidPeds = true, -- Set to true if you want the ped to avoid other peds
          avoidTearGas = true, -- Set to true if you want the ped to avoid tear gas
          avoidWater = true -- Set to true if you want the ped to avoid water
        },
        ['Movement'] = {
          disableCrouch = false, -- Set to true if you want the ped to disable crouching
          disableDives = false, -- Set to true if you want the ped to disable evasive diving
          disableClimbing = false, -- Set to true if you want the ped to disable climbing over objects
          disableLadders = false -- Set to true if you want the ped to disable climbing ladders
        },
        ['Ragdolling'] = {
          canRagdoll = true, -- Set to true if you want the ped to be able to ragdoll
          pedImpact = true, -- Set to true if you want the ped to ragdoll from ped impacts
          vehicleImpact = true, -- Set to true if you want the ped to ragdoll from vehicle impacts
          bulletImpact = true, -- Set to true if you want the ped to ragdoll from bullet impacts
          explosion = true, -- Set to true if you want the ped to ragdoll from explosions
          fire = true, -- Set to true if you want the ped to ragdoll from fires
          electrocution = true, -- Set to true if you want the ped to ragdoll from being electrocuted
          objectImpact = true, -- Set to true if you want the ped to ragdoll from object impacts
          melee = true, -- Set to true if you want the ped to ragdoll from melee attacks
          waterjetImpact = true, -- Set to true if you want the ped to ragdoll from water jet impacts
          drowning = true, -- Set to true if you want the ped to ragdoll from drowning
          falling = true, -- Set to true if you want the ped to ragdoll from falling
          onBoats = true, -- Set to true if you want the ped to ragdoll from being on boats whilst they're moving
          rubberBullet = true, -- Set to true if you want the ped to ragdoll from rubber bullet impacts
          smokeGrenades = true, -- Set to true if you want the ped to ragdoll from smoke grenade impacts
          pedCollision = true, -- Set to true if you want the ped to ragdoll from ped collisions
          vehicleCollision = true, -- Set to true if you want the ped to ragdoll from vehicle collisions
          playerImpact = true, -- Set to true if you want the ped to ragdoll from player impacts
          aiRagdollImpact = true, -- Set to true if you want the ped to ragdoll from ai ragdoll impacts
          playerRagdollImpact = true, -- Set to true if you want the ped to ragdoll from player ragdoll impacts
          minorPlayerImpact = true, -- Set to true if you want the ped to ragdoll from minor player impacts
          ragdollOnDeath = true -- Set to true if you want the ped to ragdoll on death
        }
      },
      ['Relationships'] = { -- 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
        [5] = {'PLAYER'}, -- Can be a table of jobs
        override = 'Russian' -- If multiple patrols need to be friendly to each other, set this as the same for each patrol
      },
    }
  },
  {
    name = 'fob_memphis',
    ['Enabled'] = {guards = true, patrols = true, vehicles = true},
    ['Routes'] = {
      guard = {
        {coords = vector3(991.66, 2970.57, 47.22), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(990.07, 2970.42, 43.39), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(987.8, 2989.82, 50.93), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(968.97, 3045.8, 50.93), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(869.55, 3071.93, 52.84), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(946.23, 2940.45, 52.9), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(874.58, 3013.3, 58.8), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(761.96, 3074.92, 57.28), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(867.12, 3042.55, 43.34), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(868.1, 3049.41, 43.34), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(881.79, 3006.24, 46.34), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(760.26, 3000.17, 49.92), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(775.04, 3015.29, 49.92), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(771.92, 3033.2, 49.92), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(766.68, 3033.91, 49.92), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(770.8, 2969.36, 52.33), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(770.78, 2964.47, 52.33), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
      },
      patrol = {
        { -- Memphis Patrol
          {coords = vector3(1026.61, 2973.06, 40.8), heading = 50.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(1030.91, 2975.95, 41.0), heading = 200.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(1039.35, 2970.42, 41.07), heading = 200.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(1057.39, 2964.93, 40.97), heading = 200.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(1083.27, 2962.7, 40.71), heading = 200.92, stopTime = math.random(1000, 5000)},
        },
        { -- Memphis2 Patrol
          {coords = vector3(1016.28, 2986.11, 40.63), heading = 200.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(1020.97, 2987.01, 40.79), heading = 238.37, stopTime = math.random(1000, 5000)},
          {coords = vector3(1011.88, 3006.35, 41.1), heading = 333.22, stopTime = math.random(1000, 5000)},
          {coords = vector3(1000.89, 3027.42, 41.27), heading = 152.92, stopTime = math.random(1000, 5000)},
        }
      },
      vehicle = { -- https://vespura.com/fivem/drivingstyle/
      { -- Mesa Property Rotation
        {coords = vector3(1080.01, 2944.42, 38.98), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(1021.38, 3007.82, 40.82), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(1004.36, 3051.48, 40.85), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(992.73, 3071.15, 41.02), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(968.09, 3085.33, 41.35), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(928.17, 3090.83, 41.17), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(756.19, 3101.85, 43.56), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(606.07, 3063.66, 42.19), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(541.76, 3056.46, 39.73), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(464.99, 3094.01, 40.69), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(387.82, 3104.87, 43.37), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(325.7, 3136.23, 39.98), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(233.63, 3137.27, 42.1), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(212.73, 3152.07, 42.17), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(209.42, 3187.1, 42.35), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(211.28, 3228.49, 42.18), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(221.28, 3253.28, 41.58), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(235.57, 3311.93, 40.14), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(248.71, 3319.29, 39.81), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(286.73, 3299.31, 40.83), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(454.1, 3218.28, 43.07), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(780.21, 3200.82, 38.47), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(940.42, 3222.87, 38.33), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(974.72, 3229.74, 38.02), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(989.09, 3199.38, 38.78), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(996.92, 3150.31, 39.72), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(1002.46, 3127.37, 41.04), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(992.21, 3113.36, 41.12), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(949.72, 3096.49, 41.19), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(956.54, 3080.67, 41.18), speed = 10.0, drivingStyle = 262716},
        {coords = vector3(1006.51, 3032.97, 41.1), speed = 10.0, drivingStyle = 262716},
      },
    }
    },
    ['Peds'] = {
      guard = {
        {
          ['Base'] = {
            model = 'BF4Russian', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_assaultrifle', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }, {
          ['Base'] = {
            model = 'BF4Russian2',
            weapon = 'weapon_snspistol',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }, {
          ['Base'] = {
            model = 'BF4Sniper',
            weapon = 'weapon_marksmanrifle',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian3',
            weapon = 'weapon_combatmg',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian4',
            weapon = 'weapon_bullpuprifle',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian5',
            weapon = 'weapon_compactrifle',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian6',
            weapon = 'weapon_assaultrifle',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Sniper',
            weapon = 'weapon_sniperrifle',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'RussianSF',
            weapon = 'weapon_assaultshotgun',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'RussianSF2',
            weapon = 'weapon_assaultrifle',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'RussianSF3',
            weapon = 'weapon_assaultrifle',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'Spetnaz',
            weapon = 'weapon_assaultrifle_mk2',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian7',
            weapon = 'weapon_pistol',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian8',
            weapon = 'weapon_microsmg',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian',
            weapon = 'weapon_pumpshotgun',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian2',
            weapon = 'weapon_mg',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian3',
            weapon = 'weapon_combatmg',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }
      },
      patrol = {
        {
          ['Base'] = {
            model = 'BF4Russian5', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_heavypistol', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        },
        {
          ['Base'] = {
            model = 'RussianSF2', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_assaultrifle', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }
      },
      vehicle = {
        {  -- If passenger number is set below, each peds copies the config from below and applies that to the amount of passengers deinfed below.
          ['Base'] = {
            model = 'BF4Russian6', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_heavypistol', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 500, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
            flags = {29, 32, 116, 151, 229, 241, 250, 366, 391, 398} -- This has it's best use for vehicles, as no vehicle flags are set by default
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }
      }
    },
    ['Vehicles'] = {
      vehicle = {
        {
          ['Base'] = {
            model = 'unarmed2', -- https://docs.fivem.net/docs/game-references/vehicle-models/
            vehType = 'automobile',
            passengers = 3, -- Can be omitted, will default to the table length of the peds array above
            lockType = 3, -- 0 = None, 1 = Unlocked, 2 = Locked, 3 = LockedForPlayer, 4 = LockedPlayerInside, 5 = LockedInitially
            health = 1000.0,
            dirtLevel = 40.0,
            plate = 'RUSSIA'
          }
        }
      }
    },
    ['Settings'] = {
      ['Behavior'] = {
        ignoreMelee = false, -- Set to true if you want the ped not react to melee actions
        ignoreFire = false, -- Set to true if you want the ped not react to fire
        ignoreBeingJacked = false, -- Set to true if you want the ped not react to being jacked
        ignoreSilencedClone = true, -- Set to true if you want the ped not react to silenced weapons
        ignoreExplosion = false, -- Set to true if you want the ped not react to explosions
        preventMeleeTaunts = false, -- Set to true if you want the ped not melee taunt
        disableHurt = false, -- Set to true if you want the ped not have hurt reactions
        disableWrithe = false, -- Set to true if you want the ped not writhe on the ground
        preferInjuredGetup = true, -- Set to true if you want the ped to prefer getting up from an injured state
        onlyWritheFromWeapon = true, -- Set to true if you want the ped to only writhe from weapon damage
        runFromFires = true, -- Set to true if you want the ped to run from fires
        dontShoutTarget = false, -- Set to true if you want the ped to not communicate their targets postion
        dontCryForHelp = false -- Set to true if you want the ped to not call for help when injured
      },
      ['Blips'] = {
        enabled = false, -- Set to true if you want the ped to have a blip
        hasCone = false, -- Whether the blip has a view cone on the minimap whilst active
        colour = 1, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        range = 50.0, -- The range the blip can be activated from
        clearOnDeath = true
      },
      ['Combat'] = {
        attributes = {5, 14, 15, 22, 42, 44, 46}, -- https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201
        ability = 60, -- 0-50 = Poor, 50-75 = Average, 75+ = Professional
        accuracy = 20, -- 0 - 100
        alertness = 3, -- 0 = Calm, 3 = Paranoid
        movement = 0, -- 0 = Stationary, 1 = Defensive, 2 = WillAdvance, 3 = WillRetreat
        range = 0, -- 0 = Near, 1 = Medium, 2 = Far, 3 = VeryFar
        targetResponse = 0, -- 0 = Exist Task, 1 = Never Lose target, 2 = Search For Target
        canAttackFriendly = false, -- Whether the ped can attack friendly peds
        canUseCover = true, -- Whether the ped can use cover
        useDiminishingAmmo = true, -- Set false for the ped to have infinite ammo, true to use ammo declared in ['Peds']['Base'].ammo
        blockWeaponSwitching = false, -- Whether the ped can switch weapons
        enableWeaponBlocking = false, -- Whether the ped can block weapon attacks
        keepWeaponHolstered = false, -- Whether the ped will keep their weapon holstered until fired
        disableMelee = false, -- Whether the ped can use melee attacks
        disableUnarmedDriveby = false, -- Whether the ped can use unarmed drivebys
        disableWritheShooting = false, -- Whether the ped can shoot whilst writheing on the ground
        respondToHelpCries = true, -- Whether the ped will respond to help cries
        seeApproachingVehicles = true, -- Whether the ped can always see approaching vehicles
        treatDislikeAsHated = false, -- Whether the ped will treat dislike as hated (Relationship type 4)
        treatNonFriendlyAsHated = false, -- Whether the ped will treat non friendly as hated (Any Relationship from 3 and above)
        broadcastGoingToThreat = true -- Whether the ped will broadcast that they are going to a threat
      },
      ['Damages'] = {
        diesWhenInjured = false, -- Set to true if you want the ped to die when injured
        incapacitation = true, -- Set to true if you want the ped to writhe when injured
        criticals = true, -- Set to true if you want the ped to suffer critical hits
        bullets = true, -- Set to true if you want the ped to suffer bullet damage
        fire = true, -- Set to true if you want the ped to suffer fire damage
        explosion = true, -- Set to true if you want the ped to suffer explosion damage
        collision = true, -- Set to true if you want the ped to suffer collision damage
        steam = true, -- Set to true if you want the ped to suffer steam damage
        melee = true, -- Set to true if you want the ped to suffer melee damage
        drown = true, -- Set to true if you want the ped to drown
        electric = true, -- Set to true if you want the ped to suffer electric damage
        ragdoll = false, -- Set to true if you want the ped to die when ragdolled
        invincible = false -- Set to true if you want the ped to be invincible
      },
      ['Drops'] = {
        weapons = false, -- Set to true if you want the ped to drop their weapon when killed
        healthSnacks = false -- Set to true if you want the ped to drop a health snack when killed
      },
      ['Events'] = {
        generateSoundEvents = true, -- Set to true if you want the ped to generate sound events
        listensToSoundEvents = true, -- Set to true if you want the ped to listen to sound events
        checkLOSForSoundEvents = true, -- Set to true if you want the ped to check line of sight to generate/respond sound events
        disableWeirdPedEvents = false, -- Set to true if you want the ped to disable weird ped events
        disableCryForHelpEvents = false, -- Set to true if you want the ped to disable cry for help events
        usePerceptionForAimEvents = true, -- Set to true if you want the ped to use perception for aim events
        disableShockingEvents = false, -- Set to true if you want the ped to disable shocking events
        disableShockingDrivingEvents = false -- Set to true if you want the ped to disable shocking driving events
      },
      ['Pathing'] = {
        ['Avoidance'] = {
          avoidDrops = true, -- Set to true if you want the ped to avoid falls from height
          avoidFire = true, -- Set to true if you want the ped to avoid fire
          avoidPeds = true, -- Set to true if you want the ped to avoid other peds
          avoidTearGas = true, -- Set to true if you want the ped to avoid tear gas
          avoidWater = true -- Set to true if you want the ped to avoid water
        },
        ['Movement'] = {
          disableCrouch = false, -- Set to true if you want the ped to disable crouching
          disableDives = false, -- Set to true if you want the ped to disable evasive diving
          disableClimbing = false, -- Set to true if you want the ped to disable climbing over objects
          disableLadders = false -- Set to true if you want the ped to disable climbing ladders
        },
        ['Ragdolling'] = {
          canRagdoll = true, -- Set to true if you want the ped to be able to ragdoll
          pedImpact = true, -- Set to true if you want the ped to ragdoll from ped impacts
          vehicleImpact = true, -- Set to true if you want the ped to ragdoll from vehicle impacts
          bulletImpact = true, -- Set to true if you want the ped to ragdoll from bullet impacts
          explosion = true, -- Set to true if you want the ped to ragdoll from explosions
          fire = true, -- Set to true if you want the ped to ragdoll from fires
          electrocution = true, -- Set to true if you want the ped to ragdoll from being electrocuted
          objectImpact = true, -- Set to true if you want the ped to ragdoll from object impacts
          melee = true, -- Set to true if you want the ped to ragdoll from melee attacks
          waterjetImpact = true, -- Set to true if you want the ped to ragdoll from water jet impacts
          drowning = true, -- Set to true if you want the ped to ragdoll from drowning
          falling = true, -- Set to true if you want the ped to ragdoll from falling
          onBoats = true, -- Set to true if you want the ped to ragdoll from being on boats whilst they're moving
          rubberBullet = true, -- Set to true if you want the ped to ragdoll from rubber bullet impacts
          smokeGrenades = true, -- Set to true if you want the ped to ragdoll from smoke grenade impacts
          pedCollision = true, -- Set to true if you want the ped to ragdoll from ped collisions
          vehicleCollision = true, -- Set to true if you want the ped to ragdoll from vehicle collisions
          playerImpact = true, -- Set to true if you want the ped to ragdoll from player impacts
          aiRagdollImpact = true, -- Set to true if you want the ped to ragdoll from ai ragdoll impacts
          playerRagdollImpact = true, -- Set to true if you want the ped to ragdoll from player ragdoll impacts
          minorPlayerImpact = true, -- Set to true if you want the ped to ragdoll from minor player impacts
          ragdollOnDeath = true -- Set to true if you want the ped to ragdoll on death
        }
      },
      ['Relationships'] = { -- 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
        [5] = {'PLAYER'}, -- Can be a table of jobs
        override = 'Russian' -- If multiple patrols need to be friendly to each other, set this as the same for each patrol
      },
    }
  },
  {
    name = 'doomsday_facility_interior',
    ['Enabled'] = {guards = true, patrols = false, vehicles = false},
    ['Routes'] = {
      guard = {
        {coords = vector3(430.33, 4825.37, -59.0), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(418.55, 4810.76, -59.0), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(404.95, 4829.81, -59.0), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(325.45, 4826.97, -59.4), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(345.96, 4861.43, -59.0), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(353.25, 4875.56, -60.79), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(361.97, 4844.09, -59.0), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json

        {coords = vector3(369.18, 4851.6, -59.0), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(386.46, 4848.9, -59.0), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(404.1, 4848.58, -59.0), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(416.24, 4844.26, -59.0), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(414.81, 4842.8, -62.6), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(360.35, 4841.29, -62.6), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(338.6, 4851.42, -62.6), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(326.02, 4874.6, -62.6), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(337.15, 4847.84, -59.0), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(355.32, 4840.32, -59.0), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json

      }
    },
    ['Peds'] = {
      guard = {
        {
          ['Base'] = {
            model = 'BF4Russian', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_pistol', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }, {
          ['Base'] = {
            model = 'BF4Russian2',
            weapon = 'weapon_autoshotgun',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }, {
          ['Base'] = {
            model = 'BF4Sniper',
            weapon = 'weapon_compactrifle',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian3',
            weapon = 'weapon_heavypistol',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian4',
            weapon = 'weapon_microsmg',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian5',
            weapon = 'weapon_minismg',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian6',
            weapon = 'weapon_assaultrifle',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Sniper',
            weapon = 'weapon_pumpshotgun',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'RussianSF',
            weapon = 'weapon_combatpistol',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'RussianSF2',
            weapon = 'weapon_assaultrifle',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'RussianSF3',
            weapon = 'weapon_assaultrifle',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'Spetnaz',
            weapon = 'weapon_assaultrifle_mk2',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian7',
            weapon = 'weapon_pistol',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian8',
            weapon = 'weapon_microsmg',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian',
            weapon = 'weapon_pumpshotgun',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian2',
            weapon = 'weapon_mg',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian3',
            weapon = 'weapon_combatmg',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }
      }
    },
    ['Settings'] = {
      ['Behavior'] = {
        ignoreMelee = false, -- Set to true if you want the ped not react to melee actions
        ignoreFire = false, -- Set to true if you want the ped not react to fire
        ignoreBeingJacked = false, -- Set to true if you want the ped not react to being jacked
        ignoreSilencedClone = true, -- Set to true if you want the ped not react to silenced weapons
        ignoreExplosion = false, -- Set to true if you want the ped not react to explosions
        preventMeleeTaunts = false, -- Set to true if you want the ped not melee taunt
        disableHurt = false, -- Set to true if you want the ped not have hurt reactions
        disableWrithe = false, -- Set to true if you want the ped not writhe on the ground
        preferInjuredGetup = true, -- Set to true if you want the ped to prefer getting up from an injured state
        onlyWritheFromWeapon = true, -- Set to true if you want the ped to only writhe from weapon damage
        runFromFires = true, -- Set to true if you want the ped to run from fires
        dontShoutTarget = false, -- Set to true if you want the ped to not communicate their targets postion
        dontCryForHelp = false -- Set to true if you want the ped to not call for help when injured
      },
      ['Blips'] = {
        enabled = false, -- Set to true if you want the ped to have a blip
        hasCone = false, -- Whether the blip has a view cone on the minimap whilst active
        colour = 1, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        range = 50.0, -- The range the blip can be activated from
        clearOnDeath = true
      },
      ['Combat'] = {
        attributes = {5, 14, 15, 22, 42, 44, 46}, -- https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201
        ability = 35, -- 0-50 = Poor, 50-75 = Average, 75+ = Professional
        accuracy = 10, -- 0 - 100
        alertness = 0, -- 0 = Calm, 3 = Paranoid
        movement = 1, -- 0 = Stationary, 1 = Defensive, 2 = WillAdvance, 3 = WillRetreat
        range = 1, -- 0 = Near, 1 = Medium, 2 = Far, 3 = VeryFar
        targetResponse = 0, -- 0 = Exist Task, 1 = Never Lose target, 2 = Search For Target
        canAttackFriendly = false, -- Whether the ped can attack friendly peds
        canUseCover = true, -- Whether the ped can use cover
        useDiminishingAmmo = true, -- Set false for the ped to have infinite ammo, true to use ammo declared in ['Peds']['Base'].ammo
        blockWeaponSwitching = false, -- Whether the ped can switch weapons
        enableWeaponBlocking = false, -- Whether the ped can block weapon attacks
        keepWeaponHolstered = false, -- Whether the ped will keep their weapon holstered until fired
        disableMelee = false, -- Whether the ped can use melee attacks
        disableUnarmedDriveby = false, -- Whether the ped can use unarmed drivebys
        disableWritheShooting = false, -- Whether the ped can shoot whilst writheing on the ground
        respondToHelpCries = true, -- Whether the ped will respond to help cries
        seeApproachingVehicles = true, -- Whether the ped can always see approaching vehicles
        treatDislikeAsHated = false, -- Whether the ped will treat dislike as hated (Relationship type 4)
        treatNonFriendlyAsHated = false, -- Whether the ped will treat non friendly as hated (Any Relationship from 3 and above)
        broadcastGoingToThreat = true -- Whether the ped will broadcast that they are going to a threat
      },
      ['Damages'] = {
        diesWhenInjured = false, -- Set to true if you want the ped to die when injured
        incapacitation = true, -- Set to true if you want the ped to writhe when injured
        criticals = true, -- Set to true if you want the ped to suffer critical hits
        bullets = true, -- Set to true if you want the ped to suffer bullet damage
        fire = true, -- Set to true if you want the ped to suffer fire damage
        explosion = true, -- Set to true if you want the ped to suffer explosion damage
        collision = true, -- Set to true if you want the ped to suffer collision damage
        steam = true, -- Set to true if you want the ped to suffer steam damage
        melee = true, -- Set to true if you want the ped to suffer melee damage
        drown = true, -- Set to true if you want the ped to drown
        electric = true, -- Set to true if you want the ped to suffer electric damage
        ragdoll = false, -- Set to true if you want the ped to die when ragdolled
        invincible = false -- Set to true if you want the ped to be invincible
      },
      ['Drops'] = {
        weapons = false, -- Set to true if you want the ped to drop their weapon when killed
        healthSnacks = false -- Set to true if you want the ped to drop a health snack when killed
      },
      ['Events'] = {
        generateSoundEvents = true, -- Set to true if you want the ped to generate sound events
        listensToSoundEvents = true, -- Set to true if you want the ped to listen to sound events
        checkLOSForSoundEvents = true, -- Set to true if you want the ped to check line of sight to generate/respond sound events
        disableWeirdPedEvents = false, -- Set to true if you want the ped to disable weird ped events
        disableCryForHelpEvents = false, -- Set to true if you want the ped to disable cry for help events
        usePerceptionForAimEvents = true, -- Set to true if you want the ped to use perception for aim events
        disableShockingEvents = false, -- Set to true if you want the ped to disable shocking events
        disableShockingDrivingEvents = false -- Set to true if you want the ped to disable shocking driving events
      },
      ['Pathing'] = {
        ['Avoidance'] = {
          avoidDrops = true, -- Set to true if you want the ped to avoid falls from height
          avoidFire = true, -- Set to true if you want the ped to avoid fire
          avoidPeds = true, -- Set to true if you want the ped to avoid other peds
          avoidTearGas = true, -- Set to true if you want the ped to avoid tear gas
          avoidWater = true -- Set to true if you want the ped to avoid water
        },
        ['Movement'] = {
          disableCrouch = false, -- Set to true if you want the ped to disable crouching
          disableDives = false, -- Set to true if you want the ped to disable evasive diving
          disableClimbing = false, -- Set to true if you want the ped to disable climbing over objects
          disableLadders = false -- Set to true if you want the ped to disable climbing ladders
        },
        ['Ragdolling'] = {
          canRagdoll = true, -- Set to true if you want the ped to be able to ragdoll
          pedImpact = true, -- Set to true if you want the ped to ragdoll from ped impacts
          vehicleImpact = true, -- Set to true if you want the ped to ragdoll from vehicle impacts
          bulletImpact = true, -- Set to true if you want the ped to ragdoll from bullet impacts
          explosion = true, -- Set to true if you want the ped to ragdoll from explosions
          fire = true, -- Set to true if you want the ped to ragdoll from fires
          electrocution = true, -- Set to true if you want the ped to ragdoll from being electrocuted
          objectImpact = true, -- Set to true if you want the ped to ragdoll from object impacts
          melee = true, -- Set to true if you want the ped to ragdoll from melee attacks
          waterjetImpact = true, -- Set to true if you want the ped to ragdoll from water jet impacts
          drowning = true, -- Set to true if you want the ped to ragdoll from drowning
          falling = true, -- Set to true if you want the ped to ragdoll from falling
          onBoats = true, -- Set to true if you want the ped to ragdoll from being on boats whilst they're moving
          rubberBullet = true, -- Set to true if you want the ped to ragdoll from rubber bullet impacts
          smokeGrenades = true, -- Set to true if you want the ped to ragdoll from smoke grenade impacts
          pedCollision = true, -- Set to true if you want the ped to ragdoll from ped collisions
          vehicleCollision = true, -- Set to true if you want the ped to ragdoll from vehicle collisions
          playerImpact = true, -- Set to true if you want the ped to ragdoll from player impacts
          aiRagdollImpact = true, -- Set to true if you want the ped to ragdoll from ai ragdoll impacts
          playerRagdollImpact = true, -- Set to true if you want the ped to ragdoll from player ragdoll impacts
          minorPlayerImpact = true, -- Set to true if you want the ped to ragdoll from minor player impacts
          ragdollOnDeath = true -- Set to true if you want the ped to ragdoll on death
        }
      },
      ['Relationships'] = { -- 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
        [5] = {'PLAYER'}, -- Can be a table of jobs
        override = 'Russian' -- If multiple patrols need to be friendly to each other, set this as the same for each patrol
      },
    }
  },
  {
    name = 'drug_lab_ext_b',
    ['Enabled'] = {guards = true, patrols = false, vehicles = false},
    ['Routes'] = {
      guard = {
        {coords = vector3(1534.76, -2172.86, 77.42), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(1530.91, -2159.17, 77.73), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(1556.15, -2172.63, 77.44), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(1510.94, -2146.13, 77.1), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(1520.82, -2066.97, 77.3), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(1520.22, -2053.63, 77.3), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
      }
    },
    ['Peds'] = {
      guard = {
        {
          ['Base'] = {
            model = 'g_m_y_ballaeast_01', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_bat', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        },{
          ['Base'] = {
            model = 'g_m_y_ballaorig_01',
            weapon = 'weapon_snspistol',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'g_m_y_ballasout_01',
            weapon = 'weapon_microsmg',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },
        {
          ['Base'] = {
            model = 'g_f_y_ballas_01',
            weapon = 'weapon_sawnoffshotgun',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },
        {
          ['Base'] = {
            model = 'g_f_y_ballas_01',
            weapon = 'weapon_compactrifle',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },
        {
          ['Base'] = {
            model = 'g_m_y_ballaorig_01',
            weapon = 'weapon_pistol',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }
      }
    },
    ['Settings'] = {
      ['Behavior'] = {
        ignoreMelee = false, -- Set to true if you want the ped not react to melee actions
        ignoreFire = false, -- Set to true if you want the ped not react to fire
        ignoreBeingJacked = false, -- Set to true if you want the ped not react to being jacked
        ignoreSilencedClone = true, -- Set to true if you want the ped not react to silenced weapons
        ignoreExplosion = false, -- Set to true if you want the ped not react to explosions
        preventMeleeTaunts = false, -- Set to true if you want the ped not melee taunt
        disableHurt = false, -- Set to true if you want the ped not have hurt reactions
        disableWrithe = false, -- Set to true if you want the ped not writhe on the ground
        preferInjuredGetup = true, -- Set to true if you want the ped to prefer getting up from an injured state
        onlyWritheFromWeapon = true, -- Set to true if you want the ped to only writhe from weapon damage
        runFromFires = true, -- Set to true if you want the ped to run from fires
        dontShoutTarget = false, -- Set to true if you want the ped to not communicate their targets postion
        dontCryForHelp = false -- Set to true if you want the ped to not call for help when injured
      },
      ['Blips'] = {
        enabled = false, -- Set to true if you want the ped to have a blip
        hasCone = false, -- Whether the blip has a view cone on the minimap whilst active
        colour = 1, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        range = 50.0, -- The range the blip can be activated from
        clearOnDeath = true
      },
      ['Combat'] = {
        attributes = {5, 14, 15, 22, 42, 44, 46}, -- https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201
        ability = 35, -- 0-50 = Poor, 50-75 = Average, 75+ = Professional
        accuracy = 10, -- 0 - 100
        alertness = 0, -- 0 = Calm, 3 = Paranoid
        movement = 1, -- 0 = Stationary, 1 = Defensive, 2 = WillAdvance, 3 = WillRetreat
        range = 1, -- 0 = Near, 1 = Medium, 2 = Far, 3 = VeryFar
        targetResponse = 0, -- 0 = Exist Task, 1 = Never Lose target, 2 = Search For Target
        canAttackFriendly = false, -- Whether the ped can attack friendly peds
        canUseCover = true, -- Whether the ped can use cover
        useDiminishingAmmo = true, -- Set false for the ped to have infinite ammo, true to use ammo declared in ['Peds']['Base'].ammo
        blockWeaponSwitching = false, -- Whether the ped can switch weapons
        enableWeaponBlocking = false, -- Whether the ped can block weapon attacks
        keepWeaponHolstered = false, -- Whether the ped will keep their weapon holstered until fired
        disableMelee = false, -- Whether the ped can use melee attacks
        disableUnarmedDriveby = false, -- Whether the ped can use unarmed drivebys
        disableWritheShooting = false, -- Whether the ped can shoot whilst writheing on the ground
        respondToHelpCries = true, -- Whether the ped will respond to help cries
        seeApproachingVehicles = true, -- Whether the ped can always see approaching vehicles
        treatDislikeAsHated = false, -- Whether the ped will treat dislike as hated (Relationship type 4)
        treatNonFriendlyAsHated = false, -- Whether the ped will treat non friendly as hated (Any Relationship from 3 and above)
        broadcastGoingToThreat = true -- Whether the ped will broadcast that they are going to a threat
      },
      ['Damages'] = {
        diesWhenInjured = false, -- Set to true if you want the ped to die when injured
        incapacitation = true, -- Set to true if you want the ped to writhe when injured
        criticals = true, -- Set to true if you want the ped to suffer critical hits
        bullets = true, -- Set to true if you want the ped to suffer bullet damage
        fire = true, -- Set to true if you want the ped to suffer fire damage
        explosion = true, -- Set to true if you want the ped to suffer explosion damage
        collision = true, -- Set to true if you want the ped to suffer collision damage
        steam = true, -- Set to true if you want the ped to suffer steam damage
        melee = true, -- Set to true if you want the ped to suffer melee damage
        drown = true, -- Set to true if you want the ped to drown
        electric = true, -- Set to true if you want the ped to suffer electric damage
        ragdoll = false, -- Set to true if you want the ped to die when ragdolled
        invincible = false -- Set to true if you want the ped to be invincible
      },
      ['Drops'] = {
        weapons = false, -- Set to true if you want the ped to drop their weapon when killed
        healthSnacks = false -- Set to true if you want the ped to drop a health snack when killed
      },
      ['Events'] = {
        generateSoundEvents = true, -- Set to true if you want the ped to generate sound events
        listensToSoundEvents = true, -- Set to true if you want the ped to listen to sound events
        checkLOSForSoundEvents = true, -- Set to true if you want the ped to check line of sight to generate/respond sound events
        disableWeirdPedEvents = false, -- Set to true if you want the ped to disable weird ped events
        disableCryForHelpEvents = false, -- Set to true if you want the ped to disable cry for help events
        usePerceptionForAimEvents = true, -- Set to true if you want the ped to use perception for aim events
        disableShockingEvents = false, -- Set to true if you want the ped to disable shocking events
        disableShockingDrivingEvents = false -- Set to true if you want the ped to disable shocking driving events
      },
      ['Pathing'] = {
        ['Avoidance'] = {
          avoidDrops = true, -- Set to true if you want the ped to avoid falls from height
          avoidFire = true, -- Set to true if you want the ped to avoid fire
          avoidPeds = true, -- Set to true if you want the ped to avoid other peds
          avoidTearGas = true, -- Set to true if you want the ped to avoid tear gas
          avoidWater = true -- Set to true if you want the ped to avoid water
        },
        ['Movement'] = {
          disableCrouch = false, -- Set to true if you want the ped to disable crouching
          disableDives = false, -- Set to true if you want the ped to disable evasive diving
          disableClimbing = false, -- Set to true if you want the ped to disable climbing over objects
          disableLadders = false -- Set to true if you want the ped to disable climbing ladders
        },
        ['Ragdolling'] = {
          canRagdoll = true, -- Set to true if you want the ped to be able to ragdoll
          pedImpact = true, -- Set to true if you want the ped to ragdoll from ped impacts
          vehicleImpact = true, -- Set to true if you want the ped to ragdoll from vehicle impacts
          bulletImpact = true, -- Set to true if you want the ped to ragdoll from bullet impacts
          explosion = true, -- Set to true if you want the ped to ragdoll from explosions
          fire = true, -- Set to true if you want the ped to ragdoll from fires
          electrocution = true, -- Set to true if you want the ped to ragdoll from being electrocuted
          objectImpact = true, -- Set to true if you want the ped to ragdoll from object impacts
          melee = true, -- Set to true if you want the ped to ragdoll from melee attacks
          waterjetImpact = true, -- Set to true if you want the ped to ragdoll from water jet impacts
          drowning = true, -- Set to true if you want the ped to ragdoll from drowning
          falling = true, -- Set to true if you want the ped to ragdoll from falling
          onBoats = true, -- Set to true if you want the ped to ragdoll from being on boats whilst they're moving
          rubberBullet = true, -- Set to true if you want the ped to ragdoll from rubber bullet impacts
          smokeGrenades = true, -- Set to true if you want the ped to ragdoll from smoke grenade impacts
          pedCollision = true, -- Set to true if you want the ped to ragdoll from ped collisions
          vehicleCollision = true, -- Set to true if you want the ped to ragdoll from vehicle collisions
          playerImpact = true, -- Set to true if you want the ped to ragdoll from player impacts
          aiRagdollImpact = true, -- Set to true if you want the ped to ragdoll from ai ragdoll impacts
          playerRagdollImpact = true, -- Set to true if you want the ped to ragdoll from player ragdoll impacts
          minorPlayerImpact = true, -- Set to true if you want the ped to ragdoll from minor player impacts
          ragdollOnDeath = true -- Set to true if you want the ped to ragdoll on death
        }
      },
      ['Relationships'] = { -- 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
        [5] = {'PLAYER','ZOMBIE'}, -- Can be a table of jobs
        override = 'ballas' -- If multiple patrols need to be friendly to each other, set this as the same for each patrol
      },
    }
  },
  {
    name = 'drug_lab_ext',
    ['Enabled'] = {guards = true, patrols = false, vehicles = false},
    ['Routes'] = {
      guard = {
        {coords = vector3(1569.71, -2130.55, 78.33), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(1569.56, -2164.85, 77.59), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(1541.36, -2147.13, 77.48), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(1521.44, -2114.39, 76.82), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(1553.47, -2072.73, 77.11), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(1521.98, -2080.05, 77.2), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
      }
    },
    ['Peds'] = {
      guard = {
        {
          ['Base'] = {
            model = 'g_f_y_families_01', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_machete', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        },{
          ['Base'] = {
            model = 'g_m_y_famdnf_01',
            weapon = 'weapon_pistol',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'g_m_y_famfor_01',
            weapon = 'weapon_combatpistol',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },
        {
          ['Base'] = {
            model = 'g_m_y_famca_01',
            weapon = 'weapon_minismg',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },
        {
          ['Base'] = {
            model = 'g_m_y_famfor_01',
            weapon = 'weapon_compactrifle',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },
        {
          ['Base'] = {
            model = 'g_m_y_famca_01',
            weapon = 'weapon_snspistol',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }
      }
    },
    ['Settings'] = {
      ['Behavior'] = {
        ignoreMelee = false, -- Set to true if you want the ped not react to melee actions
        ignoreFire = false, -- Set to true if you want the ped not react to fire
        ignoreBeingJacked = false, -- Set to true if you want the ped not react to being jacked
        ignoreSilencedClone = true, -- Set to true if you want the ped not react to silenced weapons
        ignoreExplosion = false, -- Set to true if you want the ped not react to explosions
        preventMeleeTaunts = false, -- Set to true if you want the ped not melee taunt
        disableHurt = false, -- Set to true if you want the ped not have hurt reactions
        disableWrithe = false, -- Set to true if you want the ped not writhe on the ground
        preferInjuredGetup = true, -- Set to true if you want the ped to prefer getting up from an injured state
        onlyWritheFromWeapon = true, -- Set to true if you want the ped to only writhe from weapon damage
        runFromFires = true, -- Set to true if you want the ped to run from fires
        dontShoutTarget = false, -- Set to true if you want the ped to not communicate their targets postion
        dontCryForHelp = false -- Set to true if you want the ped to not call for help when injured
      },
      ['Blips'] = {
        enabled = false, -- Set to true if you want the ped to have a blip
        hasCone = false, -- Whether the blip has a view cone on the minimap whilst active
        colour = 1, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        range = 50.0, -- The range the blip can be activated from
        clearOnDeath = true
      },
      ['Combat'] = {
        attributes = {5, 14, 15, 22, 42, 44, 46}, -- https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201
        ability = 35, -- 0-50 = Poor, 50-75 = Average, 75+ = Professional
        accuracy = 10, -- 0 - 100
        alertness = 0, -- 0 = Calm, 3 = Paranoid
        movement = 1, -- 0 = Stationary, 1 = Defensive, 2 = WillAdvance, 3 = WillRetreat
        range = 1, -- 0 = Near, 1 = Medium, 2 = Far, 3 = VeryFar
        targetResponse = 0, -- 0 = Exist Task, 1 = Never Lose target, 2 = Search For Target
        canAttackFriendly = false, -- Whether the ped can attack friendly peds
        canUseCover = true, -- Whether the ped can use cover
        useDiminishingAmmo = true, -- Set false for the ped to have infinite ammo, true to use ammo declared in ['Peds']['Base'].ammo
        blockWeaponSwitching = false, -- Whether the ped can switch weapons
        enableWeaponBlocking = false, -- Whether the ped can block weapon attacks
        keepWeaponHolstered = false, -- Whether the ped will keep their weapon holstered until fired
        disableMelee = false, -- Whether the ped can use melee attacks
        disableUnarmedDriveby = false, -- Whether the ped can use unarmed drivebys
        disableWritheShooting = false, -- Whether the ped can shoot whilst writheing on the ground
        respondToHelpCries = true, -- Whether the ped will respond to help cries
        seeApproachingVehicles = true, -- Whether the ped can always see approaching vehicles
        treatDislikeAsHated = false, -- Whether the ped will treat dislike as hated (Relationship type 4)
        treatNonFriendlyAsHated = false, -- Whether the ped will treat non friendly as hated (Any Relationship from 3 and above)
        broadcastGoingToThreat = true -- Whether the ped will broadcast that they are going to a threat
      },
      ['Damages'] = {
        diesWhenInjured = false, -- Set to true if you want the ped to die when injured
        incapacitation = true, -- Set to true if you want the ped to writhe when injured
        criticals = true, -- Set to true if you want the ped to suffer critical hits
        bullets = true, -- Set to true if you want the ped to suffer bullet damage
        fire = true, -- Set to true if you want the ped to suffer fire damage
        explosion = true, -- Set to true if you want the ped to suffer explosion damage
        collision = true, -- Set to true if you want the ped to suffer collision damage
        steam = true, -- Set to true if you want the ped to suffer steam damage
        melee = true, -- Set to true if you want the ped to suffer melee damage
        drown = true, -- Set to true if you want the ped to drown
        electric = true, -- Set to true if you want the ped to suffer electric damage
        ragdoll = false, -- Set to true if you want the ped to die when ragdolled
        invincible = false -- Set to true if you want the ped to be invincible
      },
      ['Drops'] = {
        weapons = false, -- Set to true if you want the ped to drop their weapon when killed
        healthSnacks = false -- Set to true if you want the ped to drop a health snack when killed
      },
      ['Events'] = {
        generateSoundEvents = true, -- Set to true if you want the ped to generate sound events
        listensToSoundEvents = true, -- Set to true if you want the ped to listen to sound events
        checkLOSForSoundEvents = true, -- Set to true if you want the ped to check line of sight to generate/respond sound events
        disableWeirdPedEvents = false, -- Set to true if you want the ped to disable weird ped events
        disableCryForHelpEvents = false, -- Set to true if you want the ped to disable cry for help events
        usePerceptionForAimEvents = true, -- Set to true if you want the ped to use perception for aim events
        disableShockingEvents = false, -- Set to true if you want the ped to disable shocking events
        disableShockingDrivingEvents = false -- Set to true if you want the ped to disable shocking driving events
      },
      ['Pathing'] = {
        ['Avoidance'] = {
          avoidDrops = true, -- Set to true if you want the ped to avoid falls from height
          avoidFire = true, -- Set to true if you want the ped to avoid fire
          avoidPeds = true, -- Set to true if you want the ped to avoid other peds
          avoidTearGas = true, -- Set to true if you want the ped to avoid tear gas
          avoidWater = true -- Set to true if you want the ped to avoid water
        },
        ['Movement'] = {
          disableCrouch = false, -- Set to true if you want the ped to disable crouching
          disableDives = false, -- Set to true if you want the ped to disable evasive diving
          disableClimbing = false, -- Set to true if you want the ped to disable climbing over objects
          disableLadders = false -- Set to true if you want the ped to disable climbing ladders
        },
        ['Ragdolling'] = {
          canRagdoll = true, -- Set to true if you want the ped to be able to ragdoll
          pedImpact = true, -- Set to true if you want the ped to ragdoll from ped impacts
          vehicleImpact = true, -- Set to true if you want the ped to ragdoll from vehicle impacts
          bulletImpact = true, -- Set to true if you want the ped to ragdoll from bullet impacts
          explosion = true, -- Set to true if you want the ped to ragdoll from explosions
          fire = true, -- Set to true if you want the ped to ragdoll from fires
          electrocution = true, -- Set to true if you want the ped to ragdoll from being electrocuted
          objectImpact = true, -- Set to true if you want the ped to ragdoll from object impacts
          melee = true, -- Set to true if you want the ped to ragdoll from melee attacks
          waterjetImpact = true, -- Set to true if you want the ped to ragdoll from water jet impacts
          drowning = true, -- Set to true if you want the ped to ragdoll from drowning
          falling = true, -- Set to true if you want the ped to ragdoll from falling
          onBoats = true, -- Set to true if you want the ped to ragdoll from being on boats whilst they're moving
          rubberBullet = true, -- Set to true if you want the ped to ragdoll from rubber bullet impacts
          smokeGrenades = true, -- Set to true if you want the ped to ragdoll from smoke grenade impacts
          pedCollision = true, -- Set to true if you want the ped to ragdoll from ped collisions
          vehicleCollision = true, -- Set to true if you want the ped to ragdoll from vehicle collisions
          playerImpact = true, -- Set to true if you want the ped to ragdoll from player impacts
          aiRagdollImpact = true, -- Set to true if you want the ped to ragdoll from ai ragdoll impacts
          playerRagdollImpact = true, -- Set to true if you want the ped to ragdoll from player ragdoll impacts
          minorPlayerImpact = true, -- Set to true if you want the ped to ragdoll from minor player impacts
          ragdollOnDeath = true -- Set to true if you want the ped to ragdoll on death
        }
      },
      ['Relationships'] = { -- 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
        [5] = {'PLAYER','ZOMBIE'}, -- Can be a table of jobs
        override = 'gsf' -- If multiple patrols need to be friendly to each other, set this as the same for each patrol
      },
    }
  },
  {
    name = 'drug_lab_interior',
    ['Enabled'] = {guards = true, patrols = false, vehicles = false},
    ['Routes'] = {
      guard = {
        {coords = vector3(1041.74, -3204.33, -38.16), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(1060.46, -3201.57, -39.16), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
      }
    },
    ['Peds'] = {
      guard = {
        {
          ['Base'] = {
            model = 'g_f_y_families_01', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_machete', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        },{
          ['Base'] = {
            model = 'g_m_y_famdnf_01',
            weapon = 'weapon_knife',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }
      }
    },
    ['Settings'] = {
      ['Behavior'] = {
        ignoreMelee = false, -- Set to true if you want the ped not react to melee actions
        ignoreFire = false, -- Set to true if you want the ped not react to fire
        ignoreBeingJacked = false, -- Set to true if you want the ped not react to being jacked
        ignoreSilencedClone = true, -- Set to true if you want the ped not react to silenced weapons
        ignoreExplosion = false, -- Set to true if you want the ped not react to explosions
        preventMeleeTaunts = false, -- Set to true if you want the ped not melee taunt
        disableHurt = false, -- Set to true if you want the ped not have hurt reactions
        disableWrithe = false, -- Set to true if you want the ped not writhe on the ground
        preferInjuredGetup = true, -- Set to true if you want the ped to prefer getting up from an injured state
        onlyWritheFromWeapon = true, -- Set to true if you want the ped to only writhe from weapon damage
        runFromFires = true, -- Set to true if you want the ped to run from fires
        dontShoutTarget = false, -- Set to true if you want the ped to not communicate their targets postion
        dontCryForHelp = false -- Set to true if you want the ped to not call for help when injured
      },
      ['Blips'] = {
        enabled = false, -- Set to true if you want the ped to have a blip
        hasCone = false, -- Whether the blip has a view cone on the minimap whilst active
        colour = 1, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        range = 50.0, -- The range the blip can be activated from
        clearOnDeath = true
      },
      ['Combat'] = {
        attributes = {5, 14, 15, 22, 42, 44, 46}, -- https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201
        ability = 35, -- 0-50 = Poor, 50-75 = Average, 75+ = Professional
        accuracy = 10, -- 0 - 100
        alertness = 0, -- 0 = Calm, 3 = Paranoid
        movement = 1, -- 0 = Stationary, 1 = Defensive, 2 = WillAdvance, 3 = WillRetreat
        range = 1, -- 0 = Near, 1 = Medium, 2 = Far, 3 = VeryFar
        targetResponse = 0, -- 0 = Exist Task, 1 = Never Lose target, 2 = Search For Target
        canAttackFriendly = false, -- Whether the ped can attack friendly peds
        canUseCover = true, -- Whether the ped can use cover
        useDiminishingAmmo = true, -- Set false for the ped to have infinite ammo, true to use ammo declared in ['Peds']['Base'].ammo
        blockWeaponSwitching = false, -- Whether the ped can switch weapons
        enableWeaponBlocking = false, -- Whether the ped can block weapon attacks
        keepWeaponHolstered = false, -- Whether the ped will keep their weapon holstered until fired
        disableMelee = false, -- Whether the ped can use melee attacks
        disableUnarmedDriveby = false, -- Whether the ped can use unarmed drivebys
        disableWritheShooting = false, -- Whether the ped can shoot whilst writheing on the ground
        respondToHelpCries = true, -- Whether the ped will respond to help cries
        seeApproachingVehicles = true, -- Whether the ped can always see approaching vehicles
        treatDislikeAsHated = false, -- Whether the ped will treat dislike as hated (Relationship type 4)
        treatNonFriendlyAsHated = false, -- Whether the ped will treat non friendly as hated (Any Relationship from 3 and above)
        broadcastGoingToThreat = true -- Whether the ped will broadcast that they are going to a threat
      },
      ['Damages'] = {
        diesWhenInjured = false, -- Set to true if you want the ped to die when injured
        incapacitation = true, -- Set to true if you want the ped to writhe when injured
        criticals = true, -- Set to true if you want the ped to suffer critical hits
        bullets = true, -- Set to true if you want the ped to suffer bullet damage
        fire = true, -- Set to true if you want the ped to suffer fire damage
        explosion = true, -- Set to true if you want the ped to suffer explosion damage
        collision = true, -- Set to true if you want the ped to suffer collision damage
        steam = true, -- Set to true if you want the ped to suffer steam damage
        melee = true, -- Set to true if you want the ped to suffer melee damage
        drown = true, -- Set to true if you want the ped to drown
        electric = true, -- Set to true if you want the ped to suffer electric damage
        ragdoll = false, -- Set to true if you want the ped to die when ragdolled
        invincible = false -- Set to true if you want the ped to be invincible
      },
      ['Drops'] = {
        weapons = false, -- Set to true if you want the ped to drop their weapon when killed
        healthSnacks = false -- Set to true if you want the ped to drop a health snack when killed
      },
      ['Events'] = {
        generateSoundEvents = true, -- Set to true if you want the ped to generate sound events
        listensToSoundEvents = true, -- Set to true if you want the ped to listen to sound events
        checkLOSForSoundEvents = true, -- Set to true if you want the ped to check line of sight to generate/respond sound events
        disableWeirdPedEvents = false, -- Set to true if you want the ped to disable weird ped events
        disableCryForHelpEvents = false, -- Set to true if you want the ped to disable cry for help events
        usePerceptionForAimEvents = true, -- Set to true if you want the ped to use perception for aim events
        disableShockingEvents = false, -- Set to true if you want the ped to disable shocking events
        disableShockingDrivingEvents = false -- Set to true if you want the ped to disable shocking driving events
      },
      ['Pathing'] = {
        ['Avoidance'] = {
          avoidDrops = true, -- Set to true if you want the ped to avoid falls from height
          avoidFire = true, -- Set to true if you want the ped to avoid fire
          avoidPeds = true, -- Set to true if you want the ped to avoid other peds
          avoidTearGas = true, -- Set to true if you want the ped to avoid tear gas
          avoidWater = true -- Set to true if you want the ped to avoid water
        },
        ['Movement'] = {
          disableCrouch = false, -- Set to true if you want the ped to disable crouching
          disableDives = false, -- Set to true if you want the ped to disable evasive diving
          disableClimbing = false, -- Set to true if you want the ped to disable climbing over objects
          disableLadders = false -- Set to true if you want the ped to disable climbing ladders
        },
        ['Ragdolling'] = {
          canRagdoll = true, -- Set to true if you want the ped to be able to ragdoll
          pedImpact = true, -- Set to true if you want the ped to ragdoll from ped impacts
          vehicleImpact = true, -- Set to true if you want the ped to ragdoll from vehicle impacts
          bulletImpact = true, -- Set to true if you want the ped to ragdoll from bullet impacts
          explosion = true, -- Set to true if you want the ped to ragdoll from explosions
          fire = true, -- Set to true if you want the ped to ragdoll from fires
          electrocution = true, -- Set to true if you want the ped to ragdoll from being electrocuted
          objectImpact = true, -- Set to true if you want the ped to ragdoll from object impacts
          melee = true, -- Set to true if you want the ped to ragdoll from melee attacks
          waterjetImpact = true, -- Set to true if you want the ped to ragdoll from water jet impacts
          drowning = true, -- Set to true if you want the ped to ragdoll from drowning
          falling = true, -- Set to true if you want the ped to ragdoll from falling
          onBoats = true, -- Set to true if you want the ped to ragdoll from being on boats whilst they're moving
          rubberBullet = true, -- Set to true if you want the ped to ragdoll from rubber bullet impacts
          smokeGrenades = true, -- Set to true if you want the ped to ragdoll from smoke grenade impacts
          pedCollision = true, -- Set to true if you want the ped to ragdoll from ped collisions
          vehicleCollision = true, -- Set to true if you want the ped to ragdoll from vehicle collisions
          playerImpact = true, -- Set to true if you want the ped to ragdoll from player impacts
          aiRagdollImpact = true, -- Set to true if you want the ped to ragdoll from ai ragdoll impacts
          playerRagdollImpact = true, -- Set to true if you want the ped to ragdoll from player ragdoll impacts
          minorPlayerImpact = true, -- Set to true if you want the ped to ragdoll from minor player impacts
          ragdollOnDeath = true -- Set to true if you want the ped to ragdoll on death
        }
      },
      ['Relationships'] = { -- 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
        [5] = {'PLAYER'}, -- Can be a table of jobs
        override = 'gsf' -- If multiple patrols need to be friendly to each other, set this as the same for each patrol
      },
    }
  },
  {
    name = 'doomsday_facility_exterior',
    ['Enabled'] = {guards = true, patrols = true, vehicles = false},
    ['Routes'] = {
      guard = {
        {coords = vector3(1272.18, 2836.46, 49.12), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(1293.69, 2837.8, 49.15), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(1268.97, 2871.24, 46.53), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
      },
      patrol = {
        { -- Memphis Patrol
          {coords = vector3(1274.95, 2811.13, 46.99), heading = 50.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(1258.5, 2812.23, 47.73), heading = 200.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(1238.62, 2824.5, 48.01), heading = 200.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(1233.32, 2846.74, 46.86), heading = 200.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(1238.39, 2858.39, 46.05), heading = 200.92, stopTime = math.random(1000, 5000)},
        }
      }
    },
    ['Peds'] = {
      guard = {
        {
          ['Base'] = {
            model = 'BF4Russian', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_pistol', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }, {
          ['Base'] = {
            model = 'BF4Russian2',
            weapon = 'weapon_assaultrifle',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }, {
          ['Base'] = {
            model = 'BF4Russian3',
            weapon = 'weapon_compactrifle',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }
      },
      patrol = {
        {
          ['Base'] = {
            model = 'BF4Russian5', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_heavypistol', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        },
        {
          ['Base'] = {
            model = 'RussianSF2', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_assaultrifle', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }
      }
    },
    ['Settings'] = {
      ['Behavior'] = {
        ignoreMelee = false, -- Set to true if you want the ped not react to melee actions
        ignoreFire = false, -- Set to true if you want the ped not react to fire
        ignoreBeingJacked = false, -- Set to true if you want the ped not react to being jacked
        ignoreSilencedClone = true, -- Set to true if you want the ped not react to silenced weapons
        ignoreExplosion = false, -- Set to true if you want the ped not react to explosions
        preventMeleeTaunts = false, -- Set to true if you want the ped not melee taunt
        disableHurt = false, -- Set to true if you want the ped not have hurt reactions
        disableWrithe = false, -- Set to true if you want the ped not writhe on the ground
        preferInjuredGetup = true, -- Set to true if you want the ped to prefer getting up from an injured state
        onlyWritheFromWeapon = true, -- Set to true if you want the ped to only writhe from weapon damage
        runFromFires = true, -- Set to true if you want the ped to run from fires
        dontShoutTarget = false, -- Set to true if you want the ped to not communicate their targets postion
        dontCryForHelp = false -- Set to true if you want the ped to not call for help when injured
      },
      ['Blips'] = {
        enabled = false, -- Set to true if you want the ped to have a blip
        hasCone = false, -- Whether the blip has a view cone on the minimap whilst active
        colour = 1, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        range = 50.0, -- The range the blip can be activated from
        clearOnDeath = true
      },
      ['Combat'] = {
        attributes = {5, 14, 15, 22, 42, 44, 46}, -- https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201
        ability = 35, -- 0-50 = Poor, 50-75 = Average, 75+ = Professional
        accuracy = 10, -- 0 - 100
        alertness = 0, -- 0 = Calm, 3 = Paranoid
        movement = 1, -- 0 = Stationary, 1 = Defensive, 2 = WillAdvance, 3 = WillRetreat
        range = 1, -- 0 = Near, 1 = Medium, 2 = Far, 3 = VeryFar
        targetResponse = 0, -- 0 = Exist Task, 1 = Never Lose target, 2 = Search For Target
        canAttackFriendly = false, -- Whether the ped can attack friendly peds
        canUseCover = true, -- Whether the ped can use cover
        useDiminishingAmmo = true, -- Set false for the ped to have infinite ammo, true to use ammo declared in ['Peds']['Base'].ammo
        blockWeaponSwitching = false, -- Whether the ped can switch weapons
        enableWeaponBlocking = false, -- Whether the ped can block weapon attacks
        keepWeaponHolstered = false, -- Whether the ped will keep their weapon holstered until fired
        disableMelee = false, -- Whether the ped can use melee attacks
        disableUnarmedDriveby = false, -- Whether the ped can use unarmed drivebys
        disableWritheShooting = false, -- Whether the ped can shoot whilst writheing on the ground
        respondToHelpCries = true, -- Whether the ped will respond to help cries
        seeApproachingVehicles = true, -- Whether the ped can always see approaching vehicles
        treatDislikeAsHated = false, -- Whether the ped will treat dislike as hated (Relationship type 4)
        treatNonFriendlyAsHated = false, -- Whether the ped will treat non friendly as hated (Any Relationship from 3 and above)
        broadcastGoingToThreat = true -- Whether the ped will broadcast that they are going to a threat
      },
      ['Damages'] = {
        diesWhenInjured = false, -- Set to true if you want the ped to die when injured
        incapacitation = true, -- Set to true if you want the ped to writhe when injured
        criticals = true, -- Set to true if you want the ped to suffer critical hits
        bullets = true, -- Set to true if you want the ped to suffer bullet damage
        fire = true, -- Set to true if you want the ped to suffer fire damage
        explosion = true, -- Set to true if you want the ped to suffer explosion damage
        collision = true, -- Set to true if you want the ped to suffer collision damage
        steam = true, -- Set to true if you want the ped to suffer steam damage
        melee = true, -- Set to true if you want the ped to suffer melee damage
        drown = true, -- Set to true if you want the ped to drown
        electric = true, -- Set to true if you want the ped to suffer electric damage
        ragdoll = false, -- Set to true if you want the ped to die when ragdolled
        invincible = false -- Set to true if you want the ped to be invincible
      },
      ['Drops'] = {
        weapons = false, -- Set to true if you want the ped to drop their weapon when killed
        healthSnacks = false -- Set to true if you want the ped to drop a health snack when killed
      },
      ['Events'] = {
        generateSoundEvents = true, -- Set to true if you want the ped to generate sound events
        listensToSoundEvents = true, -- Set to true if you want the ped to listen to sound events
        checkLOSForSoundEvents = true, -- Set to true if you want the ped to check line of sight to generate/respond sound events
        disableWeirdPedEvents = false, -- Set to true if you want the ped to disable weird ped events
        disableCryForHelpEvents = false, -- Set to true if you want the ped to disable cry for help events
        usePerceptionForAimEvents = true, -- Set to true if you want the ped to use perception for aim events
        disableShockingEvents = false, -- Set to true if you want the ped to disable shocking events
        disableShockingDrivingEvents = false -- Set to true if you want the ped to disable shocking driving events
      },
      ['Pathing'] = {
        ['Avoidance'] = {
          avoidDrops = true, -- Set to true if you want the ped to avoid falls from height
          avoidFire = true, -- Set to true if you want the ped to avoid fire
          avoidPeds = true, -- Set to true if you want the ped to avoid other peds
          avoidTearGas = true, -- Set to true if you want the ped to avoid tear gas
          avoidWater = true -- Set to true if you want the ped to avoid water
        },
        ['Movement'] = {
          disableCrouch = false, -- Set to true if you want the ped to disable crouching
          disableDives = false, -- Set to true if you want the ped to disable evasive diving
          disableClimbing = false, -- Set to true if you want the ped to disable climbing over objects
          disableLadders = false -- Set to true if you want the ped to disable climbing ladders
        },
        ['Ragdolling'] = {
          canRagdoll = true, -- Set to true if you want the ped to be able to ragdoll
          pedImpact = true, -- Set to true if you want the ped to ragdoll from ped impacts
          vehicleImpact = true, -- Set to true if you want the ped to ragdoll from vehicle impacts
          bulletImpact = true, -- Set to true if you want the ped to ragdoll from bullet impacts
          explosion = true, -- Set to true if you want the ped to ragdoll from explosions
          fire = true, -- Set to true if you want the ped to ragdoll from fires
          electrocution = true, -- Set to true if you want the ped to ragdoll from being electrocuted
          objectImpact = true, -- Set to true if you want the ped to ragdoll from object impacts
          melee = true, -- Set to true if you want the ped to ragdoll from melee attacks
          waterjetImpact = true, -- Set to true if you want the ped to ragdoll from water jet impacts
          drowning = true, -- Set to true if you want the ped to ragdoll from drowning
          falling = true, -- Set to true if you want the ped to ragdoll from falling
          onBoats = true, -- Set to true if you want the ped to ragdoll from being on boats whilst they're moving
          rubberBullet = true, -- Set to true if you want the ped to ragdoll from rubber bullet impacts
          smokeGrenades = true, -- Set to true if you want the ped to ragdoll from smoke grenade impacts
          pedCollision = true, -- Set to true if you want the ped to ragdoll from ped collisions
          vehicleCollision = true, -- Set to true if you want the ped to ragdoll from vehicle collisions
          playerImpact = true, -- Set to true if you want the ped to ragdoll from player impacts
          aiRagdollImpact = true, -- Set to true if you want the ped to ragdoll from ai ragdoll impacts
          playerRagdollImpact = true, -- Set to true if you want the ped to ragdoll from player ragdoll impacts
          minorPlayerImpact = true, -- Set to true if you want the ped to ragdoll from minor player impacts
          ragdollOnDeath = true -- Set to true if you want the ped to ragdoll on death
        }
      },
      ['Relationships'] = { -- 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
        [5] = {'PLAYER'}, -- Can be a table of jobs
        override = 'Russian' -- If multiple patrols need to be friendly to each other, set this as the same for each patrol
      },
    }
  },
  {
    name = 'sandy_airfield',
    ['Enabled'] = {guards = true, patrols = true, vehicles = true},
    ['Routes'] = {
      guard = {
        {coords = vector3(1716.81, 3319.51, 41.22), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(1738.39, 3325.62, 41.22), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(1757.73, 3299.22, 41.15), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(1721.19, 3283.5, 41.07), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(1691.64, 3284.73, 41.15), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(1681.14, 3264.75, 40.89), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(1762.92, 3261.42, 41.49), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(1786.89, 3331.59, 41.25), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(1701.23, 3291.46, 48.92), heading = 275.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json

      },
      patrol = {
        { -- Memphis Patrol
          {coords = vector3(1622.4, 3191.62, 40.8), heading = 50.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(1619.15, 3195.35, 40.74), heading = 50.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(1627.05, 3201.64, 40.74), heading = 50.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(1657.4, 3218.36, 40.7), heading = 50.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(1716.04, 3232.93, 41.3), heading = 50.92, stopTime = math.random(1000, 5000)},

        },
        { -- Memphis Patrol
        {coords = vector3(1846.28, 3240.4, 44.64), heading = 50.92, stopTime = math.random(1000, 5000)},
        {coords = vector3(1877.96, 3199.79, 45.6), heading = 50.92, stopTime = math.random(1000, 5000)},
        {coords = vector3(1887.55, 3211.96, 45.57), heading = 50.92, stopTime = math.random(1000, 5000)},
        {coords = vector3(1881.23, 3220.08, 45.34), heading = 50.92, stopTime = math.random(1000, 5000)},
        {coords = vector3(1835.18, 3281.58, 43.58), heading = 50.92, stopTime = math.random(1000, 5000)},
        {coords = vector3(1822.9, 3303.28, 42.79), heading = 50.92, stopTime = math.random(1000, 5000)},
        {coords = vector3(1809.0, 3297.3, 42.71), heading = 50.92, stopTime = math.random(1000, 5000)},

      }
      },
      vehicle = { -- https://vespura.com/fivem/drivingstyle/
      { -- Mesa Property Rotation
        {coords = vector3(1112.66, 3058.4, 40.76), speed = 20.0, drivingStyle = 262716},
        {coords = vector3(1114.26, 3082.01, 40.3), speed = 20.0, drivingStyle = 262716},
        {coords = vector3(1264.12, 3122.42, 40.27), speed = 20.0, drivingStyle = 262716},
        {coords = vector3(1409.66, 3160.94, 40.28), speed = 20.0, drivingStyle = 262716},
        {coords = vector3(1605.99, 3213.82, 40.27), speed = 20.0, drivingStyle = 262716},
        {coords = vector3(1710.96, 3237.19, 40.82), speed = 20.0, drivingStyle = 262716},
        {coords = vector3(1685.71, 3234.57, 40.64), speed = 20.0, drivingStyle = 262716},
        {coords = vector3(1559.76, 3198.56, 40.33), speed = 20.0, drivingStyle = 262716},

      },
    }
    },
    ['Peds'] = {
      guard = {
        {
          ['Base'] = {
            model = 'BF4Russian9', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_autoshotgun', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        },
        {
          ['Base'] = {
            model = 'BF4Russian10', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_assaultrifle', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        },
        {
          ['Base'] = {
            model = 'BF4Russian11', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_heavypistol', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        },
        {
          ['Base'] = {
            model = 'Spetnaz', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_minismg', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        },
        {
          ['Base'] = {
            model = 'RussianSF', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_pistol', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        },
        {
          ['Base'] = {
            model = 'RussianSF2', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_marksmanrifle', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        },
        {
          ['Base'] = {
            model = 'BF4Russian', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_pistol', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        },
        {
          ['Base'] = {
            model = 'BF4Russian3', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_combatshotgun', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        },
        {
          ['Base'] = {
            model = 'BF4Sniper', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_marksmanrifle', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        },
      },
      patrol = {
        {
          ['Base'] = {
            model = 'BF4Russian2', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_compactrifle', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        },
        {
          ['Base'] = {
            model = 'BF4Russian4', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_pistol', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }
      },
      vehicle = {
        {  -- If passenger number is set below, each peds copies the config from below and applies that to the amount of passengers deinfed below.
          ['Base'] = {
            model = 'BF4Russian', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_pistol', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 500, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
            flags = {29, 32, 116, 151, 229, 241, 250, 366, 391, 398} -- This has it's best use for vehicles, as no vehicle flags are set by default
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }
      }
    },
    ['Vehicles'] = {
      vehicle = {
        {
          ['Base'] = {
            model = 'unarmed2', -- https://docs.fivem.net/docs/game-references/vehicle-models/
            vehType = 'automobile',
            passengers = 3, -- Can be omitted, will default to the table length of the peds array above
            lockType = 3, -- 0 = None, 1 = Unlocked, 2 = Locked, 3 = LockedForPlayer, 4 = LockedPlayerInside, 5 = LockedInitially
            health = 1000.0,
            dirtLevel = 40.0,
            plate = 'RUSSIA'
          }
        }
      }
    },
    ['Settings'] = {
      ['Behavior'] = {
        ignoreMelee = false, -- Set to true if you want the ped not react to melee actions
        ignoreFire = false, -- Set to true if you want the ped not react to fire
        ignoreBeingJacked = false, -- Set to true if you want the ped not react to being jacked
        ignoreSilencedClone = true, -- Set to true if you want the ped not react to silenced weapons
        ignoreExplosion = false, -- Set to true if you want the ped not react to explosions
        preventMeleeTaunts = false, -- Set to true if you want the ped not melee taunt
        disableHurt = false, -- Set to true if you want the ped not have hurt reactions
        disableWrithe = false, -- Set to true if you want the ped not writhe on the ground
        preferInjuredGetup = true, -- Set to true if you want the ped to prefer getting up from an injured state
        onlyWritheFromWeapon = true, -- Set to true if you want the ped to only writhe from weapon damage
        runFromFires = true, -- Set to true if you want the ped to run from fires
        dontShoutTarget = false, -- Set to true if you want the ped to not communicate their targets postion
        dontCryForHelp = false -- Set to true if you want the ped to not call for help when injured
      },
      ['Blips'] = {
        enabled = false, -- Set to true if you want the ped to have a blip
        hasCone = false, -- Whether the blip has a view cone on the minimap whilst active
        colour = 1, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        range = 50.0, -- The range the blip can be activated from
        clearOnDeath = true
      },
      ['Combat'] = {
        attributes = {5, 14, 15, 22, 42, 44, 46}, -- https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201
        ability = 35, -- 0-50 = Poor, 50-75 = Average, 75+ = Professional
        accuracy = 10, -- 0 - 100
        alertness = 0, -- 0 = Calm, 3 = Paranoid
        movement = 1, -- 0 = Stationary, 1 = Defensive, 2 = WillAdvance, 3 = WillRetreat
        range = 1, -- 0 = Near, 1 = Medium, 2 = Far, 3 = VeryFar
        targetResponse = 0, -- 0 = Exist Task, 1 = Never Lose target, 2 = Search For Target
        canAttackFriendly = false, -- Whether the ped can attack friendly peds
        canUseCover = true, -- Whether the ped can use cover
        useDiminishingAmmo = true, -- Set false for the ped to have infinite ammo, true to use ammo declared in ['Peds']['Base'].ammo
        blockWeaponSwitching = false, -- Whether the ped can switch weapons
        enableWeaponBlocking = false, -- Whether the ped can block weapon attacks
        keepWeaponHolstered = false, -- Whether the ped will keep their weapon holstered until fired
        disableMelee = false, -- Whether the ped can use melee attacks
        disableUnarmedDriveby = false, -- Whether the ped can use unarmed drivebys
        disableWritheShooting = false, -- Whether the ped can shoot whilst writheing on the ground
        respondToHelpCries = true, -- Whether the ped will respond to help cries
        seeApproachingVehicles = true, -- Whether the ped can always see approaching vehicles
        treatDislikeAsHated = false, -- Whether the ped will treat dislike as hated (Relationship type 4)
        treatNonFriendlyAsHated = false, -- Whether the ped will treat non friendly as hated (Any Relationship from 3 and above)
        broadcastGoingToThreat = true -- Whether the ped will broadcast that they are going to a threat
      },
      ['Damages'] = {
        diesWhenInjured = false, -- Set to true if you want the ped to die when injured
        incapacitation = true, -- Set to true if you want the ped to writhe when injured
        criticals = true, -- Set to true if you want the ped to suffer critical hits
        bullets = true, -- Set to true if you want the ped to suffer bullet damage
        fire = true, -- Set to true if you want the ped to suffer fire damage
        explosion = true, -- Set to true if you want the ped to suffer explosion damage
        collision = true, -- Set to true if you want the ped to suffer collision damage
        steam = true, -- Set to true if you want the ped to suffer steam damage
        melee = true, -- Set to true if you want the ped to suffer melee damage
        drown = true, -- Set to true if you want the ped to drown
        electric = true, -- Set to true if you want the ped to suffer electric damage
        ragdoll = false, -- Set to true if you want the ped to die when ragdolled
        invincible = false -- Set to true if you want the ped to be invincible
      },
      ['Drops'] = {
        weapons = false, -- Set to true if you want the ped to drop their weapon when killed
        healthSnacks = false -- Set to true if you want the ped to drop a health snack when killed
      },
      ['Events'] = {
        generateSoundEvents = true, -- Set to true if you want the ped to generate sound events
        listensToSoundEvents = true, -- Set to true if you want the ped to listen to sound events
        checkLOSForSoundEvents = true, -- Set to true if you want the ped to check line of sight to generate/respond sound events
        disableWeirdPedEvents = false, -- Set to true if you want the ped to disable weird ped events
        disableCryForHelpEvents = false, -- Set to true if you want the ped to disable cry for help events
        usePerceptionForAimEvents = true, -- Set to true if you want the ped to use perception for aim events
        disableShockingEvents = false, -- Set to true if you want the ped to disable shocking events
        disableShockingDrivingEvents = false -- Set to true if you want the ped to disable shocking driving events
      },
      ['Pathing'] = {
        ['Avoidance'] = {
          avoidDrops = true, -- Set to true if you want the ped to avoid falls from height
          avoidFire = true, -- Set to true if you want the ped to avoid fire
          avoidPeds = true, -- Set to true if you want the ped to avoid other peds
          avoidTearGas = true, -- Set to true if you want the ped to avoid tear gas
          avoidWater = true -- Set to true if you want the ped to avoid water
        },
        ['Movement'] = {
          disableCrouch = false, -- Set to true if you want the ped to disable crouching
          disableDives = false, -- Set to true if you want the ped to disable evasive diving
          disableClimbing = false, -- Set to true if you want the ped to disable climbing over objects
          disableLadders = false -- Set to true if you want the ped to disable climbing ladders
        },
        ['Ragdolling'] = {
          canRagdoll = true, -- Set to true if you want the ped to be able to ragdoll
          pedImpact = true, -- Set to true if you want the ped to ragdoll from ped impacts
          vehicleImpact = true, -- Set to true if you want the ped to ragdoll from vehicle impacts
          bulletImpact = true, -- Set to true if you want the ped to ragdoll from bullet impacts
          explosion = true, -- Set to true if you want the ped to ragdoll from explosions
          fire = true, -- Set to true if you want the ped to ragdoll from fires
          electrocution = true, -- Set to true if you want the ped to ragdoll from being electrocuted
          objectImpact = true, -- Set to true if you want the ped to ragdoll from object impacts
          melee = true, -- Set to true if you want the ped to ragdoll from melee attacks
          waterjetImpact = true, -- Set to true if you want the ped to ragdoll from water jet impacts
          drowning = true, -- Set to true if you want the ped to ragdoll from drowning
          falling = true, -- Set to true if you want the ped to ragdoll from falling
          onBoats = true, -- Set to true if you want the ped to ragdoll from being on boats whilst they're moving
          rubberBullet = true, -- Set to true if you want the ped to ragdoll from rubber bullet impacts
          smokeGrenades = true, -- Set to true if you want the ped to ragdoll from smoke grenade impacts
          pedCollision = true, -- Set to true if you want the ped to ragdoll from ped collisions
          vehicleCollision = true, -- Set to true if you want the ped to ragdoll from vehicle collisions
          playerImpact = true, -- Set to true if you want the ped to ragdoll from player impacts
          aiRagdollImpact = true, -- Set to true if you want the ped to ragdoll from ai ragdoll impacts
          playerRagdollImpact = true, -- Set to true if you want the ped to ragdoll from player ragdoll impacts
          minorPlayerImpact = true, -- Set to true if you want the ped to ragdoll from minor player impacts
          ragdollOnDeath = true -- Set to true if you want the ped to ragdoll on death
        }
      },
      ['Relationships'] = { -- 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
        [5] = {'PLAYER'}, -- Can be a table of jobs
        override = 'Russian' -- If multiple patrols need to be friendly to each other, set this as the same for each patrol
      },
    }
  },
  {
    name = 'Vinewood_Gasstation',
    ['Enabled'] = {guards = true, patrols = true, vehicles = false},
    ['Routes'] = {
      guard = {
        {coords = vector3(648.16, 246.87, 107.57), heading = 225.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(647.82, 266.31, 107.57), heading = 420.15, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(608.96, 273.78, 109.09), heading = 420.15, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(634.19, 246.25, 103.3), heading = 420.15, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(653.3, 276.03, 103.29), heading = 420.15, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(649.99, 246.14, 103.42), heading = 250.15, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
        {coords = vector3(614.78, 257.39, 103.15), heading = 250.15, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'} -- Guard Booth -- Guard Booth
      },
      patrol = {
        { -- Barracks Patrol
          {coords = vector3(645.9, 267.51, 103.24), heading = 200.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(632.65, 269.16, 103.12), heading = 238.37, stopTime = math.random(1000, 5000)},
          {coords = vector3(609.48, 269.06, 103.12), heading = 333.22, stopTime = math.random(1000, 5000)},
          {coords = vector3(610.15, 279.12, 103.04), heading = 152.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(615.43, 289.01, 102.91), heading = 59.17, stopTime = math.random(1000, 5000)},
          {coords = vector3(634.5, 288.78, 103.19), heading = 153.11, stopTime = math.random(1000, 5000)},
        },
        { -- Barracks Patrol
        {coords = vector3(665.7, 268.82, 102.5), heading = 200.92, stopTime = math.random(1000, 5000)},
        {coords = vector3(663.49, 264.89, 102.49), heading = 238.37, stopTime = math.random(1000, 5000)},
        {coords = vector3(664.31, 263.75, 102.62), heading = 333.22, stopTime = math.random(1000, 5000)},
        {coords = vector3(657.83, 252.55, 102.42), heading = 152.92, stopTime = math.random(1000, 5000)}
      }
      }
    },
    ['Peds'] = {
      guard = {
        {
          ['Base'] = {
            model = 'BF4Russian', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_assaultrifle', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }, {
          ['Base'] = {
            model = 'BF4Russian2',
            weapon = 'weapon_assaultsmg',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }, {
          ['Base'] = {
            model = 'BF4Russian3',
            weapon = 'weapon_combatpistol',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian4',
            weapon = 'weapon_pistol',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian5',
            weapon = 'weapon_combatpistol',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian6',
            weapon = 'weapon_pumpshotgun',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        },{
          ['Base'] = {
            model = 'BF4Russian7',
            weapon = 'weapon_pistol',
            health = 200,
            armour = 0,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }
      },
      patrol = {
        {
          ['Base'] = {
            model = 'BF4Russian8', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_pistol', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }, {
          ['Base'] = {
            model = 'BF4Russian9', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_pistol', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        },
      },
    },
    ['Settings'] = {
      ['Behavior'] = {
        ignoreMelee = false, -- Set to true if you want the ped not react to melee actions
        ignoreFire = false, -- Set to true if you want the ped not react to fire
        ignoreBeingJacked = false, -- Set to true if you want the ped not react to being jacked
        ignoreSilencedClone = true, -- Set to true if you want the ped not react to silenced weapons
        ignoreExplosion = false, -- Set to true if you want the ped not react to explosions
        preventMeleeTaunts = false, -- Set to true if you want the ped not melee taunt
        disableHurt = false, -- Set to true if you want the ped not have hurt reactions
        disableWrithe = false, -- Set to true if you want the ped not writhe on the ground
        preferInjuredGetup = true, -- Set to true if you want the ped to prefer getting up from an injured state
        onlyWritheFromWeapon = true, -- Set to true if you want the ped to only writhe from weapon damage
        runFromFires = true, -- Set to true if you want the ped to run from fires
        dontShoutTarget = false, -- Set to true if you want the ped to not communicate their targets postion
        dontCryForHelp = false -- Set to true if you want the ped to not call for help when injured
      },
      ['Blips'] = {
        enabled = false, -- Set to true if you want the ped to have a blip
        hasCone = false, -- Whether the blip has a view cone on the minimap whilst active
        colour = 1, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        range = 50.0, -- The range the blip can be activated from
        clearOnDeath = true
      },
      ['Combat'] = {
        attributes = {5, 14, 15, 22, 42, 44, 46}, -- https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201
        ability = 35, -- 0-50 = Poor, 50-75 = Average, 75+ = Professional
        accuracy = 10, -- 0 - 100
        alertness = 0, -- 0 = Calm, 3 = Paranoid
        movement = 1, -- 0 = Stationary, 1 = Defensive, 2 = WillAdvance, 3 = WillRetreat
        range = 1, -- 0 = Near, 1 = Medium, 2 = Far, 3 = VeryFar
        targetResponse = 0, -- 0 = Exist Task, 1 = Never Lose target, 2 = Search For Target
        canAttackFriendly = false, -- Whether the ped can attack friendly peds
        canUseCover = true, -- Whether the ped can use cover
        useDiminishingAmmo = true, -- Set false for the ped to have infinite ammo, true to use ammo declared in ['Peds']['Base'].ammo
        blockWeaponSwitching = false, -- Whether the ped can switch weapons
        enableWeaponBlocking = false, -- Whether the ped can block weapon attacks
        keepWeaponHolstered = false, -- Whether the ped will keep their weapon holstered until fired
        disableMelee = false, -- Whether the ped can use melee attacks
        disableUnarmedDriveby = false, -- Whether the ped can use unarmed drivebys
        disableWritheShooting = false, -- Whether the ped can shoot whilst writheing on the ground
        respondToHelpCries = true, -- Whether the ped will respond to help cries
        seeApproachingVehicles = true, -- Whether the ped can always see approaching vehicles
        treatDislikeAsHated = false, -- Whether the ped will treat dislike as hated (Relationship type 4)
        treatNonFriendlyAsHated = false, -- Whether the ped will treat non friendly as hated (Any Relationship from 3 and above)
        broadcastGoingToThreat = true -- Whether the ped will broadcast that they are going to a threat
      },
      ['Damages'] = {
        diesWhenInjured = false, -- Set to true if you want the ped to die when injured
        incapacitation = true, -- Set to true if you want the ped to writhe when injured
        criticals = true, -- Set to true if you want the ped to suffer critical hits
        bullets = true, -- Set to true if you want the ped to suffer bullet damage
        fire = true, -- Set to true if you want the ped to suffer fire damage
        explosion = true, -- Set to true if you want the ped to suffer explosion damage
        collision = true, -- Set to true if you want the ped to suffer collision damage
        steam = true, -- Set to true if you want the ped to suffer steam damage
        melee = true, -- Set to true if you want the ped to suffer melee damage
        drown = true, -- Set to true if you want the ped to drown
        electric = true, -- Set to true if you want the ped to suffer electric damage
        ragdoll = false, -- Set to true if you want the ped to die when ragdolled
        invincible = false -- Set to true if you want the ped to be invincible
      },
      ['Drops'] = {
        weapons = false, -- Set to true if you want the ped to drop their weapon when killed
        healthSnacks = false -- Set to true if you want the ped to drop a health snack when killed
      },
      ['Events'] = {
        generateSoundEvents = true, -- Set to true if you want the ped to generate sound events
        listensToSoundEvents = true, -- Set to true if you want the ped to listen to sound events
        checkLOSForSoundEvents = true, -- Set to true if you want the ped to check line of sight to generate/respond sound events
        disableWeirdPedEvents = false, -- Set to true if you want the ped to disable weird ped events
        disableCryForHelpEvents = false, -- Set to true if you want the ped to disable cry for help events
        usePerceptionForAimEvents = true, -- Set to true if you want the ped to use perception for aim events
        disableShockingEvents = false, -- Set to true if you want the ped to disable shocking events
        disableShockingDrivingEvents = false -- Set to true if you want the ped to disable shocking driving events
      },
      ['Pathing'] = {
        ['Avoidance'] = {
          avoidDrops = true, -- Set to true if you want the ped to avoid falls from height
          avoidFire = true, -- Set to true if you want the ped to avoid fire
          avoidPeds = true, -- Set to true if you want the ped to avoid other peds
          avoidTearGas = true, -- Set to true if you want the ped to avoid tear gas
          avoidWater = true -- Set to true if you want the ped to avoid water
        },
        ['Movement'] = {
          disableCrouch = false, -- Set to true if you want the ped to disable crouching
          disableDives = false, -- Set to true if you want the ped to disable evasive diving
          disableClimbing = false, -- Set to true if you want the ped to disable climbing over objects
          disableLadders = false -- Set to true if you want the ped to disable climbing ladders
        },
        ['Ragdolling'] = {
          canRagdoll = true, -- Set to true if you want the ped to be able to ragdoll
          pedImpact = true, -- Set to true if you want the ped to ragdoll from ped impacts
          vehicleImpact = true, -- Set to true if you want the ped to ragdoll from vehicle impacts
          bulletImpact = true, -- Set to true if you want the ped to ragdoll from bullet impacts
          explosion = true, -- Set to true if you want the ped to ragdoll from explosions
          fire = true, -- Set to true if you want the ped to ragdoll from fires
          electrocution = true, -- Set to true if you want the ped to ragdoll from being electrocuted
          objectImpact = true, -- Set to true if you want the ped to ragdoll from object impacts
          melee = true, -- Set to true if you want the ped to ragdoll from melee attacks
          waterjetImpact = true, -- Set to true if you want the ped to ragdoll from water jet impacts
          drowning = true, -- Set to true if you want the ped to ragdoll from drowning
          falling = true, -- Set to true if you want the ped to ragdoll from falling
          onBoats = true, -- Set to true if you want the ped to ragdoll from being on boats whilst they're moving
          rubberBullet = true, -- Set to true if you want the ped to ragdoll from rubber bullet impacts
          smokeGrenades = true, -- Set to true if you want the ped to ragdoll from smoke grenade impacts
          pedCollision = true, -- Set to true if you want the ped to ragdoll from ped collisions
          vehicleCollision = true, -- Set to true if you want the ped to ragdoll from vehicle collisions
          playerImpact = true, -- Set to true if you want the ped to ragdoll from player impacts
          aiRagdollImpact = true, -- Set to true if you want the ped to ragdoll from ai ragdoll impacts
          playerRagdollImpact = true, -- Set to true if you want the ped to ragdoll from player ragdoll impacts
          minorPlayerImpact = true, -- Set to true if you want the ped to ragdoll from minor player impacts
          ragdollOnDeath = true -- Set to true if you want the ped to ragdoll on death
        }
      },
      ['Relationships'] = { -- 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
        [5] = {'PLAYER','ZOMBIE'}, -- Can be a table of jobs
        override = 'Russian' -- If multiple patrols need to be friendly to each other, set this as the same for each patrol
      },
    }
  },{
    name = 'Zancudo_SGate',
    ['Enabled'] = {guards = true, patrols = false, vehicles = false},
    ['Routes'] = {
      guard = {
        {coords = vector3(-1593.87, 2797.64, 17.07), heading = 135.58, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(-1592.11, 2799.16, 17.07), heading = 311.15, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'} -- Guard Booth
      }
    },
    ['Peds'] = {
      guard = {
        {
          ['Base'] = {
            model = 'BF4Russian3', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_compactrifle', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 50, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }, {
          ['Base'] = {
            model = 'BF4Russian4',
            weapon = 'weapon_heavypistol',
            health = 200,
            armour = 50,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }
      }
    },
    ['Settings'] = {
      ['Behavior'] = {
        ignoreMelee = false, -- Set to true if you want the ped not react to melee actions
        ignoreFire = false, -- Set to true if you want the ped not react to fire
        ignoreBeingJacked = false, -- Set to true if you want the ped not react to being jacked
        ignoreSilencedClone = true, -- Set to true if you want the ped not react to silenced weapons
        ignoreExplosion = false, -- Set to true if you want the ped not react to explosions
        preventMeleeTaunts = false, -- Set to true if you want the ped not melee taunt
        disableHurt = false, -- Set to true if you want the ped not have hurt reactions
        disableWrithe = false, -- Set to true if you want the ped not writhe on the ground
        preferInjuredGetup = true, -- Set to true if you want the ped to prefer getting up from an injured state
        onlyWritheFromWeapon = true, -- Set to true if you want the ped to only writhe from weapon damage
        runFromFires = true, -- Set to true if you want the ped to run from fires
        dontShoutTarget = false, -- Set to true if you want the ped to not communicate their targets postion
        dontCryForHelp = false -- Set to true if you want the ped to not call for help when injured
      },
      ['Blips'] = {
        enabled = false, -- Set to true if you want the ped to have a blip
        hasCone = false, -- Whether the blip has a view cone on the minimap whilst active
        colour = 1, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        range = 50.0, -- The range the blip can be activated from
        clearOnDeath = true
      },
      ['Combat'] = {
        attributes = {5, 14, 15, 22, 42, 44, 46}, -- https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201
        ability = 35, -- 0-50 = Poor, 50-75 = Average, 75+ = Professional
        accuracy = 10, -- 0 - 100
        alertness = 0, -- 0 = Calm, 3 = Paranoid
        movement = 1, -- 0 = Stationary, 1 = Defensive, 2 = WillAdvance, 3 = WillRetreat
        range = 1, -- 0 = Near, 1 = Medium, 2 = Far, 3 = VeryFar
        targetResponse = 0, -- 0 = Exist Task, 1 = Never Lose target, 2 = Search For Target
        canAttackFriendly = false, -- Whether the ped can attack friendly peds
        canUseCover = true, -- Whether the ped can use cover
        useDiminishingAmmo = true, -- Set false for the ped to have infinite ammo, true to use ammo declared in ['Peds']['Base'].ammo
        blockWeaponSwitching = false, -- Whether the ped can switch weapons
        enableWeaponBlocking = false, -- Whether the ped can block weapon attacks
        keepWeaponHolstered = false, -- Whether the ped will keep their weapon holstered until fired
        disableMelee = false, -- Whether the ped can use melee attacks
        disableUnarmedDriveby = false, -- Whether the ped can use unarmed drivebys
        disableWritheShooting = false, -- Whether the ped can shoot whilst writheing on the ground
        respondToHelpCries = true, -- Whether the ped will respond to help cries
        seeApproachingVehicles = true, -- Whether the ped can always see approaching vehicles
        treatDislikeAsHated = false, -- Whether the ped will treat dislike as hated (Relationship type 4)
        treatNonFriendlyAsHated = false, -- Whether the ped will treat non friendly as hated (Any Relationship from 3 and above)
        broadcastGoingToThreat = true -- Whether the ped will broadcast that they are going to a threat
      },
      ['Damages'] = {
        diesWhenInjured = false, -- Set to true if you want the ped to die when injured
        incapacitation = true, -- Set to true if you want the ped to writhe when injured
        criticals = true, -- Set to true if you want the ped to suffer critical hits
        bullets = true, -- Set to true if you want the ped to suffer bullet damage
        fire = true, -- Set to true if you want the ped to suffer fire damage
        explosion = true, -- Set to true if you want the ped to suffer explosion damage
        collision = true, -- Set to true if you want the ped to suffer collision damage
        steam = true, -- Set to true if you want the ped to suffer steam damage
        melee = true, -- Set to true if you want the ped to suffer melee damage
        drown = true, -- Set to true if you want the ped to drown
        electric = true, -- Set to true if you want the ped to suffer electric damage
        ragdoll = false, -- Set to true if you want the ped to die when ragdolled
        invincible = false -- Set to true if you want the ped to be invincible
      },
      ['Drops'] = {
        weapons = false, -- Set to true if you want the ped to drop their weapon when killed
        healthSnacks = false -- Set to true if you want the ped to drop a health snack when killed
      },
      ['Events'] = {
        generateSoundEvents = true, -- Set to true if you want the ped to generate sound events
        listensToSoundEvents = true, -- Set to true if you want the ped to listen to sound events
        checkLOSForSoundEvents = true, -- Set to true if you want the ped to check line of sight to generate/respond sound events
        disableWeirdPedEvents = false, -- Set to true if you want the ped to disable weird ped events
        disableCryForHelpEvents = false, -- Set to true if you want the ped to disable cry for help events
        usePerceptionForAimEvents = true, -- Set to true if you want the ped to use perception for aim events
        disableShockingEvents = false, -- Set to true if you want the ped to disable shocking events
        disableShockingDrivingEvents = false -- Set to true if you want the ped to disable shocking driving events
      },
      ['Pathing'] = {
        ['Avoidance'] = {
          avoidDrops = true, -- Set to true if you want the ped to avoid falls from height
          avoidFire = true, -- Set to true if you want the ped to avoid fire
          avoidPeds = true, -- Set to true if you want the ped to avoid other peds
          avoidTearGas = true, -- Set to true if you want the ped to avoid tear gas
          avoidWater = true -- Set to true if you want the ped to avoid water
        },
        ['Movement'] = {
          disableCrouch = false, -- Set to true if you want the ped to disable crouching
          disableDives = false, -- Set to true if you want the ped to disable evasive diving
          disableClimbing = false, -- Set to true if you want the ped to disable climbing over objects
          disableLadders = false -- Set to true if you want the ped to disable climbing ladders
        },
        ['Ragdolling'] = {
          canRagdoll = true, -- Set to true if you want the ped to be able to ragdoll
          pedImpact = true, -- Set to true if you want the ped to ragdoll from ped impacts
          vehicleImpact = true, -- Set to true if you want the ped to ragdoll from vehicle impacts
          bulletImpact = true, -- Set to true if you want the ped to ragdoll from bullet impacts
          explosion = true, -- Set to true if you want the ped to ragdoll from explosions
          fire = true, -- Set to true if you want the ped to ragdoll from fires
          electrocution = true, -- Set to true if you want the ped to ragdoll from being electrocuted
          objectImpact = true, -- Set to true if you want the ped to ragdoll from object impacts
          melee = true, -- Set to true if you want the ped to ragdoll from melee attacks
          waterjetImpact = true, -- Set to true if you want the ped to ragdoll from water jet impacts
          drowning = true, -- Set to true if you want the ped to ragdoll from drowning
          falling = true, -- Set to true if you want the ped to ragdoll from falling
          onBoats = true, -- Set to true if you want the ped to ragdoll from being on boats whilst they're moving
          rubberBullet = true, -- Set to true if you want the ped to ragdoll from rubber bullet impacts
          smokeGrenades = true, -- Set to true if you want the ped to ragdoll from smoke grenade impacts
          pedCollision = true, -- Set to true if you want the ped to ragdoll from ped collisions
          vehicleCollision = true, -- Set to true if you want the ped to ragdoll from vehicle collisions
          playerImpact = true, -- Set to true if you want the ped to ragdoll from player impacts
          aiRagdollImpact = true, -- Set to true if you want the ped to ragdoll from ai ragdoll impacts
          playerRagdollImpact = true, -- Set to true if you want the ped to ragdoll from player ragdoll impacts
          minorPlayerImpact = true, -- Set to true if you want the ped to ragdoll from minor player impacts
          ragdollOnDeath = true -- Set to true if you want the ped to ragdoll on death
        }
      },
      ['Relationships'] = { -- 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
        [5] = {'PLAYER'}, -- Can be a table of jobs
        override = 'Russian' -- If multiple patrols need to be friendly to each other, set this as the same for each patrol
      },
    }
  }, {
    name = 'Zancudo_NGate',
    ['Enabled'] = {guards = true, patrols = false, vehicles = false},
    ['Routes'] = {
      guard = {
        {coords = vector3(-2302.88, 3385.7, 31.26), heading = 143.86, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(-2301.31, 3387.83, 31.26), heading = 321.56, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'} -- Guard Booth
      }
    },
    ['Peds'] = {
      guard = {
        {
          ['Base'] = {
            model = 'BF4Russian', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_assaultrifle', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 50, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }, {
          ['Base'] = {
            model = 'BF4Russian2',
            weapon = 'weapon_assaultrifle',
            health = 200,
            armour = 50,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }
      }
    },
    ['Settings'] = {
      ['Behavior'] = {
        ignoreMelee = false, -- Set to true if you want the ped not react to melee actions
        ignoreFire = false, -- Set to true if you want the ped not react to fire
        ignoreBeingJacked = false, -- Set to true if you want the ped not react to being jacked
        ignoreSilencedClone = true, -- Set to true if you want the ped not react to silenced weapons
        ignoreExplosion = false, -- Set to true if you want the ped not react to explosions
        preventMeleeTaunts = false, -- Set to true if you want the ped not melee taunt
        disableHurt = false, -- Set to true if you want the ped not have hurt reactions
        disableWrithe = false, -- Set to true if you want the ped not writhe on the ground
        preferInjuredGetup = true, -- Set to true if you want the ped to prefer getting up from an injured state
        onlyWritheFromWeapon = true, -- Set to true if you want the ped to only writhe from weapon damage
        runFromFires = true, -- Set to true if you want the ped to run from fires
        dontShoutTarget = false, -- Set to true if you want the ped to not communicate their targets postion
        dontCryForHelp = false -- Set to true if you want the ped to not call for help when injured
      },
      ['Blips'] = {
        enabled = false, -- Set to true if you want the ped to have a blip
        hasCone = false, -- Whether the blip has a view cone on the minimap whilst active
        colour = 1, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        range = 50.0, -- The range the blip can be activated from
        clearOnDeath = true
      },
      ['Combat'] = {
        attributes = {5, 14, 15, 22, 42, 44, 46}, -- https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201
        ability = 35, -- 0-50 = Poor, 50-75 = Average, 75+ = Professional
        accuracy = 10, -- 0 - 100
        alertness = 0, -- 0 = Calm, 3 = Paranoid
        movement = 1, -- 0 = Stationary, 1 = Defensive, 2 = WillAdvance, 3 = WillRetreat
        range = 1, -- 0 = Near, 1 = Medium, 2 = Far, 3 = VeryFar
        targetResponse = 0, -- 0 = Exist Task, 1 = Never Lose target, 2 = Search For Target
        canAttackFriendly = false, -- Whether the ped can attack friendly peds
        canUseCover = true, -- Whether the ped can use cover
        useDiminishingAmmo = true, -- Set false for the ped to have infinite ammo, true to use ammo declared in ['Peds']['Base'].ammo
        blockWeaponSwitching = false, -- Whether the ped can switch weapons
        enableWeaponBlocking = false, -- Whether the ped can block weapon attacks
        keepWeaponHolstered = false, -- Whether the ped will keep their weapon holstered until fired
        disableMelee = false, -- Whether the ped can use melee attacks
        disableUnarmedDriveby = false, -- Whether the ped can use unarmed drivebys
        disableWritheShooting = false, -- Whether the ped can shoot whilst writheing on the ground
        respondToHelpCries = true, -- Whether the ped will respond to help cries
        seeApproachingVehicles = true, -- Whether the ped can always see approaching vehicles
        treatDislikeAsHated = false, -- Whether the ped will treat dislike as hated (Relationship type 4)
        treatNonFriendlyAsHated = false, -- Whether the ped will treat non friendly as hated (Any Relationship from 3 and above)
        broadcastGoingToThreat = true -- Whether the ped will broadcast that they are going to a threat
      },
      ['Damages'] = {
        diesWhenInjured = false, -- Set to true if you want the ped to die when injured
        incapacitation = true, -- Set to true if you want the ped to writhe when injured
        criticals = true, -- Set to true if you want the ped to suffer critical hits
        bullets = true, -- Set to true if you want the ped to suffer bullet damage
        fire = true, -- Set to true if you want the ped to suffer fire damage
        explosion = true, -- Set to true if you want the ped to suffer explosion damage
        collision = true, -- Set to true if you want the ped to suffer collision damage
        steam = true, -- Set to true if you want the ped to suffer steam damage
        melee = true, -- Set to true if you want the ped to suffer melee damage
        drown = true, -- Set to true if you want the ped to drown
        electric = true, -- Set to true if you want the ped to suffer electric damage
        ragdoll = false, -- Set to true if you want the ped to die when ragdolled
        invincible = false -- Set to true if you want the ped to be invincible
      },
      ['Drops'] = {
        weapons = false, -- Set to true if you want the ped to drop their weapon when killed
        healthSnacks = false -- Set to true if you want the ped to drop a health snack when killed
      },
      ['Events'] = {
        generateSoundEvents = true, -- Set to true if you want the ped to generate sound events
        listensToSoundEvents = true, -- Set to true if you want the ped to listen to sound events
        checkLOSForSoundEvents = true, -- Set to true if you want the ped to check line of sight to generate/respond sound events
        disableWeirdPedEvents = false, -- Set to true if you want the ped to disable weird ped events
        disableCryForHelpEvents = false, -- Set to true if you want the ped to disable cry for help events
        usePerceptionForAimEvents = true, -- Set to true if you want the ped to use perception for aim events
        disableShockingEvents = false, -- Set to true if you want the ped to disable shocking events
        disableShockingDrivingEvents = false -- Set to true if you want the ped to disable shocking driving events
      },
      ['Pathing'] = {
        ['Avoidance'] = {
          avoidDrops = true, -- Set to true if you want the ped to avoid falls from height
          avoidFire = true, -- Set to true if you want the ped to avoid fire
          avoidPeds = true, -- Set to true if you want the ped to avoid other peds
          avoidTearGas = true, -- Set to true if you want the ped to avoid tear gas
          avoidWater = true -- Set to true if you want the ped to avoid water
        },
        ['Movement'] = {
          disableCrouch = false, -- Set to true if you want the ped to disable crouching
          disableDives = false, -- Set to true if you want the ped to disable evasive diving
          disableClimbing = false, -- Set to true if you want the ped to disable climbing over objects
          disableLadders = false -- Set to true if you want the ped to disable climbing ladders
        },
        ['Ragdolling'] = {
          canRagdoll = true, -- Set to true if you want the ped to be able to ragdoll
          pedImpact = true, -- Set to true if you want the ped to ragdoll from ped impacts
          vehicleImpact = true, -- Set to true if you want the ped to ragdoll from vehicle impacts
          bulletImpact = true, -- Set to true if you want the ped to ragdoll from bullet impacts
          explosion = true, -- Set to true if you want the ped to ragdoll from explosions
          fire = true, -- Set to true if you want the ped to ragdoll from fires
          electrocution = true, -- Set to true if you want the ped to ragdoll from being electrocuted
          objectImpact = true, -- Set to true if you want the ped to ragdoll from object impacts
          melee = true, -- Set to true if you want the ped to ragdoll from melee attacks
          waterjetImpact = true, -- Set to true if you want the ped to ragdoll from water jet impacts
          drowning = true, -- Set to true if you want the ped to ragdoll from drowning
          falling = true, -- Set to true if you want the ped to ragdoll from falling
          onBoats = true, -- Set to true if you want the ped to ragdoll from being on boats whilst they're moving
          rubberBullet = true, -- Set to true if you want the ped to ragdoll from rubber bullet impacts
          smokeGrenades = true, -- Set to true if you want the ped to ragdoll from smoke grenade impacts
          pedCollision = true, -- Set to true if you want the ped to ragdoll from ped collisions
          vehicleCollision = true, -- Set to true if you want the ped to ragdoll from vehicle collisions
          playerImpact = true, -- Set to true if you want the ped to ragdoll from player impacts
          aiRagdollImpact = true, -- Set to true if you want the ped to ragdoll from ai ragdoll impacts
          playerRagdollImpact = true, -- Set to true if you want the ped to ragdoll from player ragdoll impacts
          minorPlayerImpact = true, -- Set to true if you want the ped to ragdoll from minor player impacts
          ragdollOnDeath = true -- Set to true if you want the ped to ragdoll on death
        }
      },
      ['Relationships'] = { -- 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
        [5] = {'PLAYER'}, -- Can be a table of jobs
        override = 'Russian' -- If multiple patrols need to be friendly to each other, set this as the same for each patrol
      },
    }
  }, {
    name = 'Zancudo_Barracks',
    ['Enabled'] = {guards = false, patrols = true, vehicles = true},
    ['Routes'] = {
      patrol = {
        { -- Barracks Patrol
          {coords = vector3(-1826.44, 3296.78, 32.83), heading = 332.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(-1791.71, 3277.2, 32.77), heading = 238.37, stopTime = math.random(1000, 5000)},
          {coords = vector3(-1743.14, 3248.95, 32.81), heading = 333.22, stopTime = math.random(1000, 5000)},
          {coords = vector3(-1785.16, 3176.31, 32.83), heading = 152.92, stopTime = math.random(1000, 5000)},
          {coords = vector3(-1819.5, 3195.79, 32.79), heading = 59.17, stopTime = math.random(1000, 5000)},
          {coords = vector3(-1867.65, 3225.62, 32.85), heading = 153.11, stopTime = math.random(1000, 5000)}
        }
      },
      vehicle = { -- https://vespura.com/fivem/drivingstyle/
        { -- Barrack Vehicle Patrol w/ 10 Guards
          {coords = vector3(-1843.61, 3314.74, 32.94), speed = 80.0, drivingStyle = 69814459},
          {coords = vector3(-1716.95, 3241.34, 32.54), speed = 80.0, drivingStyle = 69814459},
          {coords = vector3(-1741.59, 3161.12, 32.55), speed = 80.0, drivingStyle = 69814459},
          {coords = vector3(-1894.12, 3231.54, 32.56), speed = 80.0, drivingStyle = 69814459}
        }
      }
    },
    ['Peds'] = {
      patrol = {
        {
          ['Base'] = {
            model = 'BF4Russian6', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_specialcarbine', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 250, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 100, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }
      },
      vehicle = {
        { -- If passenger number is set below, each peds copies the config from below and applies that to the amount of passengers deinfed below.
          ['Base'] = {
            model = 'Spetnaz', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_combatpistol', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 250, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
            flags = {29, 32, 116, 151, 229, 241, 250, 184, 391, 398} -- This has it's best use for vehicles, as no vehicle flags are set by default
          },
          ['Ranges'] = {
            lod = 500.0,
            id = 300.0,
            seeing = 300.0,
            hearing = 300.0,
            shout = 300.0
          }
        }
      }
    },
    ['Vehicles'] = {
      vehicle = {
        {
          ['Base'] = {
            model = 'barracks', -- https://docs.fivem.net/docs/game-references/vehicle-models/
            vehType = 'automobile',
            passengers = 10, -- Can be omitted, will default to the table length of the peds array above
            lockType = 3, -- 0 = None, 1 = Unlocked, 2 = Locked, 3 = LockedForPlayer, 4 = LockedPlayerInside, 5 = LockedInitially
            health = 1000.0,
            dirtLevel = 10.0,
            plate = 'ARMY'
          }
        }
      }
    },
    ['Settings'] = {
      ['Behavior'] = {
        ignoreMelee = false, -- Set to true if you want the ped not react to melee actions
        ignoreFire = false, -- Set to true if you want the ped not react to fire
        ignoreBeingJacked = false, -- Set to true if you want the ped not react to being jacked
        ignoreSilencedClone = true, -- Set to true if you want the ped not react to silenced weapons
        ignoreExplosion = false, -- Set to true if you want the ped not react to explosions
        preventMeleeTaunts = false, -- Set to true if you want the ped not melee taunt
        disableHurt = false, -- Set to true if you want the ped not have hurt reactions
        disableWrithe = false, -- Set to true if you want the ped not writhe on the ground
        preferInjuredGetup = true, -- Set to true if you want the ped to prefer getting up from an injured state
        onlyWritheFromWeapon = true, -- Set to true if you want the ped to only writhe from weapon damage
        runFromFires = true, -- Set to true if you want the ped to run from fires
        dontShoutTarget = false, -- Set to true if you want the ped to not communicate their targets postion
        dontCryForHelp = false -- Set to true if you want the ped to not call for help when injured
      },
      ['Blips'] = {
        enabled = false, -- Set to true if you want the ped to have a blip
        hasCone = false, -- Whether the blip has a view cone on the minimap whilst active
        colour = 1, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        range = 50.0, -- The range the blip can be activated from
        clearOnDeath = true
      },
      ['Combat'] = {
        attributes = {5, 14, 15, 22, 42, 44, 46}, -- https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201
        ability = 35, -- 0-50 = Poor, 50-75 = Average, 75+ = Professional
        accuracy = 10, -- 0 - 100
        alertness = 0, -- 0 = Calm, 3 = Paranoid
        movement = 1, -- 0 = Stationary, 1 = Defensive, 2 = WillAdvance, 3 = WillRetreat
        range = 1, -- 0 = Near, 1 = Medium, 2 = Far, 3 = VeryFar
        targetResponse = 0, -- 0 = Exist Task, 1 = Never Lose target, 2 = Search For Target
        canAttackFriendly = false, -- Whether the ped can attack friendly peds
        canUseCover = true, -- Whether the ped can use cover
        useDiminishingAmmo = true, -- Set false for the ped to have infinite ammo, true to use ammo declared in ['Peds']['Base'].ammo
        blockWeaponSwitching = false, -- Whether the ped can switch weapons
        enableWeaponBlocking = false, -- Whether the ped can block weapon attacks
        keepWeaponHolstered = false, -- Whether the ped will keep their weapon holstered until fired
        disableMelee = false, -- Whether the ped can use melee attacks
        disableUnarmedDriveby = false, -- Whether the ped can use unarmed drivebys
        disableWritheShooting = false, -- Whether the ped can shoot whilst writheing on the ground
        respondToHelpCries = true, -- Whether the ped will respond to help cries
        seeApproachingVehicles = true, -- Whether the ped can always see approaching vehicles
        treatDislikeAsHated = false, -- Whether the ped will treat dislike as hated (Relationship type 4)
        treatNonFriendlyAsHated = false, -- Whether the ped will treat non friendly as hated (Any Relationship from 3 and above)
        broadcastGoingToThreat = true -- Whether the ped will broadcast that they are going to a threat
      },
      ['Damages'] = {
        diesWhenInjured = false, -- Set to true if you want the ped to die when injured
        incapacitation = true, -- Set to true if you want the ped to writhe when injured
        criticals = true, -- Set to true if you want the ped to suffer critical hits
        bullets = true, -- Set to true if you want the ped to suffer bullet damage
        fire = true, -- Set to true if you want the ped to suffer fire damage
        explosion = true, -- Set to true if you want the ped to suffer explosion damage
        collision = true, -- Set to true if you want the ped to suffer collision damage
        steam = true, -- Set to true if you want the ped to suffer steam damage
        melee = true, -- Set to true if you want the ped to suffer melee damage
        drown = true, -- Set to true if you want the ped to drown
        electric = true, -- Set to true if you want the ped to suffer electric damage
        ragdoll = false, -- Set to true if you want the ped to die when ragdolled
        invincible = false -- Set to true if you want the ped to be invincible
      },
      ['Drops'] = {
        weapons = false, -- Set to true if you want the ped to drop their weapon when killed
        healthSnacks = false -- Set to true if you want the ped to drop a health snack when killed
      },
      ['Events'] = {
        generateSoundEvents = true, -- Set to true if you want the ped to generate sound events
        listensToSoundEvents = true, -- Set to true if you want the ped to listen to sound events
        checkLOSForSoundEvents = true, -- Set to true if you want the ped to check line of sight to generate/respond sound events
        disableWeirdPedEvents = false, -- Set to true if you want the ped to disable weird ped events
        disableCryForHelpEvents = false, -- Set to true if you want the ped to disable cry for help events
        usePerceptionForAimEvents = true, -- Set to true if you want the ped to use perception for aim events
        disableShockingEvents = false, -- Set to true if you want the ped to disable shocking events
        disableShockingDrivingEvents = false -- Set to true if you want the ped to disable shocking driving events
      },
      ['Pathing'] = {
        ['Avoidance'] = {
          avoidDrops = true, -- Set to true if you want the ped to avoid falls from height
          avoidFire = true, -- Set to true if you want the ped to avoid fire
          avoidPeds = true, -- Set to true if you want the ped to avoid other peds
          avoidTearGas = true, -- Set to true if you want the ped to avoid tear gas
          avoidWater = true -- Set to true if you want the ped to avoid water
        },
        ['Movement'] = {
          disableCrouch = false, -- Set to true if you want the ped to disable crouching
          disableDives = false, -- Set to true if you want the ped to disable evasive diving
          disableClimbing = false, -- Set to true if you want the ped to disable climbing over objects
          disableLadders = false -- Set to true if you want the ped to disable climbing ladders
        },
        ['Ragdolling'] = {
          canRagdoll = true, -- Set to true if you want the ped to be able to ragdoll
          pedImpact = true, -- Set to true if you want the ped to ragdoll from ped impacts
          vehicleImpact = true, -- Set to true if you want the ped to ragdoll from vehicle impacts
          bulletImpact = true, -- Set to true if you want the ped to ragdoll from bullet impacts
          explosion = true, -- Set to true if you want the ped to ragdoll from explosions
          fire = true, -- Set to true if you want the ped to ragdoll from fires
          electrocution = true, -- Set to true if you want the ped to ragdoll from being electrocuted
          objectImpact = true, -- Set to true if you want the ped to ragdoll from object impacts
          melee = true, -- Set to true if you want the ped to ragdoll from melee attacks
          waterjetImpact = true, -- Set to true if you want the ped to ragdoll from water jet impacts
          drowning = true, -- Set to true if you want the ped to ragdoll from drowning
          falling = true, -- Set to true if you want the ped to ragdoll from falling
          onBoats = true, -- Set to true if you want the ped to ragdoll from being on boats whilst they're moving
          rubberBullet = true, -- Set to true if you want the ped to ragdoll from rubber bullet impacts
          smokeGrenades = true, -- Set to true if you want the ped to ragdoll from smoke grenade impacts
          pedCollision = true, -- Set to true if you want the ped to ragdoll from ped collisions
          vehicleCollision = true, -- Set to true if you want the ped to ragdoll from vehicle collisions
          playerImpact = true, -- Set to true if you want the ped to ragdoll from player impacts
          aiRagdollImpact = true, -- Set to true if you want the ped to ragdoll from ai ragdoll impacts
          playerRagdollImpact = true, -- Set to true if you want the ped to ragdoll from player ragdoll impacts
          minorPlayerImpact = true, -- Set to true if you want the ped to ragdoll from minor player impacts
          ragdollOnDeath = true -- Set to true if you want the ped to ragdoll on death
        }
      },
      ['Relationships'] = { -- 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
        [5] = {'PLAYER'}, -- Can be a table of jobs
        override = 'Russian' -- If multiple patrols need to be friendly to each other, set this as the same for each patrol
      },
    }
  }, {
    name = 'Zancudo_MHanger',
    ['Enabled'] = {guards = true, patrols = false, vehicles = false},
    ['Routes'] = {
      guard = {
        {coords = vector3(-1712.11, 3005.23, 33.19), heading = 14.08, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(-1711.84, 3002.98, 33.19), heading = 190.94, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth
        {coords = vector3(-1755.3, 3004.0, 59.34), heading = 243.71, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Hanger Sniper South
        {coords = vector3(-1824.28, 3043.96, 59.34), heading = 61.64, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'} -- Hanger Sniper North
      }
    },
    ['Peds'] = {
      guard = {
        {
          ['Base'] = {
            model = 'BF4Russian5', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_specialcarbine', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 50, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }, {
          ['Base'] = {
            model = 'BF4Russian3',
            weapon = 'weapon_specialcarbine',
            health = 200,
            armour = 50,
            ammo = 750,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }, {
          ['Base'] = {
            model = 'BF4Russian2',
            weapon = 'weapon_marksmanrifle',
            health = 200,
            armour = 50,
            ammo = 500,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 250.0,
            seeing = 250.0,
            hearing = 250.0,
            shout = 250.0
          }
        }, {
          ['Base'] = {
            model = 'BF4Russian',
            weapon = 'weapon_marksmanrifle',
            health = 200,
            armour = 50,
            ammo = 500,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 250.0,
            seeing = 250.0,
            hearing = 250.0,
            shout = 250.0
          }
        }
      }
    },
    ['Settings'] = {
      ['Behavior'] = {
        ignoreMelee = false, -- Set to true if you want the ped not react to melee actions
        ignoreFire = false, -- Set to true if you want the ped not react to fire
        ignoreBeingJacked = false, -- Set to true if you want the ped not react to being jacked
        ignoreSilencedClone = true, -- Set to true if you want the ped not react to silenced weapons
        ignoreExplosion = false, -- Set to true if you want the ped not react to explosions
        preventMeleeTaunts = false, -- Set to true if you want the ped not melee taunt
        disableHurt = false, -- Set to true if you want the ped not have hurt reactions
        disableWrithe = false, -- Set to true if you want the ped not writhe on the ground
        preferInjuredGetup = true, -- Set to true if you want the ped to prefer getting up from an injured state
        onlyWritheFromWeapon = true, -- Set to true if you want the ped to only writhe from weapon damage
        runFromFires = true, -- Set to true if you want the ped to run from fires
        dontShoutTarget = false, -- Set to true if you want the ped to not communicate their targets postion
        dontCryForHelp = false -- Set to true if you want the ped to not call for help when injured
      },
      ['Blips'] = {
        enabled = false, -- Set to true if you want the ped to have a blip
        hasCone = false, -- Whether the blip has a view cone on the minimap whilst active
        colour = 1, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        range = 50.0, -- The range the blip can be activated from
        clearOnDeath = true
      },
      ['Combat'] = {
        attributes = {5, 14, 15, 22, 42, 44, 46}, -- https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201
        ability = 35, -- 0-50 = Poor, 50-75 = Average, 75+ = Professional
        accuracy = 10, -- 0 - 100
        alertness = 0, -- 0 = Calm, 3 = Paranoid
        movement = 1, -- 0 = Stationary, 1 = Defensive, 2 = WillAdvance, 3 = WillRetreat
        range = 1, -- 0 = Near, 1 = Medium, 2 = Far, 3 = VeryFar
        targetResponse = 0, -- 0 = Exist Task, 1 = Never Lose target, 2 = Search For Target
        canAttackFriendly = false, -- Whether the ped can attack friendly peds
        canUseCover = true, -- Whether the ped can use cover
        useDiminishingAmmo = true, -- Set false for the ped to have infinite ammo, true to use ammo declared in ['Peds']['Base'].ammo
        blockWeaponSwitching = false, -- Whether the ped can switch weapons
        enableWeaponBlocking = false, -- Whether the ped can block weapon attacks
        keepWeaponHolstered = false, -- Whether the ped will keep their weapon holstered until fired
        disableMelee = false, -- Whether the ped can use melee attacks
        disableUnarmedDriveby = false, -- Whether the ped can use unarmed drivebys
        disableWritheShooting = false, -- Whether the ped can shoot whilst writheing on the ground
        respondToHelpCries = true, -- Whether the ped will respond to help cries
        seeApproachingVehicles = true, -- Whether the ped can always see approaching vehicles
        treatDislikeAsHated = false, -- Whether the ped will treat dislike as hated (Relationship type 4)
        treatNonFriendlyAsHated = false, -- Whether the ped will treat non friendly as hated (Any Relationship from 3 and above)
        broadcastGoingToThreat = true -- Whether the ped will broadcast that they are going to a threat
      },
      ['Damages'] = {
        diesWhenInjured = false, -- Set to true if you want the ped to die when injured
        incapacitation = true, -- Set to true if you want the ped to writhe when injured
        criticals = true, -- Set to true if you want the ped to suffer critical hits
        bullets = true, -- Set to true if you want the ped to suffer bullet damage
        fire = true, -- Set to true if you want the ped to suffer fire damage
        explosion = true, -- Set to true if you want the ped to suffer explosion damage
        collision = true, -- Set to true if you want the ped to suffer collision damage
        steam = true, -- Set to true if you want the ped to suffer steam damage
        melee = true, -- Set to true if you want the ped to suffer melee damage
        drown = true, -- Set to true if you want the ped to drown
        electric = true, -- Set to true if you want the ped to suffer electric damage
        ragdoll = false, -- Set to true if you want the ped to die when ragdolled
        invincible = false -- Set to true if you want the ped to be invincible
      },
      ['Drops'] = {
        weapons = false, -- Set to true if you want the ped to drop their weapon when killed
        healthSnacks = false -- Set to true if you want the ped to drop a health snack when killed
      },
      ['Events'] = {
        generateSoundEvents = true, -- Set to true if you want the ped to generate sound events
        listensToSoundEvents = true, -- Set to true if you want the ped to listen to sound events
        checkLOSForSoundEvents = true, -- Set to true if you want the ped to check line of sight to generate/respond sound events
        disableWeirdPedEvents = false, -- Set to true if you want the ped to disable weird ped events
        disableCryForHelpEvents = false, -- Set to true if you want the ped to disable cry for help events
        usePerceptionForAimEvents = true, -- Set to true if you want the ped to use perception for aim events
        disableShockingEvents = false, -- Set to true if you want the ped to disable shocking events
        disableShockingDrivingEvents = false -- Set to true if you want the ped to disable shocking driving events
      },
      ['Pathing'] = {
        ['Avoidance'] = {
          avoidDrops = true, -- Set to true if you want the ped to avoid falls from height
          avoidFire = true, -- Set to true if you want the ped to avoid fire
          avoidPeds = true, -- Set to true if you want the ped to avoid other peds
          avoidTearGas = true, -- Set to true if you want the ped to avoid tear gas
          avoidWater = true -- Set to true if you want the ped to avoid water
        },
        ['Movement'] = {
          disableCrouch = false, -- Set to true if you want the ped to disable crouching
          disableDives = false, -- Set to true if you want the ped to disable evasive diving
          disableClimbing = false, -- Set to true if you want the ped to disable climbing over objects
          disableLadders = false -- Set to true if you want the ped to disable climbing ladders
        },
        ['Ragdolling'] = {
          canRagdoll = true, -- Set to true if you want the ped to be able to ragdoll
          pedImpact = true, -- Set to true if you want the ped to ragdoll from ped impacts
          vehicleImpact = true, -- Set to true if you want the ped to ragdoll from vehicle impacts
          bulletImpact = true, -- Set to true if you want the ped to ragdoll from bullet impacts
          explosion = true, -- Set to true if you want the ped to ragdoll from explosions
          fire = true, -- Set to true if you want the ped to ragdoll from fires
          electrocution = true, -- Set to true if you want the ped to ragdoll from being electrocuted
          objectImpact = true, -- Set to true if you want the ped to ragdoll from object impacts
          melee = true, -- Set to true if you want the ped to ragdoll from melee attacks
          waterjetImpact = true, -- Set to true if you want the ped to ragdoll from water jet impacts
          drowning = true, -- Set to true if you want the ped to ragdoll from drowning
          falling = true, -- Set to true if you want the ped to ragdoll from falling
          onBoats = true, -- Set to true if you want the ped to ragdoll from being on boats whilst they're moving
          rubberBullet = true, -- Set to true if you want the ped to ragdoll from rubber bullet impacts
          smokeGrenades = true, -- Set to true if you want the ped to ragdoll from smoke grenade impacts
          pedCollision = true, -- Set to true if you want the ped to ragdoll from ped collisions
          vehicleCollision = true, -- Set to true if you want the ped to ragdoll from vehicle collisions
          playerImpact = true, -- Set to true if you want the ped to ragdoll from player impacts
          aiRagdollImpact = true, -- Set to true if you want the ped to ragdoll from ai ragdoll impacts
          playerRagdollImpact = true, -- Set to true if you want the ped to ragdoll from player ragdoll impacts
          minorPlayerImpact = true, -- Set to true if you want the ped to ragdoll from minor player impacts
          ragdollOnDeath = true -- Set to true if you want the ped to ragdoll on death
        }
      },
      ['Relationships'] = { -- 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
        [5] = {'PLAYER'}, -- Can be a table of jobs
        override = 'Russian' -- If multiple patrols need to be friendly to each other, set this as the same for each patrol
      },
    }
  }, {
    name = 'Zancudo_Mechanic',
    ['Enabled'] = {guards = true, patrols = false, vehicles = false},
    ['Routes'] = {
      guard = {
        {coords = vector3(-1788.28, 3144.11, 33.07), heading = 66.14, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Guard Booth | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
        {coords = vector3(-1793.07, 3083.93, 32.81), heading = 295.53, scenario = 'WORLD_HUMAN_SMOKING'}, -- Mechanic Shop
        {coords = vector3(-1716.27, 3148.69, 51.93), heading = 182.17, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- Water Tower Sniper South
        {coords = vector3(-1720.41, 3153.56, 51.93), heading = 71.29, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'} -- Water Tower Sniper North
      }
    },
    ['Peds'] = {
      guard = {
        {
          ['Base'] = {
            model = 'BF4Russian6', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_specialcarbine', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 50, -- Range is 0-100
            ammo = 750, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }, {
          ['Base'] = {
            model = 'BF4Russian7',
            weapon = 'weapon_combatpistol',
            health = 200,
            armour = 50,
            ammo = 250,
            brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }, {
          ['Base'] = {
            model = 'BF4Russian8', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_sniperrifle', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 250, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 100, -- Range is 0-100
            ammo = 150, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 500.0, -- The range players can see the ped from
            id = 500.0, -- The range other peds can 'see' the ped from
            seeing = 500.0, -- The range the ped can see actions from
            hearing = 500.0, -- The range the ped can hear actions from
            shout = 500.0 -- The range the ped can communicate with other peds from
          }
        }, {
          ['Base'] = {
            model = 'BF4Russian9',
            weapon = 'weapon_sniperrifle',
            health = 250,
            armour = 100,
            ammo = 150,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 500.0,
            id = 500.0,
            seeing = 500.0,
            hearing = 500.0,
            shout = 500.0
          }
        }
      }
    },
    ['Settings'] = {
      ['Behavior'] = {
        ignoreMelee = false, -- Set to true if you want the ped not react to melee actions
        ignoreFire = false, -- Set to true if you want the ped not react to fire
        ignoreBeingJacked = false, -- Set to true if you want the ped not react to being jacked
        ignoreSilencedClone = true, -- Set to true if you want the ped not react to silenced weapons
        ignoreExplosion = false, -- Set to true if you want the ped not react to explosions
        preventMeleeTaunts = false, -- Set to true if you want the ped not melee taunt
        disableHurt = false, -- Set to true if you want the ped not have hurt reactions
        disableWrithe = false, -- Set to true if you want the ped not writhe on the ground
        preferInjuredGetup = true, -- Set to true if you want the ped to prefer getting up from an injured state
        onlyWritheFromWeapon = true, -- Set to true if you want the ped to only writhe from weapon damage
        runFromFires = true, -- Set to true if you want the ped to run from fires
        dontShoutTarget = false, -- Set to true if you want the ped to not communicate their targets postion
        dontCryForHelp = false -- Set to true if you want the ped to not call for help when injured
      },
      ['Blips'] = {
        enabled = false, -- Set to true if you want the ped to have a blip
        hasCone = false, -- Whether the blip has a view cone on the minimap whilst active
        colour = 1, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        range = 50.0, -- The range the blip can be activated from
        clearOnDeath = true
      },
      ['Combat'] = {
        attributes = {5, 14, 15, 22, 42, 44, 46}, -- https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201
        ability = 35, -- 0-50 = Poor, 50-75 = Average, 75+ = Professional
        accuracy = 10, -- 0 - 100
        alertness = 0, -- 0 = Calm, 3 = Paranoid
        movement = 1, -- 0 = Stationary, 1 = Defensive, 2 = WillAdvance, 3 = WillRetreat
        range = 1, -- 0 = Near, 1 = Medium, 2 = Far, 3 = VeryFar
        targetResponse = 0, -- 0 = Exist Task, 1 = Never Lose target, 2 = Search For Target
        canAttackFriendly = false, -- Whether the ped can attack friendly peds
        canUseCover = true, -- Whether the ped can use cover
        useDiminishingAmmo = true, -- Set false for the ped to have infinite ammo, true to use ammo declared in ['Peds']['Base'].ammo
        blockWeaponSwitching = false, -- Whether the ped can switch weapons
        enableWeaponBlocking = false, -- Whether the ped can block weapon attacks
        keepWeaponHolstered = false, -- Whether the ped will keep their weapon holstered until fired
        disableMelee = false, -- Whether the ped can use melee attacks
        disableUnarmedDriveby = false, -- Whether the ped can use unarmed drivebys
        disableWritheShooting = false, -- Whether the ped can shoot whilst writheing on the ground
        respondToHelpCries = true, -- Whether the ped will respond to help cries
        seeApproachingVehicles = true, -- Whether the ped can always see approaching vehicles
        treatDislikeAsHated = false, -- Whether the ped will treat dislike as hated (Relationship type 4)
        treatNonFriendlyAsHated = false, -- Whether the ped will treat non friendly as hated (Any Relationship from 3 and above)
        broadcastGoingToThreat = true -- Whether the ped will broadcast that they are going to a threat
      },
      ['Damages'] = {
        diesWhenInjured = false, -- Set to true if you want the ped to die when injured
        incapacitation = true, -- Set to true if you want the ped to writhe when injured
        criticals = true, -- Set to true if you want the ped to suffer critical hits
        bullets = true, -- Set to true if you want the ped to suffer bullet damage
        fire = true, -- Set to true if you want the ped to suffer fire damage
        explosion = true, -- Set to true if you want the ped to suffer explosion damage
        collision = true, -- Set to true if you want the ped to suffer collision damage
        steam = true, -- Set to true if you want the ped to suffer steam damage
        melee = true, -- Set to true if you want the ped to suffer melee damage
        drown = true, -- Set to true if you want the ped to drown
        electric = true, -- Set to true if you want the ped to suffer electric damage
        ragdoll = false, -- Set to true if you want the ped to die when ragdolled
        invincible = false -- Set to true if you want the ped to be invincible
      },
      ['Drops'] = {
        weapons = false, -- Set to true if you want the ped to drop their weapon when killed
        healthSnacks = false -- Set to true if you want the ped to drop a health snack when killed
      },
      ['Events'] = {
        generateSoundEvents = true, -- Set to true if you want the ped to generate sound events
        listensToSoundEvents = true, -- Set to true if you want the ped to listen to sound events
        checkLOSForSoundEvents = true, -- Set to true if you want the ped to check line of sight to generate/respond sound events
        disableWeirdPedEvents = false, -- Set to true if you want the ped to disable weird ped events
        disableCryForHelpEvents = false, -- Set to true if you want the ped to disable cry for help events
        usePerceptionForAimEvents = true, -- Set to true if you want the ped to use perception for aim events
        disableShockingEvents = false, -- Set to true if you want the ped to disable shocking events
        disableShockingDrivingEvents = false -- Set to true if you want the ped to disable shocking driving events
      },
      ['Pathing'] = {
        ['Avoidance'] = {
          avoidDrops = true, -- Set to true if you want the ped to avoid falls from height
          avoidFire = true, -- Set to true if you want the ped to avoid fire
          avoidPeds = true, -- Set to true if you want the ped to avoid other peds
          avoidTearGas = true, -- Set to true if you want the ped to avoid tear gas
          avoidWater = true -- Set to true if you want the ped to avoid water
        },
        ['Movement'] = {
          disableCrouch = false, -- Set to true if you want the ped to disable crouching
          disableDives = false, -- Set to true if you want the ped to disable evasive diving
          disableClimbing = false, -- Set to true if you want the ped to disable climbing over objects
          disableLadders = false -- Set to true if you want the ped to disable climbing ladders
        },
        ['Ragdolling'] = {
          canRagdoll = true, -- Set to true if you want the ped to be able to ragdoll
          pedImpact = true, -- Set to true if you want the ped to ragdoll from ped impacts
          vehicleImpact = true, -- Set to true if you want the ped to ragdoll from vehicle impacts
          bulletImpact = true, -- Set to true if you want the ped to ragdoll from bullet impacts
          explosion = true, -- Set to true if you want the ped to ragdoll from explosions
          fire = true, -- Set to true if you want the ped to ragdoll from fires
          electrocution = true, -- Set to true if you want the ped to ragdoll from being electrocuted
          objectImpact = true, -- Set to true if you want the ped to ragdoll from object impacts
          melee = true, -- Set to true if you want the ped to ragdoll from melee attacks
          waterjetImpact = true, -- Set to true if you want the ped to ragdoll from water jet impacts
          drowning = true, -- Set to true if you want the ped to ragdoll from drowning
          falling = true, -- Set to true if you want the ped to ragdoll from falling
          onBoats = true, -- Set to true if you want the ped to ragdoll from being on boats whilst they're moving
          rubberBullet = true, -- Set to true if you want the ped to ragdoll from rubber bullet impacts
          smokeGrenades = true, -- Set to true if you want the ped to ragdoll from smoke grenade impacts
          pedCollision = true, -- Set to true if you want the ped to ragdoll from ped collisions
          vehicleCollision = true, -- Set to true if you want the ped to ragdoll from vehicle collisions
          playerImpact = true, -- Set to true if you want the ped to ragdoll from player impacts
          aiRagdollImpact = true, -- Set to true if you want the ped to ragdoll from ai ragdoll impacts
          playerRagdollImpact = true, -- Set to true if you want the ped to ragdoll from player ragdoll impacts
          minorPlayerImpact = true, -- Set to true if you want the ped to ragdoll from minor player impacts
          ragdollOnDeath = true -- Set to true if you want the ped to ragdoll on death
        }
      },
      ['Relationships'] = { -- 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
        [5] = {'PLAYER'}, -- Can be a table of jobs
        override = 'Russian' -- If multiple patrols need to be friendly to each other, set this as the same for each patrol
      },
    }
  }, {
    name = 'Zancudo_A2Hanger',
    ['Enabled'] = {guards = true, patrols = true, vehicles = true},
    ['Routes'] = {
      guard = {
        {coords = vector3(-1994.09, 3144.1, 55.4), heading = 151.63, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- South East Corner
      },
      patrol = {
        { -- South West Corner
          {coords = vector3(-2038.43, 3194.25, 50.29), heading = 12.17, stopTime = math.random(5000, 10000)},
          {coords = vector3(-2041.06, 3191.91, 50.29), heading = 61.35, stopTime = math.random(5000, 10000)},
          {coords = vector3(-2052.23, 3177.46, 55.4), heading = 109.74, stopTime = math.random(5000, 10000)},
          {coords = vector3(-2045.45, 3173.35, 55.4), heading = 215.35, stopTime = math.random(5000, 10000)}
        }, { -- North West Corner
          {coords = vector3(-2008.8, 3246.71, 55.4), heading = 40.63, stopTime = math.random(15000, 30000)},
          {coords = vector3(-2004.96, 3244.35, 55.4), heading = 268.43, stopTime = math.random(15000, 30000)}
        }, { -- North East Corner
          {coords = vector3(-1947.56, 3211.32, 55.4), heading = 286.59, stopTime = math.random(5000, 10000)},
          {coords = vector3(-1955.51, 3216.16, 55.4), heading = 26.37, stopTime = math.random(5000, 10000)},
          {coords = vector3(-1962.44, 3192.9, 49.87), heading = 196.49, stopTime = math.random(5000, 10000)},
          {coords = vector3(-1954.44, 3204.48, 49.87), heading = 239.5, stopTime = math.random(5000, 10000)},
          {coords = vector3(-1948.18, 3209.95, 55.4), heading = 199.12, stopTime = math.random(5000, 10000)}
        }
      },
      vehicle = { -- https://vespura.com/fivem/drivingstyle/
        { -- Winky Patrol South
          {coords = vector3(-1968.27, 3143.59, 32.81), speed = 15.0, drivingStyle = 447},
          {coords = vector3(-1947.57, 3225.48, 32.81), speed = 15.0, drivingStyle = 447},
          {coords = vector3(-2028.55, 3253.17, 32.81), speed = 15.0, drivingStyle = 447},
          {coords = vector3(-1988.69, 3108.06, 32.81), speed = 15.0, drivingStyle = 447}
        }
      }
    },
    ['Peds'] = {
      guard = {
        {
          ['Base'] = {
            model = 'BF4Russian10', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_sniperrifle', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 250, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 100, -- Range is 0-100
            ammo = 150, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 500.0, -- The range players can see the ped from
            id = 500.0, -- The range other peds can 'see' the ped from
            seeing = 500.0, -- The range the ped can see actions from
            hearing = 500.0, -- The range the ped can hear actions from
            shout = 500.0 -- The range the ped can communicate with other peds from
          }
        }
      },
      patrol = {
        {
          ['Base'] = {
            model = 'BF4Russian11',
            weapon = 'weapon_marksmanrifle',
            health = 200,
            armour = 50,
            ammo = 500,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 250.0,
            seeing = 250.0,
            hearing = 250.0,
            shout = 250.0
          }
        }, {
          ['Base'] = {
            model = 'Spetnaz',
            weapon = 'weapon_marksmanrifle',
            health = 200,
            armour = 50,
            ammo = 500,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 250.0,
            seeing = 250.0,
            hearing = 250.0,
            shout = 250.0
          }
        }, {
          ['Base'] = {
            model = 'RussianSF3',
            weapon = 'weapon_marksmanrifle',
            health = 250,
            armour = 100,
            ammo = 500,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 250.0,
            seeing = 250.0,
            hearing = 250.0,
            shout = 250.0
          }
        }
      },
      vehicle = {
        { -- If passenger number is set below, each peds copies the config from below and applies that to the amount of passengers deinfed below.
          {
            ['Base'] = {
              model = 'RussianSF', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
              weapon = 'weapon_carbinerifle', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
              health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
              armour = 50, -- Range is 0-100
              ammo = 500, -- Ped only uses ammo if useDiminishingAmmo is true
              brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
              flags = {29, 32, 116, 151, 229, 241, 250, 184, 391, 398} -- This has it's best use for vehicles, as no vehicle flags are set by default
            },
            ['Ranges'] = {
              lod = 250.0,
              id = 250.0,
              seeing = 250.0,
              hearing = 250.0,
              shout = 250.0
            }
          }, {
            ['Base'] = {
              model = 'RussianSF2',
              weapon = 'weapon_combatpistol',
              health = 100,
              armour = 0,
              ammo = 250,
              brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
              flags = {29, 32, 116, 151, 229, 241, 250, 184, 391, 398}
            },
            ['Ranges'] = {
              lod = 250.0,
              id = 250.0,
              seeing = 250.0,
              hearing = 250.0,
              shout = 250.0
            }
          }
        }
      }
    },
    ['Vehicles'] = {
      vehicle = {
        {
          ['Base'] = {
            model = 'winky', -- https://docs.fivem.net/docs/game-references/vehicle-models/
            vehType = 'automobile',
            passengers = false, -- Can be omitted, will default to the table length of the peds array above
            lockType = 3, -- 0 = None, 1 = Unlocked, 2 = Locked, 3 = LockedForPlayer, 4 = LockedPlayerInside, 5 = LockedInitially
            health = 1000.0,
            dirtLevel = 0.0,
            plate = 'ARMY'
          }
        }
      }
    },
    ['Settings'] = {
      ['Behavior'] = {
        ignoreMelee = false, -- Set to true if you want the ped not react to melee actions
        ignoreFire = false, -- Set to true if you want the ped not react to fire
        ignoreBeingJacked = false, -- Set to true if you want the ped not react to being jacked
        ignoreSilencedClone = true, -- Set to true if you want the ped not react to silenced weapons
        ignoreExplosion = false, -- Set to true if you want the ped not react to explosions
        preventMeleeTaunts = false, -- Set to true if you want the ped not melee taunt
        disableHurt = false, -- Set to true if you want the ped not have hurt reactions
        disableWrithe = false, -- Set to true if you want the ped not writhe on the ground
        preferInjuredGetup = true, -- Set to true if you want the ped to prefer getting up from an injured state
        onlyWritheFromWeapon = true, -- Set to true if you want the ped to only writhe from weapon damage
        runFromFires = true, -- Set to true if you want the ped to run from fires
        dontShoutTarget = false, -- Set to true if you want the ped to not communicate their targets postion
        dontCryForHelp = false -- Set to true if you want the ped to not call for help when injured
      },
      ['Blips'] = {
        enabled = false, -- Set to true if you want the ped to have a blip
        hasCone = false, -- Whether the blip has a view cone on the minimap whilst active
        colour = 1, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        range = 50.0, -- The range the blip can be activated from
        clearOnDeath = true
      },
      ['Combat'] = {
        attributes = {5, 14, 15, 22, 42, 44, 46}, -- https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201
        ability = 35, -- 0-50 = Poor, 50-75 = Average, 75+ = Professional
        accuracy = 10, -- 0 - 100
        alertness = 0, -- 0 = Calm, 3 = Paranoid
        movement = 1, -- 0 = Stationary, 1 = Defensive, 2 = WillAdvance, 3 = WillRetreat
        range = 1, -- 0 = Near, 1 = Medium, 2 = Far, 3 = VeryFar
        targetResponse = 0, -- 0 = Exist Task, 1 = Never Lose target, 2 = Search For Target
        canAttackFriendly = false, -- Whether the ped can attack friendly peds
        canUseCover = true, -- Whether the ped can use cover
        useDiminishingAmmo = true, -- Set false for the ped to have infinite ammo, true to use ammo declared in ['Peds']['Base'].ammo
        blockWeaponSwitching = false, -- Whether the ped can switch weapons
        enableWeaponBlocking = false, -- Whether the ped can block weapon attacks
        keepWeaponHolstered = false, -- Whether the ped will keep their weapon holstered until fired
        disableMelee = false, -- Whether the ped can use melee attacks
        disableUnarmedDriveby = false, -- Whether the ped can use unarmed drivebys
        disableWritheShooting = false, -- Whether the ped can shoot whilst writheing on the ground
        respondToHelpCries = true, -- Whether the ped will respond to help cries
        seeApproachingVehicles = true, -- Whether the ped can always see approaching vehicles
        treatDislikeAsHated = false, -- Whether the ped will treat dislike as hated (Relationship type 4)
        treatNonFriendlyAsHated = false, -- Whether the ped will treat non friendly as hated (Any Relationship from 3 and above)
        broadcastGoingToThreat = true -- Whether the ped will broadcast that they are going to a threat
      },
      ['Damages'] = {
        diesWhenInjured = false, -- Set to true if you want the ped to die when injured
        incapacitation = true, -- Set to true if you want the ped to writhe when injured
        criticals = true, -- Set to true if you want the ped to suffer critical hits
        bullets = true, -- Set to true if you want the ped to suffer bullet damage
        fire = true, -- Set to true if you want the ped to suffer fire damage
        explosion = true, -- Set to true if you want the ped to suffer explosion damage
        collision = true, -- Set to true if you want the ped to suffer collision damage
        steam = true, -- Set to true if you want the ped to suffer steam damage
        melee = true, -- Set to true if you want the ped to suffer melee damage
        drown = true, -- Set to true if you want the ped to drown
        electric = true, -- Set to true if you want the ped to suffer electric damage
        ragdoll = false, -- Set to true if you want the ped to die when ragdolled
        invincible = false -- Set to true if you want the ped to be invincible
      },
      ['Drops'] = {
        weapons = false, -- Set to true if you want the ped to drop their weapon when killed
        healthSnacks = false -- Set to true if you want the ped to drop a health snack when killed
      },
      ['Events'] = {
        generateSoundEvents = true, -- Set to true if you want the ped to generate sound events
        listensToSoundEvents = true, -- Set to true if you want the ped to listen to sound events
        checkLOSForSoundEvents = true, -- Set to true if you want the ped to check line of sight to generate/respond sound events
        disableWeirdPedEvents = false, -- Set to true if you want the ped to disable weird ped events
        disableCryForHelpEvents = false, -- Set to true if you want the ped to disable cry for help events
        usePerceptionForAimEvents = true, -- Set to true if you want the ped to use perception for aim events
        disableShockingEvents = false, -- Set to true if you want the ped to disable shocking events
        disableShockingDrivingEvents = false -- Set to true if you want the ped to disable shocking driving events
      },
      ['Pathing'] = {
        ['Avoidance'] = {
          avoidDrops = true, -- Set to true if you want the ped to avoid falls from height
          avoidFire = true, -- Set to true if you want the ped to avoid fire
          avoidPeds = true, -- Set to true if you want the ped to avoid other peds
          avoidTearGas = true, -- Set to true if you want the ped to avoid tear gas
          avoidWater = true -- Set to true if you want the ped to avoid water
        },
        ['Movement'] = {
          disableCrouch = false, -- Set to true if you want the ped to disable crouching
          disableDives = false, -- Set to true if you want the ped to disable evasive diving
          disableClimbing = false, -- Set to true if you want the ped to disable climbing over objects
          disableLadders = false -- Set to true if you want the ped to disable climbing ladders
        },
        ['Ragdolling'] = {
          canRagdoll = true, -- Set to true if you want the ped to be able to ragdoll
          pedImpact = true, -- Set to true if you want the ped to ragdoll from ped impacts
          vehicleImpact = true, -- Set to true if you want the ped to ragdoll from vehicle impacts
          bulletImpact = true, -- Set to true if you want the ped to ragdoll from bullet impacts
          explosion = true, -- Set to true if you want the ped to ragdoll from explosions
          fire = true, -- Set to true if you want the ped to ragdoll from fires
          electrocution = true, -- Set to true if you want the ped to ragdoll from being electrocuted
          objectImpact = true, -- Set to true if you want the ped to ragdoll from object impacts
          melee = true, -- Set to true if you want the ped to ragdoll from melee attacks
          waterjetImpact = true, -- Set to true if you want the ped to ragdoll from water jet impacts
          drowning = true, -- Set to true if you want the ped to ragdoll from drowning
          falling = true, -- Set to true if you want the ped to ragdoll from falling
          onBoats = true, -- Set to true if you want the ped to ragdoll from being on boats whilst they're moving
          rubberBullet = true, -- Set to true if you want the ped to ragdoll from rubber bullet impacts
          smokeGrenades = true, -- Set to true if you want the ped to ragdoll from smoke grenade impacts
          pedCollision = true, -- Set to true if you want the ped to ragdoll from ped collisions
          vehicleCollision = true, -- Set to true if you want the ped to ragdoll from vehicle collisions
          playerImpact = true, -- Set to true if you want the ped to ragdoll from player impacts
          aiRagdollImpact = true, -- Set to true if you want the ped to ragdoll from ai ragdoll impacts
          playerRagdollImpact = true, -- Set to true if you want the ped to ragdoll from player ragdoll impacts
          minorPlayerImpact = true, -- Set to true if you want the ped to ragdoll from minor player impacts
          ragdollOnDeath = true -- Set to true if you want the ped to ragdoll on death
        }
      },
      ['Relationships'] = { -- 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
        [5] = {'PLAYER'}, -- Can be a table of jobs
        override = 'Russian' -- If multiple patrols need to be friendly to each other, set this as the same for each patrol
      },
    }
  }, {
    name = 'Zancudo_A1Hanger',
    ['Enabled'] = {guards = true, patrols = true, vehicles = true},
    ['Routes'] = {
      guard = {
        {coords = vector3(-2137.17, 3320.52, 55.38), heading = 326.51, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- North West Corner (Roof)
        {coords = vector3(-2123.31, 3219.28, 55.38), heading = 149.97, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}, -- South East Corner (Roof)
      },
      patrol = {
        { -- South West Corner (Roof)
          {coords = vector3(-2168.26, 3268.79, 50.3), heading = 20.22, stopTime = math.random(5000, 10000)},
          {coords = vector3(-2170.66, 3266.66, 50.3), heading = 64.17, stopTime = math.random(5000, 10000)},
          {coords = vector3(-2182.33, 3252.37, 55.38), heading = 96.16, stopTime = math.random(5000, 10000)},
          {coords = vector3(-2175.83, 3248.28, 55.38), heading = 183.83, stopTime = math.random(5000, 10000)}
        }, { -- North East Corner (Roof)
          {coords = vector3(-2077.67, 3286.38, 55.38), heading = 283.98, stopTime = math.random(5000, 10000)},
          {coords = vector3(-2085.28, 3290.7, 55.38), heading = 20.71, stopTime = math.random(5000, 10000)},
          {coords = vector3(-2092.18, 3267.84, 49.86), heading = 187.6, stopTime = math.random(5000, 10000)},
          {coords = vector3(-2084.33, 3279.3, 49.86), heading = 240.24, stopTime = math.random(5000, 10000)}
        }
      },
      vehicle = { -- https://vespura.com/fivem/drivingstyle/
        { -- Winky Patrol North
          {coords = vector3(-2101.53, 3216.72, 32.81), speed = 15.0, drivingStyle = 447},
          {coords = vector3(-2077.08, 3300.55, 32.81), speed = 15.0, drivingStyle = 447},
          {coords = vector3(-2166.85, 3313.11, 32.81), speed = 15.0, drivingStyle = 447},
          {coords = vector3(-2142.79, 3198.52, 32.81), speed = 15.0, drivingStyle = 447}
        }
      }
    },
    ['Peds'] = {
      guard = {
        {
          ['Base'] = {
            model = 'RussianSF', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_specialcarbine', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 50, -- Range is 0-100
            ammo = 500, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 300.0, -- The range players can see the ped from
            id = 200.0, -- The range other peds can 'see' the ped from
            seeing = 200.0, -- The range the ped can see actions from
            hearing = 200.0, -- The range the ped can hear actions from
            shout = 200.0 -- The range the ped can communicate with other peds from
          }
        }, {
          ['Base'] = {
            model = 'RussianSF2', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_sniperrifle', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 250, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 100, -- Range is 0-100
            ammo = 150, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 500.0, -- The range players can see the ped from
            id = 500.0, -- The range other peds can 'see' the ped from
            seeing = 500.0, -- The range the ped can see actions from
            hearing = 500.0, -- The range the ped can hear actions from
            shout = 500.0 -- The range the ped can communicate with other peds from
          }
        }
      },
      patrol = {
        {
          ['Base'] = {
            model = 'RussianSF3',
            weapon = 'weapon_marksmanrifle',
            health = 200,
            armour = 50,
            ammo = 500,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 250.0,
            seeing = 250.0,
            hearing = 250.0,
            shout = 250.0
          }
        }, {
          ['Base'] = {
            model = 'Spetnaz',
            weapon = 'weapon_marksmanrifle',
            health = 200,
            armour = 50,
            ammo = 500,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 250.0,
            seeing = 250.0,
            hearing = 250.0,
            shout = 250.0
          }
        }, {
          ['Base'] = {
            model = 'BF4Sniper',
            weapon = 'weapon_marksmanrifle',
            health = 250,
            armour = 100,
            ammo = 500,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 250.0,
            seeing = 250.0,
            hearing = 250.0,
            shout = 250.0
          }
        }
      },
      vehicle = {
        { -- If passenger number is set below, each peds copies the config from below and applies that to the amount of passengers deinfed below.
          {
            ['Base'] = {
              model = 'BF4Russian', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
              weapon = 'weapon_carbinerifle', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
              health = 200, -- Default Male Ped Health is 100-200 & Female is 0-100
              armour = 50, -- Range is 0-100
              ammo = 500, -- Ped only uses ammo if useDiminishingAmmo is true
              brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
              flags = {29, 32, 116, 151, 229, 241, 250, 184, 391, 398} -- This has it's best use for vehicles, as no vehicle flags are set by default
            },
            ['Ranges'] = {
              lod = 250.0,
              id = 250.0,
              seeing = 250.0,
              hearing = 250.0,
              shout = 250.0
            }
          }, {
            ['Base'] = {
              model = 'BF4Russian9',
              weapon = 'weapon_combatpistol',
              health = 100,
              armour = 0,
              ammo = 250,
              brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
              flags = {29, 32, 116, 151, 229, 241, 250, 184, 391, 398}
            },
            ['Ranges'] = {
              lod = 250.0,
              id = 250.0,
              seeing = 250.0,
              hearing = 250.0,
              shout = 250.0
            }
          }
        }
      }
    },
    ['Vehicles'] = {
      vehicle = {
        {
          ['Base'] = {
            model = 'winky', -- https://docs.fivem.net/docs/game-references/vehicle-models/
            vehType = 'automobile',
            passengers = false, -- Can be omitted, will default to the table length of the peds array above
            lockType = 3, -- 0 = None, 1 = Unlocked, 2 = Locked, 3 = LockedForPlayer, 4 = LockedPlayerInside, 5 = LockedInitially
            health = 1000.0,
            dirtLevel = 0.0,
            plate = 'ARMY'
          }
        }
      }
    },
    ['Settings'] = {
      ['Behavior'] = {
        ignoreMelee = false, -- Set to true if you want the ped not react to melee actions
        ignoreFire = false, -- Set to true if you want the ped not react to fire
        ignoreBeingJacked = false, -- Set to true if you want the ped not react to being jacked
        ignoreSilencedClone = true, -- Set to true if you want the ped not react to silenced weapons
        ignoreExplosion = false, -- Set to true if you want the ped not react to explosions
        preventMeleeTaunts = false, -- Set to true if you want the ped not melee taunt
        disableHurt = false, -- Set to true if you want the ped not have hurt reactions
        disableWrithe = false, -- Set to true if you want the ped not writhe on the ground
        preferInjuredGetup = true, -- Set to true if you want the ped to prefer getting up from an injured state
        onlyWritheFromWeapon = true, -- Set to true if you want the ped to only writhe from weapon damage
        runFromFires = true, -- Set to true if you want the ped to run from fires
        dontShoutTarget = false, -- Set to true if you want the ped to not communicate their targets postion
        dontCryForHelp = false -- Set to true if you want the ped to not call for help when injured
      },
      ['Blips'] = {
        enabled = false, -- Set to true if you want the ped to have a blip
        hasCone = false, -- Whether the blip has a view cone on the minimap whilst active
        colour = 1, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        range = 50.0, -- The range the blip can be activated from
        clearOnDeath = true
      },
      ['Combat'] = {
        attributes = {5, 14, 15, 22, 42, 44, 46}, -- https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201
        ability = 35, -- 0-50 = Poor, 50-75 = Average, 75+ = Professional
        accuracy = 10, -- 0 - 100
        alertness = 0, -- 0 = Calm, 3 = Paranoid
        movement = 1, -- 0 = Stationary, 1 = Defensive, 2 = WillAdvance, 3 = WillRetreat
        range = 1, -- 0 = Near, 1 = Medium, 2 = Far, 3 = VeryFar
        targetResponse = 0, -- 0 = Exist Task, 1 = Never Lose target, 2 = Search For Target
        canAttackFriendly = false, -- Whether the ped can attack friendly peds
        canUseCover = true, -- Whether the ped can use cover
        useDiminishingAmmo = true, -- Set false for the ped to have infinite ammo, true to use ammo declared in ['Peds']['Base'].ammo
        blockWeaponSwitching = false, -- Whether the ped can switch weapons
        enableWeaponBlocking = false, -- Whether the ped can block weapon attacks
        keepWeaponHolstered = false, -- Whether the ped will keep their weapon holstered until fired
        disableMelee = false, -- Whether the ped can use melee attacks
        disableUnarmedDriveby = false, -- Whether the ped can use unarmed drivebys
        disableWritheShooting = false, -- Whether the ped can shoot whilst writheing on the ground
        respondToHelpCries = true, -- Whether the ped will respond to help cries
        seeApproachingVehicles = true, -- Whether the ped can always see approaching vehicles
        treatDislikeAsHated = false, -- Whether the ped will treat dislike as hated (Relationship type 4)
        treatNonFriendlyAsHated = false, -- Whether the ped will treat non friendly as hated (Any Relationship from 3 and above)
        broadcastGoingToThreat = true -- Whether the ped will broadcast that they are going to a threat
      },
      ['Damages'] = {
        diesWhenInjured = false, -- Set to true if you want the ped to die when injured
        incapacitation = true, -- Set to true if you want the ped to writhe when injured
        criticals = true, -- Set to true if you want the ped to suffer critical hits
        bullets = true, -- Set to true if you want the ped to suffer bullet damage
        fire = true, -- Set to true if you want the ped to suffer fire damage
        explosion = true, -- Set to true if you want the ped to suffer explosion damage
        collision = true, -- Set to true if you want the ped to suffer collision damage
        steam = true, -- Set to true if you want the ped to suffer steam damage
        melee = true, -- Set to true if you want the ped to suffer melee damage
        drown = true, -- Set to true if you want the ped to drown
        electric = true, -- Set to true if you want the ped to suffer electric damage
        ragdoll = false, -- Set to true if you want the ped to die when ragdolled
        invincible = false -- Set to true if you want the ped to be invincible
      },
      ['Drops'] = {
        weapons = false, -- Set to true if you want the ped to drop their weapon when killed
        healthSnacks = false -- Set to true if you want the ped to drop a health snack when killed
      },
      ['Events'] = {
        generateSoundEvents = true, -- Set to true if you want the ped to generate sound events
        listensToSoundEvents = true, -- Set to true if you want the ped to listen to sound events
        checkLOSForSoundEvents = true, -- Set to true if you want the ped to check line of sight to generate/respond sound events
        disableWeirdPedEvents = false, -- Set to true if you want the ped to disable weird ped events
        disableCryForHelpEvents = false, -- Set to true if you want the ped to disable cry for help events
        usePerceptionForAimEvents = true, -- Set to true if you want the ped to use perception for aim events
        disableShockingEvents = false, -- Set to true if you want the ped to disable shocking events
        disableShockingDrivingEvents = false -- Set to true if you want the ped to disable shocking driving events
      },
      ['Pathing'] = {
        ['Avoidance'] = {
          avoidDrops = true, -- Set to true if you want the ped to avoid falls from height
          avoidFire = true, -- Set to true if you want the ped to avoid fire
          avoidPeds = true, -- Set to true if you want the ped to avoid other peds
          avoidTearGas = true, -- Set to true if you want the ped to avoid tear gas
          avoidWater = true -- Set to true if you want the ped to avoid water
        },
        ['Movement'] = {
          disableCrouch = false, -- Set to true if you want the ped to disable crouching
          disableDives = false, -- Set to true if you want the ped to disable evasive diving
          disableClimbing = false, -- Set to true if you want the ped to disable climbing over objects
          disableLadders = false -- Set to true if you want the ped to disable climbing ladders
        },
        ['Ragdolling'] = {
          canRagdoll = true, -- Set to true if you want the ped to be able to ragdoll
          pedImpact = true, -- Set to true if you want the ped to ragdoll from ped impacts
          vehicleImpact = true, -- Set to true if you want the ped to ragdoll from vehicle impacts
          bulletImpact = true, -- Set to true if you want the ped to ragdoll from bullet impacts
          explosion = true, -- Set to true if you want the ped to ragdoll from explosions
          fire = true, -- Set to true if you want the ped to ragdoll from fires
          electrocution = true, -- Set to true if you want the ped to ragdoll from being electrocuted
          objectImpact = true, -- Set to true if you want the ped to ragdoll from object impacts
          melee = true, -- Set to true if you want the ped to ragdoll from melee attacks
          waterjetImpact = true, -- Set to true if you want the ped to ragdoll from water jet impacts
          drowning = true, -- Set to true if you want the ped to ragdoll from drowning
          falling = true, -- Set to true if you want the ped to ragdoll from falling
          onBoats = true, -- Set to true if you want the ped to ragdoll from being on boats whilst they're moving
          rubberBullet = true, -- Set to true if you want the ped to ragdoll from rubber bullet impacts
          smokeGrenades = true, -- Set to true if you want the ped to ragdoll from smoke grenade impacts
          pedCollision = true, -- Set to true if you want the ped to ragdoll from ped collisions
          vehicleCollision = true, -- Set to true if you want the ped to ragdoll from vehicle collisions
          playerImpact = true, -- Set to true if you want the ped to ragdoll from player impacts
          aiRagdollImpact = true, -- Set to true if you want the ped to ragdoll from ai ragdoll impacts
          playerRagdollImpact = true, -- Set to true if you want the ped to ragdoll from player ragdoll impacts
          minorPlayerImpact = true, -- Set to true if you want the ped to ragdoll from minor player impacts
          ragdollOnDeath = true -- Set to true if you want the ped to ragdoll on death
        }
      },
      ['Relationships'] = { -- 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
        [5] = {'PLAYER'}, -- Can be a table of jobs
        override = 'Russian' -- If multiple patrols need to be friendly to each other, set this as the same for each patrol
      },
    }
  }, {
    name = 'Grapeseed_Weed_Farm',
    ['Enabled'] = {guards = true, patrols = true, vehicles = false},
    ['Routes'] = {
      guard = {
        {coords = vector3(2221.26, 5614.62, 54.87), heading = 113.48, scenario = 'WORLD_HUMAN_STUPOR'}, -- Front Door of House
        {coords = vector3(2229.87, 5574.94, 53.76), heading = 226.39, scenario = 'WORLD_HUMAN_DRUG_FIELD_WORKERS_RAKE'}, -- Weed Plants South
        {coords = vector3(2217.74, 5578.89, 53.76), heading = 24.41, scenario = 'WORLD_HUMAN_DRUG_FIELD_WORKERS_WEEDING'} -- Weed Plants North
      },
      patrol = {
        { -- Property Rotation
          {coords = vector3(2220.17, 5626.11, 55.08), heading = 96.24, stopTime = math.random(5000, 10000)},
          {coords = vector3(2197.41, 5611.88, 53.6), heading = 323.59, stopTime = math.random(5000, 10000)},
          {coords = vector3(2197.9, 5585.6, 53.66), heading = 251.47, stopTime = math.random(5000, 10000)},
          {coords = vector3(2202.77, 5555.21, 54.09), heading = 351.83, stopTime = math.random(5000, 10000)},
          {coords = vector3(2238.05, 5576.23, 54.02), heading = 85.72, stopTime = math.random(5000, 10000)},
          {coords = vector3(2236.59, 5610.99, 54.71), heading = 273.5, stopTime = math.random(5000, 10000)}
        }
      }
    },
    ['Peds'] = {
      guard = {
        {
          ['Base'] = {
            model = 'a_m_m_hillbilly_01', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_bottle', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 100, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 0, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 200.0, -- The range players can see the ped from
            id = 100.0, -- The range other peds can 'see' the ped from
            seeing = 100.0, -- The range the ped can see actions from
            hearing = 100.0, -- The range the ped can hear actions from
            shout = 100.0 -- The range the ped can communicate with other peds from
          }
        }, {
          ['Base'] = {
            model = 'u_m_o_taphillbilly', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_knife', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 100, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 0, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 200.0, -- The range players can see the ped from
            id = 100.0, -- The range other peds can 'see' the ped from
            seeing = 100.0, -- The range the ped can see actions from
            hearing = 100.0, -- The range the ped can hear actions from
            shout = 100.0 -- The range the ped can communicate with other peds from
          }
        }, {
          ['Base'] = {
            model = 'a_m_m_hillbilly_02', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_hatchet', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 100, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 0, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 200.0, -- The range players can see the ped from
            id = 100.0, -- The range other peds can 'see' the ped from
            seeing = 100.0, -- The range the ped can see actions from
            hearing = 100.0, -- The range the ped can hear actions from
            shout = 100.0 -- The range the ped can communicate with other peds from
          }
        }
      },
      patrol = {
        {
          ['Base'] = {
            model = 'ig_old_man2',
            weapon = 'weapon_doubleaction',
            health = 100,
            armour = 0,
            ammo = 250,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }
      }
    },
    ['Settings'] = {
      ['Behavior'] = {
        ignoreMelee = false, -- Set to true if you want the ped not react to melee actions
        ignoreFire = false, -- Set to true if you want the ped not react to fire
        ignoreBeingJacked = false, -- Set to true if you want the ped not react to being jacked
        ignoreSilencedClone = true, -- Set to true if you want the ped not react to silenced weapons
        ignoreExplosion = false, -- Set to true if you want the ped not react to explosions
        preventMeleeTaunts = false, -- Set to true if you want the ped not melee taunt
        disableHurt = false, -- Set to true if you want the ped not have hurt reactions
        disableWrithe = false, -- Set to true if you want the ped not writhe on the ground
        preferInjuredGetup = false, -- Set to true if you want the ped to prefer getting up from an injured state
        onlyWritheFromWeapon = false, -- Set to true if you want the ped to only writhe from weapon damage
        runFromFires = true, -- Set to true if you want the ped to run from fires
        dontShoutTarget = false, -- Set to true if you want the ped to not communicate their targets postion
        dontCryForHelp = false -- Set to true if you want the ped to not call for help when injured
      },
      ['Blips'] = {
        enabled = true, -- Set to true if you want the ped to have a blip
        hasCone = false, -- Whether the blip has a view cone on the minimap whilst active
        colour = 2, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        range = 50.0, -- The range the blip can be activated from
        clearOnDeath = true
      },
      ['Combat'] = {
        attributes = {5, 13, 46, 61}, -- https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201
        ability = 60, -- 0-50 = Poor, 50-75 = Average, 75+ = Professional
        accuracy = 40, -- 0 - 100
        alertness = 1, -- 0 = Calm, 3 = Paranoid
        movement = 2, -- 0 = Stationary, 1 = Defensive, 2 = WillAdvance, 3 = WillRetreat
        range = 1, -- 0 = Near, 1 = Medium, 2 = Far, 3 = VeryFar
        targetResponse = 2, -- 0 = Exist Task, 1 = Never Lose target, 2 = Search For Target
        canAttackFriendly = false, -- Whether the ped can attack friendly peds
        canUseCover = true, -- Whether the ped can use cover
        useDiminishingAmmo = true, -- Set false for the ped to have infinite ammo, true to use ammo declared in ['Peds']['Base'].ammo
        blockWeaponSwitching = false, -- Whether the ped can switch weapons
        enableWeaponBlocking = false, -- Whether the ped can block weapon attacks
        keepWeaponHolstered = true, -- Whether the ped will keep their weapon holstered until fired
        disableMelee = false, -- Whether the ped can use melee attacks
        disableUnarmedDriveby = false, -- Whether the ped can use unarmed drivebys
        disableWritheShooting = false, -- Whether the ped can shoot whilst writheing on the ground
        respondToHelpCries = true, -- Whether the ped will respond to help cries
        seeApproachingVehicles = true, -- Whether the ped can always see approaching vehicles
        treatDislikeAsHated = true, -- Whether the ped will treat dislike as hated (Relationship type 4)
        treatNonFriendlyAsHated = false, -- Whether the ped will treat non friendly as hated (Any Relationship from 3 and above)
        broadcastGoingToThreat = true -- Whether the ped will broadcast that they are going to a threat
      },
      ['Damages'] = {
        diesWhenInjured = false, -- Set to true if you want the ped to die when injured
        incapacitation = true, -- Set to true if you want the ped to writhe when injured
        criticals = true, -- Set to true if you want the ped to suffer critical hits
        bullets = true, -- Set to true if you want the ped to suffer bullet damage
        fire = true, -- Set to true if you want the ped to suffer fire damage
        explosion = true, -- Set to true if you want the ped to suffer explosion damage
        collision = true, -- Set to true if you want the ped to suffer collision damage
        steam = true, -- Set to true if you want the ped to suffer steam damage
        melee = true, -- Set to true if you want the ped to suffer melee damage
        drown = true, -- Set to true if you want the ped to drown
        electric = true, -- Set to true if you want the ped to suffer electric damage
        ragdoll = false, -- Set to true if you want the ped to die when ragdolled
        invincible = false -- Set to true if you want the ped to be invincible
      },
      ['Drops'] = {
        weapons = false, -- Set to true if you want the ped to drop their weapon when killed
        healthSnacks = false -- Set to true if you want the ped to drop a health snack when killed
      },
      ['Events'] = {
        generateSoundEvents = true, -- Set to true if you want the ped to generate sound events
        listensToSoundEvents = true, -- Set to true if you want the ped to listen to sound events
        checkLOSForSoundEvents = true, -- Set to true if you want the ped to check line of sight to generate/respond sound events
        disableWeirdPedEvents = false, -- Set to true if you want the ped to disable weird ped events
        disableCryForHelpEvents = false, -- Set to true if you want the ped to disable cry for help events
        usePerceptionForAimEvents = true, -- Set to true if you want the ped to use perception for aim events
        disableShockingEvents = false, -- Set to true if you want the ped to disable shocking events
        disableShockingDrivingEvents = false -- Set to true if you want the ped to disable shocking driving events
      },
      ['Pathing'] = {
        ['Avoidance'] = {
          avoidDrops = true, -- Set to true if you want the ped to avoid falls from height
          avoidFire = true, -- Set to true if you want the ped to avoid fire
          avoidPeds = true, -- Set to true if you want the ped to avoid other peds
          avoidTearGas = true, -- Set to true if you want the ped to avoid tear gas
          avoidWater = true -- Set to true if you want the ped to avoid water
        },
        ['Movement'] = {
          disableCrouch = false, -- Set to true if you want the ped to disable crouching
          disableDives = false, -- Set to true if you want the ped to disable evasive diving
          disableClimbing = false, -- Set to true if you want the ped to disable climbing over objects
          disableLadders = false -- Set to true if you want the ped to disable climbing ladders
        },
        ['Ragdolling'] = {
          canRagdoll = true, -- Set to true if you want the ped to be able to ragdoll
          pedImpact = true, -- Set to true if you want the ped to ragdoll from ped impacts
          vehicleImpact = true, -- Set to true if you want the ped to ragdoll from vehicle impacts
          bulletImpact = true, -- Set to true if you want the ped to ragdoll from bullet impacts
          explosion = true, -- Set to true if you want the ped to ragdoll from explosions
          fire = true, -- Set to true if you want the ped to ragdoll from fires
          electrocution = true, -- Set to true if you want the ped to ragdoll from being electrocuted
          objectImpact = true, -- Set to true if you want the ped to ragdoll from object impacts
          melee = true, -- Set to true if you want the ped to ragdoll from melee attacks
          waterjetImpact = true, -- Set to true if you want the ped to ragdoll from water jet impacts
          drowning = true, -- Set to true if you want the ped to ragdoll from drowning
          falling = true, -- Set to true if you want the ped to ragdoll from falling
          onBoats = true, -- Set to true if you want the ped to ragdoll from being on boats whilst they're moving
          rubberBullet = true, -- Set to true if you want the ped to ragdoll from rubber bullet impacts
          smokeGrenades = true, -- Set to true if you want the ped to ragdoll from smoke grenade impacts
          pedCollision = true, -- Set to true if you want the ped to ragdoll from ped collisions
          vehicleCollision = true, -- Set to true if you want the ped to ragdoll from vehicle collisions
          playerImpact = true, -- Set to true if you want the ped to ragdoll from player impacts
          aiRagdollImpact = true, -- Set to true if you want the ped to ragdoll from ai ragdoll impacts
          playerRagdollImpact = true, -- Set to true if you want the ped to ragdoll from player ragdoll impacts
          minorPlayerImpact = true, -- Set to true if you want the ped to ragdoll from minor player impacts
          ragdollOnDeath = true -- Set to true if you want the ped to ragdoll on death
        }
      },
      ['Relationships'] = { -- 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
        [0] = {'police', 'LEO', 'ambulance', 'fire', 'AMBIENT_GANG_HILLBILLY', 'Oneills_Ranch'}, -- Can be a table of jobs
        [1] = 'security', -- Or just a string
        [5] = 'PLAYER', -- Player specfies any player who doesn't have a job listed above
      }
    }
  }, {
    name = 'Oneills_Ranch',
    ['Enabled'] = {guards = true, patrols = true, vehicles = true},
    ['Routes'] = {
      guard = {
        {coords = vector3(2435.67, 4968.85, 42.35), heading = 316.42, scenario = 'WORLD_HUMAN_DRUG_PROCESSORS_COKE'}, -- Basement Processing Room
        {coords = vector3(2432.58, 4960.12, 46.82), heading = 318.32, scenario = 'WORLD_HUMAN_GUARD_STAND_CLUBHOUSE'} -- Basement Stairs
      },
      patrol = {
        { -- Top Floor Rotation
          {coords = vector3(2453.9, 4970.12, 51.57), heading = 183.9, stopTime = math.random(7500, 12500)},
          {coords = vector3(2460.72, 4976.71, 51.57), heading = 276.67, stopTime = math.random(7500, 12500)},
          {coords = vector3(2449.4, 4988.46, 51.57), heading = 2.1, stopTime = math.random(7500, 12500)},
          {coords = vector3(2434.74, 4973.68, 51.57), heading = 92.98, stopTime = math.random(7500, 12500)},
          {coords = vector3(2447.33, 4976.63, 51.56), heading = 316.31, stopTime = math.random(7500, 12500)}
        }, { -- Bottom Floor Rotation
          {coords = vector3(2432.42, 4975.99, 46.57), heading = 128.41, stopTime = math.random(7500, 12500)},
          {coords = vector3(2440.75, 4963.22, 46.81), heading = 220.25, stopTime = math.random(7500, 12500)},
          {coords = vector3(2447.6, 4963.3, 46.57), heading = 231.4, stopTime = math.random(7500, 12500)},
          {coords = vector3(2464.16, 4975.25, 46.57), heading = 304.5, stopTime = math.random(7500, 12500)},
          {coords = vector3(2447.25, 4991.27, 46.56), heading = 46.66, stopTime = math.random(7500, 12500)}
        }
      },
      vehicle = { -- https://vespura.com/fivem/drivingstyle/
        { -- Sanchez Property Rotation
          {coords = vector3(2436.89, 4991.56, 46.01), speed = 25.0, drivingStyle = 786432},
          {coords = vector3(2376.01, 4927.04, 42.42), speed = 25.0, drivingStyle = 786432},
          {coords = vector3(2494.14, 4819.83, 35.42), speed = 25.0, drivingStyle = 786432},
          {coords = vector3(2540.92, 4880.4, 37.57), speed = 25.0, drivingStyle = 786432},
          {coords = vector3(2481.42, 4994.92, 46.2), speed = 25.0, drivingStyle = 786432}
        }
      }
    },
    ['Peds'] = {
      guard = {
        {
          ['Base'] = {
            model = 'a_m_m_hillbilly_01', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_bottle', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 100, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 0, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 200.0, -- The range players can see the ped from
            id = 100.0, -- The range other peds can 'see' the ped from
            seeing = 100.0, -- The range the ped can see actions from
            hearing = 100.0, -- The range the ped can hear actions from
            shout = 100.0 -- The range the ped can communicate with other peds from
          }
        }, {
          ['Base'] = {
            model = 'a_m_m_hillbilly_02', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_sawnoffshotgun', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 100, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 250, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 200.0, -- The range players can see the ped from
            id = 100.0, -- The range other peds can 'see' the ped from
            seeing = 100.0, -- The range the ped can see actions from
            hearing = 100.0, -- The range the ped can hear actions from
            shout = 100.0 -- The range the ped can communicate with other peds from
          }
        }
      },
      patrol = {
        {
          ['Base'] = {
            model = 'ig_old_man2',
            weapon = 'weapon_pistol',
            health = 100,
            armour = 0,
            ammo = 250,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }, {
          ['Base'] = {
            model = 'u_m_o_taphillbilly',
            weapon = 'weapon_pistol',
            health = 100,
            armour = 0,
            ammo = 250,
            brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }
      },
      vehicle = {
        {  -- If passenger number is set below, each peds copies the config from below and applies that to the amount of passengers deinfed below.
          {
            ['Base'] = {
              model = 'a_m_m_hillbilly_01', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
              weapon = 'weapon_knife', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
              health = 100, -- Default Male Ped Health is 100-200 & Female is 0-100
              armour = 0, -- Range is 0-100
              ammo = 0, -- Ped only uses ammo if useDiminishingAmmo is true
              brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
              flags = {29, 32, 116, 151, 229, 241, 250, 366, 391, 398} -- This has it's best use for vehicles, as no vehicle flags are set by default
            },
            ['Ranges'] = {
              lod = 250.0, -- The range players can see the ped from
              id = 150.0, -- The range other peds can 'see' the ped from
              seeing = 150.0, -- The range the ped can see actions from
              hearing = 150.0, -- The range the ped can hear actions from
              shout = 150.0 -- The range the ped can communicate with other peds from
            }
          }, {
            ['Base'] = {
              model = 'u_m_o_taphillbilly',
              weapon = 'weapon_dbshotgun',
              health = 100,
              armour = 0,
              ammo = 250,
              brandish = true, -- Set to true if you want the ped to brandish their weapon when idle
              flags = {29, 32, 116, 151, 229, 241, 250, 184, 391, 398} -- This has it's best use for vehicles, as no vehicle flags are set by default
            },
            ['Ranges'] = {
              lod = 250.0,
              id = 150.0,
              seeing = 150.0,
              hearing = 150.0,
              shout = 150.0
            }
          }
        }
      }
    },
    ['Vehicles'] = {
      vehicle = {
        {
          ['Base'] = {
            model = 'manchez', -- https://docs.fivem.net/docs/game-references/vehicle-models/
            vehType = 'bike',
            passengers = false, -- Can be omitted, will default to the table length of the peds array above
            lockType = 3, -- 0 = None, 1 = Unlocked, 2 = Locked, 3 = LockedForPlayer, 4 = LockedPlayerInside, 5 = LockedInitially
            health = 1000.0,
            dirtLevel = 15.0,
            plate = 'ONIELLS'
          }
        }
      }
    },
    ['Settings'] = {
      ['Behavior'] = {
        ignoreMelee = false, -- Set to true if you want the ped not react to melee actions
        ignoreFire = false, -- Set to true if you want the ped not react to fire
        ignoreBeingJacked = false, -- Set to true if you want the ped not react to being jacked
        ignoreSilencedClone = true, -- Set to true if you want the ped not react to silenced weapons
        ignoreExplosion = false, -- Set to true if you want the ped not react to explosions
        preventMeleeTaunts = false, -- Set to true if you want the ped not melee taunt
        disableHurt = false, -- Set to true if you want the ped not have hurt reactions
        disableWrithe = false, -- Set to true if you want the ped not writhe on the ground
        preferInjuredGetup = false, -- Set to true if you want the ped to prefer getting up from an injured state
        onlyWritheFromWeapon = false, -- Set to true if you want the ped to only writhe from weapon damage
        runFromFires = true, -- Set to true if you want the ped to run from fires
        dontShoutTarget = false, -- Set to true if you want the ped to not communicate their targets postion
        dontCryForHelp = false -- Set to true if you want the ped to not call for help when injured
      },
      ['Blips'] = {
        enabled = true, -- Set to true if you want the ped to have a blip
        hasCone = false, -- Whether the blip has a view cone on the minimap whilst active
        colour = 1, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        range = 50.0, -- The range the blip can be activated from
        clearOnDeath = true
      },
      ['Combat'] = {
        attributes = {5, 13, 46, 61}, -- https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201
        ability = 60, -- 0-50 = Poor, 50-75 = Average, 75+ = Professional
        accuracy = 40, -- 0 - 100
        alertness = 1, -- 0 = Calm, 3 = Paranoid
        movement = 2, -- 0 = Stationary, 1 = Defensive, 2 = WillAdvance, 3 = WillRetreat
        range = 1, -- 0 = Near, 1 = Medium, 2 = Far, 3 = VeryFar
        targetResponse = 2, -- 0 = Exist Task, 1 = Never Lose target, 2 = Search For Target
        canAttackFriendly = false, -- Whether the ped can attack friendly peds
        canUseCover = true, -- Whether the ped can use cover
        useDiminishingAmmo = true, -- Set false for the ped to have infinite ammo, true to use ammo declared in ['Peds']['Base'].ammo
        blockWeaponSwitching = false, -- Whether the ped can switch weapons
        enableWeaponBlocking = false, -- Whether the ped can block weapon attacks
        keepWeaponHolstered = true, -- Whether the ped will keep their weapon holstered until fired
        disableMelee = false, -- Whether the ped can use melee attacks
        disableUnarmedDriveby = false, -- Whether the ped can use unarmed drivebys
        disableWritheShooting = false, -- Whether the ped can shoot whilst writheing on the ground
        respondToHelpCries = true, -- Whether the ped will respond to help cries
        seeApproachingVehicles = true, -- Whether the ped can always see approaching vehicles
        treatDislikeAsHated = true, -- Whether the ped will treat dislike as hated (Relationship type 4)
        treatNonFriendlyAsHated = false, -- Whether the ped will treat non friendly as hated (Any Relationship from 3 and above)
        broadcastGoingToThreat = true -- Whether the ped will broadcast that they are going to a threat
      },
      ['Damages'] = {
        diesWhenInjured = false, -- Set to true if you want the ped to die when injured
        incapacitation = true, -- Set to true if you want the ped to writhe when injured
        criticals = true, -- Set to true if you want the ped to suffer critical hits
        bullets = true, -- Set to true if you want the ped to suffer bullet damage
        fire = true, -- Set to true if you want the ped to suffer fire damage
        explosion = true, -- Set to true if you want the ped to suffer explosion damage
        collision = true, -- Set to true if you want the ped to suffer collision damage
        steam = true, -- Set to true if you want the ped to suffer steam damage
        melee = true, -- Set to true if you want the ped to suffer melee damage
        drown = true, -- Set to true if you want the ped to drown
        electric = true, -- Set to true if you want the ped to suffer electric damage
        ragdoll = false, -- Set to true if you want the ped to die when ragdolled
        invincible = false -- Set to true if you want the ped to be invincible
      },
      ['Drops'] = {
        weapons = false, -- Set to true if you want the ped to drop their weapon when killed
        healthSnacks = false -- Set to true if you want the ped to drop a health snack when killed
      },
      ['Events'] = {
        generateSoundEvents = true, -- Set to true if you want the ped to generate sound events
        listensToSoundEvents = true, -- Set to true if you want the ped to listen to sound events
        checkLOSForSoundEvents = true, -- Set to true if you want the ped to check line of sight to generate/respond sound events
        disableWeirdPedEvents = false, -- Set to true if you want the ped to disable weird ped events
        disableCryForHelpEvents = false, -- Set to true if you want the ped to disable cry for help events
        usePerceptionForAimEvents = true, -- Set to true if you want the ped to use perception for aim events
        disableShockingEvents = false, -- Set to true if you want the ped to disable shocking events
        disableShockingDrivingEvents = false -- Set to true if you want the ped to disable shocking driving events
      },
      ['Pathing'] = {
        ['Avoidance'] = {
          avoidDrops = true, -- Set to true if you want the ped to avoid falls from height
          avoidFire = true, -- Set to true if you want the ped to avoid fire
          avoidPeds = true, -- Set to true if you want the ped to avoid other peds
          avoidTearGas = true, -- Set to true if you want the ped to avoid tear gas
          avoidWater = true -- Set to true if you want the ped to avoid water
        },
        ['Movement'] = {
          disableCrouch = false, -- Set to true if you want the ped to disable crouching
          disableDives = false, -- Set to true if you want the ped to disable evasive diving
          disableClimbing = false, -- Set to true if you want the ped to disable climbing over objects
          disableLadders = false -- Set to true if you want the ped to disable climbing ladders
        },
        ['Ragdolling'] = {
          canRagdoll = true, -- Set to true if you want the ped to be able to ragdoll
          pedImpact = true, -- Set to true if you want the ped to ragdoll from ped impacts
          vehicleImpact = true, -- Set to true if you want the ped to ragdoll from vehicle impacts
          bulletImpact = true, -- Set to true if you want the ped to ragdoll from bullet impacts
          explosion = true, -- Set to true if you want the ped to ragdoll from explosions
          fire = true, -- Set to true if you want the ped to ragdoll from fires
          electrocution = true, -- Set to true if you want the ped to ragdoll from being electrocuted
          objectImpact = true, -- Set to true if you want the ped to ragdoll from object impacts
          melee = true, -- Set to true if you want the ped to ragdoll from melee attacks
          waterjetImpact = true, -- Set to true if you want the ped to ragdoll from water jet impacts
          drowning = true, -- Set to true if you want the ped to ragdoll from drowning
          falling = true, -- Set to true if you want the ped to ragdoll from falling
          onBoats = true, -- Set to true if you want the ped to ragdoll from being on boats whilst they're moving
          rubberBullet = true, -- Set to true if you want the ped to ragdoll from rubber bullet impacts
          smokeGrenades = true, -- Set to true if you want the ped to ragdoll from smoke grenade impacts
          pedCollision = true, -- Set to true if you want the ped to ragdoll from ped collisions
          vehicleCollision = true, -- Set to true if you want the ped to ragdoll from vehicle collisions
          playerImpact = true, -- Set to true if you want the ped to ragdoll from player impacts
          aiRagdollImpact = true, -- Set to true if you want the ped to ragdoll from ai ragdoll impacts
          playerRagdollImpact = true, -- Set to true if you want the ped to ragdoll from player ragdoll impacts
          minorPlayerImpact = true, -- Set to true if you want the ped to ragdoll from minor player impacts
          ragdollOnDeath = true -- Set to true if you want the ped to ragdoll on death
        }
      },
      ['Relationships'] = { -- 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
        [0] = {'police', 'LEO', 'ambulance', 'fire', 'AMBIENT_GANG_HILLBILLY', 'Grapeseed_Weed_Farm'}, -- Can be a table of jobs
        [1] = 'security', -- Or just a string
        [5] = 'PLAYER', -- Player specfies any player who doesn't have a job listed above
      }
    }
  }, {
    name = 'Madrazos_Ranch',
    ['Enabled'] = {guards = true, patrols = true, vehicles = true},
    ['Routes'] = {
      guard = {
        {coords = vector3(1414.07, 1138.14, 114.33), heading = 258.63, scenario = 'WORLD_HUMAN_GARDENER_LEAF_BLOWER'}, -- Backyard Courtyard
        {coords = vector3(1382.75, 1168.57, 114.48), heading = 312.77, scenario = 'WORLD_HUMAN_GARDENER_PLANT'} -- Frontyard Golf Garden
      },
      patrol = {
        { -- South Pens Rotation
          {coords = vector3(1409.48, 1105.42, 114.29), heading = 182.12, stopTime = math.random(8000, 10000)},
          {coords = vector3(1394.08, 1084.72, 114.33), heading = 273.59, stopTime = math.random(8000, 10000)},
          {coords = vector3(1464.44, 1082.77, 114.33), heading = 180.16, stopTime = math.random(8000, 10000)},
          {coords = vector3(1465.42, 1047.96, 114.33), heading = 4.58, stopTime = math.random(8000, 10000)},
          {coords = vector3(1490.08, 1047.2, 114.33), heading = 4.58, stopTime = math.random(8000, 10000)},
          {coords = vector3(1481.35, 1091.73, 114.33), heading = 1.92, stopTime = math.random(8000, 10000)},
          {coords = vector3(1438.16, 1105.89, 114.12), heading = 94.67, stopTime = math.random(8000, 10000)}
        }, { -- North Pens Rotation
          {coords = vector3(1482.77, 1129.84, 114.33), heading = 94.67, stopTime = math.random(8000, 10000)},
          {coords = vector3(1474.28, 1174.85, 114.33), heading = 8.79, stopTime = math.random(8000, 10000)},
          {coords = vector3(1440.49, 1175.31, 114.33), heading = 97.39, stopTime = math.random(8000, 10000)},
          {coords = vector3(1442.92, 1131.99, 114.33), heading = 179.6, stopTime = math.random(8000, 10000)}
        }
      },
      vehicle = { -- https://vespura.com/fivem/drivingstyle/
        { -- Mesa Property Rotation
          {coords = vector3(1412.49, 1116.7, 114.84), speed = 10.0, drivingStyle = 262716},
          {coords = vector3(1431.78, 1095.73, 114.25), speed = 10.0, drivingStyle = 262716},
          {coords = vector3(1496.36, 1033.03, 113.68), speed = 10.0, drivingStyle = 262716},
          {coords = vector3(1503.51, 1169.32, 113.72), speed = 10.0, drivingStyle = 262716},
          {coords = vector3(1380.46, 1188.5, 112.74), speed = 10.0, drivingStyle = 262716},
          {coords = vector3(1352.54, 1145.55, 113.27), speed = 10.0, drivingStyle = 262716}
        }
      }
    },
    ['Peds'] = {
      guard = {
        {
          ['Base'] = {
            model = 's_m_m_gardener_01', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_hammer', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 100, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 0, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 200.0, -- The range players can see the ped from
            id = 100.0, -- The range other peds can 'see' the ped from
            seeing = 100.0, -- The range the ped can see actions from
            hearing = 100.0, -- The range the ped can hear actions from
            shout = 100.0 -- The range the ped can communicate with other peds from
          }
        }, {
          ['Base'] = {
            model = 's_m_m_gardener_01', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_golfclub', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 100, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 0, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 200.0, -- The range players can see the ped from
            id = 100.0, -- The range other peds can 'see' the ped from
            seeing = 100.0, -- The range the ped can see actions from
            hearing = 100.0, -- The range the ped can hear actions from
            shout = 100.0 -- The range the ped can communicate with other peds from
          }
        }
      },
      patrol = {
        {
          ['Base'] = {
            model = 'g_m_y_pologoon_01',
            weapon = 'WEAPON_UNARMED',
            health = 150,
            armour = 0,
            ammo = 250,
            brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }, {
          ['Base'] = {
            model = 'g_m_y_pologoon_02',
            weapon = 'weapon_pistol',
            health = 100,
            armour = 0,
            ammo = 250,
            brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }
      },
      vehicle = {
        {  -- If passenger number is set below, each peds copies the config from below and applies that to the amount of passengers deinfed below.
          ['Base'] = {
            model = 'g_m_y_pologoon_01', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_microsmg', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 100, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 500, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
            flags = {29, 32, 116, 151, 229, 241, 250, 366, 391, 398} -- This has it's best use for vehicles, as no vehicle flags are set by default
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }
      }
    },
    ['Vehicles'] = {
      vehicle = {
        {
          ['Base'] = {
            model = 'mesa', -- https://docs.fivem.net/docs/game-references/vehicle-models/
            vehType = 'automobile',
            passengers = 2, -- Can be omitted, will default to the table length of the peds array above
            lockType = 3, -- 0 = None, 1 = Unlocked, 2 = Locked, 3 = LockedForPlayer, 4 = LockedPlayerInside, 5 = LockedInitially
            health = 1000.0,
            dirtLevel = 10.0,
            plate = 'MADRAZO'
          }
        }
      }
    },
    ['Settings'] = {
      ['Behavior'] = {
        ignoreMelee = false, -- Set to true if you want the ped not react to melee actions
        ignoreFire = false, -- Set to true if you want the ped not react to fire
        ignoreBeingJacked = false, -- Set to true if you want the ped not react to being jacked
        ignoreSilencedClone = true, -- Set to true if you want the ped not react to silenced weapons
        ignoreExplosion = false, -- Set to true if you want the ped not react to explosions
        preventMeleeTaunts = false, -- Set to true if you want the ped not melee taunt
        disableHurt = false, -- Set to true if you want the ped not have hurt reactions
        disableWrithe = false, -- Set to true if you want the ped not writhe on the ground
        preferInjuredGetup = false, -- Set to true if you want the ped to prefer getting up from an injured state
        onlyWritheFromWeapon = false, -- Set to true if you want the ped to only writhe from weapon damage
        runFromFires = true, -- Set to true if you want the ped to run from fires
        dontShoutTarget = false, -- Set to true if you want the ped to not communicate their targets postion
        dontCryForHelp = false -- Set to true if you want the ped to not call for help when injured
      },
      ['Blips'] = {
        enabled = true, -- Set to true if you want the ped to have a blip
        hasCone = false, -- Whether the blip has a view cone on the minimap whilst active
        colour = 1, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        range = 50.0, -- The range the blip can be activated from
        clearOnDeath = true
      },
      ['Combat'] = {
        attributes = {5, 13, 14, 21, 46, 50, 61}, -- https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201
        ability = 80, -- 0-50 = Poor, 50-75 = Average, 75+ = Professional
        accuracy = 60, -- 0 - 100
        alertness = 2, -- 0 = Calm, 3 = Paranoid
        movement = 2, -- 0 = Stationary, 1 = Defensive, 2 = WillAdvance, 3 = WillRetreat
        range = 2, -- 0 = Near, 1 = Medium, 2 = Far, 3 = VeryFar
        targetResponse = 2, -- 0 = Exist Task, 1 = Never Lose target, 2 = Search For Target
        canAttackFriendly = false, -- Whether the ped can attack friendly peds
        canUseCover = true, -- Whether the ped can use cover
        useDiminishingAmmo = true, -- Set false for the ped to have infinite ammo, true to use ammo declared in ['Peds']['Base'].ammo
        blockWeaponSwitching = false, -- Whether the ped can switch weapons
        enableWeaponBlocking = false, -- Whether the ped can block weapon attacks
        keepWeaponHolstered = true, -- Whether the ped will keep their weapon holstered until fired
        disableMelee = false, -- Whether the ped can use melee attacks
        disableUnarmedDriveby = false, -- Whether the ped can use unarmed drivebys
        disableWritheShooting = false, -- Whether the ped can shoot whilst writheing on the ground
        respondToHelpCries = true, -- Whether the ped will respond to help cries
        seeApproachingVehicles = true, -- Whether the ped can always see approaching vehicles
        treatDislikeAsHated = true, -- Whether the ped will treat dislike as hated (Relationship type 4)
        treatNonFriendlyAsHated = true, -- Whether the ped will treat non friendly as hated (Any Relationship from 3 and above)
        broadcastGoingToThreat = true -- Whether the ped will broadcast that they are going to a threat
      },
      ['Damages'] = {
        diesWhenInjured = false, -- Set to true if you want the ped to die when injured
        incapacitation = true, -- Set to true if you want the ped to writhe when injured
        criticals = true, -- Set to true if you want the ped to suffer critical hits
        bullets = true, -- Set to true if you want the ped to suffer bullet damage
        fire = true, -- Set to true if you want the ped to suffer fire damage
        explosion = true, -- Set to true if you want the ped to suffer explosion damage
        collision = true, -- Set to true if you want the ped to suffer collision damage
        steam = true, -- Set to true if you want the ped to suffer steam damage
        melee = true, -- Set to true if you want the ped to suffer melee damage
        drown = true, -- Set to true if you want the ped to drown
        electric = true, -- Set to true if you want the ped to suffer electric damage
        ragdoll = false, -- Set to true if you want the ped to die when ragdolled
        invincible = false -- Set to true if you want the ped to be invincible
      },
      ['Drops'] = {
        weapons = false, -- Set to true if you want the ped to drop their weapon when killed
        healthSnacks = false -- Set to true if you want the ped to drop a health snack when killed
      },
      ['Events'] = {
        generateSoundEvents = true, -- Set to true if you want the ped to generate sound events
        listensToSoundEvents = true, -- Set to true if you want the ped to listen to sound events
        checkLOSForSoundEvents = true, -- Set to true if you want the ped to check line of sight to generate/respond sound events
        disableWeirdPedEvents = false, -- Set to true if you want the ped to disable weird ped events
        disableCryForHelpEvents = false, -- Set to true if you want the ped to disable cry for help events
        usePerceptionForAimEvents = true, -- Set to true if you want the ped to use perception for aim events
        disableShockingEvents = false, -- Set to true if you want the ped to disable shocking events
        disableShockingDrivingEvents = false -- Set to true if you want the ped to disable shocking driving events
      },
      ['Pathing'] = {
        ['Avoidance'] = {
          avoidDrops = true, -- Set to true if you want the ped to avoid falls from height
          avoidFire = true, -- Set to true if you want the ped to avoid fire
          avoidPeds = true, -- Set to true if you want the ped to avoid other peds
          avoidTearGas = true, -- Set to true if you want the ped to avoid tear gas
          avoidWater = true -- Set to true if you want the ped to avoid water
        },
        ['Movement'] = {
          disableCrouch = false, -- Set to true if you want the ped to disable crouching
          disableDives = false, -- Set to true if you want the ped to disable evasive diving
          disableClimbing = false, -- Set to true if you want the ped to disable climbing over objects
          disableLadders = false -- Set to true if you want the ped to disable climbing ladders
        },
        ['Ragdolling'] = {
          canRagdoll = true, -- Set to true if you want the ped to be able to ragdoll
          pedImpact = true, -- Set to true if you want the ped to ragdoll from ped impacts
          vehicleImpact = true, -- Set to true if you want the ped to ragdoll from vehicle impacts
          bulletImpact = true, -- Set to true if you want the ped to ragdoll from bullet impacts
          explosion = true, -- Set to true if you want the ped to ragdoll from explosions
          fire = true, -- Set to true if you want the ped to ragdoll from fires
          electrocution = true, -- Set to true if you want the ped to ragdoll from being electrocuted
          objectImpact = true, -- Set to true if you want the ped to ragdoll from object impacts
          melee = true, -- Set to true if you want the ped to ragdoll from melee attacks
          waterjetImpact = true, -- Set to true if you want the ped to ragdoll from water jet impacts
          drowning = true, -- Set to true if you want the ped to ragdoll from drowning
          falling = true, -- Set to true if you want the ped to ragdoll from falling
          onBoats = true, -- Set to true if you want the ped to ragdoll from being on boats whilst they're moving
          rubberBullet = true, -- Set to true if you want the ped to ragdoll from rubber bullet impacts
          smokeGrenades = true, -- Set to true if you want the ped to ragdoll from smoke grenade impacts
          pedCollision = true, -- Set to true if you want the ped to ragdoll from ped collisions
          vehicleCollision = true, -- Set to true if you want the ped to ragdoll from vehicle collisions
          playerImpact = true, -- Set to true if you want the ped to ragdoll from player impacts
          aiRagdollImpact = true, -- Set to true if you want the ped to ragdoll from ai ragdoll impacts
          playerRagdollImpact = true, -- Set to true if you want the ped to ragdoll from player ragdoll impacts
          minorPlayerImpact = true, -- Set to true if you want the ped to ragdoll from minor player impacts
          ragdollOnDeath = true -- Set to true if you want the ped to ragdoll on death
        }
      },
      ['Relationships'] = { -- 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
        [0] = {'police', 'LEO', 'ambulance', 'fire', 'AMBIENT_GANG_MEXICAN'}, -- Can be a table of jobs
        [1] = 'security', -- Or just a string
        [5] = 'PLAYER', -- Player specfies any player who doesn't have a job listed above
      }
    }
  }, {
    name = 'Cayo_Airport',
    ['Enabled'] = {guards = false, patrols = false, vehicles = false},
    ['Routes'] = {
      guard = {
        {coords = vector3(1414.07, 1138.14, 114.33), heading = 258.63, scenario = 'WORLD_HUMAN_GARDENER_LEAF_BLOWER'}, -- Backyard Courtyard
        {coords = vector3(1382.75, 1168.57, 114.48), heading = 312.77, scenario = 'WORLD_HUMAN_GARDENER_PLANT'} -- Frontyard Golf Garden
      },
      patrol = {
        { -- South Pens Rotation
          {coords = vector3(1409.48, 1105.42, 114.29), heading = 182.12, stopTime = math.random(8000, 10000)},
          {coords = vector3(1394.08, 1084.72, 114.33), heading = 273.59, stopTime = math.random(8000, 10000)},
          {coords = vector3(1464.44, 1082.77, 114.33), heading = 180.16, stopTime = math.random(8000, 10000)},
          {coords = vector3(1465.42, 1047.96, 114.33), heading = 4.58, stopTime = math.random(8000, 10000)},
          {coords = vector3(1490.08, 1047.2, 114.33), heading = 4.58, stopTime = math.random(8000, 10000)},
          {coords = vector3(1481.35, 1091.73, 114.33), heading = 1.92, stopTime = math.random(8000, 10000)},
          {coords = vector3(1438.16, 1105.89, 114.12), heading = 94.67, stopTime = math.random(8000, 10000)}
        }, { -- North Pens Rotation
          {coords = vector3(1482.77, 1129.84, 114.33), heading = 94.67, stopTime = math.random(8000, 10000)},
          {coords = vector3(1474.28, 1174.85, 114.33), heading = 8.79, stopTime = math.random(8000, 10000)},
          {coords = vector3(1440.49, 1175.31, 114.33), heading = 97.39, stopTime = math.random(8000, 10000)},
          {coords = vector3(1442.92, 1131.99, 114.33), heading = 179.6, stopTime = math.random(8000, 10000)}
        }
      },
      vehicle = { -- https://vespura.com/fivem/drivingstyle/
        { -- Mesa Property Rotation
          {coords = vector3(1412.49, 1116.7, 114.84), speed = 10.0, drivingStyle = 262716},
          {coords = vector3(1431.78, 1095.73, 114.25), speed = 10.0, drivingStyle = 262716},
          {coords = vector3(1496.36, 1033.03, 113.68), speed = 10.0, drivingStyle = 262716},
          {coords = vector3(1503.51, 1169.32, 113.72), speed = 10.0, drivingStyle = 262716},
          {coords = vector3(1380.46, 1188.5, 112.74), speed = 10.0, drivingStyle = 262716},
          {coords = vector3(1352.54, 1145.55, 113.27), speed = 10.0, drivingStyle = 262716}
        }
      }
    },
    ['Peds'] = {
      guard = {
        {
          ['Base'] = {
            model = 's_m_m_gardener_01', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_hammer', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 100, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 0, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 200.0, -- The range players can see the ped from
            id = 100.0, -- The range other peds can 'see' the ped from
            seeing = 100.0, -- The range the ped can see actions from
            hearing = 100.0, -- The range the ped can hear actions from
            shout = 100.0 -- The range the ped can communicate with other peds from
          }
        }, {
          ['Base'] = {
            model = 's_m_m_gardener_01', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_golfclub', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 100, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 0, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {} -- Can be used to set certain flags uniquely on peds, be careful however as most global patrol settings already utilise these below | https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags
          },
          ['Ranges'] = {
            lod = 200.0, -- The range players can see the ped from
            id = 100.0, -- The range other peds can 'see' the ped from
            seeing = 100.0, -- The range the ped can see actions from
            hearing = 100.0, -- The range the ped can hear actions from
            shout = 100.0 -- The range the ped can communicate with other peds from
          }
        }
      },
      patrol = {
        {
          ['Base'] = {
            model = 'g_m_y_pologoon_01',
            weapon = 'WEAPON_UNARMED',
            health = 150,
            armour = 0,
            ammo = 250,
            brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }, {
          ['Base'] = {
            model = 'g_m_y_pologoon_02',
            weapon = 'weapon_pistol',
            health = 100,
            armour = 0,
            ammo = 250,
            brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
            -- flags = {}
          },
          ['Ranges'] = {
            lod = 250.0,
            id = 150.0,
            seeing = 150.0,
            hearing = 150.0,
            shout = 150.0
          }
        }
      },
      vehicle = {
        {  -- If passenger number is set below, each peds copies the config from below and applies that to the amount of passengers deinfed below.
          ['Base'] = {
            model = 'g_m_y_pologoon_01', -- Can be either a string or hash of the model ie. ('s_m_m_marine_01', `s_m_m_marine_01` or -220552467) | https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini
            weapon = 'weapon_microsmg', -- https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini
            health = 100, -- Default Male Ped Health is 100-200 & Female is 0-100
            armour = 0, -- Range is 0-100
            ammo = 500, -- Ped only uses ammo if useDiminishingAmmo is true
            brandish = false, -- Set to true if you want the ped to brandish their weapon when idle
            flags = {29, 32, 116, 151, 229, 241, 250, 366, 391, 398} -- This has it's best use for vehicles, as no vehicle flags are set by default
          },
          ['Ranges'] = {
            lod = 250.0, -- The range players can see the ped from
            id = 150.0, -- The range other peds can 'see' the ped from
            seeing = 150.0, -- The range the ped can see actions from
            hearing = 150.0, -- The range the ped can hear actions from
            shout = 150.0 -- The range the ped can communicate with other peds from
          }
        }
      }
    },
    ['Vehicles'] = {
      vehicle = {
        {
          ['Base'] = {
            model = 'mesa', -- https://docs.fivem.net/docs/game-references/vehicle-models/
            vehType = 'automobile',
            passengers = 2, -- Can be omitted, will default to the table length of the peds array above
            lockType = 3, -- 0 = None, 1 = Unlocked, 2 = Locked, 3 = LockedForPlayer, 4 = LockedPlayerInside, 5 = LockedInitially
            health = 1000.0,
            dirtLevel = 10.0,
            plate = 'MADRAZO'
          }
        }
      }
    },
    ['Settings'] = {
      ['Behavior'] = {
        ignoreMelee = false, -- Set to true if you want the ped not react to melee actions
        ignoreFire = false, -- Set to true if you want the ped not react to fire
        ignoreBeingJacked = false, -- Set to true if you want the ped not react to being jacked
        ignoreSilencedClone = true, -- Set to true if you want the ped not react to silenced weapons
        ignoreExplosion = false, -- Set to true if you want the ped not react to explosions
        preventMeleeTaunts = false, -- Set to true if you want the ped not melee taunt
        disableHurt = false, -- Set to true if you want the ped not have hurt reactions
        disableWrithe = false, -- Set to true if you want the ped not writhe on the ground
        preferInjuredGetup = false, -- Set to true if you want the ped to prefer getting up from an injured state
        onlyWritheFromWeapon = false, -- Set to true if you want the ped to only writhe from weapon damage
        runFromFires = false, -- Set to true if you want the ped to run from fires
        dontShoutTarget = false, -- Set to true if you want the ped to not communicate their targets postion
        dontCryForHelp = false -- Set to true if you want the ped to not call for help when injured
      },
      ['Blips'] = {
        enabled = true, -- Set to true if you want the ped to have a blip
        hasCone = false, -- Whether the blip has a view cone on the minimap whilst active
        colour = 1, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        range = 50.0, -- The range the blip can be activated from
        clearOnDeath = true
      },
      ['Combat'] = {
        attributes = {5, 13, 14, 22, 46, 50, 61}, -- https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201
        ability = 50, -- 0-50 = Poor, 50-75 = Average, 75+ = Professional
        accuracy = 80, -- 0 - 100
        alertness = 3, -- 0 = Calm, 3 = Paranoid
        movement = 2, -- 0 = Stationary, 1 = Defensive, 2 = WillAdvance, 3 = WillRetreat
        range = 2, -- 0 = Near, 1 = Medium, 2 = Far, 3 = VeryFar
        targetResponse = 2, -- 0 = Exist Task, 1 = Never Lose target, 2 = Search For Target
        canAttackFriendly = false, -- Whether the ped can attack friendly peds
        canUseCover = true, -- Whether the ped can use cover
        useDiminishingAmmo = true, -- Set false for the ped to have infinite ammo, true to use ammo declared in ['Peds']['Base'].ammo
        blockWeaponSwitching = false, -- Whether the ped can switch weapons
        enableWeaponBlocking = false, -- Whether the ped can block weapon attacks
        keepWeaponHolstered = false, -- Whether the ped will keep their weapon holstered until fired
        disableMelee = false, -- Whether the ped can use melee attacks
        disableUnarmedDriveby = false, -- Whether the ped can use unarmed drivebys
        disableWritheShooting = false, -- Whether the ped can shoot whilst writheing on the ground
        respondToHelpCries = true, -- Whether the ped will respond to help cries
        seeApproachingVehicles = true, -- Whether the ped can always see approaching vehicles
        treatDislikeAsHated = true, -- Whether the ped will treat dislike as hated (Relationship type 4)
        treatNonFriendlyAsHated = true, -- Whether the ped will treat non friendly as hated (Any Relationship from 3 and above)
        broadcastGoingToThreat = true -- Whether the ped will broadcast that they are going to a threat
      },
      ['Damages'] = {
        diesWhenInjured = false, -- Set to true if you want the ped to die when injured
        incapacitation = true, -- Set to true if you want the ped to writhe when injured
        criticals = true, -- Set to true if you want the ped to suffer critical hits
        bullets = true, -- Set to true if you want the ped to suffer bullet damage
        fire = true, -- Set to true if you want the ped to suffer fire damage
        explosion = true, -- Set to true if you want the ped to suffer explosion damage
        collision = true, -- Set to true if you want the ped to suffer collision damage
        steam = true, -- Set to true if you want the ped to suffer steam damage
        melee = true, -- Set to true if you want the ped to suffer melee damage
        drown = true, -- Set to true if you want the ped to drown
        electric = true, -- Set to true if you want the ped to suffer electric damage
        ragdoll = false, -- Set to true if you want the ped to die when ragdolled
        invincible = false -- Set to true if you want the ped to be invincible
      },
      ['Drops'] = {
        weapons = false, -- Set to true if you want the ped to drop their weapon when killed
        healthSnacks = false -- Set to true if you want the ped to drop a health snack when killed
      },
      ['Events'] = {
        generateSoundEvents = true, -- Set to true if you want the ped to generate sound events
        listensToSoundEvents = true, -- Set to true if you want the ped to listen to sound events
        checkLOSForSoundEvents = true, -- Set to true if you want the ped to check line of sight to generate/respond sound events
        disableWeirdPedEvents = false, -- Set to true if you want the ped to disable weird ped events
        disableCryForHelpEvents = false, -- Set to true if you want the ped to disable cry for help events
        usePerceptionForAimEvents = true, -- Set to true if you want the ped to use perception for aim events
        disableShockingEvents = false, -- Set to true if you want the ped to disable shocking events
        disableShockingDrivingEvents = false -- Set to true if you want the ped to disable shocking driving events
      },
      ['Pathing'] = {
        ['Avoidance'] = {
          avoidDrops = true, -- Set to true if you want the ped to avoid falls from height
          avoidFire = true, -- Set to true if you want the ped to avoid fire
          avoidPeds = true, -- Set to true if you want the ped to avoid other peds
          avoidTearGas = true, -- Set to true if you want the ped to avoid tear gas
          avoidWater = true -- Set to true if you want the ped to avoid water
        },
        ['Movement'] = {
          disableCrouch = false, -- Set to true if you want the ped to disable crouching
          disableDives = false, -- Set to true if you want the ped to disable evasive diving
          disableClimbing = false, -- Set to true if you want the ped to disable climbing over objects
          disableLadders = false -- Set to true if you want the ped to disable climbing ladders
        },
        ['Ragdolling'] = {
          canRagdoll = true, -- Set to true if you want the ped to be able to ragdoll
          pedImpact = true, -- Set to true if you want the ped to ragdoll from ped impacts
          vehicleImpact = true, -- Set to true if you want the ped to ragdoll from vehicle impacts
          bulletImpact = true, -- Set to true if you want the ped to ragdoll from bullet impacts
          explosion = true, -- Set to true if you want the ped to ragdoll from explosions
          fire = true, -- Set to true if you want the ped to ragdoll from fires
          electrocution = true, -- Set to true if you want the ped to ragdoll from being electrocuted
          objectImpact = true, -- Set to true if you want the ped to ragdoll from object impacts
          melee = true, -- Set to true if you want the ped to ragdoll from melee attacks
          waterjetImpact = true, -- Set to true if you want the ped to ragdoll from water jet impacts
          drowning = true, -- Set to true if you want the ped to ragdoll from drowning
          falling = true, -- Set to true if you want the ped to ragdoll from falling
          onBoats = true, -- Set to true if you want the ped to ragdoll from being on boats whilst they're moving
          rubberBullet = true, -- Set to true if you want the ped to ragdoll from rubber bullet impacts
          smokeGrenades = true, -- Set to true if you want the ped to ragdoll from smoke grenade impacts
          pedCollision = true, -- Set to true if you want the ped to ragdoll from ped collisions
          vehicleCollision = true, -- Set to true if you want the ped to ragdoll from vehicle collisions
          playerImpact = true, -- Set to true if you want the ped to ragdoll from player impacts
          aiRagdollImpact = true, -- Set to true if you want the ped to ragdoll from ai ragdoll impacts
          playerRagdollImpact = true, -- Set to true if you want the ped to ragdoll from player ragdoll impacts
          minorPlayerImpact = true, -- Set to true if you want the ped to ragdoll from minor player impacts
          ragdollOnDeath = true -- Set to true if you want the ped to ragdoll on death
        }
      },
      ['Relationships'] = { -- 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
        [5] = 'PLAYER', -- Player specfies any player who doesn't have a job listed above
      }
    }
  }
}

--   [5] = { -- Cayo Perico // 1st Town
--     name = 'Cayo_Perico_1', -- Name of the location // Make sure it's unique and doesn't have any spaces (i.e. Grapeseed_Weed_Farm, Humane_Labs, etc.)
--     activePatrols = true, -- Set true if you want patrols for this location
--     activeGuards = true, -- Set true if you want guards for this location
--     activeVehicles = true, -- Set true if you want vehicles for this location
--     models = { -- Models to use for the patrols (peds are randomly selected) // Vehicles are selected in order, i.e. the first vehicle patrols the first veh patrol route.
--       peds = { -- https://docs.fivem.net/docs/game-references/ped-models/
--         `g_m_y_mexgoon_01`,
--         `g_m_y_pologoon_01`,
--         `g_m_y_mexgang_01`,
--       },
--       vehs = { -- https://docs.fivem.net/docs/game-references/vehicle-models/
--         `dune`,
--       },
--     },
--     stopTime = {10000, 15000}, -- Time to wait at each patrol point (in milliseconds) // Randomly selected between the two numbers
--     patrols = { -- Patrol points
--       ped = { -- Ped patrols from 1 to 2, 2 to 3, 3 to 4 and back to 1, etc. // Add as many patrols and points as you want
--         [1] = {
--           [1] = {vector3(5048.24, -4595.33, 2.93), vector3(5047.48, -4598.01, 2.93)},
--           [2] = {vector3(5076.69, -4606.03, 2.94), vector3(5075.96, -4609.74, 2.7)},
--           [3] = {vector3(5103.63, -4610.92, 2.42), vector3(5103.14, -4613.7, 2.43)},
--           [4] = {vector3(5146.23, -4623.33, 2.28), vector3(5145.47, -4626.95, 2.43)},
--           [5] = {vector3(5157.5, -4639.53, 2.64), vector3(5157.18, -4640.61, 2.64)},
--           [6] = {vector3(5132.34, -4643.26, 1.41), vector3(5131.85, -4645.13, 1.41)},
--           [7] = {vector3(5116.31, -4638.97, 1.41), vector3(5116.01, -4640.15, 1.41)},
--           [8] = {vector3(5080.77, -4626.92, 2.48), vector3(5078.0, -4625.97, 2.42)},
--         },
--         [2] = {
--           [1] = {vector3(5093.99, -4655.43, 1.78), vector3(5095.76, -4655.98, 1.73)},
--           [2] = {vector3(5102.73, -4667.05, 2.51), vector3(5103.27, -4665.57, 2.62)},
--           [3] = {vector3(5129.76, -4683.19, 1.68), vector3(5132.1, -4681.84, 1.59)},
--           [4] = {vector3(5087.5, -4685.35, 2.4), vector3(5084.06, -4684.3, 2.39)},
--           [5] = {vector3(5036.96, -4629.41, 4.9), vector3(5036.05, -4627.95, 4.9)},
--           [6] = {vector3(5072.32, -4617.28, 2.78), vector3(5074.97, -4618.12, 2.62)},
--         },
--       },
--       guard = { -- Guards // Static peds, Coords are Vector4 and not Vector3, the 4th value is the heading
--         [1] = vector4(5030.68, -4627.65, 21.68, 31.16),
--         [2] = vector4(5102.79, -4577.9, 23.25, 52.63),
--       },
--       veh = { -- Vehicle patrols from 1 to 2, 2 to 3, 3 to 4 and back to 1, etc. // Add as many patrols and points as you want
--         [1] = {
--           [1] = vector3(5156.56, -4624.2, 2.75),
--           [2] = vector3(5125.77, -4573.53, 4.38),
--           [3] = vector3(5038.37, -4548.1, 7.71),
--           [4] = vector3(5021.44, -4603.49, 4.49),
--           [5] = vector3(5088.23, -4615.6, 2.53),
--         },
--       }
--     },
--     pedSettings = {
--       blips = true, -- Show blips for the peds
--       health = 250, -- Health of the ped // 200 is default civillian health
--       armour = 50, -- Armour of the ped // 0-100
--       suffersCrits = true, -- Set to true if you want the ped to suffer critical hits
--       diesWhenInjured = false, -- Set to true if you want the ped to die when injured
--       footsteps = 'loud', -- Footstep sounds // 'loud' or 'quiet' or false
--       relationship = 5, -- Relationship group of the ped // 0-5 // 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
--       relNameOverride = 'Cayo_Perico', -- Set to false to use the default relationship name (the location name) // Set to a string to use a custom relationship name, useful if you want multiple locations to have the same relationship
--       weapons = { -- Weapon to give the ped // Set to false to not give a weapon // https://wiki.rage.mp/index.php?title=Weapons
--         `WEAPON_BAT`,
--         `WEAPON_HATCHET`,
--         `WEAPON_PUMPSHOTGUN`,
--         `WEAPON_PISTOL`,
--       },
--       combat = {
--         ability = 80, -- Combat ability of the ped // 50-100
--         accuracy = 75, -- Accuracy of the ped // 0-100
--         alertness = 3, -- Alertness of the ped // 0-3 (0 = calm, 3 = paranoid)
--         range = 2, -- Combat range of the ped // 0-2 (0 = near, 2 = far)
--         movement = 3, -- Combat movement of the ped // 0-3 (0 = stand, 1 = defensive, 2 = offensive, 3 = suicidal)
--       },
--       pathing = { -- How the ped will path during combat
--         avoidFire = true, -- Whether the ped avoids fire // true or false
--         climbOver = true, -- Whether the ped can climb over objects // true or false
--         useLadders = true, -- Whether the ped can use ladders // true or false
--         avoidWater = true, -- Whether the ped avoids water // true or false
--         dropFromHeight = true, --  Whether the ped can drop from height // true or false
--         canRagdoll = true, -- Whether the ped can ragdoll // true or false
--       },
--     },
--   },
--   [6] = { -- Cayo Perico // 2nd Town
--     name = 'Cayo_Perico_2', -- Name of the location // Make sure it's unique and doesn't have any spaces (i.e. Grapeseed_Weed_Farm, Humane_Labs, etc.)
--     activePatrols = true, -- Set true if you want patrols for this location
--     activeGuards = true, -- Set true if you want guards for this location
--     activeVehicles = true, -- Set true if you want vehicles for this location
--     models = { -- Models to use for the patrols (peds are randomly selected) // Vehicles are selected in order, i.e. the first vehicle patrols the first veh patrol route.
--       peds = { -- https://docs.fivem.net/docs/game-references/ped-models/
--         `g_m_y_salvaboss_01`,
--         `g_m_y_salvagoon_01`,
--         `g_m_y_salvagoon_02`,
--         `g_m_y_salvagoon_03`,
--       },
--       vehs = { -- https://docs.fivem.net/docs/game-references/vehicle-models/
--         `hellion`,
--         `enduro`,
--       },
--     },
--     stopTime = {10000, 15000}, -- Time to wait at each patrol point (in milliseconds) // Randomly selected between the two numbers
--     patrols = { -- Patrol points
--       ped = { -- Ped patrols from 1 to 2, 2 to 3, 3 to 4 and back to 1, etc. // Add as many patrols and points as you want
--         [1] = {
--           [1] = {vector3(5117.5, -5200.98, 2.47), vector3(5114.92, -5200.79, 2.35)},
--           [2] = {vector3(5108.47, -5203.72, 2.1), vector3(5107.23, -5203.67, 2.06)},
--           [3] = {vector3(5107.84, -5140.0, 1.93), vector3(5107.82, -5137.54, 1.93)},
--           [4] = {vector3(5117.0, -5139.97, 2.18), vector3(5115.88, -5140.01, 2.18)},
--         },
--         [2] = {
--           [1] = {vector3(5131.62, -5114.9, 2.12), vector3(5132.12, -5114.11, 2.12)},
--           [2] = {vector3(5131.37, -5141.18, 2.15), vector3(5129.0, -5142.26, 2.19)},
--           [3] = {vector3(5158.42, -5140.04, 2.36), vector3(5160.33, -5139.98, 2.41)},
--           [4] = {vector3(5179.68, -5124.82, 3.1), vector3(5178.7, -5122.1, 3.09)},
--           [5] = {vector3(5207.06, -5126.22, 6.01), vector3(5208.89, -5126.29, 6.15)},
--           [6] = {vector3(5208.57, -5120.81, 5.98), vector3(5208.31, -5118.88, 5.87)},
--         },
--       },
--       guard = { -- Guards // Static peds, Coords are Vector4 and not Vector3, the 4th value is the heading
--         [1] = vector4(5150.55, -4933.18, 30.87, 87.25),
--         [2] = vector4(5154.85, -4948.08, 14.1, 72.32),
--         [3] = vector4(5146.26, -5053.22, 20.39, 91.02),
--         [4] = vector4(5141.18, -5241.58, 26.29, 322.47),
--         [5] = vector4(5467.76, -5235.29, 43.96, 292.5),
--       },
--       veh = { -- Vehicle patrols from 1 to 2, 2 to 3, 3 to 4 and back to 1, etc. // Add as many patrols and points as you want
--         [1] = {
--           [1] = vector3(5256.4, -5164.84, 13.39),
--           [2] = vector3(5261.38, -5076.15, 14.24),
--           [3] = vector3(5144.89, -5000.15, 9.81),
--           [4] = vector3(5133.92, -5108.77, 1.77),
--           [5] = vector3(5113.35, -5187.83, 1.95),
--           [6] = vector3(5165.58, -5179.8, 1.62),
--           [7] = vector3(5229.26, -5131.16, 7.87),
--         },
--         [2] = {
--           [1] = vector3(5435.77, -5380.59, 35.91),
--           [2] = vector3(5527.6, -5286.79, 11.97),
--           [3] = vector3(5343.52, -5106.55, 14.17),
--           [4] = vector3(5228.02, -5217.84, 16.61),
--           [5] = vector3(5308.03, -5263.38, 32.06),
--           [6] = vector3(5461.09, -5228.81, 26.71),
--           [7] = vector3(5402.65, -5186.94, 31.33),
--           [8] = vector3(5323.21, -5192.19, 31.02),
--           [9] = vector3(5291.98, -5220.34, 31.21),
--         },
--       }
--     },
--     pedSettings = {
--       blips = true, -- Show blips for the peds
--       health = 250, -- Health of the ped // 200 is default civillian health
--       armour = 50, -- Armour of the ped // 0-100
--       suffersCrits = true, -- Set to true if you want the ped to suffer critical hits
--       diesWhenInjured = false, -- Set to true if you want the ped to die when injured
--       footsteps = 'loud', -- Footstep sounds // 'loud' or 'quiet' or false
--       relationship = 5, -- Relationship group of the ped // 0-5 // 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
--       relNameOverride = 'Cayo_Perico', -- Set to false to use the default relationship name (the location name) // Set to a string to use a custom relationship name, useful if you want multiple locations to have the same relationship
--       weapons = { -- Weapon to give the ped // Set to false to not give a weapon // https://wiki.rage.mp/index.php?title=Weapons
--         `WEAPON_ASSAULTRIFLE`,
--         `WEAPON_MACHINEPISTOL`,
--         `WEAPON_PUMPSHOTGUN`,
--         `WEAPON_PISTOL`,
--       }, 
--       combat = {
--         ability = 80, -- Combat ability of the ped // 50-100
--         accuracy = 75, -- Accuracy of the ped // 0-100
--         alertness = 3, -- Alertness of the ped // 0-3 (0 = calm, 3 = paranoid)
--         range = 2, -- Combat range of the ped // 0-2 (0 = near, 2 = far)
--         movement = 3, -- Combat movement of the ped // 0-3 (0 = stand, 1 = defensive, 2 = offensive, 3 = suicidal)
--       },
--       pathing = { -- How the ped will path during combat
--         avoidFire = true, -- Whether the ped avoids fire // true or false
--         climbOver = true, -- Whether the ped can climb over objects // true or false
--         useLadders = true, -- Whether the ped can use ladders // true or false
--         avoidWater = true, -- Whether the ped avoids water // true or false
--         dropFromHeight = true, --  Whether the ped can drop from height // true or false
--         canRagdoll = true, -- Whether the ped can ragdoll // true or false
--       },
--     },
--   },
--   [7] = { -- Cayo Perico // 3rd Town
--     name = 'Cayo_Perico_3', -- Name of the location // Make sure it's unique and doesn't have any spaces (i.e. Grapeseed_Weed_Farm, Humane_Labs, etc.)
--     activePatrols = true, -- Set true if you want patrols for this location
--     activeGuards = true, -- Set true if you want guards for this location
--     activeVehicles = true, -- Set true if you want vehicles for this location
--     models = { -- Models to use for the patrols (peds are randomly selected) // Vehicles are selected in order, i.e. the first vehicle patrols the first veh patrol route.
--       peds = { -- https://docs.fivem.net/docs/game-references/ped-models/
--         `g_m_y_salvaboss_01`,
--         `g_m_y_salvagoon_01`,
--         `g_m_y_salvagoon_02`,
--         `g_m_y_salvagoon_03`,
--       },
--       vehs = { -- https://docs.fivem.net/docs/game-references/vehicle-models/
--         `rebel`,
--       },
--     },
--     stopTime = {10000, 15000}, -- Time to wait at each patrol point (in milliseconds) // Randomly selected between the two numbers
--     patrols = { -- Patrol points
--       ped = { -- Ped patrols from 1 to 2, 2 to 3, 3 to 4 and back to 1, etc. // Add as many patrols and points as you want
--         [1] = {
--           [1] = {vector3(4881.37, -5171.52, 2.45), vector3(4881.63, -5171.0, 2.46)},
--           [2] = {vector3(4909.42, -5184.0, 2.45), vector3(4909.67, -5183.51, 2.45)},
--           [3] = {vector3(4931.26, -5175.02, 2.46), vector3(4929.48, -5174.2, 2.48)},
--           [4] = {vector3(4943.2, -5167.83, 2.47), vector3(4943.95, -5166.19, 2.45)},
--         },
--         [2] = {
--           [1] = {vector3(4931.39, -5146.33, 2.47), vector3(4930.32, -5145.84, 2.46)},
--           [2] = {vector3(5002.52, -5145.01, 2.57), vector3(5004.18, -5144.12, 2.57)},
--           [3] = {vector3(5038.7, -5108.5, 5.82), vector3(5041.31, -5105.95, 5.63)},
--           [4] = {vector3(5011.6, -5077.94, 4.69), vector3(5011.68, -5076.06, 4.42)},
--           [5] = {vector3(4970.46, -5117.84, 2.96), vector3(4968.95, -5118.79, 2.76)},
--         },
--       },
--       guard = { -- Guards // Static peds, Coords are Vector4 and not Vector3, the 4th value is the heading
--         [1] = vector4(5040.88, -5112.46, 22.94, 94.47),
--         [2] = vector4(4905.36, -5332.19, 29.14, 335.28),
--       },
--       veh = { -- Vehicle patrols from 1 to 2, 2 to 3, 3 to 4 and back to 1, etc. // Add as many patrols and points as you want
--         [1] = {
--           [1] = vector3(4954.94, -5212.07, 1.99),
--           [2] = vector3(5010.65, -5182.9, 1.99),
--           [3] = vector3(5021.63, -5147.18, 2.12),
--           [4] = vector3(4992.36, -5164.94, 2.14),
--           [5] = vector3(4965.49, -5189.85, 1.99),
--           [6] = vector3(4867.1, -5174.46, 1.92),
--           [7] = vector3(4941.68, -5271.51, 3.45),
--           [8] = vector3(4879.65, -5379.14, 13.64),
--           [9] = vector3(4889.0, -5412.68, 16.49),
--         },
--       }
--     },
--     pedSettings = {
--       blips = true, -- Show blips for the peds
--       health = 250, -- Health of the ped // 200 is default civillian health
--       armour = 50, -- Armour of the ped // 0-100
--       suffersCrits = true, -- Set to true if you want the ped to suffer critical hits
--       diesWhenInjured = false, -- Set to true if you want the ped to die when injured
--       footsteps = 'quiet', -- Footstep sounds // 'loud' or 'quiet' or false
--       relationship = 5, -- Relationship group of the ped // 0-5 // 0 = Companion, 1 = Respect, 2 = Like, 3 = Neutral, 4 = Dislike, 5 = Hate
--       relNameOverride = 'Cayo_Perico', -- Set to false to use the default relationship name (the location name) // Set to a string to use a custom relationship name, useful if you want multiple locations to have the same relationship
--       weapons = { -- Weapon to give the ped // Set to false to not give a weapon // https://wiki.rage.mp/index.php?title=Weapons
--         `WEAPON_ASSAULTRIFLE`,
--         `WEAPON_MACHINEPISTOL`,
--         `WEAPON_PUMPSHOTGUN`,
--         `WEAPON_PISTOL`,
--       }, 
--       combat = {
--         ability = 80, -- Combat ability of the ped // 50-100
--         accuracy = 75, -- Accuracy of the ped // 0-100
--         alertness = 3, -- Alertness of the ped // 0-3 (0 = calm, 3 = paranoid)
--         range = 2, -- Combat range of the ped // 0-2 (0 = near, 2 = far)
--         movement = 3, -- Combat movement of the ped // 0-3 (0 = stand, 1 = defensive, 2 = offensive, 3 = suicidal)
--       },
--       pathing = { -- How the ped will path during combat
--         avoidFire = true, -- Whether the ped avoids fire // true or false
--         climbOver = true, -- Whether the ped can climb over objects // true or false
--         useLadders = true, -- Whether the ped can use ladders // true or false
--         avoidWater = true, -- Whether the ped avoids water // true or false
--         dropFromHeight = true, --  Whether the ped can drop from height // true or false
--         canRagdoll = true, -- Whether the ped can ragdoll // true or false
--       },
--     },
--   },
-- }
