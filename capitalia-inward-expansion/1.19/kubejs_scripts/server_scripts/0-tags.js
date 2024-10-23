// Manages tags for items, blocks, and fluids
ServerEvents.tags("item", e => {

    //// Custom tags ////
/*
    // Workbench
    // Used in a few recipes
    e.add("expansion:workbench", ["#forge:workbenches", "crafting_table", "ae2:cell_workbench"])
*/
    // Bindings & paper (book recipe)
    e.add("forge:leather", ["endergetic:booflo_hide", "nourished_nether:hoglin_hide", "quark:ravager_hide"])
    e.add("expansion:binding", ["#forge:leather", "phantom_membrane"])
    e.add("expansion:paper", ["paper", "kubejs:parchment"])

    // Create Deco Coinstacks
    e.add("expansion:coin_stack", ["createdeco:copper_coinstack", "createdeco:zinc_coinstack", "createdeco:iron_coinstack", "createdeco:gold_coinstack", "createdeco:netherite_coinstack", "createdeco:cast_iron_coinstack", "createdeco:brass_coinstack"])

    // Ectoplasm
    // Used to make Ectoplasm Blocks and Polterpork
    e.add("expansion:ectoplasm", ["biomemakeover:ectoplasm", "nourished_nether:ectoplasm"])
    e.add("forge:slimeballs", ["biomemakeover:ectoplasm", "nourished_nether:ectoplasm"])

    // Fibrous Foiliage
    // Used to make Fibers
    e.add("expansion:fibrous_foiliage", ["apple", "beetroot", "chorus_fruit", "glow_berries", "potato", "poisonous_potato", "sugar_cane", "sweet_berries", "food_enhancements:green_apple", "food_enhancements:pumpkin_slice", "enlightened_end:elevibloom", "enlightened_end:frost_fruit", "enlightened_end:glow_gourd_slice"])

    // Furnaces
    e.add("expansion:furnace", ["furnace", "quark:blackstone_furnace", "quark:deepslate_furnace"])

    // Ropes
    e.add("expansion:rope", ["additionaladditions:rope", "quark:rope"])

    // Tall Flowers
    e.add("expansion:tall_flowers", ["lilac", "peony", "rose_bush", "biomemakeover:black_thistle", "biomemakeover:foxglove", "biomemakeover:marigold", "biomemakeover:swamp_azalea", "silverbirch:cattail", "silverbirch:blossom_bushel", "upgrade_aquatic:flowering_rush"])



    // Concrete (milling recipe fix)
    e.add("expansion:concrete", ["white_concrete", "orange_concrete", "magenta_concrete", "light_blue_concrete", "yellow_concrete", "lime_concrete", "pink_concrete", "gray_concrete", "light_gray_concrete", "cyan_concrete", "purple_concrete", "blue_concrete", "brown_concrete", "green_concrete", "red_concrete", "black_concrete"])

    // Corundum
    e.add("expansion:corundum", ["quark:black_corundum_cluster", "quark:blue_corundum_cluster", "quark:green_corundum_cluster", "quark:indigo_corundum_cluster", "quark:orange_corundum_cluster", "quark:red_corundum_cluster", "quark:violet_corundum_cluster", "quark:white_corundum_cluster", "quark:yellow_corundum_cluster"])

    // Glazed Terracotta
    e.add("glazed_terracotta", ["white_glazed_terracotta", "orange_glazed_terracotta", "magenta_glazed_terracotta", "light_blue_glazed_terracotta", "yellow_glazed_terracotta", "lime_glazed_terracotta", "pink_glazed_terracotta", "gray_glazed_terracotta", "light_gray_glazed_terracotta", "cyan_glazed_terracotta", "purple_glazed_terracotta", "blue_glazed_terracotta", "brown_glazed_terracotta", "green_glazed_terracotta", "red_glazed_terracotta", "black_glazed_terracotta"])

    // Hollow Logs
    e.add("expansion:hollow_log", ["#quark:hollow_logs", "silverbirch:hollow_log"])

    // Wet Blocks (sifting recipe)
    e.add("expansion:wet_block", ["mud", "muddy_mangrove_roots", "packed_mud", "clay"])





    //// Quest tags ////

    // Myalite
    e.add("expansion:myalite", ["quark:myalite", "quark:dusky_myalite", "quark:myalite_crystal"])

    // Pickaxes
    e.add("expansion:iron_pickaxe", ["iron_pickaxe", "bluepower:tungcarb_pickaxe", "bluepower:amethyst_pickaxe", "bluepower:green_sapphire_pickaxe", "bluepower:ruby_pickaxe", "bluepower:sapphire_pickaxe"])

    // Swords
    e.add("expansion:swords", ["wooden_sword", "stone_sword", "iron_sword"])






    //// Tags ////

    // Fermentable    
    // Used to make Ethanol
    e.add("forge:fermentable", ["#forge:crops", "#forge:mushrooms",
    "glow_berries", "sweet_berries", "chorus_fruit", "crimson_roots", "warped_roots", "crimson_fungus", "warped_fungus", "weeping_vines", "twisting_vines", "shroomlight",
    "biomemakeover:bulbus_root", "biomemakeover:mycelium_roots",
    "food_enhancements:green_apple",
    "enlightened_end:indigo_roots", "enlightened_end:closed_odd_roots", "enlightened_end:open_odd_roots", "enlightened_end:cerulean_vine", "enlightened_end:elevibloom", "enlightened_end:frost_fruit", "enlightened_end:glow_gourd_slice",
    "nourished_nether:ash_lump", "nourished_nether:soul_weeds", // remove ash and add a second recipe if i can
    "quark:chorus_weeds", "quark:chorus_twist",
    "upgrade_aquatic:blue_pickerelweed", "upgrade_aquatic:purple_pickerelweed"])

    // Ingots
    // Mostly show they show up in JEI search when filtering by the tag
    e.add("forge:ingots", ["bluepower:tungsten_carbide", "bluepower:blue_alloy", "bluepower:red_alloy", "bluepower:purple_alloy", "bygonenether:netherite_scrap_ingot", "enlightened_end:bismuth_ingot", "nourished_nether:necronium_ingot", "nourished_nether:soul_steel_ingot"])

    e.add("forge:ingots/blue_alloy", "bluepower:blue_alloy")
    e.add("forge:ingots/red_alloy", "bluepower:red_alloy")
    e.add("forge:ingots/purple_alloy", "bluepower:purple_alloy")
    e.add("forge:ingots/tungsten_carbide", "bluepower:tungsten_carbide")

    e.add("forge:ingots/bismuth", "enlightened_end:bismuth_ingot")
    e.add("forge:ingots/necronium", "nourished_nether:necronium_ingot")
    e.add("forge:ingots/netherite_scrap", "bygonenether:netherite_scrap_ingot")
    e.add("forge:ingots/soul_steel", "nourished_nether:soul_steel_ingot")

    // Sleepers (train track recipe)
    e.add("create:sleepers", ["polished_andesite_slab", "create:cut_andesite_slab", "create:polished_cut_andesite_slab", "create:cut_tuff_slab", "nourished_nether:smooth_basalt_slab", "quark:tuff_slab", "quark:polished_tuff_slab"])

    // Protects you from Powdered Snow
    e.add("freeze_immune_wearables", ["aquamirae:abyssal_boots", "aquamirae:three_bolt_boots", "biomemakeover:cladded_boots", "create:copper_diving_boots"])

    // Protects you from Radiation
    e.add("create_new_age:nuclear/hazmat_suit", ["aquamirae:abyssal_tiara", "aquamirae:abyssal_heaume", "aquamirae:abyssal_brigantine", "aquamirae:abyssal_leggings", "aquamirae:abyssal_boots",
    "biomemakeover:cladded_helmet", "biomemakeover:cladded_chestplate", "biomemakeover:cladded_leggings", "biomemakeover:cladded_boots",
    "deep_dark_regrowth:ancient_helmet", "deep_dark_regrowth:ancient_chestplate", "deep_dark_regrowth:ancient_leggings", "deep_dark_regrowth:ancient_boots",
    "enlightened_end:adamantite_armor_helmet", "enlightened_end:adamantite_armor_chestplate", "enlightened_end:adamantite_armor_leggings", "enlightened_end:adamantite_armor_boots"])
    e.remove("create_new_age:nuclear/hazmat_suit", ["leather_helmet", "leather_chestplate", "leather_leggings", "leather_boots", "create:goggles"])

    // Fences & Gates
    e.add("forge:fences/wooden", ["enlightened_end:cerulean_fence", "enlightened_end:indigo_fence"])
    e.add("forge:fence_gates/wooden", ["biomemakeover:ancient_oak_fence_gate", "biomemakeover:blighted_balsa_fence_gate", "biomemakeover:swamp_cypress_fence_gate", "biomemakeover:willow_fence_gate",
    "enlightened_end:cerulean_fence_gate", "enlightened_end:indigo_fence_gate", "silverbirch:silver_birch_fence_gate"])





    //// Fixes ////

    // Axes
    e.add("forge:tools/axes", ["#ae2:quartz_axe", "ae2:fluix_axe", "additionaladditions:rose_gold_axe", "additionaladditions:gilded_netherite_axe", "bluepower:tungcarb_axe", "bluepower:amethyst_axe", "bluepower:green_sapphire_axe", "bluepower:ruby_axe", "bluepower:sapphire_axe", "enlightened_end:adamantite_axe", "experienceobelisk:cognitive_axe", "nourished_nether:necronium_axe", "spirit:soul_steel_axe"])

    // Cobblestone
    e.add("cobblestone", ["bluepower:basalt_cobble"])
    e.add("quark:stone_tool_materials", ["bluepower:basalt_cobble"])

    // Adds some items to the fish fillet recipe
    e.remove("food_enhancements:raw_fish", ["tropical_fish", "aquamirae:spinefish"])

    // Drawers
    e.add("functionalstorage:drawer",
    ["biomemakeover_ancient_oak_1", "biomemakeover_ancient_oak_2", "biomemakeover_ancient_oak_4", "biomemakeover_blighted_balsa_1", "biomemakeover_blighted_balsa_2", "biomemakeover_blighted_balsa_4", "functionalstorage:biomemakeover_swamp_cypress_1", "functionalstorage:biomemakeover_swamp_cypress_2", "functionalstorage:biomemakeover_swamp_cypress_4", "functionalstorage:biomemakeover_willow_1", "functionalstorage:biomemakeover_willow_2", "functionalstorage:biomemakeover_willow_4",
    
    "functionalstorage:quark_ancient_1", "functionalstorage:quark_ancient_2", "functionalstorage:quark_ancient_4", "functionalstorage:quark_azalea_1", "functionalstorage:quark_azalea_2", "functionalstorage:quark_azalea_4", "functionalstorage:quark_blossom_1", "functionalstorage:quark_blossom_2", "functionalstorage:quark_blossom_4"])

    // Mushrooms
    e.add("forge:mushrooms", ["biomemakeover:green_glowshroom", "biomemakeover:purple_glowshroom", "biomemakeover:orange_glowshroom",
    "deep_dark_regrowth:infected_mushroom", "deep_dark_regrowth:short_infected_mushroom", "deep_dark_regrowth:large_infected_mushroom",
    "food_enhancements:cooked_mushroom",
    "quark:glow_shroom", "quark:glow_shroom_ring",
    "silverbirch:shelf_fungus"])

    // Music Discs
    e.add("music_discs", ["biomemakeover:button_mushrooms_music_disk", "biomemakeover:ghost_town_music_disk", "biomemakeover:red_rose_music_disk", "biomemakeover:swamp_jives_music_disk", "deep_dark_regrowth:between_gems", "deep_dark_regrowth:castle", "deep_dark_regrowth:cerebrawl", "deep_dark_regrowth:dungeon", "upgrade_aquatic:music_disc_atlantis"])

    // Obsidian (recipe)
    e.add("expansion:obsidian", ["#forge:dusts/obsidian", "obsidian", "crying_obsidian", "create:sturdy_sheet"])

    // Tall Flowers
    e.add("tall_flowers", ["silverbirch:cattail", "silverbirch:blossom_bushel"])

    // Saplings
    e.add("saplings", ["silverbirch:silver_birch_sapling"])
    
    // Seeds
    e.add("forge:seeds", ["biomemakeover:rootling_seeds", "bluepower:flax_seeds", "deep_dark_regrowth:apatine_seeds", "enlightened_end:elevibloom_seeds"])



    /// Misc fixes
    e.add("forge:ender_pearls", ["bygonenether:warped_ender_pearl"])

    e.add("forge:plates", ["bluepower:zincplate"])
    e.add("forge:plates/zinc", ["bluepower:zincplate"])

    e.add("create:stone_types/limestone", ["quark:limestone"])
    e.add("forge:limestone", ["create:limestone", "quark:limestone"])



    //// Removals ////
    e.remove("createsifter:meshes", ["createsifter:advanced_custom_mesh", "createsifter:custom_mesh"])
    e.remove("forge:slimeballs", ["myrtrees:latex"])

})


// Block tags
ServerEvents.tags("block", e => {

    //// Mining levels

    // Gems
    e.add("needs_iron_tool", ["bluepower:amethyst_ore", "bluepower:green_sapphire_ore", "bluepower:sapphire_ore", "bluepower:ruby_ore"])
    e.add("needs_iron_tool", ["bluepower:amethyst_deepslate", "bluepower:green_sapphire_deepslate", "bluepower:sapphire_deepslate", "bluepower:ruby_deepslate"])

    // Silver
    e.add("needs_iron_tool", ["bluepower:silver_ore", "bluepower:silver_deepslate"])

    // Tungsten
    e.add("needs_diamond_tool", ["bluepower:tungsten_ore", "bluepower:tungsten_deepslate"])

    // Zinc
    e.remove("needs_iron_tool", ["create:zinc_ore", "create:deepslate_zinc_ore"])
    e.add("needs_stone_tool", ["bluepower:zinc_ore", "bluepower:deepslate_zinc_ore", "create:zinc_ore", "create:deepslate_zinc_ore"])

    // Enlightend
    e.add("needs_diamond_tool", ["enlightened_end:bismuth_ore", "enlightened_end:irradium_ore", "enlightened_end:malachite_ore"])

    // Misc
    e.add("forge:needs_netherite_tool", ["deep_dark_regrowth:enlightened_deepslate"])

})