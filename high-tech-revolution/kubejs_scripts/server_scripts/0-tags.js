// Manages tags for items, blocks, and fluids
ServerEvents.tags("item", e => {

    // Custom
    e.add("revolution:bowls", ["bowl", "ecologics:coconut_husk"])
    e.add("revolution:cleaning_agent", ["galosphere:pink_salt_shard"]) // Quicklime is given this tag on startup
    e.add("revolution:mossy_material", ["vine", "biomesoplenty:willow_vine", "ecologics:surface_moss", "quark:moss_paste"])
    e.add("revolution:torch_fuel", ["#minecraft:coals", "thermal:bitumen", "glow_lichen", "cavesanddepths:lichenfungusplaceable", "caveroot:torch_spore"])


    e.add("revolution:corundum", ["quark:red_corundum_cluster", "quark:orange_corundum_cluster", "quark:yellow_corundum_cluster", "quark:green_corundum_cluster", "quark:blue_corundum_cluster", "quark:indigo_corundum_cluster", "quark:violet_corundum_cluster", "quark:white_corundum_cluster", "quark:black_corundum_cluster"])



    e.add("revolution:furnace", ["furnace", "quark:blackstone_furnace", "quark:deepslate_furnace"])
    e.add("revolution:furnace_cobblestone", ["cobblestone", "mossy_cobblestone", "tuff", "ad_astra:glacio_cobblestone", "ad_astra:mercury_cobblestone", "ad_astra:mars_cobblestone", "ad_astra:moon_cobblestone", "ad_astra:venus_cobblestone", "cavesanddepths:chert", "cavesanddepths:cobbled_slate", "cavesanddepths:mossy_cobblestone", "cavesanddepths:mossy_cobbled_deepslate", "quark:jasper", "quark:shale", "upgrade_aquatic:kelpy_cobblestone"])
    e.add("revolution:input_stones", ["#forge:stone", "tuff", "quark:jasper", "quark:shale"])


    e.add("revolution:drawer1", ["functionalstorage:acacia_1", "functionalstorage:birch_1", "functionalstorage:cherry_1", "functionalstorage:crimson_1", "functionalstorage:dark_oak_1", "functionalstorage:jungle_1", "functionalstorage:mangrove_1", "functionalstorage:oak_1", "functionalstorage:spruce_1", "functionalstorage:warped_1", "functionalstorage:rubberwood_1"])

    e.add("revolution:drawer2", ["functionalstorage:acacia_2", "functionalstorage:birch_2", "functionalstorage:cherry_2", "functionalstorage:crimson_2", "functionalstorage:dark_oak_2", "functionalstorage:jungle_2", "functionalstorage:mangrove_2", "functionalstorage:oak_2", "functionalstorage:spruce_2", "functionalstorage:warped_2", "functionalstorage:rubberwood_2"])

    e.add("revolution:drawer4", ["functionalstorage:acacia_4", "functionalstorage:birch_4", "functionalstorage:cherry_4", "functionalstorage:crimson_4", "functionalstorage:dark_oak_4", "functionalstorage:jungle_4", "functionalstorage:mangrove_4", "functionalstorage:oak_4", "functionalstorage:spruce_4", "functionalstorage:warped_4", "functionalstorage:rubberwood_4"])



    e.add("revolution:silver_birch_logs", ["#silverbirch:silver_birch_logs", "regions_unexplored:silver_birch_log", "regions_unexplored:silver_birch_wood"])

    e.add("revolution:chalk_blocks", ["cavesanddepths:chalkstone", "regions_unexplored:chalk"])
    e.add("revolution:pink_salt_blocks", ["galosphere:pink_salt", "galosphere:pastel_pink_salt", "galosphere:rose_pink_salt"])

    e.add("revolution:xychorized_obsidian", ["xycraft_override:crying_obsidian_blue", "xycraft_override:crying_obsidian_green", "xycraft_override:crying_obsidian_red", "xycraft_override:crying_obsidian_dark", "xycraft_override:crying_obsidian_light"])

    e.add("revolution:glass_viewer", ["xycraft_world:glass_viewer", "xycraft_world:glass_viewer_silicon", "xycraft_world:glass_viewer_dire", "xycraft_world:glass_viewer_glowing", "xycraft_world:glass_viewer_glowing_clear", "xycraft_world:glass_viewer_dark", "xycraft_world:glass_viewer_reinforced", "xycraft_world:glass_viewer_immortal", "xycraft_world:glass_viewer_rgb_white", "xycraft_world:glass_viewer_rgb_glowing_white", "xycraft_world:glass_viewer_phantom", "xycraft_world:glass_viewer_phantom_glowing", "xycraft_world:glass_viewer_phantom_dark"])



    e.add("revolution:cacti", ["cactus", "regions_unexplored:saguaro_cactus", "regions_unexplored:barrel_cactus"])
    e.add("revolution:cave_plants", ["glow_lichen", "caveroot:cave_root", "caveroot:torch_spore"])
    e.add("revolution:nether_plants", ["crimson_fungus", "crimson_roots", "weeping_vines", "warped_fungus", "warped_roots", "twisting_vines"])
    e.add("revolution:vines", ["vine", "weeping_vines", "twisting_vines", "alexscaves:archaic_vine", "biomesoplenty:willow_vine", "outer_end:azure_vines", "regions_unexplored:kapok_vines"])



    // Quest tags
    e.add("revolution:me_storage", ["ae2:chest", "ae2:drive"])
    e.add("revolution:basic_generator", ["ad_astra:coal_generator", "thermal:dynamo_stirling", "thermal:dynamo_lapidary", "thermal:dynamo_gourmand"])
    e.add("revolution:plate_producer", ["ad_astra:compressor", "thermal:machine_press"])
    e.add("revolution:blast_furnace", ["ad_astra:etrionic_blast_furnace", "thermal:machine_smelter"])
    e.add("revolution:refinery", ["ad_astra:fuel_refinery", "thermal:machine_refinery"])



    // Forge tags
    e.add("forge:eggs", ["#minecraft:eggs", "turtle_egg", "sniffer_egg", "enderzoology:owl_egg", "quark:egg_parrot_blue", "quark:egg_parrot_green", "quark:egg_parrot_grey", "quark:egg_parrot_red_blue", "quark:egg_parrot_yellow_blue"])
    e.add("forge:feathers", ["ecologics:penguin_feather"])
    e.add("forge:leather", ["alexscaves:tough_hide", "nourished_nether:hoglin_hide"])
    e.add("forge:mushrooms", ["ad_astra:aeronos_mushroom", "ad_astra:strophar_mushroom", "regions_unexplored:mycotoxic_mushrooms", "silverbirch:shelf_fungus"])
    e.add("forge:slimeballs", ["thermal:tar", "thermal:rosin", "mobcompack:rose_gelball"])

    e.add("forge:rods", ["cb_microblock:stone_rod"])
    e.add("forge:rods/wooden", ["cb_microblock:stone_rod"])

    e.add("forge:cobblestone", ["#revolution:furnace_cobblestone"])
    e.add("forge:stone", ["cavesanddepths:mossy_deepslate"])


    e.add("forge:gems", ["ad_astra_proxima_plus:micyurite", "alexscaves:occult_gem"])

    e.add("forge:nuggets/coal", ["minicoal:mini_coal", "minicoal:mini_charcoal"])
    e.add("forge:nuggets", ["copperworks:amethyst_piece", "#forge:nuggets/coal"])

    e.add("forge:ingots", ["ad_astra_proxima_plus:refined_micyurite", "alexscaves:azure_neodymium_ingot", "alexscaves:scarlet_neodymium_ingot", "jetboots:obsidian_infused_gold", "nourished_nether:necronium_ingot"])
    e.add("forge:ingots/rose_gold", ["cavesanddepths:rose_gold_ingot"])
    e.add("forge:ingots/neodymium", ["alexscaves:azure_neodymium_ingot", "alexscaves:scarlet_neodymium_ingot"])

    e.add("forge:storage_blocks/raw_copper", ["quark:raw_copper_bricks"])
    e.add("forge:storage_blocks/raw_iron", ["quark:raw_iron_bricks"])
    e.add("forge:storage_blocks/raw_gold", ["quark:raw_gold_bricks"])
    e.add("forge:storage_blocks/rose_gold", ["cavesanddepths:rose_gold_block"])

    e.add("forge:plates", ["copperworks:copper_plate", "copperworks:iron_plate"])
    e.add("forge:plates/copper", ["copperworks:copper_plate"])
    e.add("forge:plates/iron", ["copperworks:iron_plate"])



    // Mod tags
    e.add("ae2:all_quartz_dust", ["#forge:dusts/quartz"])

    e.add("blueprint:wooden_ladders", ["ad_astra:aeronos_ladder", "ad_astra:strophar_ladder", "outer_end:azure_ladder"])
    Ingredient.of("quark:ladders").itemIds.forEach(id => {
        if(id != "quark:iron_ladder")
        e.add("blueprint:wooden_ladders", id)
    })

    e.add("quark:hollow_logs", ["silverbirch:hollow_log"])
    Ingredient.of("#quark:hollow_logs").itemIds.forEach(id => {
        if(id != "quark:hollow_crimson_stem" && id != "quark:hollow_warped_stem")
        e.add("revolution:burnable_hollow_logs", id)
    })

    e.add("regions_unexplored:branches", ["alexscaves:pewen_branch", "alexscaves:thornwood_branch", "biomesoplenty:dead_branch"])



    //// Fixes
    //e.add("logs", ["silverbirch:silver_birch_log", "silverbirch:stripped_silver_birch_log", "silverbirch:silver_birch_wood", "silverbirch:stripped_silver_birch_wood"])
    e.add("leaves", ["silverbirch:silver_birch_leaves"])

    e.add("saplings", ["silverbirch:silver_birch_sapling"])

    e.add("boats", ["outer_end:azure_boat", "regions_unexplored:socotra_boat", "quark:azalea_boat", "outer_end:azure_chest_boat", "regions_unexplored:socotra_chest_boat", "quark:azalea_chest_boat"])
    e.add("chest_boats", ["outer_end:azure_chest_boat", "regions_unexplored:socotra_chest_boat", "quark:azalea_chest_boat"])

    e.add("fence_gates", ["outer_end:azure_fence_gate"])
    e.add("wooden_fences", ["outer_end:azure_fence"])
        e.add("forge:fence_gates", ["#minecraft:fence_gates", "outer_end:azure_fence_gate", "silverbirch:silver_birch_fence_gate"])
        e.add("forge:fence_gates/wooden", ["outer_end:azure_fence_gate", "silverbirch:silver_birch_fence_gate"])

    e.add("slabs", ["silverbirch:fungus_shingle_slab"])
    e.add("stairs", ["outer_end:azure_stairs", "silverbirch:fungus_shingle_stairs"])
    e.add("wooden_stairs", ["outer_end:azure_stairs"])
    e.add("walls", ["silverbirch:fungus_shingle_wall"])

    e.add("rails", ["alexscaves:magnetic_levitation_rail"])


    e.add("forge:chests", ["ae2:sky_stone_chest", "ae2:smooth_sky_stone_chest", "outer_end:azure_chest", "outer_end:azure_trapped_chest"])
    e.add("forge:chests/wooden", ["outer_end:azure_chest", "outer_end:azure_trapped_chest"])


    e.remove("regions_unexplored:magnolia_logs_item", ["regions_unexplored:magnolia_log", "regions_unexplored:stripped_magnolia_log", "regions_unexplored:magnolia_wood", "regions_unexplored:stripped_magnolia_wood"])
    e.add("regions_unexplored:magnolia_logs", ["regions_unexplored:magnolia_log", "regions_unexplored:stripped_magnolia_log", "regions_unexplored:magnolia_wood", "regions_unexplored:stripped_magnolia_wood"])


    e.add("signs", ["outer_end:azure_sign"])
    e.add("hanging_signs", ["outer_end:azure_hanging_sign"])



    /// Crop fixes
    e.remove("forge:fruits", ["upgrade_aquatic:mulberry"])
    e.remove("forge:fruits/mulberry", ["upgrade_aquatic:mulberry"])

    e.add("forge:crops", ["glow_berries", "sweet_berries", "pitcher_pod", "torchflower_seeds", "outer_end:azure_berries", "phantasm:pream_berry", "regions_unexplored:salmonberry", "upgrade_aquatic:mulberry"])

    e.add("forge:crops/azureberry", ["outer_end:azure_berries"])
    e.add("forge:crops/preamberry", ["phantasm:pream_berry"])
    e.add("forge:crops/salmonberry", ["regions_unexplored:salmonberry"])
    e.add("forge:crops/mulberry", ["upgrade_aquatic:mulberry"])



    // Misc tags
    e.add("sand", ["ad_astra_proxima_plus:proxima_b_sand", "ad_astra_proxima_plus:vicino_sand"])

    e.add("curios:charm", ["nourished_nether:totem_of_post_mortem"])
    e.add("forge:consumables/prevents_player_death", ["nourished_nether:totem_of_post_mortem"])

    e.add("ad_astra:venus_sandstone", ["ad_astra:venus_sandstone"])



    //// Removals
    e.remove("quark:stone_tool_materials", ["flint", "infested_stone", "infested_cobblestone", "infested_deepslate"])
    e.remove("forge:music_discs", ["biomesoplenty:music_disc_wanderer"])
    e.remove("sand", ["suspicious_sand", "biomesoplenty:mossy_black_sand"])
    e.remove("smelts_to_glass", ["biomesoplenty:mossy_black_sand"])

    e.removeAllTagsFrom("infested_cobblestone")
    e.removeAllTagsFrom("infested_deepslate")
    e.removeAllTagsFrom("infested_stone")

    e.removeAllTagsFrom("biggerreactors:wrench")
    e.removeAllTagsFrom("cavesanddepths:glittering_fungus")
    e.removeAllTagsFrom("cavesanddepths:lichenfungus")



    // Add the "destroyed in space" tag to other items
    e.add("ad_astra:destroyed_in_space", ["xycraft_world:aluminum_torch", "xycraft_world:copper_torch"])

})


// Block tags
ServerEvents.tags("block", e => {

    // Add the "destroyed in space" tag to other blocks
    e.add("ad_astra:destroyed_in_space", ["xycraft_world:aluminum_torch", "xycraft_world:copper_torch"])

    // Make blocks mineable
    e.add("minecraft:mineable/pickaxe", ["alexscaves:enigmatic_engine", "essentials:bricks_iron", "essentials:bricks_gold", "essentials:bricks_bronze", "essentials:bricks_tin"])

    // Change mining levels for things
    e.remove("minecraft:needs_iron_tools", ["biggerreactors:uranium_ore", "biggerreactors:deepslate_uranium_ore"])

    e.add("minecraft:needs_iron_tool", ["#forge:ores/silver", "#forge:ores/uranium", "alexscaves:enigmatic_engine"])

    // Fix Galosphere's Silver Blocks having the wrong mining level
    e.remove("minecraft:needs_stone_tool", ["galosphere:raw_silver_block", "galosphere:silver_block", "galosphere:silver_balance", "galosphere:silver_panel", "galosphere:silver_panel_stairs", "galosphere:silver_panel_slab", "galosphere:silver_tiles", "galosphere:silver_tiles_stairs", "galosphere:silver_tiles_slab", "galosphere:silver_lattice"])

    e.add("minecraft:needs_iron_tool", ["galosphere:raw_silver_block", "galosphere:silver_block", "galosphere:silver_balance", "galosphere:silver_panel", "galosphere:silver_panel_stairs", "galosphere:silver_panel_slab", "galosphere:silver_tiles", "galosphere:silver_tiles_stairs", "galosphere:silver_tiles_slab", "galosphere:silver_lattice"])

    // Fix Silver variants not having the proper mining level
    // I might unify these to only TE Silver instead but idk for sure. I kinda like having both. It's sorta retro, ya know?
    e.remove("minecraft:needs_stone_tool", ["galosphere:silver_ore", "galosphere:deepslate_silver_ore",
    "excavated_variants:andesite_silver", "excavated_variants:argillite_silver", "excavated_variants:biomesoplenty_black_sandstone_silver", "excavated_variants:biomesoplenty_orange_sandstone_silver", "excavated_variants:biomesoplenty_white_sandstone_silver", "excavated_variants:calcite_silver", "excavated_variants:chalk_silver", "excavated_variants:chalkstone_silver", "excavated_variants:chert_silver", "excavated_variants:diorite_silver", "excavated_variants:dripstone_silver", "excavated_variants:granite_silver", "excavated_variants:kivi_silver", "excavated_variants:mudstone_silver", "excavated_variants:pastel_pink_salt_silver", "excavated_variants:pink_salt_silver", "excavated_variants:quark_jasper_silver", "excavated_variants:quark_limestone_silver", "excavated_variants:quark_shale_silver", "excavated_variants:red_sandstone_silver", "excavated_variants:rose_pink_salt_silver", "excavated_variants:sandstone_silver", "excavated_variants:slate_silver", "excavated_variants:smooth_basalt_silver", "excavated_variants:tuff_silver"])

})

// Fluid tags
ServerEvents.tags("fluid", e => {

    // e.add("forge:oil", ["ad_astra:oil", "thermal:crude_oil", "thermal:creosote"])
    e.add("forge:fuel", ["ad_astra:fuel", "thermal:refined_fuel"])
    e.add("forge:lava", ["lava", "ad_astra_proxima_plus:proxima_e_diamond_lava"])
    e.add("forge:steam", ["biggerreactors:steam", "systeams:steam"])

})
