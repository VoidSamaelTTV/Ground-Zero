########################################################################################################################                   
##                                                                                ,,                                  ##                  
##  `7MMM.     ,MMF'`7MM"""Mq.  `7MMM.     ,MMF'     .M"""bgd                     db               mm                 ##                
##    MMMb    dPMM    MM   `MM.   MMMb    dPMM      ,MI    "Y                                      MM                 ##                 
##    M YM   ,M MM    MM   ,M9    M YM   ,M MM      `MMb.      ,p6"bo  `7Mb,od8 `7MM  `7MMpdMAo. mmMMmm  ,pP"Ybd      ##              
##    M  Mb  M' MM    MMmmdM9     M  Mb  M' MM        `YMMNq. 6M'  OO    MM' "'   MM    MM   `Wb   MM    8I   `"      ##           
##    M  YM.P'  MM    MM  YM.     M  YM.P'  MM      .     `MM 8M         MM       MM    MM    M8   MM    `YMMMa.      ##              
##    M  `YM'   MM    MM   `Mb.   M  `YM'   MM      Mb     dM YM.    ,   MM       MM    MM   ,AP   MM    L.   I8      ##               
##  .JML. `'  .JMML..JMML. .JMM..JML. `'  .JMML.    P"Ybmmd"   YMbmd'  .JMML.   .JMML.  MMbmmd'    `Mbmo M9mmmP'      ##               
##                                                                                      MM                            ##   
##                                                                                    .JMML.                          ##   
##                                                                                                                    ##  
########################################################################################################################  
##                                                          ,,                                                        ##          
##  `7MMF'  `7MMF'                                        `7MM      MMM"""AMV                                         ##            
##    MM      MM                                            MM      M'   AMV                                          ##              
##    MM      MM   ,6"Yb.  M"""MMV  ,6"Yb.  `7Mb,od8   ,M""bMM      '   AMV    ,pW"Wq.  `7MMpMMMb.   .gP"Ya  ,pP"Ybd  ##                 
##    MMmmmmmmMM  8)   MM  '  AMV  8)   MM    MM' "' ,AP    MM         AMV    6W'   `Wb   MM    MM  ,M'   Yb 8I   `"  ##                    
##    MM      MM   ,pm9MM    AMV    ,pm9MM    MM     8MI    MM        AMV   , 8M     M8   MM    MM  8M"""""" `YMMMa.  ##                      
##    MM      MM  8M   MM   AMV  , 8M   MM    MM     `Mb    MM       AMV   ,M YA.   ,A9   MM    MM  YM.    , L.   I8  ##                      
##  .JMML.  .JMML.`Moo9^Yo.AMMmmmM `Moo9^Yo..JMML.    `Wbmd"MML.    AMVmmmmMM  `Ybmd9'  .JMML  JMML. `Mbmmd' M9mmmP'  ##                        
##                                                                                                                    ##                      
########################################################################################################################                      
##                                                                                                                    ##                                                          
##                        Copyright (c) MRM Scripts. All rights reserved.                                             ##
##                        This script is the intellectual property of MRM Scripts and may not be                      ##  
##                        resold or redistributed without permission from the author.                                 ##
##                                                                                                                    ##     
########################################################################################################################




Hello and thanks for purchasing my hazard zone script.

The script uses polyzones to create different tyoe of hazard zones. each with its own unique abilitys and effects.

in the config you can set as meny zones as you want and fill out the settings to your liking.

Each biohazard zone you set. will come with a hotspot. to simulate the source of the hazard for that type.

Radioactive zones # The script uses a new metadata called Rads. ( its a sort of radiation tolerence ), ones it gets to high you wont be able to survive in the hotspot. even with protective gear.

Biohazard zones # If you enter a biohazard hotspot. you will become contaminated. and there you must decontaminate after you leave the zone. if you fail to do so in time. you will get infected from the contamination. ones a player becomes infected. he will need to be threated with antivirals in time . else the player will die.

Toxic zones # If you enter a Toxic hotspot. You will begin to take poisen dmg. from being to close to the toxic material spawned as the hotspot prop. dmg raises as you get closer to the hotspot center. ( working on some kind of antidope to counter the poisen dmg. )



This script require protective gear in order to not take base dmg when entering the zones and can be set in config here like the example below

The Radiation  require only a filter mask. and the toxic zones require full face mask where the Biohazard zone require full body suit.

Config.hazardgear = {
    Radiation = {
        name = "Gas Mask",
        drawables = {23, 49, 66} -- these numbers need to match the number mask you want to work as a radioactive protective mask. if you dont know your number from cloth menu. use Config.debugMode to see console prints of what number mask you are wearing while inside a zone.
    },
    Biohazard = {
        name = "Bio Hazard Suit",
        drawables = {
            jacket_drawables = {3}, -- these numbers need to match the number jacket you want to work as a biohazard protective jacket. if you dont know your number from cloth menu. use Config.debugMode to see console prints of what number mask you are wearing while inside a zone.
            pants_drawables = {3}, -- these numbers need to match the number pants you want to work as a biohazard protective pants. if you dont know your number from cloth menu. use Config.debugMode to see console prints of what number mask you are wearing while inside a zone.
            headwear_drawables = {3} -- these numbers need to match the number mask you want to work as a biohazard protective mask. if you dont know your number from cloth menu. use Config.debugMode to see console prints of what number mask you are wearing while inside a zone.
        }
    },
    Toxic = {
        name = "Full Face Oxygen Breather",
        drawables = {23, 125, 166} -- these numbers will have to match the number mask you want to use as a toxic protective mask
    }
}



Thje stuff under you only really want to change the decontaminationTimeLimit the rest is in development.

Config.hotspotspecials = {
    Radiation = {
    },
    Biohazard = {
        decontaminationTimeLimit = 30, -- time in minutes to decontaminate after being contaminated from biohazard hotspots. if failed to decontaminate in time, the player will become infected.
        contaminationInterval = 5 -- (seconds) interval between checking for nearby players to spread infection to. ( needs to be actve. but is not doing anything atm.)
        -- NOT WORKING YET. ( stuff to spread the virus to other players.)
        --virusspredtimer = 300000, -- time in ms (300000 = 5 minutes ) this is the time a player have to get threated from infection untill he dies. ( TO COME # it is also the time the virus is airbourne and can infect neaby players.)
        --infectionrange = 5, -- This value represents the range of how close other players need to be to a infected player to catch the infection Increase or decrease it as necessary.

    },
    Toxic = {
    }
}


then we have got the Decontamination stations

For now this spawns a ped you can use target eye on to get decontaminated. ( plans are to implement a decontamination station with mechanics and effects. like you have to enter a decontamination champer. and sprayed with water or something like that. ) for now we can add these peds manueally at the location choose.

Config.DecontaminationStations = {
    {
        Name = "Decontamination station 1", -- name of the decontamination station
        Coords = vector3(2348.96, 2975.07, 48.51), -- coords of where to spawn the ped that decontaminates you
        PedModel = "a_f_y_business_02", -- the model of the ped.
        PedScenario = "WORLD_HUMAN_CLIPBOARD", -- the scenario of the ped.
    },
    {
        Name = "Decontamination station 2",
        Coords = vector3(2352.92, 2970.74, 48.67),
        PedModel = "a_f_y_business_02",
        PedScenario = "WORLD_HUMAN_AA_COFFEE",
    },
    {
        Name = "Decontamination station 2",
        Coords = vector3(2347.86, 2971.86, 48.54),
        PedModel = "a_f_y_business_02",
        PedScenario = "WORLD_HUMAN_AA_COFFEE",
    }
    -- Add more decontamination zones here
}



last we must not forget to add some code into qb-core resource.

since we have made a new stat called Rads.  add this line in your qb-core script useually qb-core/server/player.lua

PlayerData.metadata["rads"] = PlayerData.metadata["rads"] ~= nil and PlayerData.metadata["rads"] or 1

you will also need to add these items to your qb-core/shared/items.lua
        ["radiationpill"]                    = {["name"] = "radiationpill",                         ["label"] = "Radiation pills",                  ["weight"] = 100,       ["type"] = "item",      ["image"] = "radiationpills.png",               ["unique"] = false,         ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Radiation pills. ( reduces the amount of Rads gained when in a radioaktive hotspot)"},
        ["antivirals"]                   = {["name"] = "antivirals",                        ["label"] = "antivirals",                   ["weight"] = 100,       ["type"] = "item",      ["image"] = "antivirals.png",               ["unique"] = false,         ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Antivirals (Cures infection from biohazard hotspots)"},
 


Script also has a few commands.
        /resetrads "id"  Sets the players rad to 0 ( ADMIN ONLY )
        /checkinfection Sends a notification rather you are infected or not.
        /checkcontamination Checks if you are contaminated or not.
 		/rads - will show your current rad level.


