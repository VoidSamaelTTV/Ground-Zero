Config = {}

-- Robbery Configuration
Config.RobberyDuration = 600 -- Robbery duration in seconds (10 minutes)
Config.MinReward = 20000 -- Minimum cash reward
Config.MaxReward = 50000 -- Maximum cash reward

-- Cooldown Configuration
Config.RobberyCooldownDuration = 30 * 60 * 1000 -- Cooldown duration in milliseconds (30 minutes)
Config.RobberyFailDuration = 30 * 60 * 1000 -- Time until robbery fails in milliseconds (30 minutes)

-- Blip Configuration
Config.BlipSpriteRobbery = 277 -- Blip sprite ID for robbery
Config.BlipColourRobbery = 1 -- Blip color ID for robbery
Config.BlipScaleRobbery = 1.0 -- Blip scale for robbery
Config.BlipSpriteZone = 1 -- Blip sprite ID for robbery zone
Config.BlipColourZone = 1 -- Blip color ID for robbery zone
Config.BlipAlphaZone = 100 -- Blip alpha (transparency) for robbery zone
Config.ZoneRadius = 10.0 -- Radius size for the robbery zone in meters

-- Item Configuration
Config.RequiredItem = 'weapon_crowbar' -- Item required to initiate the robbery

-- Notification Configuration
Config.NotifyRobberyStart = "Robbery in progress! Stay alert!" -- Notification for starting robbery
Config.NotifyRobberyCooldown = "You need to wait %d minute(s) and %d second(s) before you can rob again." -- Notification for cooldown
Config.NotifyRobberyFailed = "The robbery has failed due to timeout!" -- Notification for failed robbery
Config.NotifyRobberySuccess = "You received $%d from the robbery." -- Notification for successful robbery
Config.NotifyRobberyCompletion = "%s has successfully robbed the ATM and received $%d!" -- Notification for robbery completion

-- Street Name Configuration
Config.StreetNameMessage = "An ATM is being robbed on %s" -- Message for street name notification
