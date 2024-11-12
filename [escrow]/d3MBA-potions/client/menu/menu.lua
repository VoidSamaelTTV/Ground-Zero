
-- Author: d3MBA#0001
-- Discord server: discord.gg/d3MBA
-- Showcase: https://youtu.be/Ge7jQvDJ4Jc

local Framework = exports['d3MBA-lib']:GetFrameworkObject()

RegisterNetEvent("d3Potions:client:openPotionsMenu", function()
	local exp = Framework.TriggerServerCallback('d3Potions:server:getExperience') 

    local menuHeaderOptions = {
        title = Config.Menu["potions"], 
		ox_title = Config.Menu["potions"] .." " ..Config.Menu["menu"],  
		icon = "fas fa-flask",
		context = string.format(Config.Menu["potions_context"], exp), 
	}

	local menuFooterOptions = {
		title = Config.Menu["exit"],
		icon = "fas fa-circle-xmark", 
	}

	local menuOptions = {}

	for k, v in pairs(Config.Potions) do
		table.insert(menuOptions,  {
			title = k.. " " ..v.MenuEmoji,
			isServer = false,
			event = "d3Potions:client:openCraftMenu",
			args = k
		})
	end  

    TriggerEvent("d3MBA-lib:client:OpenMenu", Framework.Menu, menuHeaderOptions, menuOptions, menuFooterOptions)
end)

RegisterNetEvent("d3Potions:client:openCraftMenu", function(potion)
	local exp = Framework.TriggerServerCallback('d3Potions:server:getExperience') 

    local menuHeaderOptions = {
        title = string.format(Config.Menu["start_crafting"], potion), 
		ox_title = Config.Menu["crafting_menu"],  
		context = string.format(Config.Menu["crafting_menu_context"], Config.Potions[potion].Description, Config.Potions[potion].RequiredExperience, Config.Potions[potion].CraftTime),
		icon = "fas fa-flask",
		isServer = true,
		event = "d3Potions:server:checkIngredients",
		args = potion
		
	}

	local menuFooterOptions = {
		title = Config.Menu["back"],
		icon = "fas fa-circle-chevron-left", 
		event = "d3Potions:client:openPotionsMenu",
	}

	local menuOptions = {}
	for k, v in pairs(Config.Potions[potion].Ingredients) do
		local potionIngredient = Framework.GetItemLabel(k)
		table.insert(menuOptions,  {
			disabled = true,
			title = string.format(Config.Menu["crafting_context"], potionIngredient, v),
		})
	end

    TriggerEvent("d3MBA-lib:client:OpenMenu", Framework.Menu, menuHeaderOptions, menuOptions, menuFooterOptions)
end)

RegisterNetEvent("d3MBA-potions:client:OpenShopMenu", function()
    TaskTurnPedToFaceEntity(PlayerPedId(), ShopPed, 1000)
    local ShopItems = nil 
    local menuHeaderOptions = {
        title = Config.Menu["shop"], 
		ox_title = Config.Menu["shop"] .. " " ..Config.Menu["menu"],  
	}

	local menuFooterOptions = {
		title = Config.Menu["exit"],
		icon = "fas fa-circle-xmark", 
	}

	local menuOptions = {}

    if Config.ShopPed.DynamicPrices.Use == true then 
        ShopItems = Framework.TriggerServerCallback("d3MBA-potions:server:ReturnDynamicPrices")
    else
        ShopItems = Config.ShopPed.Items
    end 

    for i = 1, #ShopItems do  
        table.insert(menuOptions,  {
            title = string.format(Config.Menu["shop_title"], Framework.GetItemLabel(ShopItems[i].ItemName)),
            context = string.format(Config.Menu["shop_context"], ShopItems[i].Price),
            icon = ShopItems[i].Icon,
            event = "d3MBA-potions:client:OpenShopInputMenu",
            args = {
                ItemName = ShopItems[i].ItemName,
                Price = ShopItems[i].Price,
            } 
        })
    end        

    TriggerEvent("d3MBA-lib:client:OpenMenu", Framework.Menu, menuHeaderOptions, menuOptions, menuFooterOptions)
end)



