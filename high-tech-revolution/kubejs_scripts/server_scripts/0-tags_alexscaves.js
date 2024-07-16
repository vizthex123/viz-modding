// Adds tags to blocks & items
// Everything is grouped by mod to make it more readable
ServerEvents.tags("item", e => {

    // Ferromagnetic Items
    e.add("alexscaves:ferromagnetic_items", 
    ["#revolution:scrappable/netherite", "#revolution:scrappable/iron", "#revolution:scrappable/iron_big", "#revolution:scrappable/iron_small", "#revolution:scrappable/iron_tiny",

    "#forge:nuggets/netherite", "#forge:dusts/netherite", "#forge:gears/netherite", "#forge:plates/netherite", "#forge:rods/netherite", "#forge:coins/netherite",
    "#forge:dusts/iron", "#forge:gears/iron", "#forge:plates/iron", "#forge:rods/iron", "#forge:coins/iron",
    "#forge:dusts/steel", "#forge:gears/steel", "#forge:plates/steel", "#forge:rods/steel", "#forge:coins/steel",

    "coinsje:iron_coin_pile", "coinsje:netherite_coin_pile",
    
    "outer_end:cobalt_crystal_helmet", "outer_end:cobalt_crystal_chestplate", "outer_end:cobalt_crystal_leggings", "outer_end:cobalt_crystal_boots", "outer_end:cobalt_crystal", "outer_end:cobalt_crystal_arrow", "outer_end:cobalt_crystal_bud", "outer_end:cobalt_crystal_lamp", "outer_end:cobalt_crystalline_berries", "outer_end:cobalt_tangled_violite",
    
    "regions_unexplored:cobalt_obsidian"
    ])

})



ServerEvents.tags("block", e => {

    // Ferromagnetic Blocks
    e.add("alexscaves:ferromagnetic_blocks",
    ["functionalstorage:compacting_drawer", "functionalstorage:simple_compacting_drawer", "functionalstorage:framed_1", "functionalstorage:framed_2", "functionalstorage:framed_4", "functionalstorage:compacting_framed_drawer", "functionalstorage:framed_simple_compacting_drawer", "functionalstorage:framed_controller_extension", "functionalstorage:framed_storage_controller",

    "laboratoryblocks:screwed_laboratory_block", "laboratoryblocks:enlighted_screwed_laboratory_block", "laboratoryblocks:laboratory_fan", "laboratoryblocks:enlighted_laboratory_fan", "laboratoryblocks:laboratory_fan_redstone_controlled", "laboratoryblocks:clear_laboratory_screen", "laboratoryblocks:laboratory_vent", "laboratoryblocks:laboratory_vent_connecting", "laboratoryblocks:enlighted_laboratory_vent",

    "nourished_nether:netherite_scrap_block",

    "outer_end:cobalt_crystal", "outer_end:cobalt_crystal_bud", "outer_end:cobalt_crystal_lamp", "outer_end:cobalt_tangled_violite",

    "quark:crafter", "quark:framed_glass", "quark:grate", "quark:iron_button", "quark:iron_ladder", "quark:iron_plate", "quark:iron_plate_slab", "quark:iron_plate_stairs", "quark:iron_plate_vertical_slab", "quark:iron_rod", "quark:raw_iron_bricks", "quark:raw_iron_bricks_slab", "quark:raw_iron_bricks_stairs", "quark:raw_iron_bricks_vertical_slab", "quark:raw_iron_bricks_wall", "quark:rusty_iron_plate", "quark:rusty_iron_plate_slab", "quark:rusty_iron_plate_stairs", "quark:rusty_iron_plate_vertical_slab",

    "redstonepen:basic_button", "redstonepen:basic_pulse_button", "redstonepen:basic_lever",

    "regions_unexplored:cobalt_obsidian",
    
    "thermal:machine_frame"])



    // Gloomoth
    e.add("alexscaves:gloomoth_light_sources",
    ["jack_o_lantern", "sea_lantern",
    "alexscaves:carmine_froglight", "alexscaves:magnetic_light",

    "buzzier_bees:honey_lamp",

    "cavesanddepths:copper_lamp", "cavesanddepths:copper_lantern", "cavesanddepths:copper_lantern_hanging", "cavesanddepths:soul_copper_lantern", "cavesanddepths:soul_copper_lantern_hanging", "cavesanddepths:tuff_glittering_lamp",

    "copperworks:powered_redstone_lantern",

    "galosphere:allurite_lamp", "galosphere:amethyst_lamp", "galosphere:lumiere_lamp", "galosphere:pink_salt_lamp",

    "phantasm:purpur_lamp",

    "outer_end:cobalt_crystal_lamp", "outer_end:mint_crystal_lamp", "outer_end:rose_crystal_lamp",

    "#quark:corundum", "#quark:crystal_lamp", "quark:blaze_lantern", "quark:duskbound_lantern", "quark:paper_lantern", "quark:paper_lantern_sakura", "quark:stone_brick_lamp", "quark:stone_lamp",

    "regions_unexplored:hyacinth_lamp",

    "upgrade_aquatic:pink_jelly_torch", "upgrade_aquatic:purple_jelly_torch", "upgrade_aquatic:blue_jelly_torch", "upgrade_aquatic:green_jelly_torch", "upgrade_aquatic:yellow_jelly_torch", "upgrade_aquatic:orange_jelly_torch", 
    "upgrade_aquatic:red_jelly_torch", "upgrade_aquatic:white_jelly_torch", "upgrade_aquatic:tooth_lantern",

    "xycraft_world:aluminum_torch", "xycraft_world:copper_torch", "xycraft_world:lamp_cube_white", "xycraft_world:lamp_flush_white", "xycraft_world:lamp_lantern_white", "xycraft_world:lamp_pillar_white" 
    ])



    // Underzealot
    e.add("alexscaves:underzealot_light_sources",
    ["buzzier_bees:honey_lamp",
    "regions_unexplored:hyacinth_lamp",
    "upgrade_aquatic:pink_jelly_torch", "upgrade_aquatic:purple_jelly_torch", "upgrade_aquatic:blue_jelly_torch", "upgrade_aquatic:green_jelly_torch", "upgrade_aquatic:yellow_jelly_torch", "upgrade_aquatic:orange_jelly_torch", "upgrade_aquatic:red_jelly_torch", "upgrade_aquatic:white_jelly_torch", "xycraft_world:aluminum_torch", "xycraft_world:copper_torch"
    ])

})