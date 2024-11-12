fx_version 'cerulean'
game 'gta5'

author 'YourName'
description 'Simple Quest Script for QBCore'
version '1.0.0'

shared_script 'config.lua'
client_script 'client/main.lua'
server_script 'server/main.lua'

dependencies {
    'qb-core',
    'qb-target',
    'qb-menu'
}
