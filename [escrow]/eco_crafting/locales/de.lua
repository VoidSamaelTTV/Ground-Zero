local Translations = {
    --Professions:
    all = 'Rezeptbuch',
    chemist = 'Chemiker',
    cooking = 'Koch',
    weaponry = 'Waffenhersteller',
    handicraft = 'Handwerker',
    foundry = 'Gießerei',
    workstation = 'Arbeitsplatz',
    stat_screen_btn = 'Statistiken',
    craft_screen_btn = 'Rezepte',
    craft = 'Herstellen',
    search = 'Suchen...',
    select_product = 'Produkt auswählen',
    proficiency = 'Kompetenz',
    price = 'Preis',
    chance = 'Wahrscheinlichkeit',
    labor = 'Arbeitspunkte',
    ingredients = 'Zutaten',
    cancel = 'Abbruch',
    weight = 'Gewicht',
    cash = 'Geld',

    -- Ranks
    rank0 = '',
    rank1 = 'Novice',
    rank2 = 'Veteran',
    rank3 = 'Expert',
    rank4 = 'Master',
    rank5 = 'Authority',
    rank6 = 'Champion',
    rank7 = 'Adept',
    rank8 = 'Herald',
    rank9 = 'Virtuoso',
    rank10 = 'Celebrity',
    rank11 = 'Famed',

    -- Messages
    in_progress = '%{v1} / %{v2} %{v3} wird hergestellt...',
    use_workstation = '%{v1} benutzen: %{v2}',
    use_workstation_target = '%{v1} benutzen',
    not_in_the_workspace = 'Du bist nicht in der Arbeitszone',
    missing_data = 'fehlende Daten: Produkt / Stück',
    recipe_does_not_exist = 'Rezept existiert nicht',
    go_to_a_workstation = 'Du kannst das hier nicht erstellen. Besuche einen %{v1} Arbeitsbereich',
    only_special_workstation = 'Es kann nur in einem speziellen arbeitsbereich hergestellt werden',
    not_enough_money = 'Du hast nicht genug Geld',
    not_enough_materials = 'Du hast nicht genug Rohstoffe bei dir',
    not_enough_labor = 'Du hast nicht genug Arbeitspunkte!',
    not_enough_proficiency = 'Du hast nicht genug Kompetenz!',
    canceled = 'Dann lass uns ein anderes Mal darauf zurückkommen',
    in_loading = 'Wird geladen... Versuch es nochmal!',
    too_heavy = 'Es ist zu schwer, du kannst es nicht tragen!',
    not_enough_space = 'Du hast nicht genug Platz!',
    cant_work = 'So kannst du keine Rezepte anschauen!',
    item_remove_fail = 'UPPS! Irgendetwas stimmt nicht mit der Entnahme von Gegenständen...',
    production_rights_denied = 'Du kannst dieses Produkt nicht herstellen',
    you_have_been_injured = 'Du kannst nicht arbeiten',
    you_already_make_something = 'Herstellung läuft bereits...',
    no_hits = 'kein Treffer... :(',
    improper_workplace = 'Ungeeigneter Arbeitsplatz',
    labor_added = 'Du hast einen Arbeitspunkt erhalten',
    proficiency_added = 'Du hast Kompetenz gewonnen',
    not_possible = 'Nicht möglich',
    back = 'zurück',
    order_by = 'Reihenfolge:',
    damaged_while_making = '%{v1} Artikel wurde während der Produktion beschädigt',
    failed_due_to_a_chance = 'Aufgrund der Wahrscheinlichkeit gescheitert (Wahrscheinlichkeit: %{v1}%)',
    level_up = 'Professionelle Stufen!',
    tips = {
        tip1 = 'Deine Arbeitspunkte erhöhen sich alle 5 Minuten um 10 Punkte (offline auch)',
        tip2 = 'Der verwendete Arbeitspunkt erhöht deine Kompetenz',
        tip3 = 'Klick auf die grün umrandeten Zutaten, um ihre Rezepte zu sehen',
        tip4 = 'Einige Artikel erfordern einen speziellen Arbeitsplatz',
        tip5 = 'Arbeitspunkte leer? Du hast die Möglichkeit sie zu erhöhen',
        tip6 = 'Steiger deine Kompetenz, indem du einfachere Gegenstände herstellst',
        tip7 = 'Wenn du noch kein Rezeptbuch hast, besorg dir eines',
        tip8 = 'Das Fenster kann über die Kopfzeile verschoben werden',
        tip9 = 'Benutz den Suchfeld'
    },

    -- LOG
    condition_check = 'Bedingungen prüfen:',
    remove_money = 'Bezahlt:',
    remove_ingredients = 'Zutaten wegnehmen:',
    add_item = 'Übergabe des fertigen Produkts:',
    add_item_fail = 'Übergabe des fertigen Produkts fehlgeschlagen',
    increase_labor = 'Arbeitspunkte erhöhen:',
    player_stat = 'Statistik:',
    owner = 'Eigentümer',

    --portable workstations
    removal = 'Löschung: %{v1}',
    workstation_removal = 'Entfernen Sie den arbeitsbereich',
    workstation_placement = 'Platzierung der Arbeitsstation',
    workstation_cannot_be_removed = 'Dieser arbeitsplatz kann nicht entfernt werden',
    portable_item_does_not_exist = 'Tragbares element existiert nicht',
    no_more_portable_workstation = 'Sie können nicht mehrere arbeitsbereiche erstellen',
    another_workstation_is_too_close = 'Ein anderer arbeitsplatz ist zu nah',
    in_a_restricted_area = 'Gebietsschutz: Versuchen Sie es etwas weiter weg',
    restricted_area_visual_display = 'Eingeschränkte Bereichsanzeige:',
    workplace_data_copied_to_clipboard = 'Arbeitsplatzdaten in die zwischenablage kopiert',
    workstation_placed = 'Arbeitsplatz gebaut',
    workstation_removed = 'Sie haben den arbeitsplatz abgerissen',
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})