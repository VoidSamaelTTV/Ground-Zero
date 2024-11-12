Necessary Modifications:

#############################################################################################################################################################
Path  : qb-clothing/client/main.lua 
Action: Replace (skip if you are using ak47_qb_clothing)
```lua

RegisterNetEvent('qb-clothing:client:loadOutfit')
AddEventHandler('qb-clothing:client:loadOutfit', function(oData)
    local ped = PlayerPedId()

    data = oData.outfitData

    if typeof(data) ~= "table" then data = json.decode(data) end

    for k, v in pairs(data) do
        skinData[k].item = data[k].item
        skinData[k].texture = data[k].texture

        -- To secure backwards compability for facemixing
        if data[k].shapeMix then
            skinData[k].shapeMix = data[k].shapeMix
        end

        if data[k].skinMix then
            skinData[k].skinMix = data[k].skinMix
        end
    end

    -- Pants
    if data["pants"] ~= nil then
        SetPedComponentVariation(ped, 4, data["pants"].item, data["pants"].texture, 0)
    end

    -- Arms
    if data["arms"] ~= nil then
        SetPedComponentVariation(ped, 3, data["arms"].item, data["arms"].texture, 0)
    end

    -- T-Shirt
    if data["t-shirt"] ~= nil then
        SetPedComponentVariation(ped, 8, data["t-shirt"].item, data["t-shirt"].texture, 0)
    end

    -- Vest
    if data["vest"] ~= nil then
        SetPedComponentVariation(ped, 9, data["vest"].item, data["vest"].texture, 0)
    end

    -- Torso 2
    if data["torso2"] ~= nil then
        SetPedComponentVariation(ped, 11, data["torso2"].item, data["torso2"].texture, 0)
    end

    -- Shoes
    if data["shoes"] ~= nil then
        SetPedComponentVariation(ped, 6, data["shoes"].item, data["shoes"].texture, 0)
    end

    -- Bag
    if data["bag"] ~= nil then
        SetPedComponentVariation(ped, 5, data["bag"].item, data["bag"].texture, 0)
    end

    -- Badge
    if data["decals"] ~= nil then
        SetPedComponentVariation(ped, 10, data["decals"].item, data["decals"].texture, 0)
    end

    -- Accessory
    if data["accessory"] ~= nil then
        if QBCore.Functions.GetPlayerData().metadata["tracker"] then
            SetPedComponentVariation(ped, 7, 13, 0, 0)
        else
            SetPedComponentVariation(ped, 7, data["accessory"].item, data["accessory"].texture, 0)
        end
    end

    -- Mask
    if data["mask"] ~= nil then
        SetPedComponentVariation(ped, 1, data["mask"].item, data["mask"].texture, 0)
    end

    -- Bag
    if data["bag"] ~= nil then
        SetPedComponentVariation(ped, 5, data["bag"].item, data["bag"].texture, 0)
    end

    -- Hat
    if data["hat"] ~= nil then
        if data["hat"].item ~= -1 and data["hat"].item ~= 0 then
            SetPedPropIndex(ped, 0, data["hat"].item, data["hat"].texture, true)
        else
            ClearPedProp(ped, 0)
        end
    end

    -- Glass
    if data["glass"] ~= nil then
        if data["glass"].item ~= -1 and data["glass"].item ~= 0 then
            SetPedPropIndex(ped, 1, data["glass"].item, data["glass"].texture, true)
        else
            ClearPedProp(ped, 1)
        end
    end

    -- Ear
    if data["ear"] ~= nil then
        if data["ear"].item ~= -1 and data["ear"].item ~= 0 then
            SetPedPropIndex(ped, 2, data["ear"].item, data["ear"].texture, true)
        else
            ClearPedProp(ped, 2)
        end
    end

    -- watch
    if data["watch"] ~= nil then
        if data["watch"].item ~= -1 and data["watch"].item ~= 0 then
            SetPedPropIndex(ped, 6, data["watch"].item, data["watch"].texture, true)
        else
            ClearPedProp(ped, 6)
        end
    end

    if oData.outfitName ~= nil then
        QBCore.Functions.Notify("You have chosen "..oData.outfitName.."! Press Confirm to confirm outfit.")
    end
end)

```
#############################################################################################################################################################


#############################################################################################################################################################
Path  : qb-clothing/client/main.lua
Action: Add (skip if you are using ak47_qb_clothing)
```lua

AddEventHandler('qb-clothing:getSkin', function(cb)
    cb(skinData)
end)

```
#############################################################################################################################################################


#############################################################################################################################################################
Path  : qb-inventory/server/main.lua
Action: Replace
```lua

local function RemoveItem(source, item, amount, slot)
	local Player = QBCore.Functions.GetPlayer(source)
	if not Player then return false end
	amount = tonumber(amount) or 1
	slot = tonumber(slot)
	if slot then
		if Player.PlayerData.items[slot].amount > amount then
			Player.PlayerData.items[slot].amount = Player.PlayerData.items[slot].amount - amount
			Player.Functions.SetPlayerData("items", Player.PlayerData.items)
			if not Player.Offline then
				TriggerEvent('qb-log:server:CreateLog', 'playerinventory', 'RemoveItem', 'red', '**' .. GetPlayerName(source) .. ' (citizenid: ' .. Player.PlayerData.citizenid .. ' | id: ' .. source .. ')** lost item: [slot:' .. slot .. '], itemname: ' .. Player.PlayerData.items[slot].name .. ', removed amount: ' .. amount .. ', new total amount: ' .. Player.PlayerData.items[slot].amount)
			end
            TriggerEvent('qb-core:onRemoveInventoryItem', source, item)
			return true
		elseif Player.PlayerData.items[slot].amount == amount then
			Player.PlayerData.items[slot] = nil
			Player.Functions.SetPlayerData("items", Player.PlayerData.items)
			if Player.Offline then return true end
			TriggerEvent('qb-log:server:CreateLog', 'playerinventory', 'RemoveItem', 'red', '**' .. GetPlayerName(source) .. ' (citizenid: ' .. Player.PlayerData.citizenid .. ' | id: ' .. source .. ')** lost item: [slot:' .. slot .. '], itemname: ' .. item .. ', removed amount: ' .. amount .. ', item removed')
            TriggerEvent('qb-core:onRemoveInventoryItem', source, item)
			return true
		end
	else
		local slots = GetSlotsByItem(Player.PlayerData.items, item)
		local amountToRemove = amount
		if not slots then return false end
		for _, _slot in pairs(slots) do
			if Player.PlayerData.items[_slot].amount > amountToRemove then
				Player.PlayerData.items[_slot].amount = Player.PlayerData.items[_slot].amount - amountToRemove
				Player.Functions.SetPlayerData("items", Player.PlayerData.items)
				if not Player.Offline then
					TriggerEvent('qb-log:server:CreateLog', 'playerinventory', 'RemoveItem', 'red', '**' .. GetPlayerName(source) .. ' (citizenid: ' .. Player.PlayerData.citizenid .. ' | id: ' .. source .. ')** lost item: [slot:' .. _slot .. '], itemname: ' .. Player.PlayerData.items[_slot].name .. ', removed amount: ' .. amount .. ', new total amount: ' .. Player.PlayerData.items[_slot].amount)
				end
                TriggerEvent('qb-core:onRemoveInventoryItem', source, item)
				return true
			elseif Player.PlayerData.items[_slot].amount == amountToRemove then
				Player.PlayerData.items[_slot] = nil
				Player.Functions.SetPlayerData("items", Player.PlayerData.items)
				if Player.Offline then return true end
				TriggerEvent('qb-log:server:CreateLog', 'playerinventory', 'RemoveItem', 'red', '**' .. GetPlayerName(source) .. ' (citizenid: ' .. Player.PlayerData.citizenid .. ' | id: ' .. source .. ')** lost item: [slot:' .. _slot .. '], itemname: ' .. item .. ', removed amount: ' .. amount .. ', item removed')
                TriggerEvent('qb-core:onRemoveInventoryItem', source, item)
				return true
			end
		end
	end
	return false
end

```
#############################################################################################################################################################
