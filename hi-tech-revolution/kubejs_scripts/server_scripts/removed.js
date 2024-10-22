// Removes various recipes
ServerEvents.recipes(e => {

    // Remove redundant recipes
    e.remove({id: "outer_end:slime_from_gel"})

    e.remove({id: "silverbirch:smelt_silver_birch_log_into_charcoal"})

    e.remove({id: "xycraft_machines:shaped/sticky_piston_tagged"})

    // For some reason, this doesn't work with the tagged recipe
    // e.remove({id: "yungscavebiomes:glass_from_ancient_sand"})



    // Remove vanilla wool dyeing recipes
    e.remove({id: "minecraft:dye_white_wool"})
    e.remove({id: "minecraft:dye_orange_wool"})
    e.remove({id: "minecraft:dye_magenta_wool"})
    e.remove({id: "minecraft:dye_light_blue_wool"})
    e.remove({id: "minecraft:dye_yellow_wool"})
    e.remove({id: "minecraft:dye_lime_wool"})
    e.remove({id: "minecraft:dye_pink_wool"})
    e.remove({id: "minecraft:dye_gray_wool"})
    e.remove({id: "minecraft:dye_light_gray_wool"})
    e.remove({id: "minecraft:dye_cyan_wool"})
    e.remove({id: "minecraft:dye_purple_wool"})
    e.remove({id: "minecraft:dye_blue_wool"})
    e.remove({id: "minecraft:dye_brown_wool"})
    e.remove({id: "minecraft:dye_green_wool"})
    e.remove({id: "minecraft:dye_red_wool"})
    e.remove({id: "minecraft:dye_black_wool"})



    // Removed for balancing/replacement
    e.remove({id: "ad_astra:steel_ingot"})
    e.remove({id: "ad_astra:steel_block"})
    e.remove({id: "ad_astra:strophar_ladder"})

    e.remove({id: "ae2:vibration_chamber"})

    e.remove({id: "cavesanddepths:chalkstoner"})
    e.remove({id: "cavesanddepths:mossballr"})
    e.remove({id: "cavesanddepths:mossballrr"})

    e.remove({id: "cavesanddepths:rosegoldnuggetr"})
    e.remove({id: "cavesanddepths:rosegoldnuggetrr"})
    e.remove({id: "cavesanddepths:rosegoldblockr"})
    e.remove({id: "cavesanddepths:rosegoldblockrr"})

    e.remove({id: "copperworks:copper_plate_recipe"})
    e.remove({id: "copperworks:iron_plate_recipe"})
    e.remove({id: "copperworks:rocket_boots_recipe"})

    e.remove({id: "ecologics:mushroom_stew_from_coconut_husk"})
    e.remove({id: "ecologics:rabbit_stew_from_red_mushroom_and_coconut_husk"})
    e.remove({id: "ecologics:rabbit_stew_from_brown_mushroom_and_coconut_husk"})

    e.remove({id: "essentials:piston"})
    e.remove({id: "essentials:auto_crafter"})
    e.remove({id: "essentials:essentials_guide_book_conversion"})

    e.remove({id: "galosphere:silver_block"})
    e.remove({id: "galosphere:silver_ingot"})
    e.remove({id: "galosphere:silver_nugget"})
    e.remove({id: "galosphere:silver_ingot_from_nuggets"})
    e.remove({id: "galosphere:raw_silver_block"})

    e.remove({id: "nourished_nether:netherite_nugget"})
    e.remove({id: "nourished_nether:netherite_nuggets_to_ingot"})
    e.remove({id: "nourished_nether:hoglin_hide_to_leather"})

    e.remove({id: "quark:building/crafting/compressed/gunpowder_sack"})
    e.remove({id: "quark:building/crafting/compressed/gunpowder_sack_uncompress"})

    e.remove({id: "rftoolsbase:dimensionalshard"})

    e.remove({id: "thermal:augments/rs_control_augment"})

    e.remove({id: "thermal_extra:machine/component_assembly/redstone_servo1"})



    // Removes recipes I moved to the Amalgamation Station
    e.remove({id: "minecraft:ender_pearl"})
    e.remove({id: "minecraft:netherite_ingot"})

    e.remove({id: "minecraft:white_concrete_powder"})
    e.remove({id: "minecraft:orange_concrete_powder"})
    e.remove({id: "minecraft:magenta_concrete_powder"})
    e.remove({id: "minecraft:light_blue_concrete_powder"})
    e.remove({id: "minecraft:yellow_concrete_powder"})
    e.remove({id: "minecraft:lime_concrete_powder"})
    e.remove({id: "minecraft:pink_concrete_powder"})
    e.remove({id: "minecraft:gray_concrete_powder"})
    e.remove({id: "minecraft:light_gray_concrete_powder"})
    e.remove({id: "minecraft:cyan_concrete_powder"})
    e.remove({id: "minecraft:purple_concrete_powder"})
    e.remove({id: "minecraft:blue_concrete_powder"})
    e.remove({id: "minecraft:brown_concrete_powder"})
    e.remove({id: "minecraft:green_concrete_powder"})
    e.remove({id: "minecraft:red_concrete_powder"})
    e.remove({id: "minecraft:black_concrete_powder"})

    e.remove({id: "minecraft:music_disc_5"})
    e.remove({id: "alexscaves:music_disc_fusion"})
    e.remove({id: "upgrade_aquatic:music_disc_atlantis"})

    e.remove({id: "alexscaves:azure_neodymium_ingot"})
    e.remove({id: "alexscaves:scarlet_neodymium_ingot"})

    e.remove({id: "mffs:steel_compound"})

    e.remove({id: "redstone_arsenal:materials/flux_gem"})
    e.remove({id: "redstone_arsenal:materials/flux_dust"})
    e.remove({id: "redstone_arsenal:materials/flux_ingot_fire_charge_from_dust"})

    e.remove({id: "tempad:tempad"})


    // Removes recipes I moved to the Reprocessor
    e.remove({id: "biggerreactors:smelting/graphite_ingot"})
    e.remove({id: "biggerreactors:blasting/graphite_ingot"})


    // Removes recipes I moved to the Shredder
    e.remove({id: "nourished_nether:smelt_netherite_gear"})

    e.remove({id: "thermal:machines/smelter/smelter_iron_armor"})
    e.remove({id: "thermal:machines/smelter/smelter_iron_tools"})

    e.remove({id: "thermal:machines/smelter/smelter_gold_armor"})
    e.remove({id: "thermal:machines/smelter/smelter_gold_tools"})

    e.remove({id: "thermal:machines/pulverizer/pulverizer_diamond_armor"})
    e.remove({id: "thermal:machines/pulverizer/pulverizer_diamond_tools"})



    // Remove errored recipes
    e.remove({id: "outer_end:azure_vertical_to_planks"})
    e.remove({id: "outer_end:azure_vertical_to_slab"})
    e.remove({id: "outer_end:himmel_vertical_to_slab"})
    e.remove({id: "outer_end:slab_from_vertical_slab"})
    e.remove({id: "outer_end:violite/bricks/slab_from_vertical_slab"})
    e.remove({id: "outer_end:violite/mossy_bricks/slab_from_vertical_slab"})
    e.remove({id: "outer_end:violite/mossy_tiles/slab_from_vertical_slab"})
    e.remove({id: "outer_end:violite/slab_from_vertical_slab"})
    e.remove({id: "outer_end:violite/tiles/slab_from_vertical_slab"})

    e.remove({id: "thermal:compat/biomesoplenty/sawmill_bop_cherry_logs"})
    e.remove({id: "thermal:compat/biomesoplenty/tree_extractor_bop_pink_cherry"})
    e.remove({id: "thermal:compat/biomesoplenty/tree_extractor_bop_white_cherry"})
    e.remove({id: "thermal:compat/biomesoplenty/insolator_bop_white_cherry_sapling"})
    e.remove({id: "thermal:compat/biomesoplenty/insolator_bop_pink_cherry_sapling"})
    e.remove({id: "thermal:compat/quark/insolator_quark_pink_blossom_sapling"})

})