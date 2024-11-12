

function getMetadata(xPlayer,itemName,lootType,metadataInfo)
    if metadataInfo then
        local finalMetadata = {}
        for k,v in pairs(metadataInfo) do
            if type(v) == "table" then
                if v.mathRandom then
                    finalMetadata[k] = math.random(v.mathRandom.min, v.mathRandom.max)
                elseif v.listRandom then
                    finalMetadata[k] = v.listRandom[math.random(1, #v.listRandom)]
                elseif v.probabilityRandom then
                    finalMetadata[k] = checkProb(v.probabilityRandom)
                else
                    finalMetadata[k] = v
                end
            else
                finalMetadata[k] = v
            end
        end
        
        return finalMetadata
    end
    
    return nil
end

function isLootEmpty(checkId)
    if lootList[checkId] and next(lootList[checkId]) then

        -- local inventory = exports.ox_inventory:GetInventory(checkId, false)
        -- if not inventory then return true end
        -- if not next(inventory.items) then return true end

        return false
    end

    return true
end

function createNewLoot(checkId,type,xPlayer,coords,extraInfo)
    local finalList = getItemsList(type,xPlayer,coords,extraInfo)

    -- if exports.ox_inventory:GetInventory(checkId, false) then
    --     exports.ox_inventory:ClearInventory(checkId)
    -- end

    -- exports.ox_inventory:RegisterStash(checkId,"Loot",50,50000)
    -- for k,v in pairs(finalList) do
    --     exports.ox_inventory:AddItem(checkId, v.item, v.count, v.metadata)	
    -- end
   	
    return finalList
end

function clearLootInventory(checkId)
    lootList[checkId] = nil
    lootListByTime[checkId] = nil
    lootListByType[checkId] = nil
    --exports.ox_inventory:ClearInventory(checkId)
end

function returnRandomNumber()
    local mult = 100
    return math.random(1,100*mult) , mult
end

function getRefreshTime(type, coords, extraInfo)
    return Config.types[type].lootRefreshTime or Config.lootRefreshTime
end -- only INT numbers














-------- IGNORE USED FOR EXPORT 'generateItemsList' -------------------------------------------------------------
function getMetadata2(itemName,metadataInfo)
    if metadataInfo then
        local finalMetadata = {}
        for k,v in pairs(metadataInfo) do
            if type(v) == "table" then
                if v.mathRandom then
                    finalMetadata[k] = math.random(v.mathRandom.min, v.mathRandom.max)
                elseif v.listRandom then
                    finalMetadata[k] = v.listRandom[math.random(1, #v.listRandom)]
                elseif v.probabilityRandom then
                    finalMetadata[k] = checkProb(v.probabilityRandom)
                else
                    finalMetadata[k] = v
                end
            else
                finalMetadata[k] = v
            end
        end
        
        return finalMetadata
    end
    
    return nil
end