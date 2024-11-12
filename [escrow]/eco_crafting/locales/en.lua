local Translations = {
    --Professions:
    all = 'Recipe Book',
    chemist = 'Chemistry',
    cooking = 'Cooking',
    weaponry = 'Weaponry',
    weapon_upgrade = 'Weapon Upgrade',
    handicraft = 'Handicraft',
    foundry = 'Foundry',
    workstation = 'Workstation',
    stat_screen_btn = 'Statistics',
    craft_screen_btn = 'Recipes',
    craft = 'Craft',
    search = 'Searching...',
    select_product = 'Select a product',
    proficiency = 'Proficiency',
    price = 'Price',
    chance = 'Chance',
    labor = 'Labor',
    ingredients = 'ingredients',
    cancel = 'Cancel',
    weight = 'Weight',
    cash = 'Cash',

    -- Ranks
    rank0 = '',
    rank1 = 'Novice', -- Begginer
    rank2 = 'Veteran', -- Novice
    rank3 = 'Expert', -- Hobbyist
    rank4 = 'Master', -- Apprentice
    rank5 = 'Authority', -- Initiate
    rank6 = 'Champion', -- Skilled
    rank7 = 'Adept', -- Adept
    rank8 = 'Herald', -- Craftsman
    rank9 = 'Virtuoso', -- Master
    rank10 = 'Celebrity', -- Genius
    rank11 = 'Famed', -- Prodigy

    -- Messages
    in_progress = 'Crafting %{v1} / %{v2} %{v3}',
    use_workstation = 'Use %{v1} station: %{v2}',
    use_workstation_target = 'Use %{v1} station',
    not_in_the_workspace = 'You are too far away from a workstation!',
    missing_data = 'Missing data: Item / Amount',
    recipe_does_not_exist = 'This recipe does not exist',
    go_to_a_workstation = 'You can\'t make this here. Look for a %{v1} station',
    only_special_workstation = 'This can only be made at a Special Workstation!',
    not_enough_money = 'Not enough money!',
    not_enough_materials = 'Not enough materials!',
    not_enough_labor = 'Not enough labor!',
    not_enough_proficiency = 'You aren\'t proficient enough!',
    canceled = 'Let\'s get back to this later...',
    in_loading = 'Loading... Try again later!',
    too_heavy = 'You are over-encumbered!',
    not_enough_space = 'Not enough space!',
    cant_work = 'You can\'t browse at the moment!',
    item_remove_fail = 'OPPS! Something went wrong during the item removal...',
    production_rights_denied = 'You can\'t make this product!',
    you_have_been_injured = 'You can\'t craft in this state!',
    you_already_make_something = 'You are already crafting something...',
    no_hits = 'no hits... :(',
    improper_workplace = 'Improper workplace',
    labor_added = 'Labor gained',
    proficiency_added = 'Proficiency increased',
    not_possible = 'Not possible',
    back = 'back',
    order_by = 'Order by:',
    damaged_while_making = '%{v1} object damaged while making',
    failed_due_to_a_chance = 'Failed due to a chance (chance: %{v1}%)',
    level_up = 'You\'ve been promoted in your profession!',
    tips = {
        tip1 = 'Your labor point increases with 10 points every 5 minutes.(Even if offline)',
        tip2 = 'The spent labor point will increase your proficiency',
        tip3 = 'Click on the green bordered ingredients to get It\'s recipe',
        tip4 = 'Some items require a special workstation',
        tip5 = 'Did you run out of your labor points? There is an opportinity to increase it!',
        tip6 = 'Increase your proficiency by crafting simple items',
        tip7 = 'If you don\'t have a recipe book yet, you should consider to get one',
        tip8 = 'You can move the crafting window by dragging the header',
        tip9 = 'To find you desired recipe try using the search field'
    },

    -- LOG
    condition_check = 'Condition check:',
    remove_money = 'Pay:',
    remove_ingredients = 'Remove ingredients:',
    add_item = 'Add item:',
    add_item_fail = 'Add item failed',
    increase_labor = 'Increase labor points:',
    player_stat = 'Stat:',
    owner = 'Owner',

    --portable workstations
    removal = 'Removal: %{v1}',
    workstation_removal = 'Remove a workstation',
    workstation_placement = 'Workstation placement',
    workstation_cannot_be_removed = 'This workstation cannot be removed',
    portable_item_does_not_exist = 'Portable item does not exist',
    no_more_portable_workstation = 'You cannot create more workspaces',
    another_workstation_is_too_close = 'Another workplace is too close',
    in_a_restricted_area = 'Territory protection: try a little further away',
    restricted_area_visual_display = 'Restricted are display:',
    workplace_data_copied_to_clipboard = 'Workplace data copied to clipboard',
    workstation_placed = 'Workplace prepared',
    workstation_removed = 'You demolished the workplace',
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})