Config = {}

-- Items required to restore power with quantities
Config.RequiredItems = {
    { name = 'emp_device', amount = 1 },
    -- { name = 'item_battery', amount = 3 } -- Example of another required item
}

-- Other configuration remains the same
Config.RestorePowerSound = 'restore_power_sound'
Config.ExplosionChance = 0.01
Config.ProgressBarDuration = 5000
Config.RestorationLocation = {
    coords = vector3(2825.19, 1490.79, 24.73),
    radius = 10.0,
    blip = {
        sprite = 354,
        scale = 1.0,
        color = 53,
        name = "Power Restoration"
    }
}
