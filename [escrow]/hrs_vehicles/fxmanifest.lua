fx_version 'cerulean'

lua54 'yes'

game 'gta5'

description 'desc'

version '1.0'

client_scripts {
	'config.lua',
	'opensource/ESX_client.lua',
	'opensource/QB_client.lua',
	'opensource/client.lua',
	'escrow/client.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'config.lua',
	'opensource/ESX_server.lua',
	'opensource/QB_server.lua',
	'opensource/server.lua',
	'escrow/server.lua'
}

escrow_ignore {
	'@oxmysql/lib/MySQL.lua',
	'config.lua',
	'opensource/ESX_server.lua',
	'opensource/QB_server.lua',
	'opensource/ESX_client.lua',
	'opensource/QB_client.lua',
	'opensource/client.lua',
	'opensource/server.lua'
}



dependency '/assetpacks'