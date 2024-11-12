--FiveM's list of Ped Models can be found here: https://docs.fivem.net/docs/game-references/ped-models/
--A list of all the animations can be found here: https://alexguirre.github.io/animations-list/

Config = {}
Config.Invincible = true --Do you want the peds to be invincible?
Config.Frozen = true --Do you want the peds to be unable to move? It's probably a yes, so leave true in there.
Config.Stoic = true --Do you want the peds to react to what is happening in their surroundings?
Config.Fade = true-- Do you want the peds to fade into/out of existence? It looks better than just *POP* its there.
Config.Distance = 30.0 --The distance you want peds to spawn at


--Does the system you use for grabbing coordinates require subracting from the z axis?
--If so, set this to true. You'll have to adjust the coordinates for defaults down - 1 if you set false.
Config.MinusOne = true

Config.PedList = {
-- Trader
	{
		model = "ig_cletus", --The model name. See above for the URL of the list.
		coords = vector3(-425.21, 1105.16, 327.68), --Safezone
		heading = 105.0, --Must be a float value. This means it needs a decimal and a number after the decimal.
		gender = "male", --Use male or female
		--animDict = "", --The animation dictionary. Optional. Comment out or delete if not using.
		--animName = "", --The animation name. Optional. Comment out or delete if not using.
	},

	-- Base Building
	-- {
	-- 	model = "s_m_m_gaffer_01", --The model name. See above for the URL of the list.
	-- 	coords = vector3(-376.99, 1216.29, 325.76), --Safezone
	-- 	heading = 75.0, --Must be a float value. This means it needs a decimal and a number after the decimal.
	-- 	gender = "male", --Use male or female
	-- 	--animDict = "", --The animation dictionary. Optional. Comment out or delete if not using.
	-- 	--animName = "", --The animation name. Optional. Comment out or delete if not using.
	-- },
	
}