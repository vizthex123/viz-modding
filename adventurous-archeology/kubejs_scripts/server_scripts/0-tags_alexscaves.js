// Adds tags to blocks & items
// Everything is grouped by mod to make it more readable
ServerEvents.tags("item", e => {

    // Ferromagnetic Items
    e.add("alexscaves:ferromagnetic_items", 
    ["#modpack:scrappable/netherite", "#modpack:scrappable/iron", "#modpack:scrappable/iron_big", "#modpack:scrappable/iron_small", "#forge:nuggets/netherite", 
    "outer_end:cobalt_crystal_helmet", "outer_end:cobalt_crystal_chestplate", "outer_end:cobalt_crystal_leggings", "outer_end:cobalt_crystal_boots", "outer_end:cobalt_crystal", "outer_end:cobalt_crystal_arrow", "outer_end:cobalt_crystal_bud", "outer_end:cobalt_crystal_lamp", "outer_end:cobalt_crystalline_berries", "outer_end:cobalt_tangled_violite", "outer_end:cobalt_upgrade_template",
    "quark:raw_iron_bricks", "quark:raw_iron_bricks_wall", "quark:raw_iron_bricks_slab", "quark:raw_iron_bricks_stairs", "quark:raw_iron_bricks_vertical_slab", 
    "spelunkery:raw_iron_nugget", "spelunkery:raw_magnetite_block", "spelunkery:raw_magnetite", "spelunkery:raw_magnetite_nugget", "spelunkery:magnetic_compass", "spelunkery:handheld_compactor", "spelunkery:item_magnet",
    "undergarden:catalyst"
    ])

})


ServerEvents.tags("block", e => {

    // Ferromagnetic Blocks
    e.add("alexscaves:ferromagnetic_blocks", ["functionalstorage:armory_cabinet",
    "nourished_nether:netherite_scrap_block",
    "outer_end:cobalt_crystal", "outer_end:cobalt_crystal_bud", "outer_end:cobalt_crystal_lamp", "outer_end:cobalt_tangled_violite",
    "quark:raw_iron_bricks", "quark:raw_iron_bricks_wall", "quark:raw_iron_bricks_slab", "quark:raw_iron_bricks_stairs", "quark:raw_iron_bricks_vertical_slab",
    "spelunkery:compression_blast_miner", "spelunkery:raw_magnetite_block", 
    "supplementaries:iron_gate", "supplementaries:netherite_door", "supplementaries:netherite_trapdoor"
    ])


    // Gloomoth
    e.add("alexscaves:gloomoth_light_sources", ["jack_o_lantern", "sea_lantern",
    "aether:ambrosium_torch",
    "alexscaves:carmine_froglight", "alexscaves:magnetic_light", "buzzier_bees:honey_lamp",
    "cavesanddepths:copper_lamp", "cavesanddepths:copper_lantern", "cavesanddepths:copper_lantern_hanging", "cavesanddepths:soul_copper_lantern", "cavesanddepths:soul_copper_lantern_hanging", "cavesanddepths:tuff_glittering_lamp",
    "galosphere:allurite_lamp", "galosphere:amethyst_lamp", "galosphere:lumiere_lamp", "galosphere:pink_salt_lamp",
    "outer_end:cobalt_crystal_lamp", "outer_end:mint_crystal_lamp", "outer_end:rose_crystal_lamp",
    "#quark:corundum", "#quark:crystal_lamp", "quark:blaze_lantern", "quark:duskbound_lantern", "quark:paper_lantern", "quark:paper_lantern_sakura", "quark:stone_brick_lamp", "quark:stone_lamp",
    "upgrade_aquatic:tooth_lantern"
    ])


    // Underzealot
    e.add("alexscaves:underzealot_light_sources", ["aether:ambrosium_torch", "buzzier_bees:honey_lamp"])

})