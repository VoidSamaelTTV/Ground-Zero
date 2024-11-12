fx_version 'adamant'
game 'gta5'
description 'Ak47 QB Clothing As Item V2'
version '1.0.0'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'config.lua',
    'preset/*.lua',
    'server/utils.lua',
    'server/main.lua',

    "locales/locale.lua",
    "locales/en.lua",
}

client_scripts {
	'config.lua',
    'preset/*.lua',
    'client/utils.lua',
    'client/main.lua',

    "locales/locale.lua",
    "locales/en.lua",
}

escrow_ignore {
    'locales/*.lua',
    'config*.lua',
    'preset/*.lua',
    'server/utils.lua',
    'client/utils.lua',
    'INSTALL ME FIRST/**/*',
}

lua54 'yes'

dependencies {
    '/server:5181', -- requires at least server build 5181
}
dependency '/assetpacks'