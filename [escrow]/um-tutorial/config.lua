um = {}

um.debug = false -- Enable or disable debug mode

um.blur = true -- Enable or disable blur effect

um.inventory = 'qb' -- ox, qb, ps

um.itemImage = function(image)
    BasePath = {
        ox = 'https://cfx-nui-ox_inventory/web/images/',
        qb = 'https://cfx-nui-qb-inventory/html/images/',
        ps = 'https://cfx-nui-qb-inventory/html/images/',
    }
    return BasePath[um.inventory] .. image .. '.png'
end

um.hud = function(bool)
    if bool then
        --DisplayRadar(true)
        Debug("HUD is disabled")
    else
        --DisplayRadar(false)
        Debug("HUD is enabled")
    end
end

um.ped = {
    model = "mp_m_exarmy_01",
    coords = vector4(-1080.51, -1679.15, 3.97, 284.42),
    cameraCoords = vector4(-1078.60, -1678.81, 4.48, 91.65),
    scenario = 'PROP_HUMAN_SEAT_CHAIR_DRINK_BEER',
}

um.texts = {
    pedDialog = {
        title = "Hello, Survivor",
        icon = 'mood-boy',
        description = [[
            Welcome, I'm Bill, and I've been told you're eager to learn a thing or two.
            Be warned, though, it's not the safest of places, but fear not, for I'll be your guide.
            Together, we'll embark on a journey to navigate and master the secrets of survival in this undead wasteland.
            Let's begin our adventure and uncover what the new world has to offer. Ready? Follow me."
        ]],
        buttons = {
            startLabel = 'Let\'s get started',
            dontLabel = 'No, I don\'t want to start'
        }
    },
    titles = {
        item = "Related Items",
        key = "Interaction Key",
    }
}


um.coords = {
    [1] = {
        cameraCoords = vector4(-423.22, 1131.22, 328.86, 160.51),
        info = {
            title = "Safezone",
            description = "Located at galileo observatory, this is the place where players are unable to kill each other, and is also the spawnpoint for new players (or those who are first returning after a large update). Survivors can buy or sell goods here as well as use the safezone storage container.",
            icon = 'home',
            color = '#8ba857',
        },
        -- drawMarker = { -- optional
        --     settings = {
        --         type = 6, -- @https://docs.fivem.net/docs/game-references/markers/
        --         scale = 0.1,
        --         color = 'aqua', -- red, green, blue, yellow, black, white, aqua
        --         move = true,
        --     },
        --     coords = {
        --         vector3(-425.52, 1123.78, 325.85),
        --     }
        -- },
        -- items = {
        --     {
        --         label = "bandage",
        --         image = um.itemImage('bandage')
        --     },
        --     {
        --         label = "canned_beans",
        --         image = um.itemImage('weapon_petrolcan')
        --     },
        --     {
        --         label = "weapon_pistol",
        --         image = um.itemImage('weapon_pistol')
        --     },
        -- },
        -- key = 'ALT'
    },
    [2] = {
        cameraCoords = vector4(-433.31, 1103.03, 327.68, 282.49),
        info = {
            title = "Trader",
            description = "Speak with the trader to sell any item that can be purchased at the safezone. Icluding hunting & fishing items.",
            icon = 'home',
            color = '#8ba857',
        },
    --     drawMarker = { -- optional
    --     settings = {
    --         type = 21, -- @https://docs.fivem.net/docs/game-references/markers/
    --         scale = 0.1,
    --         color = 'white', -- red, green, blue, yellow
    --         move = true,
    --     },
    --     coords = {
    --         vector3(-427.25, 1104.52, 327.76),
    --     }
    -- },
    items = {
        {
            label = "Iron",
            image = um.itemImage('iron')
        },
        {
            label = "Electronic Kit",
            image = um.itemImage('electronickit')
        },
        {
            label = "Machete",
            image = um.itemImage('weapon_machete')
        },
        {
            label = "Pistol",
            image = um.itemImage('weapon_pistol')
        },
    },
    key = 'L ALT'
    },
    [3] = {
        cameraCoords = vector4(-413.48, 1094.68, 327.68, 341.41),
        info = {
            title = "Upgrade Station",
            description = "Utilize the upgrade station to upgrade weapons to their MK II variants.",
            icon = 'home',
            color = '#8ba857',
        },
        drawMarker = { -- optional
        settings = {
            type = 21, -- @https://docs.fivem.net/docs/game-references/markers/
            scale = 0.1,
            color = 'white', -- red, green, blue, yellow
            move = true,
        },
        coords = {
            vector3(-427.25, 1104.52, 327.76),
        }
    },
    items = {
        {
            label = "Pistol Mk II",
            image = um.itemImage('weapon_pistol_mk2')
        },
        {
            label = "SMG Mk II",
            image = um.itemImage('weapon_smg_mk2')
        },
        {
            label = "Pumpshotgun MK II",
            image = um.itemImage('weapon_pumpshotgun_mk2')
        },
        {
            label = "Carbine Rifle Mk II",
            image = um.itemImage('weapon_carbinerifle_mk2')
        },
    },
    },
    [4] = {
        cameraCoords = vector4(-419.1, 1076.96, 327.68, 74.8),
        info = {
            title = "Consumables",
            description = "Can't forget about food and water. Rule #1 of some random survival guide book, don't die!",
            icon = 'home',
            color = '#8ba857'
        },
    --     drawMarker = { -- optional
    --     settings = {
    --         type = 21, -- @https://docs.fivem.net/docs/game-references/markers/
    --         scale = 0.1,
    --         color = 'white', -- red, green, blue, yellow
    --         move = true,
    --     },
    --     coords = {
    --         vector3(-427.25, 1104.52, 327.76),
    --     }
    -- },
        items = {
            {
                label = "Water",
                image = um.itemImage('water')
            },
            {
                label = "Cola",
                image = um.itemImage('cola')
            },
            {
                label = "Egg Sandwich",
                image = um.itemImage('eggsandwich')
            },
        },
        key = 'ALT'
    },
    [5] = {
        cameraCoords = vector4(-434.16, 1090.92, 327.68, 253.41),
        info = {
            title = "Surgeon",
            description = "Speak with the surgeon to change your physical appearance/hair. Can't promise it'll make you look any better.",
            icon = 'home',
            color = '#8ba857',
        },
    --     drawMarker = { -- optional
    --     settings = {
    --         type = 21, -- @https://docs.fivem.net/docs/game-references/markers/
    --         scale = 0.1,
    --         color = 'white', -- red, green, blue, yellow
    --         move = true,
    --     },
    --     coords = {
    --         vector3(-427.25, 1104.52, 327.76),
    --     }
    -- },
    },
    [6] = {
        cameraCoords = vector4(-433.94, 1083.08, 327.68, 162.75),
        info = {
            title = "Medical Supplies",
            description = "Bandages, IFAKS and more. We got heals to suit your needs! Did you slide into a radioactive zone with no protection? No problem. Did you lose your friends and family on a looting expedition? Couple First Aid kits n' it's like it never even happened!",
            icon = 'home',
            color = '#8ba857',
        },
        items = { -- optional
            {
                label = "Bandage",
                image = um.itemImage('bandage')
            },
            {
                label = "IFAKS",
                image = um.itemImage('ifaks')
            },
            {
                label = "Painkillers",
                image = um.itemImage('painkillers')
            },
            {
                label = "First Aid",
                image = um.itemImage('firstaid')
            },

        },
    --     drawMarker = { -- optional
    --     settings = {
    --         type = 21, -- @https://docs.fivem.net/docs/game-references/markers/
    --         scale = 0.1,
    --         color = 'white', -- red, green, blue, yellow
    --         move = true,
    --     },
    --     coords = {
    --         vector3(-427.25, 1104.52, 327.76),
    --     }
    -- },
    },
    [7] = {
        cameraCoords = vector4(-433.0, 1101.82, 328.08, 125.12),
        info = {
            title = "Marketplace",
            description = "Use the marketplace to buy/sell items directly from other survivors. You may find items at a discounted price and can bargain for a better deal when selling your items rather than selling to the trader.",
            icon = 'home',
            color = '#8ba857',
        },
        items = { -- optional
            {
                label = "Gold Bar",
                image = um.itemImage('goldbar')
            },
            {
                label = "Grenade",
                image = um.itemImage('weapon_grenade')
            },
            {
                label = "Gas Mask",
                image = um.itemImage('gas_mask')
            }
        },
    --     drawMarker = { -- optional
    --     settings = {
    --         type = 21, -- @https://docs.fivem.net/docs/game-references/markers/
    --         scale = 0.1,
    --         color = 'white', -- red, green, blue, yellow
    --         move = true,
    --     },
    --     coords = {
    --         vector3(-427.25, 1104.52, 327.76),
    --     }
    -- },
    },
    [8] = {
        cameraCoords = vector4(-448.69, 1092.09, 327.68, 72.75),
        info = {
            title = "Weapons",
            description = "Head to the armory room to purchase weapons and attachments.",
            icon = 'home',
            color = '#8ba857',
        },
    --     drawMarker = { -- optional
    --     settings = {
    --         type = 21, -- @https://docs.fivem.net/docs/game-references/markers/
    --         scale = 0.1,
    --         color = 'white', -- red, green, blue, yellow
    --         move = true,
    --     },
    --     coords = {
    --         vector3(-427.25, 1104.52, 327.76),
    --     }
    -- },
        items = { -- optional
        {
            label = "Pistol",
            image = um.itemImage('weapon_pistol')
        },
        {
            label = "Pumpshotgun",
            image = um.itemImage('weapon_pumpshotgun')
        },
        {
            label = "Assault Rifle",
            image = um.itemImage('weapon_assaultrifle')
        }
    },
    coords = {
        vector3(-451.52, 1092.9, 327.68),
    }
    },
    [9] = {
        cameraCoords = vector4(-447.25, 1096.52, 327.68, 75.02),
        info = {
            title = "Attachments",
            description = "Attachments are not compatible for every weapon, be sure to check discord for more information regarding weapon components.",
            icon = 'home',
            color = '#8ba857',
        },
    --     drawMarker = { -- optional
    --     settings = {
    --         type = 21, -- @https://docs.fivem.net/docs/game-references/markers/
    --         scale = 0.1,
    --         color = 'white', -- red, green, blue, yellow
    --         move = true,
    --     },
    --     coords = {
    --         vector3(-427.25, 1104.52, 327.76),
    --     }
    -- },
        items = {
            {
                label = "Drum Mag",
                image = um.itemImage('drum_attachment')
            },
            {
                label = "Flashlight",
                image = um.itemImage('flashlight_attachment')
            },
            {
                label = "Holoscope",
                image = um.itemImage('holoscope_attachment')
            },
        },
        key = 'ALT'
    },
    [10] = {
        cameraCoords = vector4(-443.04, 1093.87, 315.63, 164.27),
        info = {
            title = "Wardrobe",
            description = "Head to the lower level of Galileo Safezone to purchase clothing.",
            icon = 'home',
            color = '#8ba857',
        },
    --     drawMarker = { -- optional
    --     settings = {
    --         type = 21, -- @https://docs.fivem.net/docs/game-references/markers/
    --         scale = 0.1,
    --         color = 'white', -- red, green, blue, yellow
    --         move = true,
    --     },
    --     coords = {
    --         vector3(-427.25, 1104.52, 327.76),
    --     }
    -- },
        items = {
            {
                label = "Forest Combat Sweater",
                image = um.itemImage('tops')
            },
            {
                label = "Green Flight Pants",
                image = um.itemImage('pants')
            },
            {
                label = "Black Tactical Boots",
                image = um.itemImage('shoes')
            },
        },
    },
    [11] = {
        cameraCoords = vector4(-412.96, 1121.07, 325.9, 230.23),
        info = {
            title = "Storage Container",
            description = "Stash items inside the storage container. It's a really good idea to store your cash here before exploring. Storage can be upgraded @ground-zero.tebex.io",
            icon = 'home',
            color = '#8ba857',
        },
    --     drawMarker = { -- optional
    --     settings = {
    --         type = 21, -- @https://docs.fivem.net/docs/game-references/markers/
    --         scale = 0.1,
    --         color = 'white', -- red, green, blue, yellow
    --         move = true,
    --     },
    --     coords = {
    --         vector3(-427.25, 1104.52, 327.76),
    --     }
    -- },
        items = {
            {
                label = "Cash",
                image = um.itemImage('cash')
            },
        },
    },
    [12] = {
        cameraCoords = vector4(-453.86, 1157.3, 325.9, 45.03),
        info = {
            title = "Quests",
            description = "Quests are a really great way to learn the basics. They can be very rewarding as well. Providing survivors with a great foundation to start on.",
            icon = 'home',
            color = '#8ba857',
        },
    --     drawMarker = { -- optional
    --     settings = {
    --         type = 21, -- @https://docs.fivem.net/docs/game-references/markers/
    --         scale = 0.1,
    --         color = 'white', -- red, green, blue, yellow
    --         move = true,
    --     },
    --     coords = {
    --         vector3(-427.25, 1104.52, 327.76),
    --     }
    -- },
    },
    [13] = {
        cameraCoords = vector4(-391.8, 1193.29, 325.64, 253.73),
        info = {
            title = "Vehicle Rentals",
            description = "You will find vehicle rentals to be your main source of transportation. You have a one hour time frame to return your rental vehicle at any vehicle rental location. If you do so withing the referrenced time frame you will be reimbursed the remainder of your balance. If you go a second over the time frame your entire deposit will be collected.",
            icon = 'home',
            color = '#8ba857',
        },
        -- drawMarker = { -- optional
        -- settings = {
        --     type = 21, -- @https://docs.fivem.net/docs/game-references/markers/
        --     scale = 0.1,
        --     color = 'white', -- red, green, blue, yellow
        --     move = true,
        -- },
        -- coords = {
        --     vector3(-385.75, 1191.49, 325.76),
        -- }
        -- },
    },
    [14] = {
        cameraCoords = vector4(-388.65, 1217.83, 325.64, 253.5),
        info = {
            title = "Base Building",
            description = "Purchase and/or craft building materials, supplies, furniture and even defenses.",
            icon = 'home',
            color = '#8ba857',
        },
        -- drawMarker = { -- optional
        -- settings = {
        --     type = 21, -- @https://docs.fivem.net/docs/game-references/markers/
        --     scale = 0.1,
        --     color = 'white', -- red, green, blue, yellow
        --     move = true,
        -- },
        -- coords = {
        --     vector3(-378.56, 1216.62, 325.76),
        -- }
        -- },
        items = {
            {
                label = "Nails",
                image = um.itemImage('nails')
            },
            {
                label = "Hatchet",
                image = um.itemImage('weapon_hatchet')
            },
            {
                label = "Wood Plank",
                image = um.itemImage('wood_plank')
            },
            {
                label = "Wood Wall",
                image = um.itemImage('model_wall_wood')
            },
        },
    },
    [15] = {
        cameraCoords = vector4(-442.32, 1170.28, 325.9, 164.62),
        info = {
            title = "Vehicle Depot",
            description = "Retreive your destroyed vehicles. Only applies to purchased vehicles, found and restored vehicles must be repaired using the required repair item depending on damage.",
            icon = 'home',
            color = '#8ba857',
        },
        -- drawMarker = { -- optional
        -- settings = {
        --     type = 21, -- @https://docs.fivem.net/docs/game-references/markers/
        --     scale = 0.1,
        --     color = 'white', -- red, green, blue, yellow
        --     move = true,
        -- },
        -- coords = {
        --     vector3(-378.56, 1216.62, 325.76),
        -- }
        -- },
    },
    [16] = {
        cameraCoords = vector4(51.65, 3724.72, 39.66, 239.13),
        info = {
            title = "Raid Camps",
            description = "Find and kill all the AI. Once complete you'll be able to interact with the crate and receive rewards. Be careful though, other survivors may be lurking.",
            icon = 'home',
            color = '#8ba857',
        },
        -- drawMarker = { -- optional
        -- settings = {
        --     type = 21, -- @https://docs.fivem.net/docs/game-references/markers/
        --     scale = 0.1,
        --     color = 'white', -- red, green, blue, yellow
        --     move = true,
        -- },
        -- coords = {
        --     vector3(-378.56, 1216.62, 325.76),
        -- }
        -- },
    },
    [17] = {
        cameraCoords = vector4(-1353.45, -3042.25, 13.94, 277.63),
        info = {
            title = "Airdrops",
            description = "There are multiple airdrop classes that yield different loot. Airdrop events occur every hour and despawn within 30 minutes if no players have interacted with the drop within the given time.",
            icon = 'home',
            color = '#8ba857',
        },
        -- drawMarker = { -- optional
        -- settings = {
        --     type = 21, -- @https://docs.fivem.net/docs/game-references/markers/
        --     scale = 0.1,
        --     color = 'white', -- red, green, blue, yellow
        --     move = true,
        -- },
        -- coords = {
        --     vector3(-378.56, 1216.62, 325.76),
        -- }
        -- },
    },
    [18] = {
        cameraCoords = vector4(2822.54, -1440.53, 10.09, 255.96),
        info = {
            title = "Heli Crashes",
            description = "Heli crashes work very similar to airdrops, however heli crashes have a ranking system. The more you loot heli crashes, you'll come to find you are receiving more valuable loot.",
            icon = 'home',
            color = '#8ba857',
        },
        -- drawMarker = { -- optional
        -- settings = {
        --     type = 21, -- @https://docs.fivem.net/docs/game-references/markers/
        --     scale = 0.1,
        --     color = 'white', -- red, green, blue, yellow
        --     move = true,
        -- },
        -- coords = {
        --     vector3(-378.56, 1216.62, 325.76),
        -- }
        -- },
    },
    [19] = {
        cameraCoords = vector4(1568.66, -2150.89, 77.59, 1.49),
        info = {
            title = "Keycard Locations",
            description = "keycard locations provide specif loot depending on the card you have. They are guarded and alert other players of your presence, be carfeul and come prepared!",
            icon = 'home',
            color = '#8ba857',
        },
        -- drawMarker = { -- optional
        -- settings = {
        --     type = 21, -- @https://docs.fivem.net/docs/game-references/markers/
        --     scale = 0.1,
        --     color = 'white', -- red, green, blue, yellow
        --     move = true,
        -- },
        -- coords = {
        --     vector3(-378.56, 1216.62, 325.76),
        -- }
        -- },
    },
    [20] = {
        cameraCoords = vector4(-1832.43, 3006.2, 32.81, 98.5),
        info = {
            title = "Military Bases",
            description = "Military bases have double the loot, all the firepower you'll need. They are heavily AI guarded and have a ton of traffic watch for other survivors it's high stakes at these location.",
            icon = 'home',
            color = '#8ba857',
        },
        -- drawMarker = { -- optional
        -- settings = {
        --     type = 21, -- @https://docs.fivem.net/docs/game-references/markers/
        --     scale = 0.1,
        --     color = 'white', -- red, green, blue, yellow
        --     move = true,
        -- },
        -- coords = {
        --     vector3(-378.56, 1216.62, 325.76),
        -- }
        -- },
    },
    [21] = {
        cameraCoords = vector4(-280.68, -2211.27, 10.05, 269.78),
        info = {
            title = "Black Market",
            description = "Drugs, special weaponry, raid tools, backpacks, armor and equipment! Any item that can be purchased at the Black Martket can be sold here and more.",
            icon = 'home',
            color = '#8ba857',
        },
        items = {
            {
                label = "Leopard Quad Helmet",
                image = um.itemImage('nightvision')
            },
            {
                label = "Skywalker OG Brick",
                image = um.itemImage('weed_brick')
            },
            {
                label = "C4",
                image = um.itemImage('weapon_stickybomb')
            },
            {
                label = "Charcoal Plate Carrier",
                image = um.itemImage('armor')
            },
            {
                label = "Combat MG",
                image = um.itemImage('weapon_combatmg')
            },
        },
        -- drawMarker = { -- optional
        -- settings = {
        --     type = 21, -- @https://docs.fivem.net/docs/game-references/markers/
        --     scale = 0.1,
        --     color = 'white', -- red, green, blue, yellow
        --     move = true,
        -- },
        -- coords = {
        --     vector3(-378.56, 1216.62, 325.76),
        -- }
        -- },
    },
    [22] = {
        cameraCoords = vector4(1815.02, 4591.57, 39.42, 229.74),
        info = {
            title = "Good luck, survivor!",
            description = "Before you go, type /squad to open a squad menu. Team up with other survivors or friends revealing player name tags, health bar and blip!",
            icon = 'home',
            color = '#8ba857',
        },
        -- drawMarker = { -- optional
        -- settings = {
        --     type = 21, -- @https://docs.fivem.net/docs/game-references/markers/
        --     scale = 0.1,
        --     color = 'white', -- red, green, blue, yellow
        --     move = true,
        -- },
        -- coords = {
        --     vector3(-378.56, 1216.62, 325.76),
        -- }
        -- },
    },
}
