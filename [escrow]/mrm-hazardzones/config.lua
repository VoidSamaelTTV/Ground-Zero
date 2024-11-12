







Config = {}
Config.debugMode = false -- adds alot debug prints.. IMPORTANT!! If you restart the resource in game. you must have debugmode true. so you can use command /startHazardZones to start the zones. else you must logout and login again for starting the loops.
Config.hazardzones = {
    {
        Poly = { -- the setting of the polyzone of the hazardzone. (use /pzcreate "poly" to start drawing the polyzone. use /pzadd to add more points. and /pzfinish when you completed the zone. it will save to your main server folder next to your server.cfg file is called polyzone_created_zones)
            arg1 = {

                vector2(492.06134033203, -1144.4385986328),
                vector2(494.72296142578, -706.39147949219),
                vector2(466.35531616211, -688.30847167969),
                vector2(343.22814941406, -673.23620605469),
                vector2(210.34280395508, -629.06927490234),
                vector2(50.795589447021, -575.94757080078),
                vector2(-114.39456939697, -556.35131835938),
                vector2(-230.52973937988, -575.318359375),
                vector2(-337.61096191406, -585.93621826172),
                vector2(-361.49002075195, -595.677734375),
                vector2(-371.33999633789, -630.24554443359),
                vector2(-375.27618408203, -731.75775146484),
                vector2(-371.84558105469, -877.08386230469),
                vector2(-377.54544067383, -1000.6221313477),
                vector2(-376.48291015625, -1129.2238769531),
                vector2(-366.474609375, -1152.6774902344)


            },
            arg2 = {
                name="radioactivetest",
                minZ = -100,
                maxZ = 200,
                debugGrid=false,
                gridDivisions=25
            }
        },
        hotspot = vector3(121.63, -878.36, 31.12), -- hotspot where radiation is highest also where the hotspot prop spawns
        hotspotProp = "prop_rad_waste_barrel_01", -- name of the hotspot prop to spawn
        radius = 100,  -- Default = 100 works best for the math settings when calculating dmg vs range. so if you update it. you might wanna update the raduis to match. if to big dmg vs to low range. you will just get to much dmg to even survive. also to low dmg vs to high range. you dont take much dmg unless you VERY close to the hotspot.
        hotspotdmg = 5,-- This has different effects for either type  
                       -- Default = 5 works best for the math settings when calculating dmg vs range. so if you update it. you might wanna update the raduis to match. if to big dmg vs to low range. you will just get to much dmg to even survive. vs to low dmg vs to high range. you dont take any dmg unless you RIGHT at the hotspot.
                       -- (radioactive# this sets the MAX amount of rads the hotspotzone can give a player. raises as youy move closer to hotspot.) 
                       -- (biohazard# currently has no effect for biohazard zones) 
                       -- (toxic# this sets the amount of poisendmg given to the player. if he is inside the toxic hotspot. raises as you move closer. )
        damage = 15,   -- Base dmg given to the player should he be inside a hazard zone without the right protection gear the zone type needs. set under Config.hazardgear --
        dmgDelay = 10000, -- this is the time on how often you want the base dmg to be given to a player inside the zone without protection. ( time is in ms 10000 = 10 seconds )
        ZoneType = "radioactive", -- these 3 types available "radioactive" or "biohazard" or "toxic".
    },

    -- redzone biohazzard
    {
        Poly = { -- the setting of the polyzone of the hazardzone. (use /pzcreate "poly" to start drawing the polyzone. use /pzadd to add more points. and /pzfinish when you completed the zone. it will save to your main server folder next to your server.cfg file is called polyzone_created_zones)
            arg1 = {
                vector2(-555.77648925781, 5680.0991210938),
                vector2(-596.34283447266, 5604.9389648438),
                vector2(-618.06805419922, 5580.4423828125),
                vector2(-662.15087890625, 5545.9418945313),
                vector2(-749.31243896484, 5489.408203125),
                vector2(-799.14617919922, 5459.7924804688),
                vector2(-874.5, 5414.9077148438),
                vector2(-975.07739257813, 5384.755859375),
                vector2(-1025.6124267578, 5339.595703125),
                vector2(-1091.98046875, 5302.1943359375),
                vector2(-1171.3020019531, 5248.11328125),
                vector2(-1251.8802490234, 5251.9877929688),
                vector2(-1270.9600830078, 5249.7797851563),
                vector2(-1282.2335205078, 5241.1049804688),
                vector2(-1289.3929443359, 5230.9272460938),
                vector2(-1294.9461669922, 5213.5610351563),
                vector2(-1298.7626953125, 5193.9399414063),
                vector2(-1303.74609375, 5173.5551757813),
                vector2(-1317.4071044922, 5130.5009765625),
                vector2(-1469.0268554688, 5019.4091796875),
                vector2(-1649.9833984375, 4825.2353515625),
                vector2(-1774.19921875, 4728.4711914063),
                vector2(-1824.3807373047, 4670.4487304688),
                vector2(-1801.9920654297, 4636.1630859375),
                vector2(-1784.6865234375, 4648.8984375),
                vector2(-1769.4426269531, 4649.3706054688),
                vector2(-1772.5910644531, 4642.0112304688),
                vector2(-1811.4989013672, 4618.5454101563),
                vector2(-1812.0244140625, 4610.51953125),
                vector2(-1804.58203125, 4609.744140625),
                vector2(-1769.0529785156, 4593.5615234375),
                vector2(-1731.2401123047, 4508.4790039063),
                vector2(-1629.1466064453, 4474.556640625),
                vector2(-1591.4053955078, 4418.3647460938),
                vector2(-1574.4244384766, 4370.19140625),
                vector2(-1528.9929199219, 4365.0629882813),
                vector2(-1432.3663330078, 4343.1352539063),
                vector2(-1347.0239257813, 4342.2983398438),
                vector2(-1147.1267089844, 4407.052734375),
                vector2(-964.92364501953, 4384.0751953125),
                vector2(-892.01788330078, 4412.9272460938),
                vector2(-285.63391113281, 4414.4267578125),
                vector2(-102.772605896, 4222.6137695313),
                vector2(1.3200577497482, 4401.53125),
                vector2(157.47135925293, 4891.7451171875),
                vector2(-170.58679199219, 4828.9916992188),
                vector2(-306.14855957031, 4885.7475585938),
                vector2(-248.28552246094, 5046.0297851563),
                vector2(-263.3024597168, 5208.0209960938),
                vector2(-260.42489624023, 5306.0024414063),
                vector2(-293.2998046875, 5550.3852539063)
            },
            arg2 = {
                name="biohazardzone",
                minZ = -102.446781158447,
                maxZ = 500.627174377441,
                debugGrid=false,
                gridDivisions=25
            }
        },
        hotspot = vector3(-1125.46, 4926.46, 219.17), -- hotspot where radiation is highest also where the hotspot prop spawns
        hotspotProp = "sm_prop_smug_crate_s_hazard", -- name of the hotspot prop to spawn
        radius = 100,  -- Default = 100 works best for the math settings when calculating dmg vs range. so if you update it. you might wanna update the raduis to match. if to big dmg vs to low range. you will just get to much dmg to even survive. also to low dmg vs to high range. you dont take much dmg unless you VERY close to the hotspot.
        hotspotdmg = 5,-- This has different effects for either type  
                       -- Default = 5 works best for the math settings when calculating dmg vs range. so if you update it. you might wanna update the raduis to match. if to big dmg vs to low range. you will just get to much dmg to even survive. vs to low dmg vs to high range. you dont take any dmg unless you RIGHT at the hotspot.
                       -- (radioactive# this sets the MAX amount of rads the hotspotzone can give a player. raises as youy move closer to hotspot.) 
                       -- (biohazard# currently has no effect for biohazard zones) 
                       -- (toxic# this sets the amount of poisendmg given to the player. if he is inside the toxic hotspot. raises as you move closer. )
        damage = 25,   -- Base dmg given to the player should he be inside a hazard zone without the right protection gear the zone type needs. set under Config.hazardgear --
        dmgDelay = 10000, -- this is the time on how often you want the base dmg to be given to a player inside the zone without protection. ( time is in ms 10000 = 10 seconds )
        ZoneType = "biohazard", -- these 3 types available "radioactive" or "biohazard" or "toxic".
    },








    {
        Poly = { -- the setting of the polyzone of the hazardzone. (use /pzcreate "poly" to start drawing the polyzone. use /pzadd to add more points. and /pzfinish when you completed the zone. it will save to your main server folder next to your server.cfg file is called polyzone_created_zones)
            arg1 = {
                vector2(2296.0568847656, -360.51364135742),
                vector2(2354.7966308594, -261.68319702148),
                vector2(2415.5881347656, -182.04296875),
                vector2(2439.5124511719, -130.66606140137),
                vector2(2449.6125488281, -97.68172454834),
                vector2(2487.4553222656, -111.64353179932),
                vector2(2531.1745605469, -157.73561096191),
                vector2(2602.9721679688, -254.71813964844),
                vector2(2599.7126464844, -331.2223815918),
                vector2(2599.7702636719, -425.66708374023),
                vector2(2622.3630371094, -518.08343505859),
                vector2(2622.8801269531, -556.32849121094),
                vector2(2587.7980957031, -602.99859619141),
                vector2(2545.8798828125, -618.41839599609),
                vector2(2527.9814453125, -583.20050048828),
                vector2(2517.5024414063, -565.02264404297),
                vector2(2500.1723632813, -544.71282958984)
            },
            arg2 = {
                name="testradioactive1",
                minZ = -100,
                maxZ = 200,
                debugGrid=false,
                gridDivisions=25
            }
        },
        hotspot = vector3(2457.57, -298.99, 93.86), -- hotspot where radiation is highest also where the hotspot prop spawns
        hotspotProp = "prop_rad_waste_barrel_01", -- name of the hotspot prop to spawn
        radius = 100,  -- Default = 100 works best for the math settings when calculating dmg vs range. so if you update it. you might wanna update the raduis to match. if to big dmg vs to low range. you will just get to much dmg to even survive. also to low dmg vs to high range. you dont take much dmg unless you VERY close to the hotspot.
        hotspotdmg = 5,-- This has different effects for either type  
                       -- Default = 5 works best for the math settings when calculating dmg vs range. so if you update it. you might wanna update the raduis to match. if to big dmg vs to low range. you will just get to much dmg to even survive. vs to low dmg vs to high range. you dont take any dmg unless you RIGHT at the hotspot.
                       -- (radioactive# this sets the MAX amount of rads the hotspotzone can give a player. raises as youy move closer to hotspot.) 
                       -- (biohazard# currently has no effect for biohazard zones) 
                       -- (toxic# this sets the amount of poisendmg given to the player. if he is inside the toxic hotspot. raises as you move closer. )
        damage = 25,   -- Base dmg given to the player should he be inside a hazard zone without the right protection gear the zone type needs. set under Config.hazardgear --
        dmgDelay = 10000, -- this is the time on how often you want the base dmg to be given to a player inside the zone without protection. ( time is in ms 10000 = 10 seconds )
        ZoneType = "toxic", -- these 3 types available "radioactive" or "biohazard" or "toxic".
    }
}
Config.hotspotspecials = {
    Radiation = {
        RadsTimer = 1 -- The amount Rads is lowered every loop when not in the hotspot
    },
    Biohazard = {
        decontaminationTimeLimit = 1, -- time in minutes to decontaminate after being contaminated from biohazard hotspots. if failed to decontaminate in time, the player will become infected.
        contaminationInterval = 5 -- (seconds) interval between checking for nearby players to spread infection to. ( needs to be actve. but is not doing anything atm.)
        -- NOT WORKING YET. ( stuff to spread the virus to other players.)
        --virusspredtimer = 300000, -- time in ms (300000 = 5 minutes ) this is the time a player have to get threated from infection untill he dies. ( TO COME # it is also the time the virus is airbourne and can infect neaby players.)
        --infectionrange = 5, -- This value represents the range of how close other players need to be to a infected player to catch the infection Increase or decrease it as necessary.

    },
    Toxic = {
    }
}





Config.hazardgear = {
    Radiation = {
        name = "Gas Mask",
        drawables = {
            male = {78, 80, 88, 171, 172, 208, 217, 234}, -- Male drawables
            female = {78, 80, 88, 171, 172, 208, 217, 234}, -- Female drawables
        }
    },
    Biohazard = {
        name = "Bio Hazard Suit",
        drawables = {
            jacket_drawables = {
                male = {101}, -- Male jacket numbers
                female = {178, 283} -- Female jacket numbers
            },
            pants_drawables = {
                male = {74}, -- Male pants numbers
                female = {40} -- Female pants numbers
            },
            undershirt_drawables = {
                male = {96}, -- Male undershirt numbers
                female = {62, 43} -- Female undershirt numbers
            },
            arms_drawables = {
                male = {120}, -- Male vest numbers
                female = {37, 67} -- Female vest numbers
            }
        }
    },
    Toxic = {
        name = "Full Face Oxygen Breather",
        drawables = {
            male = {37, 67}, -- Male drawables
            female = {98}, -- Female drawables
        }
    },
}

Config.DecontaminationStations = {
    {
        Name = "Decontamination station 1", -- name of the decontamination station
        Coords = vector3(-440.3, 1078.65, 326.68), -- coords of where to spawn the ped that decontaminates you
        PedModel = "hazmat", -- the model of the ped.
        PedScenario = "WORLD_HUMAN_CLIPBOARD", -- the scenario of the ped.
    },
    -- {
    --     Name = "Decontamination station 2",
    --     Coords = vector3(2352.92, 2970.74, 48.67),
    --     PedModel = "a_f_y_business_02",
    --     PedScenario = "WORLD_HUMAN_AA_COFFEE",
    -- },
    -- {
    --     Name = "Decontamination station 2",
    --     Coords = vector3(2347.86, 2971.86, 48.54),
    --     PedModel = "a_f_y_business_02",
    --     PedScenario = "WORLD_HUMAN_AA_COFFEE",
    -- }
    -- Add more decontamination zones here
}





Config.notificationMessages = {
    ["EnteredRadioactiveZone"] = "You have entered a Radioactive zone!",
    ["EnteredBiohazardZone"] = "You have entered a Bioazard zone!",
    ["EnteredToxicZone"] = "You have entered a Bioazard zone!",
    ["LeftRadioactiveZone"] = "You have left a Radioactive zone!",
    ["LeftBiohazardZone"] = "You have left a Biohazard zone!",
    ["LeftToxicZone"] = "You have left a Toxic zone!",
    ["PlayerContaminated"] = "You have been Contaminated. Remember to Decontaminate after you leave the zone!",
    ["PlayerDecontaminated"] = "You have been decontaminated!",
    ["PlayerInfected"] = "You have failed to decontaminate in time. and has caught an infection!",
    ["CheckContaminationCommandTrue"] = "You are Contaminated!",
    ["CheckContaminationCommandFalse"] = "You are not Contaminated!",
    ["CheckInfectionCommandTrue"] = "You are infected with the virus!",
    ["CheckInfectionCommandFalse"] = "You are not infected with the virus!",
    ["InfectionTimedOut"] = "You suffered a hearth attack caused by infection!",
    ["RadiationPillsTaken"] = "The amount of Rads gained is reduced!",
    ["AntiViralsTaken"] = "You have been cured for infection!",
    -- ["PlayerInfectedByPlayer"] = "You caught an infection from a nearby player!" --not working yet
}
return Config
-- The script uses RADS as a stat. with added to meta data. so you will want to add this to where your metadatas are added in your qb-core script useually qb-core/server/player.lua 
--  
--        PlayerData.metadata["rads"] = PlayerData.metadata["rads"] ~= nil and PlayerData.metadata["rads"] or 1
-- you will also need to add these items to your qb-core/shared/items.lua
--        ["radiationpill"]                    = {["name"] = "radiationpill",                         ["label"] = "Radiation pills",                  ["weight"] = 100,       ["type"] = "item",      ["image"] = "radiationpills.png",               ["unique"] = false,         ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Radiation pills. ( reduces the amount of Rads gained when in a radioaktive hotspot)"},
--        ["antivirals"]                   = {["name"] = "antivirals",                        ["label"] = "antivirals",                   ["weight"] = 100,       ["type"] = "item",      ["image"] = "antivirals.png",               ["unique"] = false,         ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Antivirals (Cures infection from biohazard hotspots)"},
-- Script has a few commands.
--        /resetrads "id"  Sets the players rad to 0 ( ADMIN ONLY )
--        /checkinfection Sends a notification rather you are infected or not.
--        /rads - will show your current rad level.

--




