Config = {}

Config.inventory = false --- 'default_esx' or 'core_inventory' or 'ox_inventory' or 'qs-inventory', for any other inventories you can make it Config.inventory = false

Config.deadBagTime = 30 ------ how much time the bag will keep on the ground after you died (minutes)

Config.BagModel = 'ba_prop_battle_bag_01b'

Config.BagPos = vector3(0.40, 0, 0)

Config.BagRot = vector3(0, 270.0, 60.0)

Config.Bone = 57005

Config.UsePressE = false

Config.itemsNotLoose = {
  --  ['book'] = true,
} --- items in this list will not drop on the bag

Config.UseProgressBar = true -- if false progressbar will not be used

Config.ProgressBars = {
    ["bag_check"] = {
        duration = 500,
        label = "Searching Bag...",
        animation = {
            animDict = 'amb@prop_human_bum_bin@base',
            anim = 'base'
        }
    },
}

Config.Locales = {
	["get_all"] = "Get All Items",
	["click_get_item"] = "Click to get item",
	["click_get_items"] = "Click to get all item"
}

Config.Framework = nil
Config.UseTargetExport = nil
--------------------------------------
if GetResourceState('es_extended') ~= 'missing' then 
    Config.Framework = "ESX"
elseif GetResourceState('qb-core') ~= 'missing' then 
    Config.Framework = "QB"
else
    print("[^3WARNING^7] NO COMPATIBLE FRAMEWORK FOUND")
end

if GetResourceState('ox_target') ~= 'missing' or GetResourceState('qtarget') ~= 'missing' then 
    Config.UseTargetExport = 'qtarget'
elseif GetResourceState('qb-target') ~= 'missing' then 
    Config.UseTargetExport = "qb-target"
else
    print("[^3WARNING^7] NO TARGET SCRIPT FOUND")
end

