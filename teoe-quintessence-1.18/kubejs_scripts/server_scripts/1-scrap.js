// Adds tags to items that can be processed into Scrap
onEvent("item.tags", e => {

    //// Scrap amounts:
    //// ≥ 9 Ingots of material = 1 Scrap
    //// 1 Ingot of material = 1 Small (default scrap type)
    //// ≤8 Nuggets of material = 1 Tiny

    /// Item order is as follows:
    /// Tags, equipment (Armour -> tools -> other), items, blocks

    // Copper
    e.add("quintessence:scrappable/copper", ["#forge:gears/copper", "#forge:plates/copper", "lightning_rod", "spyglass",

    "ae2:fluid_cell_housing", "ae2:fluid_storage_cell_1k", "ae2:fluid_storage_cell_4k", "ae2:fluid_storage_cell_16k", "ae2:fluid_storage_cell_64k", "ae2:fluid_storage_cell_256k", 

    "#create:valve_handles", "create:copper_diving_helmet", "create:copper_backtank", "create:copper_diving_boots", "create:copper_casing", "create:copper_door", "create:fluid_pipe", "create:smart_fluid_pipe", "create:fluid_valve", "create:mechanical_pump",

    "additionaladditions:depth_meter", "additionaladditions:watering_can",

    "botania:cacophonium",

    "essentials:sorting_hopper",

    "functionalstorage:copper_upgrade",

    "ironchest:wood_to_copper_chest_upgrade", "ironchest:copper_chest", "ironchest:trapped_copper_chest",

    "lctech:battery", "lctech:battery_large",

    "quark:pipe",

    "tconstruct:travelers_helmet", "tconstruct:travelers_chestplate", "tconstruct:travelers_leggings", "tconstruct:travelers_boots", "tconstruct:travelers_shield", "tconstruct:copper_can"])


    //// ≤ 8 Nuggets
    e.add("quintessence:scrappable/copper_tiny", ["createaddition:copper_spool", "createaddition:festive_spool", "enlightened_end:helium_dart", "enlightened_end:xenon_dart"])


    //// ≥ 9 Ingots
    e.add("quintessence:scrappable/copper_big", ["create:steam_engine"])





    // Iron
    e.add("quintessence:scrappable/iron", ["#quintessence:tape_measure", "chainmail_helmet", "chainmail_chestplate", "chainmail_leggings", "chainmail_boots", "leathered_boots:leathered_chainmail_boots",
    "iron_helmet", "iron_chestplate", "iron_leggings", "iron_boots", "leathered_boots:leathered_iron_boots",
    "iron_sword", "iron_pickaxe", "iron_shovel", "iron_hoe", "iron_axe", "shield", "shears", "crossbow", "flint_and_steel",
    "bucket", "compass",

    "activator_rail", "detector_rail", "minecart", "chest_minecart", "furnace_minecart", "tnt_minecart",
    "blast_furnace", "cauldron", "heavy_weighted_pressure_plate", "tripwire_hook", "hopper", "iron_door", "iron_trapdoor", "piston", "smithing_table", "sticky_piston", "stonecutter", 

    "additionaladditions:crossbow_with_spyglass",

    "ae2:wireless_booster",

    "apotheosis:salvaging_table",

    "aquamirae:terrible_helmet", "aquamirae:terrible_chestplate", "aquamirae:terrible_leggings", "aquamirae:terrible_boots", "aquamirae:terrible_sword", "aquamirae:poisoned_blade", "aquamirae:oxygen_tank",

    "bloodmagic:daggerofsacrifice",

    "byg:chain_plating",

    "cookingforblockheads:heating_unit", "cookingforblockheads:ice_unit", "cookingforblockheads:fridge", "cookingforblockheads:oven", "cookingforblockheads:toaster",

    "create:filter", "create:super_glue", "create:chute", "create:ornate_iron_window", "create:mechanical_mixer", "create:mechanical_drill", "create:mechanical_saw", "create:metal_bracket",

    "createappliedkinetics:me_proxy",

    "enigmaticlegacy:iron_ring",

    "enlightened_end:flash_bomb", "enlightened_end:helium_lantern", "enlightened_end:xenon_lantern",

    "essentials:wrench", "essentials:item_chute", "essentials:basic_fluid_splitter", "essentials:basic_item_splitter",

    "fuel_canister:fuel_canister",

    "functionalstorage:iron_downgrade", "functionalstorage:compacting_framed_drawer", "functionalstorage:framed_1", "functionalstorage:framed_2", "functionalstorage:framed_4", "functionalstorage:compacting_drawer", "functionalstorage:simple_compacting_drawer",

    "ironchest:copper_to_iron_chest_upgrade", "ironchest:wood_to_iron_chest_upgrade", "ironchest:iron_chest", "ironchest:trapped_iron_chest", 

    "malum:crude_scythe",

    "thermal:hazmat_helmet", "thermal:hazmat_chestplate", "thermal:hazmat_leggings", "thermal:hazmat_boots", "thermal:drill_head", "thermal:saw_blade", "thermal:redstone_servo", "thermal:slot_seal", "thermal:crossover_rail",

    "quark:trowel", "quark:abacus", "quark:backpack",

    "quark:framed_glass", "quark:grate", "quark:iron_button", "quark:iron_ladder",

    "xnet:antenna"])


    //// ≤ 8 Nuggets
    e.add("quintessence:scrappable/iron_tiny", ["chain", "iron_bars", "lantern", "soul_lantern", "rail",

    "botania:ghost_rail",

    "byg:boric_lantern", "byg:cryptic_lantern", "byg:glowstone_lantern", "byg:therium_lantern",

    "cookingforblockheads:tool_rack",

    "create:encased_chain_drive",
    "createaddition:spool",

    "ironjetpacks:strap",

    "quark:iron_plate", "quark:iron_plate_slab", "quark:iron_plate_stairs", "quark:iron_plate_vertical_slab", "quark:rusty_iron_plate", "quark:rusty_iron_plate_slab", "quark:rusty_iron_plate_stairs", "quark:rusty_iron_plate_vertical_slab",

    "refinedpipes:basic_extractor_attachment", "refinedpipes:basic_item_pipe",

    "twilightforest:iron_ladder", "#whisperwoods:wisp_lantern"])


    //// ≥ 9 Ingots
    e.add("quintessence:scrappable/iron_big", ["anvil", "chipped_anvil", "damaged_anvil", "hopper_minecart",
    "aquamirae:three_bolt_helmet", "aquamirae:three_bolt_suit", "aquamirae:three_bolt_leggings", "aquamirae:three_bolt_boots",

    "bloodmagic:soulforge",

    "create:mechanical_press", "create:schematicannon",

    "xnet:antenna_base", "xnet:antenna_dish"])





    // Gold
    e.add("quintessence:scrappable/gold", ["golden_helmet", "golden_chestplate", "golden_leggings", "golden_boots", "leathered_boots:leathered_gold_boots",
    "golden_sword", "golden_pickaxe", "golden_shovel", "golden_hoe", "golden_axe",
    "bell", "clock", "gilded_blackstone", "glistering_melon_slice", "golden_apple", "golden_carrot", "light_weighted_pressure_plate", "powered_rail",

    "bloodmagic:sacrificialdagger",

    "create:steam_whistle",

    "functionalstorage:gold_upgrade",

    "ironchest:iron_to_gold_chest_upgrade",

    "nourished_nether:gilded_blackstone_bricks",

    "quark:gold_button"])


    //// ≤ 8 Nuggets
    e.add("quintessence:scrappable/gold_small", ["quark:gold_bars"])

    //// ≥ 9 Ingots
    // e.add("quintessence:scrappable/gold_big", [])



    // Diamond
    e.add("quintessence:scrappable/diamond", ["diamond_helmet", "diamond_chestplate", "diamond_leggings", "diamond_boots", "leathered_boots:leathered_diamond_boots",
    "diamond_sword", "diamond_pickaxe", "diamond_shovel", "diamond_hoe", "diamond_axe",
    "enchanting_table", "jukebox",

    "enigmaticlegacy:mining_charm",

    "functionalstorage:diamond_upgrade",

    "longfallboots:longfallboots",

    "quark:pickarang"])


    //// ≥ 9 Ingots
    e.add("quintessence:scrappable/diamond_big", ["diamond_horse_armor"])



    // Netherite
    e.add("quintessence:scrappable/netherite", ["netherite_helmet", "netherite_chestplate", "netherite_leggings", "netherite_boots", "leathered_boots:leathered_netherite_boots",
    "netherite_sword", "netherite_pickaxe", "netherite_shovel", "netherite_hoe", "netherite_axe", "lodestone",
    "functionalstorage:netherite_upgrade",
    "quark:flamerang"])



    // Rose Gold
    // Smelts into Copper, blasts into Gold
    e.add("quintessence:scrappable/rose_gold", ["additionaladditions:rose_gold_helmet", "additionaladditions:rose_gold_chestplate", "additionaladditions:rose_gold_leggings", "additionaladditions:rose_gold_boots",
    "additionaladditions:rose_gold_sword", "additionaladditions:rose_gold_pickaxe", "additionaladditions:rose_gold_shovel", "additionaladditions:rose_gold_hoe", "additionaladditions:rose_gold_axe"
    ])


    // Fiery
    e.add("quintessence:scrappable/fiery", ["twilightforest:fiery_helmet", "twilightforest:fiery_chestplate", "twilightforest:fiery_leggings", "twilightforest:fiery_boots",
    "twilightforest:fiery_sword", "twilightforest:fiery_pickaxe"])

    // Ironwood
    e.add("quintessence:scrappable/ironwood", ["twilightforest:ironwood_helmet", "twilightforest:ironwood_chestplate", "twilightforest:ironwood_leggings", "twilightforest:ironwood_boots",
    "twilightforest:ironwood_sword", "twilightforest:ironwood_pickaxe", "twilightforest:ironwood_shovel", "twilightforest:ironwood_hoe", "twilightforest:ironwood_axe"])

    // Knightmetal
    e.add("quintessence:scrappable/knightmetal", ["twilightforest:knightmetal_helmet", "twilightforest:knightmetal_chestplate", "twilightforest:knightmetal_leggings", "twilightforest:knightmetal_boots",
    "twilightforest:knightmetal_sword", "twilightforest:knightmetal_pickaxe", "twilightforest:knightmetal_axe", "twilightforest:knightmetal_shield", "twilightforest:knightmetal_ring"])

    e.add("quintessence:scrappable/knightmetal_big", ["twilightforest:block_and_chain", "twilightforest:phantom_helmet", "twilightforest:phantom_chestplate", "twilightforest:mazebreaker_pickaxe"])

    // Steeleaf
    e.add("quintessence:scrappable/steeleaf", [
    "twilightforest:steeleaf_helmet", "twilightforest:steeleaf_chestplate", "twilightforest:steeleaf_leggings", "twilightforest:steeleaf_boots",
    "twilightforest:steeleaf_sword", "twilightforest:steeleaf_pickaxe", "twilightforest:steeleaf_shovel", "twilightforest:steeleaf_hoe", "twilightforest:steeleaf_axe"
    ])




    ///// Items with no scrap
    // Bronze
    e.add("quintessence:scrappable/bronze",
    ["essentials:multi_piston", "essentials:multi_piston_sticky",
    "thermal:watering_can", "thermal:device_water_gen", "thermal:fluid_cell_frame", "thermal:fluid_duct", "thermal:fluid_duct_windowed"])

    // Prismarine
    e.add("quintessence:scrappable/prismarine",
    ["thermal:prismarine_activator_rail", "thermal:prismarine_crossover_rail", "thermal:prismarine_detector_rail", "thermal:prismarine_rail", "upgrade_aquatic:prismarine_rod"])

})



// Add recipes to processing items into Scrap
onEvent("recipes", e => {

    ///// Scrap recipes
    e.shapeless("kubejs:copper_scrap", ["kubejs:small_copper_scrap", "kubejs:small_copper_scrap", "kubejs:small_copper_scrap"]).id("kubejs:copper_scrap")
    e.shaped(
        "kubejs:copper_scrap",
        [
          "SSS",
          "SSS",
          "SSS"
        ],
        {
          S: "kubejs:tiny_copper_scrap"
        }
    ).id("kubejs:copper_scrap_from_tiny")

    e.shapeless("kubejs:iron_scrap", ["kubejs:small_iron_scrap", "kubejs:small_iron_scrap", "kubejs:small_iron_scrap"]).id("kubejs:iron_scrap")
    e.shaped(
        "kubejs:iron_scrap",
        [
          "SSS",
          "SSS",
          "SSS"
        ],
        {
          S: "kubejs:tiny_iron_scrap"
        }
    ).id("kubejs:iron_scrap_from_tiny")

    e.shapeless("kubejs:gold_scrap", ["kubejs:small_gold_scrap", "kubejs:small_gold_scrap", "kubejs:small_gold_scrap"]).id("kubejs:gold_scrap")
    e.shapeless("kubejs:diamond_scrap", ["kubejs:small_diamond_scrap", "kubejs:small_diamond_scrap", "kubejs:small_diamond_scrap"]).id("kubejs:diamond_scrap")

    e.shapeless("kubejs:platinum_scrap", ["kubejs:small_platinum_scrap", "kubejs:small_platinum_scrap", "kubejs:small_platinum_scrap"]).id("kubejs:platinum_scrap")


    // Smelt Scrap into Ingots
    // XP gain is 50% of what Raw -> Ingot smelting gives
    e.smelting("copper_ingot", "kubejs:copper_scrap", 0.35).id("kubejs:smelt_copper_scrap")
    e.smelting("iron_ingot", "kubejs:iron_scrap", 0.35).id("kubejs:smelt_iron_scrap")
    e.smelting("gold_ingot", "kubejs:gold_scrap", 0.5).id("kubejs:smelt_gold_scrap")
    e.smelting("diamond", "kubejs:diamond_scrap", 1).id("kubejs:smelt_diamond_scrap")

    e.smelting("ob_core:platinum_ingot", "kubejs:platinum_scrap", 1.5).id("kubejs:smelt_platinum_scrap")



    //// Smelt items into Scrap
    // XP gain is equal to smelting Scrap into Ingots
    // Goes up/down by 0.1 for small/big items
    e.smelting("kubejs:tiny_iron_scrap", "#quintessence:scrappable/iron_tiny", 0.25).id("kubejs:small_iron_recycling")
    e.smelting("kubejs:small_iron_scrap", "#quintessence:scrappable/iron", 0.35).id("kubejs:iron_recycling")
    e.smelting("kubejs:iron_scrap", "#quintessence:scrappable/iron_big", 0.45).id("kubejs:big_iron_recycling")

    e.blasting("iron_nugget", "#quintessence:scrappable/iron_small", 0.25).id("kubejs:blast_small_iron_recycling")
    e.blasting("kubejs:small_iron_scrap", "#quintessence:scrappable/iron", 0.35).id("kubejs:blast_iron_recycling")
    e.blasting("kubejs:iron_scrap", "#quintessence:scrappable/iron_big", 0.45).id("kubejs:blast_big_iron_recycling")



    e.smelting("gold_nugget", "#quintessence:scrappable/gold_small", 0.4).id("kubejs:small_gold_recycling")
    e.smelting("kubejs:small_gold_scrap", "#quintessence:scrappable/gold", 0.5).id("kubejs:gold_recycling")
    e.smelting("kubejs:gold_scrap", "#quintessence:scrappable/gold_big", 0.6).id("kubejs:big_gold_recycling")

    e.blasting("gold_nugget", "#quintessence:scrappable/gold_small", 0.4).id("kubejs:blast_small_gold_recycling")
    e.blasting("kubejs:small_gold_scrap", "#quintessence:scrappable/gold", 0.5).id("kubejs:blast_gold_recycling")
    e.blasting("kubejs:gold_scrap", "#quintessence:scrappable/gold_big", 0.6).id("kubejs:blast_big_gold_recycling")



    e.smelting("kubejs:small_diamond_scrap", "#quintessence:scrappable/diamond", 1).id("kubejs:diamond_recycling")
    e.smelting("kubejs:diamond_scrap", "#quintessence:scrappable/diamond_big", 1.1).id("kubejs:big_diamond_recycling")

    e.blasting("kubejs:small_diamond_scrap", "#quintessence:scrappable/diamond", 1).id("kubejs:blast_diamond_recycling")
    e.blasting("kubejs:diamond_scrap", "#quintessence:scrappable/diamond_big", 1.1).id("kubejs:blast_big_diamond_recycling")



    e.smelting("netherite_scrap", "#quintessence:scrappable/netherite", 1).id("kubejs:netherite_recycling")
    e.blasting("netherite_scrap", "#quintessence:scrappable/netherite", 1).id("kubejs:blast_netherite_recycling")


    // Rose Gold
    e.smelting("kubejs:small_copper_scrap", "#quintessence:scrappable/rose_gold", 0.5).id("kubejs:rose_gold_recycling")
    e.blasting("kubejs:small_gold_scrap", "#quintessence:scrappable/rose_gold", 0.5).id("kubejs:blast_rose_gold_recycling")


    /////// Twilight Forest

    // Smelt items into Scrap
    e.smelting("kubejs:small_fiery_scrap", "#quintessence:scrappable/fiery", 1).id("kubejs:fiery_recycling")
    e.smelting("kubejs:small_ironwood_scrap", "#quintessence:scrappable/ironwood", 0.5).id("kubejs:ironwood_recycling")
    e.smelting("kubejs:small_knightmetal_scrap", "#quintessence:scrappable/knightmetal", 0.75).id("kubejs:knightmetal_recycling")
    e.smelting("kubejs:small_knightmetal_scrap", "#quintessence:scrappable/knightmetal_big", 0.85).id("kubejs:big_knightmetal_recycling")
    e.smelting("kubejs:small_steeleaf_scrap", "#quintessence:scrappable/steeleaf", 1.5).id("kubejs:steeleaf_recycling")

    e.blasting("kubejs:small_fiery_scrap", "#quintessence:scrappable/fiery", 1).id("kubejs:blast_fiery_recycling")
    e.blasting("kubejs:small_ironwood_scrap", "#quintessence:scrappable/ironwood", 0.5).id("kubejs:blast_ironwood_recycling")
    e.blasting("kubejs:small_knightmetal_scrap", "#quintessence:scrappable/knightmetal", 0.75).id("kubejs:blast_knightmetal_recycling")
    e.blasting("kubejs:small_knightmetal_scrap", "#quintessence:scrappable/knightmetal_big", 0.85).id("kubejs:blast_big_knightmetal_recycling")
    e.blasting("kubejs:small_steeleaf_scrap", "#quintessence:scrappable/steeleaf", 1.5).id("kubejs:blast_steeleaf_recycling")

    // Smelt Twilight Forest Scrap into ingots
    e.smelting("twilightforest:fiery_ingot", "kubejs:fiery_scrap", 1).id("kubejs:smelt_fiery_scrap")
    e.smelting("twilightforest:ironwood_ingot", "kubejs:ironwood_scrap", 0.5).id("kubejs:smelt_ironwood_scrap")
    e.smelting("twilightforest:knightmetal_ingot", "kubejs:knightmetal_scrap", 0.75).id("kubejs:smelt_knightmetal_scrap")
    e.smelting("twilightforest:steeleaf_ingot", "kubejs:steeleaf_scrap", 1.5).id("kubejs:smelt_steeleaf_scrap")

    e.blasting("twilightforest:fiery_ingot", "kubejs:fiery_scrap", 1).id("kubejs:blast_fiery_scrap")
    e.blasting("twilightforest:ironwood_ingot", "kubejs:ironwood_scrap", 0.5).id("kubejs:blast_ironwood_scrap")
    e.blasting("twilightforest:knightmetal_ingot", "kubejs:knightmetal_scrap", 0.75).id("kubejs:blast_knightmetal_scrap")
    e.blasting("twilightforest:steeleaf_ingot", "kubejs:steeleaf_scrap", 1.5).id("kubejs:blast_steeleaf_scrap")

})