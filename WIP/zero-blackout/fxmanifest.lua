fx_version 'cerulean'
game 'gta5'

author 'Your Name'
description 'Power Restoration System with Blackout and Explosion Chance'
version '1.0.0'

-- Dependencies
dependency 'qb-core'
dependency 'qb-target'
-- dependency 'InteractSound' -- Ensure you have this resource if you want to play sounds

-- Shared scripts (both client and server)
shared_script 'config.lua'

-- Client scripts
client_scripts {
    'client.lua'
}

-- Server scripts
server_scripts {
    'server.lua'
}

-- Add any required files or assets
files {
    'sounds/restore_power_sound.ogg' -- Ensure you have this sound file in your resource folder
}

-- This is where you can specify any additional assets or files
data_file 'AUDIO_WAVEPACK' 'sounds/restore_power_sound.ogg'
