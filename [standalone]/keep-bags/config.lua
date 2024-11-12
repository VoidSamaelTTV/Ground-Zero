Config = {}

-- Maximum inventory slots for players (inventory slots)
Config.max_inventory_slots = 41

Config.clothingScript = 'qb-clothing' -- illenium-appearance or qb-clothing oe esx (skinchanger)
-- When set to skinchanger, it only supports 'bag' as a clothing option and nothing else!

-- Default durations (in seconds)
Config.duration = {
     open = 1,    -- Time to open a bag
     lockpick = 5 -- Time to lockpick a bag
}

-- Prevent players from carrying multiple backpacks
-- They will stuck in one place until they put the extra bags away
Config.notAllowedToCarryMultipleBackpacks = true
-- Maximum allowed backpacks per player
Config.maxAllowedBackpacks = 1

-- Whitelist for lockpicking access
Config.lockpick_whitelist = {
     active = true,
     jobs = { 'unemployed' }, -- Jobs with lockpicking access
     citizenid = {}
}

Config.npc = {
     position = vector4(1169.21, -291.49, 68.02, 321.64),
     model = 's_m_m_gardener_01',
     scenario = 'WORLD_HUMAN_DRINKING'
}

Config.retrieval = {
     available_at = 2, -- hours
     expire_at = 24,   -- hours
}

-- Backpack configurations
Config.Bags = {
     {
          item = 'hinterland_duffle',
          slots = 15,
          size = 7500,
          cloth = {
               male = {
                    ["bag"] = { item = 82, texture = 0 }
               },
               female = {
                    ["bag"] = { item = 82, texture = 0 }
               }
          },
          -- If active, the backpack only accepts items listed here and returns other items to the player
          -- whitelist = {},
          duration = {
               opening = 1,
               lockpicking = 5
          }
     },
     {
          item = 'leather_duffle',
          slots = 15,
          size = 7500,
          cloth = {
               male = {
                    ["bag"] = { item = 86, texture = 0 }
               },
               female = {
                    ["bag"] = { item = 86, texture = 0 }
               }
          },
          -- If active, the backpack only accepts items listed here and returns other items to the player
          -- whitelist = {},
          duration = {
               opening = 1,
               lockpicking = 5
          }
     },
     {
          item = 'chianski_duffle',
          slots = 15,
          size = 7500,
          cloth = {
               male = {
                    ["bag"] = { item = 127, texture = 0 }
               },
               female = {
                    ["bag"] = { item = 127, texture = 0 }
               }
          },
          -- If active, the backpack only accepts items listed here and returns other items to the player
          -- whitelist = {},
          duration = {
               opening = 1,
               lockpicking = 5
          }
     },
     {
          item = 'bandit_pack',
          slots = 15,
          size = 7500,
          cloth = {
               male = {
                    ["bag"] = { item = 9, texture = 0 }
               },
               female = {
                    ["bag"] = { item = 9, texture = 0 }
               }
          },
          -- If active, the backpack only accepts items listed here and returns other items to the player
          -- whitelist = {},
          duration = {
               opening = 1,
               lockpicking = 5
          }
     },
     {
          item = 'black_sports_bag',
          slots = 10,
          size = 5000,
          cloth = {
               male = {
                    ["bag"] = { item = 10, texture = 0 }
               },
               female = {
                    ["bag"] = { item = 10, texture = 0 }
               }
          },
          -- If active, the backpack only accepts items listed here and returns other items to the player
          -- whitelist = {},
          duration = {
               opening = 1,
               lockpicking = 5
          }
     },
     {
          item = 'chinook_lifesaver_bag',
          slots = 2,
          size = 500,
          cloth = {
               male = {
                    ["bag"] = { item = 11, texture = 0 }
               },
               female = {
                    ["bag"] = { item = 11, texture = 0 }
               }
          },
          -- If active, the backpack only accepts items listed here and returns other items to the player
          -- whitelist = {},
          duration = {
               opening = 1,
               lockpicking = 5
          }
     },
     {
          item = 'ranch_assault_pack',
          slots = 10,
          size = 5000,
          cloth = {
               male = {
                    ["bag"] = { item = 12, texture = 0 }
               },
               female = {
                    ["bag"] = { item = 12, texture = 0 }
               }
          },
          -- If active, the backpack only accepts items listed here and returns other items to the player
          -- whitelist = {},
          duration = {
               opening = 1,
               lockpicking = 5
          }
     },
     {
          item = 'scav_bag',
          slots = 10,
          size = 5000,
          cloth = {
               male = {
                    ["bag"] = { item = 13, texture = 0 }
               },
               female = {
                    ["bag"] = { item = 13, texture = 0 }
               }
          },
          -- If active, the backpack only accepts items listed here and returns other items to the player
          -- whitelist = {},
          duration = {
               opening = 1,
               lockpicking = 5
          }
     },
     {
          item = 'burgen_bag',
          slots = 15,
          size = 7500,
          cloth = {
               male = {
                    ["bag"] = { item = 14, texture = 0 }
               },
               female = {
                    ["bag"] = { item = 14, texture = 0 }
               }
          },
          -- If active, the backpack only accepts items listed here and returns other items to the player
          -- whitelist = {},
          duration = {
               opening = 1,
               lockpicking = 5
          }
     },
     {
          item = 'rush_24_bag',
          slots = 10,
          size = 5000,
          cloth = {
               male = {
                    ["bag"] = { item = 15, texture = 0 }
               },
               female = {
                    ["bag"] = { item = 15, texture = 0 }
               }
          },
          -- If active, the backpack only accepts items listed here and returns other items to the player
          -- whitelist = {},
          duration = {
               opening = 1,
               lockpicking = 5
          }
     },
     {
          item = 'lspd_field_bag',
          slots = 10,
          size = 5000,
          cloth = {
               male = {
                    ["bag"] = { item = 16, texture = 0 }
               },
               female = {
                    ["bag"] = { item = 16, texture = 0 }
               }
          },
          -- If active, the backpack only accepts items listed here and returns other items to the player
          -- whitelist = {},
          duration = {
               opening = 1,
               lockpicking = 5
          }
     },
     {
          item = 'moab_rush_tactical_bag',
          slots = 10,
          size = 5000,
          cloth = {
               male = {
                    ["bag"] = { item = 17, texture = 0 }
               },
               female = {
                    ["bag"] = { item = 17, texture = 0 }
               }
          },
          -- If active, the backpack only accepts items listed here and returns other items to the player
          -- whitelist = {},
          duration = {
               opening = 1,
               lockpicking = 5
          }
     },
     {
          item = 'paramedicbag',
          slots = 10,
          size = 5000,
          prop = GetProp('paramedicbag'), -- Use props from shared/props.lua
          whitelist = {'bandage'},
     },
     -- {
     --      item = 'briefcase',
     --      slots = 5,
     --      size = 2500,
     --      locked = true,
     --      prop = GetProp('suitcase2'), -- Use props from shared/props.lua
     --      whitelist = {'cash'},
     -- },
     {
          item = 'policepouches',
          slots = 2,
          size = 1000,
          cloth = {
               male = {
                    ["accessory"] = { item = 146, texture = 0 }
               },
               female = {
                    ["accessory"] = { item = 123, texture = 0 }
               }
          }
     },
}
