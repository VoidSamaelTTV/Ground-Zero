function isTabEmpty(tab)
	if #tab > 0 then
		return false
	end
	return true
end

function materialsPercentageFunc(items,percentage,mult)
    local itemsList = {}
    for _,v in ipairs(items) do
		if mult then
			table.insert(itemsList,{name = v.name,count = Round(v.count * percentage * Config.upkeepMult)}) 
		else
			table.insert(itemsList,{name = v.name,count = Round(v.count * percentage)}) 
		end
    end
    return itemsList
end

function getReturnMaterials(k)
	local materialsList = Config.Models[props[k].hash].returnMaterials or Config.Models[props[k].hash].crafting or {}
	local materialsPercentage = (props[k].life / Config.Models[props[k].hash].life)

	if Config.Models[props[k].hash].item then
		if materialsPercentage > 0.95 then
			materialsList = {{name = Config.Models[props[k].hash].item,count = 1}}
			materialsPercentage = 1.0
		end
	end

	return materialsPercentageFunc(materialsList , materialsPercentage)
end

function getUpgradeMaterials(upgrade)
	local materialsList = Config.Models[upgrade].crafting
	
	return materialsList
end

function getRepairMaterialsList(list)
	local listNew = {}
	for id,_ in pairs(list) do
		local materials = getRepairMaterials(id)
		for _,v in ipairs(materials) do
			if not listNew[v.name] then
				listNew[v.name] = v.count
			else
				listNew[v.name] = listNew[v.name] + v.count
			end
		end	
	end

	local listNewFinal = {}

	for k,v in pairs(listNew) do
        table.insert(listNewFinal,{name = k,count = v}) 
    end

	return listNewFinal
end
  
function getRepairMaterials(k)
	local materialsList = Config.Models[props[k].hash].repairMaterials or Config.Models[props[k].hash].crafting or {}
	local materialsPercentage = (1.0 - props[k].life / Config.Models[props[k].hash].life)


	return materialsPercentageFunc(materialsList , materialsPercentage, true)
end

function getRepairMaterialsCheck24(hash)
	local healthRemove = ((86400 * 1000) / Config.refreshTime) * Config.refreshTimeLifeRemove

	local materialsList = Config.Models[hash].repairMaterials or Config.Models[hash].crafting or {}
	local materialsPercentage = (1.0 - (Config.Models[hash].life - healthRemove) / Config.Models[hash].life)

	return materialsPercentageFunc(materialsList , materialsPercentage, true)
end