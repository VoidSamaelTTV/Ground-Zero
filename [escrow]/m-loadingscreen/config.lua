Config = {}
-- For more info check https://codem.gitbook.io/codem-documentation/

Config.Theme = 'blvck' --  sky, blvck, cherry, kush, mango, proxima
Config.Logo = 'https://cdn.discordapp.com/attachments/1140787841610285158/1266526754382675968/Ground_Zero.png?ex=66a57875&is=66a426f5&hm=8077b2b7a7d6be1e07ba2d13cae22730987791b8cb6d1e80c4c586a77537c752&' -- Default or URL link
Config.BackgroundImage = 'background2.png' -- default or custom image/video
-- Backgrounds can be found in html/assets/background/
-- Config.BackgroundImage = 'background.png'
Config.PlayMusicByDefault = true -- if true plays the music when loading screen is active

--html\assets\music
Config.Musics = {
    "music.mp3",

}

-- To display on left menu (must be an image)
-- Supports max 2 images
Config.AlbumsThumbnail = {
    {
        source = 'https://cdn.discordapp.com/attachments/1133453937459068979/1248066285216989235/SPOILER_fobmemphis.jpeg?ex=66a7868e&is=66a6350e&hm=f5ff37c00af9281c1bfafb3585496931e88ab716bd7b29cbc0eb6fa162b2c1a0&', -- Must be a link
    },
    {
        source = 'https://cdn.discordapp.com/attachments/1133453937459068979/1176314578204893225/SPOILER_Screenshot_2023-11-20_180913.png?ex=66a78792&is=66a63612&hm=5a5437b940188c88e14caa95e3f25a30bb44109915df8caa89812ad395e270d6&', -- Must be a link
    }
}

Config.Albums = {
    {
        source = 'https://cdn.discordapp.com/attachments/1133453937459068979/1176314577886134403/SPOILER_Screenshot_2023-11-20_180814.png?ex=66a78792&is=66a63612&hm=1e01633326cd61c564defd92338b9e5a74f49ca0c217efa7ae8531c09d1d4d46&', -- Must be a link
    },
    {
        source = 'https://cdn.discordapp.com/attachments/1133453937459068979/1176314577567354921/SPOILER_Screenshot_2023-11-20_180740.png?ex=66a78792&is=66a63612&hm=7aad82451ab18fa524822ae395e7c7a10514d99ee54fd420bd7a30287e59f512&'  -- Must be a link
    }
}


Config.EnableHintMessages = true
Config.HintMessages = {
    {
        text= 'You can sell/buy items at the Galileo Safezone',
        time= 8000,
    },
    {
        text= 'Dont forget heals! Pack bandages, IFAKS or whatever medical supplies you can find before exploring.',
        time= 3000,
    },
    {

        text= 'A suppressor will give you the advantage. Otherwise, you will attrack walkers.',
        time= 1000,
    }
}


Config.ButtonLinks = {
    ["twitter"] = 'https://twitter.com',
    ["instagram"] = 'https://www.instagram.com/',
    ["reddit"] = 'https://www.reddit.com/',
    ["discord"] = 'https://discord.gg/zj3QsUfxWs',
}

Config.ServerName = 'Ground Zero'

Config.Language = {
    ["WELCOME"] = 'WELCOME TO',
    ["INSIDE_CITY"] = 'Inside The Server',
    ["FOOTAGES"] = 'Latest footages from the server.',
    ["PATCH_NOTES"] = 'Patch Notes',
    ["PATCH_NOTES_VERSION"] = 'Patch Notes v1.0',
    ["LATEST_UPDATES"] = 'Latest updates...',
    ["FOLLOW_CITY"] = 'Follow the server on social!',


    ["CITY_LOADING"] = 'Please wait, the server is loading...',
    ["SETTINGS"] = 'Settings',
    ["ENABLE_MUSIC"] = 'Enable music',
    ["SHOW_MENU"] = 'Show left menu',
    ["SHOW_HINT"] = 'Show hint',
    ["SHOW_ALL"] = 'Show all UI',



    ["KEYBINDS_INFO"] = 'Please click a highlighted key to see binding on the right panel.',
    ["KEYBINDS_INFO_2"] = 'Some keybindings can be changed from in game settings. To change them',
    ["GO_TO"] = 'go to',
    ["FIVEM_SETTINGS"] = 'ESC>Settings>Keybindings>FiveM',
    ["PRESS"] = 'Press',
    ["DOUBLE_PRESS"] = 'Double Press',
    ["COMBINATIONS"] = 'Combinations',
    ["KEYBINDS_INFO_3"] = 'Please click on a key to display binding.',
    ["KEYBINDS_INFO_4"] = 'Be aware that those are settings commands and there are many more commands in game.',

    ["COMMANDS"] = 'Commands',
    ["SHOW_ALL_UI"] = 'Show All Commands',
    ["SELECT_COMMAND"] = 'Please select a command',
    ["DISPLAY_BINDING"] = 'display binding',
    ["COMMANDS_INFO"] = 'Please click on a command to see the function on the right panel.',
    ["HINT"] = 'Hint',

}

Config.PatchNotes = {
    "Added cash as item.",
    "Added death location marker.",
    "Added weapon recoil",
    "Added keycard locations",
}

Config.Keybinds = {
    ["ESC"] = false,
    ["F1"] = {
        ["pressInfo"] = 'Opens the phone',
        ["doublePressInfo"] = false,
    },
    ["F2"] = false,
    ["F3"] = false,
    ["F4"] = false,
    ["F5"] = false,
    ["F6"] = {
        ["pressInfo"] = 'Opens the job interaction menu',
    },
    ["F7"] = false,
    ["F8"] = false,
    ["F9"] = false,
    ["F10"] = false,
    ["F11"] = false,
    ["F12"] = false,
    ["“"] = false,
    ["1"] = {
        ["pressInfo"] = 'Inventory hot key',
    },
    ["2"] = {
        ["pressInfo"] = 'Inventory hot key',

    },
    ["3"] = {
        ["pressInfo"] = 'Inventory hot key',

    },
    ["4"] = {
        ["pressInfo"] = 'Inventory hot key',

    },
    ["5"] = {
        ["pressInfo"] = 'Inventory hot key',

    },
    ["6"] = false,
    ["7"] = false,
    ["8"] = false,
    ["9"] = false,
    ["0"] = false,
    ["-"] = false,
    ["+"] = false,
    ["BACKSPACE"] = false,
    ["TAB"] = false,
    ["Q"] = false,
    ["W"] = false,
    ["E"] = false,
    ["R"] = false,
    ["T"] = {
        ["pressInfo"] = 'Opens the chat',
    },
    ["Y"] = false,
    ["U"] = false,
    ["I"] = false,
    ["O"] = false,
    ["P"] = false,
    ["["] = false,
    ["]"] = false,
    ["ENTER"] = {
        ["pressInfo"] = 'Opens the chat',
    },
    ["CAPS"] = false,
    ["A"] = false,
    ["S"] = false,
    ["D"] = false,
    ["F"] = false,
    ["G"] = false,
    ["H"] = false,
    ["J"] = false,
    ["K"] = false,
    ["L"] =  {
        ["pressInfo"]=  'Locks the vehicle',
        ["doublePressInfo"]=  'Opens the remote UI.',
    },
    [";"] =  false,
    ["@"] =  false,
    ["LSHIFT"] =  {
        ["pressInfo"] = 'Run',
        ["doublePressInfo"] = false,
        ["combinations"] = {
            {
                ["key"] = 'E',
                ["info"] = 'Tackle',
            },
            {
                ["key"] = 'H',
                ["info"] = 'Push vehicle',
            },
            {
                ["key"] = 'G',
                ["info"] = 'Carry on arm',
            },
        },
    },
    ["Z"] =  false,
    ["X"] =  false,
    ["C"] =  false,
    ["V"] =  false,
    ["B"] =  false,
    ["N"] =  false,
    ["M"] =  false,
    ["<"] =  false,
    [">"] =  false,
    ["?"] =  false,
    ["RSHIFT"] =  false,
    ["LCTRL"] =  false,
    ["ALT"] =  false,
    ["SPACE"] = false,
    ["ALTGR"] = false,
    ["RCTRL"] = false,
}
-- add only 2 commands here
Config.PreviewCommands = {
    ["hud"]= 'Opens hud settings.',
    ["notify"]= 'Opens notify settings.',
}

Config.Commands = {
    ["hud"]= 'Opens hud settings.',
    ["notify"]= 'Opens notify settings.',
    ["inventoryfix"]= 'Fixes inventory UI.',
    ["radialfix"]= 'Fixes radial menu UI.',
    ["report"]= 'Opens report menu.',
    ["kill"]= 'Kills the player with specified id.',
    ["admin"]= 'Opens admin menu.',
    ["emotes"]= 'Opens emotes menu.',
    ["pet"]= 'Opens pet menu.',
    ["mdt"]= 'Opens mdt.',
    ["repair"]= 'Fixes the vehicle you are driving.',
}



