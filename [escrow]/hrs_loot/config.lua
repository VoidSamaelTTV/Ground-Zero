Config = {}

Config.animalLoot = true ------ loot animals

Config.lootRefreshTime = 60 ------ refresh minutes for prop loot

Config.UseProgressBar = true ------ use progress bar

Config.DistanceCheckProtection = 10.0 ----- security reasons

Config.UsePressE = false --- if true you will use press E to search dead animals and dead peds instead of target i don't - much worst performance than target

Config.ProgressBars = {
    ["animal_interact"] = {
        duration = 2000,
        label = "Slaughtering animal",
        animation = {
            animDict = 'amb@prop_human_bum_bin@base',
            anim = 'base'
        }
    },
    ["prop_interact"] = {
        duration = 2000,
        label = "Searching Object",
        animation = {
            animDict = 'amb@prop_human_bum_bin@base',
            anim = 'base'
        }
    },
    ["zombie_interact"] = {
        duration = 2000,
        label = "Searching Zombie",
        animation = {
            animDict = 'amb@prop_human_bum_bin@base',
            anim = 'base'
            -- animDict = 'anim@gangops@facility@servers@bodysearch@',
            -- anim = 'player_search',
            -- flags = 16
        }
    }
}

Config.moneyLabel = "Cash" --- you can edit the accounts on the open source side of the code in the server side of your Framework


---- PLEASE DON'T USE WORD 'DELETE' or 'PROP' when making this loot types

Config.types = {
    ["zombie_default"] = {
        fixedLoots = {}, -- can be empty
        probabilityLoots = {
            loop = 3, ----- each loop an item from the list bellow will be chosen
            items = {
                {names = {'money'},minValue = 10,maxValue = 100,probability = 15}, -------- there is 50% chance of getting a number from 5 to 20 of money and there is 100 - 50 - 20 = 30% -- 30% chance of getting nothing      
                {names = {'bandage','ifaks'},minValue = 1,maxValue = 2,probability = 5}, -------- there is 50% chance of getting a number from 5 to 20 of money and there is 100 - 50 - 20 = 30% -- 30% chance of getting nothing      
                {names = {'pistol_ammo','smg_ammo','shotgun_ammo','rifle_ammo'},minValue = 1,maxValue = 1,probability = 5}, -------- there is 50% chance of getting a number from 5 to 20 of money and there is 100 - 50 - 20 = 30% -- 30% chance of getting nothing      
                {names = {'weapon_bat', 'weapon_bottle', 'weapon_crowbar', 'weapon_flashlight', 'weapon_golfclub', 'weapon_hammer', 'weapon_hatchet', 'weapon_knuckle', 'weapon_knife', 'weapon_machete', 'weapon_switchblade', 'weapon_nightstick', 'weapon_wrench', 'weapon_poolcue', 'weapon_stone_hatchet'},minValue = 1,maxValue = 1,probability = 5},
                {names = {'coffee', 'ecola', 'tea', 'sprunk', 'tomato', 'cucumber', 'potato', 'watermelon', 'eggplant', 'strawberry', 'onion', 'eggsandwich', 'tunasandwich', 'hamsandwich', 'egochaser', 'psnqs', 'meteorite'},minValue = 1,maxValue = 1,probability = 5},   
                {names = {'electronickit', 'fitbit', 'binoculars', 'lighter', 'ducttape', 'radio'},minValue = 1,maxValue = 1,probability = 5},       
                {names = {'hinterland_duffle', 'leather_duffle', 'chianski_duffle', 'bandit_pack', 'black_sports_bag', 'chinook_lifesaver_bag', 'ranch_assault_pack', 'rush_24_bag', 'moab_rush_tactical_bag', 'burgen_bag'},minValue = 1,maxValue = 1,probability = 1},      
                {names = {'mens_black_beanie', 'mens_white_beanie', 'mens_white_golf_cap', 'mens_black_golf_cap', 'mens_blue_golf_cap', 'mens_red_golf_cap', 'mens_green_golf_cap', 'mens_yellow_golf_cap', 'mens_black_fedora', 'mens_white_fedora', 'mens_blue_fedora', 'mens_black_cowboy_hat_1', 'mens_white_cowboy_hat_1', 'mens_white_bandana_headwrap', 'mens_black_bandana_headwrap', 'mens_blue_bandana_headwrap', 'mens_green_bandana_headwrap', 'mens_purple_bandana_headwrap', 'mens_camo_bandana_headwrap', 'mens_yellow_bandana_headwrap', 'mens_black_headphones', 'mens_red_headphones', 'mens_blue_headphones', 'blue_chopper_helmet', 'orange_chopper_helmet', 'red_chopper_helmet', 'black_chopper_helmet', 'pink_chopper_helmet', 'white_chopper_helmet', 'mens_green_bucket_hat', 'mens_white_bucket_hat', 'mens_red_bucket_hat', 'mens_floral_bucket_hat', 'mens_camo_bucket_hat', 'bmx_helmet', 'black_motorcycle_helmet_1', 'families_hat', 'ballas_hat', 'red_broker_hat', 'black_broker_hat', 'orange_sweatbox_hat', 'camo_yeti_hat', 'securoserv_cap', 'black_roadster_helmet', 'red_roadster_helmet', 'patriot_roadster_helmet', 'green_roadster_helmet', 'native_roadster_helmet', 'black_skater_helmet', 'white_shrewsbury_cap', 'black_shrewsbury_cap', 'white_vom_feuer', 'ammunation_cap', 'warstock_cap', 'burgershot_hat', 'cluckin_bell', 'white_diamond_casino_cap', 'black_diamond_casino_cap', 'red_diamond_casino_cap', 'yellow_hard_hat', 'orange_hard_hat', 'white_hard_hat', 'blue_hard_hatsprunk_cap', 'ecola_cap','pig_mask','pig_mask','pogo_mask','hockey_mask','red_demon_mask','black_demon_mask','santa_mask','reindeer_mask','snowman_mask','metal_warrior_mask','cat_mask','fox_mask','owl_mask','racoon_mask','bear_mask','wolf_mask','black_skeletal_mask','gray_skeletal_mask','charcoal_skeletal_mask','tan_skeletal_mask','green_skeletal_mask','torture_hockey_mask','penguin_mask','tactical_balaclava','scruffy_balaclava','gas_mask','pink_infected_mask','brown_infected_mask','white_mummy_mask','green_mummy_mask','pale_frank_mask','impotent_rage_mask','princess_robot_bubblegum_mask','moorehead_mask','combat_gas_mask','crime_scene_mask','hazard_mask','gray_tape_mask','white_tape_mask','upnatom_mask','manic_mask','black_face_bandana','skull_face_bandana','white_face_bandana','tan_face_bandana','forest_face_bandana','families_face_bandana','ballas_face_bandana','vagos_face_bandana','black_ski_mask','white_ski_mask','green_ski_mask','forest_ski_mask','skull_ski_mask','black_tshirt_mask','white_tshirt_mask','tan_tshirt_mask','woodland_tshirt_mask','pink_tshirt_mask','worn_ski_mask','black_knit_balaclava','orange_knit_balaclava','brown_knit_balaclava','woodland_knit_balaclava','white_knit_balaclava','pink_knit_balaclava','red_knit_balaclava','werewolf_mask','clown_mask','orange_bigness_facemask','blue_bigness_facemask','pink_bigness_facemask','yellow_bigness_facemask','zebra_bigness_facemask','white_snake_skull','brown_headscarf','teal_headscarf','green_headscarf','yellow_headscarf','turquoise_headscarf','brown_digital_headscarf','yellow_pattern_headscarf','orange_pattern_headscarf','red_pattern_headscarf','blue_pattern_headscarf','splinter_headscarf','brown_wrapped_headscarf','teal_wrapped_headscarf','green_wrapped_headscarf','yellow_wrapped_headscarf','turquoise_wrapped_headscarf','brown_digital_wrapped_headscarf','red_pattern_wrapped_headscarf','weapon_pattern_wrapped_headscarf','blue_pattern_wrapped_headscarf','splinter_wrapped_headscarf','orange_wrapped_headscarf','peach_camo_wrapped_headscarf','brushstroked_wrapped_headscarf','purple_pattern_wrapped_headscarf','brown_snood','teal_snood','green_snood','yellow_snood','turquoise_snood','brown_digital_snood','orange_pattern_snood','peach_digital_snood','blue_pattern_snood','purple_pattern_snood','yellow_pattern_snood','splinter_snood','red_pattern_snood','weapon_pattern_snood','peach_camo_snood','brushstroke_snood','piggly_maskpiggly_mask','grinner_mask','fluffy_rabbit_mask','sniper_mask','mens_white_vneck', 'mens_gray_vneck', 'mens_yellow_vneck', 'mens_red_vneck', 'mens_navy_vneck', 'mens_white_track_jacket', 'mens_gray_track_jacket', 'mens_blue_track_jacket', 'mens_navy_track_jacket', 'mens_red_track_jacket', 'mens_green_track_jacket', 'mens_orange_track_jacket', 'mens_yellow_track_jacket', 'mens_purple_track_jacket', 'mens_brown_track_jacket', 'mens_beige_track_jacket', 'mens_black_suit_jacket', 'mens_red_suit_jacket', 'mens_gray_suit_jacket', 'mens_navy_suit_jacket', 'mens_luxury_suit_jacket', 'mens_black_leather_jacket', 'mens_red_leather_jacket', 'mens_brown_leather_jacket', 'mens_white_unzipped_hoodie', 'mens_gray_unzipped_hoodie', 'mens_black_unzipped_hoodie', 'mens_blue_unzipped_hoodie', 'mens_navy_unzipped_hoodie', 'mens_red_unzipped_hoodie', 'mens_green_unzipped_hoodie', 'mens_orange_unzipped_hoodie', 'mens_yellow_unzipped_hoodie', 'mens_purple_unzipped_hoodie', 'mens_camo_unzipped_hoodie', 'mens_threequarter_raglan_sleeve', 'mens_camo_tshirt', 'mens_white_vneck_longsleeve', 'green_flight_jacket', 'junk_motorcross_shirt', 'beige_hoodie', 'alien_hoodie', 'red_plain_polo', 'families_letterman', 'mens_happymoon_tshirt', 'zebra_tshirt', 'lovefist_shirt', 'hinterland_hoodie', 'gray_digital_combat_shirt', 'fall_combat_shirt', 'pink_camo_yeti_denim', 'zebra_striped_denim', 'camo_yeti_shirt', 'gray_camo_yeti_shirt', 'downtown_cabco_shirt', 'camo_yeti_jacket', 'smoking_jacket', 'white_tshirt', 'yeti_windbreaker', 'green_palms_revere', 'blush_palms_revere', 'charcoal_floral_revere', 'charcoal_palms_revere', 'pink_palms_revere', 'cool_sunset_revere', 'warm_sunset_revere','pineapple_revere', 'black_revere', 'gray_revere', 'white_revere', 'red_floral_revere', 'black_vinyl', 'gray_vinyl', 'ash_vinyl', 'white_vinyl', 'red_vinyl', 'scarlet_vinyl', 'dark_green_vinyl', 'orange_vinyl', 'chestnut_vinyl', 'darknut_vinyl', 'black_vinyl_cut', 'gray_vinyl_cut', 'ash_vinyl_cut', 'white_vinyl_cut', 'scarlet_vinyl_cut', 'dark_green_vinyl_cut', 'red_vinyl_cut', 'orange_vinyl_cut', 'chestnut_vinyl_cut', 'darknut_vinyl_cut', 'black_vneck_longsleeve', 'gray_vneck_longsleeve', 'ash_vneck_longsleeve', 'highroller_cut', 'highroller_vinyl', 'black_motorcycle_jacket', 'ash_motorcycle_jacket', 'gray_motorcycle_jacket', 'white_motorcycle_jacket', 'scarlet_motorcycle_jacket', 'dark_green_motorcycle_jacket', 'red_motorcycle_jacket', 'orange_motorcycle_jacket', 'blue_motorcycle_jacket', 'leather_grenader_cut', 'leather_grenader_vinyl', 'leather_grenader_jacket', 'tiger_vinyl_cut', 'tiger_vinyl', 'green_flight_jacket', 'black_combat_top', 'gray_combat_top', 'charcoal_combat_top', 'forest_combat_top', 'black_combat_sweater', 'gray_combat_sweater', 'charcoal_combat_sweater', 'tan_combat_sweater', 'forest_combat_sweater', 'black_battle_vest', 'gray_battle_vest', 'beige_battle_vest', 'forest_battle_vest', 'black_flight_jacket', 'lspd_patrol_shirt', 'worn_shirt', 'loose_zipped_hoodie', 'gray_scruffy_jacket', 'beige_scruffy_jacket', 'black_scruffy_jacket', 'cayote_tactical_fleece', 'green_tactical_fleece', 'black_tactical_fleece', 'black_hooded_jacket', 'gray_hooded_jacket', 'charcoal_hooded_jacket', 'red_hooded_jacket', 'blue_hooded_jacket', 'tan_hooded_jacket', 'beige_detail_battle_shirt', 'khaki_detail_battle_shirt', 'navy_quilted_jacket', 'white_silk_jacket', 'black_silk_jacket', 'red_silk_jacket', 'blue_silk_jacket', 'brown_silk_jacket', 'red_smoking_jacket', 'navy_smoking_jacket', 'burgundy_smoking_jacket', 'black_smoking_jacket', 'green_smoking_jacket', 'brown_smoking_jacket', 'demon_tracksuit_top', 'charcoal_tracksuit_top', 'navy_tracksuit_top', 'teal_tracksuit_top', 'green_riding_jacket', 'orange_riding_jacket', 'purple_riding_jacket', 'pink_riding_jacket', 'red_riding_jacket', 'blue_riding_jacket', 'white_riding_jacket', 'black_riding_jacket', 'white_hinterland_polo', 'navy_hinterland_polo', 'black_hinterland_polo', 'hinterland_worsk_shirt', 'green_football_jersey', 'orange_football_jersey', 'purple_football_jersey', 'pink_football_jersey', 'red_football_jersey', 'blue_football_jersey', 'black_football_jersey', 'white_football_jersey', 'securoserv_bomber', 'libery_polo', 'black_liberty_hoodie', 'red_liberty_hoodie', 'flying_bravo_hoodie', 'golf_shirt', 'chocolate_leather_field_jacket', 'black_leather_field_jacket', 'brown_leather_field_jacket', 'tucked_turtle_neck','green_flight_pants', 'black_combat_pants', 'red_long_johns', 'black_heist_pants', 'black_battle_pants', 'black_regular_suit_pants', 'trash_pants', 'loose_bugstar_pants', 'bugstar_pants', 'black_flight_pants', 'tan_battle_pants', 'khaki_battle_pants', 'tan_utility_pants', 'white_continental_pants', 'navy_continental_pants', 'white_continental_slim_pants', 'navy_continental_slim_pants', 'red_shiny_pants', 'blue_shiny_pants', 'black_shiny_pants', 'green_shiny_pants', 'gold_print_pants', 'red_fitted_shiny_pants', 'blue_fitted_shiny_pants', 'black_fitted_shiny_pants', 'green_fitted_shiny_pants', 'gold_print_fitted_pants', 'black_tracksuit_pants', 'charcoal_tracksuit_pants', 'navy_tracksuit_pants', 'teal_tracksuit_pants', 'green_heist_pants', 'blue_tracksuit_pants', 'burgundy_tracksuit_pants', 'tan_tracksuit_pants', 'royal_blue_tracksuit_pants', 'red_tracksuit_pants', 'light_blue_tracksuit_pants', 'orange_tracksuit_pants', 'purple_tracksuit_pants', 'gray_tracksuit_pants', 'green_tracksuit_pants', 'white_tracksuit_pants','black_flight_boots', 'black_tactical_boots', 'black_scruffy_boots', 'golden_hi_tops', 'calypso_runners', 'fresh_runners', 'jinx_runners', 'animal_runners', 'desert_tactical_boots', 'sage_tactical_boots', 'sienna_leather_loafers', 'orange_leather_loafers', 'brown_leather_loafers', 'black_leather_loafers', 'all_black_cowboy_boots', 'sienna_cowboy_boots', 'cream_cowboy_boots', 'brown_cowboy_boots', 'black_cowboy_boots', 'lo_all_black_cowboy_boots', 'lo_sienna_cowboy_boots', 'lo_cream_cowboy_boots', 'lo_brown_cowboy_boots', 'lo_black_cowboy_boots'},minValue = 1,maxValue = 1,probability = 10},
                {names = {'lockpick','firstaid'},minValue = 1,maxValue = 1,probability = 1},                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
            } ---- the sum of all the probabilities on this list can't be bigger than 100% ---- 20 + 50 = 70% => 70% < 100% so is all good
        } -- is optional
    },

    ["bossZombie"] = {
        fixedLoots = {},
        probabilityLoots = {
            loop = 4,
            items = {
                {names = {'money'},minValue = 100,maxValue = 1000,probability = 20}, -------- there is 50% chance of getting a number from 5 to 20 of money and there is 100 - 50 - 20 = 30% -- 30% chance of getting nothing      
                {names = {'weapon_bat', 'weapon_bottle', 'weapon_crowbar', 'weapon_flashlight', 'weapon_golfclub', 'weapon_hammer', 'weapon_hatchet', 'weapon_knuckle', 'weapon_knife', 'weapon_machete', 'weapon_switchblade', 'weapon_nightstick', 'weapon_wrench', 'weapon_poolcue', 'weapon_stone_hatchet'},minValue = 1,maxValue = 1,probability = 10},
                {names = {'tosti', 'twerks_candy', 'snikkel_candy', 'sandwich', 'water_bottle', 'coffee', 'kurkakola', 'bandage', 'painkillers', 'multivitamins'},minValue = 1,maxValue = 1,probability = 15},   
                {names = {'electronickit', 'fitbit', 'binoculars', 'lighter', 'ducttape', 'radio'},minValue = 1,maxValue = 1,probability = 10},   
                {names = {'hinterland_duffle', 'leather_duffle', 'chianski_duffle', 'bandit_pack', 'black_sports_bag', 'chinook_lifesaver_bag', 'ranch_assault_pack', 'rush_24_bag', 'moab_rush_tactical_bag', 'burgen_bag'},minValue = 1,maxValue = 1,probability = 5},      
                {names = {'black_plate_carrier', 'charcoal_plate_carrier', 'ash_plate_carrier', 'ice_plate_carrier', 'navy_plate_carrier', 'chamois_plate_carrier', 'sand_plate_carrier', 'tan_plate_carrier', 'salmon_plate_carrier', 'moss_plate_carrier', 'peach_plate_carrier', 'brown_digital_plate_carrier', 'fall_plate_carrier', 'white_camo_plate_carrier', 'peach_camo_plate_carrier', 'red_camo_plate_carrier', 'green_plate_carrier', 'orange_plate_carrier', 'purple_plate_carrier', 'pink_plate_carrier', 'black_ultralight_strike_vest', 'green_ultralight_strike_vest', 'violet_ultralight_strike_vest', 'green_camo_ultralight_strike_vest', 'desert_camo_ultralight_strike_vest', 'beige_ultralight_strike_vest', 'dark_green_ultralight_strike_vest', 'sage_ultralight_strike_vest', 'forest_camo_ultralight_strike_vest', 'beige_digital_ultralight_strike_vest', 'contrast_camo_ultralight_strike_vest', 'blue_camo_ultralight_strike_vest'},minValue = 1,maxValue = 1,probability = 5},                 
                {names = {'lockpick'},minValue = 1,maxValue = 1,probability = 5},
            } 
        }
    },

    ["animal_default"] = {
        fixedLoots = {},
        probabilityLoots = {
            loop = 6, 
            items = {} 
        }
    },

    ["pig_loot"] = {
        fixedLoots = {
                {name = "skin_pig",count = 1}
        },
        probabilityLoots = {
            loop = 1, 
            items = {
                {names = {'meat_pig'},minValue = 1,maxValue = 4,probability = 100}, -------- there is 50% chance of getting a number from 5 to 20 of money and there is 100 - 50 - 20 = 30% -- 30% chance of getting nothing      
            } 
        }
    },
  
    ["cat_loot"] = {
        fixedLoots = {},
        probabilityLoots = {
            loop = 6, 
            items = {} 
        }
    },

    ["bird_loot"] = {
        fixedLoots = {},
        probabilityLoots = {
            loop = 6, 
            items = {} 
        }
    },

    ["dog_loot"] = {
        fixedLoots = {},
        probabilityLoots = {
            loop = 6, 
            items = {}
        }
    },

    ["cow_loot"] = {
        fixedLoots = {
            {name = "skin_cow",count = 1},
        },
        probabilityLoots = {
            loop = 1, 
            items = {
                {names = {'meat_cow'},minValue = 2,maxValue = 5,probability = 100}, -------- there is 50% chance of getting a number from 5 to 20 of money and there is 100 - 50 - 20 = 30% -- 30% chance of getting nothing      
            } 
        }
    },

    ["deer_loot"] = {
        fixedLoots = {
            {name = "skin_deer",count = 1},
        },
        probabilityLoots = {
            loop = 1, 
            items = {
                {names = {'meat_deer'},minValue = 2,maxValue = 5,probability = 100}, -------- there is 50% chance of getting a number from 5 to 20 of money and there is 100 - 50 - 20 = 30% -- 30% chance of getting nothing      
            } 
        }
    },

    
    ["mtlion_loot"] = {
        fixedLoots = {
                {name = "skin_mtlion",count = 1},
        },
        probabilityLoots = {
            loop = 1, 
            items = {
                 {names = {'meat_mtlion'},minValue = 1,maxValue = 3,probability = 100}, -------- there is 50% chance of getting a number from 5 to 20 of money and there is 100 - 50 - 20 = 30% -- 30% chance of getting nothing      
            } 
        }
    },

    ["rabbit_loot"] = {
        fixedLoots = {
            {name = "skin_rabbit",count = 1}, -------- there is 50% chance of getting a number from 5 to 20 of money and there is 100 - 50 - 20 = 30% -- 30% chance of getting nothing      
        },
        probabilityLoots = {
            loop = 1, 
            items = {
                {names = {'meat_rabbit'},minValue = 1,maxValue = 2,probability = 100}, -------- there is 50% chance of getting a number from 5 to 20 of money and there is 100 - 50 - 20 = 30% -- 30% chance of getting nothing      
            } 
        }
    },

    ["rat_loot"] = {
        fixedLoots = {
            {name = "skin_rat",count = 1}, -------- there is 50% chance of getting a number from 5 to 20 of money and there is 100 - 50 - 20 = 30% -- 30% chance of getting nothing      
        },
        probabilityLoots = {
            loop = 1, 
            items = {
                {names = {'meat_rat'},minValue = 1,maxValue = 1,probability = 100}, -------- there is 50% chance of getting a number from 5 to 20 of money and there is 100 - 50 - 20 = 30% -- 30% chance of getting nothing      

            } 
        }
    },

    ["cayote_loot"] = {
        fixedLoots = {
            {name = "skin_cayote",count = 1}, -------- there is 50% chance of getting a number from 5 to 20 of money and there is 100 - 50 - 20 = 30% -- 30% chance of getting nothing      
        },
        probabilityLoots = {
            loop = 1,
            items = {
                {names = {'meat_cayote'},minValue = 1,maxValue = 3,probability = 100}, -------- there is 50% chance of getting a number from 5 to 20 of money and there is 100 - 50 - 20 = 30% -- 30% chance of getting nothing      
            } 
        }
    },


    ---------------- weapon cases --------------------------------------------------------

    ["pistolCase"] = {
        fixedLoots = {
            --{name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            items = {
                {
                    names = {
                        'weapon_pistol',
                        'weapon_snspistol',
                        'weapon_stungun',
                        'weapon_marksmanpistol',
                        'weapon_flaregun',
                        'weapon_combatpistol'
                    },
                    minValue = 1,
                    maxValue = 1,
                    probability = 10
                }, 
                {
                    names = {
                        'weapon_navyrevolver',
                        'weapon_doubleaction',
                        'weapon_revolver',
                        'weapon_vintagepistol'
                    },
                    minValue = 1,
                    maxValue = 1,
                    probability = 5
                }, 
                {
                    names = {
                        'weapon_heavypistol',
                        'weapon_pistol50',
                        'weapon_appistol',
                        'weapon_machinepistol',
                        'weapontint_0',
                        'weapontint_1',
                        'weapontint_2',
                        'weapontint_3',
                        'weapontint_4',
                        'weapontint_5',
                        'weapontint_6',
                        'weapontint_7',
                    },
                    minValue = 1,
                    maxValue = 1,
                    probability = 5
                }, 
                {
                    names = {
                        'clip_attachment',
                        'flashlight_attachment',
                        'grip_attachment',
                    },
                    minValue = 1,
                    maxValue = 1,
                    probability = 15
                }, 
                {
                    names = {
                        'suppressor_attachment',
                        'drum_attachment',
                        'luxuryfinish_attachment',
                        'digicamo_attachment',
                        'brushcamo_attachment',
                        'woodcamo_attachment',
                        'skullcamo_attachment',
                        'sessantacamo_attachment',
                        'perseuscamo_attachment',
                        'leopardcamo_attachment',
                        'zebracamo_attachment',
                        'geocamo_attachment',
                        'boomcamo_attachment',
                        'patriotcamo_attachment'
                    },
                    minValue = 1,
                    maxValue = 1,
                    probability = 1
                }, 
            }
        }
    },

    ["gunCase"] = {
        fixedLoots = {
            --{name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            items = {
                {
                    names = {
                        'weapon_dbshotgun',
                        'weapon_sawnoffshotgun',
                        'weapon_bullpupshotgun',
                        'weapon_heavyshotgun',
                        'weapon_autoshotgun',
                        'weapon_combatshotgun',
                        'weapon_pumpshotgun',
                        'weapon_assaultshotgun',

                    },
                    minValue = 1,
                    maxValue = 1,
                    probability = 5
                },
                {
                    names = {
                        'weapon_microsmg',
                        'weapon_smg',
                        'weapon_assaultsmg',
                        'weapon_combatpdw',
                        'weapon_minismg',
                        'weapon_assaultsmg',
                    },
                    minValue = 1,
                    maxValue = 1,
                    probability = 5
                },
                {
                    names = {
                        'weapon_assaultrifle',
                        'weapon_carbinerifle',
                        'weapon_advancedrifle',
                        'weapon_specialcarbine',
                        'weapon_bullpuprifle',
                        'weapon_compactrifle',
                        'weapon_militaryrifle',

                    },
                    minValue = 1,
                    maxValue = 1,
                    probability = 5
                },
                {
                    names = {
                        'flashlight_attachment',
                        'smallscope_attachment',
                        'medscope_attachment',
                        'largescope_attachment',
                        'holoscope_attachment',
                        'advscope_attachment',
                        'flat_muzzle_brake',
                        'tactical_muzzle_brake',
                        'fat_end_muzzle_brake',
                        'precision_muzzle_brake',
                        'heavy_duty_muzzle_brake',
                        'slanted_muzzle_brake',
                        'split_end_muzzle_brake',
                        'squared_muzzle_brake',
                        'bellend_muzzle_brake',
                        'barrel_attachment',
                        'grip_attachment',
                        'comp_attachment'
                    },
                    minValue = 1,
                    maxValue = 1,
                    probability = 10
                }, 
                {
                    names = {
                        'suppressor_attachment',
                        'drum_attachment',
                        'luxuryfinish_attachment',
                        'digicamo_attachment',
                        'brushcamo_attachment',
                        'woodcamo_attachment',
                        'skullcamo_attachment',
                        'sessantacamo_attachment',
                        'perseuscamo_attachment',
                        'leopardcamo_attachment',
                        'zebracamo_attachment',
                        'geocamo_attachment',
                        'boomcamo_attachment',
                        'patriotcamo_attachment'

                    },
                    minValue = 1,
                    maxValue = 1,
                    probability = 1
                }, 
            }
        }
    },

    ["minigun"] = {
        fixedLoots = {
            --{name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            items = {
                {
                    names = {
                        'weapon_minigun',

                    },
                    minValue = 1,
                    maxValue = 1,
                    probability = 10
                }, 
            }
        }
    },

    ["assaultCase"] = {
        fixedLoots = {
            --{name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            items = {
                {
                    names = {
                        'weapon_assaultrifle',
                        'weapon_combatmg'

                    },
                    minValue = 1,
                    maxValue = 1,
                    probability = 15
                }, 
                {
                    names = {
                        'clip_attachment',
                        'drum_attachment',
                        'flashlight_attachment',
                        'grip_attachment',
                        'smallscope_attachment',
                        'medscope_attachment',
                        'largescope_attachment',
                        'holoscope_attachment',
                        'advscope_attachment',
                        'flat_muzzle_brake',
                        'tactical_muzzle_brake',
                        'fat_end_muzzle_brake',
                        'precision_muzzle_brake',
                        'heavy_duty_muzzle_brake',
                        'slanted_muzzle_brake',
                        'split_end_muzzle_brake',
                        'squared_muzzle_brake',
                        'bellend_muzzle_brake',
                        'barrel_attachment',
                        'comp_attachment',
                        'digicamo_attachment',
                        'brushcamo_attachment',
                        'woodcamo_attachment',
                        'skullcamo_attachment',
                        'sessantacamo_attachment',
                        'perseuscamo_attachment',
                        'leopardcamo_attachment',
                        'zebracamo_attachment',
                        'geocamo_attachment',
                        'boomcamo_attachment',
                        'patriotcamo_attachment',
                        'weapontint_0',
                        'weapontint_1',
                        'weapontint_2',
                        'weapontint_3',
                        'weapontint_4',
                        'weapontint_5',
                        'weapontint_6',
                        'weapontint_7',
                    },
                    minValue = 1,
                    maxValue = 1,
                    probability = 25
                }, 
            }
        }
    },

    ["sniperCase"] = {
        fixedLoots = {
            --{name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            items = {
                {
                    names = {
                        'weapon_sniperrifle',
                        'weapon_heavysniper',
                        'weapon_marksmanrifle',

                    },
                    minValue = 1,
                    maxValue = 1,
                    probability = 10
                }, 
                {
                    names = {
                        'largescope_attachment',
                        'advscope_attachment',
                        'barrel_attachment',
                        'digicamo_attachment',
                        'brushcamo_attachment',
                        'woodcamo_attachment',
                        'skullcamo_attachment',
                        'sessantacamo_attachment',
                        'perseuscamo_attachment',
                        'leopardcamo_attachment',
                        'zebracamo_attachment',
                        'geocamo_attachment',
                        'boomcamo_attachment',
                        'patriotcamo_attachment',
                        'weapontint_0',
                        'weapontint_1',
                        'weapontint_2',
                        'weapontint_3',
                        'weapontint_4',
                        'weapontint_5',
                        'weapontint_6',
                        'weapontint_7',
                        
                    },
                    minValue = 1,
                    maxValue = 2,
                    probability = 30
                }, 
            }
        }
    },

    ["medicalCrate"] = {
        fixedLoots = {
            --{name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 2,
            items = {
                {
                    names = {
                        'bandage',
                    },
                    minValue = 1,
                    maxValue = 5,
                    probability = 30
                },
                {
                    names = {
                        'painkillers',
                    },
                    minValue = 1,
                    maxValue = 3,
                    probability = 20
                },
                
                {
                    names = {
                        'firstaid'
                    },
                    minValue = 1,
                    maxValue = 1,
                    probability = 10
                },
                {
                    names = {
                        'ifaks',
                    },
                    minValue = 1,
                    maxValue = 2,
                    probability = 20
                }
            }
        }
    },

    ["medicalCrate2"] = {
        fixedLoots = {
            --{name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 2,
            items = {
                {
                    names = {
                        'bandage',
                    },
                    minValue = 1,
                    maxValue = 5,
                    probability = 20
                },
                {
                    names = {
                        'painkillers',
                    },
                    minValue = 1,
                    maxValue = 3,
                    probability = 30
                },
                
                {
                    names = {
                        'firstaid'
                    },
                    minValue = 1,
                    maxValue = 1,
                    probability = 10
                },
                {
                    names = {
                        'ifaks',
                    },
                    minValue = 1,
                    maxValue = 2,
                    probability = 20
                }
            }
        }
    },

    ["medicalBag"] = {
        fixedLoots = {
            --{name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            items = {
                {
                    names = {
                        'bandage',
                    },
                    minValue = 1,
                    maxValue = 3,
                    probability = 30
                },
                {
                    names = {
                        'painkillers',
                    },
                    minValue = 1,
                    maxValue = 2,
                    probability = 30
                },
                {
                    names = {
                        'ifaks',
                    },
                    minValue = 1,
                    maxValue = 1,
                    probability = 10
                }
            }
        }
    },

    ["medicalCase"] = {
        fixedLoots = {
            --{name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            items = {
                {
                    names = {
                        'bandage',
                    },
                    minValue = 1,
                    maxValue = 4,
                    probability = 40
                },
                {
                    names = {
                        'firstaid'
                    },
                    minValue = 1,
                    maxValue = 1,
                    probability = 10
                },
                {
                    names = {
                        'ifaks',
                    },
                    minValue = 1,
                    maxValue = 1,
                    probability = 20
                }
            }
        }
    },

    ["medicalStation1"] = {
        fixedLoots = {
            --{name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            items = {
                {
                    names = {
                        'bandage',
                    },
                    minValue = 1,
                    maxValue = 4,
                    probability = 50
                },
            }
        }
    },

    ["medicalStation2"] = {
        fixedLoots = {
            --{name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            items = {
                {
                    names = {
                        'painkillers',
                    },
                    minValue = 1,
                    maxValue = 4,
                    probability = 50
                },
            }
        }
    },

    ["medicalStation3"] = {
        fixedLoots = {
            --{name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 2,
            items = {
                {
                    names = {
                        'painkillers',
                    },
                    minValue = 1,
                    maxValue = 4,
                    probability = 25
                },
                {
                    names = {
                        'bandage',
                    },
                    minValue = 1,
                    maxValue = 2,
                    probability = 25
                },
            }
        }
    },

    ["explosivesCase_x1"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            items = {
                {names = {'weapon_grenade','weapon_pipebomb'},minValue = 1,maxValue = 2,probability = 5},
                {names = {'weapon_bzgas'},minValue = 1,maxValue = 2,probability = 10},
                {names = {'weapon_molotov'},minValue = 1,maxValue = 2,probability = 10},
                {names = {'weapon_stickybomb'},minValue = 1,maxValue = 1,probability = 1},
                {names = {'weapon_smokegrenade'},minValue = 1,maxValue = 2,probability = 15},
            }
        }
    },

    ["explosivesCase_x4"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 2,
            items = {
                {names = {'weapon_grenade','weapon_pipebomb'},minValue = 1,maxValue = 2,probability = 5},
                {names = {'weapon_bzgas'},minValue = 1,maxValue = 2,probability = 10},
                {names = {'weapon_molotov'},minValue = 1,maxValue = 2,probability = 10},
                {names = {'weapon_stickybomb'},minValue = 1,maxValue = 2,probability = 1},
                {names = {'weapon_smokegrenade'},minValue = 1,maxValue = 2,probability = 15},
            }
        }
    },

    ["explosivesCase_x6"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 3,
            items = {
                {names = {'weapon_grenade','weapon_pipebomb'},minValue = 1,maxValue = 2,probability = 5},
                {names = {'weapon_bzgas'},minValue = 1,maxValue = 2,probability = 10},
                {names = {'weapon_molotov'},minValue = 1,maxValue = 2,probability = 10},
                {names = {'weapon_stickybomb'},minValue = 1,maxValue = 2,probability = 1},
                {names = {'weapon_smokegrenade'},minValue = 1,maxValue = 2,probability = 15},
            }
        }
    },

    ------------------ ammo ---------------------------------------------------------------------
    ["pistoAmmolCase"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            items = {
                {names = {'pistol_ammo', 'smg_ammo'},minValue = 1,maxValue = 5,probability = 40},
            }
        }
    },
    ["rifleAmmoCase"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            items = {
                {names = {'rifle_ammo'},minValue = 1,maxValue = 2,probability = 30}
            }
        }
    },
    ["shotgunAmmoCase"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            items = {
                {names = {'shotgun_ammo'},minValue = 1,maxValue = 3,probability = 40}
            }
        }
    },
    ["sniperAmmoCase"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            items = {
                {names = {'snp_ammo'},minValue = 1,maxValue = 2,probability = 30}
            }
        }
    },
    ["mixedAmmo"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 2,
            items = {
                {names = {'pistol_ammo', 'smg_ammo'},minValue = 1,maxValue = 5,probability = 15},
                {names = {'shotgun_ammo'},minValue = 1,maxValue = 4,probability = 10},
                {names = {'rifle_ammo'},minValue = 1,maxValue = 3,probability = 10},
                {names = {'snp_ammo'},minValue = 1,maxValue = 2,probability = 5},
            }
        }
    },
    ["mixedAmmoBig_x1"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            items = {
                {names = {'pistol_ammo', 'smg_ammo'},minValue = 1,maxValue = 5,probability = 15},
                {names = {'shotgun_ammo'},minValue = 1,maxValue = 5,probability = 15},
                {names = {'rifle_ammo'},minValue = 1,maxValue = 4,probability = 10},
                {names = {'snp_ammo'},minValue = 1,maxValue = 3,probability = 10},
            }
        }
    },
    ["mixedAmmoBig_x2"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 2,
            items = {
                {names = {'pistol_ammo', 'smg_ammo'},minValue = 1,maxValue = 5,probability = 15},
                {names = {'shotgun_ammo'},minValue = 1,maxValue = 5,probability = 15},
                {names = {'rifle_ammo'},minValue = 1,maxValue = 4,probability = 10},
                {names = {'snp_ammo'},minValue = 1,maxValue = 3,probability = 10},
            }
        }
    },
    -------------------------------------------------------------------------------------

    ------ PROPS ------------------------------------------------------------------------

    -- ["prop_default"] = {
    --     fixedLoots = {
    --         {name = "bandage",count = 1}
    --     },
    --     probabilityLoots = {
    --         loop = 6,
    --         loopIncrease = 1, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
    --         items = {
    --             {names = {'bandage'},minValue = 1,maxValue = 2,probability = 20},
    --             {names = {'wood'},minValue = 1,maxValue = 2,probability = 50},
    --             {names = {'metalscrap'},minValue = 1,maxValue = 2,probability = 30}
    --         }
    --     }
    -- },
    ["trashBig"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
            items = {
                {names = {'plastic', 'metalscrap', 'copper', 'aluminum', 'iron', 'steel', 'rubber'},minValue = 1,maxValue = 10,probability = 20},
                {names = {'electronickit', 'radio', 'fitbit', 'binoculars', 'lighter'},minValue = 1,maxValue = 1,probability = 5},
                {names = {'dirtywater'},minValue = 1,maxValue = 1,probability = 10},
                {names = {'boxed_nails', 'lockpick'},minValue = 1,maxValue = 1,probability = 1},
                {names = {'weapon_bat', 'weapon_bottle', 'weapon_crowbar', 'weapon_flashlight', 'weapon_golfclub', 'weapon_hammer', 'weapon_hatchet', 'weapon_knuckle', 'weapon_knife', 'weapon_machete', 'weapon_switchblade', 'weapon_nightstick', 'weapon_wrench', 'weapon_poolcue', 'weapon_stone_hatchet'},minValue = 1,maxValue = 1,probability = 5},
            }
        }

    },
    ["luggageLoot"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
            items = {
                {names = {'mens_black_beanie', 'mens_white_beanie', 'mens_white_golf_cap', 'mens_black_golf_cap', 'mens_blue_golf_cap', 'mens_red_golf_cap', 'mens_green_golf_cap', 'mens_yellow_golf_cap', 'mens_black_fedora', 'mens_white_fedora', 'mens_blue_fedora', 'mens_black_cowboy_hat_1', 'mens_white_cowboy_hat_1', 'mens_white_bandana_headwrap', 'mens_black_bandana_headwrap', 'mens_blue_bandana_headwrap', 'mens_green_bandana_headwrap', 'mens_purple_bandana_headwrap', 'mens_camo_bandana_headwrap', 'mens_yellow_bandana_headwrap', 'mens_black_headphones', 'mens_red_headphones', 'mens_blue_headphones', 'blue_chopper_helmet', 'orange_chopper_helmet', 'red_chopper_helmet', 'black_chopper_helmet', 'pink_chopper_helmet', 'white_chopper_helmet', 'mens_green_bucket_hat', 'mens_white_bucket_hat', 'mens_red_bucket_hat', 'mens_floral_bucket_hat', 'mens_camo_bucket_hat', 'bmx_helmet', 'black_motorcycle_helmet_1', 'families_hat', 'ballas_hat', 'red_broker_hat', 'black_broker_hat', 'orange_sweatbox_hat', 'camo_yeti_hat', 'securoserv_cap', 'black_roadster_helmet', 'red_roadster_helmet', 'patriot_roadster_helmet', 'green_roadster_helmet', 'native_roadster_helmet', 'black_skater_helmet', 'white_shrewsbury_cap', 'black_shrewsbury_cap', 'white_vom_feuer', 'ammunation_cap', 'warstock_cap', 'burgershot_hat', 'cluckin_bell', 'white_diamond_casino_cap', 'black_diamond_casino_cap', 'red_diamond_casino_cap', 'yellow_hard_hat', 'orange_hard_hat', 'white_hard_hat', 'blue_hard_hatsprunk_cap', 'ecola_cap'},minValue = 1,maxValue = 1,probability = 10},
                {names = {'pig_mask','pig_mask','pogo_mask','hockey_mask','red_demon_mask','black_demon_mask','santa_mask','reindeer_mask','snowman_mask','metal_warrior_mask','cat_mask','fox_mask','owl_mask','racoon_mask','bear_mask','wolf_mask','black_skeletal_mask','gray_skeletal_mask','charcoal_skeletal_mask','tan_skeletal_mask','green_skeletal_mask','torture_hockey_mask','penguin_mask','tactical_balaclava','scruffy_balaclava','gas_mask','pink_infected_mask','brown_infected_mask','white_mummy_mask','green_mummy_mask','pale_frank_mask','impotent_rage_mask','princess_robot_bubblegum_mask','moorehead_mask','combat_gas_mask','crime_scene_mask','hazard_mask','gray_tape_mask','white_tape_mask','upnatom_mask','manic_mask','black_face_bandana','skull_face_bandana','white_face_bandana','tan_face_bandana','forest_face_bandana','families_face_bandana','ballas_face_bandana','vagos_face_bandana','black_ski_mask','white_ski_mask','green_ski_mask','forest_ski_mask','skull_ski_mask','black_tshirt_mask','white_tshirt_mask','tan_tshirt_mask','woodland_tshirt_mask','pink_tshirt_mask','worn_ski_mask','black_knit_balaclava','orange_knit_balaclava','brown_knit_balaclava','woodland_knit_balaclava','white_knit_balaclava','pink_knit_balaclava','red_knit_balaclava','werewolf_mask','clown_mask','orange_bigness_facemask','blue_bigness_facemask','pink_bigness_facemask','yellow_bigness_facemask','zebra_bigness_facemask','white_snake_skull','brown_headscarf','teal_headscarf','green_headscarf','yellow_headscarf','turquoise_headscarf','brown_digital_headscarf','yellow_pattern_headscarf','orange_pattern_headscarf','red_pattern_headscarf','blue_pattern_headscarf','splinter_headscarf','brown_wrapped_headscarf','teal_wrapped_headscarf','green_wrapped_headscarf','yellow_wrapped_headscarf','turquoise_wrapped_headscarf','brown_digital_wrapped_headscarf','red_pattern_wrapped_headscarf','weapon_pattern_wrapped_headscarf','blue_pattern_wrapped_headscarf','splinter_wrapped_headscarf','orange_wrapped_headscarf','peach_camo_wrapped_headscarf','brushstroked_wrapped_headscarf','purple_pattern_wrapped_headscarf','brown_snood','teal_snood','green_snood','yellow_snood','turquoise_snood','brown_digital_snood','orange_pattern_snood','peach_digital_snood','blue_pattern_snood','purple_pattern_snood','yellow_pattern_snood','splinter_snood','red_pattern_snood','weapon_pattern_snood','peach_camo_snood','brushstroke_snood','piggly_maskpiggly_mask','grinner_mask','fluffy_rabbit_mask','sniper_mask'},minValue = 1,maxValue = 1,probability = 10},      
                {names = {'mens_white_vneck', 'mens_gray_vneck', 'mens_yellow_vneck', 'mens_red_vneck', 'mens_navy_vneck', 'mens_white_track_jacket', 'mens_gray_track_jacket', 'mens_blue_track_jacket', 'mens_navy_track_jacket', 'mens_red_track_jacket', 'mens_green_track_jacket', 'mens_orange_track_jacket', 'mens_yellow_track_jacket', 'mens_purple_track_jacket', 'mens_brown_track_jacket', 'mens_beige_track_jacket', 'mens_black_suit_jacket', 'mens_red_suit_jacket', 'mens_gray_suit_jacket', 'mens_navy_suit_jacket', 'mens_luxury_suit_jacket', 'mens_black_leather_jacket', 'mens_red_leather_jacket', 'mens_brown_leather_jacket', 'mens_white_unzipped_hoodie', 'mens_gray_unzipped_hoodie', 'mens_black_unzipped_hoodie', 'mens_blue_unzipped_hoodie', 'mens_navy_unzipped_hoodie', 'mens_red_unzipped_hoodie', 'mens_green_unzipped_hoodie', 'mens_orange_unzipped_hoodie', 'mens_yellow_unzipped_hoodie', 'mens_purple_unzipped_hoodie', 'mens_camo_unzipped_hoodie', 'mens_threequarter_raglan_sleeve', 'mens_camo_tshirt', 'mens_white_vneck_longsleeve', 'green_flight_jacket', 'junk_motorcross_shirt', 'beige_hoodie', 'alien_hoodie', 'red_plain_polo', 'families_letterman', 'mens_happymoon_tshirt', 'zebra_tshirt', 'lovefist_shirt', 'hinterland_hoodie', 'gray_digital_combat_shirt', 'fall_combat_shirt', 'pink_camo_yeti_denim', 'zebra_striped_denim', 'camo_yeti_shirt', 'gray_camo_yeti_shirt', 'downtown_cabco_shirt', 'camo_yeti_jacket', 'smoking_jacket', 'white_tshirt', 'yeti_windbreaker', 'green_palms_revere', 'blush_palms_revere', 'charcoal_floral_revere', 'charcoal_palms_revere', 'pink_palms_revere', 'cool_sunset_revere', 'warm_sunset_revere','pineapple_revere', 'black_revere', 'gray_revere', 'white_revere', 'red_floral_revere', 'black_vinyl', 'gray_vinyl', 'ash_vinyl', 'white_vinyl', 'red_vinyl', 'scarlet_vinyl', 'dark_green_vinyl', 'orange_vinyl', 'chestnut_vinyl', 'darknut_vinyl', 'black_vinyl_cut', 'gray_vinyl_cut', 'ash_vinyl_cut', 'white_vinyl_cut', 'scarlet_vinyl_cut', 'dark_green_vinyl_cut', 'red_vinyl_cut', 'orange_vinyl_cut', 'chestnut_vinyl_cut', 'darknut_vinyl_cut', 'black_vneck_longsleeve', 'gray_vneck_longsleeve', 'ash_vneck_longsleeve', 'highroller_cut', 'highroller_vinyl', 'black_motorcycle_jacket', 'ash_motorcycle_jacket', 'gray_motorcycle_jacket', 'white_motorcycle_jacket', 'scarlet_motorcycle_jacket', 'dark_green_motorcycle_jacket', 'red_motorcycle_jacket', 'orange_motorcycle_jacket', 'blue_motorcycle_jacket', 'leather_grenader_cut', 'leather_grenader_vinyl', 'leather_grenader_jacket', 'tiger_vinyl_cut', 'tiger_vinyl', 'green_flight_jacket', 'black_combat_top', 'gray_combat_top', 'charcoal_combat_top', 'forest_combat_top', 'black_combat_sweater', 'gray_combat_sweater', 'charcoal_combat_sweater', 'tan_combat_sweater', 'forest_combat_sweater', 'black_battle_vest', 'gray_battle_vest', 'beige_battle_vest', 'forest_battle_vest', 'black_flight_jacket', 'lspd_patrol_shirt', 'worn_shirt', 'loose_zipped_hoodie', 'gray_scruffy_jacket', 'beige_scruffy_jacket', 'black_scruffy_jacket', 'cayote_tactical_fleece', 'green_tactical_fleece', 'black_tactical_fleece', 'black_hooded_jacket', 'gray_hooded_jacket', 'charcoal_hooded_jacket', 'red_hooded_jacket', 'blue_hooded_jacket', 'tan_hooded_jacket', 'beige_detail_battle_shirt', 'khaki_detail_battle_shirt', 'navy_quilted_jacket', 'white_silk_jacket', 'black_silk_jacket', 'red_silk_jacket', 'blue_silk_jacket', 'brown_silk_jacket', 'red_smoking_jacket', 'navy_smoking_jacket', 'burgundy_smoking_jacket', 'black_smoking_jacket', 'green_smoking_jacket', 'brown_smoking_jacket', 'demon_tracksuit_top', 'charcoal_tracksuit_top', 'navy_tracksuit_top', 'teal_tracksuit_top', 'green_riding_jacket', 'orange_riding_jacket', 'purple_riding_jacket', 'pink_riding_jacket', 'red_riding_jacket', 'blue_riding_jacket', 'white_riding_jacket', 'black_riding_jacket', 'white_hinterland_polo', 'navy_hinterland_polo', 'black_hinterland_polo', 'hinterland_worsk_shirt', 'green_football_jersey', 'orange_football_jersey', 'purple_football_jersey', 'pink_football_jersey', 'red_football_jersey', 'blue_football_jersey', 'black_football_jersey', 'white_football_jersey', 'securoserv_bomber', 'libery_polo', 'black_liberty_hoodie', 'red_liberty_hoodie', 'flying_bravo_hoodie', 'golf_shirt', 'chocolate_leather_field_jacket', 'black_leather_field_jacket', 'brown_leather_field_jacket', 'tucked_turtle_neck'},minValue = 1,maxValue = 1,probability = 10},                                                                                                                                                                                                                                                                                                                                                                                                      
                {names = {'green_flight_pants', 'black_combat_pants', 'red_long_johns', 'black_heist_pants', 'black_battle_pants', 'black_regular_suit_pants', 'trash_pants', 'loose_bugstar_pants', 'bugstar_pants', 'black_flight_pants', 'tan_battle_pants', 'khaki_battle_pants', 'tan_utility_pants', 'white_continental_pants', 'navy_continental_pants', 'white_continental_slim_pants', 'navy_continental_slim_pants', 'red_shiny_pants', 'blue_shiny_pants', 'black_shiny_pants', 'green_shiny_pants', 'gold_print_pants', 'red_fitted_shiny_pants', 'blue_fitted_shiny_pants', 'black_fitted_shiny_pants', 'green_fitted_shiny_pants', 'gold_print_fitted_pants', 'black_tracksuit_pants', 'charcoal_tracksuit_pants', 'navy_tracksuit_pants', 'teal_tracksuit_pants', 'green_heist_pants', 'blue_tracksuit_pants', 'burgundy_tracksuit_pants', 'tan_tracksuit_pants', 'royal_blue_tracksuit_pants', 'red_tracksuit_pants', 'light_blue_tracksuit_pants', 'orange_tracksuit_pants', 'purple_tracksuit_pants', 'gray_tracksuit_pants', 'green_tracksuit_pants', 'white_tracksuit_pants'},minValue = 1,maxValue = 1,probability = 10},  
                {names = {'black_flight_boots', 'black_tactical_boots', 'black_scruffy_boots', 'golden_hi_tops', 'calypso_runners', 'fresh_runners', 'jinx_runners', 'animal_runners', 'desert_tactical_boots', 'sage_tactical_boots', 'sienna_leather_loafers', 'orange_leather_loafers', 'brown_leather_loafers', 'black_leather_loafers', 'all_black_cowboy_boots', 'sienna_cowboy_boots', 'cream_cowboy_boots', 'brown_cowboy_boots', 'black_cowboy_boots', 'lo_all_black_cowboy_boots', 'lo_sienna_cowboy_boots', 'lo_cream_cowboy_boots', 'lo_brown_cowboy_boots', 'lo_black_cowboy_boots'},minValue = 1,maxValue = 1,probability = 10},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
            }
        }

    },
    ["drugCrate"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
            items = {
                {names = {'seed_weed_skunk','seed_weed_bluedream','seed_weed_grapeape','seed_weed_lemonhaze','seed_weed_skywalkerog','coca_seed'},minValue = 1,maxValue = 10,probability = 20},

                {names = {'skunk_crop','bluedream_crop','grapeape_crop','lemonhaze_crop','skywalkerog_crop','coca_leaf'},minValue = 10,maxValue = 20,probability = 15},
                          
                {names = {'skunk_oz','bluedream_oz','grapeape_oz','lemonhaze_oz','skywalkerog_oz','cocaine_baggy'},minValue = 2,maxValue = 5,probability = 10},

                {names = {'skunk_brick','bluedream_brick','grapeape_brick','lemonhaze_brick','skywalkerog_brick','coke_brick'},minValue = 1,maxValue = 2,probability = 5},
            }
        }

    },
    ["cokeCase"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
            items = {
                {names = {'coca_seed'},minValue = 1,maxValue = 5,probability = 20},

                {names = {'coca_leaf','cocaine_baggy'},minValue = 1,maxValue = 20,probability = 15},

                {names = {'coke_brick'},minValue = 1,maxValue = 2,probability = 10},
    
            }
        }

    },
    ["cannabisLoot"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
            items = {
                {names = {'seed_weed_skunk','seed_weed_bluedream','seed_weed_grapeape','seed_weed_lemonhaze','seed_weed_skywalkerog'},minValue = 1,maxValue = 1,probability = 10},
                {names = {'skunk_crop','bluedream_crop','grapeape_crop','lemonhaze_crop','skywalkerog_crop'},minValue = 1,maxValue = 5,probability = 30},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
            }
        }

    },
    ["cannabisLootsm"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
            items = {
                {names = {'seed_weed_skunk','seed_weed_bluedream','seed_weed_grapeape','seed_weed_lemonhaze','seed_weed_skywalkerog'},minValue = 1,maxValue = 1,probability = 5},
                {names = {'skunk_crop','bluedream_crop','grapeape_crop','lemonhaze_crop','skywalkerog_crop'},minValue = 1,maxValue = 2,probability = 15},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
            }
        }

    },
    ["groundWeed"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
            items = {
                {names = {'skunk_oz','bluedream_oz','grapeape_oz','lemonhaze_oz','skywalkerog_oz'},minValue = 5,maxValue = 10,probability = 100},                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
            }
        }

    },
    ["carLoot"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
            items = {
                {names = {'vehicleparts'},minValue = 1,maxValue = 100,probability = 15},      
                {names = {'plastic', 'metalscrap', 'copper', 'aluminum', 'glass','iron', 'steel', 'rubber',},minValue = 5,maxValue = 50,probability = 10},      
                {names = {'engine1','transmission1','brakes1','suspension1','oilp1','drives1','cylind1','cables1','fueltank1','headlights','tint_supplies','customplate','hood','roof','spoiler','bumper','skirts','exhaust','seat','horn','livery','cleaningkit','harness','jerry_can','mechanic_tools','toolbox','ducttape','mechboard','engineoil','cables','toolbox'},minValue = 1,maxValue = 1,probability = 10},
                {names = {'engine2','transmission2','brakes2','suspension2','oilp2','drives2','cylind2','cables2','fueltank2','paintcan','rims','tires','advancedrepairkit','fixkit','repairkit'},minValue = 1,maxValue = 1,probability = 5},                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
                {names = {'engine3','transmission3','brakes3','suspension3','oilp3','drives3','cylind3','cables3','fueltank3','car_tire','rollcage','internals','externals','car_battery'},minValue = 1,maxValue = 1,probability = 3},                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
                {names = {'engine4','transmission4','suspension4','turbo','car_armor','suspension5','bprooftires','lockpick','screwdriverset','drill','electronickit','gatecrack','underglow_controller'},minValue = 1,maxValue = 1,probability = 1},                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
            }
        }

    },
    ["truckLoot"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
            items = {
                {names = {'vehicleparts'},minValue = 5,maxValue = 100,probability = 20},      
                {names = {'plastic', 'metalscrap', 'copper', 'aluminum', 'glass','iron', 'steel', 'rubber',},minValue = 5,maxValue = 50,probability = 15},      
                {names = {'engine1','transmission1','brakes1','suspension1','oilp1','drives1','cylind1','cables1','fueltank1','headlights','tint_supplies','customplate','hood','roof','spoiler','bumper','skirts','exhaust','seat','horn','livery','cleaningkit','harness','jerry_can','mechanic_tools','toolbox','ducttape','mechboard','engineoil','cables','toolbox'},minValue = 1,maxValue = 1,probability = 15},
                {names = {'engine2','transmission2','brakes2','suspension2','oilp2','drives2','cylind2','cables2','fueltank2','paintcan','rims','tires','advancedrepairkit','fixkit','repairkit'},minValue = 1,maxValue = 1,probability = 10},                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
                {names = {'engine3','transmission3','brakes3','suspension3','oilp3','drives3','cylind3','cables3','fueltank3','truck_tire','rollcage','internals','externals','truck_battery'},minValue = 1,maxValue = 1,probability = 5},                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
                {names = {'engine4','transmission4','suspension4','turbo','car_armor','suspension5','bprooftires','lockpick','screwdriverset','drill','electronickit','gatecrack','underglow_controller'},minValue = 1,maxValue = 1,probability = 1},                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
            }
        }

    },
    ["registerLoot"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
            items = {
                {names = {'money'},minValue = 1,maxValue = 1000,probability = 40},                                    
            }
        }

    },
    ["cashTrolly1"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
            items = {
                {names = {'money'},minValue = 1000,maxValue = 5000,probability = 35},                                    
            }
        }

    },
    ["cashTrolly2"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
            items = {
                {names = {'money'},minValue = 5000,maxValue = 1000,probability = 30},                                    
            }
        }

    },
    ["cashTrolly3"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
            items = {
                {names = {'money'},minValue = 10000,maxValue = 15000,probability = 25},                                    
            }
        }

    },
    ["cashCrate"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
            items = {
                {names = {'money'},minValue = 15000,maxValue = 20000,probability = 20},                                    
            }
        }

    },
    ["cashSkid"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
            items = {
                {names = {'money'},minValue = 20000,maxValue = 25000,probability = 15},                                    
            }
        }

    },
    ["securityCase"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
            items = {
                {names = {'money'},minValue = 1000,maxValue = 2500,probability = 20},       
                {names = {'security_card_02'},minValue = 1,maxValue = 1,probability = 5},                                    
                {names = {'certificate'},minValue = 1,maxValue = 1,probability = 5},                                    
                {names = {'gatecrack'},minValue = 1,maxValue = 1,probability = 5},                                    
                {names = {'trojan_usb'},minValue = 1,maxValue = 1,probability = 5},                                    
                {names = {'samsungphone','laptop'},minValue = 1,maxValue = 1,probability = 15},                                    
                {names = {'iphone', 'tablet'},minValue = 1,maxValue = 1,probability = 10},                                    
            }
        }

    },
    ["bikerCase"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
            items = {
                {names = {'money'},minValue = 1000,maxValue = 2500,probability = 20},       
                {names = {'labkey'},minValue = 1,maxValue = 1,probability = 5},                                    
                {names = {'printerdocument'},minValue = 1,maxValue = 1,probability = 5},                                    
                {names = {'labkey'},minValue = 1,maxValue = 1,probability = 5},                                    
                {names = {'tenkgoldchain'},minValue = 1,maxValue = 1,probability = 5},                                    
                {names = {'diamond','goldbar'},minValue = 1,maxValue = 1,probability = 15},                                    
                {names = {'rolex', 'goldchain'},minValue = 1,maxValue = 1,probability = 10},                                    
            }
        }

    },
    ["goldTrolly"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
            items = {
                {names = {'goldbar'},minValue = 1,maxValue = 5,probability = 20},                                    
            }
        }

    },

    ["radioactiveloot"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
            items = {
                {names = {'radioactivewastebarrel'},minValue = 1,maxValue = 1,probability = 100},                                    
            }
        }

    },
    
    ["thermiteLoot"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
            items = {
                {names = {'thermite'},minValue = 1,maxValue = 2,probability = 40},                                    
            }
        }

    },
    ["mysteryCrate"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
            items = {
                -- equipment
                {names = {'gas_mask','combat_gas_mask','charcoal_combat_mask','tan_combat_mask','forest_combat_mask','goggled_gas_mask'},minValue = 1,maxValue = 1,probability = 1},     
                {names = {'black_quad_helmet','moss_quad_helmet','brown_quad_helmet','white_quad_helmet','leopard_quad_helmet','brown_digital_quad_helmet','tiger_quad_helmet','aqua_camo_quad_helmet','splinter_quad_helmet','brushstroke_quad_helmet','black_red_quad_helmet','zebra_quad_helmet','pink_camo_quad_helmet','desert_quad_helmet','black_dual_helmet','moss_dual_helmet','brown_dual_helmet','white_dual_helmet','leopard_dual_helmet','brown_digital_dual_helmet','tiger_dual_helmet','aqua_camo_dual_helmet','splinter_dual_helmet','brushstroke_dual_helmet','black_red_dual_helmet','zebra_dual_helmet','pink_camo_dual_helmet','desert_dual_helmet'},minValue = 1,maxValue = 1,probability = 1},                                       
                {names = {'bandit_pack','chinook_lifesaver_bag','ranch_assault_pack','rush_24_bag','burgen_bag'},minValue = 1,maxValue = 1,probability = 1},                                       
                {names = {'black_plate_carrier','charcoal_plate_carrier','ash_plate_carrier','ice_plate_carrier','navy_plate_carrier','chamois_plate_carrier','sand_plate_carrier','tan_plate_carrier','salmon_plate_carrier','moss_plate_carrier','peach_plate_carrier','brown_digital_plate_carrier','fall_plate_carrier','white_camo_plate_carrier','peach_camo_plate_carrier','red_camo_plate_carrier','green_plate_carrier','orange_plate_carrier','purple_plate_carrier','pink_plate_carrier','black_ultralight_strike_vest','green_ultralight_strike_vest','violet_ultralight_strike_vest','green_camo_ultralight_strike_vest','desert_camo_ultralight_strike_vest','beige_ultralight_strike_vest','dark_green_ultralight_strike_vest','sage_ultralight_strike_vest','forest_camo_ultralight_strike_vest','beige_digital_ultralight_strike_vest','contrast_camo_ultralight_strike_vest','blue_camo_ultralight_strike_vest'},minValue = 1,maxValue = 1,probability = 1},                                       
                {names = {'black_light_strike_vest','green_light_strike_vest','orange_light_strike_vest','purple_light_strike_vest','pink_light_strike_vest'},minValue = 1,maxValue = 1,probability = 1},     
                
                -- base loot
                {names = {'model_mg_stand','model_fire_turret','model_grenadelauncher','model_rpg','model_mg','model_spikeswall_wood','model_electricfence'},minValue = 1,maxValue = 1,probability = 1},                                       
               
                -- thermite
                {names = {'thermite'},minValue = 1,maxValue = 2,probability = 1},                                    

                -- gold
                {names = {'goldbar'},minValue = 1,maxValue = 5,probability = 1},                                    

                -- cash
                {names = {'money'},minValue = 5000,maxValue = 5000,probability = 1},  
                
                -- ammo
                {names = {'pistol_ammo', 'smg_ammo'},minValue = 1,maxValue = 5,probability = 1},
                {names = {'shotgun_ammo'},minValue = 1,maxValue = 5,probability = 1},
                {names = {'rifle_ammo'},minValue = 1,maxValue = 4,probability = 1},
                {names = {'snp_ammo'},minValue = 1,maxValue = 3,probability = 1},

            }
        }

    },
    ["equipmentLootx2"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
            items = {
                {names = {'gas_mask','combat_gas_mask','charcoal_combat_mask','tan_combat_mask','forest_combat_mask','goggled_gas_mask'},minValue = 1,maxValue = 1,probability = 5},     
                {names = {'black_quad_helmet','moss_quad_helmet','brown_quad_helmet','white_quad_helmet','leopard_quad_helmet','brown_digital_quad_helmet','tiger_quad_helmet','aqua_camo_quad_helmet','splinter_quad_helmet','brushstroke_quad_helmet','black_red_quad_helmet','zebra_quad_helmet','pink_camo_quad_helmet','desert_quad_helmet','black_dual_helmet','moss_dual_helmet','brown_dual_helmet','white_dual_helmet','leopard_dual_helmet','brown_digital_dual_helmet','tiger_dual_helmet','aqua_camo_dual_helmet','splinter_dual_helmet','brushstroke_dual_helmet','black_red_dual_helmet','zebra_dual_helmet','pink_camo_dual_helmet','desert_dual_helmet'},minValue = 1,maxValue = 1,probability = 5},                                       
                {names = {'bandit_pack','chinook_lifesaver_bag','ranch_assault_pack','rush_24_bag','burgen_bag'},minValue = 1,maxValue = 1,probability = 10},                                       
                {names = {'black_plate_carrier','charcoal_plate_carrier','ash_plate_carrier','ice_plate_carrier','navy_plate_carrier','chamois_plate_carrier','sand_plate_carrier','tan_plate_carrier','salmon_plate_carrier','moss_plate_carrier','peach_plate_carrier','brown_digital_plate_carrier','fall_plate_carrier','white_camo_plate_carrier','peach_camo_plate_carrier','red_camo_plate_carrier','green_plate_carrier','orange_plate_carrier','purple_plate_carrier','pink_plate_carrier','black_ultralight_strike_vest','green_ultralight_strike_vest','violet_ultralight_strike_vest','green_camo_ultralight_strike_vest','desert_camo_ultralight_strike_vest','beige_ultralight_strike_vest','dark_green_ultralight_strike_vest','sage_ultralight_strike_vest','forest_camo_ultralight_strike_vest','beige_digital_ultralight_strike_vest','contrast_camo_ultralight_strike_vest','blue_camo_ultralight_strike_vest'},minValue = 1,maxValue = 1,probability = 20},                                       
                {names = {'black_light_strike_vest','green_light_strike_vest','orange_light_strike_vest','purple_light_strike_vest','pink_light_strike_vest'},minValue = 1,maxValue = 1,probability = 15},                                       
            }
        }

    },
    ["equipmentLoot"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
            items = {
                {names = {'gas_mask','combat_gas_mask','charcoal_combat_mask','tan_combat_mask','forest_combat_mask','goggled_gas_mask'},minValue = 1,maxValue = 1,probability = 5},     
                {names = {'black_quad_helmet','moss_quad_helmet','brown_quad_helmet','white_quad_helmet','leopard_quad_helmet','brown_digital_quad_helmet','tiger_quad_helmet','aqua_camo_quad_helmet','splinter_quad_helmet','brushstroke_quad_helmet','black_red_quad_helmet','zebra_quad_helmet','pink_camo_quad_helmet','desert_quad_helmet','black_dual_helmet','moss_dual_helmet','brown_dual_helmet','white_dual_helmet','leopard_dual_helmet','brown_digital_dual_helmet','tiger_dual_helmet','aqua_camo_dual_helmet','splinter_dual_helmet','brushstroke_dual_helmet','black_red_dual_helmet','zebra_dual_helmet','pink_camo_dual_helmet','desert_dual_helmet'},minValue = 1,maxValue = 1,probability = 5},                                       
                {names = {'bandit_pack','chinook_lifesaver_bag','ranch_assault_pack','rush_24_bag','burgen_bag'},minValue = 1,maxValue = 1,probability = 5},                                       
                {names = {'black_plate_carrier','charcoal_plate_carrier','ash_plate_carrier','ice_plate_carrier','navy_plate_carrier','chamois_plate_carrier','sand_plate_carrier','tan_plate_carrier','salmon_plate_carrier','moss_plate_carrier','peach_plate_carrier','brown_digital_plate_carrier','fall_plate_carrier','white_camo_plate_carrier','peach_camo_plate_carrier','red_camo_plate_carrier','green_plate_carrier','orange_plate_carrier','purple_plate_carrier','pink_plate_carrier','black_ultralight_strike_vest','green_ultralight_strike_vest','violet_ultralight_strike_vest','green_camo_ultralight_strike_vest','desert_camo_ultralight_strike_vest','beige_ultralight_strike_vest','dark_green_ultralight_strike_vest','sage_ultralight_strike_vest','forest_camo_ultralight_strike_vest','beige_digital_ultralight_strike_vest','contrast_camo_ultralight_strike_vest','blue_camo_ultralight_strike_vest'},minValue = 1,maxValue = 1,probability = 15},                                       
                {names = {'black_light_strike_vest','green_light_strike_vest','orange_light_strike_vest','purple_light_strike_vest','pink_light_strike_vest'},minValue = 1,maxValue = 1,probability = 10},                                       
            }
        }

    },
    ["ComputerLoot"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
            items = {
                {names = {'cpu','ssd','ram'},minValue = 1,maxValue = 1,probability = 15},   
                {names = {'cpufan','mouse','keyboard','psu'},minValue = 1,maxValue = 1,probability = 30},                                  
                {names = {'flashdrive', 'gpu'},minValue = 1,maxValue = 1,probability = 5},                                  
                {names = {'intelligence', 'military_documents'},minValue = 1,maxValue = 1,probability = 5},                                  

            }
        }

    },
    ["launcherCase"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
            items = {
                {names = {'weapon_compactlauncher','weapon_grenadelauncher','weapon_rpg'},minValue = 1,maxValue = 1,probability = 5},                                        
            }
        }

    },
    ["baseLoot"] = {
        fixedLoots = {
           -- {name = "bandage",count = 1}
        },
        probabilityLoots = {
            loop = 1,
            --loopIncrease = 4, ----- how much loops will be added if you are in a lootIncreaseZone (see below) (overrides the zone increase for this prop)
            items = {
                {names = {'model_mg_stand','model_fire_turret','model_grenadelauncher','model_rpg','model_mg','model_spikeswall_wood','model_electricfence'},minValue = 1,maxValue = 1,probability = 20},                                       
            }
        }

    },
}

Config.lootByHashType = {
    ------- PEDS -------------------------
    ['u_m_y_zombie_01'] = 'bossZombie',

    ------- ANIMALS ----------------------

    --- pigs ---
    ['a_c_boar'] = 'pig_loot',
    ['a_c_pig'] = 'pig_loot',
    --- cats ---
    ['a_c_cat_01'] = 'cat_loot',
    --- birds ---
    ['a_c_chickenhawk'] = 'bird_loot',
    ['a_c_crow'] = 'bird_loot',
    ['a_c_cormorant'] = 'bird_loot',
    ['a_c_pigeon'] = 'bird_loot',
    ['a_c_hen'] = 'bird_loot',
    ['a_c_seagull'] = 'bird_loot',
    --- dogs ---
    ['a_c_chop'] = 'dog_loot',
    ['a_c_shepherd'] = 'dog_loot',
    ['a_c_coyote'] = 'dog_loot',
    ['a_c_husky'] = 'dog_loot',
    ['a_c_poodle'] = 'dog_loot',
    ['a_c_pug'] = 'dog_loot',
    ['a_c_retriever'] = 'dog_loot',
    ['a_c_westy'] = 'dog_loot',
    ['a_c_rottweiler'] = 'dog_loot',
    --- cow ---
    ['a_c_cow'] = 'cow_loot',
    --- deer ---
    ['a_c_deer'] = 'deer_loot',
    --- mtlion ---
    ['a_c_mtlion'] = 'mtlion_loot',
    --- rabbit ---
    ['a_c_rabbit_01'] = 'rabbit_loot',
    --- rat ---
    ['a_c_rat'] = 'rat_loot',
    --- cayote ---
    ['a_c_cayote'] = 'cayote_loot'
}

Config.lootTypeItemNeeded = {
   -- ['trashBig'] = {items = {"bandage"},label = "You need a bandage to interact"} ----- example
} -------- you have to have one of this items in your inventory to interact with this loot type

Config.lootTypeWeaponNeeded = {
    ['animal_default'] = {weapons = {"WEAPON_KNIFE","weapon_dagger","weapon_hatchet","weapon_machete","weapon_switchblade","weapon_battleaxe","weapon_stone_hatchet"},label = "You need a cutting weapon"},
    ['pig_loot'] = {weapons = {"WEAPON_KNIFE","weapon_dagger","weapon_hatchet","weapon_machete","weapon_switchblade","weapon_battleaxe","weapon_stone_hatchet"},label = "You need a cutting weapon"},
    ['cat_loot'] = {weapons = {"WEAPON_KNIFE","weapon_dagger","weapon_hatchet","weapon_machete","weapon_switchblade","weapon_battleaxe","weapon_stone_hatchet"},label = "You need a cutting weapon"},
    ['bird_loot'] = {weapons = {"WEAPON_KNIFE","weapon_dagger","weapon_hatchet","weapon_machete","weapon_switchblade","weapon_battleaxe","weapon_stone_hatchet"},label = "You need a cutting weapon"},
    ['dog_loot'] = {weapons = {"WEAPON_KNIFE","weapon_dagger","weapon_hatchet","weapon_machete","weapon_switchblade","weapon_battleaxe","weapon_stone_hatchet"},label = "You need a cutting weapon"},
    ['cow_loot'] = {weapons = {"WEAPON_KNIFE","weapon_dagger","weapon_hatchet","weapon_machete","weapon_switchblade","weapon_battleaxe","weapon_stone_hatchet"},label = "You need a cutting weapon"},
    ['deer_loot'] = {weapons = {"WEAPON_KNIFE","weapon_dagger","weapon_hatchet","weapon_machete","weapon_switchblade","weapon_battleaxe","weapon_stone_hatchet"},label = "You need a cutting weapon"},
    ['mtlion_loot'] = {weapons = {"WEAPON_KNIFE","weapon_dagger","weapon_hatchet","weapon_machete","weapon_switchblade","weapon_battleaxe","weapon_stone_hatchet"},label = "You need a cutting weapon"},
    ['rabbit_loot'] = {weapons = {"WEAPON_KNIFE","weapon_dagger","weapon_hatchet","weapon_machete","weapon_switchblade","weapon_battleaxe","weapon_stone_hatchet"},label = "You need a cutting weapon"},
    ['rat_loot'] = {weapons = {"WEAPON_KNIFE","weapon_dagger","weapon_hatchet","weapon_machete","weapon_switchblade","weapon_battleaxe","weapon_stone_hatchet"},label = "You need a cutting weapon"},
    ['cayote_loot'] = {weapons = {"WEAPON_KNIFE","weapon_dagger","weapon_hatchet","weapon_machete","weapon_switchblade","weapon_battleaxe","weapon_stone_hatchet"},label = "You need a cutting weapon"},

} -------- you have to have one of this weapons on your hand to interact with this loot type

Config.lootByHashTypeProps = {
    ---- pistol cases -----------------------
    ['prop_box_guncase_02a'] = "pistolCase",
    ['prop_box_guncase_01a'] = "pistolCase",
    
    ---- assault cases -----------------------
    ['ex_prop_crate_ammo_sc'] = "assaultCase",
    ['ba_prop_battle_crates_rifles_01a'] = "assaultCase",
    ['xm_prop_crates_rifles_04a'] = "assaultCase",
    ['ex_prop_crate_ammo_bc'] = "assaultCase",
    ['ba_prop_battle_rsply_crate_gr_02a'] = "assaultCase",
    ['xm_prop_crates_rifles_01a'] = "assaultCase",
    ['xm_prop_crates_weapon_mix_01a'] = "assaultCase",

    ---- sniper cases -----------------------
    ['bkr_prop_biker_gcase_s'] = "sniperCase",
    ['p_gcase_s'] = "sniperCase",

    ---- minigun -----------------------
    ['ex_prop_crate_minig'] = "minigun",

    ---- launcher case -----------------------
    ['xm_prop_crates_sam_01a'] = "launcherCase",
    ['gr_prop_gr_crates_sam_01a'] = "launcherCase",
    ['ba_prop_battle_crates_sam_01a'] = "launcherCase",

    ---- gun cases -----------------------
    -- ['prop_mil_crate_01'] = "gunCase",
    ['hei_prop_crate_stack_01'] = "gunCase",
    ['prop_box_wood02a_pu'] = "gunCase",
    ['prop_mb_crate_01b'] = "gunCase",
    ['prop_mb_cargo_04b'] = "gunCase",
    ['ba_prop_battle_crates_rifles_03a'] = "gunCase",
    ['prop_box_guncase_03a'] = "gunCase",
    ['prop_box_wood02a_mws'] = "gunCase",
    ['prop_gun_case_01'] = "gunCase",
    ['ba_prop_batle_crates_pounder'] = "gunCase",
    ['xm_prop_rsply_crate04b'] = "gunCase",
    ['gr_prop_gr_rsply_crate04b'] = "gunCase",

    ['prop_mb_crate_01a'] = "gunCase",

    ---- equipment loot -----------------------
    ['ex_prop_adv_case'] = "equipmentLootx2",
    ['ba_prop_battle_rsply_crate_02a'] = "equipmentLoot",
    ['prop_mb_cargo_04a'] = "equipmentLoot",

    ---- ammo ----------------------------
    ['prop_ld_ammo_pack_01'] = "pistoAmmolCase",
    ['prop_ld_ammo_pack_03'] = "rifleAmmoCase",
    ['prop_ld_ammo_pack_02'] = "shotgunAmmoCase",
    ['v_ret_gc_ammo3'] = "shotgunAmmoCase",
    ['prop_box_ammo07b'] = "sniperAmmoCase",
    ['prop_box_ammo07a'] = "sniperAmmoCase",
    ['prop_box_ammo01a'] = "mixedAmmo",
    ['prop_box_ammo04a'] = "mixedAmmo",
    ['prop_box_ammo02a'] = "mixedAmmo",
    ['prop_box_ammo06a'] = "mixedAmmoBig_x1",
    ['ba_prop_battle_crates_pistols_01a'] = "mixedAmmoBig_x1",

    ['gr_prop_gr_crate_mag_01a'] = "mixedAmmoBig_x1",
    ['prop_drop_crate_01_set'] = "mixedAmmoBig_x1",

    ['hei_prop_hei_ammo_single'] = "explosivesCase_x1",
    ['hei_prop_hei_ammo_pile'] = "explosivesCase_x4",
    ['hei_prop_hei_ammo_pile_02'] = "explosivesCase_x6",
    ['prop_box_ammo03a'] = "explosivesCase_x1",
    ['prop_box_ammo03a_set2'] = "explosivesCase_x4",
    ['prop_box_ammo03a_set'] = "explosivesCase_x6",

    ---- explosives ----------------------------
    ['hei_prop_heist_thermite_case'] = "thermiteLoot",

    ---- medical supplies ----
    ['ex_prop_crate_closed_ms'] = "medicalCrate",
    ['ba_prop_battle_crate_med_bc'] = "medicalCrate",
    ['prop_med_bag_01b'] = "medicalBag",
    ['m23_1_prop_m31_crate_medical'] = "medicalCase",
    ['ba_prop_battle_crate_m_medical'] = "medicalCase",
    ['sm_prop_smug_crate_m_medical'] = "medicalCrate",
    ['ex_prop_crate_med_bc'] = "medicalCrate",
    ['ex_prop_crate_med_sc'] = "medicalCrate2",
    ['prop_medstation_04'] = "medicalStation1",
    ['prop_medstation_03'] = "medicalStation2",
    ['prop_medstation_01'] = "medicalStation3",

    ---- trash bins -------------------------------------------
    ['prop_dumpster_3a'] = "trashBig",
    ['prop_skip_05a'] = "trashBig",
    ["prop_cs_bin_03"] = "trashBig",
    ["prop_cs_bin_01"] = "trashBig",
    ["prop_cs_bin_02"] = "trashBig",
    ["prop_fbibombbin"] = "trashBig",
    ["prop_bin_07b"] = "trashBig",
    ["prop_bin_beach_01d"] = "trashBig",
    ["prop_bin_01a"] = "trashBig",
    ["prop_recyclebin_04_a"] = "trashBig",
    ["prop_bin_beach_01a"] = "trashBig",
    ["prop_recyclebin_02_c"] = "trashBig",
    ["prop_bin_delpiero_b"] = "trashBig",
    ["zprop_bin_01a_old"] = "trashBig",
    ["prop_recyclebin_03_a"] = "trashBig",
    ["prop_bin_07c"] = "trashBig",
    ["prop_bin_10b"] = "trashBig",
    ["prop_bin_10a"] = "trashBig",
    ["prop_bin_14a"] = "trashBig",
    ["prop_bin_11a"] = "trashBig",
    ["prop_bin_06a"] = "trashBig",
    ["prop_bin_07d"] = "trashBig",
    ["prop_bin_11b"] = "trashBig",
    ["prop_bin_04a"] = "trashBig",
    ["prop_recyclebin_02b"] = "trashBig",
    ["prop_bin_delpiero"] = "trashBig",
    ["prop_bin_09a"] = "trashBig",
    ["prop_bin_08a"] = "trashBig",
    ["prop_recyclebin_04_b"] = "trashBig",
    ["prop_bin_02a"] = "trashBig",
    ["prop_bin_03a"] = "trashBig",
    ["prop_cs_bin_01_skinned"] = "trashBig",
    ['prop_dumpster_4b'] = "trashBig",
    ['prop_dumpster_4a'] = "trashBig",
    ['prop_dumpster_01a'] = "trashBig",
    ['prop_dumpster_02a'] = "trashBig",
    ['prop_dumpster_02b'] = "trashBig",

    ---- trash bags -------------------------------------------
    ['prop_rub_binbag_sd_01'] = "trashBig",
    ['prop_ld_rub_binbag_01'] = "trashBig",
    ['prop_rub_binbag_sd_02'] = "trashBig",
    ['prop_ld_binbag_01'] = "trashBig",
    ['prop_cs_rub_binbag_01'] = "trashBig",
    ['prop_cs_street_binbag_01'] = "trashBig",
    ['prop_rub_binbag_03b'] = "trashBig",
    ['prop_rub_binbag_04'] = "trashBig",
    ['prop_rub_binbag_01'] = "trashBig",
    ['prop_rub_binbag_08'] = "trashBig",
    ['prop_rub_binbag_05'] = "trashBig",
    ['p_rub_binbag_test'] = "trashBig",
    ['prop_rub_binbag_06'] = "trashBig",
    ['prop_rub_binbag_03'] = "trashBig",
    ['prop_rub_binbag_01b'] = "trashBig",
    ['hei_prop_heist_binbag'] = "trashBig",
    ['ng_proc_binbag_01a'] = "trashBig",
    ['p_binbag_01_s'] = "trashBig",

    ---- drugs -------------------------------------------
    ['bkr_prop_weed_lrg_01a'] = "cannabisLoot",
    ['bkr_prop_weed_lrg_01b'] = "cannabisLoot",
    ['bkr_prop_weed_med_01a'] = "cannabisLootsm",
    
    ['bkr_prop_weed_dry_01a'] = "groundWeed",

    ['sm_prop_smug_crate_l_narc'] = "drugCrate",
    ['ex_prop_crate_narc_sc'] = "drugCrate",
    ['sm_prop_smug_crate_m_narc'] = "drugCrate",
    ['ex_prop_crate_narc_bc'] = "drugCrate",

    ['hei_prop_hei_drug_case'] = "cokeCase",
    ['prop_mp_drug_package'] = "cokeCase",
    ['hei_prop_hei_drug_pack_02'] = "cokeCase",

    ---- vehicles -------------------------------------------
    ['prop_rub_carwreck_5'] = "carLoot",
    ['prop_rub_carwreck_12'] = "carLoot",
    ['prop_rub_carwreck_10'] = "carLoot",
    ['prop_rub_carwreck_13'] = "carLoot",
    ['prop_rub_carwreck_17'] = "carLoot",
    ['prop_rub_carwreck_2'] = "carLoot",
    ['prop_rub_carwreck_14'] = "carLoot",
    ['prop_rub_carwreck_15'] = "carLoot",
    ['prop_rub_carwreck_8'] = "carLoot",
    ['prop_rub_carwreck_16'] = "carLoot",
    ['prop_rub_carwreck_7'] = "carLoot",
    ['prop_rub_carwreck_11'] = "carLoot",

    ['prop_rub_buswreck_06'] = "truckLoot",
    ['prop_rub_carwreck_9'] = "truckLoot",
    ['prop_rub_carwreck_3'] = "truckLoot",
    ['prop_rub_trukwreck_1'] = "truckLoot",

    ---- Till ------------------------------------------------
    ['prop_till_03'] = "registerLoot",
    ['prop_till_01_dam'] = "registerLoot",
    ['prop_till_01'] = "registerLoot",
    ['prop_till_02'] = "registerLoot",
    ['p_till_01_s'] = "registerLoot",

    ['hei_prop_hei_security_case'] = "securityCase",
    ['bkr_prop_biker_case_shut'] = "bikerCase",

    ['prop_cash_trolly'] = "cashTrolly1",
    ['hei_prop_hei_cash_trolly_02'] = "cashTrolly2",
    ['hei_prop_hei_cash_trolly_01'] = "cashTrolly3",

    ['prop_cash_crate_01'] = "cashCrate",

    ['vw_prop_vw_crate_02a'] = "cashSkid",

    ['hei_prop_gold_trolly_half_full'] = "goldTrolly",

    ---- Luggage ------------------------------------------------
    ['prop_luggage_03a'] = "luggageLoot",
    ['prop_luggage_08a'] = "luggageLoot",
    ['prop_luggage_04a'] = "luggageLoot",
    ['prop_luggage_05a'] = "luggageLoot",
    ['prop_luggage_07a'] = "luggageLoot",

    ---- Base Loot ------------------------------------------------
    ['ex_prop_adv_case_sm_03'] = "baseLoot",
    ['ex_prop_crate_closed_sc'] = "baseLoot",
    
    ['m23_1_prop_m31_crate_03a'] = "baseLoot",
    ['v_ind_cfcovercrate'] = "baseLoot",
    ['m23_1_prop_m31_woodencrate_01a'] = "baseLoot",
    ['xm3_prop_xm3_crate_01a'] = "baseLoot",
    ['v_ind_cfcrate3'] = "baseLoot",
    ['prop_box_wood08a'] = "baseLoot",
    ['prop_cratepile_07a_l1'] = "baseLoot",


    ---- Myster Crate ------------------------------------------------
    ['xs_prop_arena_crate_01a'] = "mysteryCrate",

    ---- Computer Loot ------------------------------------------------
    ['v_ind_dc_desk02'] = "ComputerLoot",
    ['v_ind_dc_desk01'] = "ComputerLoot",
    ['xm_prop_base_staff_desk_01'] = "ComputerLoot",
    ['xm_prop_base_staff_desk_02'] = 'ComputerLoot',
    ['prop_keyboard_01b'] = 'ComputerLoot',

    ---- Computer Loot ------------------------------------------------
    ['prop_rad_waste_barrel_01'] = 'radioactiveloot',

}


Config.propDeleteOnloot = {
    ['prop_battery_02'] = true,
    ['prop_battery_01'] = true,
    ['prop_car_battery_01'] = true,
    ['prop_rub_binbag_sd_01'] = true,
    ['prop_ld_rub_binbag_01'] = true,
    ['prop_rub_binbag_sd_02'] = true,
    ['prop_ld_binbag_01'] = true,
    ['prop_cs_rub_binbag_01'] = true,
    ['prop_cs_street_binbag_01'] = true,
    ['prop_rub_binbag_03b'] = true,
    ['prop_rub_binbag_04'] = true,
    ['prop_rub_binbag_01'] = true,
    ['prop_rub_binbag_08'] = true,
    ['prop_rub_binbag_05'] = true,
    ['p_rub_binbag_test'] = true,
    ['prop_rub_binbag_06'] = true,
    ['prop_rub_binbag_03'] = true,
    ['prop_rub_binbag_01b'] = true,
    ['hei_prop_heist_binbag'] = true,
    ['ng_proc_binbag_01a'] = true,
    ['p_binbag_01_s'] = true,
    ['prop_box_guncase_02a'] = true,
    ['prop_box_guncase_01a'] = true,
    ['prop_box_wood02a_pu'] = true,
    ['prop_gun_case_01'] = true,
    ['p_gcase_s'] = true,
    ['prop_box_guncase_03a'] = true,
    ['prop_ld_ammo_pack_01'] = true,
    ['prop_ld_ammo_pack_03'] = true,
    ['prop_ld_ammo_pack_02'] = true,
    ['prop_box_ammo07b'] = true,
    ['prop_box_ammo07a'] = true,
    ['prop_box_ammo01a'] = true,
    ['prop_box_ammo04a'] = true,
    ['prop_box_ammo02a'] = true,
    ['v_ret_gc_ammo3'] = true,
    ['prop_luggage_03a'] = true,
    ['prop_luggage_08a'] = true,
    ['prop_luggage_04a'] = true,
    ['prop_luggage_05a'] = true,
    ['prop_luggage_07a'] = true,

    ['bkr_prop_weed_lrg_01a'] = true,
    ['bkr_prop_weed_lrg_01b'] = true, 
    ['bkr_prop_weed_med_01a'] = true,

    ['bkr_prop_weed_dry_01a'] = true,


}

Config.lootIncreaseZones = {
    {coords = vector3(407.23, 4834.97, -62.6),radious = 400.0,loopIncrease = 2}, -- IAA Facility

    {coords = vector3(-1778.12, -1165.51, 13.06),radious = 200.0,loopIncrease = 2},
    {coords = vector3(-1726.23, -192.4, 58.51),radious = 200.0,loopIncrease = 2},
    {coords = vector3(2500.67, -383.64, 96.92),radious = 200.0,loopIncrease = 2},
    {coords = vector3(1689.61, 2605.72, 45.56),radious = 200.0,loopIncrease = 2},
    {coords = vector3(3523.32, 3722.21, 36.64),radious = 200.0,loopIncrease = 4},
    {coords = vector3(-135.7, 6379.83, 31.63),radious = 200.0,loopIncrease = 4},
    {coords = vector3(-2209.57, 3056.11, 32.85),radious = 300.0,loopIncrease = 6},
    {coords = vector3(-401.35, 1204.18, 325.88),radious = 200.0,loopIncrease = -10},
    {coords = vector3(749.04, 1286.76, 360.3),radious = 200.0,loopIncrease = -10},
} ---- places where the loot will be increased

Config.Locales = {
    ["click_get_item"] = "Click to get this items",
    ["click_get_items"] = "Click to get all items",
    ["nothing_here"] = "There is nothing here",
    ["get_all"] = "Get all items",
    ["search"] = "Search",
    ["search_animal"] = "Search Animal",
    ["need_cut_weapon"] = "You need a cutting weapon",
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

local errorTypes = nil
for k,v in pairs(Config.types) do
    if v.probabilityLoots and v.probabilityLoots.items then
        local count = 0
        for k2,v2 in ipairs(v.probabilityLoots.items) do
            count = count + v2.probability
        end
        if count > 100 then
            if not errorTypes then
                errorTypes = '[^3LIST^7] '..k
            else
                errorTypes = errorTypes..","..k
            end
        end
    end
end

if errorTypes then
    print("[^3WARNING^7] THE SUM OF YOUR PROBABILITY IS BIGGER THAN 100% IN THIS LOOT TYPES: \n"..errorTypes)
end
