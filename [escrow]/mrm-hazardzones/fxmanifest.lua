fx_version 'cerulean'
game 'gta5'
lua54 'yes'
author 'MRM Scripts'
description 'Hazard Zones Script'
version '1.8' -- Updated 14.07-2024 --

ui_page 'ui/index.html'

files {
    'ui/*',
    'client.lua',
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'config.lua'
}

client_scripts {
    'client.lua',
    'opensource_client.lua',
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'config.lua'
}

server_script {
    'server.lua',
    'config.lua'
}

escrow_ignore {
    'config.lua',
    'opensource_client.lua'
}


-- Add any additional files or dependencies here

dependency '/assetpacks'