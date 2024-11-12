local QBCore = exports['qb-core']:GetCoreObject()
----------- / alcohol

for k, _ in pairs(Config.Consumables.alcohol) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        TriggerClientEvent('consumables:client:DrinkAlcohol', source, item.name)
    end)
end

----------- / Eat

for k, _ in pairs(Config.Consumables.psnqs) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
        TriggerClientEvent('consumables:client:EatPsnqs', source, item.name)
    end)
end

for k, _ in pairs(Config.Consumables.egochaser) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
        TriggerClientEvent('consumables:client:EatEgochaser', source, item.name)
    end)
end

for k, _ in pairs(Config.Consumables.meteorite) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
        TriggerClientEvent('consumables:client:EatMeteorite', source, item.name)
    end)
end

for k, _ in pairs(Config.Consumables.sandwiches) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
        TriggerClientEvent('consumables:client:EatSandwich', source, item.name)
    end)
end

for k, _ in pairs(Config.Consumables.canned_beans) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
        TriggerClientEvent('consumables:client:EatBeans', source, item.name)
    end)
end

for k, _ in pairs(Config.Consumables.canned_soup) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
        TriggerClientEvent('consumables:client:EatSoup', source, item.name)
    end)
end

    
for k, _ in pairs(Config.Consumables.canned_meat) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
        TriggerClientEvent('consumables:client:EatMeat', source, item.name)
    end)
end

for k, _ in pairs(Config.Consumables.canned_peas) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
        TriggerClientEvent('consumables:client:EatPeas', source, item.name)
    end)
end

for k, _ in pairs(Config.Consumables.canned_olives) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
        TriggerClientEvent('consumables:client:EatOlives', source, item.name)
    end)
end

for k, _ in pairs(Config.Consumables.cucumber) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
        TriggerClientEvent('consumables:client:EatCucumber', source, item.name)
    end)
end

for k, _ in pairs(Config.Consumables.eggplant) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
        TriggerClientEvent('consumables:client:EatEggplant', source, item.name)
    end)
end

for k, _ in pairs(Config.Consumables.onion) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
        TriggerClientEvent('consumables:client:EatOnion', source, item.name)
    end)
end

for k, _ in pairs(Config.Consumables.potato) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
        TriggerClientEvent('consumables:client:EatPotato', source, item.name)
    end)
end

for k, _ in pairs(Config.Consumables.strawberry) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
        TriggerClientEvent('consumables:client:EatStrawberry', source, item.name)
    end)
end

for k, _ in pairs(Config.Consumables.tomato) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
        TriggerClientEvent('consumables:client:EatTomato', source, item.name)
    end)
end

for k, _ in pairs(Config.Consumables.watermelon) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
        TriggerClientEvent('consumables:client:EatWatermelon', source, item.name)
    end)
end

----------- / Drink
for k, _ in pairs(Config.Consumables.water) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
        TriggerClientEvent('consumables:client:DrinkWater', source, item.name)
    end)
end

for k, _ in pairs(Config.Consumables.ecola) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
        TriggerClientEvent('consumables:client:DrinkEcola', source, item.name)
    end)
end

for k, _ in pairs(Config.Consumables.sprunk) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
        TriggerClientEvent('consumables:client:DrinkSprunk', source, item.name)
    end)
end

for k, _ in pairs(Config.Consumables.orangotang) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
        TriggerClientEvent('consumables:client:DrinkOrangotang', source, item.name)
    end)
end

for k, _ in pairs(Config.Consumables.coffee) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
        TriggerClientEvent('consumables:client:DrinkCoffee', source, item.name)
    end)
end

for k, _ in pairs(Config.Consumables.tea) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
        TriggerClientEvent('consumables:client:DrinkTea', source, item.name)
    end)
end

----------- / Custom
for k, _ in pairs(Config.Consumables.custom) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
        TriggerClientEvent('consumables:client:Custom', source, item.name)
    end)
end

local function createItem(name, type)
    QBCore.Functions.CreateUseableItem(name, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
        TriggerClientEvent('consumables:client:' .. type, source, item.name)
    end)
end
----------- / Drug

QBCore.Functions.CreateUseableItem('joint', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent('consumables:client:UseJoint', source)
end)

QBCore.Functions.CreateUseableItem('cokebaggy', function(source)
    TriggerClientEvent('consumables:client:Cokebaggy', source)
end)

QBCore.Functions.CreateUseableItem('crack_baggy', function(source)
    TriggerClientEvent('consumables:client:Crackbaggy', source)
end)

QBCore.Functions.CreateUseableItem('xtcbaggy', function(source)
    TriggerClientEvent('consumables:client:EcstasyBaggy', source)
end)

QBCore.Functions.CreateUseableItem('oxy', function(source)
    TriggerClientEvent('consumables:client:oxy', source)
end)

QBCore.Functions.CreateUseableItem('meth', function(source)
    TriggerClientEvent('consumables:client:meth', source)
end)

-- Register shovel use
-- QBCore.Functions.CreateUseableItem('shovel', function(source)
--     local Player = QBCore.Functions.GetPlayer(source)
--     TriggerClientEvent('qb-stash:client:UseShovelItem', source)
-- end)

-- -- Register crowbar use
-- QBCore.Functions.CreateUseableItem('crowbar', function(source)
--     local Player = QBCore.Functions.GetPlayer(source)
--     TriggerClientEvent('qb-stash:client:useCrowbar', source)
-- end)

-- -- Register metal detector use
-- QBCore.Functions.CreateUseableItem('metal_detector', function(source)
--     local Player = QBCore.Functions.GetPlayer(source)
--     TriggerClientEvent('qb-stash:client:useMetalDetector', source)
-- end)

-- QBCore.Functions.CreateUseableItem("stashbox_small", function(source)
--     TriggerEvent('zero_burystash:server:stash', source)
-- end)

-- QBCore.Functions.CreateUseableItem('stashbox_medium', function(stashItems)
--     TriggerClientEvent('stashsystem:client:useStashItem', source)
-- end)

----------- / Tools

-- QBCore.Functions.CreateUseableItem('armor', function(source)
--     TriggerClientEvent('consumables:client:UseArmor', source)
-- end)

-- QBCore.Functions.CreateUseableItem('heavyarmor', function(source)
--     TriggerClientEvent('consumables:client:UseHeavyArmor', source)
-- end)

-- black_plate_carrier
QBCore.Functions.CreateUseableItem('black_plate_carrier', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor1', source)
end)

-- charcoal_plate_carrier
QBCore.Functions.CreateUseableItem('charcoal_plate_carrier', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor2', source)
end)

-- ash_plate_carrier
QBCore.Functions.CreateUseableItem('ash_plate_carrier', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor3', source)
end)

-- ice_plate_carrier
QBCore.Functions.CreateUseableItem('ice_plate_carrier', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor4', source)
end)

-- navy_plate_carrier
QBCore.Functions.CreateUseableItem('navy_plate_carrier', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor5', source)
end)

-- chamois_plate_carrier
QBCore.Functions.CreateUseableItem('chamois_plate_carrier', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor6', source)
end)

-- sand_plate_carrier
QBCore.Functions.CreateUseableItem('sand_plate_carrier', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor7', source)
end)

-- tan_plate_carrier
QBCore.Functions.CreateUseableItem('tan_plate_carrier', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor8', source)
end)

-- salmon_plate_carrier
QBCore.Functions.CreateUseableItem('salmon_plate_carrier', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor9', source)
end)

-- moss_plate_carrier
QBCore.Functions.CreateUseableItem('moss_plate_carrier', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor10', source)
end)

-- peach_plate_carrier
QBCore.Functions.CreateUseableItem('peach_plate_carrier', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor11', source)
end)

-- brown_digital_plate_carrier
QBCore.Functions.CreateUseableItem('brown_digital_plate_carrier', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor12', source)
end)

-- fall_plate_carrier
QBCore.Functions.CreateUseableItem('fall_plate_carrier', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor13', source)
end)

-- white_camo_plate_carrier
QBCore.Functions.CreateUseableItem('white_camo_plate_carrier', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor14', source)
end)

-- peach_camo_plate_carrier
QBCore.Functions.CreateUseableItem('peach_camo_plate_carrier', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor15', source)
end)

-- red_camo_plate_carrier
QBCore.Functions.CreateUseableItem('red_camo_plate_carrier', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor16', source)
end)

-- green_plate_carrier
QBCore.Functions.CreateUseableItem('green_plate_carrier', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor17', source)
end)

-- orange_plate_carrier
QBCore.Functions.CreateUseableItem('orange_plate_carrier', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor18', source)
end)

-- purple_plate_carrier
QBCore.Functions.CreateUseableItem('purple_plate_carrier', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor19', source)
end)

-- pink_plate_carrier
QBCore.Functions.CreateUseableItem('pink_plate_carrier', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor20', source)
end)

-- black_ultralight_strike_vest
QBCore.Functions.CreateUseableItem('black_ultralight_strike_vest', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor21', source)
end)

-- beige_ultralight_strike_vest
QBCore.Functions.CreateUseableItem('beige_ultralight_strike_vest', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor22', source)
end)

-- dark_green_ultralight_strike_vest
QBCore.Functions.CreateUseableItem('dark_green_ultralight_strike_vest', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor23', source)
end)

-- sage_ultralight_strike_vest
QBCore.Functions.CreateUseableItem('sage_ultralight_strike_vest', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor24', source)
end)

-- forest_camo_ultralight_strike_vest
QBCore.Functions.CreateUseableItem('forest_camo_ultralight_strike_vest', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor25', source)
end)

-- beige__digital_ultralight_strike_vest
QBCore.Functions.CreateUseableItem('beige__digital_ultralight_strike_vest', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor26', source)
end)

-- contrast_camo_ultralight_strike_vest
QBCore.Functions.CreateUseableItem('contrast_camo_ultralight_strike_vest', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor27', source)
end)

-- blue_camo_ultralight_strike_vest
QBCore.Functions.CreateUseableItem('blue_camo_ultralight_strike_vest', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor28', source)
end)

-- desert_camo_ultralight_strike_vest
QBCore.Functions.CreateUseableItem('desert_camo_ultralight_strike_vest', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor29', source)
end)

-- splinter_camo_ultralight_strike_vest
QBCore.Functions.CreateUseableItem('splinter_camo_ultralight_strike_vest', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor30', source)
end)

-- violet_ultralight_strike_vest
QBCore.Functions.CreateUseableItem('violet_ultralight_strike_vest', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor31', source)
end)

-- green_ultralight_strike_vest
QBCore.Functions.CreateUseableItem('green_ultralight_strike_vest', function(source)
    TriggerClientEvent('consumables:client:UseSuperLightArmor32', source)
end)

-- black_mid_strike_vest
QBCore.Functions.CreateUseableItem('black_mid_strike_vest', function(source)
    TriggerClientEvent('consumables:client:UseMidArmor1', source)
end)

-- green_mid_strike_vest
QBCore.Functions.CreateUseableItem('green_mid_strike_vest', function(source)
    TriggerClientEvent('consumables:client:UseMidArmor2', source)
end)

-- orange_mid_strike_vest
QBCore.Functions.CreateUseableItem('orange_mid_strike_vest', function(source)
    TriggerClientEvent('consumables:client:UseMidArmor3', source)
end)

-- purple_mid_strike_vest
QBCore.Functions.CreateUseableItem('purple_mid_strike_vest', function(source)
    TriggerClientEvent('consumables:client:UseMidArmor4', source)
end)

-- pink_mid_strike_vest
QBCore.Functions.CreateUseableItem('pink_mid_strike_vest', function(source)
    TriggerClientEvent('consumables:client:UseMidArmor5', source)
end)

-- black_heavy_strike_vest
QBCore.Functions.CreateUseableItem('black_heavy_strike_vest', function(source)
    TriggerClientEvent('consumables:client:UseHeavyArmor1', source)
end)

-- green_heavy_strike_vest
QBCore.Functions.CreateUseableItem('green_heavy_strike_vest', function(source)
    TriggerClientEvent('consumables:client:UseHeavyArmor2', source)
end)

-- orange_heavy_strike_vest
QBCore.Functions.CreateUseableItem('orange_heavy_strike_vest', function(source)
    TriggerClientEvent('consumables:client:UseHeavyArmor3', source)
end)

-- purple_heavy_strike_vest
QBCore.Functions.CreateUseableItem('purple_heavy_strike_vest', function(source)
    TriggerClientEvent('consumables:client:UseHeavyArmor4', source)
end)

-- pink_heavy_strike_vest
QBCore.Functions.CreateUseableItem('pink_heavy_strike_vest', function(source)
    TriggerClientEvent('consumables:client:UseHeavyArmor5', source)
end)

-- black_extreme_strike_vest
QBCore.Functions.CreateUseableItem('black_extreme_strike_vest', function(source)
    TriggerClientEvent('consumables:client:UseExtremeArmor1', source)
end)

-- green_extreme_strike_vest
QBCore.Functions.CreateUseableItem('green_extreme_strike_vest', function(source)
    TriggerClientEvent('consumables:client:UseExtremeArmor2', source)
end)

-- orange_extreme_strike_vest
QBCore.Functions.CreateUseableItem('orange_extreme_strike_vest', function(source)
    TriggerClientEvent('consumables:client:UseExtremeArmor3', source)
end)

-- purple_extreme_strike_vest
QBCore.Functions.CreateUseableItem('purple_extreme_strike_vest', function(source)
    TriggerClientEvent('consumables:client:UseExtremeArmor4', source)
end)

-- pink_extreme_strike_vest
QBCore.Functions.CreateUseableItem('pink_extreme_strike_vest', function(source)
    TriggerClientEvent('consumables:client:UseExtremeArmor5', source)
end)

-- QBCore.Commands.Add('resetarmor', 'Resets Vest (Police Only)', {}, false, function(source)
--     local Player = QBCore.Functions.GetPlayer(source)
--     if Player.PlayerData.job.name == 'police' then
--         TriggerClientEvent('consumables:client:ResetArmor', source)
--     else
--         TriggerClientEvent('QBCore:Notify', source, 'For Police Officer Only', 'error')
--     end
-- end)

QBCore.Functions.CreateUseableItem('binoculars', function(source)
    TriggerClientEvent('binoculars:Toggle', source)
end)

QBCore.Functions.CreateUseableItem('parachute', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent('consumables:client:UseParachute', source)
end)

QBCore.Commands.Add('resetparachute', 'Resets Parachute', {}, false, function(source)
    TriggerClientEvent('consumables:client:ResetParachute', source)
end)

RegisterNetEvent('qb-smallpenis:server:AddParachute', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.AddItem('parachute', 1)
end)

----------- / Firework

for _, v in pairs(Config.Fireworks.items) do
    QBCore.Functions.CreateUseableItem(v, function(source, item)
        local src = source
        TriggerClientEvent('fireworks:client:UseFirework', src, item.name, 'proj_indep_firework')
    end)
end

----------- / Lockpicking

QBCore.Functions.CreateUseableItem('lockpick', function(source)
    TriggerClientEvent('lockpicks:UseLockpick', source, false)
end)

QBCore.Functions.CreateUseableItem('advancedlockpick', function(source)
    TriggerClientEvent('lockpicks:UseLockpick', source, true)
end)

-- Events for adding and removing specific items to fix some exploits

RegisterNetEvent('consumables:server:resetArmor', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.AddItem('heavyarmor', 1)
end)

-- black_plate_carrier
RegisterNetEvent('consumables:server:UseSuperLightArmor1', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'black_plate_carrier', 1, false, 'consumables:server:UseSuperLightArmor1') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['black_plate_carrier'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- charcoal_plate_carrier
RegisterNetEvent('consumables:server:UseSuperLightArmor2', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'charcoal_plate_carrier', 1, false, 'consumables:server:UseSuperLightArmor2') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['charcoal_plate_carrier'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- ash_plate_carrier
RegisterNetEvent('consumables:server:UseSuperLightArmor3', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'ash_plate_carrier', 1, false, 'consumables:server:UseSuperLightArmor3') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ash_plate_carrier'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- ice_plate_carrier
RegisterNetEvent('consumables:server:UseSuperLightArmor4', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'ice_plate_carrier', 1, false, 'consumables:server:UseSuperLightArmor4') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ice_plate_carrier'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- navy_plate_carrier
RegisterNetEvent('consumables:server:UseSuperLightArmor5', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'navy_plate_carrier', 1, false, 'consumables:server:UseSuperLightArmor5') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['navy_plate_carrier'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- chamois_plate_carrier
RegisterNetEvent('consumables:server:UseSuperLightArmor6', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'chamois_plate_carrier', 1, false, 'consumables:server:UseSuperLightArmor6') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['chamois_plate_carrier'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- sand_plate_carrier
RegisterNetEvent('consumables:server:UseSuperLightArmor7', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'sand_plate_carrier', 1, false, 'consumables:server:UseSuperLightArmor7') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['sand_plate_carrier'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- tan_plate_carrier
RegisterNetEvent('consumables:server:UseSuperLightArmor8', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'tan_plate_carrier', 1, false, 'consumables:server:UseSuperLightArmor8') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['tan_plate_carrier'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- salmon_plate_carrier
RegisterNetEvent('consumables:server:UseSuperLightArmor9', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'salmon_plate_carrier', 1, false, 'consumables:server:UseSuperLightArmor9') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['salmon_plate_carrier'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- moss_plate_carrier
RegisterNetEvent('consumables:server:UseSuperLightArmor10', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'moss_plate_carrier', 1, false, 'consumables:server:UseSuperLightArmor10') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['moss_plate_carrier'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- peach_plate_carrier
RegisterNetEvent('consumables:server:UseSuperLightArmor11', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'peach_plate_carrier', 1, false, 'consumables:server:UseSuperLightArmor11') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['peach_plate_carrier'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- brown_digital_plate_carrier
RegisterNetEvent('consumables:server:UseSuperLightArmor12', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'brown_digital_plate_carrier', 1, false, 'consumables:server:UseSuperLightArmor12') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['brown_digital_plate_carrier'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- fall_plate_carrier
RegisterNetEvent('consumables:server:UseSuperLightArmor13', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'fall_plate_carrier', 1, false, 'consumables:server:UseSuperLightArmor13') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['fall_plate_carrier'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- white_camo_plate_carrier
RegisterNetEvent('consumables:server:UseSuperLightArmor14', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'white_camo_plate_carrier', 1, false, 'consumables:server:UseSuperLightArmor14') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['white_camo_plate_carrier'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- peach_camo_plate_carrier
RegisterNetEvent('consumables:server:UseSuperLightArmor15', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'peach_camo_plate_carrier', 1, false, 'consumables:server:UseSuperLightArmor15') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['peach_camo_plate_carrier'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- red_camo_plate_carrier
RegisterNetEvent('consumables:server:UseSuperLightArmor16', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'red_camo_plate_carrier', 1, false, 'consumables:server:UseSuperLightArmor16') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['red_camo_plate_carrier'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- green_plate_carrier
RegisterNetEvent('consumables:server:UseSuperLightArmor17', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'green_plate_carrier', 1, false, 'consumables:server:UseSuperLightArmor17') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['green_plate_carrier'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- orange_plate_carrier
RegisterNetEvent('consumables:server:UseSuperLightArmor18', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'orange_plate_carrier', 1, false, 'consumables:server:UseSuperLightArmor18') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['orange_plate_carrier'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- purple_plate_carrier
RegisterNetEvent('consumables:server:UseSuperLightArmor19', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'purple_plate_carrier', 1, false, 'consumables:server:UseSuperLightArmor19') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['purple_plate_carrier'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- pink_plate_carrier
RegisterNetEvent('consumables:server:UseSuperLightArmor20', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'pink_plate_carrier', 1, false, 'consumables:server:UseSuperLightArmor20') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['pink_plate_carrier'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- black_ultralight_strike_vest
RegisterNetEvent('consumables:server:UseSuperLightArmor21', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'black_ultralight_strike_vest', 1, false, 'consumables:server:UseSuperLightArmor21') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['black_ultralight_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- beige_ultralight_strike_vest
RegisterNetEvent('consumables:server:UseSuperLightArmor22', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'beige_ultralight_strike_vest', 1, false, 'consumables:server:UseSuperLightArmor22') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['beige_ultralight_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- dark_green_ultralight_strike_vest
RegisterNetEvent('consumables:server:UseSuperLightArmor23', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'dark_green_ultralight_strike_vest', 1, false, 'consumables:server:UseSuperLightArmor23') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['dark_green_ultralight_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- sage_ultralight_strike_vest
RegisterNetEvent('consumables:server:UseSuperLightArmor24', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'sage_ultralight_strike_vest', 1, false, 'consumables:server:UseSuperLightArmor24') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['sage_ultralight_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- forest_camo_ultralight_strike_vest
RegisterNetEvent('consumables:server:UseSuperLightArmor25', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'forest_camo_ultralight_strike_vest', 1, false, 'consumables:server:UseSuperLightArmor25') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['forest_camo_ultralight_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- beige__digital_ultralight_strike_vest
RegisterNetEvent('consumables:server:UseSuperLightArmor26', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'beige__digital_ultralight_strike_vest', 1, false, 'consumables:server:UseSuperLightArmor26') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['beige__digital_ultralight_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- contrast_camo_ultralight_strike_vest
RegisterNetEvent('consumables:server:UseSuperLightArmor27', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'contrast_camo_ultralight_strike_vest', 1, false, 'consumables:server:UseSuperLightArmor27') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['contrast_camo_ultralight_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- blue_camo_ultralight_strike_vest
RegisterNetEvent('consumables:server:UseSuperLightArmor28', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'blue_camo_ultralight_strike_vest', 1, false, 'consumables:server:UseSuperLightArmor28') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['blue_camo_ultralight_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- desert_camo_ultralight_strike_vest
RegisterNetEvent('consumables:server:UseSuperLightArmor29', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'desert_camo_ultralight_strike_vest', 1, false, 'consumables:server:UseSuperLightArmor29') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['desert_camo_ultralight_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- splinter_camo_ultralight_strike_vest
RegisterNetEvent('consumables:server:UseSuperLightArmor30', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'splinter_camo_ultralight_strike_vest', 1, false, 'consumables:server:UseSuperLightArmor30') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['splinter_camo_ultralight_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- violet_ultralight_strike_vest
RegisterNetEvent('consumables:server:UseSuperLightArmor31', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'violet_ultralight_strike_vest', 1, false, 'consumables:server:UseSuperLightArmor31') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['violet_ultralight_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- green_ultralight_strike_vest
RegisterNetEvent('consumables:server:UseSuperLightArmor32', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'green_ultralight_strike_vest', 1, false, 'consumables:server:UseSuperLightArmor32') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['green_ultralight_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 20)
    SetPedArmour(GetPlayerPed(source), 20)
end)

-- black_light_strike_vest
RegisterNetEvent('consumables:server:UseLightArmor1', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'black_light_strike_vest', 1, false, 'consumables:server:UseLightArmor1') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['black_light_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 40)
    SetPedArmour(GetPlayerPed(source), 40)
end)

-- green_light_strike_vest
RegisterNetEvent('consumables:server:UseLightArmor2', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'green_light_strike_vest', 1, false, 'consumables:server:UseLightArmor2') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['green_light_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 40)
    SetPedArmour(GetPlayerPed(source), 40)
end)

-- orange_light_strike_vest
RegisterNetEvent('consumables:server:UseLightArmor3', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'orange_light_strike_vest', 1, false, 'consumables:server:UseLightArmor3') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['orange_light_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 40)
    SetPedArmour(GetPlayerPed(source), 40)
end)

-- purple_light_strike_vest
RegisterNetEvent('consumables:server:UseLightArmor4', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'purple_light_strike_vest', 1, false, 'consumables:server:UseLightArmor4') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['purple_light_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 40)
    SetPedArmour(GetPlayerPed(source), 40)
end)

-- pink_light_strike_vest
RegisterNetEvent('consumables:server:UseLightArmor5', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'pink_light_strike_vest', 1, false, 'consumables:server:UseLightArmor5') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['pink_light_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 40)
    SetPedArmour(GetPlayerPed(source), 40)
end)

-- black_mid_strike_vest
RegisterNetEvent('consumables:server:UseMidArmor1', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'black_mid_strike_vest', 1, false, 'consumables:server:UseMidArmor1') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['black_mid_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 60)
    SetPedArmour(GetPlayerPed(source), 60)
end)

-- green_mid_strike_vest
RegisterNetEvent('consumables:server:UseMidArmor2', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'green_mid_strike_vest', 1, false, 'consumables:server:UseMidArmor2') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['green_mid_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 60)
    SetPedArmour(GetPlayerPed(source), 60)
end)

-- orange_mid_strike_vest
RegisterNetEvent('consumables:server:UseMidArmor3', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'orange_mid_strike_vest', 1, false, 'consumables:server:UseMidArmor3') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['orange_mid_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 60)
    SetPedArmour(GetPlayerPed(source), 60)
end)

-- purple_mid_strike_vest
RegisterNetEvent('consumables:server:UseMidArmor4', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'purple_mid_strike_vest', 1, false, 'consumables:server:UseMidArmor4') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['purple_mid_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 60)
    SetPedArmour(GetPlayerPed(source), 60)
end)

-- pink_mid_strike_vest
RegisterNetEvent('consumables:server:UseMidArmor5', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'pink_mid_strike_vest', 1, false, 'consumables:server:UseMidArmor5') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['pink_mid_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 60)
    SetPedArmour(GetPlayerPed(source), 60)
end)

-- black_heavy_strike_vest
RegisterNetEvent('consumables:server:UseHeavyArmor1', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'black_heavy_strike_vest', 1, false, 'consumables:server:UseHeavyArmor1') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['black_heavy_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 80)
    SetPedArmour(GetPlayerPed(source), 80)
end)

-- green_heavy_strike_vest
RegisterNetEvent('consumables:server:UseHeavyArmor2', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'green_heavy_strike_vest', 1, false, 'consumables:server:UseHeavyArmor2') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['green_heavy_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 80)
    SetPedArmour(GetPlayerPed(source), 80)
end)

-- orange_heavy_strike_vest
RegisterNetEvent('consumables:server:UseHeavyArmor3', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'orange_heavy_strike_vest', 1, false, 'consumables:server:UseHeavyArmor3') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['orange_heavy_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 80)
    SetPedArmour(GetPlayerPed(source), 80)
end)

-- purple_heavy_strike_vest
RegisterNetEvent('consumables:server:UseHeavyArmor4', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'purple_heavy_strike_vest', 1, false, 'consumables:server:UseHeavyArmor4') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['purple_heavy_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 80)
    SetPedArmour(GetPlayerPed(source), 80)
end)

-- pink_heavy_strike_vest
RegisterNetEvent('consumables:server:UseHeavyArmor5', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'pink_heavy_strike_vest', 1, false, 'consumables:server:UseHeavyArmor5') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['pink_heavy_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 80)
    SetPedArmour(GetPlayerPed(source), 80)
end)

-- black_extreme_strike_vest
RegisterNetEvent('consumables:server:UseExtremeArmor1', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'black_extreme_strike_vest', 1, false, 'consumables:server:UseExtremeArmor1') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['black_extreme_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 100)
    SetPedArmour(GetPlayerPed(source), 100)
end)

-- green_extreme_strike_vest
RegisterNetEvent('consumables:server:UseExtremeArmor2', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'green_extreme_strike_vest', 1, false, 'consumables:server:UseExtremeArmor2') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['green_extreme_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 100)
    SetPedArmour(GetPlayerPed(source), 100)
end)

-- orange_extreme_strike_vest
RegisterNetEvent('consumables:server:UseExtremeArmor3', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'orange_extreme_strike_vest', 1, false, 'consumables:server:UseExtremeArmor3') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['orange_extreme_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 100)
    SetPedArmour(GetPlayerPed(source), 100)
end)

-- purple_extreme_strike_vest
RegisterNetEvent('consumables:server:UseExtremeArmor4', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'purple_extreme_strike_vest', 1, false, 'consumables:server:UseExtremeArmor4') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['purple_extreme_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 100)
    SetPedArmour(GetPlayerPed(source), 100)
end)

-- pink_extreme_strike_vest
RegisterNetEvent('consumables:server:UseExtremeArmor5', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(source, 'pink_extreme_strike_vest', 1, false, 'consumables:server:UseExtremeArmor5') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['pink_extreme_strike_vest'], 'remove')
    TriggerClientEvent('hospital:server:SetArmor', source, 100)
    SetPedArmour(GetPlayerPed(source), 100)
end)

-- RegisterNetEvent('consumables:server:useArmor', function()
--     local Player = QBCore.Functions.GetPlayer(source)
--     if not Player then return end
--     if not Player.Functions.RemoveItem('armor', 1) then return end
--     TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['armor'], 'remove')
--     TriggerClientEvent('hospital:server:SetArmor', source, 75)
--     SetPedArmour(GetPlayerPed(source), 75)
-- end)

RegisterNetEvent('consumables:server:useMeth', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem('meth', 1)
end)

RegisterNetEvent('consumables:server:useOxy', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem('oxy', 1)
end)

RegisterNetEvent('consumables:server:useXTCBaggy', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem('xtcbaggy', 1)
end)

RegisterNetEvent('consumables:server:useCrackBaggy', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem('crack_baggy', 1)
end)

RegisterNetEvent('consumables:server:useCokeBaggy', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem('cokebaggy', 1)
end)

RegisterNetEvent('consumables:server:drinkAlcohol', function(item)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    local foundItem = nil

    for k in pairs(Config.Consumables.alcohol) do
        if k == item then
            foundItem = k
            break
        end
    end

    if not foundItem then return end
    Player.Functions.RemoveItem(foundItem, 1)
end)

RegisterNetEvent('consumables:server:UseFirework', function(item)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    local foundItem = nil

    for i = 1, #Config.Fireworks.items do
        if Config.Fireworks.items[i] == item then
            foundItem = Config.Fireworks.items[i]
            break
        end
    end

    if not foundItem then return end
    Player.Functions.RemoveItem(foundItem, 1)
end)

RegisterNetEvent('consumables:server:addThirst', function(amount)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.SetMetaData('thirst', amount)
    TriggerClientEvent('hud:client:UpdateNeeds', source, Player.PlayerData.metadata.hunger, amount)
end)

RegisterNetEvent('consumables:server:addHunger', function(amount)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.SetMetaData('hunger', amount)
    TriggerClientEvent('hud:client:UpdateNeeds', source, amount, Player.PlayerData.metadata.thirst)
end)

QBCore.Functions.CreateCallback('consumables:itemdata', function(_, cb, itemName)
    cb(Config.Consumables.custom[itemName])
end)

---Checks if item already exists in the table. If not, it creates it.
---@param drinkName string name of item
---@param replenish number amount it replenishes
---@return boolean, string
local function addDrink(drinkName, replenish)
    if Config.Consumables.drink[drinkName] ~= nil then
        return false, 'already added'
    else
        Config.Consumables.drink[drinkName] = replenish
        createItem(drinkName, 'Drink')
        return true, 'success'
    end
end

exports('AddDrink', addDrink)

---Checks if item already exists in the table. If not, it creates it.
---@param foodName string name of item
---@param replenish number amount it replenishes
---@return boolean, string
local function addFood(foodName, replenish)
    if Config.Consumables.eat[foodName] ~= nil then
        return false, 'already added'
    else
        Config.Consumables.eat[foodName] = replenish
        createItem(foodName, 'Eat')
        return true, 'success'
    end
end

exports('AddFood', addFood)

---Checks if item already exists in the table. If not, it creates it.
---@param alcoholName string name of item
---@param replenish number amount it replenishes
---@return boolean, string
local function addAlcohol(alcoholName, replenish)
    if Config.Consumables.alcohol[alcoholName] ~= nil then
        return false, 'already added'
    else
        Config.Consumables.alcohol[alcoholName] = replenish
        createItem(alcoholName, 'DrinkAlcohol')
        return true, 'success'
    end
end

exports('AddAlcohol', addAlcohol)

---Checks if item already exists in the table. If not, it creates it.
---@param itemName string name of item
---@param data number amount it replenishes
---@return boolean, string
local function addCustom(itemName, data)
    if 'consumables:itemdata' ~= nil then
        return false, 'already added'
    else
        Config.Consumables.custom[itemName] = data
        createItem(itemName, 'Custom')
        return true, 'success'
    end
end

exports('AddCustom', addCustom)
