// Adds tags to items that become Scrap
ServerEvents.tags("item", e => {

    // If it uses 9+ ingots, it gets the Big tag (1 Scrap)
    // If it uses 1 - 8 ingots, it gets the Scrappable tag (1 Small Scrap)
    // If it uses 2 - 8 nuggets, it gets the Small tag (1 Tiny Scrap)
    // If it uses ≤1.9 nuggets, it gets the Tiny tag (50% chance to give 1 Tiny Scrap)

    // Add up the all component materials then divide by the result to find out which category it should go into

    // 1 Small Scrap = 3 Nuggets
    // 1 Tiny Scrap = 1 Nugget

    // Copper
    e.add("revolution:scrappable/copper",
    ["brush", "lightning_rod", "spyglass",

    "alexscaves:copper_valve",

    "cavesanddepths:amethyst_chisel", "cavesanddepths:copper_lantern", "cavesanddepths:soul_copper_lantern", "cavesanddepths:copper_lamp", "cavesanddepths:copper_charger", "cavesanddepths:copper_pressure_plate", "cavesanddepths:copper_button", "cavesanddepths:copper_door", "cavesanddepths:copper_trapdoor",

    "copperworks:charged_copper_relay", "copperworks:comparator_mirror", "copperworks:copper_bracer_chestplate", "copperworks:copper_broad_sword", "copperworks:copper_conduit", "copperworks:copper_container", "copperworks:copper_drill", "copperworks:copper_frame", "copperworks:copper_lever", "copperworks:copper_relay", "copperworks:copper_sensor", "copperworks:radio", "copperworks:sticky_copper", "copperworks:sticky_copper_honey",

    "functionalstorage:copper_upgrade",

    "galosphere:chandelier", "galosphere:glow_flare",

    "quark:pipe",
    "thermal:watering_can",
    "xycraft_world:copper_torch",

    "#forge:gears/copper"])

    // Hybrid
    // Really only for a handful of Copperworks items that use an even amount of Copper and Iron/Gold
    e.add("revolution:scrappable/hybrid", ["copperworks:copper_battery", "copperworks:copper_siphon"])

    e.add("revolution:scrappable/hybrid_gold", ["copperworks:copper_clock"])



    // Iron
    e.add("revolution:scrappable/iron",
    ["chainmail_helmet", "chainmail_chestplate", "chainmail_leggings", "chainmail_boots", "leathered_boots:leathered_chainmail_boots",
    "iron_helmet", "iron_chestplate", "iron_leggings", "iron_boots", "leathered_boots:leathered_iron_boots",
    "iron_sword", "iron_pickaxe", "iron_shovel", "iron_hoe", "iron_axe",
    "bucket", "compass", "crossbow", "flint_and_steel", "shears", "shield",
    "blast_furnace", "cauldron", "heavy_weighted_pressure_plate", "hopper", "iron_door", "iron_trapdoor", "lantern", "piston", "piston", "smithing_table", "soul_lantern", "sticky_piston", "sticky_piston", "stonecutter", "tripwire_hook",
    "activator_rail", "detector_rail", "minecart", "chest_minecart", "furnace_minecart", "hopper_minecart", "tnt_minecart",

    "ad_astra:gas_tank", "ad_astra:wrench",

    "alexscaves:depth_charge", "alexscaves:metal_barrel", "alexscaves:rusty_barrel",

    "copperworks:powered_redstone_lantern",

    "functionalstorage:iron_downgrade", "functionalstorage:collector_upgrade", "functionalstorage:puller_upgrade", "functionalstorage:pusher_upgrade",
    "functionalstorage:compacting_drawer", "functionalstorage:simple_compacting_drawer", "functionalstorage:compacting_framed_drawer", "functionalstorage:framed_simple_compacting_drawer", 

    "laboratoryblocks:configuration_tool",

    "quark:abacus", "quark:backpack", "quark:crafter", "quark:framed_glass", "quark:grate", "quark:iron_button", "quark:iron_ladder", "quark:iron_plate", "quark:iron_plate_slab", "quark:iron_plate_stairs", "quark:iron_plate_vertical_slab", "quark:iron_rod",
    "quark:rusty_iron_plate", "quark:rusty_iron_plate_slab", "quark:rusty_iron_plate_stairs", "quark:rusty_iron_plate_vertical_slab", "quark:trowel",

    "rftoolsbase:manual",

    "thermal:drill_head", "thermal:saw_blade", "thermal:lock", "thermal:slot_seal", "thermal:junk_net",
    "thermal:earth_tnt_minecart","thermal:ender_tnt_minecart","thermal:energy_minecart","thermal:fire_tnt_minecart","thermal:fluid_minecart","thermal:glowstone_tnt_minecart","thermal:ice_tnt_minecart","thermal:lightning_tnt_minecart","thermal:phyto_tnt_minecart","thermal:redstone_tnt_minecart","thermal:slime_tnt_minecart","thermal:underwater_minecart",

    "#forge:gears/iron"])


    e.add("revolution:scrappable/iron_tiny",
    ["laboratoryblocks:iron_screw", "laboratoryblocks:clear_laboratory_screen", "laboratoryblocks:screwed_laboratory_block", "laboratoryblocks:enlighted_screwed_laboratory_block", "laboratoryblocks:laboratory_fan", "laboratoryblocks:enlighted_laboratory_fan", "laboratoryblocks:laboratory_fan_redstone_controlled",

    "functionalstorage:framed_4", 

    "redstonepen:basic_button", "redstonepen:basic_pulse_button", "redstonepen:basic_lever"
    ])


    e.add("revolution:scrappable/iron_small",
    ["chain", "iron_bars", "rail",

    "alexscaves:scrap_metal", "alexscaves:scrap_metal_plate", "alexscaves:metal_scaffolding", "alexscaves:metal_rebar", "alexscaves:rusty_scrap_metal", "alexscaves:rusty_scrap_metal_plate", "alexscaves:rusty_scaffolding", "alexscaves:rusty_rebar",

    "functionalstorage:framed_1", "functionalstorage:framed_2", "functionalstorage:framed_controller_extension", "functionalstorage:framed_storage_controller",

    "laboratoryblocks:laboratory_vent", "laboratoryblocks:laboratory_vent_connecting", "laboratoryblocks:enlighted_laboratory_vent",

    "thermal:machine_null_augment",

    "#minecraft:hanging_signs"])


    e.add("revolution:scrappable/iron_big",
    ["anvil", "chipped_anvil", "damaged_anvil", "iron_horse_armor",

    "ad_astra:etrionic_blast_furnace",

    "thermal:nuke_tnt_minecart"])



    // Gold
    e.add("revolution:scrappable/gold",
    ["golden_helmet", "golden_chestplate", "golden_leggings", "golden_boots", "leathered_boots:leathered_gold_boots",
    "golden_sword", "golden_pickaxe", "golden_shovel", "golden_hoe", "golden_axe",
    "bell", "clock", "gilded_blackstone", "glistering_melon_slice", "golden_apple", "golden_carrot", "light_weighted_pressure_plate", "powered_rail",

    "essentials:basic_fluid_splitter", "essentials:basic_item_splitter",

    "functionalstorage:gold_upgrade",

    "galosphere:golden_lichen_cordyceps",

    "nourished_nether:gilded_blackstone_bricks",

    "quark:gold_button",

    "#forge:gears/gold"])


    e.add("revolution:scrappable/gold_small", ["quark:gold_bars"])

    e.add("revolution:scrappable/gold_big", ["golden_horse_armor"])



    // Diamond
    e.add("revolution:scrappable/diamond",
    ["diamond_helmet", "diamond_chestplate", "diamond_leggings", "diamond_boots", "leathered_boots:leathered_diamond_boots",
    "diamond_sword", "diamond_pickaxe", "diamond_shovel", "diamond_hoe", "diamond_axe",
    "enchanting_table", "jukebox",
    "functionalstorage:diamond_upgrade",
    "quark:pickarang",

    "#forge:gears/diamond"])

    e.add("revolution:scrappable/diamond_big", ["diamond_horse_armor", "angelring:diamond_ring"])



    // Netherite
    e.add("revolution:scrappable/netherite",
    ["netherite_helmet", "netherite_chestplate", "netherite_leggings", "netherite_boots", "leathered_boots:leathered_netherite_boots",
    "netherite_sword", "netherite_pickaxe", "netherite_shovel", "netherite_hoe", "netherite_axe", "lodestone",

    "ae2things:disk_housing", "ae2things:disk_drive_1k", "ae2things:disk_drive_4k", "ae2things:disk_drive_16k", "ae2things:disk_drive_64k", "ae2things:disk_drive_256k",

    "ad_astra:netherite_space_helmet", "ad_astra:netherite_space_suit", "ad_astra:netherite_space_pants", "ad_astra:netherite_space_boots",

    "functionalstorage:armory_cabinet", "functionalstorage:netherite_upgrade",

    "mobcompack:rose_tinted_monocle",
    "quark:flamerang",

    "#forge:gears/netherite"])



    // Silver
    e.add("revolution:scrappable/silver", ["galosphere:sterling_helmet", "galosphere:sterling_chestplate", "galosphere:sterling_leggings", "galosphere:sterling_boots",
    "galosphere:barometer", "galosphere:combustion_table", "galosphere:pink_salt_lamp", "galosphere:shadow_frame", "galosphere:silver_balance", "galosphere:silver_bomb", "galosphere:spectre_flare", "#forge:gears/silver"])

    e.add("revolution:scrappable/silver_big", ["galosphere:sterling_horse_armor"])



    // Rose Gold
    // Smelts into Copper, blasts into Gold
    e.add("revolution:scrappable/rose_gold", ["cavesanddepths:rosegold_helmet", "cavesanddepths:rosegold_chestplate", "cavesanddepths:rosegold_leggings", "cavesanddepths:rosegold_boots",
    "cavesanddepths:rosegoldsword", "cavesanddepths:rosegoldpickaxe", "cavesanddepths:rosegoldshovel", "cavesanddepths:rosegoldhoe", "cavesanddepths:rosegoldaxe", "cavesanddepths:rose_gold_apple", "cavesanddepths:rosegoldupgradesmithingtemplate", "#forge:gears/rose_gold"])

})



ServerEvents.recipes(e => {

    // Remove default recycling recipes
    e.remove({id: "minecraft:iron_nugget_from_smelting"})
    e.remove({id: "minecraft:iron_nugget_from_blasting"})
    e.remove({id: "quark:tools/smelting/trowel_to_iron_nugget"})

    e.remove({id: "minecraft:gold_nugget_from_smelting"})
    e.remove({id: "minecraft:gold_nugget_from_blasting"})

    ///// Scrap recipes
    // Scrap -> Ingot smelting recipes are in smelting_fixes.zs to prevent conflicts
    e.shapeless("kubejs:copper_scrap", ["kubejs:small_copper_scrap", "kubejs:small_copper_scrap", "kubejs:small_copper_scrap"]).id("kubejs:copper_scrap")

    e.shapeless("kubejs:small_iron_scrap", ["kubejs:tiny_iron_scrap", "kubejs:tiny_iron_scrap", "kubejs:tiny_iron_scrap"]).id("kubejs:small_iron_scrap")
    e.shapeless("kubejs:iron_scrap", ["kubejs:small_iron_scrap", "kubejs:small_iron_scrap", "kubejs:small_iron_scrap"]).id("kubejs:iron_scrap")
    e.shaped(
      "kubejs:iron_scrap",
        [
          "TTT",
          "TTT", // That was a good handheld
          "TTT"
        ],
        {
          T: "kubejs:tiny_iron_scrap"
        }
    ).id("kubejs:iron_scrap_tiny")

    e.shapeless("kubejs:small_gold_scrap", ["kubejs:tiny_gold_scrap", "kubejs:tiny_gold_scrap", "kubejs:tiny_gold_scrap"]).id("kubejs:small_gold_scrap")
    e.shapeless("kubejs:gold_scrap", ["kubejs:small_gold_scrap", "kubejs:small_gold_scrap", "kubejs:small_gold_scrap"]).id("kubejs:gold_scrap")
    e.shaped(
      "kubejs:gold_scrap",
        [
          "TTT",
          "TTT", // That was a good handheld
          "TTT"
        ],
        {
          T: "kubejs:tiny_gold_scrap"
        }
    ).id("kubejs:gold_scrap_tiny")

    e.shapeless("kubejs:diamond_scrap", ["kubejs:small_diamond_scrap", "kubejs:small_diamond_scrap", "kubejs:small_diamond_scrap"]).id("kubejs:diamond_scrap")

    e.shapeless("kubejs:silver_scrap", ["kubejs:small_silver_scrap", "kubejs:small_silver_scrap", "kubejs:small_silver_scrap"]).id("kubejs:silver_scrap")

})