Config = {}

-- Define the capture zones
Config.Zones = {
    { x = 1000, y = 1000, z = 30, radius = 100 },
    { x = 2000, y = 2000, z = 30, radius = 100 },
    -- Add more zones as needed
}

-- Define capture event settings
Config.CaptureEvent = {
    Interval = 2 * 60 * 60 * 1000, -- Every 2 hours
    CaptureTime = 10, -- Time to capture the zone in seconds
}

-- Define rewards
Config.Rewards = {
    { item = "weapon_pistol", quantity = 1 },
    { item = "money", quantity = 5000 },
    -- Add more rewards as needed
}

-- Flag prop
Config.FlagProp = 'prop_flag_us'
