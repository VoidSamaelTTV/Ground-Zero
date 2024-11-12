
Config.ProgressBar = { 
    Crafting = "Crafting ",
    Refill = "Refilling bottle of water.", 
    UsingPotion = "Using "
}

Config.Notifications = {
    ["inc_experience"] = "Experience + ", 
    ["no_required_exp"] = "You dont have required experience to craft this potion!", 
    ["you_dont_have_everything"] = "You don't have everything you need!",
    ["already_have_effect"] = "You already have, effect!",
    ["invalid_amount"] = "Invalid amount!", 
    ["bought_item"] = "You purchased %sx %s for $%s.",
    ["you_dont_have_enough_money"] = "You do not have enough money - %s$",
    ["already_using_potion"] = 'You already using potion!',
    ["effect_over"] = "Effect is over",
    ["potion_crafted"] = "Crafted ",
    ["not_near_water"] = "You are not near water!",
    ["you_dont_have_empty_bottle"] = "You don't have empty bottle!",
    ["already_reffiling"] = "You are already reffiling bottle!",
    ["remove_mask_error"] = "You cannot wear/remove your gas mask while you crafting..."
 
}

Config.Menu = {
    ["shop"] = "Shop",
    ["shop_title"] = "Buy - %s",  -- %s = item label
    ["shop_context"] = "Price: $%s ", -- %s = price 
    ["potions"] = "Potions",
    ["potions_context"] = "Experience: %s", -- %s = experience 
    ["start_crafting"] = "Start crafting - %s", -- %s = item label
    ["crafting_menu"] = "Crafting Menu", 
    ["crafting_menu_context"] = "%s | 🧠 Required Experience: %s | ⌛ Crafting time %s seconds | 🗒️ Ingredients:", -- %s = description, -- %s = required experience and %s = crafting time
    ["crafting_context"] = "%s , Amount: %s", -- %s = item label, %s = amount 
    ["menu"] = "Menu",
    ["exit"] = "Exit",
    ["back"] = "Back",
}

Config.InputMenu = {
    ["enter_amount"] = "Enter amount of %s to buy", -- %s = item label 
    ["amount"] = "Amount?"
}

Config.TargetLabels = {
    ["shop"] = "Ingredients shop", 
    ["craft_potion"] = "Craft potion"
}

Config.TargetIcons = {
    ["shop"] = "fas fa-shopping-cart", 
    ["craft_potion"] = "fas fa-vial"
} 