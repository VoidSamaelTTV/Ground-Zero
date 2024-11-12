local QBCore = exports['qb-core']:GetCoreObject()

--Events

QBCore.Functions.CreateCallback('qb-shops:server:SetShopInv', function(_,cb)
    local shopInvJson = LoadResourceFile(GetCurrentResourceName(), Config.ShopsInvJsonFile)
    cb(shopInvJson)
end)

RegisterNetEvent('qb-shops:server:SaveShopInv',function()
    if not Config.UseTruckerJob then return end
    local shopinv = {}
    for k, v in pairs(Config.Locations) do
        shopinv[k] = {}
        shopinv[k].products = {}
        for kk, vv in pairs(v.products) do
            shopinv[k].products[kk] = {}
            shopinv[k].products[kk].amount = vv['amount']
        end
    end
    SaveResourceFile(GetCurrentResourceName(), Config.ShopsInvJsonFile, json.encode(shopinv))
end)

RegisterNetEvent('qb-shops:server:UpdateShopItems', function(shop, itemData, amount)
    if not Config.UseTruckerJob then return end
    if not shop or not itemData or not amount then return end
    Config.Locations[shop].products[itemData.slot].amount -= amount
    if Config.Locations[shop].products[itemData.slot].amount < 0 then
        Config.Locations[shop].products[itemData.slot].amount = 0
    end
    TriggerEvent('qb-shops:server:SaveShopInv')
    TriggerClientEvent('qb-shops:client:SetShopItems', -1, shop, Config.Locations[shop].products)
end)

RegisterNetEvent('qb-shops:server:RestockShopItems', function(shop)
    if not shop or not Config.Locations[shop].products then return end
    local randAmount = math.random(10, 50)
    for k in pairs(Config.Locations[shop].products) do
        Config.Locations[shop].products[k].amount += randAmount
    end
    TriggerEvent('qb-shops:server:SaveShopInv')
    TriggerClientEvent('qb-shops:client:RestockShopItems', -1, shop, randAmount)
end)

RegisterNetEvent('qb-shops:server:SetShopList',function()
    local shoplist = {}
    local cnt = 0
    for k, v in pairs(Config.Locations) do
        cnt = cnt + 1
        shoplist[cnt] = {}
        shoplist[cnt].name = k
        shoplist[cnt].coords = v.delivery
    end
    TriggerClientEvent('qb-truckerjob:client:SetShopList',-1,shoplist)
end)