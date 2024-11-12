QBCore = exports['qb-core']:GetCoreObject() 

Config = {}

function CustomNotify(text, notifyType, length, title)
    QBCore.Functions.Notify(text, notifyType) -- QB by default
    -- okokNotify example:
    -- exports['okokNotify']:Alert(title, text, length, notifyType)
end

function AlertPolice(coords)
	-- Send your police alert in here. coords are passed through if you need them.
end

Config.EnableAlert = true

Config.Loot = { -- Can add any item to the list. Follow the format. I just used these items as examples.
	{item = "rolex", amount = {min = 1, max = 2}},
	{item = "diamond_ring", amount = {min = 2, max = 3}},
}

Config.NightOnly = true -- This means you can only dig graves at night time. Between 23:00 - 06:00am. (Time can't be changed, it gets scuffy)
-- ^ Set this to false if you want to be able to rob graves at anytime.

Config.EnableCashRewards = true -- Set to false if you don't want cash rewards from dead bodies.

Config.EnableItemRewards = true -- Set to false if you don't want item rewards from dead bodies.

Config.MoneyMin = 500
Config.MoneyMax = 5000

Config.ScareVolume = 0.9

Config.DigVolume = 0.15

Config.RequiredItem = "shovel"

Config.ShovelPrice = 750

Config.EnableZombie = true -- true/false -- false will disable the zombie option.

Config.ZombieChance = 6  -- math random between 1 - 10. You have to land that number to have zombie spawn.

Config.GraveLocations = {
	vec3(-1745.74, -223.63, 55.2),
	vec3(-1753.4, -221.07, 55.12),
	vec3(-1749.04, -222.35, 55.1),
	vec3(-1731.31, -224.41, 56.2),
	vec3(-1721.95, -224.57, 56.38),
	vec3(-1710.44, -226.17, 56.36),
	vec3(-1703.95, -228.69, 56.21),
	vec3(-1750.46, -253.84, 51.5),
	vec3(-1760.3, -246.47, 52.0),
	vec3(-1769.52, -269.29, 47.32),
	vec3(-1803.02, -263.83, 44.08),
	vec3(-1797.91, -252.16, 44.84),
	vec3(-1781.98, -282.54, 45.72),
	vec3(-1756.21, -284.03, 47.54),
	vec3(-1625.19, -180.83, 55.77),
	vec3(-1640.36, -182.07, 55.9),
	vec3(-1639.68, -170.28, 56.8),
	vec3(-1642.55, -155.43, 57.62),
	vec3(-1683.72, -144.02, 59.18),
	vec3(-1794.87, -212.17, 52.62),
	vec3(-1679.49, -164.67, 57.97),
}
