local QBCore = exports["qb-core"]:GetCoreObject()
local PlayerData = QBCore.Functions.GetPlayerData()
local inChips = false
local currentShop, currentData
local pedSpawned = false
local listen = false
local ShopPed = {}
local NewZones = {}
-- Functions
local function createBlips()
    if pedSpawned then return end

    for store in pairs(Config.Locations) do
        if Config.Locations[store]["showblip"] then
            local StoreBlip = AddBlipForCoord(Config.Locations[store]["coords"]["x"], Config.Locations[store]["coords"]["y"], Config.Locations[store]["coords"]["z"])
            SetBlipSprite(StoreBlip, Config.Locations[store]["blipsprite"])
            SetBlipScale(StoreBlip, Config.Locations[store]["blipscale"])
            SetBlipDisplay(StoreBlip, 4)
            SetBlipColour(StoreBlip, Config.Locations[store]["blipcolor"])
            SetBlipAsShortRange(StoreBlip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentSubstringPlayerName(Config.Locations[store]["label"])
            EndTextCommandSetBlipName(StoreBlip)
        end
    end
end

local function tableCheck(val, list)
    for _, v in ipairs(list) do
        if v == val then return true end
    end
    return false
end

local function hasLicense(licenses, playerLicenses)
    for _, license in ipairs(licenses) do
        if playerLicenses[license] then return true end
    end
    return false
end

local function openShop(shop, data)
    QBCore.Functions.TriggerCallback('qb-shops:server:SetShopInv', function(shopInvJson)
        local function SetupItems()
            local products = Config.Locations[shop].products
            local items = {}
            local notifiedLicenses = {}

            shopInvJson = json.decode(shopInvJson)

            if Config.UseTruckerJob and shopInvJson[shop] then
                for k, v in pairs(shopInvJson[shop].products) do
                    products[k].amount = v.amount
                end
            elseif not shopInvJson[shop] then
                print('No shop inventory found -- defaults enabled')
            end

            for i = 1, #products do
                local curProduct = products[i]
                local addProduct = true

                if curProduct.requiredJob and not tableCheck(PlayerData.job.name, curProduct.requiredJob) then
                    addProduct = false
                end

                if curProduct.requiredGang and not tableCheck(PlayerData.gang.name, curProduct.requiredGang) then
                    addProduct = false
                end

                if curProduct.requiredLicense and not hasLicense(curProduct.requiredLicense, PlayerData.metadata["licences"]) then
                    addProduct = false
                    for _, license in ipairs(curProduct.requiredLicense) do
                        if not PlayerData.metadata["licences"][license] and not notifiedLicenses[license] then
                            QBCore.Functions.Notify(string.format(Lang:t("error.missing_license"), license), "error")
                            notifiedLicenses[license] = true
                        end
                    end
                end

                if addProduct then
                    curProduct.slot = #items + 1
                    items[#items + 1] = curProduct
                end
            end

            return items
        end

        TriggerServerEvent('qb-shops:server:SetShopList')
        local ShopItems = { items = {}, label = data["label"] }

        ShopItems.items = SetupItems()

        TriggerServerEvent("inventory:server:OpenInventory", "shop", "Itemshop_" .. shop, ShopItems)
    end)
end

local function listenForControl()
    if listen then return end
    CreateThread(function()
        listen = true
        while listen do
            if IsControlJustPressed(0, 38) then -- E
                TriggerServerEvent('qb-shops:server:SetShopList')
                if inChips then
                    exports["qb-core"]:KeyPressed()
                    TriggerServerEvent("qb-shops:server:sellChips")
                else
                    exports["qb-core"]:KeyPressed()
                    openShop(currentShop, currentData)
                end
                listen = false
                break
            end
            Wait(0)
        end
    end)
end

local function createPeds()
    if pedSpawned then return end

    for k, v in pairs(Config.Locations) do
        local current = type(v["ped"]) == "number" and v["ped"] or joaat(v["ped"])

        RequestModel(current)
        while not HasModelLoaded(current) do
            Wait(0)
        end

        ShopPed[k] = CreatePed(0, current, v["coords"].x, v["coords"].y, v["coords"].z-1, v["coords"].w, false, false)
        TaskStartScenarioInPlace(ShopPed[k], v["scenario"], 0, true)
        FreezeEntityPosition(ShopPed[k], true)
        SetEntityInvincible(ShopPed[k], true)
        SetBlockingOfNonTemporaryEvents(ShopPed[k], true)

        if Config.UseTarget then
            exports['qb-target']:AddTargetEntity(ShopPed[k], {
                options = {
                    {
                        label = v["targetLabel"],
                        icon = v["targetIcon"],
                        item = v["item"],
                        action = function()
                            openShop(k, Config.Locations[k])
                        end,
                        job = v.requiredJob,
                        gang = v.requiredGang
                    }
                },
                distance = 5.5
            })
        end
    end
    

    local current = type(Config.melee.ped) == 'number' and Config.melee.ped or joaat(Config.melee.ped)

    RequestModel(current)
    while not HasModelLoaded(current) do
        Wait(0)
    end

    ShopPed["melee"] = CreatePed(0, current, Config.melee.coords.x, Config.melee.coords.y, Config.melee.coords.z-1, Config.melee.coords.w, false, false)
    FreezeEntityPosition(ShopPed["melee"], true)
    SetEntityInvincible(ShopPed["melee"], true)
    SetBlockingOfNonTemporaryEvents(ShopPed["melee"], true)

    if Config.UseTarget then
        exports['qb-target']:AddTargetEntity(ShopPed["melee"], {
            options = {
                {
                    label = 'Melee Weapons',
                    icon = 'fa-solid fa-fan',
                    action = function()
                        openShop('melee', Config.Locations['melee'])
                    end
                },
                {
                    label = 'Handguns',
                    icon = 'fa-solid fa-gun',
                    action = function()
                        openShop('handguns', Config.Locations['handguns'])
                    end
                },
                {
                    label = 'Submachine guns',
                    icon = 'fa-solid fa-gun',
                    action = function()
                        openShop('smgs', Config.Locations['smgs'])
                    end
                },
                {
                    label = 'Shotguns',
                    icon = 'fa-solid fa-gun',
                    action = function()
                        openShop('shotguns', Config.Locations['shotguns'])
                    end
                },
                {
                    label = 'Assault Rifles',
                    icon = 'fa-solid fa-gun',
                    action = function()
                        openShop('assaultrifles', Config.Locations['assaultrifles'])
                    end
                },
            },
            distance = 8.0
        })
    end

    local current = type(Config.consumables.ped) == 'number' and Config.consumables.ped or joaat(Config.consumables.ped)

    RequestModel(current)
    while not HasModelLoaded(current) do
        Wait(0)
    end

    ShopPed["consumables"] = CreatePed(0, current, Config.consumables.coords.x, Config.consumables.coords.y, Config.consumables.coords.z-1, Config.consumables.coords.w, false, false)
    FreezeEntityPosition(ShopPed["consumables"], true)
    SetEntityInvincible(ShopPed["consumables"], true)
    SetBlockingOfNonTemporaryEvents(ShopPed["consumables"], true)

    if Config.UseTarget then
        exports['qb-target']:AddTargetEntity(ShopPed["consumables"], {
            options = {
                {
                    label = 'Food',
                    icon = 'fa-solid fa-burger',
                    action = function()
                        openShop('food', Config.Locations['food'])
                    end
                },
                {
                    label = 'Canned Goods',
                    icon = 'fa-solid fa-bowl-food',
                    action = function()
                        openShop('canned_goods', Config.Locations['canned_goods'])
                    end
                },
                {
                    label = 'Fruit',
                    icon = 'fa-solid fa-apple-whole',
                    action = function()
                        openShop('fruit', Config.Locations['fruit'])
                    end
                },
                {
                    label = 'Seeds',
                    icon = 'fa-solid fa-seedling',
                    action = function()
                        openShop('seeds', Config.Locations['seeds'])
                    end
                },
                {
                    label = 'Beverages',
                    icon = 'fa-solid fa-bottle-water',
                    action = function()
                        openShop('drinks', Config.Locations['drinks'])
                    end
                },
            },
            distance = 8.0
        })
    end

    local current = type(Config.attachments.ped) == 'number' and Config.attachments.ped or joaat(Config.attachments.ped)

    RequestModel(current)
    while not HasModelLoaded(current) do
        Wait(0)
    end

    ShopPed["attachments"] = CreatePed(0, current, Config.attachments.coords.x, Config.attachments.coords.y, Config.attachments.coords.z-1, Config.attachments.coords.w, false, false)
    FreezeEntityPosition(ShopPed["attachments"], true)
    SetEntityInvincible(ShopPed["attachments"], true)
    SetBlockingOfNonTemporaryEvents(ShopPed["attachments"], true)

    if Config.UseTarget then
        exports['qb-target']:AddTargetEntity(ShopPed["attachments"], {
            options = {
                {
                    label = 'Ammo',
                    icon = 'fa-solid fa-rotate-right',
                    action = function()
                        openShop('ammo', Config.Locations['ammo'])
                    end
                },
                {
                    label = 'Attachments',
                    icon = 'fa-brands fa-artstation',
                    action = function()
                        openShop('attachments', Config.Locations['attachments'])
                    end
                },
                {
                    label = 'Weapon Skins',
                    icon = 'fa-brands fa-artstation',
                    action = function()
                        openShop('skins', Config.Locations['skins'])
                    end
                },
                {
                    label = 'Weapon Tints',
                    icon = 'fa-brands fa-artstation',
                    action = function()
                        openShop('tints', Config.Locations['tints'])
                    end
                },
            },
            distance = 8.0
        })
    end

local current = type(Config.basebuilding.ped) == 'number' and Config.basebuilding.ped or joaat(Config.basebuilding.ped)

RequestModel(current)
while not HasModelLoaded(current) do
    Wait(0)
end

ShopPed["basebuilding"] = CreatePed(0, current, Config.basebuilding.coords.x, Config.basebuilding.coords.y, Config.basebuilding.coords.z-1, Config.basebuilding.coords.w, false, false)
FreezeEntityPosition(ShopPed["basebuilding"], true)
SetEntityInvincible(ShopPed["basebuilding"], true)
SetBlockingOfNonTemporaryEvents(ShopPed["basebuilding"], true)

if Config.UseTarget then
    exports['qb-target']:AddTargetEntity(ShopPed["basebuilding"], {
        options = {
            {
                label = 'Base Materials',
                icon = 'fa-solid fa-rotate-right',
                action = function()
                    openShop('basematerials', Config.Locations['basematerials'])
                end
            },
            {
                label = 'Base Furniture',
                icon = 'fa-brands fa-artstation',
                action = function()
                    openShop('basefurniture', Config.Locations['basefurniture'])
                end
            },
            {
                label = 'Base Building',
                icon = 'fa-brands fa-artstation',
                action = function()
                    openShop('basebuilding', Config.Locations['basebuilding'])
                end
            },
            {
                label = 'Base Defense',
                icon = 'fa-brands fa-artstation',
                action = function()
                    openShop('basedefense', Config.Locations['basedefense'])
                end
            },
        },
        distance = 8.0
    })
end

local current = type(Config.marketplace.ped) == 'number' and Config.marketplace.ped or joaat(Config.marketplace.ped)

RequestModel(current)
while not HasModelLoaded(current) do
    Wait(0)
end

ShopPed["marketplace"] = CreatePed(0, current, Config.marketplace.coords.x, Config.marketplace.coords.y, Config.marketplace.coords.z-1, Config.marketplace.coords.w, false, false)
FreezeEntityPosition(ShopPed["marketplace"], true)
SetEntityInvincible(ShopPed["marketplace"], true)
SetBlockingOfNonTemporaryEvents(ShopPed["marketplace"], true)

if Config.UseTarget then
    exports['qb-target']:AddTargetEntity(ShopPed["marketplace"], {
        options = {
            {
                label = 'Marketplace',
                icon = 'fa-solid fa-shop',
                action = function()
                    TriggerEvent('okokMarketplace:open')
                end
            },
        },
        distance = 8.0
    })
end

local current = type(Config.surgeon.ped) == 'number' and Config.surgeon.ped or joaat(Config.surgeon.ped)

RequestModel(current)
while not HasModelLoaded(current) do
    Wait(0)
end

ShopPed["surgeon"] = CreatePed(0, current, Config.surgeon.coords.x, Config.surgeon.coords.y, Config.surgeon.coords.z-1, Config.surgeon.coords.w, false, false)
FreezeEntityPosition(ShopPed["surgeon"], true)
SetEntityInvincible(ShopPed["surgeon"], true)
SetBlockingOfNonTemporaryEvents(ShopPed["surgeon"], true)

if Config.UseTarget then
    exports['qb-target']:AddTargetEntity(ShopPed["surgeon"], {
        options = {
            {
                label = 'Surgeon',
                icon = 'fas fa-user-md',
                action = function()
                    TriggerEvent('qb-clothing:client:openSurgeon')
                end
            },
            {
                label = 'Saved Appearance',
                icon = 'fas fa-user-md',
                action = function()
                    TriggerEvent('qb-clothing:client:openOutfitMenu')
                end
            }
        },
        distance = 8.0
    })
end

local current = type(Config.hats.ped) == 'number' and Config.hats.ped or joaat(Config.hats.ped)

RequestModel(current)
while not HasModelLoaded(current) do
    Wait(0)
end

ShopPed["hats"] = CreatePed(0, current, Config.hats.coords.x, Config.hats.coords.y, Config.hats.coords.z-1, Config.hats.coords.w, false, false)
FreezeEntityPosition(ShopPed["hats"], true)
SetEntityInvincible(ShopPed["hats"], true)
SetBlockingOfNonTemporaryEvents(ShopPed["hats"], true)

if Config.UseTarget then
    exports['qb-target']:AddTargetEntity(ShopPed["hats"], {
        options = {
            {
                label = 'Hats',
                icon = 'fa-solid fa-hat-cowboy-side',
                action = function()
                    openShop('hats', Config.Locations['hats'])
                end
            },
            {
                label = 'Masks',
                icon = 'fa-solid fa-mask',
                action = function()
                    openShop('masks', Config.Locations['masks'])
                end
            },
            {
                label = 'Tops',
                icon = 'fa-solid fa-shirt',
                action = function()
                    openShop('tops', Config.Locations['tops'])
                end
            },
            {
                label = 'Bottoms',
                icon = 'fa-solid fa-down-long',
                action = function()
                    openShop('bottoms', Config.Locations['bottoms'])
                end
            },
            {
                label = 'Footwear',
                icon = 'fa-solid fa-socks',
                action = function()
                    openShop('footwear', Config.Locations['footwear'])
                end
            },
        },
        distance = 8.0
    })
end

local current = type(Config.blackmarket.ped) == 'number' and Config.blackmarket.ped or joaat(Config.blackmarket.ped)

RequestModel(current)
while not HasModelLoaded(current) do
    Wait(0)
end

ShopPed["blackmarket"] = CreatePed(0, current, Config.blackmarket.coords.x, Config.blackmarket.coords.y, Config.blackmarket.coords.z-1, Config.blackmarket.coords.w, false, false)
FreezeEntityPosition(ShopPed["blackmarket"], true)
SetEntityInvincible(ShopPed["blackmarket"], true)
SetBlockingOfNonTemporaryEvents(ShopPed["blackmarket"], true)

if Config.UseTarget then
    exports['qb-target']:AddTargetEntity(ShopPed["blackmarket"], {
        options = {
            {
                label = 'Special Weapons',
                icon = 'fa-solid fa-person-rifle',
                action = function()
                    openShop('blackmarket', Config.Locations['blackmarket'])
                end
            },
            {
                label = 'Drugs',
                icon = 'fa-solid fa-cannabis',
                action = function()
                    openShop('drugs', Config.Locations['drugs'])
                end
            },
            {
                label = 'Armor',
                icon = 'fa-solid fa-shield-halved',
                action = function()
                    openShop('armor', Config.Locations['armor'])
                end
            },
            {
                label = 'Throwables',
                icon = 'fa-solid fa-bomb',
                action = function()
                    openShop('throwables', Config.Locations['throwables'])
                end
            },
            {
                label = 'Equipment',
                icon = 'fa-solid fa-mask-ventilator',
                action = function()
                    openShop('equipment', Config.Locations['equipment'])
                end
            },
            {
                label = 'Containers',
                icon = 'fa-solid fa-suitcase',
                action = function()
                    openShop('containers', Config.Locations['containers'])
                end
            },
            {
                label = 'Sell Items',
                icon = 'fa-solid fa-comments-dollar',
                action = function()
                    TriggerEvent('qb-blackmarket:client:openMenu', src)
                end
            },
        },
        distance = 4.0
    })
end

local current = type(Config.vehicle_cosmetics.ped) == 'number' and Config.vehicle_cosmetics.ped or joaat(Config.vehicle_cosmetics.ped)

RequestModel(current)
while not HasModelLoaded(current) do
    Wait(0)
end

ShopPed["vehicle_cosmetics"] = CreatePed(0, current, Config.vehicle_cosmetics.coords.x, Config.vehicle_cosmetics.coords.y, Config.vehicle_cosmetics.coords.z-1, Config.vehicle_cosmetics.coords.w, false, false)
FreezeEntityPosition(ShopPed["vehicle_cosmetics"], true)
SetEntityInvincible(ShopPed["vehicle_cosmetics"], true)
SetBlockingOfNonTemporaryEvents(ShopPed["vehicle_cosmetics"], true)

if Config.UseTarget then
    exports['qb-target']:AddTargetEntity(ShopPed["vehicle_cosmetics"], {
        options = {
            {
                label = 'Vehicle Cosmetics',
                icon = 'fa-solid fa-spray-can',
                action = function()
                    openShop('vehicle_cosmetics', Config.Locations['vehicle_cosmetics'])
                end
            },
            {
                label = 'Vehicle Performance',
                icon = 'fa-solid fa-chart-simple',
                action = function()
                    openShop('vehicle_performance', Config.Locations['vehicle_performance'])
                end
            },
            {
                label = 'Vehicle Repair',
                icon = 'fa-solid fa-shield-halved',
                action = function()
                    openShop('vehicle_repair', Config.Locations['vehicle_repair'])
                end
            }
        },
        distance = 4.0
    })
end

pedSpawned = true
end

local function deletePeds()
    if not pedSpawned then return end

    for _, v in pairs(ShopPed) do
        DeletePed(v)
    end
    pedSpawned = false
end

-- Events
RegisterNetEvent("qb-shops:client:UpdateShop", function(shop, itemData, amount)
    TriggerServerEvent("qb-shops:server:UpdateShopItems", shop, itemData, amount)
end)

RegisterNetEvent("qb-shops:client:SetShopItems", function(shop, shopProducts)
    Config.Locations[shop]["products"] = shopProducts
end)

RegisterNetEvent("qb-shops:client:RestockShopItems", function(shop, amount)
    if not Config.Locations[shop].products then return end
    for k in pairs(Config.Locations[shop].products) do
        Config.Locations[shop].products[k].amount = Config.Locations[shop]["products"][k].amount + amount
    end
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
    createBlips()
    createPeds()
    TriggerServerEvent('qb-shops:server:SetShopList')
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    deletePeds()
    PlayerData = nil
end)

RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
    PlayerData = val
end)

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end
    createBlips()
    createPeds()
    TriggerServerEvent('qb-shops:server:SetShopList')
end)

AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end

    deletePeds()
end)

-- Threads
if not Config.UseTarget then
    CreateThread(function()
        for shop in pairs(Config.Locations) do
            NewZones[#NewZones+1] = CircleZone:Create(vector3(Config.Locations[shop]["coords"]["x"], Config.Locations[shop]["coords"]["y"], Config.Locations[shop]["coords"]["z"]), Config.Locations[shop]["radius"], {
                useZ = true,
                debugPoly = false,
                name = shop,
            })
        end

        local combo = ComboZone:Create(NewZones, {name = "RandomZOneName", debugPoly = false})
        combo:onPlayerInOut(function(isPointInside, _, zone)
            if isPointInside then
                currentShop = zone.name
                TriggerServerEvent('qb-shops:server:SetShopList')
                currentData = Config.Locations[zone.name]
                exports["qb-core"]:DrawText(Lang:t("info.open_shop"))
                listenForControl()
            else
                exports["qb-core"]:HideText()
                listen = false
            end
        end)
    end)
end

CreateThread(function()
    for k1, v in pairs(Config.Locations) do
        if v.requiredJob and next(v.requiredJob) then
            for k in pairs(v.requiredJob) do
                Config.Locations[k1].requiredJob[k] = 0
            end
        end
        if v.requiredGang and next(v.requiredGang) then
            for k in pairs(v.requiredGang) do
                Config.Locations[k1].requiredGang[k] = 0
            end
        end
    end
end)
