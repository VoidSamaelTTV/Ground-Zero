fx_version 'cerulean'
game 'gta5'

author 'Danzo'
description 'Advanced (Realistic) Fishing - Made by Danzo - Discord: https://discord.gg/8nFqCR4xVC'
version '1.1.8'

shared_script "config.lua"

client_scripts{
	'client/*.lua'
}

server_scripts{
	'@oxmysql/lib/MySQL.lua',
	'server/*.lua'
}

ui_page {
	'html/index.html'
}

files {
	'html/*.*',
}

escrow_ignore {
	'config.lua',
	'client/main.lua',
	'server/main.lua',
}

lua54 'yes'
dependency '/assetpacks'