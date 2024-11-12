local QBCore = exports['qb-core']:GetCoreObject()


Citizen.CreateThread(function()
    local alreadyEnteredZone = false
    local text = '<b>[E] Open Stash</b>'
    while true do
    wait = 5
    local ped = PlayerPedId()
    local inZone = false

    for k, v in pairs(Config.Stashes) do

        local dist = #(GetEntityCoords(ped)-vector3(Config.Stashes[k].coords.x, Config.Stashes[k].coords.y, Config.Stashes[k].coords.z))
        if dist <= 3.0 then
        wait = 5
        inZone  = true

        if IsControlJustReleased(0, 38) then
            TriggerEvent('qb-business:client:openStash', k, Config.Stashes[k].stashName)
        end
        break
        else
        wait = 2000
        end
    end

    if inZone and not alreadyEnteredZone then
        alreadyEnteredZone = true
        TriggerEvent('cd_drawtextui:ShowUI', 'show', text)
    end

    if not inZone and alreadyEnteredZone then
        alreadyEnteredZone = false
        TriggerEvent('cd_drawtextui:HideUI')
    end
    Citizen.Wait(wait)
    end
end)

RegisterNetEvent('qb-business:client:openStash', function(currentstash, stash)

    local PlayerData = QBCore.Functions.GetPlayerData()
    local PlayerJob = PlayerData.job.name
    local PlayerGang = PlayerData.gang.name
    local canOpen = false

    if Config.PoliceOpen then 
        if PlayerJob == "police" then
            canOpen = true
        end
    end

    if Config.Stashes[currentstash].jobrequired then 
        if PlayerJob == Config.Stashes[currentstash].job then
            canOpen = true
        end
    end

    if Config.Stashes[currentstash].requirecid then
        for k, v in pairs (Config.Stashes[currentstash].cid) do 
            if QBCore.Functions.GetPlayerData().citizenid == v then
                canOpen = true
            end
        end
    end

    if Config.Stashes[currentstash].gangrequired then
        if PlayerGang == Config.Stashes[currentstash].gang then
            canOpen = true
        end
    end

    if canOpen then 
        TriggerServerEvent("inventory:server:OpenInventory", "stash", Config.Stashes[currentstash].stashName, {maxweight = Config.Stashes[currentstash].stashSize, slots = Config.Stashes[currentstash].stashSlots})
        TriggerEvent("inventory:client:SetCurrentStash", Config.Stashes[currentstash].stashName)
    else
        QBCore.Functions.Notify('You cannot open this', 'error')
    end

end)

RegisterNetEvent('openstash:open')
AddEventHandler('openstash:open', function(box)
    local name = box
    if exports['av_vip']:Level() == 0 then
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "safezone_" .. QBCore.Functions.GetPlayerData().citizenid, {
        maxweight = 2500,
        slots = 5,
    })
    TriggerEvent("inventory:client:SetCurrentStash", "safezone_" .. QBCore.Functions.GetPlayerData().citizenid)
        QBCore.Functions.Notify('Upgrade stash @ groundzero.tebex.io', 'success')
    else if exports['av_vip']:Level() == 1 then
        TriggerServerEvent("inventory:server:OpenInventory", "stash", "VIP Gold" .. QBCore.Functions.GetPlayerData().citizenid, {
            maxweight = 5000,
            slots = 10,
        })
        TriggerEvent("inventory:client:SetCurrentStash", "VIP Gold" .. QBCore.Functions.GetPlayerData().citizenid)
            QBCore.Functions.Notify('Upgrade stash @ groundzero.tebex.io', 'success')
    else if exports['av_vip']:Level() == 2 then
        TriggerServerEvent("inventory:server:OpenInventory", "stash", "VIP Platinum" .. QBCore.Functions.GetPlayerData().citizenid, {
            maxweight = 7500,
            slots = 15,
        })
        TriggerEvent("inventory:client:SetCurrentStash", "VIP Platinum" .. QBCore.Functions.GetPlayerData().citizenid)
            QBCore.Functions.Notify('Upgrade stash @ groundzero.tebex.io', 'success')
    else if exports['av_vip']:Level() == 3 then
        TriggerServerEvent("inventory:server:OpenInventory", "stash", "VIP Diamond" .. QBCore.Functions.GetPlayerData().citizenid, {
            maxweight = 10000,
            slots = 20,
        })
        TriggerEvent("inventory:client:SetCurrentStash", "VIP Diamond" .. QBCore.Functions.GetPlayerData().citizenid)
            -- QBCore.Functions.Notify('Upgrade stash @ groundzero.tebex.io', 'success')
        end
    end
        end
    end
end)