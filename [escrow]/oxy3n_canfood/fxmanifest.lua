fx_version 'cerulean'
game {'gta5'}
lua54 'yes'

version '1.0.0'
description 'OXY3N STUDIO - Can Food'
author 'OXY3N STUDIO'
website 'https://oxy3n-studio.tebex.io'

escrow_ignore {
    'stream/*.ytd',
    'images/*.png',
    'images/*.jpg',
    'readme.md'
}

server_scripts {
    'server/s_versioncheck.lua',
}

file {
    '*.ytyp'
}

data_file 'DLC_ITYP_REQUEST' 'stream/e_food_can.ytyp'


dependency '/assetpacks'