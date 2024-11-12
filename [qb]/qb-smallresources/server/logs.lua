local QBCore = exports['qb-core']:GetCoreObject()
local Webhooks = {
    ['default'] = 'https://discord.com/api/webhooks/1303243359942348833/lEVY5sdc8GMhPCdtcAguGsPypr1e_4jdGj6GX3DeiDZ_cGnoHPvTkvWG8KaxV6oWOk80',
    ['testwebhook'] = '',
    ['playermoney'] = 'https://discord.com/api/webhooks/1180527823363002438/9XHpLPdw6C649zpPn6Q06A_UExrj2zne-UodvuDCDEsyMbUFjgLq9z72z39Cb--fBHAV',
    ['playerinventory'] = 'https://discord.com/api/webhooks/1180527987964252241/PniVtsH_BGVLOYLN3qqUXbuDtud2UdsEbOm_MjVTJFufBNv8q52pSHG2IaE-tes6um7R',
    ['robbing'] = 'https://discord.com/api/webhooks/1180528101663461406/qSjJVZLOmnjoTQOtTGpQsQs9jhjdkYz3JdDzYHZQyN2ne9E7ZvE4WUej3TDME0JHViiS',
    ['cuffing'] = 'https://discord.com/api/webhooks/1180528320929075270/9ObLOF6Ie8G7M_h5PEPnX99xdIgU1IfVwhJbDxPI_K11vFZSWK3P6cs4SQ9Pe7gYJR5T',
    ['drop'] = 'https://discord.com/api/webhooks/1303243807982096384/RQW8EOJk9WPrKtxC90JIcjKy0Wf-hzzHCOCffRHMuQ5hevuMpXl5DNxSbeLhgzId3Eve',
    ['trunk'] = 'https://discord.com/api/webhooks/1180528549485084743/D-ZRNRMJswueSwWACqv-Wx7USAYuz9Xg8EFxa56Qiw30kQtmy8CXBZvpaMnhtGobwoBc',
    ['stash'] = 'https://discord.com/api/webhooks/1180528655160578048/am0xSI082DRrXEAGptMfgLK8U33eIC-kgGA0zEngc8VvBfZJyGo3aKpgM9dRaM8O-NUx',
    ['glovebox'] = 'https://discord.com/api/webhooks/1180528784861040780/1BD-O_8dBrOYhTTHYhH6-pYN1_ILjFMJE1js9r0mLnF9b5S8Ext3rkyqqQ_sS-FWUHj4',
    ['banking'] = 'https://discord.com/api/webhooks/1180528891752890518/BcHUoFbjmJpiSS1MmMabTwOP8Tly_q2mlCr7LvX5K7awt7OCtTZvPm4DsfmQxLpgZ_gF',
    ['vehicleshop'] = '',
    ['vehicleupgrades'] = '',
    ['shops'] = 'https://discord.com/api/webhooks/1180525042849828915/BNToa8HTbrrLIe2gidPVoMfNiGloV5k_rLRCKfy5IOIJBjZ29FU3aDrtn_r2aAGY_TNw',
    ['dealers'] = '',
    ['storerobbery'] = '',
    ['bankrobbery'] = '',
    ['powerplants'] = '',
    ['death'] = 'https://discord.com/api/webhooks/1180529238978351226/M5VYBAG5Q3muD560g0zi2FT6FRJQ7O8MQkQiftV6DKrBPsNEa41sGSqGd4wR-uw5LyRd',
    ['joinleave'] = 'https://discord.com/api/webhooks/1180522522198933547/1nb0tXf0GY0mGo0Ggmt1wOHtdTSGqR_AIFNFKOXY8oFgl8ChmIAs7zM9h5Ln1iZ16HSJ',
    ['ooc'] = 'https://discord.com/api/webhooks/1180529340740542524/x4zdqNK8MOFttfBZpVVdgvqVc6HCzhMci9qjziAueQtYNmMEHv0tMAY-ychoRTu3l8_k',
    ['report'] = 'https://discord.com/api/webhooks/1180529433610825838/GlGuZsYvK0a_EDrYUcPoZl8N8vulbiifPR7SiHj2ydUp5HlCI2ixcjsBdUMjqoe9DeDh',
    ['me'] = '',
    ['pmelding'] = '',
    ['112'] = '',
    ['bans'] = 'https://discord.com/api/webhooks/1180529647709081660/lNE8p8_y9En4sFrpICfpqR5k3VlaYy793ImFoQb9RqFYhsmgcV5ZstGtVGQJhYlf31dr',
    ['anticheat'] = '',
    ['weather'] = 'https://discord.com/api/webhooks/1180529728671715360/bnWj2FIjmbyLFBjqTpfDmEBVQzB4igOoK-097sipXvXtKVli0Me1DZPCkkkUVuu5rduK',
    ['moneysafes'] = '',
    ['bennys'] = '',
    ['bossmenu'] = 'https://discord.com/api/webhooks/1303245658899091496/YrBLyskuRXyk6gzaUDC4dEhj9iMmwzVeCzx_G65dQpMvQCEKSL0IJBUulTaM3unb_1Kv',
    ['robbery'] = 'https://discord.com/api/webhooks/1303245870581682206/9ms4udBpjXvUR6OxiuzdFhxGpz9a8SHwygDw-W8YKWylEakXreSGaEpngnhH_nnmz08y',
    ['casino'] = '',
    ['traphouse'] = '',
    ['911'] = '',
    ['palert'] = '',
    ['house'] = '',
    ['qbjobs'] = '',
}

local colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ['lightgreen'] = 65309,
}

local logQueue = {}

RegisterNetEvent('qb-log:server:CreateLog', function(name, title, color, message, tagEveryone)
    local postData = {}
    local tag = tagEveryone or false
    if not Webhooks[name] then print('Tried to call a log that isn\'t configured with the name of ' ..name) return end
    local webHook = Webhooks[name] ~= '' and Webhooks[name] or Webhooks['default']
    local embedData = {
        {
            ['title'] = title,
            ['color'] = colors[color] or colors['default'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = 'QBCore Logs',
                ['icon_url'] = 'https://raw.githubusercontent.com/GhzGarage/qb-media-kit/main/Display%20Pictures/Logo%20-%20Display%20Picture%20-%20Stylized%20-%20Red.png',
            },
        }
    }

    if not logQueue[name] then logQueue[name] = {} end
    logQueue[name][#logQueue[name] + 1] = {webhook = webHook, data = embedData}

    if #logQueue[name] >= 10 then
        if tag then
            postData = {username = 'QB Logs', content = '@everyone', embeds = {}}
        else
            postData = {username = 'QB Logs', embeds = {}}
        end
        for i = 1, #logQueue[name] do postData.embeds[#postData.embeds + 1] = logQueue[name][i].data[1] end
        PerformHttpRequest(logQueue[name][1].webhook, function() end, 'POST', json.encode(postData), { ['Content-Type'] = 'application/json' })
        logQueue[name] = {}
    end
end)

Citizen.CreateThread(function()
    local timer = 0
    while true do
        Wait(1000)
        timer = timer + 1
        if timer >= 60 then -- If 60 seconds have passed, post the logs
            timer = 0
            for name, queue in pairs(logQueue) do
                if #queue > 0 then
                    local postData = {username = 'QB Logs', embeds = {}}
                    for i = 1, #queue do
                        postData.embeds[#postData.embeds + 1] = queue[i].data[1]
                    end
                    PerformHttpRequest(queue[1].webhook, function() end, 'POST', json.encode(postData), {['Content-Type'] = 'application/json'})
                    logQueue[name] = {}
                end
            end
        end
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function()
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')