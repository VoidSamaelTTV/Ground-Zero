fx_version "cerulean"
game "gta5"

author "Painkiller"
description "Hunted Graveyard Sound and Effects"
version "1.0.0"

dependency 'PolyZone'


files {
    'html/listener.js',
    'html/style.css',
    'html/reset.css',
    'html/index.html',
    'html/yeet.ogg',
}

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'client.lua',
}

ui_page (
    'html/index.html'
)

escrow_ignore {
    'stream/**/*.ytd',
}

lua54 'yes'
dependency '/assetpacks'