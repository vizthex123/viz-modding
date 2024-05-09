// Adds tags to items that become Scrap
ServerEvents.tags("item", e => {

    // Copper
    e.add("modpack:scrappable/copper", ["#friendsandfoes:copper_buttons", "#modpack:lightning_rods", "brush", "spyglass",
    "betterarcheology:archeology_table",
    "cavesanddepths:amethyst_chisel", "cavesanddepths:copper_lantern", "cavesanddepths:soul_copper_lantern", "cavesanddepths:copper_lamp", "cavesanddepths:copper_pressure_plate",
    "davespotioneering:rudimentary_gauntlet",
    "enlightened_end:helium_dart", "enlightened_end:xenon_dart",
    "supplementaries:wrench", "supplementaries:altimeter", "supplementaries:cog_block", "supplementaries:turn_table",
    "functionalstorage:copper_upgrade",
    "galosphere:chandelier", "galosphere:glow_flare",
    "quark:pipe"
    ])



    // Iron
    e.add("modpack:scrappable/iron", ["#supplementaries:candle_holders",
    "chainmail_helmet", "chainmail_chestplate", "chainmail_leggings", "chainmail_boots", "leatheredboots:leathered_chainmail_boots",
    "iron_helmet", "iron_chestplate", "iron_leggings", "iron_boots", "leatheredboots:leathered_iron_boots",
    "iron_sword", "iron_pickaxe", "iron_shovel", "iron_hoe", "iron_axe",
    "bucket", "compass", "crossbow", "flint_and_steel", "name_tag", "shears", "shield",
    "blast_furnace", "cauldron", "heavy_weighted_pressure_plate", "hopper", "iron_door", "iron_trapdoor", "lantern", "piston", "piston", "smithing_table", "soul_lantern", "sticky_piston", "sticky_piston", "stonecutter", "tripwire_hook",
    "activator_rail", "detector_rail", "minecart", "chest_minecart", "furnace_minecart", "hopper_minecart", "tnt_minecart",
 
    "aether:chainmail_gloves", "aether:iron_bubble", "aether:iron_gloves", "aether:iron_pendant", "aether:iron_ring",
    "aquamirae:terrible_helmet", "aquamirae:terrible_chestplate", "aquamirae:terrible_leggings", "aquamirae:terrible_boots", "aquamirae:terrible_sword", "aquamirae:poisoned_blade", "aquamirae:oxygen_tank",
    "betterarcheology:iron_brush",
    "cookingforblockheads:fridge", "cookingforblockheads:heating_unit", "cookingforblockheads:ice_unit", "cookingforblockheads:oven", "cookingforblockheads:preservation_chamber", "cookingforblockheads:sink", "cookingforblockheads:toaster",
    "enlightened_end:flash_bomb", "enlightened_end:helium_lantern", "enlightened_end:xenon_lantern",
    "functionalstorage:iron_downgrade",

    "quark:abacus", "quark:backpack", "quark:crafter", "quark:framed_glass", "quark:grate", "quark:iron_button", "quark:iron_ladder", "quark:iron_plate", "quark:iron_plate_slab", "quark:iron_plate_stairs", "quark:iron_plate_vertical_slab", "quark:iron_rod", "quark:rusty_iron_plate", "quark:rusty_iron_plate_slab", "quark:rusty_iron_plate_stairs", "quark:rusty_iron_plate_vertical_slab", "quark:trowel",
    "supplementaries:bomb", "supplementaries:bomb_blue", "supplementaries:bomb_spiky", "supplementaries:bubble_blower", "supplementaries:cage", "supplementaries:dispenser_minecart", "supplementaries:faucet", "supplementaries:goblet", "supplementaries:iron_gate", "supplementaries:lock_block", "supplementaries:pulley_block", "supplementaries:relayer", "supplementaries:spring_launcher", "supplementaries:wind_vane"
    ])

    e.add("modpack:scrappable/iron_small", ["#minecraft:hanging_signs", "chain", "iron_bars", "rail",
    "cookingforblockheads:tool_rack",
    "supplementaries:sconce", "supplementaries:sconce_lever", "supplementaries:sconce_soul",
    "twilightforest:iron_ladder"
    ])

    e.add("modpack:scrappable/iron_big", ["anvil", "chipped_anvil", "damaged_anvil", "iron_horse_armor",
    "aquamirae:three_bolt_helmet", "aquamirae:three_bolt_suit", "aquamirae:three_bolt_leggings", "aquamirae:three_bolt_boots",
    "twilightforest:ore_magnet",
    ])



    // Gold
    e.add("modpack:scrappable/gold", ["golden_helmet", "golden_chestplate", "golden_leggings", "golden_boots", "leatheredboots:leathered_gold_boots",
    "golden_sword", "golden_pickaxe", "golden_shovel", "golden_hoe", "golden_axe",
    "bell", "clock", "gilded_blackstone", "glistering_melon_slice", "golden_apple", "golden_carrot", "light_weighted_pressure_plate", "powered_rail",
    
    "aether:golden_gloves",
    "aether:golden_pendant",
    "aether:golden_ring",

    "functionalstorage:gold_upgrade",
    "galosphere:golden_lichen_cordyceps",

    "enlightened_end:dashing_leggings_leggings",

    "nourished_nether:gilded_blackstone_bricks",
    "nourished_nether:soul_forge",
    "quark:gold_button",
    "supplementaries:clock_block", "supplementaries:globe", "supplementaries:globe_sepia", "supplementaries:gold_door", "supplementaries:gold_gate", "supplementaries:gold_trapdoor", "supplementaries:hourglass", "supplementaries:key"
    ])


    e.add("modpack:scrappable/gold_small", ["aether:golden_feather", "quark:gold_bars"])

    e.add("modpack:scrappable/gold_big", ["enchanted_golden_apple", "golden_horse_armor",
    "twilightforest:gold_minotaur_axe"
    ])



    // Diamond
    e.add("modpack:scrappable/diamond", ["diamond_helmet", "diamond_chestplate", "diamond_leggings", "diamond_boots", "leatheredboots:leathered_diamond_boots",
    "diamond_sword", "diamond_pickaxe", "diamond_shovel", "diamond_hoe", "diamond_axe",
    "enchanting_table", "jukebox",

    "aether:diamond_gloves",

    "aquamirae:fin_cutter", "aquamirae:maze_rose", 

    "betterarcheology:diamond_brush",
    "cookingforblockheads:crafting_book",
    "functionalstorage:diamond_upgrade",
    "quark:pickarang"
    ])

    e.add("modpack:scrappable/diamond_big", ["diamond_horse_armor", "twilightforest:diamond_minotaur_axe", "undergarden:catalyst"])



    // Netherite
    e.add("modpack:scrappable/netherite", ["netherite_helmet", "netherite_chestplate", "netherite_leggings", "netherite_boots", "leatheredboots:leathered_netherite_boots",
    "netherite_sword", "netherite_pickaxe", "netherite_shovel", "netherite_hoe", "netherite_axe", "lodestone",
    "aether:netherite_gloves",

    "aquamirae:abyssal_heaume", "aquamirae:abyssal_tiara", "aquamirae:abyssal_brigantine", "aquamirae:abyssal_leggings", "aquamirae:abyssal_boots",
    "aquamirae:divider", "aquamirae:poisoned_chakra", "aquamirae:whisper_of_the_abyss",
    "davespotioneering:netherite_gauntlet", "davespotioneering:potioneer_gauntlet",
    "functionalstorage:armory_cabinet", "functionalstorage:netherite_upgrade",
    "mobcompack:rose_tinted_monocle",
    "quark:flamerang",
    "spelunkery:compression_blast_miner",
    "supplementaries:safe", "supplementaries:netherite_door", "supplementaries:netherite_trapdoor",
    "voidscape:charred_warhammer", "voidscape:voidic_crystal_bow", "voidscape:voidic_crystal_shield", "voidscape:voidic_crystal_xbow"
    ])



    // Silver
    e.add("modpack:scrappable/silver", ["galosphere:sterling_helmet", "galosphere:sterling_chestplate", "galosphere:sterling_leggings", "galosphere:sterling_boots", "galosphere:sterling_horse_armor",
    "galosphere:barometer", "galosphere:combustion_table", "galosphere:pink_salt_lamp", "galosphere:shadow_frame", "galosphere:silver_balance", "galosphere:silver_bomb", "galosphere:spectre_flare"])

    // Rose Gold
    // Smelts into Copper, blasts into Gold
    e.add("modpack:scrappable/rose_gold", ["cavesanddepths:rosegold_helmet", "cavesanddepths:rosegold_chestplate", "cavesanddepths:rosegold_leggings", "cavesanddepths:rosegold_boots",
    "cavesanddepths:rosegoldsword", "cavesanddepths:rosegoldpickaxe", "cavesanddepths:rosegoldshovel", "cavesanddepths:rosegoldhoe", "cavesanddepths:rosegoldaxe", "cavesanddepths:rose_gold_apple", "cavesanddepths:rosegoldupgradesmithingtemplate"])



    // Fiery
    e.add("modpack:scrappable/fiery", ["twilightforest:fiery_helmet", "twilightforest:fiery_chestplate", "twilightforest:fiery_leggings", "twilightforest:fiery_boots",
    "twilightforest:fiery_sword", "twilightforest:fiery_pickaxe"])

    // Ironwood
    e.add("modpack:scrappable/ironwood", ["twilightforest:ironwood_helmet", "twilightforest:ironwood_chestplate", "twilightforest:ironwood_leggings", "twilightforest:ironwood_boots",
    "twilightforest:ironwood_sword", "twilightforest:ironwood_pickaxe", "twilightforest:ironwood_shovel", "twilightforest:ironwood_hoe", "twilightforest:ironwood_axe"])

    // Knightmetal
    e.add("modpack:scrappable/knightmetal", ["twilightforest:knightmetal_helmet", "twilightforest:knightmetal_chestplate", "twilightforest:knightmetal_leggings", "twilightforest:knightmetal_boots",
    "twilightforest:knightmetal_sword", "twilightforest:knightmetal_pickaxe", "twilightforest:knightmetal_axe", "twilightforest:knightmetal_shield", "twilightforest:knightmetal_ring"])

    e.add("modpack:scrappable/knightmetal_big", ["twilightforest:block_and_chain", "twilightforest:phantom_helmet", "twilightforest:phantom_chestplate", "twilightforest:mazebreaker_pickaxe"])

    // Steeleaf
    e.add("modpack:scrappable/steeleaf", [
    "twilightforest:steeleaf_helmet", "twilightforest:steeleaf_chestplate", "twilightforest:steeleaf_leggings", "twilightforest:steeleaf_boots",
    "twilightforest:steeleaf_sword", "twilightforest:steeleaf_pickaxe", "twilightforest:steeleaf_shovel", "twilightforest:steeleaf_hoe", "twilightforest:steeleaf_axe"
    ])

})



ServerEvents.recipes(e => {

    // Remove default recipes
    e.remove({id: "minecraft:gold_nugget_from_smelting"})
    e.remove({id: "aether:aether_gold_nugget_from_smelting"})

    e.remove({id: "minecraft:iron_nugget_from_smelting"})
    e.remove({id: "aether:aether_iron_nugget_from_smelting"})
    e.remove({id: "quark:tools/smelting/trowel_to_iron_nugget"})

    ///// Scrap recipes
    // Scrap -> Ingot smelting recipes are in smelting_fixes.zs to prevent conflicts
    e.shapeless("kubejs:copper_scrap", ["kubejs:small_copper_scrap", "kubejs:small_copper_scrap", "kubejs:small_copper_scrap"]).id("kubejs:copper_scrap")
    e.shapeless("kubejs:iron_scrap", ["kubejs:small_iron_scrap", "kubejs:small_iron_scrap", "kubejs:small_iron_scrap"]).id("kubejs:iron_scrap")
    e.shapeless("kubejs:gold_scrap", ["kubejs:small_gold_scrap", "kubejs:small_gold_scrap", "kubejs:small_gold_scrap"]).id("kubejs:gold_scrap")
    e.shapeless("kubejs:diamond_scrap", ["kubejs:small_diamond_scrap", "kubejs:small_diamond_scrap", "kubejs:small_diamond_scrap"]).id("kubejs:diamond_scrap")
    e.shapeless("kubejs:silver_scrap", ["kubejs:small_silver_scrap", "kubejs:small_silver_scrap", "kubejs:small_silver_scrap"]).id("kubejs:silver_scrap")

    e.shapeless("kubejs:fiery_scrap", ["kubejs:small_fiery_scrap", "kubejs:small_fiery_scrap", "kubejs:small_fiery_scrap"]).id("kubejs:fiery_scrap")
    e.shapeless("kubejs:ironwood_scrap", ["kubejs:small_ironwood_scrap", "kubejs:small_ironwood_scrap", "kubejs:small_ironwood_scrap"]).id("kubejs:ironwood_scrap")
    e.shapeless("kubejs:knightmetal_scrap", ["kubejs:small_knightmetal_scrap", "kubejs:small_knightmetal_scrap", "kubejs:small_knightmetal_scrap"]).id("kubejs:knightmetal_scrap")
    e.shapeless("kubejs:steeleaf_scrap", ["kubejs:small_steeleaf_scrap", "kubejs:small_steeleaf_scrap", "kubejs:small_steeleaf_scrap"]).id("kubejs:steeleaf_scrap")



    //// Smelt items into Scrap
    // XP gain is equal to smelting Scrap into Ingots (50% of ore smelting XP)
    // Goes up/down by 0.1 for small/big items
    e.smelting("iron_nugget", "#modpack:scrappable/iron_small", 0.25).id("kubejs:small_iron_recycling")
    e.smelting("kubejs:small_iron_scrap", "#modpack:scrappable/iron", 0.35).id("kubejs:iron_recycling")
    e.smelting("kubejs:iron_scrap", "#modpack:scrappable/iron_big", 0.45).id("kubejs:big_iron_recycling")

    e.blasting("iron_nugget", "#modpack:scrappable/iron_small", 0.25).id("kubejs:blast_small_iron_recycling")
    e.blasting("kubejs:small_iron_scrap", "#modpack:scrappable/iron", 0.35).id("kubejs:blast_iron_recycling")
    e.blasting("kubejs:iron_scrap", "#modpack:scrappable/iron_big", 0.45).id("kubejs:blast_big_iron_recycling")



    e.smelting("gold_nugget", "#modpack:scrappable/gold_small", 0.4).id("kubejs:small_gold_recycling")
    e.smelting("kubejs:small_gold_scrap", "#modpack:scrappable/gold", 0.5).id("kubejs:gold_recycling")
    e.smelting("kubejs:gold_scrap", "#modpack:scrappable/gold_big", 0.6).id("kubejs:big_gold_recycling")

    e.blasting("gold_nugget", "#modpack:scrappable/gold_small", 0.4).id("kubejs:blast_small_gold_recycling")
    e.blasting("kubejs:small_gold_scrap", "#modpack:scrappable/gold", 0.5).id("kubejs:blast_gold_recycling")
    e.blasting("kubejs:gold_scrap", "#modpack:scrappable/gold_big", 0.6).id("kubejs:blast_big_gold_recycling")



    e.smelting("kubejs:small_diamond_scrap", "#modpack:scrappable/diamond", 1).id("kubejs:diamond_recycling")
    e.smelting("kubejs:diamond_scrap", "#modpack:scrappable/diamond_big", 1.1).id("kubejs:big_diamond_recycling")

    e.blasting("kubejs:small_diamond_scrap", "#modpack:scrappable/diamond", 1).id("kubejs:blast_diamond_recycling")
    e.blasting("kubejs:diamond_scrap", "#modpack:scrappable/diamond_big", 1.1).id("kubejs:blast_big_diamond_recycling")



    e.smelting("netherite_scrap", "#modpack:scrappable/netherite", 5).id("kubejs:netherite_recycling")
    e.blasting("netherite_scrap", "#modpack:scrappable/netherite", 5).id("kubejs:blast_netherite_recycling")


    // Silver
    e.smelting("galosphere:silver_nugget", "galosphere:silver_lattice", 0.5).id("kubejs:silver_lattice_recycling")
    e.smelting("kubejs:silver_scrap", "#modpack:scrappable/silver", 0.75).id("kubejs:silver_recycling")

    e.blasting("galosphere:silver_nugget", "galosphere:silver_lattice", 0.5).id("kubejs:blast_silver_lattice_recycling")
    e.blasting("kubejs:silver_scrap", "#modpack:scrappable/silver", 0.75).id("kubejs:blast_silver_recycling")

    // Rose Gold
    e.smelting("kubejs:small_copper_scrap", "#modpack:scrappable/rose_gold", 0.5).id("kubejs:rose_gold_recycling")
    e.blasting("kubejs:small_gold_scrap", "#modpack:scrappable/rose_gold", 0.5).id("kubejs:blast_rose_gold_recycling")



    /////// Twilight Forest

    // Smelt items into Scrap
    e.smelting("kubejs:small_fiery_scrap", "#modpack:scrappable/fiery", 1).id("kubejs:fiery_recycling")
    e.smelting("kubejs:small_ironwood_scrap", "#modpack:scrappable/ironwood", 0.5).id("kubejs:ironwood_recycling")
    e.smelting("kubejs:small_knightmetal_scrap", "#modpack:scrappable/knightmetal", 0.75).id("kubejs:knightmetal_recycling")
    e.smelting("kubejs:small_knightmetal_scrap", "#modpack:scrappable/knightmetal_big", 0.85).id("kubejs:big_knightmetal_recycling")
    e.smelting("kubejs:small_steeleaf_scrap", "#modpack:scrappable/steeleaf", 1.5).id("kubejs:steeleaf_recycling")

    e.blasting("kubejs:small_fiery_scrap", "#modpack:scrappable/fiery", 1).id("kubejs:blast_fiery_recycling")
    e.blasting("kubejs:small_ironwood_scrap", "#modpack:scrappable/ironwood", 0.5).id("kubejs:blast_ironwood_recycling")
    e.blasting("kubejs:small_knightmetal_scrap", "#modpack:scrappable/knightmetal", 0.75).id("kubejs:blast_knightmetal_recycling")
    e.blasting("kubejs:small_knightmetal_scrap", "#modpack:scrappable/knightmetal_big", 0.85).id("kubejs:blast_big_knightmetal_recycling")
    e.blasting("kubejs:small_steeleaf_scrap", "#modpack:scrappable/steeleaf", 1.5).id("kubejs:blast_steeleaf_recycling")

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

// Scrap -> Ingot smelting recipes are in smelting_fixes.js to prevent conflicts