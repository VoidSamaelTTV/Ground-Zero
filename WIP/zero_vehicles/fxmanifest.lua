fx_version 'cerulean'
game 'gta5'

author 'YourName'
description 'Weaponized vehicles require ammo to shoot'
version '1.0.0'

-- Specify the main scripts
client_scripts {
    'client/client.lua'
}

server_scripts {
    'server/server.lua'
}

shared_scripts {
    'shared/config.lua'
}

-- Optional: specify dependencies
dependency 'qb-core'
