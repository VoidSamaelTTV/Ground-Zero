fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name "um-tutorial"
description "Tutorial Script for FiveM"
author "uyuyorum store"
version "1.0.1"

shared_scripts {
	'@ox_lib/init.lua',
	'utils/*.lua',
	'config.lua'
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua'
}

ui_page 'web/build/index.html'

files {
	'web/build/**'
}

escrow_ignore {
	'config.lua',
	'utils/*.lua',
	'server/event.lua'
}
dependency '/assetpacks'