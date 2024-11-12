local Framework = exports['d3MBA-lib']:GetFrameworkObject()

exports[Framework.Target]:AddCircleZone("potions", Config.TablePos, 2.1, {
	name = "potions",
	heading = 44,
	debugPoly = Config.DebugPolyZone,
	}, {
		options = {
			{
				icon = Config.TargetIcons["craft_potion"],
				label = Config.TargetLabels["craft_potion"],
				canInteract = function()
					if IsPedOnFoot(PlayerPedId()) then 
						if crafting == false then
							return true 
						end
					end 
                end, 
				action = function()
					TriggerEvent("d3Potions:client:openPotionsMenu")
				end,
			},

		},
		distance = 1.5
})

function AddTargetShopPed()
	exports[Framework.Target]:AddTargetEntity(ShopPed, {
		options = { 
			{
				icon = Config.TargetIcons["shop"],
				label = Config.TargetLabels["shop"],
				canInteract = function()
					return IsPedOnFoot(PlayerPedId()) 
				end,
				action = function()
					TriggerEvent("d3MBA-potions:client:OpenShopMenu")
				end,
				-- job = "",
			},
		},
		distance = 2.0
	})
end