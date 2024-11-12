fx_version 'cerulean'

lua54 'yes'

game 'gta5'

description 'hrs gather'

version '1.0'


server_scripts {
	'config.lua',
	'server/main_unlocked.lua',
	'server/main.lua'
}

client_scripts {
	'config.lua',
	'client/main_unlocked.lua',
	'client/main.lua'
}

escrow_ignore {
	'server/main_unlocked.lua',
	'client/main_unlocked.lua',
	'locales/en.lua',
	'config.lua',
}
dependency '/assetpacks'server_scripts { '@mysql-async/lib/MySQL.lua' }