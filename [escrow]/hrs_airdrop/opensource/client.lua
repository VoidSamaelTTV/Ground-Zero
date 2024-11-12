CreateThread(function()
    Wait(1000)

    for k,v in pairs(Config.ModelsList) do

        local options = {}

        table.insert(
            options,
            {
                type = 'client',
                icon = "fa-solid fa-magnifying-glass",
                label = Config.Locales['open_drop'],
                action = function(entity)
                    for k,v in pairs(dropProps) do
                        if v.crate and v.crate == entity then
                            TriggerServerEvent('hrs_airdrop:openLootMenu',k)
                            break
                        end
                    end
                end,
                canInteract = function(entity)
                    for k,v in pairs(dropProps) do
                        if v.crate and v.crate == entity then
                            return true
                        end
                    end
                    return false
                end
            }
        )

        exports[Config.UseTargetExport]:AddTargetModel(k, {
            options = options,
            distance = 4.0
        })
    end
end)

function CreateBlipDrop(entity,info,index,type)
    local Blip = AddBlipForEntity(entity)
    SetBlipSprite(Blip, info.sprite)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(info.label) -- set blip's "name"
    EndTextCommandSetBlipName(Blip)
    SetBlipScale(Blip, info.scale)
    SetBlipColour(Blip, info.color)
    SetBlipAlpha(Blip, info.alpha)
end

function effectHandlerEntity(asset,name,entity,time,r,g,b,a,scale)
    CreateThread(function()
        if not HasNamedPtfxAssetLoaded(asset) then

            RequestNamedPtfxAsset(asset)
            while not HasNamedPtfxAssetLoaded(asset) do
                Citizen.Wait(1)
            end
        end
    
        SetPtfxAssetNextCall(asset)
    
        local fx = StartParticleFxLoopedOnEntity(name,entity, 0.0,0.0, 0.0, 0.0, 0.0, 0.0,scale, false, false, false, false)
        SetParticleFxLoopedColour(fx, r, g, b, 0)
        SetParticleFxLoopedAlpha(fx, a)
        Wait(time)
        StopParticleFxLooped(fx, 0)
    end)
end



-- local extraBlips = {}
-- RegisterNetEvent("hrs_airdrop:finish")
-- AddEventHandler("hrs_airdrop:finish", function(dropHash)
--     if extraBlips[dropHash] then
--         Wait(100000)
--         if extraBlips[dropHash] then
--             RemoveBlip(extraBlips[dropHash])
--         end
--     end
-- end)

-- RegisterNetEvent("hrs_airdrop:dropOnGround")
-- AddEventHandler("hrs_airdrop:dropOnGround", function(index,dropCoords,theta,dropHash,crateSpawn)
--     local x,y,z = table.unpack(dropCoords)
--     extraBlips[dropHash] = AddBlipForRadius(x,y,z, 100.0)
--     SetBlipHighDetail(extraBlips[dropHash], true)
--     SetBlipColour(extraBlips[dropHash], 1)
--     SetBlipAlpha (extraBlips[dropHash], 100)
--     SetBlipAsShortRange(extraBlips[dropHash], true)
-- end)

-- AddEventHandler("onResourceStop", function(resource)
--     if resource == GetCurrentResourceName() then
--         for k,v in pairs(extraBlips) do
--             RemoveBlip(v)
--         end
--     end
-- end)


