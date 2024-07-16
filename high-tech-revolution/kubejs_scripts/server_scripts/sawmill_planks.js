// Adds sawing recipes for modded planks
ServerEvents.recipes(e => {

    // Alex's Caves
    e.recipes.thermal.sawmill(["6x alexscaves:pewen_planks", Item.of("thermal:sawdust").withChance(0.25)], "#alexscaves:pewen_logs", 0.15).energy(1000).id("kubejs:saw_pewen_logs")
    e.recipes.thermal.sawmill(["6x alexscaves:thornwood_planks", Item.of("thermal:sawdust").withChance(0.25)], "#alexscaves:thornwood_logs", 0.15).energy(1000).id("kubejs:saw_thornwood_logs")



    // Ecologics
    e.recipes.thermal.sawmill(["6x ecologics:azalea_planks", Item.of("thermal:sawdust").withChance(0.25)], "#ecologics:azalea_logs", 0.15).energy(1000).id("kubejs:saw_azalea_logs")
    e.recipes.thermal.sawmill(["6x ecologics:coconut_planks", Item.of("thermal:sawdust").withChance(0.25)], "#ecologics:coconut_logs", 0.15).energy(1000).id("kubejs:saw_coconut_logs")
    e.recipes.thermal.sawmill(["6x ecologics:flowering_azalea_planks", Item.of("thermal:sawdust").withChance(0.25)], "#ecologics:flowering_azalea_logs", 0.15).energy(1000).id("kubejs:saw_flowering_azalea_logs")
    e.recipes.thermal.sawmill(["6x ecologics:walnut_planks", Item.of("thermal:sawdust").withChance(0.25)], "#ecologics:walnut_logs", 0.15).energy(1000).id("kubejs:saw_walnut_logs")



    // Regions Unexplored
    e.recipes.thermal.sawmill(["4x thermal:sawdust"], "#regions_unexplored:branches", 0.1).energy(500).id("kubejs:saw_branches")

    e.recipes.thermal.sawmill(["6x regions_unexplored:alpha_planks", Item.of("thermal:sawdust").withChance(0.25)], "regions_unexplored:alpha_log", 0.15).energy(1000).id("kubejs:saw_alpha_log")
    e.recipes.thermal.sawmill(["6x regions_unexplored:baobab_planks", Item.of("thermal:sawdust").withChance(0.25)], "#regions_unexplored:baobab_logs", 0.15).energy(1000).id("kubejs:saw_baobab_logs")
    e.recipes.thermal.sawmill(["6x regions_unexplored:blackwood_planks", Item.of("thermal:sawdust").withChance(0.25)], "#regions_unexplored:blackwood_logs", 0.15).energy(1000).id("kubejs:saw_blackwood_logs")
    e.recipes.thermal.sawmill(["6x regions_unexplored:blue_bioshroom_planks", Item.of("thermal:sawdust").withChance(0.25)], "#regions_unexplored:blue_bioshroom_logs", 0.15).energy(1000).id("kubejs:saw_blue_bioshroom_logs")
    e.recipes.thermal.sawmill(["6x regions_unexplored:brimwood_planks", Item.of("thermal:sawdust").withChance(0.25)], "#regions_unexplored:brimwood_logs", 0.15).energy(1000).id("kubejs:saw_brimwood_logs")
    e.recipes.thermal.sawmill(["6x regions_unexplored:cobalt_planks", Item.of("thermal:sawdust").withChance(0.25)], "#regions_unexplored:cobalt_logs", 0.15).energy(1000).id("kubejs:saw_cobalt_logs")
    e.recipes.thermal.sawmill(["6x regions_unexplored:cypress_planks", Item.of("thermal:sawdust").withChance(0.25)], "#regions_unexplored:cypress_logs", 0.15).energy(1000).id("kubejs:saw_cypress_logs")
    e.recipes.thermal.sawmill(["6x regions_unexplored:dead_planks", Item.of("thermal:sawdust").withChance(0.25)], "#regions_unexplored:dead_logs", 0.15).energy(1000).id("kubejs:saw_dead_logs")
    e.recipes.thermal.sawmill(["6x regions_unexplored:eucalyptus_planks", Item.of("thermal:sawdust").withChance(0.25)], "#regions_unexplored:eucalyptus_logs", 0.15).energy(1000).id("kubejs:saw_eucalyptus_logs")
    e.recipes.thermal.sawmill(["6x regions_unexplored:green_bioshroom_planks", Item.of("thermal:sawdust").withChance(0.25)], "#regions_unexplored:green_bioshroom_logs", 0.15).energy(1000).id("kubejs:saw_green_bioshroom_logs")
    e.recipes.thermal.sawmill(["6x regions_unexplored:joshua_planks", Item.of("thermal:sawdust").withChance(0.25)], "#regions_unexplored:joshua_logs", 0.15).energy(1000).id("kubejs:saw_joshua_logs")
    e.recipes.thermal.sawmill(["6x regions_unexplored:kapok_planks", Item.of("thermal:sawdust").withChance(0.25)], "#regions_unexplored:kapok_logs", 0.15).energy(1000).id("kubejs:saw_kapok_logs")
    e.recipes.thermal.sawmill(["6x regions_unexplored:larch_planks", Item.of("thermal:sawdust").withChance(0.25)], "#regions_unexplored:larch_logs", 0.15).energy(1000).id("kubejs:saw_larch_logs")
    e.recipes.thermal.sawmill(["6x regions_unexplored:magnolia_planks", Item.of("thermal:sawdust").withChance(0.25)], "#regions_unexplored:magnolia_logs", 0.15).energy(1000).id("kubejs:saw_magnolia_logs")
    e.recipes.thermal.sawmill(["6x regions_unexplored:maple_planks", Item.of("thermal:sawdust").withChance(0.25)], "#regions_unexplored:maple_logs", 0.15).energy(1000).id("kubejs:saw_maple_logs")
    e.recipes.thermal.sawmill(["6x regions_unexplored:mauve_planks", Item.of("thermal:sawdust").withChance(0.25)], "#regions_unexplored:mauve_logs", 0.15).energy(1000).id("kubejs:saw_mauve_logs")
    e.recipes.thermal.sawmill(["6x regions_unexplored:palm_planks", Item.of("thermal:sawdust").withChance(0.25)], "#regions_unexplored:palm_logs", 0.15).energy(1000).id("kubejs:saw_palm_logs")
    e.recipes.thermal.sawmill(["6x regions_unexplored:pine_planks", Item.of("thermal:sawdust").withChance(0.25)], "#regions_unexplored:pine_logs", 0.15).energy(1000).id("kubejs:saw_pine_logs")
    e.recipes.thermal.sawmill(["6x regions_unexplored:pink_bioshroom_planks", Item.of("thermal:sawdust").withChance(0.25)], "#regions_unexplored:pink_bioshroom_logs", 0.15).energy(1000).id("kubejs:saw_pink_bioshroom_logs")
    e.recipes.thermal.sawmill(["6x regions_unexplored:redwood_planks", Item.of("thermal:sawdust").withChance(0.25)], "#regions_unexplored:redwood_logs", 0.15).energy(1000).id("kubejs:saw_redwood_logs")
    e.recipes.thermal.sawmill(["6x regions_unexplored:socotra_planks", Item.of("thermal:sawdust").withChance(0.25)], "#regions_unexplored:socotra_logs", 0.15).energy(1000).id("kubejs:saw_socotra_logs")
    e.recipes.thermal.sawmill(["6x regions_unexplored:willow_planks", Item.of("thermal:sawdust").withChance(0.25)], "#regions_unexplored:willow_logs", 0.15).energy(1000).id("kubejs:saw_willow_logs")
    e.recipes.thermal.sawmill(["6x regions_unexplored:yellow_bioshroom_planks", Item.of("thermal:sawdust").withChance(0.25)], "#regions_unexplored:yellow_bioshroom_logs", 0.15).energy(1000).id("kubejs:saw_yellow_bioshroom_logs")



    // Upgrade Aquatic
    e.recipes.thermal.sawmill(["6x upgrade_aquatic:driftwood_planks", Item.of("thermal:sawdust").withChance(0.25)], "#upgrade_aquatic:driftwood_logs", 0.15).energy(1000).id("kubejs:saw_driftwood_logs")
    e.recipes.thermal.sawmill(["6x upgrade_aquatic:river_planks", Item.of("thermal:sawdust").withChance(0.25)], "#upgrade_aquatic:river_logs", 0.15).energy(1000).id("kubejs:saw_river_logs")



    // Hollow Logs
    e.recipes.thermal.sawmill(["3x acacia_planks", Item.of("thermal:sawdust").withChance(0.5)], "quark:hollow_acacia_log", 0.07).energy(500).id("kubejs:saw_hollow_acacia_log")
    e.recipes.thermal.sawmill(["3x birch_planks", Item.of("thermal:sawdust").withChance(0.5)], "quark:hollow_birch_log", 0.07).energy(500).id("kubejs:saw_hollow_birch_log")
    e.recipes.thermal.sawmill(["3x cherry_planks", Item.of("thermal:sawdust").withChance(0.5)], "quark:hollow_cherry_log", 0.07).energy(500).id("kubejs:saw_hollow_cherry_log")
    e.recipes.thermal.sawmill(["3x dark_oak_planks", Item.of("thermal:sawdust").withChance(0.5)], "quark:hollow_dark_oak_log", 0.07).energy(500).id("kubejs:saw_hollow_dark_oak_log")
    e.recipes.thermal.sawmill(["3x jungle_planks", Item.of("thermal:sawdust").withChance(0.5)], "quark:hollow_jungle_log", 0.07).energy(500).id("kubejs:saw_hollow_jungle_log")
    e.recipes.thermal.sawmill(["3x mangrove_planks", Item.of("thermal:sawdust").withChance(0.5)], "quark:hollow_mangrove_log", 0.07).energy(500).id("kubejs:saw_hollow_mangrove_log")
    e.recipes.thermal.sawmill(["3x oak_planks", Item.of("thermal:sawdust").withChance(0.5)], "quark:hollow_oak_log", 0.07).energy(500).id("kubejs:saw_hollow_oak_log")
    e.recipes.thermal.sawmill(["3x spruce_planks", Item.of("thermal:sawdust").withChance(0.5)], "quark:hollow_spruce_log", 0.07).energy(500).id("kubejs:saw_hollow_spruce_log")
    e.recipes.thermal.sawmill(["3x crimson_planks", Item.of("thermal:sawdust").withChance(0.5)], "quark:hollow_crimson_stem", 0.07).energy(500).id("kubejs:saw_hollow_crimson_stem")
    e.recipes.thermal.sawmill(["3x warped_planks", Item.of("thermal:sawdust").withChance(0.5)], "quark:hollow_warped_stem", 0.07).energy(500).id("kubejs:saw_hollow_warped_stem")
   
    e.recipes.thermal.sawmill(["3x quark:ancient_planks", Item.of("thermal:sawdust").withChance(0.5)], "quark:hollow_ancient_log", 0.07).energy(500).id("kubejs:saw_hollow_ancient_log")
    e.recipes.thermal.sawmill(["3x quark:azalea_planks", Item.of("thermal:sawdust").withChance(0.5)], "quark:hollow_azalea_log", 0.07).energy(500).id("kubejs:saw_hollow_azalea_log")
    e.recipes.thermal.sawmill(["3x quark:trumpet_planks", Item.of("thermal:sawdust").withChance(0.5)], "quark:hollow_trumpet_log", 0.07).energy(500).id("kubejs:saw_hollow_trumpet_log")

    e.recipes.thermal.sawmill(["3x silverbirch:silver_birch_planks", Item.of("birch_planks").withChance(0.5), Item.of("thermal:sawdust").withChance(0.5)], "silverbirch:hollow_log", 0.07).energy(500).id("kubejs:saw_hollow_silver_birch_log")



    // Misc
    // For mods that have less than 2 types of wood
    e.recipes.thermal.sawmill(["3x bamboo_planks", Item.of("thermal:sawdust").withChance(0.75)], "#minecraft:bamboo_blocks", 0.25).energy(1000).id("kubejs:saw_bamboo_blocks")

    e.recipes.thermal.sawmill(["6x outer_end:azure_planks", Item.of("thermal:sawdust").withChance(0.25)], "#outer_end:azure_stems", 0.15).energy(1000).id("kubejs:saw_azure_stems")

    e.recipes.thermal.sawmill(["6x phantasm:pream_planks", Item.of("thermal:sawdust").withChance(0.25)], "#phantasm:pream_logs", 0.15).energy(1000).id("kubejs:saw_pream_logs")

    e.recipes.thermal.sawmill(["6x quark:ancient_planks", Item.of("thermal:sawdust").withChance(0.25)], "#quark:ancient_logs", 0.15).energy(1000).id("kubejs:saw_ancient_logs")

    e.recipes.thermal.sawmill(["6x silverbirch:silver_birch_planks", Item.of("thermal:sawdust").withChance(0.25)], "#silverbirch:silver_birch_logs", 0.15).energy(1000).id("kubejs:saw_silver_birch_logs")

})