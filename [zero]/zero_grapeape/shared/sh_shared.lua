Shared = Shared or {}

--- Other
Shared.Debug = false
Shared.CopJob = "leo"
Shared.Dispatch = "ps-dispatch"

--- Items
--Shared.MaleSeed = 'weedplant_seedm'
Shared.FemaleSeed = 'seed_weed_grapeape'
Shared.DigItem = 'trowel'
Shared.EmptyCanItem = 'empty_watering_can'
Shared.FullCanItem = 'full_watering_can'
Shared.FertilizerItem = 'weed_nutrition'
Shared.WaterItem = 'water_bottle'
Shared.BranchItem = 'grapeape_crop'
Shared.WeedItem = 'weedplant_weed'
Shared.PackedWeedItem = 'weedplant_packedweed'
Shared.SusPackageItem = 'weedplant_package'
Shared.LabkeyItem = 'keya' -- Key required to enter the weed lab

--- Weed Processing | Weed-Lab
-- Shared.WeedLab = {
--     EnableTp = true, -- Set this to false if you do not want to use this teleportation system. 
--     RequireKey = true,  -- Set this to false to disable the requirement of a lab key to enter the weed lab (set to true if you want to use the key)
--     EnableSound = true, --  Set this to false if you dont want the interact sound while exiting / entering the wee lab.
-- }

Shared.ProcessingHealthFallback = 25 -- fallback if item.info.health is nil

--- Props
Shared.WeedProps = {
    [1] = `bzzz_plants_weed_purple_small`,
    [2] = `bzzz_plants_weed_purple_medium`,
    [3] = `bzzz_plants_weed_purple_big`,
    [4] = `bzzz_plants_weed_purple_bud`,
    [5] = `bzzz_plants_weed_purple_bud_big`
}

-- Shared.ProcessingProps = {
--     {model = "bkr_prop_weed_table_01a",    coords = vector4(1045.41, -3197.64, -38.13, 270),},
--     {model = "hei_prop_heist_weed_pallet", coords = vector4(1044.89, -3192.6, -37.91, 196.56),},
--     {model = "hei_prop_heist_weed_pallet", coords = vector4(1043.07, -3192.55, -37.91, 183.94),},
--     {model = "hei_prop_heist_weed_pallet", coords = vector4(1041.27, -3192.61, -37.91, 183.98),},
--     {model = "hei_prop_heist_weed_pallet", coords = vector4(1042.64, -3206.14, -37.85, 21.93),},
-- }

Shared.PackageProp = `prop_mp_drug_package`

--- Growing Related Settings
Shared.rayCastingDistance = 7.0 -- distance in meters
Shared.ClearOnStartup = true -- Clear dead plants on script start-up
Shared.ObjectZOffset = 0.0 -- Z-coord offset for WeedProps
Shared.FireTime = 10000

Shared.GrowTime = 60 -- Time in minutes for a plant to grow from 0 to 100
Shared.LoopUpdate = 1 -- Time in minutes to perform a loop update for water, nutrition, health, growth, etc.
Shared.WaterDecay = 3.00 -- Percent of water that decays every minute
Shared.FertilizerDecay = 3.00 -- Percent of fertilizers that decays every minute

Shared.FertilizerThreshold = 40
Shared.WaterThreshold = 40
Shared.HealthBaseDecay = {1, 2} -- Min/Max Amount of health decay when the plant is below the above thresholds for water and nutrition
