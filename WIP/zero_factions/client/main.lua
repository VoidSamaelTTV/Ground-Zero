local QBCore = exports['qb-core']:GetCoreObject()

-- Function to handle faction creation
RegisterNetEvent('qb-factions:createFactionInput', function()
    local dialog = exports['qb-input']:ShowInput({
        header = "Create Faction",
        submitText = "Create",
        inputs = {
            {
                text = "Faction Name", -- Placeholder text
                name = "faction_name", -- Unique name for the input
                type = "text", -- Input type
                isRequired = true -- This input is required
            }
        }
    })

    if dialog and dialog.faction_name then
        TriggerServerEvent('qb-factions:createFaction', dialog.faction_name)
    else
        QBCore.Functions.Notify('No faction name entered', 'error')
    end
end)

-- Function to handle player invitation
RegisterNetEvent('qb-factions:invitePlayerInput', function()
    local dialog = exports['qb-input']:ShowInput({
        header = "Invite Player",
        submitText = "Invite",
        inputs = {
            {
                text = "Player ID", -- Placeholder text
                name = "player_id", -- Unique name for the input
                type = "number", -- Input type
                isRequired = true -- This input is required
            }
        }
    })

    if dialog and dialog.player_id then
        local playerId = tonumber(dialog.player_id)
        if playerId then
            TriggerServerEvent('qb-factions:invitePlayer', playerId)
        else
            QBCore.Functions.Notify('Invalid Player ID', 'error')
        end
    else
        QBCore.Functions.Notify('No Player ID entered', 'error')
    end
end)

-- Function to request to join a faction
RegisterNetEvent('qb-factions:joinFactionInput', function()
    QBCore.Functions.TriggerCallback('qb-factions:getFactions', function(factions)
        local factionList = {}
        
        for name, _ in pairs(factions) do
            table.insert(factionList, { label = name, value = name })
        end

        if #factionList == 0 then
            QBCore.Functions.Notify('No available factions', 'error')
            return
        end

        -- Show faction selection dialog
        local options = {}
        for _, faction in ipairs(factionList) do
            table.insert(options, {
                text = faction.label, -- Display name
                value = faction.value -- Actual value to send
            })
        end

        local dialog = exports['qb-input']:ShowInput({
            header = "Select Faction",
            submitText = "Join",
            inputs = {
                {
                    text = "Available Factions",
                    name = "faction_name",
                    type = "select", -- Use select type
                    options = options, -- Pass the faction options
                    isRequired = true
                }
            }
        })

        if dialog and dialog.faction_name then
            TriggerServerEvent('qb-factions:requestJoin', dialog.faction_name)
        else
            QBCore.Functions.Notify('No faction selected', 'error')
        end
    end)
end)

-- Command to open the faction inputs
RegisterCommand('factionmenu', function()
    local elements = {
        { label = "Create Faction", value = "create_faction" },
        { label = "Invite Player", value = "invite_player" },
        { label = "Request to Join Faction", value = "request_join" }
    }

    -- Show management options using qb-input
    local dialog = exports['qb-input']:ShowInput({
        header = "Faction Management",
        submitText = "Select",
        inputs = {
            {
                text = "Choose an Option",
                name = "menu_option",
                type = "select",
                options = elements -- Options for the management menu
            }
        }
    })

    if dialog and dialog.menu_option then
        if dialog.menu_option == "create_faction" then
            TriggerEvent('qb-factions:createFactionInput')
        elseif dialog.menu_option == "invite_player" then
            TriggerEvent('qb-factions:invitePlayerInput')
        elseif dialog.menu_option == "request_join" then
            TriggerEvent('qb-factions:joinFactionInput')
        end
    end
end)

-- Notify function (for testing, replace with your notification system)
RegisterNetEvent('QBCore:Notify', function(message, type)
    print(type .. ": " .. message)
end)
