-- If you need any help join discord server and open a ticket with your TRANSACTION ID! 😃

-- Author: d3MBA#0001
-- Discord server: discord.gg/d3MBA

Config = {}

Config.DebugPolyZone = false 

----------------------------------------------------------------------------

Config.WaterItem = "" -- ESX: "water", QBCore: "water_bottle"

----------------------------------------------------------------------------
Config.ClearPedTasksImmediately = true 

Config.DisableUsingPotionAnimationInVehicle = false -- If you set this to true, player will not have animation while using potion in vehicle.

Config.TablePos = vector3(2435.79, 4964.19, 41.8)

Config.Blip = { -- https://docs.fivem.net/docs/game-references/blips/
    Use = true, 
	Sprite = 499,
	Scale = 0.9,
	Color = 1,
	Label = "Potions craft",
}


Config.UsingPotionTime = 2.8 -- seconds

Config.UseMiniGame = true -- You can edit things about minigame in client/cl-customization

Config.ExplosionChance = 1 -- chance to make smoke, (effect) while player crafting potion, if you want to have this effect everytime when player crafting potion, just set to "1" (Config.ExplosionChance = 1)
                           -- 40 = 60% chance, 70 = 30% chance, 50 = 50% chance 

Config.DamageAmount = 1 -- The amount of damage that will be if the player does not wear a gas mask

Config.Explosions = { -- You can add more explosions (particles) if you want, script will be pick one from them, here you can find all particles from GTA 5 -- https://www.vespura.com/fivem/particle-list/
    [1] = "exp_grd_bzgas_smoke", 
    [2] = "exp_grd_flare", 
    [3] = "exp_grd_grenade_smoke", 
}

Config.ShopPed = {
    Use = true, -- [true/false] - Set this to false if you want to disable the shop.

    Account = "cash", -- (bank / cash) | Default: cash | If you set this to bank, you will pay from bank account.

    Model = "s_m_y_robber_01", -- https://docs.fivem.net/docs/game-references/ped-models/ - Ped model that will be spawned.
    Pos = vector4(-172.750, 6381.339, 30.472, 220.65), -- Pos = position of shop ped.

    TimeCheck = {
        Use = true, -- (true/false) | Default: true | If you set this to false, shop will be open 24/7. 
        CheckTime = 3, -- Every 3 sec scitpt will check in game time. 
        OpeningTime = 8, -- Shop opening time = 8:00 AM.
        ClosingTime = 22, -- Shop close time = 10:00 PM.
    },  

    Blip = { -- https://docs.fivem.net/docs/game-references/blips/
        Use = true, -- (true/false) | Default: true | If you set this to false, you will not see the blip on the map.
        Sprite = 499, -- Blip sprite.
        Scale = 0.9, -- Blip scale.
        Color = 3, -- Blip color.
        Label = "[Potions] Ingredients shop", -- Blip label.
    },

    OpenShopAfterBuy = false, -- [true/false] If true, script will open shop menu again after player bought something

    DynamicPrices = {
        Use = false, -- [true/false] - If you want to use dynamic prices, set it to 'true'
        PriceMinMultiplier = 0.7, -- Min price multiplier, 70% of original price
        PriceMaxMultiplier = 1.5, -- Max price multiplier, 150% of original price
    },

    Items = {
        -- ItemName = name of item, Price = price of item
        {ItemName = "potions_mask", Price = 35, Icon = "fas fa-mask-face"},
        {ItemName = "potions_empty_bottle", Price = 5, Icon = "fas fa-bottle-droplet"},
        {ItemName = "potion_empty_water_bottle", Price = 1, Icon = "fas fa-bottle-water"},
        {ItemName = "potions_benzodiazepine", Price = 2, Icon = "fas fa-prescription-bottle-alt"},
        {ItemName = "potions_caffeine", Price = 35, Icon = "fas fa-prescription-bottle-alt"},
        {ItemName = "potions_morphine", Price = 45, Icon = "fas fa-prescription-bottle-alt"},
        {ItemName = "potions_sodium_chloride", Price = 25, Icon = "fas fa-prescription-bottle-alt"},
        {ItemName = "potions_taurine", Price = 55, Icon = "fas fa-prescription-bottle-alt"},
        {ItemName = "potions_codeine", Price = 35, Icon = "fas fa-prescription-bottle-alt"},
    }

}



--[[ Ingredients List = { 
    potions_benzodiazepine
    potions_caffeine
    potions_morphine
    potions_sodium_chloride
    potions_taurine
    potions_codeine
--]] 

-- Default effects table 
-- ["Helth"] = 0, 
-- ["Armour"] = 0, 
-- ["Swim"] = 1.00, -- Swim multiplier -- ⚠️⚠️⚠️ Multiplier goes up to 1.49 ⚠️⚠️⚠️ 
-- ["Speed"] = 1.00, -- Sprint multiplier  -- ⚠️⚠️⚠️ Multiplier goes up to 1.49 ⚠️⚠️⚠️  
-- ["Stress"] = 0,  
-- ["NightVision"] = false, 
-- ["SeeThrough"] = false,  


Config.Potions = {
    
    ["Potion of health 25%"] = { -- Menu (title)
        PotionItem = "potion_of_health_25%", -- Item name 

        Ingredients = {  --["ITEM_NAME"] = AMOUNT 
            ["potions_empty_bottle"] = 1,
            ["potions_morphine"] = 3, 
            [Config.WaterItem] = 2,
        },

        Description = "This potion will give you instatnt + 25% of health.", -- Description of potion in crafting menu 

        MenuEmoji = "💚", -- Emoji of potion in crafting menu -- https://getemoji.com/

        RequiredExperience = 12, -- Experience required to craft this potion.
        IncreaseExperience = 1, -- Experiences player I'll get, for crafting this potion.

        CraftTime = 20, -- Time need to craft this potion in seconds. 

        Effects = { -- Instant effects 
            ["Helth"] = 25, 
            ["Armour"] = 0, 
            ["Swim"] = 1.00, -- Swim multiplier 
            ["Speed"] = 1.00, -- Sprint multiplier  
            ["Stress"] = 0,  
            ["NightVision"] = false, 
            ["SeeThrough"] = false,  
        }, 

        EffectTime = 1, -- seconds 

        EffectDuration =  { 
            Use = false, -- 
            EffectApplyTime = 2, -- Effect applying time e.g. every 2 seconds 

        Effects = {
                ["Health"] = 0,
                ["Armour"] = 0,
                ["Stress"] = 0
            }
        }
    },


    ["Potion of health 50%"] = { -- Menu (title)
        PotionItem = "potion_of_health_50%", -- Item name 

        Ingredients = {  --["ITEM_NAME"] = AMOUNT 
            ["potions_empty_bottle"] = 1,
            ["potions_morphine"] = 5, 
            [Config.WaterItem] = 2,
        },

        Description = "This potion will give you instatnt + 50% of health.", -- Description of potion in crafting menu 

        MenuEmoji = "💚", -- Emoji of potion in crafting menu -- https://getemoji.com/

        RequiredExperience = 20, -- Experience required to craft this potion.
        IncreaseExperience = 3, -- Experiences player I'll get, for crafting this potion.

        CraftTime = 25, -- Time need to craft this potion in seconds. 

        Effects = { -- Instant effects 
            ["Helth"] = 50, 
            ["Armour"] = 0, 
            ["Swim"] = 1.00, -- Swim multiplier 
            ["Speed"] = 1.00, -- Sprint multiplier  
            ["Stress"] = 0,  
            ["NightVision"] = false, 
            ["SeeThrough"] = false,  
        }, 

        EffectTime = 1, -- seconds 

        EffectDuration =  { 
            Use = false, 
            EffectApplyTime = 2, -- Effect applying time e.g. every 2 seconds 

        Effects = {
                ["Health"] = 0,
                ["Armour"] = 0,
                ["Stress"] = 0
            }
        }
    },

    ["Potion of health 60s"] = { -- Menu (title)
        PotionItem = "potion_of_health_60s", -- Item name 

        Ingredients = {  --["ITEM_NAME"] = AMOUNT 
            ["potions_empty_bottle"] = 1,
            ["potions_morphine"] = 7, 
            [Config.WaterItem] = 4,
        },

        Description = "The potion restores 10 health every 5 seconds for 60 seconds.", -- Description of potion in crafting menu 

        MenuEmoji = "💚", -- Emoji of potion in crafting menu -- https://getemoji.com/

        RequiredExperience = 30, -- Experience required to craft this potion.
        IncreaseExperience = 4, -- Experiences player I'll get, for crafting this potion.

        CraftTime = 35, -- Time need to craft this potion in seconds. 

        Effects = { -- Instant effects 
            ["Helth"] = 0, 
            ["Armour"] = 0, 
            ["Swim"] = 1.00, -- Swim multiplier 
            ["Speed"] = 1.00, -- Sprint multiplier  
            ["Stress"] = 0,  
            ["NightVision"] = false, 
            ["SeeThrough"] = false,  
        }, 

        EffectTime = 60, -- seconds 

        EffectDuration =  { 
            Use = true, 
            EffectApplyTime = 5, -- Effect applying time e.g. every 2 seconds 

        Effects = {
                ["Health"] = 10,
                ["Armour"] = 0,
                ["Stress"] = 0
            }
        }
    },

    ["Potion of health 120s"] = { -- Menu (title)
        PotionItem = "potion_of_health_120s", -- Item name 

        Ingredients = {  --["ITEM_NAME"] = AMOUNT 
            ["potions_empty_bottle"] = 1,
            ["potions_morphine"] = 11, 
            [Config.WaterItem] = 6,
        },

        Description = "The potion restores 10 health every 5 seconds for 120 seconds.", -- Description of potion in crafting menu 

        MenuEmoji = "💚", -- Emoji of potion in crafting menu -- https://getemoji.com/

        RequiredExperience = 50, -- Experience required to craft this potion.
        IncreaseExperience = 7, -- Experiences player I'll get, for crafting this potion.

        CraftTime = 35, -- Time need to craft this potion in seconds. 

        Effects = { -- Instant effects 
            ["Helth"] = 0, 
            ["Armour"] = 0, 
            ["Swim"] = 1.00, -- Swim multiplier 
            ["Speed"] = 1.00, -- Sprint multiplier  
            ["Stress"] = 0,  
            ["NightVision"] = false, 
            ["SeeThrough"] = false,  
        }, 

        EffectTime = 120, -- seconds 

        EffectDuration =  { 
            Use = true, 
            EffectApplyTime = 5, -- Effect applying time e.g. every 5 seconds 

        Effects = {
                ["Health"] = 10,
                ["Armour"] = 0,
                ["Stress"] = 0
            }
        }
    },

    ["Potion of armour 25%"] = { -- Menu (title)
        PotionItem = "potion_of_armour_25%", -- Item name 

        Ingredients = {  --["ITEM_NAME"] = AMOUNT 
            ["potions_empty_bottle"] = 1,
            ["potions_codeine"] = 3, 
            [Config.WaterItem] = 3,
        },

        Description = "This potion will give you instatnt + 25% of armour.", -- Description of potion in crafting menu 

        MenuEmoji = "🛡️", -- Emoji of potion in crafting menu -- https://getemoji.com/

        RequiredExperience = 35, -- Experience required to craft this potion.
        IncreaseExperience = 4, -- Experiences player I'll get, for crafting this potion.

        CraftTime = 30, -- Time need to craft this potion in seconds. 

        Effects = { -- Instant effects 
            ["Helth"] = 0, 
            ["Armour"] = 25, 
            ["Swim"] = 1.00, -- Swim multiplier 
            ["Speed"] = 1.00, -- Sprint multiplier  
            ["Stress"] = 0,  
            ["NightVision"] = false, 
            ["SeeThrough"] = false,  
        }, 

        EffectTime = 1, -- seconds 

        EffectDuration =  { 
            Use = false, 
            EffectApplyTime = 5, -- Effect applying time e.g. every 2 seconds 

        Effects = {
                ["Health"] = 0,
                ["Armour"] = 0,
                ["Stress"] = 0
            }
        }
    },

    ["Potion of armour 50%"] = { -- Menu (title)
        PotionItem = "potion_of_armour_50%", -- Item name 

        Ingredients = {  --["ITEM_NAME"] = AMOUNT 
            ["potions_empty_bottle"] = 1,
            ["potions_codeine"] = 7, 
            [Config.WaterItem] = 5,
        },

        Description = "This potion will give you instatnt + 50% of armour.", -- Description of potion in crafting menu 

        MenuEmoji = "🛡️", -- Emoji of potion in crafting menu -- https://getemoji.com/

        RequiredExperience = 45, -- Experience required to craft this potion.
        IncreaseExperience = 6, -- Experiences player I'll get, for crafting this potion.

        CraftTime = 35, -- Time need to craft this potion in seconds. 

        Effects = { -- Instant effects 
            ["Helth"] = 0, 
            ["Armour"] = 50, 
            ["Swim"] = 1.00, -- Swim multiplier 
            ["Speed"] = 1.00, -- Sprint multiplier  
            ["Stress"] = 0,  
            ["NightVision"] = false, 
            ["SeeThrough"] = false,  
        }, 

        EffectTime = 1, -- seconds 

        EffectDuration =  { 
            Use = false, 
            EffectApplyTime = 5, -- Effect applying time e.g. every 2 seconds 

        Effects = {
                ["Health"] = 0,
                ["Armour"] = 0,
                ["Stress"] = 0
            }
        }
    },

    ["Potion of armour 60s"] = { -- Menu (title)
        PotionItem = "potion_of_armour_60s", -- Item name 

        Ingredients = {  --["ITEM_NAME"] = AMOUNT 
            ["potions_empty_bottle"] = 1,
            ["potions_codeine"] = 9, 
            [Config.WaterItem] = 5,
        },

        Description = "The potion restores 10 armour every 5 seconds for 60 seconds.", -- Description of potion in crafting menu 

        MenuEmoji = "🛡️", -- Emoji of potion in crafting menu -- https://getemoji.com/

        RequiredExperience = 55, -- Experience required to craft this potion.
        IncreaseExperience = 7, -- Experiences player I'll get, for crafting this potion.

        CraftTime = 40, -- Time need to craft this potion in seconds. 

        Effects = { -- Instant effects 
            ["Helth"] = 0, 
            ["Armour"] = 0, 
            ["Swim"] = 1.00, -- Swim multiplier 
            ["Speed"] = 1.00, -- Sprint multiplier  
            ["Stress"] = 0,  
            ["NightVision"] = false, 
            ["SeeThrough"] = false,  
        }, 

        EffectTime = 60, -- seconds 

        EffectDuration =  { 
            Use = true, 
            EffectApplyTime = 5, -- Effect applying time e.g. every 2 seconds 

        Effects = {
                ["Health"] = 0,
                ["Armour"] = 10,
                ["Stress"] = 0
            }
        }
    },

    ["Potion of armour 120s"] = { -- Menu (title)
        PotionItem = "potion_of_armour_120s", -- Item name 

        Ingredients = {  --["ITEM_NAME"] = AMOUNT 
            ["potions_empty_bottle"] = 1,
            ["potions_codeine"] = 12, 
            [Config.WaterItem] = 6,
        },

        Description = "The potion restores 10 armour every 5 seconds for 120 seconds.", -- Description of potion in crafting menu 

        MenuEmoji = "🛡️", -- Emoji of potion in crafting menu -- https://getemoji.com/

        RequiredExperience = 70, -- Experience required to craft this potion.
        IncreaseExperience = 8, -- Experiences player I'll get, for crafting this potion.

        CraftTime = 40, -- Time need to craft this potion in seconds. 

        Effects = { -- Instant effects 
            ["Helth"] = 0, 
            ["Armour"] = 0, 
            ["Swim"] = 1.00, -- Swim multiplier 
            ["Speed"] = 1.00, -- Sprint multiplier  
            ["Stress"] = 0,  
            ["NightVision"] = false, 
            ["SeeThrough"] = false,  
        }, 

        EffectTime = 120, -- seconds 

        EffectDuration =  { 
            Use = true, 
            EffectApplyTime = 5, -- Effect applying time e.g. every 2 seconds 

        Effects = {
                ["Health"] = 0,
                ["Armour"] = 10,
                ["Stress"] = 0
            }
        }
    },

    ["Potion of swim 30s"] = { -- Menu (title)
        PotionItem = "potion_of_swim_30s", -- Item name 

        Ingredients = {  --["ITEM_NAME"] = AMOUNT 
            ["potions_empty_bottle"] = 1,
            ["potions_taurine"] = 2, 
            ["potions_caffeine"] = 4, 
            [Config.WaterItem] = 4,
        },

        Description = "It provides 30 seconds of increased swimming ability.", -- Description of potion in crafting menu 

        MenuEmoji = "🏊‍♂️", -- Emoji of potion in crafting menu -- https://getemoji.com/

        RequiredExperience = 0, -- Experience required to craft this potion.
        IncreaseExperience = 3, -- Experiences player I'll get, for crafting this potion.

        CraftTime = 30, -- Time need to craft this potion in seconds. 

        Effects = { -- Instant effects 
            ["Helth"] = 0, 
            ["Armour"] = 0, 
            ["Swim"] = 1.40, -- Swim multiplier 
            ["Speed"] = 1.00, -- Sprint multiplier  
            ["Stress"] = 0,  
            ["NightVision"] = false, 
            ["SeeThrough"] = false,  
        }, 

        EffectTime = 30, -- seconds 

        EffectDuration =  { 
            Use = false, 
            EffectApplyTime = 5, -- Effect applying time e.g. every 2 seconds 

        Effects = {
                ["Health"] = 0,
                ["Armour"] = 0,
                ["Stress"] = 0
            }
        }
    },

    ["Potion of swim 60s"] = { -- Menu (title)
        PotionItem = "potion_of_swim_60s", -- Item name 

        Ingredients = {  --["ITEM_NAME"] = AMOUNT 
            ["potions_empty_bottle"] = 1,
            ["potions_taurine"] = 4, 
            ["potions_caffeine"] = 6, 
            [Config.WaterItem] = 5,
        },

        Description = "It provides 60 seconds of increased swimming ability.", -- Description of potion in crafting menu 

        MenuEmoji = "🏊‍♂️", -- Emoji of potion in crafting menu -- https://getemoji.com/

        RequiredExperience = 10, -- Experience required to craft this potion.
        IncreaseExperience = 3, -- Experiences player I'll get, for crafting this potion.

        CraftTime = 40, -- Time need to craft this potion in seconds. 

        Effects = { -- Instant effects 
            ["Helth"] = 0, 
            ["Armour"] = 0, 
            ["Swim"] = 1.45, -- Swim multiplier 
            ["Speed"] = 1.00, -- Sprint multiplier  
            ["Stress"] = 0,  
            ["NightVision"] = false, 
            ["SeeThrough"] = false,  
        }, 

        EffectTime = 60, -- seconds 

        EffectDuration =  { 
            Use = false, 
            EffectApplyTime = 5, -- Effect applying time e.g. every 2 seconds 

        Effects = {
                ["Health"] = 0,
                ["Armour"] = 0,
                ["Stress"] = 0
            }
        }
    },

    ["Potion of speed 10s"] = { -- Menu (title)
        PotionItem = "potion_of_speed_10s", -- Item name 

        Ingredients = {  --["ITEM_NAME"] = AMOUNT 
            ["potions_empty_bottle"] = 1,
            ["potions_taurine"] = 2, 
            ["potions_caffeine"] = 3, 
            [Config.WaterItem] = 2,
        },

        Description = "It provides 10 seconds of increased sprint ability.", -- Description of potion in crafting menu 

        MenuEmoji = "💨", -- Emoji of potion in crafting menu -- https://getemoji.com/

        RequiredExperience = 5, -- Experience required to craft this potion.
        IncreaseExperience = 2, -- Experiences player I'll get, for crafting this potion.

        CraftTime = 30, -- Time need to craft this potion in seconds. 

        Effects = { -- Instant effects 
            ["Helth"] = 0, 
            ["Armour"] = 0, 
            ["Swim"] = 1.00, -- Swim multiplier 
            ["Speed"] = 1.45, -- Sprint multiplier  
            ["Stress"] = 0,  
            ["NightVision"] = false, 
            ["SeeThrough"] = false,  
        }, 

        EffectTime = 10, -- seconds 

        EffectDuration =  { 
            Use = false, 
            EffectApplyTime = 5, -- Effect applying time e.g. every 2 seconds 

        Effects = {
                ["Health"] = 0,
                ["Armour"] = 0,
                ["Stress"] = 0
            }
        }
    },

    ["Potion of speed 30s"] = { -- Menu (title)
        PotionItem = "potion_of_speed_30s", -- Item name 

        Ingredients = {  --["ITEM_NAME"] = AMOUNT 
            ["potions_empty_bottle"] = 1,
            ["potions_taurine"] = 3, 
            ["potions_caffeine"] = 5, 
            [Config.WaterItem] = 3,
        },

        Description = "It provides 30 seconds of increased sprint ability", -- Description of potion in crafting menu 

        MenuEmoji = "💨", -- Emoji of potion in crafting menu -- https://getemoji.com/

        RequiredExperience = 15, -- Experience required to craft this potion.
        IncreaseExperience = 4, -- Experiences player I'll get, for crafting this potion.

        CraftTime = 40, -- Time need to craft this potion in seconds. 

        Effects = { -- Instant effects 
            ["Helth"] = 0, 
            ["Armour"] = 0, 
            ["Swim"] = 1.00, -- Swim multiplier 
            ["Speed"] = 1.45, -- Sprint multiplier  
            ["Stress"] = 0,  
            ["NightVision"] = false, 
            ["SeeThrough"] = false,  
        }, 

        EffectTime = 30, -- seconds 

        EffectDuration =  { 
            Use = false, 
            EffectApplyTime = 5, -- Effect applying time e.g. every 2 seconds 

        Effects = {
                ["Health"] = 0,
                ["Armour"] = 0,
                ["Stress"] = 0
            }
        }
    },

    ["Potion of speed 45s"] = { -- Menu (title)
        PotionItem = "potion_of_speed_45s", -- Item name 

        Ingredients = {  --["ITEM_NAME"] = AMOUNT 
            ["potions_empty_bottle"] = 1,
            ["potions_taurine"] = 4, 
            ["potions_caffeine"] = 8, 
            [Config.WaterItem] = 4,
        },

        Description = "It provides 45 seconds of increased sprint ability", -- Description of potion in crafting menu 

        MenuEmoji = "💨", -- Emoji of potion in crafting menu -- https://getemoji.com/

        RequiredExperience = 30, -- Experience required to craft this potion.
        IncreaseExperience = 4, -- Experiences player I'll get, for crafting this potion.

        CraftTime = 60, -- Time need to craft this potion in seconds. 

        Effects = { -- Instant effects 
            ["Helth"] = 0, 
            ["Armour"] = 0, 
            ["Swim"] = 1.00, -- Swim multiplier 
            ["Speed"] = 1.45, -- Sprint multiplier  
            ["Stress"] = 0,  
            ["NightVision"] = false, 
            ["SeeThrough"] = false,  
        }, 

        EffectTime = 10, -- seconds 

        EffectDuration =  { 
            Use = false, 
            EffectApplyTime = 5, -- Effect applying time e.g. every 2 seconds 

        Effects = {
                ["Health"] = 0,
                ["Armour"] = 0,
                ["Stress"] = 0
            }
        }
    },

    ["Potion of night vision 10s"] = { -- Menu (title)
        PotionItem = "potion_of_nightvision_10s", -- Item name 

        Ingredients = {  --["ITEM_NAME"] = AMOUNT 
            ["potions_empty_bottle"] = 1,
            ["potions_sodium_chloride"] = 4, 
            [Config.WaterItem] = 2,
        },

        Description = "Night vision 10 seconds.", -- Description of potion in crafting menu 

        MenuEmoji = "✨", -- Emoji of potion in crafting menu -- https://getemoji.com/

        RequiredExperience = 10, -- Experience required to craft this potion.
        IncreaseExperience = 2, -- Experiences player I'll get, for crafting this potion.

        CraftTime = 15, -- Time need to craft this potion in seconds. 

        Effects = { -- Instant effects 
            ["Helth"] = 0, 
            ["Armour"] = 0, 
            ["Swim"] = 1.00, -- Swim multiplier 
            ["Speed"] = 1.00, -- Sprint multiplier  
            ["Stress"] = 0,  
            ["NightVision"] = true, 
            ["SeeThrough"] = false,  
        }, 

        EffectTime = 10, -- seconds 

        EffectDuration =  { 
            Use = false, 
            EffectApplyTime = 5, -- Effect applying time e.g. every 2 seconds 

        Effects = {
                ["Health"] = 0,
                ["Armour"] = 0,
                ["Stress"] = 0
            }
        }
    },

    ["Potion of night vision 30s"] = { -- Menu (title)
        PotionItem = "potion_of_nightvision_30s", -- Item name 

        Ingredients = {  --["ITEM_NAME"] = AMOUNT 
            ["potions_empty_bottle"] = 1,
            ["potions_sodium_chloride"] = 8, 
            [Config.WaterItem] = 3,
        },

        Description = "Night vision 30 seconds.", -- Description of potion in crafting menu 

        MenuEmoji = "✨", -- Emoji of potion in crafting menu -- https://getemoji.com/

        RequiredExperience = 25, -- Experience required to craft this potion.
        IncreaseExperience = 4, -- Experiences player I'll get, for crafting this potion.

        CraftTime = 40, -- Time need to craft this potion in seconds. 

        Effects = { -- Instant effects 
            ["Helth"] = 0, 
            ["Armour"] = 0, 
            ["Swim"] = 1.00, -- Swim multiplier 
            ["Speed"] = 1.00, -- Sprint multiplier  
            ["Stress"] = 0,  
            ["NightVision"] = true, 
            ["SeeThrough"] = false,  
        }, 

        EffectTime = 30, -- seconds 

        EffectDuration =  { 
            Use = false, 
            EffectApplyTime = 5, -- Effect applying time e.g. every 2 seconds 

        Effects = {
                ["Health"] = 0,
                ["Armour"] = 0,
                ["Stress"] = 0
            }
        }
    },

    ["Potion of relax"] = { -- Menu (title)
        PotionItem = "potion_of_stress", -- Item name 

        Ingredients = {  --["ITEM_NAME"] = AMOUNT 
            ["potions_empty_bottle"] = 1,
            ["potions_benzodiazepine"] = 2, 
            [Config.WaterItem] = 1,
        },

        Description = "The potion will reduce your stress.", -- Description of potion in crafting menu 

        MenuEmoji = "🧠", -- Emoji of potion in crafting menu -- https://getemoji.com/

        RequiredExperience = 5, -- Experience required to craft this potion.
        IncreaseExperience = 1, -- Experiences player I'll get, for crafting this potion.

        CraftTime = 10, -- Time need to craft this potion in seconds. 

        Effects = { -- Instant effects 
            ["Helth"] = 0, 
            ["Armour"] = 0, 
            ["Swim"] = 1.00, -- Swim multiplier 
            ["Speed"] = 1.00, -- Sprint multiplier  
            ["Stress"] = 2,  
            ["NightVision"] = false, 
            ["SeeThrough"] = false,  
        }, 

        EffectTime = 1, -- seconds 

        EffectDuration =  { 
            Use = false, 
            EffectApplyTime = 2, -- Effect applying time e.g. every 2 seconds 

        Effects = {
                ["Health"] = 0,
                ["Armour"] = 0,
                ["Stress"] = 0
            }
        }
    },



}



