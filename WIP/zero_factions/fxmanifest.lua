fx_version 'cerulean'
game 'gta5'

author 'YourName'
description 'QBCore Factions System'
version '1.0.0'

-- Dependencies
dependency 'qb-core'
dependency 'mysql-async'

-- Client scripts
client_scripts {
    'client/main.lua'
}

-- Server scripts
server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'server/main.lua'
}

-- Shared files
shared_script 'config.lua' -- If you have a config file, include it here

-- Ensure that you have qb-core and mysql-async resources in your server.
