// Changes the mining levels of various blocks
// Also makes a few improperly tagged ones mineable
ServerEvents.tags("block", e => {

    // Make blocks mineable
    e.add("minecraft:mineable/pickaxe", ["alexscaves:enigmatic_engine", "essentials:bricks_tin", "essentials:bricks_iron", "essentials:bricks_gold", "essentials:bricks_bronze"])



    //// Change mining levels for things
    e.remove("minecraft:needs_iron_tools", ["biggerreactors:uranium_ore", "biggerreactors:deepslate_uranium_ore"])

    e.add("minecraft:needs_iron_tool", ["#forge:ores/silver", "#forge:ores/uranium", "alexscaves:enigmatic_engine",
    "ad_astra:moon_iron_ore", "ad_astra:moon_cheese_ore", "ad_astra:moon_desh_ore", "ad_astra:deepslate_desh_ore", "ad_astra:moon_ice_shard_ore",
    "ad_astra:mars_iron_ore", "ad_astra:mars_diamond_ore", "ad_astra:mars_ostrum_ore", "ad_astra:deepslate_ostrum_ore", "ad_astra:mars_ice_shard_ore"
    ])



    /// Fix Galosphere's Silver Blocks having the wrong mining level
    e.remove("minecraft:needs_stone_tool", ["galosphere:raw_silver_block", "galosphere:silver_block", "galosphere:silver_balance", "galosphere:silver_panel", "galosphere:silver_panel_stairs", "galosphere:silver_panel_slab", "galosphere:silver_tiles", "galosphere:silver_tiles_stairs", "galosphere:silver_tiles_slab", "galosphere:silver_lattice"])

    e.add("minecraft:needs_iron_tool", ["galosphere:raw_silver_block", "galosphere:silver_block", "galosphere:silver_balance", "galosphere:silver_panel", "galosphere:silver_panel_stairs", "galosphere:silver_panel_slab", "galosphere:silver_tiles", "galosphere:silver_tiles_stairs", "galosphere:silver_tiles_slab", "galosphere:silver_lattice"])

    /// Fix Silver variants not having the proper mining level
    /// I might unify these to only TE Silver instead but idk for sure. I kinda like having both. It's more retro, ya know?
    e.remove("minecraft:needs_stone_tool", ["galosphere:silver_ore", "galosphere:deepslate_silver_ore",
    "excavated_variants:andesite_silver", "excavated_variants:argillite_silver", "excavated_variants:biomesoplenty_black_sandstone_silver", "excavated_variants:biomesoplenty_orange_sandstone_silver", "excavated_variants:biomesoplenty_white_sandstone_silver", "excavated_variants:calcite_silver", "excavated_variants:chalk_silver", "excavated_variants:chalkstone_silver", "excavated_variants:chert_silver", "excavated_variants:diorite_silver", "excavated_variants:dripstone_silver", "excavated_variants:granite_silver", "excavated_variants:kivi_silver", "excavated_variants:mudstone_silver", "excavated_variants:pastel_pink_salt_silver", "excavated_variants:pink_salt_silver", "excavated_variants:quark_jasper_silver", "excavated_variants:quark_limestone_silver", "excavated_variants:quark_shale_silver", "excavated_variants:red_sandstone_silver", "excavated_variants:rose_pink_salt_silver", "excavated_variants:sandstone_silver", "excavated_variants:slate_silver", "excavated_variants:smooth_basalt_silver", "excavated_variants:tuff_silver", "excavated_variants:ancient_sandstone_silver", "excavated_variants:layered_ancient_sandstone_silver", "excavated_variants:ancient_sandstone_silver_ore", "excavated_variants:layered_ancient_sandstone_silver_ore"])

})