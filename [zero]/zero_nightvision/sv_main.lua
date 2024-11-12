local QBCore = exports[Config.CoreName]:GetCoreObject()

-- black_quad_helmet
QBCore.Functions.CreateUseableItem(Config.NVItem, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("black_quad_helmet") then
        TriggerClientEvent('nightvision:toggleNV', source)
    end
end)

-- moss_quad_helmet
QBCore.Functions.CreateUseableItem(Config.NVItem2, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("moss_quad_helmet") then
        TriggerClientEvent('nightvision:toggleNV2', source)
    end
end)

-- brown_quad_helmet
QBCore.Functions.CreateUseableItem(Config.NVItem3, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("brown_quad_helmet") then
        TriggerClientEvent('nightvision:toggleNV3', source)
    end
end)

-- white_quad_helmet
QBCore.Functions.CreateUseableItem(Config.NVItem4, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("white_quad_helmet") then
        TriggerClientEvent('nightvision:toggleNV4', source)
    end
end)

-- leopard_quad_helmet
QBCore.Functions.CreateUseableItem(Config.NVItem5, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("leopard_quad_helmet") then
        TriggerClientEvent('nightvision:toggleNV5', source)
    end
end)

-- brown_digital_quad_helmet
QBCore.Functions.CreateUseableItem(Config.NVItem6, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("brown_digital_quad_helmet") then
        TriggerClientEvent('nightvision:toggleNV6', source)
    end
end)

-- tiger_quad_helmet
QBCore.Functions.CreateUseableItem(Config.NVItem7, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("tiger_quad_helmet") then
        TriggerClientEvent('nightvision:toggleNV7', source)
    end
end)

-- aqua_camo_quad_helmet
QBCore.Functions.CreateUseableItem(Config.NVItem8, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("aqua_camo_quad_helmet") then
        TriggerClientEvent('nightvision:toggleNV8', source)
    end
end)

-- splinter_quad_helmet
QBCore.Functions.CreateUseableItem(Config.NVItem9, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("splinter_quad_helmet") then
        TriggerClientEvent('nightvision:toggleNV9', source)
    end
end)

-- brushstroke_quad_helmet
QBCore.Functions.CreateUseableItem(Config.NVItem10, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("brushstroke_quad_helmet") then
        TriggerClientEvent('nightvision:toggleNV10', source)
    end
end)

-- black_red_quad_helmet
QBCore.Functions.CreateUseableItem(Config.NVItem11, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("black_red_quad_helmet") then
        TriggerClientEvent('nightvision:toggleNV11', source)
    end
end)

-- zebra_quad_helmet
QBCore.Functions.CreateUseableItem(Config.NVItem12, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("zebra_quad_helmet") then
        TriggerClientEvent('nightvision:toggleNV12', source)
    end
end)

-- pink_camo_quad_helmet
QBCore.Functions.CreateUseableItem(Config.NVItem13, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("pink_camo_quad_helmet") then
        TriggerClientEvent('nightvision:toggleNV13', source)
    end
end)

-- desert_quad_helmet
QBCore.Functions.CreateUseableItem(Config.NVItem14, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("desert_quad_helmet") then
        TriggerClientEvent('nightvision:toggleNV14', source)
    end
end)

-- black_dual_helmet
QBCore.Functions.CreateUseableItem(Config.NVItem15, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("black_dual_helmet") then
        TriggerClientEvent('nightvision:toggleNV15', source)
    end
end)

-- moss_dual_helmet
QBCore.Functions.CreateUseableItem(Config.NVItem16, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("moss_dual_helmet") then
        TriggerClientEvent('nightvision:toggleNV16', source)
    end
end)

-- brown_dual_helmet
QBCore.Functions.CreateUseableItem(Config.NVItem17, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("brown_dual_helmet") then
        TriggerClientEvent('nightvision:toggleNV17', source)
    end
end)

-- white_dual_helmet
QBCore.Functions.CreateUseableItem(Config.NVItem18, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("white_dual_helmet") then
        TriggerClientEvent('nightvision:toggleNV18', source)
    end
end)

-- leopard_dual_helmet
QBCore.Functions.CreateUseableItem(Config.NVItem19, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("leopard_dual_helmet") then
        TriggerClientEvent('nightvision:toggleNV19', source)
    end
end)

-- brown_digital_dual_helmet
QBCore.Functions.CreateUseableItem(Config.NVItem20, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("brown_digital_dual_helmet") then
        TriggerClientEvent('nightvision:toggleNV20', source)
    end
end)

-- tiger_dual_helmet
QBCore.Functions.CreateUseableItem(Config.NVItem21, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("tiger_dual_helmet") then
        TriggerClientEvent('nightvision:toggleNV21', source)
    end
end)

-- aqua_camo_dual_helmet
QBCore.Functions.CreateUseableItem(Config.NVItem22, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("aqua_camo_dual_helmet") then
        TriggerClientEvent('nightvision:toggleNV22', source)
    end
end)

-- splinter_dual_helmet
QBCore.Functions.CreateUseableItem(Config.NVItem23, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("splinter_dual_helmet") then
        TriggerClientEvent('nightvision:toggleNV23', source)
    end
end)

-- brushstroke_dual_helmet
QBCore.Functions.CreateUseableItem(Config.NVItem24, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("brushstroke_dual_helmet") then
        TriggerClientEvent('nightvision:toggleNV24', source)
    end
end)

-- black_red_dual_helmet
QBCore.Functions.CreateUseableItem(Config.NVItem25, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("black_red_dual_helmet") then
        TriggerClientEvent('nightvision:toggleNV25', source)
    end
end)

-- zebra_dual_helmet
QBCore.Functions.CreateUseableItem(Config.NVItem26, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("zebra_dual_helmet") then
        TriggerClientEvent('nightvision:toggleNV26', source)
    end
end)

-- pink_camo_dual_helmet
QBCore.Functions.CreateUseableItem(Config.NVItem27, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("pink_camo_dual_helmet") then
        TriggerClientEvent('nightvision:toggleNV27', source)
    end
end)

-- desert_dual_helmet
QBCore.Functions.CreateUseableItem(Config.NVItem28, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("desert_dual_helmet") then
        TriggerClientEvent('nightvision:toggleNV28', source)
    end
end)