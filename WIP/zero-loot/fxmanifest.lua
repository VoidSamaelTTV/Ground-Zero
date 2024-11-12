fx_version 'cerulean'
game 'gta5'

author 'Your Name'
description 'DayZ-style Looting System for QBCore'
version '1.0.0'

shared_script 'config.lua'

server_script 'server/main.lua'
client_script 'client/main.lua'

dependencies {
    'qb-core',
    'qb-inventory',
    'qb-input'
}
