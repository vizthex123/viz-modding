// Adds tags to items
onEvent("item.tags", e => {

    ////// Custom

    //// Quests
    
    // Belts
    e.add("quintessence:belt", ["malum:belt_of_the_magebane", "malum:belt_of_the_prospector", "malum:belt_of_the_starved"])


    // (Flui)ducts
    e.add("quintessence:fluiduct", ["thermal:fluid_duct", "thermal:fluid_duct_windowed"])
    e.add("quintessence:duct", ["#quintessence:fluiduct", "thermal:energy_duct"])

    // Tape Measures
    // Also used in the recipe for Quintessence
    e.add("quintessence:tape_measure", ["measurements:tape_measure", "quark:abacus"])




    //// Recipes

    // AE2 Presses
    e.add("quintessence:ae2_press", ["ae2:calculation_processor_press", "ae2:engineering_processor_press", "ae2:logic_processor_press", "ae2:silicon_press"])

    // Dragon Scales
    e.add("quintessence:dragon_scale", ["tconstruct:dragon_scale", "quark:dragon_scale"])

    // Eggs
    e.add("quintessence:egg", ["egg", "turtle_egg", "additionaladditions:fried_egg", "quark:egg_parrot_blue", "quark:egg_parrot_green", "quark:egg_parrot_grey", "quark:egg_parrot_red_blue", "quark:egg_parrot_yellow_blue"])

    // Leather armour
    e.add("quintessence:leather_armour", ["leather_helmet", "leather_chestplate", "leather_leggings", "leather_boots", "leather_horse_armor"])

    // Magic Dust
    e.add("quintessence:magic_dust", ["enigmaticlegacy:astral_dust", "obscure_api:astral_dust", "ob_core:magic_dust"])

    // Shards
    e.add("quintessence:shards", ["amethyst_shard", "byg:emeraldite_shards", "byg:subzero_crystal_shard", "byg:therium_shard"])

    // Torches
    e.add("quintessence:torch", ["torch", "soul_torch", "redstone_torch", "aquatictorches:aquatic_torch", "botania:animated_torch", "malum:ether_torch", "malum:iridescent_ether_torch"])

    // Wooden
    e.add("quintessence:wooden_tool", ["wooden_sword", "wooden_pickaxe", "wooden_shovel", "wooden_hoe", "wooden_axe"])




    //// Removals
    e.removeAllTagsFrom("tcintegrations:bronze_block")
    e.removeAllTagsFrom("tcintegrations:bronze_ingot")
    e.removeAllTagsFrom("tcintegrations:bronze_nugget")

})