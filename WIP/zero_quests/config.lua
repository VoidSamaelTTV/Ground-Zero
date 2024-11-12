Config = {}

Config.QuestPeds = {
    {
        coords = vector3(165.09, 719.2, 207.68), -- Quest giver location
        heading = 180.0,
        model = 'a_m_m_business_01',
        quests = {
            {
                name = "Gather Supplies", 
                id = 1, 
                type = "gather", 
                item = "water", 
                amount = 5,
                propLocation = vector3(107.97, -199.43, 54.77), -- Prop spawn location
                propModel = 'prop_water_bottle' -- Replace with your desired prop model
            },
            { name = "Survive Zombie Wave", id = 2, type = "survive", waves = 3 },
            { name = "Secure the Area", id = 3, type = "secure", area = vector3(120.0, -250.0, 20.0) },
        }
    }
}
