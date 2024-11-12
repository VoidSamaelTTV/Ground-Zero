# don-patrols

Configurable Ped Patrols for QBCore! This is a paid script, available on my [Tebex](https://dons-developments.tebex.io/package/5419769).

## Features

- Optimised code, resting resmon of 0.0ms and peaking at 0.02ms whilst first initiating a patrol.
- Configure Different Areas of Patrol
- 5 Locations Pre-Configured // Add as many as you want!
- Choose Between 3 Patrol Types, Walking, Driving and Guarding.
- Patrols are Highly Configurable, with Global Settings for Cooldown, Spawn/Despawn Distances, Death Percentage and more.
- Patrols stay Tasked between Players and will go Dormant whilst no Players are nearby.
- Peds are Configurable, with Unique Settings for each Ped, including Health, Armour, Weapons, Ammo and their Model.
- Guards will Detect if They've Left their Guard Position and will Return to it.
- Vehicles are Configurable, with Unique Settings for each Vehicle, including Health, Plate, Lock Type and their Model.
- Vehicle Peds have the Ability to Control Mounted Turrets, and Vehicles have a Passenger Limit of 10 (if they can fit it!).

## Table of Contents

- [don-patrols](#don-patrols)
  - [Features](#features)
  - [Table of Contents](#table-of-contents)
    - [Preview](#preview)
    - [Installation](#installation)
      - [Dependencies](#dependencies)
      - [Initial Setup](#initial-setup)
    - [Configuration](#configuration)
      - [Globals](#globals)
      - [Creating a Location](#creating-a-location)
      - [Routes](#routes)
        - [Adding a Guard](#adding-a-guard)
        - [Adding a Patrol](#adding-a-patrol)
        - [Adding a Vehicle Patrol](#adding-a-vehicle-patrol)
      - [Unique Ped Settings](#unique-ped-settings)
        - [Base Settings](#base-settings)
        - [Range Settings](#range-settings)
        - [Ped Vehicle Settings](#ped-vehicle-settings)
      - [Vehicle Config](#vehicle-config)
        - [Base Vehicle Settings](#base-vehicle-settings)
      - [Shared Ped Settings](#shared-ped-settings)
        - [Behaviour Settings](#behaviour-settings)
        - [Blip Settings](#blip-settings)
        - [Combat Settings](#combat-settings)
        - [Damage Settings](#damage-settings)
        - [Drop Settings](#drop-settings)
        - [Event Settings](#event-settings)
        - [Pathing Settings](#pathing-settings)
          - [Avoidance](#avoidance)
          - [Movement](#movement)
          - [Ragdoll](#ragdoll)
        - [Relationship Settings](#relationship-settings)
      - [Known Issues](#known-issues)
        - [Patrol Limits](#patrol-limits)
    - [Support](#support)
    - [Changelog](#changelog)

### Preview

- *coming soon*

### Installation

#### Dependencies

**Depending on your Framework, you will need to have installed either of the following dependencies:**

- [QBCore](https://github.com/qbcore-framework/qb-core)
- [ESX](https://github.com/esx-framework/esx_core)

#### Initial Setup

- Always use the latest FiveM artifacts (tested on 6683), you can find them [here](https://runtime.fivem.net/artifacts/fivem/build_server_windows/master/).
- Ensure your `server.cfg` has `set sv_enforceGameBuild 2060` or above, you can find more info on game builds [here](https://docs.fivem.net/docs/server-manual/server-commands/#sv_enforcegamebuild-build)
- Download the latest version from your keymaster.
- Extract the contents of the zip file into your resources folder, into a folder which starts after your framework or;
- Ensure the script in your `server.cfg` after your framework.
- Configure both the globals `Config.Framework` and `Config.DebugMode` before starting the script, to ensure correct startup and that debug are set to your liking.

```lua
Config.Framework = 'qb'
Config.DebugMode = false
```

- `Config.Framework` is the Framework you're using, currently supports `qb` and `esx`. Work is being done to support `standalone`.
- `Config.DebugMode` is the Debug Mode, set to `true` to enable debug prints, set to `false` to disable debug prints.

### Configuration

#### Globals

```lua
Config.Cooldown = 15
Config.DeathPercent = 80
Config.ResetsOnDeath = false
Config.DeleteOnReset = false
Config.SpawnDistance = 500.0
Config.DespawnDistance = 1000.0
```

- `Config.Cooldown` in minutes, is the time to wait before respawning a patrol after it's been killed or despawned.
- `Config.DeathPercent` in integers, is the percentage of peds that if killed, will cause the patrol to flee from the player.
- `Config.ResetsOnDeath` if true, killing the above percentage of peds will cause the patrol to reset, opposed to waing for the cooldown timer.
- `Config.DeleteOnReset` if true, will delete the patrol entities on reset (patriculary handy if bodies aren't despawning naturally).
- `Config.SpawnDistance` in float, is the distance from any coordinate in a configured patrol area that a player must be within for the patrol to spawn.
- `Config.DespawnDistance` in float, is the distance from any coordinate in a configured patrol area that a player must be within for the patrol to despawn.

**Note:** Entities in FiveM (and GTA as a whole) have scope; that is, a distance of which players need to be within to know of it's existence. By default this is 211 GTA metres from the player, `Config.SpawnDistance` will allow players to create entities outside of this scope, so this should be used with caution as it can cause performance issues and unexpected behaviour.

#### Creating a Location

- To create a new location, you need to add a new Table to the `Config.Locations` Table.

```lua
Config.Locations = {
    {
        name = '',
        ['Enabled'] = {patrols = false, guards = false, vehicles = false},
        ['Routes'] = {
            guard = {...},
            patrol = {
                {...}
            },
            vehicle = {
                {...}
            }
        },
        ['Peds'] = {
            guard = {...},
            patrol = {...},
            vehicle = {
                {...}
            }
        },
        ['Vehicles'] = {
            vehicle = {...}
        },
        ['Settings'] = {
            ['Behavior'] = {...},
            ['Blips'] = {...},
            ['Combat'] = {...},
            ['Damages'] = {...},
            ['Drops'] = {...},
            ['Events'] = {...},
            ['Pathing'] = {
                ['Avoidance'] = {...},
                ['Movement'] = {...},
                ['Ragdoll'] = {...},
            },
            ['Relationships'] = {...},
        }
    },
}
```

**Note:** Each patrol table is declared as a non-indexed table (i.e. instead of `[1] = {}`, it's just `{}`). However, this script does support number indexed tables, so if you want to use them, go ahead.

- `name` is the Name of the Patrol Area, make sure it's unique and doesn't have any spaces (i.e. Grapeseed_Weed_Farm, Humane_Labs, etc.).
- `Enabled` is the Table of Enabled Patrol Types, set to `true` to enable, set to `false` to disable.
  
#### Routes

- `Routes` is split into three sub-tables, `guard`, `patrol` and `vehicle`. Each of these tables is a table of information for the respective patrol type.
- `guard` is the Table of Guard Positions, with each guard having one table declaring coords, heading and scenario.
- `patrol` is the Table of Patrols, with each patrol having one main table, with each patrol point having a table declaring coords, heading and stop time.
- `vehicle` is the Table of Vehicle Patrols, with each patrol having one main table, with each patrol point having a table declaring coords, speed and driving style.

##### Adding a Guard

```lua
guard = {
    {coords = vector3(-2302.88, 3385.7, 31.26), heading = 143.86, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'},
    {coords = vector3(-2301.31, 3387.83, 31.26), heading = 321.56, scenario = 'WORLD_HUMAN_GUARD_STAND_ARMY'}
},
```

**Note:** The amount of guards for a given location is not limited, so you can add as many as you want by adding more tables to the `guard` table.

- `coords` is the Vector3 of the Guard Position.
- `heading` is the Heading of the Guard.
- `scenario` is the Scenario of the Guard, you can find a list of scenarios [here](https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json).

##### Adding a Patrol

```lua
patrol = {
    {
        {coords = vector3(-1826.44, 3296.78, 32.83), heading = 332.92, stopTime = math.random(1000, 5000)},
        {coords = vector3(-1791.71, 3277.2, 32.77), heading = 238.37, stopTime = math.random(1000, 5000)},
        {coords = vector3(-1743.14, 3248.95, 32.81), heading = 333.22, stopTime = math.random(1000, 5000)},
        {coords = vector3(-1785.16, 3176.31, 32.83), heading = 152.92, stopTime = math.random(1000, 5000)},
        {coords = vector3(-1819.5, 3195.79, 32.79), heading = 59.17, stopTime = math.random(1000, 5000)},
        {coords = vector3(-1867.65, 3225.62, 32.85), heading = 153.11, stopTime = math.random(1000, 5000)}
    }
},
```

**Note:** The amount of patrols for a given location is not limited, so you can add as many as you want by adding more tables to the `patrol` table.

- `coords` is the Vector3 of the Patrol Position.
- `heading` is the Heading of the Ped whilst at the Patrol Position.
- `stopTime` is the time to wait at the Patrol Position (in milliseconds). This can be a number or a math.random() function, to randomise the time between two numbers.

##### Adding a Vehicle Patrol

```lua
vehicle = { -- https://vespura.com/fivem/drivingstyle/
    {
        {coords = vector3(-1851.93, 3318.97, 32.93), speed = 20.0, drivingStyle = 447},
        {coords = vector3(-1716.95, 3241.34, 32.54), speed = 20.0, drivingStyle = 447},
        {coords = vector3(-1741.59, 3161.12, 32.55), speed = 20.0, drivingStyle = 447},
        {coords = vector3(-1894.12, 3231.54, 32.56), speed = 20.0, drivingStyle = 447}
    }
},
```

**Note:** The amount of vehicle patrols for a given location is not limited, so you can add as many as you want by adding more tables to the `vehicle` table.

- `coords` is the Vector3 of the Patrol Position.
- `speed` is the Speed of the Vehicle going to the Patrol Position.
- `drivingStyle` is the Driving Style of the Vehicle going to the Patrol Position, you can calculate driving styles [here](https://vespura.com/fivem/drivingstyle/) and also find a list of flags [here](https://github.com/DurtyFree/gta-v-data-dumps/blob/master/drivingStyleFlagValues.json).

*Some Driving Styles:*
`447` - Will obey all traffic laws, and act like a normal civilian vehicle.
`262591`  - Will obey all traffic laws, and will path on dirt roads.
`786432` - Drives recklessly, and will path on dirt roads.

#### Unique Ped Settings

- `Peds` is split into three sub-tables, `guard`, `patrol` and `vehicle`. Each of these tables is a table of information for the respective patrol type. Vehicles have some extra functionality and tables, which will be explained [here](#ped-vehicle-settings).

```lua
['Peds'] = {
    guard = {
        {...}, -- Guard 1
        {...} -- Guard 2
    },
    patrol = {
        {...}, -- Patrol 1
        {...} -- Patrol 2
    },
    vehicle = {
        { -- Vehicle 1
            {...}, -- Passenger 1
            {...} -- Passenger 2
        }
        {...} -- Vehicle 2 w/ No Unique Passengers
    }
},
```

##### Base Settings

```lua
['Base'] = {
    model = 's_m_m_marine_01',
    weapon = 'weapon_pistol_mk2',
    health = 250,
    armour = 100,
    ammo = 250,
    brandish = true,
    -- flags = {}
},
```

- `model` is the Model of the Ped, this can be either a string or the hash. You can find a list of Ped Models [here](https://docs.fivem.net/docs/game-references/ped-models/) and an updated list [here](https://github.com/DurtyFree/gta-v-data-dumps/blob/master/PedList.ini).
- `weapon` is the Weapon of the Ped, this can be either a string or the hash. You can find weapon names and stats [here](https://vespura.com/fivem/weapons/stats/) and an updated list [here](https://github.com/DurtyFree/gta-v-data-dumps/blob/master/WeaponList.ini)
- `health` an integer value between 0 and 1000, this is the health of the ped. Default ped health for males is between 100 to 200 and between 0 and 100 for females.
- `armour` an integer value between 0 and 100, this is the armour of the ped.
- `ammo` an integer, setting the ammo of the ped. This is only used if `useDiminishingAmmo` is set to `true` in the `Base` table of the `Settings` table.
- `brandish` a boolean value, whether the ped will brandish their weapon when spawned. Default is false, set to true to enable.
- `flags` a table of flags to uniquely set on the ped. This is by default used by vehicle peds and care should be taken that the flags don't conflict with the global settings. A full list of flags can be found [here](https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags).

##### Range Settings

```lua
['Ranges'] = {
    lod = 250.0,
    id = 100.0,
    seeing = 100.0,
    hearing = 100.0,
    shout = 100.0
}
```

- `lod` a float value, this is the distance the ped will be visible from.
- `id` a float value, this is the distance the ped will be visible to other peds from.
- `seeing` a float value, this is the distance the ped can see hostile actions from.
- `hearing` a float value, this is the distance the ped can hear hostile actions from.
- `shout` a float value, this is the distance the ped can communicate to respected peds.

##### Ped Vehicle Settings

**Note:** The vehicles table can be declared in two ways, depending on how you want that vehicle configured.

- If you want the vehicle to have unique settings on each passenger, first declare the vehicle table and create a non-indexed table, with each table being the settings for that passenger (see Example 1).

- If you want the vehicle to have the same settings for each passenger, first declare the vehicle table and then populate that table the same as you would either guards or patrols (see Example 2). The amount of passengers will be declared in the `['Vehicles]` table, explained [here](#vehicle-config).

```lua
vehicle = {
    { -- Example 1
        {
            ['Base'] = {...},
            ['Ranges'] = {...}
        }, {
            ['Base'] = {...},
            ['Ranges'] = {...}
        }
    },
    { -- Example 2
        ['Base'] = {...},
        ['Ranges'] = {...}
    }
}
```

- `flags` a table of flags to uniquely set on the ped. Here it is used to set the flags on the vehicle peds, the example array is my reccomended flags for vehicle peds. A full list of flags can be found [here](https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=PedC#ePedConfigFlags).

#### Vehicle Config

- `Vehicles` is split into one sub-table, `vehicle`. This table is a table of information for each vehicle patrol.

```lua
['Vehicles'] = {
    vehicle = {
        {['Base']} -- Vehicle 1
        {['Base']} -- Vehicle 2
    }
},
```

##### Base Vehicle Settings

```lua
['Base'] = {
    model = 'crusader',
    vehType = 'automobile',
    passengers = false,
    lockType = 3,
    health = 1000.0,
    dirtLevel = 0.0,
    plate = 'ARMY'
}
```

- `model` is the Model of the Vehicle, this can be either a string or the hash. You can find a list of Vehicle Models [here](https://docs.fivem.net/docs/game-references/vehicle-models/).
- `vehType` is the Type of the Vehicle, this can be either `automobile` or `bike`.
- `passengers` is either false or an integer, if false, the vehicle passengers will be configured individually and the amount determined by the amount of tables in the `['Peds'].vehicle[patrol]` table. If an integer, the vehicle passengers will be configured the same as the vehicle driver and the amount determined by the integer.
- `lockType` an integer value between 0 and 5, this is the lock type of the vehicle. Default is `3` (LockedForPlayer). For more information on lock types, see [here](https://docs.fivem.net/natives/?_0xB664292EAECF7FA6).
- `health` a float value, this is the health of the vehicle. Default is `1000.0`.
- `dirtLevel` a float value, this is the dirt level of the vehicle. Default is `0.0` and maximum is `15.0`.
- `plate` a string value, this is the plate of the vehicle. This has a character limit of `8`.

#### Shared Ped Settings

- `Settings` is split into eight sub-tables, `Behavior`, `Blips`, `Combat`, `Damages`, `Drops`, `Events`, `Pathing` and `Relationships`. Each of these tables globally set across the patrol.

```lua
['Settings'] = {
    ['Behavior'] = {...},
    ['Blips'] = {...},
    ['Combat'] = {...},
    ['Damages'] = {...},
    ['Drops'] = {...},
    ['Events'] = {...},
    ['Pathing'] = {
        ['Avoidance'] = {...},
        ['Movement'] = {...},
        ['Ragdoll'] = {...},
    },
    ['Relationships'] = {...},
},
```

##### Behaviour Settings

```lua
['Behavior'] = {
    ignoreMelee = false,
    ignoreFire = false,
    ignoreBeingJacked = false,
    ignoreSilencedClone = true,
    ignoreExplosion = false,
    preventMeleeTaunts = false,
    disableHurt = false,
    disableWrithe = false,
    preferInjuredGetup = true,
    onlyWritheFromWeapon = true,
    runFromFires = true,
    dontShoutTarget = false,
    dontCryForHelp = false
},
```

- `ignoreMelee` whether the ped will ignore melee actions.
- `ignoreFire` whether the ped will ignore fire.
- `ignoreBeingJacked` whether the ped will ignore being jacked from a vehicle.
- `ignoreSilencedClone` whether the ped will ignore silenced weapons.
- `ignoreExplosion` whether the ped will ignore explosions.
- `preventMeleeTaunts` whether the ped can melee taunt.
- `disableHurt` whether the ped can have hurt reactions.
- `disableWrithe` whether the ped can writhe on the ground.
- `preferInjuredGetup` whether the ped will prefer getting up from an injured state.
- `onlyWritheFromWeapon` whether the ped will only writhe from weapon damage.
- `runFromFires` whether the ped will run from fires.
- `dontShoutTarget` whether the ped will communicate their targets postion.
- `dontCryForHelp` whether the ped will call for help when injured.

##### Blip Settings

```lua
['Blips'] = {
    enabled = true,
    hasCone = true,
    colour = 1,
    range = 50.0,
    clearOnDeath = true
},
```

- `enabled` whether the ped will have a blip.
- `hasCone` whether the blip has a view cone on the minimap whilst active.
- `colour` the colour of the blip, you can find a list of blip colours [here](https://docs.fivem.net/docs/game-references/blips/#blip-colors)
- `range` the range the blip can be activated from.
- `clearOnDeath` whether the blip will be removed on death.

##### Combat Settings

```lua
['Combat'] = {
    attributes = {5, 14, 15, 46},
    ability = 100,
    accuracy = 100,
    alertness = 2,
    movement = 1,
    range = 2,
    targetResponse = 2,
    canAttackFriendly = false,
    canUseCover = true,
    useDiminishingAmmo = true,
    blockWeaponSwitching = false,
    enableWeaponBlocking = false,
    keepWeaponHolstered = true,
    disableMelee = false,
    disableUnarmedDriveby = false,
    disableWritheShooting = false,
    respondToHelpCries = true,
    seeApproachingVehicles = true,
    treatDislikeAsHated = true,
    treatNonFriendlyAsHated = false,
    broadcastGoingToThreat = true
},
```

- `attributes` a table of attributes to set on the ped. A full list of attributes can be found [here](https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=3028&search=_#_0x0E8E7201).
- `ability` an integer value between 0 and 100, this is the ability of the ped. A number between 0 and 50 is poor, 50 and 75 is average and 75 and above is professional.
- `accuracy` an integer value between 0 and 100, this is the accuracy of the ped.
- `alertness` an integer value between 0 and 3, this is the alertness of the ped. 0 is calm and 3 is paranoid.
- `movement` an integer value between 0 and 3, this is the movement of the ped. 0 is stationary, 1 is defensive, 2 is will advance and 3 is will retreat.
- `range` an integer value between 0 and 3, this is the range of the ped. 0 is near, 1 is medium, 2 is far and 3 is very far.
- `targetResponse` an integer value between 0 and 2, this is the target response of the ped. 0 is exist task, 1 is never lose target and 2 is search for target.
- `canAttackFriendly` whether the ped can attack friendly peds.
- `canUseCover` whether the ped can use cover.
- `useDiminishingAmmo` whether the ped will use diminishing ammo. If set to false, the ped will have infinite ammo.
- `blockWeaponSwitching` whether the ped can switch weapons.
- `enableWeaponBlocking` whether the ped can block weapon attacks.
- `keepWeaponHolstered` whether the ped will keep their weapon holstered until fired.
- `disableMelee` whether the ped can use melee attacks.
- `disableUnarmedDriveby` whether the ped can use unarmed drivebys.
- `disableWritheShooting` whether the ped can shoot whilst writheing on the ground.
- `respondToHelpCries` whether the ped will respond to help cries.
- `seeApproachingVehicles` whether the ped can always see approaching vehicles.
- `treatDislikeAsHated` whether the ped will treat dislike as hated (Relationship type 4).
- `treatNonFriendlyAsHated` whether the ped will treat non friendly as hated (Any Relationship from 3 and above).
- `broadcastGoingToThreat` whether the ped will broadcast to nearby peds that they are going to a threat.

##### Damage Settings

```lua
['Damages'] = {
    diesWhenInjured = false,
    incapacitation = true,
    criticals = true,
    bullets = true,
    fire = true,
    explosion = true,
    collision = true,
    steam = true,
    melee = true,
    drown = true,
    electric = true,
    ragdoll = false,
    invincible = false
},
```

- `diesWhenInjured` whether the ped will die when injured.
- `incapacitation` whether the ped will writhe when injured.
- `criticals` whether the ped will suffer critical hits.
- `bullets` whether the ped will suffer bullet damage.
- `fire` whether the ped will suffer fire damage.
- `explosion` whether the ped will suffer explosion damage.
- `collision` whether the ped will suffer collision damage.
- `steam` whether the ped will suffer steam damage.
- `melee` whether the ped will suffer melee damage.
- `drown` whether the ped will drown.
- `electric` whether the ped will suffer electric damage.
- `ragdoll` whether the ped will die when ragdolled.
- `invincible` whether the ped will be invincible.

##### Drop Settings

```lua
['Drops'] = {
    weapons = false,
    healthSnacks = false
},
```

- `weapons` whether the ped will drop their weapon when killed.
- `healthSnacks` whether the ped will drop a health snack when killed (like in GTA:O).

##### Event Settings

```lua
['Events'] = {
    generateSoundEvents = true,
    listensToSoundEvents = true,
    checkLOSForSoundEvents = true,
    disableWeirdPedEvents = false,
    disableCryForHelpEvents = false,
    usePerceptionForAimEvents = true,
    disableShockingEvents = false,
    disableShockingDrivingEvents = false
},
```

- `generateSoundEvents` whether the ped will generate sound events.
- `listensToSoundEvents` whether the ped will listen to sound events.
- `checkLOSForSoundEvents` whether the ped will check line of sight to generate/respond to sound events.
- `disableWeirdPedEvents` whether the ped will disable weird ped events (ie. CEventShockingWeirdPed & CEventShockingWeirdPedApproaching)
- `disableCryForHelpEvents` whether the ped will disable cry for help events (ie. CEventShockingCryForHelp)
- `usePerceptionForAimEvents` whether the ped will use their perception to generate aim events
- `disableShockingEvents` whether the ped will respond to shocking events (ie. CEventShocking)
- `disableShockingDrivingEvents` whether the ped will respond to shocking driving events (ie. CEventShockingDriving)

##### Pathing Settings

###### Avoidance

```lua
['Avoidance'] = {
    avoidDrops = true,
    avoidFire = true,
    avoidPeds = true,
    avoidTearGas = true,
    avoidWater = true
},
```

- `avoidDrops` whether the ped will avoid falls from height whilst randomly pathing.
- `avoidFire` whether the ped will avoid fire whilst randomly pathing.
- `avoidPeds` whether the ped will avoid other peds whilst randomly pathing.
- `avoidTearGas` whether the ped will avoid tear gas whilst randomly pathing.
- `avoidWater` whether the ped will avoid water whilst randomly pathing.

###### Movement

```lua
['Movement'] = {
    disableCrouch = false,
    disableDives = false,
    disableClimbing = false,
    disableLadders = false
},
```

- `disableCrouch` whether the ped will can crouch.
- `disableDives` whether the ped will can evasive dive.
- `disableClimbing` whether the ped will can climb over objects.
- `disableLadders` whether the ped will can climb ladders.

###### Ragdoll

```lua
['Ragdolling'] = {
    canRagdoll = true,
    pedImpact = true,
    vehicleImpact = true,
    bulletImpact = true,
    explosion = true,
    fire = true,
    electrocution = true,
    objectImpact = true,
    melee = true,
    waterjetImpact = true,
    drowning = true,
    falling = true,
    onBoats = true,
    rubberBullet = true,
    smokeGrenades = true,
    pedCollision = true,
    vehicleCollision = true,
    playerImpact = true,
    aiRagdollImpact = true,
    playerRagdollImpact = true,
    minorPlayerImpact = true,
    ragdollOnDeath = true
}
```

- `canRagdoll` whether the ped can ragdoll.
- `pedImpact` whether the ped will ragdoll from ped impacts.
- `vehicleImpact` whether the ped will ragdoll from vehicle impacts.
- `bulletImpact` whether the ped will ragdoll from bullet impacts.
- `explosion` whether the ped will ragdoll from explosions.
- `fire` whether the ped will ragdoll from fires.
- `electrocution` whether the ped will ragdoll from being electrocuted.
- `objectImpact` whether the ped will ragdoll from object impacts.
- `melee` whether the ped will ragdoll from melee attacks.
- `waterjetImpact` whether the ped will ragdoll from water jet impacts.
- `drowning` whether the ped will ragdoll from drowning.
- `falling` whether the ped will ragdoll from falling.
- `onBoats` whether the ped will ragdoll from being on boats whilst they're moving.
- `rubberBullet` whether the ped will ragdoll from rubber bullet impacts.
- `smokeGrenades` whether the ped will ragdoll from smoke grenade impacts.
- `pedCollision` whether the ped will ragdoll from ped collisions.
- `vehicleCollision` whether the ped will ragdoll from vehicle collisions.
- `playerImpact` whether the ped will ragdoll from player impacts.
- `aiRagdollImpact` whether the ped will ragdoll from ai ragdoll impacts.
- `playerRagdollImpact` whether the ped will ragdoll from player ragdoll impacts.
- `minorPlayerImpact` whether the ped will ragdoll from minor player impacts.
- `ragdollOnDeath` whether the ped will ragdoll on death.

##### Relationship Settings

```lua
['Relationships'] = {
    [0] = {'police', 'ambulance', 'fire', 'ARMY'},
    [1] = 'security',
    [5] = 'PLAYER',
    override = 'Zancudo_Army_Base'
}
```

Relationships have 6 Levels, 0 for Companion, 1 for Respect, 2 for Like, 3 for Neutral, 4 for Dislike and 5 for Hate. Use the desired level as a table index and then specify the job or jobs you want to set the relationship for. For the Patrols general hostility towards players, ensure table index 5 or 4 has the string `PLAYER` in it.

0. Companion | Will never be triggered by hostile actions, and will help the player if they are attacked.
1. Respect | Will only be triggered by extreme hostile actions, and will help the player if they are attacked.
2. Like | Will only be triggered by extreme hostile actions.
3. Neutral | Will be triggered by hostile actions.
4. Dislike | Will be triggered by hostile actions, and will attack the player if they are attacked.
5. Hate | Will be triggered by any hostile action, and will attack the player on sight.

- `override` is the name of the relationship override, this is used to set the same relationship between different Patrols.

#### Known Issues

##### Patrol Limits

- On FiveM build (6356) CPatrolNodeLimit has a lower cap (~50), throwing an error when trying to create more patrols than the ascribed limit. This issue has been resolved without the need to increase Game Pool sizes, and use's Sequences to replace TaskPatrol, thus alleviating the issue.

### Support

- Join my [discord](https://discord.gg/tVA58nbBuk) and use the relative support channels.
- Open a ticket and please have your Tebex Transation ID ready 🙂.

### Changelog

- v1.1.4 - Added Multi-Framework Support.
- v1.1.3 - Added New Config Options `pedSettings.suffersCrits`, `pedSettings.diesWhenInjured` and `pedSettings.pathing.canRagdoll`. Small Code Cleanup.
- v1.1.2 - Fixed an error on the server where the Ped didn't exist and had it's coords checked.
- v1.1.1 - Added a table of Threads to handle Vehicle Patrols whilst having multiple clients nearby. This should fix drivers staying in the same place when the network owner leaves the area.
- v1.1.0 - Proper Syncing between Clients, Ensuring Vehicle Patrols stay Tasked when players leave area and Optimised Functionality for Checking for Closest Players.
- v1.0.9 - New Function for Finding Closest Player, and Added an Event to Retask a Patrol after changing Owners.
- v1.0.8 - Added a failsafe for when a player leaves the area but other players are nearby.
- v1.0.7 - More Failsafes for Vehicle Patrols.
- v1.0.6 - More Debug Prints, attempted Fixes of Patrols Duplicating.
- v1.0.5 - Added Debug Mode and Fixed a bug where Driver Peds wouldn't attack a Players Friends.
- v1.0.4 - Linting and General Fixes.
- v1.0.3 - Added Fail Safes' for Drivers Despawning when a Player is too far away.
- v1.0.2 - Added `pedSettings.relNameOverride` and Vehicle Patrols will now chase down the player if they are in a vehicle.
- v1.0.1 - Added Config Options for Distance Checks.
- v1.0.0 - Initial Release
