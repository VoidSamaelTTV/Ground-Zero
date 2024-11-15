Config = Config or {}

Config.WomanPlayerModels = {
    'mp_f_freemode_01',
}

Config.ManPlayerModels = {
    'mp_m_freemode_01',
}

Config.LoadedManModels = {}
Config.LoadedWomanModels = {}

-- Set to true or false or GetConvar('UseTarget', 'false') == 'true' to use global option or script specific
-- These have to be a string thanks to how Convars are returned.
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

-- width, length, minZ and maxZ are for the size and height of the PolyZone
Config.Stores = {
    -- [1] = {shopType = 'clothing', coords = vector3(1693.32, 4823.48, 41.06), width = 2, length = 2},
    -- [2] = {shopType = 'clothing', coords = vector3(-712.215881, -155.352982, 37.4151268), width = 2, length = 2},
    -- [3] = {shopType = 'clothing', coords = vector3(-1192.94495, -772.688965, 17.3255997), width = 2, length = 2},
    -- [4] = {shopType = 'clothing', coords = vector3(425.236, -806.008, 28.491), width = 2, length = 2},
    -- [5] = {shopType = 'clothing', coords = vector3(-162.658, -303.397, 38.733), width = 2, length = 2},
    -- [6] = {shopType = 'clothing', coords = vector3(75.950, -1392.891, 28.376), width = 2, length = 2},
    -- [7] = {shopType = 'clothing', coords = vector3(-822.194, -1074.134, 10.328), width = 2, length = 2},
    -- [8] = {shopType = 'clothing', coords = vector3(-1450.711, -236.83, 48.809), width = 2, length = 2},
    -- [9] = {shopType = 'clothing', coords = vector3(4.254, 6512.813, 30.877), width = 2, length = 2},
    -- [10] = {shopType = 'clothing', coords = vector3(615.180, 2762.933, 41.088), width = 2, length = 2},
    -- [11] = {shopType = 'clothing', coords = vector3(1196.785, 2709.558, 37.222), width = 2, length = 2},
    -- [12] = {shopType = 'clothing', coords = vector3(-3171.453, 1043.857, 19.863), width = 2, length = 2},
    -- [13] = {shopType = 'clothing', coords = vector3(-1100.959, 2710.211, 18.107), width = 2, length = 2},
    -- [14] = {shopType = 'clothing', coords = vector3(-1207.65, -1456.88, 4.3784737586975), width = 2, length = 2},
    -- [15] = {shopType = 'clothing', coords = vector3(121.76, -224.6, 53.56), width = 2, length = 2},
    -- [16] = {shopType = 'barber', coords = vector3(-447.81, 1087.13, 315.63), width = 2, length = 2},
    -- [17] = {shopType = 'barber', coords = vector3(136.8, -1708.4, 28.3), width = 2, length = 2},
    -- [18] = {shopType = 'barber', coords = vector3(-1282.6, -1116.8, 6.0), width = 2, length = 2},
    -- [19] = {shopType = 'barber', coords = vector3(1931.5, 3729.7, 31.8), width = 2, length = 2},
    -- [20] = {shopType = 'barber', coords = vector3(1212.8, -472.9, 65.2), width = 2, length = 2},
    -- [21] = {shopType = 'barber', coords = vector3(-32.9, -152.3, 56.1), width = 2, length = 2},
    -- [22] = {shopType = 'barber', coords = vector3(-278.1, 6228.5, 30.7), width = 2, length = 2}
}

Config.OutfitChangers = {
    [1] = {shopType = 'outfit', coords = vector3(1697.41, 4829.25, 41.06), width = 2, length = 2},
}

-- set isGang to true if the requiredJob is a gang
Config.ClothingRooms = {}

Config.Outfits = {
    ['police'] = {
        -- Job
        ['male'] = {
            -- Gender
            [0] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        ['pants'] = {texture = 0, item = 24, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 19, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 55, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = -1, texture = -1, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                },
                [2] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 20, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 317, texture = 3, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = 58, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                }
            },
			-- Gender
            [1] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 19, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 55, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = -1, texture = -1, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                },
                [2] = {
                    outfitLabel = 'Long Sleeve',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 20, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 317, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = -1, texture = -1, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                },
                [3] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 20, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 317, texture = 3, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = 58, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                }
            },
			-- Gender
            [2] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 19, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 55, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = -1, texture = -1, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                },
                [2] = {
                    outfitLabel = 'Long Sleeve',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 20, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 317, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = -1, texture = -1, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                },
                [3] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 20, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 317, texture = 3, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = 58, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                },
                [4] = {
                    outfitLabel = 'Trooper Black',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 20, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 317, texture = 8, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = 58, texture = 3, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                }
            },
			-- Gender
            [3] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 19, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 55, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = -1, texture = -1, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                },
                [2] = {
                    outfitLabel = 'Long Sleeve',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 20, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 317, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = -1, texture = -1, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                },
                [3] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 20, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 317, texture = 3, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = 58, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                },
                [4] = {
                    outfitLabel = 'Trooper Black',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 20, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 317, texture = 8, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = 58, texture = 3, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                },
                [5] = {
                    outfitLabel = 'SWAT',
                    outfitData = {
                        ['pants'] = {item = 130, texture = 1, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 172, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 15, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 15, texture = 2, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 336, texture = 3, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 24, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 133, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['hat'] = {item = 150, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 52, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                }
            },
			-- Gender
            [4] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 19, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 55, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = -1, texture = -1, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                },
                [2] = {
                    outfitLabel = 'Long Sleeve',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 20, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 317, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = -1, texture = -1, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                },
                [3] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 20, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 317, texture = 3, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = 58, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                },
                [4] = {
                    outfitLabel = 'Trooper Black',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 20, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 317, texture = 8, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = 58, texture = 3, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                },
                [5] = {
                    outfitLabel = 'SWAT',
                    outfitData = {
                        ['pants'] = {item = 130, texture = 1, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 172, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 15, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 15, texture = 2, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 336, texture = 3, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 24, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 133, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['hat'] = {item = 150, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 52, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                }
            }
        },
        ['female'] = {
            -- Gender
            [0] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 48, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                },
                [2] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 327, texture = 3, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                }
            },
            -- Gender
            [1] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 48, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                },
                [2] = {
                    outfitLabel = 'Long Sleeve',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 327, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                },
                [3] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 327, texture = 3, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                }
            },
			-- Gender
            [2] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 48, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                },
                [2] = {
                    outfitLabel = 'Long Sleeve',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 327, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                },
                [3] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 327, texture = 3, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                },
                [4] = {
                    outfitLabel = 'Trooper Black',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 327, texture = 8, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                }
            },
			-- Gender
            [3] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 48, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                },
                [2] = {
                    outfitLabel = 'Long Sleeve',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 327, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                },
                [3] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 327, texture = 3, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                },
                [4] = {
                    outfitLabel = 'Trooper Black',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 327, texture = 8, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                },
                [5] = {
                    outfitLabel = 'Swat',
                    outfitData = {
                        ['pants'] = {item = 135, texture = 1, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 213, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 17, texture = 2, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 327, texture = 8, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 102, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = 149, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 35, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                }
            },
			-- Gender
            [4] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 48, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                },
                [2] = {
                    outfitLabel = 'Long Sleeve',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 327, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                },
                [3] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 327, texture = 3, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                },
                [4] = {
                    outfitLabel = 'Trooper Black',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 327, texture = 8, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                },
                [5] = {
                    outfitLabel = 'Swat',
                    outfitData = {
                        ['pants'] = {item = 135, texture = 1, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['arms'] = {item = 213, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                        ['vest'] = {item = 17, texture = 2, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                        ['torso2'] = {item = 327, texture = 8, defaultItem = 0, defaultTexture = 0}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['accessory'] = {item = 102, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['hat'] = {item = 149, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['mask'] = {item = 35, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                    }
                }
            }
        }
    },
    ['realestate'] = {
        -- Job
        ['male'] = {
            -- Gender
            [0] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Worker',
                    outfitData = {
                    ["pants"]       = { item = 28, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Pants
                    ["arms"]        = { item = 1, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Arms
                    ["t-shirt"]     = { item = 31, texture = 0, defaultItem = 0, defaultTexture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Body Vest
                    ["torso2"]      = { item = 294, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Jacket
                    ["shoes"]       = { item = 10, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Shoes
                    ["accessory"]   = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Bag
                    ["hat"]         = { item = 12, texture = -1, defaultItem = 0, defaultTexture = 0},  -- Hat
                    ["glass"]       = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Mask
                    }
                }
            },
			-- Gender
            [1] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Worker',
                    outfitData = {
                    ["pants"]       = { item = 28, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Pants
                    ["arms"]        = { item = 1, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Arms
                    ["t-shirt"]     = { item = 31, texture = 0, defaultItem = 0, defaultTexture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Body Vest
                    ["torso2"]      = { item = 294, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Jacket
                    ["shoes"]       = { item = 10, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Shoes
                    ["accessory"]   = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Bag
                    ["hat"]         = { item = 12, texture = -1, defaultItem = 0, defaultTexture = 0},  -- Hat
                    ["glass"]       = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Mask
                    }
                }
            },
			-- Gender
            [2] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Worker',
                    outfitData = {
                    ["pants"]       = { item = 28, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Pants
                    ["arms"]        = { item = 1, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Arms
                    ["t-shirt"]     = { item = 31, texture = 0, defaultItem = 0, defaultTexture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Body Vest
                    ["torso2"]      = { item = 294, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Jacket
                    ["shoes"]       = { item = 10, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Shoes
                    ["accessory"]   = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Bag
                    ["hat"]         = { item = 12, texture = -1, defaultItem = 0, defaultTexture = 0},  -- Hat
                    ["glass"]       = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Mask
                    }
                }
            },
			-- Gender
            [3] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Worker',
                    outfitData = {
                    ["pants"]       = { item = 28, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Pants
                    ["arms"]        = { item = 1, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Arms
                    ["t-shirt"]     = { item = 31, texture = 0, defaultItem = 0, defaultTexture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Body Vest
                    ["torso2"]      = { item = 294, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Jacket
                    ["shoes"]       = { item = 10, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Shoes
                    ["accessory"]   = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Bag
                    ["hat"]         = { item = 12, texture = -1, defaultItem = 0, defaultTexture = 0},  -- Hat
                    ["glass"]       = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Mask
                    }
                }
            },
			-- Gender
            [4] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                    ["pants"]       = { item = 28, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Pants
                    ["arms"]        = { item = 1, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Arms
                    ["t-shirt"]     = { item = 31, texture = 0, defaultItem = 0, defaultTexture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Body Vest
                    ["torso2"]      = { item = 294, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Jacket
                    ["shoes"]       = { item = 10, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Shoes
                    ["accessory"]   = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Bag
                    ["hat"]         = { item = 12, texture = -1, defaultItem = 0, defaultTexture = 0},  -- Hat
                    ["glass"]       = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Mask
                    }
                }
            }
        },
        ['female'] = {
            -- Gender
            [0] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Worker',
                    outfitData = {
                    ["pants"]       = { item = 57, texture = 2, defaultItem = 0, defaultTexture = 0},  -- Pants
                    ["arms"]        = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Arms
                    ["t-shirt"]     = { item = 34, texture = 0, defaultItem = 0, defaultTexture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Body Vest
                    ["torso2"]      = { item = 105, texture = 7, defaultItem = 0, defaultTexture = 0},  -- Jacket
                    ["shoes"]       = { item = 8, texture = 5, defaultItem = 0, defaultTexture = 0},  -- Shoes
                    ["accessory"]   = { item = 11, texture = 3, defaultItem = 0, defaultTexture = 0},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Bag
                    ["hat"]         = { item = -1, texture = -1, defaultItem = 0, defaultTexture = 0},  -- Hat
                    ["glass"]       = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Mask
                    }
                }
            },
            -- Gender
            [1] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Worker',
                    outfitData = {
                    ["pants"]       = { item = 57, texture = 2, defaultItem = 0, defaultTexture = 0},  -- Pants
                    ["arms"]        = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Arms
                    ["t-shirt"]     = { item = 34, texture = 0, defaultItem = 0, defaultTexture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Body Vest
                    ["torso2"]      = { item = 105, texture = 7, defaultItem = 0, defaultTexture = 0},  -- Jacket
                    ["shoes"]       = { item = 8, texture = 5, defaultItem = 0, defaultTexture = 0},  -- Shoes
                    ["accessory"]   = { item = 11, texture = 3, defaultItem = 0, defaultTexture = 0},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Bag
                    ["hat"]         = { item = -1, texture = -1, defaultItem = 0, defaultTexture = 0},  -- Hat
                    ["glass"]       = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Mask
                    }
                }
            },
			-- Gender
            [2] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Worker',
                    outfitData = {
                    ["pants"]       = { item = 57, texture = 2, defaultItem = 0, defaultTexture = 0},  -- Pants
                    ["arms"]        = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Arms
                    ["t-shirt"]     = { item = 34, texture = 0, defaultItem = 0, defaultTexture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Body Vest
                    ["torso2"]      = { item = 105, texture = 7, defaultItem = 0, defaultTexture = 0},  -- Jacket
                    ["shoes"]       = { item = 8, texture = 5, defaultItem = 0, defaultTexture = 0},  -- Shoes
                    ["accessory"]   = { item = 11, texture = 3, defaultItem = 0, defaultTexture = 0},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Bag
                    ["hat"]         = { item = -1, texture = -1, defaultItem = 0, defaultTexture = 0},  -- Hat
                    ["glass"]       = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Mask
                    }
                }
            },
			-- Gender
            [3] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Worker',
                    outfitData = {
                    ["pants"]       = { item = 57, texture = 2, defaultItem = 0, defaultTexture = 0},  -- Pants
                    ["arms"]        = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Arms
                    ["t-shirt"]     = { item = 34, texture = 0, defaultItem = 0, defaultTexture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Body Vest
                    ["torso2"]      = { item = 105, texture = 7, defaultItem = 0, defaultTexture = 0},  -- Jacket
                    ["shoes"]       = { item = 8, texture = 5, defaultItem = 0, defaultTexture = 0},  -- Shoes
                    ["accessory"]   = { item = 11, texture = 3, defaultItem = 0, defaultTexture = 0},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Bag
                    ["hat"]         = { item = -1, texture = -1, defaultItem = 0, defaultTexture = 0},  -- Hat
                    ["glass"]       = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Mask
                    }
                }
            },
			-- Gender
            [4] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Worker',
                    outfitData = {
                    ["pants"]       = { item = 57, texture = 2, defaultItem = 0, defaultTexture = 0},  -- Pants
                    ["arms"]        = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Arms
                    ["t-shirt"]     = { item = 34, texture = 0, defaultItem = 0, defaultTexture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Body Vest
                    ["torso2"]      = { item = 105, texture = 7, defaultItem = 0, defaultTexture = 0},  -- Jacket
                    ["shoes"]       = { item = 8, texture = 5, defaultItem = 0, defaultTexture = 0},  -- Shoes
                    ["accessory"]   = { item = 11, texture = 3, defaultItem = 0, defaultTexture = 0},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Bag
                    ["hat"]         = { item = -1, texture = -1, defaultItem = 0, defaultTexture = 0},  -- Hat
                    ["glass"]       = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0, defaultItem = 0, defaultTexture = 0},  -- Mask
                    }
                }
            }
        }
    },
    ['ambulance'] = {
        -- Job
        ['male'] = {
            -- Gender
            [0] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {
                        ['arms'] = {item = 85, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 129, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T-Shirt
                        ['torso2'] = {item = 250, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Vest
                        ['decals'] = {item = 58, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Decals
                        ['accessory'] = {item = 127, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['pants'] = {item = 96, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['shoes'] = {item = 54, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Mask
                        ['hat'] = {item = 122, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Ear accessories
                    }
                }
            },
            [1] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {
                        ['arms'] = {item = 85, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 129, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T-Shirt
                        ['torso2'] = {item = 250, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Vest
                        ['decals'] = {item = 58, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Decals
                        ['accessory'] = {item = 127, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['pants'] = {item = 96, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['shoes'] = {item = 54, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Mask
                        ['hat'] = {item = 122, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Ear accessories
                    }
                }
            },
            [2] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {
                        ['arms'] = {item = 85, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 129, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T-Shirt
                        ['torso2'] = {item = 250, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Vest
                        ['decals'] = {item = 58, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Decals
                        ['accessory'] = {item = 127, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['pants'] = {item = 96, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['shoes'] = {item = 54, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Mask
                        ['hat'] = {item = 122, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Ear accessories
                    }
                },
                [2] = {
                    outfitLabel = 'Polo',
                    outfitData = {
                        ['arms'] = {item = 90, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 15, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T-Shirt
                        ['torso2'] = {item = 249, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Vest
                        ['decals'] = {item = 57, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Decals
                        ['accessory'] = {item = 126, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['pants'] = {item = 96, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['shoes'] = {item = 54, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Mask
                        ['hat'] = {item = 122, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Ear accessories
                    }
                }
            },
            [3] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {
                        ['arms'] = {item = 85, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 129, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T-Shirt
                        ['torso2'] = {item = 250, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Vest
                        ['decals'] = {item = 58, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Decals
                        ['accessory'] = {item = 127, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['pants'] = {item = 96, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['shoes'] = {item = 54, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Mask
                        ['hat'] = {item = 122, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Ear accessories
                    }
                },
                [2] = {
                    outfitLabel = 'Polo',
                    outfitData = {
                        ['arms'] = {item = 90, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 15, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T-Shirt
                        ['torso2'] = {item = 249, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Vest
                        ['decals'] = {item = 57, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Decals
                        ['accessory'] = {item = 126, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['pants'] = {item = 96, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['shoes'] = {item = 54, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Mask
                        ['hat'] = {item = 122, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Ear accessories
                    }
                },
                [3] = {
                    outfitLabel = 'Doctor',
                    outfitData = {
                        ['arms'] = {item = 93, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 32, texture = 3, defaultItem = 0, defaultTexture = 0}, -- T-Shirt
                        ['torso2'] = {item = 31, texture = 7, defaultItem = 0, defaultTexture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Vest
                        ['decals'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Decals
                        ['accessory'] = {item = 126, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['pants'] = {item = 28, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['shoes'] = {item = 10, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Mask
                        ['hat'] = {item = -1, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Ear accessories
                    }
                }
            },
            [4] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {
                        ['arms'] = {item = 85, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 129, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T-Shirt
                        ['torso2'] = {item = 250, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Vest
                        ['decals'] = {item = 58, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Decals
                        ['accessory'] = {item = 127, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['pants'] = {item = 96, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['shoes'] = {item = 54, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Mask
                        ['hat'] = {item = 122, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Ear accessories
                    }
                },
                [2] = {
                    outfitLabel = 'Polo',
                    outfitData = {
                        ['arms'] = {item = 90, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 15, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T-Shirt
                        ['torso2'] = {item = 249, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Vest
                        ['decals'] = {item = 57, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Decals
                        ['accessory'] = {item = 126, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['pants'] = {item = 96, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['shoes'] = {item = 54, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Mask
                        ['hat'] = {item = 122, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Ear accessories
                    }
                },
                [3] = {
                    outfitLabel = 'Doctor',
                    outfitData = {
                        ['arms'] = {item = 93, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 32, texture = 3, defaultItem = 0, defaultTexture = 0}, -- T-Shirt
                        ['torso2'] = {item = 31, texture = 7, defaultItem = 0, defaultTexture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Vest
                        ['decals'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Decals
                        ['accessory'] = {item = 126, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['pants'] = {item = 28, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['shoes'] = {item = 10, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Mask
                        ['hat'] = {item = -1, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Ear accessories
                    }
                }
            }
        },
        ['female'] = {
            -- Gender
            [0] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {
                        ['arms'] = {item = 109, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 159, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T-Shirt
                        ['torso2'] = {item = 258, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Vest
                        ['decals'] = {item = 66, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Decals
                        ['accessory'] = {item = 97, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['pants'] = {item = 99, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['shoes'] = {item = 55, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Mask
                        ['hat'] = {item = 121, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Ear accessories
                    }
                }
            },
            [1] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {
                        ['arms'] = {item = 109, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 159, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T-Shirt
                        ['torso2'] = {item = 258, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Vest
                        ['decals'] = {item = 66, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Decals
                        ['accessory'] = {item = 97, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['pants'] = {item = 99, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['shoes'] = {item = 55, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Mask
                        ['hat'] = {item = 121, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Ear accessories
                    }
                }
            },
            [2] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {
                        ['arms'] = {item = 109, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 159, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T-Shirt
                        ['torso2'] = {item = 258, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Vest
                        ['decals'] = {item = 66, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Decals
                        ['accessory'] = {item = 97, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['pants'] = {item = 99, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['shoes'] = {item = 55, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Mask
                        ['hat'] = {item = 121, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Ear accessories
                    }
                },
                [2] = {
                    outfitLabel = 'Polo',
                    outfitData = {
                        ['arms'] = {item = 105, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 13, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T-Shirt
                        ['torso2'] = {item = 257, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Vest
                        ['decals'] = {item = 65, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Decals
                        ['accessory'] = {item = 96, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['pants'] = {item = 99, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['shoes'] = {item = 55, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Mask
                        ['hat'] = {item = 121, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Ear accessories
                    }
                }
            },
            [3] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {
                        ['arms'] = {item = 109, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 159, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T-Shirt
                        ['torso2'] = {item = 258, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Vest
                        ['decals'] = {item = 66, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Decals
                        ['accessory'] = {item = 97, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['pants'] = {item = 99, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['shoes'] = {item = 55, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Mask
                        ['hat'] = {item = 121, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Ear accessories
                    }
                },
                [2] = {
                    outfitLabel = 'Polo',
                    outfitData = {
                        ['arms'] = {item = 105, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 13, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T-Shirt
                        ['torso2'] = {item = 257, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Vest
                        ['decals'] = {item = 65, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Decals
                        ['accessory'] = {item = 96, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['pants'] = {item = 99, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['shoes'] = {item = 55, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Mask
                        ['hat'] = {item = 121, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Ear accessories
                    }
                },
                [3] = {
                    outfitLabel = 'Doctor',
                    outfitData = {
                        ['arms'] = {item = 105, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 39, texture = 3, defaultItem = 0, defaultTexture = 0}, -- T-Shirt
                        ['torso2'] = {item = 7, texture = 1, defaultItem = 0, defaultTexture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Vest
                        ['decals'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Decals
                        ['accessory'] = {item = 96, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['pants'] = {item = 34, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['shoes'] = {item = 29, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Mask
                        ['hat'] = {item = -1, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Ear accessories
                    }
                }
            },
            [4] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {
                        ['arms'] = {item = 109, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 159, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T-Shirt
                        ['torso2'] = {item = 258, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Vest
                        ['decals'] = {item = 66, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Decals
                        ['accessory'] = {item = 97, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['pants'] = {item = 99, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['shoes'] = {item = 55, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Mask
                        ['hat'] = {item = 121, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Ear accessories
                    }
                },
                [2] = {
                    outfitLabel = 'Polo',
                    outfitData = {
                        ['arms'] = {item = 105, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 13, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T-Shirt
                        ['torso2'] = {item = 257, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Vest
                        ['decals'] = {item = 65, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Decals
                        ['accessory'] = {item = 96, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['pants'] = {item = 99, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['shoes'] = {item = 55, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Mask
                        ['hat'] = {item = 121, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Ear accessories
                    }
                },
                [3] = {
                    outfitLabel = 'Doctor',
                    outfitData = {
                        ['arms'] = {item = 105, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                        ['t-shirt'] = {item = 39, texture = 3, defaultItem = 0, defaultTexture = 0}, -- T-Shirt
                        ['torso2'] = {item = 7, texture = 1, defaultItem = 0, defaultTexture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Vest
                        ['decals'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Decals
                        ['accessory'] = {item = 96, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                        ['pants'] = {item = 34, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                        ['shoes'] = {item = 29, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                        ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Mask
                        ['hat'] = {item = -1, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Ear accessories
                    }
                }
            }
        }
    }
}
