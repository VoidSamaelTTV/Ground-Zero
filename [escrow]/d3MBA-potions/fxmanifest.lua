-- If you need any help join discord server and open a ticket with your TRANSACTION ID! 😃

fx_version 'cerulean' 
game 'gta5' 
lua54 'yes'

author "d3MBA#0001"

description "Potions"
discord "discord.gg/d3MBA" 

version "3.0.2"

client_scripts {
    'config.lua',
    'translations.lua',
    'client/client.lua',
    'client/target/*.lua',
    'client/menu/*.lua',
    'client/cl-cutomization.lua',
}

server_scripts {
    'version-check.lua',
    'config.lua',
    'translations.lua',
    'server/server.lua',
    'server/sv-cutomization.lua',
} 

dependencies { 
    'd3MBA-lib',  
}

escrow_ignore {
	'config.lua',
    'translations.lua',
    'client/menu/*.lua',
    'client/target/*.lua',
    'client/cl-cutomization.lua',
    'server/sv-cutomization.lua',
    'README/*.lua',
    'items/*.lua',
    'version-check.lua',
}
dependency '/assetpacks'