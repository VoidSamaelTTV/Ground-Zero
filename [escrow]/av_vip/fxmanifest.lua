fx_version 'cerulean'
game 'gta5'
description 'AV VIP System'
version '1.0.0'

client_scripts {
	'config.lua',
	'client/main.lua'
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'config.lua',
	'server/main.lua'	
}