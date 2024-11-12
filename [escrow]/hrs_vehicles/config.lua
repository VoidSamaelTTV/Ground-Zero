Config = {}

Config.debugPrint = false

Config.UseProgressBar = true -- ox_lib / qb-progressbar / mythic

Config.FuelScript = "ps-fuel" --- if you don't have one make it Config.FuelScript = false or nil or go check the open source , LegacyFuel or hrs_fuel

-- Config.VehicleSpawnBlips = {
--     label = "Vehicle Spawn Location",
--     color = 17,
--     alpha = 128,
--     scale = 1.0,
--     sprite = 227,
--     shortRange = true      
-- } ----------- false if you dont want them

-- Config.VehicleSpawnBlipsFixedLocations = {
--     label = "Vehicle Spawn Location",
--     color = 17,
--     alpha = 128,
--     scale = 1.0,
--     sprite = 227,
--     shortRange = true  
-- }

Config.OxInventory = true 

Config.generatedPlates = {
    'number','number','number','number','letter','letter','letter','letter'
}

Config.databaseSaveRefreshTime = 120 ---------- (seconds) every 120 seconds the database will save the changes in the vehicles

Config.deadCounterDeleteTime = 120 ------ (minutes) how much time you have to go repair your vehicle after it explodes , if you don't repair it in this time it will be lost forever

Config.usingBaseBuildingCrew = true ------- if you have the last version of base building and you are using the crew system, players on the same crew can drive each other vehicles

Config.useLockSystem = true ------- use the built in locking system for vehicles
Config.useCommandForLocking = 'l' ------------------ if you want to use this do -- Config.useCommandForLocking = 'key you want' , example -- Config.useCommandForLocking = 'j'
Config.useTargetForLocking = true ----- will use the target system to lock and unlock vehicles (only vehicles with doors will work)
Config.onlyLockIfHasDoors = true ------ only vehicles with doors will be possible to lock and unlock (realistic method)

Config.vehiclesLimitPerPlayer = 10 ---- this is the limit of vehicles someone can craft, keep in mind that when a vehicle is in a garage that vehicle will not count

Config.BicyclesAsItems = {
    ['cruiser'] = 'cruiser',
    ['bmx'] = 'bmx',
    ['fixter'] = 'fixter',
} ------- make this Config.BicyclesAsItems = false if you don't want this (left side is the model, right side is the item name) you have to add the items to your server and use them to spawn the bicycle and you can get it back using target
---- this bicycles will not be persistent!!! 



Config.forcedBucket = 0 -- this script can only work in the bucket defined here (if you don't know what buckets are this does not matter to you)


---------- this are crafting things related to the vehicle category -------------

Config.trailers = {
    `armytanker`, 
    `armytrailer`, 
    `armytrailer2`, 
    `baletrailer`, 
    `boattrailer`,
    `cablecar`, 
    `docktrailer`, 
    `freighttrailer`,
    `graintrailer`, 
    `proptrailer`, 
    `raketrailer`, 
    `tr2`, 
    `tr3`,
    `tr4`,
    `trflat`,
    `tvtrailer`,
    `tanker`,
    `tanker2`,
    `trailerlarge`,
    `trailerlogs`,
    `trailersmall`,
    `trailers`,
    `trailers2`,
    `trailers3`,
    `trailers4`
}

Config.weightToBeTruck = 5000 ----- how much weight a vehicle needs to have to be considered a truck

Config.vehicleTypes = {
    ['Bicycle'] = {
        wheelItem = "bicycle_tire", ------- the wheel item
        fixedItems = {
            {item = "chain",count = 1}
        }, ------- items that will always be needed for this kind of vehicle
        defaultItems = {
            {item = "vehicleparts",count = 10}
        }, -------- items that can be overwritten by Config.specificCraftingParts
        fixedStealItems = {
            {item = "lockpick",count = 1}
        }, -------- items that will always be needed to steal this kind of vehicle
        defaultStealItems = {
            {item = "cables",count = 10}
        } -------- items that can be overwritten by Config.specificStealParts
    },
    ['Bike'] = {
        wheelItem = "bike_tire",
        fixedItems = {
            {item = "6v_battery",count = 1}
        },
        defaultItems = {
    
        },
        handlingRelatedItems = {
            accelerationRelated = {
                defaultValue = 35.7, ----- FINITIALDRIVEFORCE x INITIALDRIVEMAXFLATVEL
                defaultItems = {
                    {item = "vehicleparts",count = 50}
                } 
            },  ----- FINITIALDRIVEFORCE x INITIALDRIVEMAXFLATVEL
            weightRelated = {
                defaultValue = 220, --- a default weight handling value
                defaultItems = {
                    {item = "engineoil",count = 1}
                }
            } ---- FMASS
        }, --- the default values were based on ENDURO motorcycle
        fixedStealItems = {
            {item = "lockpick",count = 1}
        },
        defaultStealItems = {
            {item = "cables",count = 10}
        }
    },
    ['Boat'] = {
        fixedItems = {
            {item = "12v_battery",count = 2}
        },
        defaultItems = {
           
        },
        handlingRelatedItems = {
            accelerationRelated = {
                defaultValue = 2000, ----- FINITIALDRIVEFORCE x INITIALDRIVEMAXFLATVEL
                defaultItems = {
                    {item = "vehicleparts",count = 300}
                } 
            },  ----- FINITIALDRIVEFORCE x INITIALDRIVEMAXFLATVEL
            weightRelated = {
                defaultValue = 2000, --- a default weight handling value
                defaultItems = {
                    {item = "engineoil",count = 10}
                }
            } ---- FMASS
        }, --- the default values were based on dinghy boat  
        fixedStealItems = {
            {item = "lockpick",count = 1}
        },
        defaultStealItems = {
            {item = "cables",count = 10}
        }
    },
    ['Car'] = {
        wheelItem = "car_tire",
        fixedItems = {
            {item = "12v_battery",count = 1}
        },
        defaultItems = {
           
        },
        handlingRelatedItems = {
            accelerationRelated = {
                defaultValue = 40, ----- FINITIALDRIVEFORCE x INITIALDRIVEMAXFLATVEL
                defaultItems = {
                    {item = "vehicleparts",count = 130}
                } 
            },  ----- FINITIALDRIVEFORCE x INITIALDRIVEMAXFLATVEL
            weightRelated = {
                defaultValue = 900, --- a default weight handling value
                defaultItems = {
                    {item = "engineoil",count = 5}
                }
            } ---- FMASS
        }, --- the default values were based on futo car 
        fixedStealItems = {
            {item = "lockpick",count = 1}
        },
        defaultStealItems = {
            {item = "cables",count = 10}
        }
    },
    ['Truck'] = {
        wheelItem = "truck_tire",
        fixedItems = {
            {item = "24v_battery",count = 1}
        },
        defaultItems = {
           
        },
        handlingRelatedItems = {
            accelerationRelated = {
                defaultValue = 21, ----- FINITIALDRIVEFORCE x INITIALDRIVEMAXFLATVEL
                defaultItems = {
                    {item = "vehicleparts",count = 350}
                } 
            },  ----- FINITIALDRIVEFORCE x INITIALDRIVEMAXFLATVEL
            weightRelated = {
                defaultValue = 7000, --- a default weight handling value
                defaultItems = {
                    {item = "engineoil",count = 35}
                }
            } ---- FMASS
        }, --- the default values were based on futo car 
        fixedStealItems = {
            {item = "lockpick",count = 1}
        },
        defaultStealItems = {
            {item = "cables",count = 10}
        }
    },
    ['Heli'] = {
        fixedItems = {
            {item = "12v_battery",count = 1}
        },
        defaultItems = {
           
        },
        handlingRelatedItems = {
            accelerationRelated = {
                defaultValue = 48, ----- FINITIALDRIVEFORCE x INITIALDRIVEMAXFLATVEL
                defaultItems = {
                    {item = "vehicleparts",count = 1000}
                } 
            },  ----- FINITIALDRIVEFORCE x INITIALDRIVEMAXFLATVEL
            weightRelated = {
                defaultValue = 3800, --- a default weight handling value
                defaultItems = {
                    {item = "engineoil",count = 20}
                }
            } ---- FMASS
        }, --- the default values were based on buzzard2 heli 
        fixedStealItems = {
            {item = "lockpick",count = 1}
        },
        defaultStealItems = {
            {item = "cables",count = 10}
        }
    },
    ['Jetski'] = {
        fixedItems = {
            {item = "6v_battery",count = 2}
        },
        defaultItems = {
           
        },
        handlingRelatedItems = {
            accelerationRelated = {
                defaultValue = 1625, ----- FINITIALDRIVEFORCE x INITIALDRIVEMAXFLATVEL
                defaultItems = {
                    {item = "vehicleparts",count = 150}
                } 
            },  ----- FINITIALDRIVEFORCE x INITIALDRIVEMAXFLATVEL
            weightRelated = {
                defaultValue = 400, --- a default weight handling value
                defaultItems = {
                    {item = "engineoil",count = 2}
                }
            } ---- FMASS
        }, --- the default values were based on seashark boat  
        fixedStealItems = {
            {item = "lockpick",count = 1}
        },
        defaultStealItems = {
            {item = "cables",count = 10}
        },
    },
    ['Plane'] = {
        fixedItems = {
            {item = "24v_battery",count = 1}
        },
        defaultItems = {
           
        },
        handlingRelatedItems = {
            accelerationRelated = {
                defaultValue = 0.20, ----- FINITIALDRIVEFORCE x INITIALDRIVEMAXFLATVEL
                defaultItems = {
                    {item = "vehicleparts",count = 350}
                } 
            },  ----- FINITIALDRIVEFORCE x INITIALDRIVEMAXFLATVEL
            weightRelated = {
                defaultValue = 450, --- a default weight handling value
                defaultItems = {
                    {item = "engineoil",count = 20}
                }
            } ---- FMASS
        }, --- the default values were based on howard plane 
        fixedStealItems = {
            {item = "lockpick",count = 1}
        },
        defaultStealItems = {
            {item = "cables",count = 10}
        }
    },
    ['Quadbike'] = {
        wheelItem = "quad_tire",
        fixedItems = {
            {item = "6v_battery",count = 1}
        },
        defaultItems = {
           
        },
        handlingRelatedItems = {
            accelerationRelated = {
                defaultValue = 24, ----- FINITIALDRIVEFORCE x INITIALDRIVEMAXFLATVEL
                defaultItems = {
                    {item = "vehicleparts",count = 50}
                } 
            },  ----- FINITIALDRIVEFORCE x INITIALDRIVEMAXFLATVEL
            weightRelated = {
                defaultValue = 600, --- a default weight handling value
                defaultItems = {
                    {item = "engineoil",count = 2}
                }
            } ---- FMASS
        }, --- the default values were based on futo car 
        fixedStealItems = {
            {item = "lockpick",count = 1}
        },
        defaultStealItems = {
            {item = "cables",count = 10}
        }
    },
    ['Trailer'] = {
        fixedItems = {},
        defaultItems = {},
        handlingRelatedItems = {
            accelerationRelated = {
                defaultValue = 40, ----- FINITIALDRIVEFORCE x INITIALDRIVEMAXFLATVEL
                defaultItems = {
                    {item = "vehicleparts",count = 130}
                } 
            },  ----- FINITIALDRIVEFORCE x INITIALDRIVEMAXFLATVEL
            weightRelated = {
                defaultValue = 900, --- a default weight handling value
                defaultItems = {
                    {item = "vehicleparts",count = 5}
                }
            } ---- FMASS
        }, --- the default values were based on futo car 
        fixedStealItems = {
            {item = "lockpick",count = 1}
        },
        defaultStealItems = {}
    },
    ['General'] = {
        fixedItems = {},
        defaultItems = {},
        handlingRelatedItems = {
            accelerationRelated = {
                defaultValue = 40, ----- FINITIALDRIVEFORCE x INITIALDRIVEMAXFLATVEL
                defaultItems = {
                    {item = "vehicleparts",count = 130}
                } 
            },  ----- FINITIALDRIVEFORCE x INITIALDRIVEMAXFLATVEL
            weightRelated = {
                defaultValue = 900, --- a default weight handling value
                defaultItems = {
                    {item = "vehicleparts",count = 5}
                }
            } ---- FMASS
        }, --- the default values were based on futo car 
        fixedStealItems = {
            {item = "lockpick",count = 1}
        },
        defaultStealItems = {}
    },
}

-------------------------------------------------------

Config.numberOfVehiclesPerRestart = 5 ---------- how much vehicles will spawn (broken) on the map per server restart

Config.stealItem = 'toolbox' ------ item you will use to open the steal vehicle menu (you have to use it inside the vehicle)

Config.fixKitItem = 'fixkit' ---- item you want to use as repair kit

Config.unlockItem = 'lockpick' ---- item to unlock locked vehicles (uses target, only works on vehicles who have doors)
Config.unlockMethod = 'target'    ---- it can be 'target' or 'useitem'

Config.repairEngineTarget = true ------ use target to repair vehicles after they explode or die

Config.vipPlateItems = {
    ['vip_plate_bike'] = {
        ['Bike'] = true,
        ['Quadbike'] = true,
    },
    ['vip_plate_boat'] = {
        ['Boat'] = true
    },
    ['vip_plate_car'] = {
        ['Car'] = true
    },
    ['vip_plate_truck'] = {
        ['Truck'] = true
    },
    ['vip_plate_heli'] = {
        ['Heli'] = true
    },
    ['vip_plate_jetski'] = {
        ['Jetski'] = true
    },
    ['vip_plate_plane'] = {
        ['Plane'] = true
    }
} --- left side VIP plate name, righ side vehicle category that gets that plate. A vehicle with a VIP plate will not be possible to steal and will not be removed after Config.deadCounterDeleteTime if exploded

Config.specificCraftingParts = {
    [`futo`] = {
        {item = "vehicleparts",count = 1000}
    },
}

Config.specificStealParts = {
    [`futo`] = {
        {item = "vehicleparts",count = 1000}
    },
}

Config.vehicleLists = {
    ['cheap_cars'] = {
        `rebel`,`ratloader`,`journey`,`emperor2`,`ratbike`,`tornado3`, `voodoo2`
    },
    -- ['sport_cars'] = {
    --     `adder`,`vigero`,`omnis`
    -- },
    ['military_vehicles'] = {
        `unarmed1`,`unarmed2`
    },
    ['ambulance_vehicles'] = {
        `ambulance`
    },
    ['haunted_vehicles'] = {
        `lurcher`
    },
    ['Heli'] = {
        `buzzard2`,`frogger`,`maverick`,`cargobob3`
    }
} ----- you can create your vehicle lists to use on Config.locations

Config.brokenVehiclesProperties = {
    [`hermes`] = {
        modLivery = 5
    }
} -- this will depend on your Framework vehicle properties function

    Config.locations = {
        {
            coords = vector3(-974.05, -2674.91, 16.19),
            radius = 5.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            }, ---- sum of probability can't go past 100%
            probability = 1
        },
        {
            coords = vector3(-894.75, -2620.8, 21.19),
            radius = 5.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-1016.62, -2559.66, 21.19),
            radius = 5.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            }, ---- sum of probability can't go past 100%
            probability = 1
        },
        {
            coords = vector3(-1004.34, -2622.41, 34.41),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-841.18, -2498.85, 13.83),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            }, ---- sum of probability can't go past 100%
            probability = 1
        },
        {
            coords = vector3(-923.72, -2090.85, 8.88),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-191.38, -1805.5, 29.36),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            }, ---- sum of probability can't go past 100%
            probability = 1
        },
        {
            coords = vector3(273.62, -2074.81, 16.46),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-380.42, -2783.07, 5.58),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            }, ---- sum of probability can't go past 100%
            probability = 1
        },
        {
            coords = vector3(-181.96, -2493.61, 5.62),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(220.53, -2954.56, 5.52),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            }, ---- sum of probability can't go past 100%
            probability = 1
        },
        {
            coords = vector3(281.67, -3218.21, 5.38),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(1276.82, -3224.21, 5.48),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            }, ---- sum of probability can't go past 100%
            probability = 1
        },
        {
            coords = vector3(1044.73, -2398.16, 29.5),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(872.69, -2188.96, 30.1),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            }, ---- sum of probability can't go past 100%
            probability = 1
        },
        {
            coords = vector3(156.9, -1812.85, 27.91),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(215.578, -1135.859, 29.29675),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            }, ---- sum of probability can't go past 100%
            probability = 1
        },
        {
            coords = vector3(-732.052734, -415.186798, 34.722290),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(215.578, -1135.859, 29.29675),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            }, ---- sum of probability can't go past 100%
            probability = 1
        },
        {
            coords = vector3(-732.052734, -415.186798, 34.722290),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-1019.22, -1526.07, 5.18),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            }, ---- sum of probability can't go past 100%
            probability = 1
        },
        {
            coords = vector3(-1284.05, -1397.94, 4.07),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-1282.16, -1156.38, 5.29),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            }, ---- sum of probability can't go past 100%
            probability = 1
        },
        {
            coords = vector3(-1494.05, -691.64, 26.7),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-1615.94, -508.28, 35.17),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            }, ---- sum of probability can't go past 100%
            probability = 1
        },
        {
            coords = vector3(-1938.79, -334.96, 45.96),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(215.578, -1135.859, 29.29675),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            }, ---- sum of probability can't go past 100%
            probability = 1
        },
        {
            coords = vector3(-732.052734, -415.186798, 34.722290),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(799.61, -1787.87, 28.9),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(1216.33, -1373.48, 34.78),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(948.65, -885.61, 43.02),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(333.84, -1521.16, 28.94),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-338.2, -1392.41, 30.33),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-610.38, -1000.7, 21.37),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-159.68, -425.71, 33.35),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(912.01, -165.73, 73.89),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(376.57, -248.6, 53.52),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-190.41, 170.11, 69.91),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-1047.4, -211.96, 37.31),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-1047.4, -211.96, 37.31),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(658.32, 632.76, 128.49),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-1248.95, 477.36, 93.1),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-1816.86, 776.89, 136.64),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-2347.22, 292.08, 169.05),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-3063.55, 373.74, 6.51),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-3190.95, 1177.8, 8.94),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(1716.25, -1657.99, 112.07),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(2666.73, 1708.95, 24.07),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(1522.62, 2232.92, 75.07),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(2139.19, 3271.9, 45.72),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(1960.01, 3773.38, 31.78),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(1579.46, 3748.62, 33.73),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(942.35, 3611.24, 32.3),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(397.66, 3522.24, 33.71),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(43.59, 2802.72, 57.46),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(2546.78, 4673.74, 33.65),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(2237.7, 5178.23, 59.24),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(2085.62, 4985.23, 40.27),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(153.76, 6580.37, 31.17),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-176.01, 6449.17, 30.53),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-753.01, 5530.74, 32.81),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-753.01, 5530.74, 32.81),
            radius = 10.0,
            Lists = {
                {list = 'cheap_cars', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-1802.69, 3095.99, 32.69),
            radius = 2.0,
            Lists = {
                {list = 'military_vehicles', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-2070.27, 2819.82, 32.81),
            radius = 2.0,
            Lists = {
                {list = 'military_vehicles', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-1877.1, 2805.04, 33.39),
            radius = 2.0,
            Lists = {
                {list = 'Heli', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-1695.96, -292.96, 51.14),
            radius = 2.0,
            Lists = {
                {list = 'haunted_vehicles', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-1657.27, -225.31, 54.33),
            radius = 2.0,
            Lists = {
                {list = 'haunted_vehicles', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-2449.25, 2964.92, 32.81),
            radius = 2.0,
            Lists = {
                {list = 'haunted_vehicles', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-1859.9, 2795.61, 32.81),
            radius = 2.0,
            Lists = {
                {list = 'Heli', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(-2420.6, 3278.23, 32.83),
            radius = 2.0,
            Lists = {
                {list = 'military_vehicles', probability = 100},
            },
            probability = 1
        },
        {
            coords = vector3(293.0, -574.54, 43.2),
            radius = 2.0,
            Lists = {
                {list = 'ambulance_vehicles', probability = 100},
            },
            probability = 1
        },
    } ---- sum of probability can't go past 100%

Config.fixedLocations = {
    -- {
    --     coords = vector3(518.77, 168.78, 99.37),
    --     heading = 252.43,
    --     Lists = {
    --         {list = 'cheap_cars', probability = 50},
    --         {list = 'sport_cars', probability = 50}
    --     } ---- sum of probability can't go past 100%
    -- },
    -- {
    --     coords = vector3(-1358.38, -756.18, 22.3),
    --     heading = 301.4,
    --     Lists = {
    --         {list = 'cheap_cars', probability = 50},
    --         {list = 'sport_cars', probability = 50}
    --     }
    -- },
    -- {
    --     coords = vector3(-894.2, -349.21, 34.53),
    --     heading = 23.79,
    --     Lists = {
    --         {list = 'cheap_cars', probability = 50},
    --         {list = 'sport_cars', probability = 50}
    --     }
    -- }
} ----- this are locations that will always have 1 vehicle defined by you

Config.Locales = {
    ["repair"] = "Restore Vehicle",
    ["click_repair"] = "Click to restore this vehicle",
    ["steal"] = "Steal Vehicle",
    ["click_steal"] = "Click to steal this vehicle",
    ["not_all_items"] = "You don't have all items",
    ["is_yours"] = "This vehicle is yours already",
    ["cant_steal"] = "You can't steal this vehicle",
    ["stole_this"] = "You stole this vehicle",
    ["no_permission"] = "You have no permission to drive this vehicle",
    ["repaired"] = "Vehicle repaired",
    ["get_bicycle"] = "Get this Bicycle",
    ["no_repairkit"] = "You don't have a repair kit",
    ["no_wheels"] = "You have no wheels to replace",
    ["broken"] = "You can't drive a broken vehicle",
    ["no_close_wheels"] = "No close wheels",
    ["wheel_ok"] = "This wheel is fine",
    ["no_vehicles_lock"] = "No vehicles to lock or unlock close",
    ["veh_unlocked"] = "Vehicle unlocked",
    ["veh_locked"] = "Vehicle Locked",
    ["no_lock"] = "You can't lock this vehicle",
    ["no_lockpick"] = "You don't have the lockpick item",
    ["no_close_locked_veh"] = "There is no close vehicle to lockpick",
    ["has_vip_plate"] = "This vehicle has a VIP plate",
    ["wrong_plate"] = "This plate can't be used on this vehicle",
    ["is_not_yours"] = "This vehicle is not yours",
    ["no_plate"] = "You have no Vip Plate item",
    ["new_vipplate"] = "Your vehicle has now a vip plate",
    ["veh_limit"] = "You reached the vehicle limit",
}

Config.ProgressBars = {
    ["vehicle_repair"] = {
        duration = 5000,
        label = "Repairing vehicle",
        animation = {
            animDict = 'amb@prop_human_bum_bin@base',
            anim = 'base'
        },
        prop = {
            model = nil
        }
    },
    ["vehicle_steal"] = {
        duration = 5000,
        label = "Stealing vehicle",
        animation = {
            animDict = 'amb@prop_human_bum_bin@base',
            anim = 'base'
        },
        prop = {
            model = nil
        }
    },
    ["get_bicycle"] = {
        duration = 2500,
        label = "Saving Bicycle",
        animation = {
            animDict = 'amb@prop_human_bum_bin@base',
            anim = 'base'
        },
        prop = {
            model = nil
        }
    },
    ["wheel_repair"] = {
        duration = 5000,
        label = "Fixing tyre",
        animation = {
            task = 'PROP_HUMAN_BUM_BIN'
        },
        prop = {
            model = nil
        }
    },
    ["engie_repair"] = {
        duration = 5000,
        label = "Fixing engine",
        animation = {
            task = 'PROP_HUMAN_BUM_BIN'
        },
        prop = {
            model = nil
        }
    },
    ["veh_unlock"] = {
        duration = 5000,
        label = "Unlocking vehicle",
        animation = {
            task = 'WORLD_HUMAN_WELDING'
        },
        prop = {
            model = nil
        }
    },
    ["veh_scrap"] = {
        duration = 5000,
        label = "Scraping vehicle",
        animation = {
            task = 'WORLD_HUMAN_WELDING'
        },
        prop = {
            model = nil
        }
    },
}

-- Config.garageLocations = {
--     {
--         coords = vector3(-1058.9, -3202.34, 13.94),
--         blip = {
--             label = "Garage",
--             color = 17,
--             alpha = 128,
--             scale = 1.0,
--             sprite = 227,
--             shortRange = true  
--         },
--         radius = 10.0,
--         message = "[E] - Open garage Menu"
--     }
-- }

Config.vehicleShopVehicles = {
    ['ratbike'] = {label = 'Rat Bike', category = "Motorcycles", price = 225000},
    ['tornado3'] = {label = 'tornado', category = "Sports Classics", price = 375000},
    ['ratloader'] = {label = 'Rat-Loader', category = "Muscle", price = 380000},
    ['voodoo2'] = {label = 'Voodoo', category = "Muscle", price = 410000},
    ['rebel'] = {label = 'Rebel', category = "Off-Road", price = 425000},
    ['emperor2'] = {label = 'Emperor', category = "Sedans", price = 450000},
    ['journey'] = {label = 'Journey', category = "Vans", price = 500000},
    ['ambulance'] = {label = 'Ambulance', category = "Emergency", price = 500000},
    ['lurcher'] = {label = 'Lurcher', category = "Muscle", price = 600000},
    ['unarmed1'] = {label = 'HMMWV (Tan)', category = "Off-Road", price = 750000},
    ['unarmed2'] = {label = 'HMMWV (Camo)', category = "Off-Road", price = 750000},

    ['buzzard2'] = {label = 'Buzzard', category = "Helicopters", price = 2500000},
    ['frogger'] = {label = 'Frogger', category = "Helicopters", price = 3000000},
    ['maverick'] = {label = 'Maverick', category = "Helicopters", price = 3000000},
    ['cargobob3'] = {label = 'Cargobob', category = "Helicopters", price = 4000000},


    -- ['cheap_cars'] = {
    --     `rebel`,`ratloader`,`journey`,`emperor2`,`ratbike`,`tornado3`, `voodoo2`
    -- },
    -- -- ['sport_cars'] = {
    -- --     `adder`,`vigero`,`omnis`
    -- -- },
    -- ['military_vehicles'] = {
    --     `unarmed1`,`unarmed2`
    -- },
    -- ['ambulance_vehicles'] = {
    --     `ambulance`
    -- },
    -- ['haunted_vehicles'] = {
    --     `lurcher`
    -- },
    -- ['Heli'] = {
    --     `buzzard2`,`frogger`,`maverick`,`cargobob3`
    -- }
}

Config.vehicleShopLocations = {
    {
        coords = vector3(-423.25, 1205.11, 325.64),
        blip = {
            label = "Vehicle Shop",
            color = 5,
            alpha = 128,
            scale = 0.5,
            sprite = 810,
            shortRange = true  
        },
        radius = 10.0,
        message = "[E] - Open Vehicle Shop Menu"
    }
}

Config.scrapVehiclePercentage = {min = 10, max = 30} --- you will get between 10 and 30% of the restore materials 

Config.vehicleScrapLocations = {
    {
        coords = vector3(-450.07, 1138.89, 325.9),
        blip = {
            label = "Vehicle Scrap",
            color = 17,
            alpha = 128,
            scale = 0.5,
            sprite = 227,
            shortRange = true  
        },
        radius = 10.0,
        message = "[E] - Scrap vehicle"
    }
}

Config.shellItems = {
    ['futo_shell'] = `futo`,
    ['enduro_shell'] = `enduro`,
}

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

function debugPrint(text)
    if Config.debugPrint then
        print(text)
    end
end


------ THIS SCRIPT COMES WITH THIS EXPORTS:

------ exports['hrs_vehicles']:setVehiclePersistent(vehicle)              -- will convert a vehicle into persistent
------ exports['hrs_vehicles']:updateVehicleProperties(vehicle)           -- will update de vehicle mods
------ exports['hrs_vehicles']:removeVehiclePersistent(vehicle,delete)    -- will remove the vehicle from the persistent list , second argument is if you want to delete the vehicle or not
------ exports['hrs_vehicles']:isVehiclePersistent(vehicle)               -- will return true or false , check if the vehicle is a persistent vehicle or not

------ THIS SCRIPT COMES WITH THIS COMMANDS:

------ /createveh (name of the vehicle) -- you can create a specific broken vehicle to be reapaired in your current locations / permission = admin
------ /tpplate (plate of the vehicle) -- you can teleport to a specific vehicle location / permission = admin
------ /givekeys (player ID) -- you can give the car you are inside to another player, once you give the car to another person you loose the access to it unless that person is from your crew / permission = user
------ /clearvehicles (radius) -- this will remove persistence on the vehicles on this radius, this will permanently delete persistence so please be carefull











