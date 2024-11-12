Config = {}

-- Spawn Points
-- Locations in the game world where items will appear.
-- Each spawn point is linked to a specific loot class.
Config.SpawnPoints = {
    { coords = vector3(-2211.23, -377.75, 17.5), lootClass = "classA" },  -- Location for loot class A
    { coords = vector3(-730.74, -1497.27, 5.0), lootClass = "classB" },  -- Location for loot class B
    { coords = vector3(-500, 1800, 30), lootClass = "classC" }   -- Location for loot class C
}

-- Loot Classes
-- Define different categories of loot and their items.
-- Each class specifies items and their probabilities of spawning.
Config.LootClasses = {
    -- Loot Class A
    classA = {
        { name = 'radio', label = 'Radio', prop = 'prop_cs_hand_radio', spawnChance = 10 },  -- Radio item with low spawn chance
        { name = 'handcuffs', label = 'Handcuffs', prop = 'prop_cs_cuffs_01', spawnChance = 10 }  -- Handcuffs item with low spawn chance
    },
    -- Loot Class B
    classB = {
        { name = 'radio', label = 'Water Bottle', prop = 'prop_cs_hand_radio', spawnChance = 10 },  -- Water Bottle item with high spawn chance
        { name = 'handcuffs', label = 'Sandwich', prop = 'prop_cs_cuffs_01', spawnChance = 10 }  -- Sandwich item with high spawn chance
    },
    -- Loot Class C
    classC = {
        { name = 'phone', label = 'Phone', prop = 'prop_phone', spawnChance = 40 },  -- Phone item with moderate spawn chance
        { name = 'flashlight', label = 'Flashlight', prop = 'prop_flashlight', spawnChance = 30 }  -- Flashlight item with moderate spawn chance
    }
}
