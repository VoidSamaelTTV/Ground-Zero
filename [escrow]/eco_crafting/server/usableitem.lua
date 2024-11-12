QBCore.Functions.CreateUseableItem("recipe_collection", function(source, item)

    local _source = source
    TriggerClientEvent("eco_crafting:openNui", _source, "recipe_collection")
end)

QBCore.Functions.CreateUseableItem("labor_enhancer", function(source, item)

    local _source = source
    local xPlayer = QBCore.Functions.GetPlayer(_source)

    if addLabor(xPlayer, 1000) then

        interface.server.notify(_source, Lang:t('labor_added'), 'success')
        xPlayer.Functions.RemoveItem('labor_enhancer', 1)
    else

        interface.server.notify(_source, Lang:t('not_possible'), 'error')
    end
end)

QBCore.Functions.CreateUseableItem("weaponry_enhancer", function(source, item)

    local _source = source
    local xPlayer = QBCore.Functions.GetPlayer(_source)

    if addProficiency(xPlayer, 'weaponry', 10000) then

        interface.server.notify(_source, Lang:t('proficiency_added'), 'success')
        xPlayer.Functions.RemoveItem('weaponry_enhancer', 1)
    else

        interface.server.notify(_source, Lang:t('not_possible'), 'error')
    end
end)

QBCore.Functions.CreateUseableItem("weaponry_enhancer_max", function(source, item)

    local _source = source
    local xPlayer = QBCore.Functions.GetPlayer(_source)

    if addProficiency(xPlayer, 'weaponry', 10000) then

        interface.server.notify(_source, Lang:t('proficiency_added'), 'success')
        xPlayer.Functions.RemoveItem('weaponry_enhancer', 1)
    else

        interface.server.notify(_source, Lang:t('not_possible'), 'error')
    end
end)

QBCore.Functions.CreateUseableItem("foundry_enhancer", function(source, item)

    local _source = source
    local xPlayer = QBCore.Functions.GetPlayer(_source)

    if addProficiency(xPlayer, 'foundry', 10000) then

        interface.server.notify(_source, Lang:t('proficiency_added'), 'success')
        xPlayer.Functions.RemoveItem('foundry_enhancer', 1)
    else

        interface.server.notify(_source, Lang:t('not_possible'), 'error')
    end
end)

QBCore.Functions.CreateUseableItem("foundry_enhancer_max", function(source, item)

    local _source = source
    local xPlayer = QBCore.Functions.GetPlayer(_source)

    if addProficiency(xPlayer, 'foundry', 120000) then

        interface.server.notify(_source, Lang:t('proficiency_added'), 'success')
        xPlayer.Functions.RemoveItem('foundry_enhancer_max', 1)
    else

        interface.server.notify(_source, Lang:t('not_possible'), 'error')
    end
end)

QBCore.Functions.CreateUseableItem("chemist_enhancer", function(source, item)

    local _source = source
    local xPlayer = QBCore.Functions.GetPlayer(_source)

    if addProficiency(xPlayer, 'chemist', 10000) then

        interface.server.notify(_source, Lang:t('proficiency_added'), 'success')
        xPlayer.Functions.RemoveItem('chemist_enhancer', 1)
    else

        interface.server.notify(_source, Lang:t('not_possible'), 'error')
    end
end)

QBCore.Functions.CreateUseableItem("chemist_enhancer_max", function(source, item)

    local _source = source
    local xPlayer = QBCore.Functions.GetPlayer(_source)

    if addProficiency(xPlayer, 'chemist', 120000) then

        interface.server.notify(_source, Lang:t('proficiency_added'), 'success')
        xPlayer.Functions.RemoveItem('chemist_enhancer', 1)
    else

        interface.server.notify(_source, Lang:t('not_possible'), 'error')
    end
end)

QBCore.Functions.CreateUseableItem("portable_foundry", function(source, item)

    workstationAddRequest(source, item.name,
            {
                workstation = 'foundry',
                animation = {
                    dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
                    anim = 'machinic_loop_mechandplayer',
                    flag = 16
                },
                fx = {
                    dict = 'scr_bike_adversary',
                    name = 'scr_adversary_weap_glow',
                    offset = vector3(0, 0, 0.9),
                    loopedAtCoord = { 0.0, 0.0, 0.0, 1.0 },
                    loopedColour = { 1.0, 2.0, 2.0 },
                },
                object = {
                    model = 'prop_tool_bench02',
                    placeOnGround = false,
                    --offset = vector3(0, 0, 0)
                },
                actionDistance = 1.5,
                --requiredAcePermission = 'vip_silver',
            }
    )
end)

QBCore.Functions.CreateUseableItem("portable_chemist", function(source, item)

    workstationAddRequest(source, item.name,
            {
                workstation = 'chemist',
                animation = {
                    dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
                    anim = 'machinic_loop_mechandplayer',
                    flag = 16
                },
                fx = {
                    dict = 'scr_bike_adversary',
                    name = 'scr_adversary_weap_glow',
                    offset = vector3(0, 0, 0.9),
                    loopedAtCoord = { 0.0, 0.0, 0.0, 1.0 },
                    loopedColour = { 1.0, 2.0, 2.0 },
                },
                object = {
                    model = 'bkr_prop_coke_table01a',
                    placeOnGround = false,
                    --offset = vector3(0, 0, 0)
                },
                actionDistance = 1.5,
                --requiredAcePermission = 'vip_silver',
            }
    )
end)

QBCore.Functions.CreateUseableItem("portable_chemist_drugs", function(source, item)

    workstationAddRequest(source, item.name,
            {
                workstation = 'chemist',
                animation = {
                    dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
                    anim = 'machinic_loop_mechandplayer',
                    flag = 16
                },
                fx = {
                    dict = 'scr_bike_adversary',
                    name = 'scr_adversary_weap_glow',
                    offset = vector3(0, 0, 0.9),
                    loopedAtCoord = { 0.0, 0.0, 0.0, 1.0 },
                    loopedColour = { 1.0, 2.0, 2.0 },
                },
                object = {
                    model = 'bkr_prop_coke_table01a',
                    placeOnGround = false,
                    --offset = vector3(0, 0, 0)
                },
                special = 'drugs',
                excluding = { 'police', 'sheriff', 'ambulance' },
                actionDistance = 1.5,
                --requiredAcePermission = 'vip_gold',
            }
    )
end)

QBCore.Functions.CreateUseableItem("portable_weaponry_pistols", function(source, item)

    workstationAddRequest(source, item.name,
            {
                workstation = 'weaponry',
                animation = {
                    dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
                    anim = 'machinic_loop_mechandplayer',
                    flag = 16
                },
                fx = {
                    dict = 'cut_family5',
                    name = 'cs_alien_hand_light',
                    offset = vector3(0, 0, 0.9),
                    loopedAtCoord = { 0.0, 0.0, 0.0, 1.0 },
                    loopedColour = { 1.0, 2.0, 2.0 },
                },
                object = {
                    model = 'gr_prop_gr_bench_04b',
                    placeOnGround = true,
                    --offset = vector3(0, 0, 0)
                },
                special = 'pistols',
                excluding = {},
                actionDistance = 1.5,
                --requiredAcePermission = 'vip_gold',
            }
    )
end)

QBCore.Functions.CreateUseableItem("portable_weaponry_shotguns", function(source, item)

    workstationAddRequest(source, item.name,
            {
                workstation = 'weaponry',
                animation = {
                    dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
                    anim = 'machinic_loop_mechandplayer',
                    flag = 16
                },
                fx = {
                    dict = 'cut_family5',
                    name = 'cs_alien_hand_light',
                    offset = vector3(0, 0, 0.9),
                    loopedAtCoord = { 0.0, 0.0, 0.0, 1.0 },
                    loopedColour = { 1.0, 2.0, 2.0 },
                },
                object = {
                    model = 'gr_prop_gr_bench_03a',
                    placeOnGround = true,
                    --offset = vector3(0, 0, 0)
                },
                special = 'shotguns',
                excluding = {},
                actionDistance = 1.5,
                --requiredAcePermission = 'vip_gold',
            }
    )
end)

QBCore.Functions.CreateUseableItem("portable_weaponry_smg", function(source, item)

    workstationAddRequest(source, item.name,
            {
                workstation = 'weaponry',
                animation = {
                    dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
                    anim = 'machinic_loop_mechandplayer',
                    flag = 16
                },
                fx = {
                    dict = 'cut_family5',
                    name = 'cs_alien_hand_light',
                    offset = vector3(0, 0, 0.9),
                    loopedAtCoord = { 0.0, 0.0, 0.0, 1.0 },
                    loopedColour = { 1.0, 2.0, 2.0 },
                },
                object = {
                    model = 'gr_prop_gr_bench_04a',
                    placeOnGround = true,
                    --offset = vector3(0, 0, 0)
                },
                special = 'smg',
                excluding = {},
                actionDistance = 1.5,
                --requiredAcePermission = 'vip_gold',
            }
    )
end)

QBCore.Functions.CreateUseableItem("portable_weaponry_assault", function(source, item)

    workstationAddRequest(source, item.name,
            {
                workstation = 'weaponry',
                animation = {
                    dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
                    anim = 'machinic_loop_mechandplayer',
                    flag = 16
                },
                fx = {
                    dict = 'cut_family5',
                    name = 'cs_alien_hand_light',
                    offset = vector3(0, 0, 0.9),
                    loopedAtCoord = { 0.0, 0.0, 0.0, 1.0 },
                    loopedColour = { 1.0, 2.0, 2.0 },
                },
                object = {
                    model = 'gr_prop_gr_bench_01b',
                    placeOnGround = true,
                    --offset = vector3(0, 0, 0)
                },
                special = 'assault',
                excluding = {},
                actionDistance = 1.5,
                --requiredAcePermission = 'vip_gold',
            }
    )
end)

QBCore.Functions.CreateUseableItem("portable_cooking_fireplace", function(source, item)

    workstationAddRequest(source, item.name,
            {
                workstation = 'cooking',
                animation = {
                    dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
                    anim = 'machinic_loop_mechandplayer',
                    flag = 16
                },
                fx = {
                    dict = 'core',
                    name = 'ent_amb_int_fireplace_sml',
                    offset = vector3(0, 0, 0.0),
                    loopedAtCoord = { 0.0, 0.0, 0.0, 3.0 },
                    loopedColour = { 1.0, 3.0, 0.0 },
                },
                object = {
                    model = 'h4_prop_h4_firepit_rocks_01a',
                    placeOnGround = false,
                    --offset = vector3(0, 0, -0.2)
                },
                special = 'campfire',
                actionDistance = 2.0,
            }
    )
end)

-- EXPORTS SAMPLE
-- exports['eco_crafting']:addLabor(xPlayer or _source, amount)
-- exports['eco_crafting']:removeLabor(xPlayer or _source, amount)

-- exports['eco_crafting']:addProficiency(xPlayer or _source, 'cooking', amount)
-- exports['eco_crafting']:removeProficiency(xPlayer or _source, 'weaponry', amount)

-- exports['eco_crafting']:getLabor(xPlayer or _source)
-- exports['eco_crafting']:getProficiency(xPlayer or _source)

-- exports['eco_crafting']:addPortableWorkstation(workstationData, usableItemName, ownerId)
-- exports['eco_crafting']:removePortableWorkstation(workstationId, requesterId)
-- exports['eco_crafting']:getPortableWorkstations()