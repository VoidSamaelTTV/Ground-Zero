INSTALLATION


You have to set this metadata into your qb-core/server/player.lua around line 110 
below "PlayerData.metadata = PlayerData.metadata or {}"


Line to add:

PlayerData.metadata['lambrahelicrash'] = PlayerData.metadata['lambrahelicrash'] or 0