Config = {}

Config.refreshTime = 60 ---minutes ---------- this is the time you will need to wait before you can get wood or stone from a certain Rock or Tree

Config.UseProgressBar = true

Config.ProgressBars = {
    ["get_water"] = {
        duration = 2000,
        label = "getting water...",
        animation = {
            animDict = 'amb@prop_human_bum_bin@base',
            anim = 'base'
        }
    },
}

Config.types = {
    ["stone_1"] = {
        fixedLoots = {}, -- can be empty
        probabilityLoots = {
            loop = 1, ----- each loop an item from the list bellow will be chosen
            items = {
                {names = {'stone'},minValue = 1,maxValue = 2,probability = 20}, ------ there is 20% chance of getting 1 or 2 iron or 1 or 2 scrap
            } ---- the sum of all the probabilities on this list can't be bigger than 100% ---- 20 + 50 = 70% => 70% < 100% so is all good
        } -- is optional
    },
    ["wood_1"] = {
        probabilityLoots = {
            loop = 1, ----- each loop an item from the list bellow will be chosen
            items = {
                {names = {'wood_log'},minValue = 1,maxValue = 3,probability = 30}, ------ there is 20% chance of getting 1 or 2 iron or 1 or 2 scrap
            } ---- the sum of all the probabilities on this list can't be bigger than 100% ---- 20 + 50 = 70% => 70% < 100% so is all good
        }
    },
}

Config.tools = {
    [GetHashKey("WEAPON_HATCHET")] = {
        [-1915425863] = {
            lootType = "wood_1",
            maxAttacks = 5,
            delay = 2500
        }
    },
    -- [GetHashKey("WEAPON_BATTLEAXE")] = {
    --     [-1915425863] = {
    --         lootType = "wood_1",
    --         maxAttacks = 5,
    --         delay = 2500
    --     }
    -- },
    [GetHashKey("WEAPON_STONE_HATCHET")] = {
        [-1915425863] = {
            lootType = "stone_1",
            maxAttacks = 5,
            delay = 2500
        } 
    }
}

------------- Water related

Config.empty = {
    ['emptycanteen'] = 'dirtycanteen'
}

Config.debug = false



Config.Framework = nil
--------------------------------------
if GetResourceState('es_extended') ~= 'missing' then 
    Config.Framework = "ESX"
elseif GetResourceState('qb-core') ~= 'missing' then 
    Config.Framework = "QB"
else
    print("[^3WARNING^7] NO COMPATIBLE FRAMEWORK FOUND")
end

local errorTypes = nil
for k,v in pairs(Config.types) do
    if v.probabilityLoots and v.probabilityLoots.items then
        local count = 0
        for k2,v2 in ipairs(v.probabilityLoots.items) do
            count = count + v2.probability
        end
        if count > 100 then
            if not errorTypes then
                errorTypes = '[^3LIST^7] '..k
            else
                errorTypes = errorTypes..","..k
            end
        end
    end
end

if errorTypes then
    print("[^3WARNING^7] THE SUM OF YOUR PROBABILITY IS BIGGER THAN 100% IN THIS LOOT TYPES: \n"..errorTypes)
end