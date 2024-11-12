--Requirements:

-- [sounds-images]

--Add these 2 custom sounds into: interact-sound\client\html\sounds
--Add the shovel.png to your inventory images folder.

--Add this shovel item to qb-core/shared/items.lua

["shovel"] = {
    ["name"] = "shovel",
    ["label"] = "Shovel",
    ["weight"] = 5000,
    ["type"] = "item",
    ["image"] = "shovel.png",
    ["unique"] = false,
    ['useable'] = true,
    ["shouldClose"] = true,
    ["combinable"] = nil,
    ["description"] = "I can dig things with this.."
},