fx_version 'cerulean'
game 'gta5'

author 'Randolio#6863' -- Discord
description 'Gravedigging for QBCore'

shared_script 'config.lua'

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'client.lua',
}

server_scripts { 'server.lua', 'webhook.lua', '@oxmysql/lib/MySQL.lua' }

escrow_ignore { 'config.lua', 'README.lua', 'webhook.lua' }

lua54 'yes'

dependency '/assetpacks'