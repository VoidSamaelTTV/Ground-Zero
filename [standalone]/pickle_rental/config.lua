Config = {}

Config.Language = "en"

Config.Debug = false

Config.RenderDistance = 20.0

Config.GiveKeys = function(plate)
    TriggerServerEvent('qb-vehiclekeys:server:AcquireVehicleKeys', plate)
end

Config.Rental = {
    time = 60, -- Max minutes a player can have the car out until they get no refund for returning it.
    plateFormat = "RNT ...", -- The plate format for rented cars. ( _ = Letter, . = Number )
}

Config.Locations = {
    {
        title = "Vehicle Rental",
        blip = { -- Set to nil for no blip.
            label = "Vehicle Rental",
            id = 225,
            scale = 0.5,
            color = 16,
            display = 4,
        },
        locations = {
            interact = {
                coords = vector3(-385.49, 1191.38, 326.0),
                heading = 77.0245,
                ped = nil -- Set to nil to use markers.
            },
            spawn = {
                coords = vector3(-388.77, 1194.13, 324.97),
                heading = 95.6001
            },
        },
        vehicles = {
            {
                label = "Rebel",
                model = `rebel`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Ratloader",
                model = `ratloader`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "journey",
                model = `Journey`,
                price = 3000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Emperor",
                model = `emperor2`,
                price = 2500,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Ratbike",
                model = `ratbike`,
                price = 1000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Tornado",
                model = `tornado3`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Voodoo",
                model = `voodoo2`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
        },
    },
    {
        title = "Vehicle Rental",
        blip = { -- Set to nil for no blip.
            label = "Vehicle Rental",
            id = 225,
            scale = 0.6,
            color = 16,
            display = 4,
        },
        locations = {
            interact = {
                coords = vector3(789.88, 1272.92, 360.3),
                heading = 77.0245,
                ped = nil -- Set to nil to use markers.
            },
            spawn = {
                coords = vector3(793.85, 1276.43, 359.62),
                heading = 265.6001
            },
        },
        vehicles = {
            {
                label = "Rebel",
                model = `rebel`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Ratloader",
                model = `ratloader`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "journey",
                model = `Journey`,
                price = 3000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Emperor",
                model = `emperor2`,
                price = 2500,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Ratbike",
                model = `ratbike`,
                price = 1000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Tornado",
                model = `tornado3`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Voodoo",
                model = `voodoo2`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
        },
    },
    {
        title = "Vehicle Rental",
        blip = { -- Set to nil for no blip.
            label = "Vehicle Rental",
            id = 225,
            scale = 0.6,
            color = 16,
            display = 4,
        },
        locations = {
            interact = {
                coords = vector3(2563.96, 4680.65, 34.08),
                heading = 77.0245,
                ped = nil -- Set to nil to use markers.
            },
            spawn = {
                coords = vector3(2558.58, 4694.1, 33.17),
                heading = 129.6001
            },
        },
        vehicles = {
            {
                label = "Rebel",
                model = `rebel`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Ratloader",
                model = `ratloader`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "journey",
                model = `Journey`,
                price = 3000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Emperor",
                model = `emperor2`,
                price = 2500,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Ratbike",
                model = `ratbike`,
                price = 1000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Tornado",
                model = `tornado3`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Voodoo",
                model = `voodoo2`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
        },
    },
    {
        title = "Vehicle Rental",
        blip = { -- Set to nil for no blip.
            label = "Vehicle Rental",
            id = 225,
            scale = 0.6,
            color = 16,
            display = 4,
        },
        locations = {
            interact = {
                coords = vector3(387.56, 3584.91, 33.29),
                heading = 77.0245,
                ped = nil -- Set to nil to use markers.
            },
            spawn = {
                coords = vector3(397.62, 3589.58, 32.87),
                heading = 0.0
            },
        },
        vehicles = {
            {
                label = "Rebel",
                model = `rebel`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Ratloader",
                model = `ratloader`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "journey",
                model = `Journey`,
                price = 3000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Emperor",
                model = `emperor2`,
                price = 2500,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Ratbike",
                model = `ratbike`,
                price = 1000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Tornado",
                model = `tornado3`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Voodoo",
                model = `voodoo2`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
        },
    },
    {
        title = "Vehicle Rental",
        blip = { -- Set to nil for no blip.
            label = "Vehicle Rental",
            id = 225,
            scale = 0.6,
            color = 16,
            display = 4,
        },
        locations = {
            interact = {
                coords = vector3(-2333.12, 266.13, 169.6),
                heading = 77.0245,
                ped = nil -- Set to nil to use markers.
            },
            spawn = {
                coords = vector3(-2336.7, 275.83, 169.05),
                heading = 292.0
            },
        },
        vehicles = {
            {
                label = "Rebel",
                model = `rebel`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Ratloader",
                model = `ratloader`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "journey",
                model = `Journey`,
                price = 3000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Emperor",
                model = `emperor2`,
                price = 2500,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Ratbike",
                model = `ratbike`,
                price = 1000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Tornado",
                model = `tornado3`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Voodoo",
                model = `voodoo2`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
        },
    },
    {
        title = "Vehicle Rental",
        blip = { -- Set to nil for no blip.
            label = "Vehicle Rental",
            id = 225,
            scale = 0.6,
            color = 16,
            display = 4,
        },
        locations = {
            interact = {
                coords = vector3(1705.18, -1637.65, 112.49),
                heading = 77.0245,
                ped = nil -- Set to nil to use markers.
            },
            spawn = {
                coords = vector3(1712.86, -1637.01, 112.07),
                heading = 190.0
            },
        },
        vehicles = {
            {
                label = "Rebel",
                model = `rebel`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Ratloader",
                model = `ratloader`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "journey",
                model = `Journey`,
                price = 3000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Emperor",
                model = `emperor2`,
                price = 2500,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Ratbike",
                model = `ratbike`,
                price = 1000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Tornado",
                model = `tornado3`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Voodoo",
                model = `voodoo2`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
        },
    },
    {
        title = "Vehicle Rental",
        blip = { -- Set to nil for no blip.
            label = "Vehicle Rental",
            id = 225,
            scale = 0.6,
            color = 16,
            display = 4,
        },
        locations = {
            interact = {
                coords = vector3(-1015.32, -1515.07, 6.51),
                heading = 77.0245,
                ped = nil -- Set to nil to use markers.
            },
            spawn = {
                coords = vector3(-1024.25, -1521.37, 5.18),
                heading = 125.0
            },
        },
        vehicles = {
            {
                label = "Rebel",
                model = `rebel`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Ratloader",
                model = `ratloader`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "journey",
                model = `Journey`,
                price = 3000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Emperor",
                model = `emperor2`,
                price = 2500,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Ratbike",
                model = `ratbike`,
                price = 1000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Tornado",
                model = `tornado3`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Voodoo",
                model = `voodoo2`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
        },
    },
    {
        title = "Vehicle Rental",
        blip = { -- Set to nil for no blip.
            label = "Vehicle Rental",
            id = 225,
            scale = 0.6,
            color = 16,
            display = 4,
        },
        locations = {
            interact = {
                coords = vector3(269.98, -3248.46, 5.79),
                heading = 77.0245,
                ped = nil -- Set to nil to use markers.
            },
            spawn = {
                coords = vector3(276.2, -3256.27, 5.38),
                heading = 280.0
            },
        },
        vehicles = {
            {
                label = "Rebel",
                model = `rebel`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Ratloader",
                model = `ratloader`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "journey",
                model = `Journey`,
                price = 3000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Emperor",
                model = `emperor2`,
                price = 2500,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Ratbike",
                model = `ratbike`,
                price = 1000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Tornado",
                model = `tornado3`,
                price = 1500,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Voodoo",
                model = `voodoo2`,
                price = 1500,
                groups = nil -- {["police"] = 4}
            },
        },
    },
    {
        title = "Vehicle Rental",
        blip = { -- Set to nil for no blip.
            label = "Vehicle Rental",
            id = 225,
            scale = 0.6,
            color = 16,
            display = 4,
        },
        locations = {
            interact = {
                coords =vector3(301.48, -190.9, 61.57),
                heading = 77.0245,
                ped = nil -- Set to nil to use markers.
            },
            spawn = {
                coords = vector3(300.99, -183.23, 61.15),
                heading = 70.0
            },
        },
        vehicles = {
            {
                label = "Rebel",
                model = `rebel`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Ratloader",
                model = `ratloader`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "journey",
                model = `Journey`,
                price = 3000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Emperor",
                model = `emperor2`,
                price = 2500,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Ratbike",
                model = `ratbike`,
                price = 1000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Tornado",
                model = `tornado3`,
                price = 1500,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Voodoo",
                model = `voodoo2`,
                price = 1500,
                groups = nil -- {["police"] = 4}
            },
        },
    },
    {
        title = "Vehicle Rental",
        blip = { -- Set to nil for no blip.
            label = "Vehicle Rental",
            id = 225,
            scale = 0.6,
            color = 16,
            display = 4,
        },
        locations = {
            interact = {
                coords =vector3(-773.5, 5598.19, 33.61),
                heading = 77.0245,
                ped = nil -- Set to nil to use markers.
            },
            spawn = {
                coords = vector3(-772.86, 5585.54, 32.97),
                heading = 170.0
            },
        },
        vehicles = {
            {
                label = "Rebel",
                model = `rebel`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Ratloader",
                model = `ratloader`,
                price = 2000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "journey",
                model = `Journey`,
                price = 3000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Emperor",
                model = `emperor2`,
                price = 2500,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Ratbike",
                model = `ratbike`,
                price = 1000,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Tornado",
                model = `tornado3`,
                price = 1500,
                groups = nil -- {["police"] = 4}
            },
            {
                label = "Voodoo",
                model = `voodoo2`,
                price = 1500,
                groups = nil -- {["police"] = 4}
            },
        },
    },
    -- {
    --     title = "Boat Rental",
    --     blip = { -- Set to nil for no blip.
    --         label = "Rental Company (Boat)",
    --         id = 225,
    --         scale = 0.85,
    --         color = 16,
    --         display = 4,
    --     },
    --     locations = {
    --         interact = {
    --             coords = vector3(-794.6424, -1510.8400, 0.5952),
    --             heading = 17.4605,
    --             ped = `ig_siemonyetarian` -- Set to nil to use markers.
    --         },
    --         spawn = {
    --             coords = vector3(-803.7595, -1505.3850, -0.5),
    --             offsetZ = 2.0,
    --             radius = 3.0,
    --             heading = 118.0231
    --         },
    --     },
    --     vehicles = {
    --         {
    --             label = "Dinghy",
    --             model = `dinghy`,
    --             price = 400,
    --             groups = nil -- {["police"] = 4}
    --         },
    --         {
    --             label = "Tug",
    --             model = `tug`,
    --             price = 300,
    --             groups = nil -- {["police"] = 4}
    --         },
    --         {
    --             label = "Tropic",
    --             model = `tropic`,
    --             price = 200,
    --             groups = nil -- {["police"] = 4}
    --         },
    --         {
    --             label = "Jetski",
    --             model = `seashark`,
    --             price = 100,
    --             groups = nil -- {["police"] = 4}
    --         },
    --     },
    -- },
    -- {
    --     title = "Airplane Rental",
    --     blip = { -- Set to nil for no blip.
    --         label = "Rental Company (Airplane)",
    --         id = 225,
    --         scale = 0.85,
    --         color = 16,
    --         display = 4,
    --     },
    --     locations = {
    --         interact = {
    --             coords = vector3(-1621.5917, -3152.7693, 12.9918),
    --             heading = 50.5961,
    --             ped = `s_m_m_pilot_01` -- Set to nil to use markers.
    --         },
    --         spawn = {
    --             coords = vector3(-1652.0017, -3142.4431, 13.9512),
    --             offsetZ = 2.0,
    --             radius = 3.0,
    --             heading = 329.6698
    --         },
    --     },
    --     vehicles = {
    --         {
    --             label = "Luxor",
    --             model = `luxor`,
    --             price = 400,
    --             groups = nil -- {["police"] = 4}
    --         },
    --         {
    --             label = "Shamal",
    --             model = `shamal`,
    --             price = 300,
    --             groups = nil -- {["police"] = 4}
    --         },
    --         {
    --             label = "Cuban 800",
    --             model = `cuban800`,
    --             price = 200,
    --             groups = nil -- {["police"] = 4}
    --         },
    --         {
    --             label = "Duster",
    --             model = `duster`,
    --             price = 100,
    --             groups = nil -- {["police"] = 4}
    --         },
    --     },
    -- },
    -- {
    --     title = "Helicopter Rental",
    --     blip = { -- Set to nil for no blip.
    --         label = "Rental Company (Helicopter)",
    --         id = 225,
    --         scale = 0.85,
    --         color = 16,
    --         display = 4,
    --     },
    --     locations = {
    --         interact = {
    --             coords = vector3(-1137.1136, -2869.3716, 12.9460),
    --             heading = 57.4263,
    --             ped = `s_m_m_pilot_01` -- Set to nil to use markers.
    --         },
    --         spawn = {
    --             coords = vector3(-1145.8541, -2864.4927, 13.9460),
    --             offsetZ = 1.0,
    --             radius = 3.0,
    --             heading = 143.2370
    --         },
    --     },
    --     vehicles = {
    --         {
    --             label = "Swift",
    --             model = `swift`,
    --             price = 400,
    --             groups = nil -- {["police"] = 4}
    --         },
    --         {
    --             label = "Super Volito",
    --             model = `supervolito`,
    --             price = 300,
    --             groups = nil -- {["police"] = 4}
    --         },
    --         {
    --             label = "Maverick",
    --             model = `maverick`,
    --             price = 200,
    --             groups = nil -- {["police"] = 4}
    --         },
    --         {
    --             label = "Sea Sparrow",
    --             model = `seasparrow`,
    --             price = 100,
    --             groups = nil -- {["police"] = 4}
    --         },
    --     },
    -- },
}
