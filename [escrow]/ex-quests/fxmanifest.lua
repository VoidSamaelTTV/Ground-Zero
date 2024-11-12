fx_version 'cerulean'

games { 'gta5' }

client_scripts {
    'client/*.lua'
}

shared_scripts {
    'shared/*.lua'
}

server_scripts {
    'server/*.lua'
}
escrow_ignore {
  'shared/config.lua', -- Works for any file, stream or code
}
lua54 'yes'
dependency '/assetpacks'