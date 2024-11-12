fx_version 'cerulean'
game 'gta5'

author 'Your Name'
description 'QB Intel Resource'
version '1.0.0'

-- Specify the resource manifest
resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

-- Client scripts
client_scripts {
    -- 'client.lua',
    'config/main.lua'  -- Assuming config.lua is used client-side for reference
}

-- Server scripts
server_script 'server/main.lua'

-- -- Shared scripts (if any)
-- -- shared_script 'shared.lua'

-- -- Specify UI/Interface files, if any
-- ui_page 'ui/index.html'
-- files {
--     'ui/index.html',
--     'ui/style.css',
--     'ui/script.js'
-- }

-- Dependencies (optional)
-- dependencies {
--     'qb-core',  -- Example dependency, uncomment and replace with your actual dependencies
--     'other-resource'
-- }

-- Example usage of exports (if needed)
-- exports {
--     'Function1',
--     'Function2'
-- }
