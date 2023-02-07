# Adds meltable tags to various items
# Used in the scrapping recipes I made

import crafttweaker.api.tag.MCTag;

print("0-tags-scrap.zs loading...");
/*
<tag>.add(<item>);
<tag>.remove(<item>);
*/


### Scrap Items ###
# Copper
<tag:items:teoe:meltable_copper>.add(<item:minecraft:lightning_rod>);
<tag:items:teoe:meltable_copper>.add(<item:minecraft:spyglass>);

<tag:items:teoe:meltable_copper>.add(<item:additionaladditions:watering_can>);

<tag:items:teoe:meltable_copper>.add(<item:create:diving_helmet>);
<tag:items:teoe:meltable_copper>.add(<item:create:copper_backtank>);
<tag:items:teoe:meltable_copper>.add(<item:create:diving_boots>);
<tag:items:teoe:meltable_copper>.add(<item:create:fluid_pipe>);

<tag:items:teoe:meltable_copper>.add(<item:essentials:sorting_hopper>);

<tag:items:teoe:meltable_copper>.add(<item:ironchest:copper_chest>);
<tag:items:teoe:meltable_copper>.add(<item:ironchest:trapped_copper_chest>);
<tag:items:teoe:meltable_copper>.add(<item:ironchest:wood_to_copper_chest_upgrade>);

<tag:items:teoe:meltable_copper>.add(<item:tconstruct:copper_can>);



# Iron
<tag:items:teoe:meltable_iron>.add(<item:minecraft:chainmail_helmet>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:chainmail_chestplate>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:chainmail_leggings>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:chainmail_boots>);

<tag:items:teoe:meltable_iron>.add(<item:minecraft:iron_helmet>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:iron_chestplate>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:iron_leggings>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:iron_boots>);

<tag:items:teoe:meltable_iron>.add(<item:minecraft:iron_sword>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:iron_pickaxe>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:iron_axe>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:iron_shovel>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:iron_hoe>);

<tag:items:teoe:meltable_iron>.add(<item:minecraft:iron_horse_armor>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:flint_and_steel>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:crossbow>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:shears>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:shield>);

<tag:items:teoe:meltable_iron>.add(<item:minecraft:bucket>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:cauldron>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:chain>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:compass>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:heavy_weighted_pressure_plate>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:hopper>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:iron_bars>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:iron_door>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:iron_trapdoor>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:lantern>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:soul_lantern>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:stonecutter>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:tripwire_hook>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:minecart>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:activator_rail>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:detector_rail>);
<tag:items:teoe:meltable_iron>.add(<item:minecraft:rail>);

<tag:items:teoe:meltable_iron>.add(<item:botania:ghost_rail>);

<tag:items:teoe:meltable_iron>.add(<item:ironchest:iron_chest>);
<tag:items:teoe:meltable_iron>.add(<item:ironchest:trapped_iron_chest>);
<tag:items:teoe:meltable_iron>.add(<item:ironchest:wood_to_iron_chest_upgrade>);
<tag:items:teoe:meltable_iron>.add(<item:ironchest:copper_to_iron_chest_upgrade>);

<tag:items:teoe:meltable_iron>.add(<item:thermal:crossover_rail>);


<tag:items:teoe:meltable_iron>.add(<item:aquamirae:terrible_helmet>);
<tag:items:teoe:meltable_iron>.add(<item:aquamirae:terrible_chestplate>);
<tag:items:teoe:meltable_iron>.add(<item:aquamirae:terrible_leggings>);
<tag:items:teoe:meltable_iron>.add(<item:aquamirae:terrible_boots>);

<tag:items:teoe:meltable_iron>.add(<item:aquamirae:terrible_sword>);
<tag:items:teoe:meltable_iron>.add(<item:aquamirae:poisoned_blade>);
<tag:items:teoe:meltable_iron>.add(<item:aquamirae:oxygen_tank>);

<tag:items:teoe:meltable_iron>.add(<item:byg:boric_lantern>);
<tag:items:teoe:meltable_iron>.add(<item:byg:glowstone_lantern>);
<tag:items:teoe:meltable_iron>.add(<item:byg:therium_lantern>);
<tag:items:teoe:meltable_iron>.add(<item:byg:cryptic_lantern>);
<tag:items:teoe:meltable_iron>.add(<item:byg:chain_plating>);

<tag:items:teoe:meltable_iron>.add(<item:cookingforblockheads:fridge>);
<tag:items:teoe:meltable_iron>.add(<item:cookingforblockheads:oven>);
<tag:items:teoe:meltable_iron>.add(<item:cookingforblockheads:toaster>);

<tag:items:teoe:meltable_iron>.add(<item:create:chute>);
<tag:items:teoe:meltable_iron>.add(<item:create:filter>);
<tag:items:teoe:meltable_iron>.add(<item:create:super_glue>);
<tag:items:teoe:meltable_iron>.add(<item:create:metal_bracket>);

<tag:items:teoe:meltable_iron>.add(<item:enigmaticlegacy:iron_ring>);

<tag:items:teoe:meltable_iron>.add(<item:essentials:item_chute>);

<tag:items:teoe:meltable_iron>.add(<item:farmersdelight:iron_knife>);

<tag:items:teoe:meltable_iron>.add(<item:fuel_canister:fuel_canister>);

<tag:items:teoe:meltable_iron>.add(<item:quark:iron_button>);
<tag:items:teoe:meltable_iron>.add(<item:quark:iron_ladder>);
<tag:items:teoe:meltable_iron>.add(<item:quark:trowel>);

<tag:items:teoe:meltable_iron>.add(<item:thermal:drill_head>);
<tag:items:teoe:meltable_iron>.add(<item:thermal:saw_blade>);
<tag:items:teoe:meltable_iron>.add(<item:thermal:slot_seal>);
<tag:items:teoe:meltable_iron>.add(<item:thermal:prismarine_activator_rail>);
<tag:items:teoe:meltable_iron>.add(<item:thermal:prismarine_crossover_rail>);
<tag:items:teoe:meltable_iron>.add(<item:thermal:prismarine_detector_rail>);
<tag:items:teoe:meltable_iron>.add(<item:thermal:prismarine_rail>);

<tag:items:teoe:meltable_iron>.add(<tag:items:whisperwoods:wisp_lantern>);


	// These items melt into a nugget since they use 3 or less per craft
<tag:items:teoe:meltable_iron_small>.add(<item:createaddition:spool>);
<tag:items:teoe:meltable_iron_small>.add(<item:cookingforblockheads:tool_rack>);
<tag:items:teoe:meltable_iron_small>.add(<item:ironjetpacks:strap>);
<tag:items:teoe:meltable_iron_small>.add(<item:twilightforest:iron_ladder>);


	// Melts into regular Scrap since they use 9 ingots or more
<tag:items:teoe:meltable_iron_big>.add(<item:minecraft:anvil>);
<tag:items:teoe:meltable_iron_big>.add(<item:minecraft:chipped_anvil>);
<tag:items:teoe:meltable_iron_big>.add(<item:minecraft:damaged_anvil>);
<tag:items:teoe:meltable_iron_big>.add(<item:aquamirae:three_bolt_helmet>);
<tag:items:teoe:meltable_iron_big>.add(<item:aquamirae:three_bolt_suit>);
<tag:items:teoe:meltable_iron_big>.add(<item:aquamirae:three_bolt_leggings>);
<tag:items:teoe:meltable_iron_big>.add(<item:aquamirae:three_bolt_boots>);
<tag:items:teoe:meltable_iron_big>.add(<item:create:mechanical_press>);
<tag:items:teoe:meltable_iron_big>.add(<item:create:schematicannon>);
<tag:items:teoe:meltable_iron_big>.add(<item:xnet:antenna_base>);



# Gold
<tag:items:teoe:meltable_gold>.add(<item:minecraft:golden_helmet>);
<tag:items:teoe:meltable_gold>.add(<item:minecraft:golden_chestplate>);
<tag:items:teoe:meltable_gold>.add(<item:minecraft:golden_leggings>);
<tag:items:teoe:meltable_gold>.add(<item:minecraft:golden_boots>);

<tag:items:teoe:meltable_gold>.add(<item:minecraft:golden_sword>);
<tag:items:teoe:meltable_gold>.add(<item:minecraft:golden_pickaxe>);
<tag:items:teoe:meltable_gold>.add(<item:minecraft:golden_axe>);
<tag:items:teoe:meltable_gold>.add(<item:minecraft:golden_shovel>);
<tag:items:teoe:meltable_gold>.add(<item:minecraft:golden_hoe>);

<tag:items:teoe:meltable_gold>.add(<item:minecraft:golden_horse_armor>);

<tag:items:teoe:meltable_gold>.add(<item:minecraft:clock>);
<tag:items:teoe:meltable_gold>.add(<item:minecraft:light_weighted_pressure_plate>);
<tag:items:teoe:meltable_gold>.add(<item:minecraft:powered_rail>);


<tag:items:teoe:meltable_gold>.add(<item:additionaladditions:gold_ring>);

<tag:items:teoe:meltable_gold>.add(<item:create:controller_rail>);

<tag:items:teoe:meltable_gold>.add(<item:farmersdelight:golden_knife>);

<tag:items:teoe:meltable_gold>.add(<item:ironchest:gold_chest>);
<tag:items:teoe:meltable_gold>.add(<item:ironchest:trapped_gold_chest>);
<tag:items:teoe:meltable_gold>.add(<item:ironchest:iron_to_gold_chest_upgrade>);

<tag:items:teoe:meltable_gold>.add(<item:thermal:prismarine_powered_rail>);

<tag:items:teoe:meltable_gold>.add(<item:twilightforest:gold_minotaur_axe>);



# Diamond
<tag:items:teoe:meltable_diamond>.add(<item:minecraft:diamond_helmet>);
<tag:items:teoe:meltable_diamond>.add(<item:minecraft:diamond_chestplate>);
<tag:items:teoe:meltable_diamond>.add(<item:minecraft:diamond_leggings>);
<tag:items:teoe:meltable_diamond>.add(<item:minecraft:diamond_boots>);

<tag:items:teoe:meltable_diamond>.add(<item:minecraft:diamond_sword>);
<tag:items:teoe:meltable_diamond>.add(<item:minecraft:diamond_pickaxe>);
<tag:items:teoe:meltable_diamond>.add(<item:minecraft:diamond_axe>);
<tag:items:teoe:meltable_diamond>.add(<item:minecraft:diamond_shovel>);
<tag:items:teoe:meltable_diamond>.add(<item:minecraft:diamond_hoe>);
<tag:items:teoe:meltable_diamond>.add(<item:minecraft:diamond_horse_armor>);

<tag:items:teoe:meltable_diamond>.add(<item:additionaladditions:pocket_jukebox>);

<tag:items:teoe:meltable_diamond>.add(<item:aquamirae:fin_cutter>);
<tag:items:teoe:meltable_diamond>.add(<item:aquamirae:maze_rose>);
<tag:items:teoe:meltable_diamond>.add(<item:aquamirae:poisoned_chakra>);

<tag:items:teoe:meltable_diamond>.add(<item:farmersdelight:diamond_knife>);

<tag:items:teoe:meltable_diamond>.add(<item:ironchest:diamond_chest>);
<tag:items:teoe:meltable_diamond>.add(<item:ironchest:trapped_diamond_chest>);
<tag:items:teoe:meltable_diamond>.add(<item:ironchest:gold_to_diamond_chest_upgrade>);
<tag:items:teoe:meltable_diamond>.add(<item:ironchest:crystal_chest>);
<tag:items:teoe:meltable_diamond>.add(<item:ironchest:trapped_crystal_chest>);
<tag:items:teoe:meltable_diamond>.add(<item:ironchest:diamond_to_crystal_chest_upgrade>);

<tag:items:teoe:meltable_diamond>.add(<item:longfallboots:longfallboots>);

<tag:items:teoe:meltable_diamond>.add(<item:twilightforest:diamond_minotaur_axe>);


# Netherite
<tag:items:teoe:meltable_netherite>.add(<item:minecraft:netherite_helmet>);
<tag:items:teoe:meltable_netherite>.add(<item:minecraft:netherite_chestplate>);
<tag:items:teoe:meltable_netherite>.add(<item:minecraft:netherite_leggings>);
<tag:items:teoe:meltable_netherite>.add(<item:minecraft:netherite_boots>);

<tag:items:teoe:meltable_netherite>.add(<item:minecraft:netherite_sword>);
<tag:items:teoe:meltable_netherite>.add(<item:minecraft:netherite_pickaxe>);
<tag:items:teoe:meltable_netherite>.add(<item:minecraft:netherite_axe>);
<tag:items:teoe:meltable_netherite>.add(<item:minecraft:netherite_shovel>);
<tag:items:teoe:meltable_netherite>.add(<item:minecraft:netherite_hoe>);

<tag:items:teoe:meltable_netherite>.add(<item:aquamirae:abyssal_tiara>);
<tag:items:teoe:meltable_netherite>.add(<item:aquamirae:abyssal_heaume>);
<tag:items:teoe:meltable_netherite>.add(<item:aquamirae:abyssal_brigantine>);
<tag:items:teoe:meltable_netherite>.add(<item:aquamirae:abyssal_leggings>);
<tag:items:teoe:meltable_netherite>.add(<item:aquamirae:abyssal_boots>);

<tag:items:teoe:meltable_netherite>.add(<item:aquamirae:divider>);
<tag:items:teoe:meltable_netherite>.add(<item:aquamirae:whisper_of_the_abyss>);

<tag:items:teoe:meltable_netherite>.add(<item:farmersdelight:netherite_knife>);


# Platinum
<tag:items:teoe:meltable_platinum>.add(<item:ob_core:paladin_helmet>);
<tag:items:teoe:meltable_platinum>.add(<item:ob_core:paladin_extra_helmet>);
<tag:items:teoe:meltable_platinum>.add(<item:ob_core:paladin_chestplate>);
<tag:items:teoe:meltable_platinum>.add(<item:ob_core:paladin_leggings>);
<tag:items:teoe:meltable_platinum>.add(<item:ob_core:paladin_boots>);

<tag:items:teoe:meltable_platinum>.add(<item:ob_core:lance_billet>);
<tag:items:teoe:meltable_platinum>.add(<item:ob_core:platinum_bolt>);
<tag:items:teoe:meltable_platinum>.add(<item:ob_core:prospectors_pick>);
<tag:items:teoe:meltable_platinum>.add(<item:ob_core:sword_billet>);



# Rose Gold
<tag:items:teoe:meltable_rose_gold>.add(<item:additionaladditions:rose_gold_helmet>);
<tag:items:teoe:meltable_rose_gold>.add(<item:additionaladditions:rose_gold_chestplate>);
<tag:items:teoe:meltable_rose_gold>.add(<item:additionaladditions:rose_gold_leggings>);
<tag:items:teoe:meltable_rose_gold>.add(<item:additionaladditions:rose_gold_boots>);
<tag:items:teoe:meltable_rose_gold>.add(<item:additionaladditions:rose_gold_sword>);
<tag:items:teoe:meltable_rose_gold>.add(<item:additionaladditions:rose_gold_pickaxe>);
<tag:items:teoe:meltable_rose_gold>.add(<item:additionaladditions:rose_gold_shovel>);
<tag:items:teoe:meltable_rose_gold>.add(<item:additionaladditions:rose_gold_hoe>);
<tag:items:teoe:meltable_rose_gold>.add(<item:additionaladditions:rose_gold_axe>);



# Lumium
<tag:items:teoe:meltable_lumium>.add(<item:thermal:lumium_glass>);
<tag:items:teoe:meltable_lumium>.add(<item:thermal:lumium_rail>);
<tag:items:teoe:meltable_lumium>.add(<item:thermal:lumium_crossover_rail>);
<tag:items:teoe:meltable_lumium>.add(<item:thermal:lumium_powered_rail>);
<tag:items:teoe:meltable_lumium>.add(<item:thermal:lumium_activator_rail>);
<tag:items:teoe:meltable_lumium>.add(<item:thermal:lumium_detector_rail>);



# Fiery
<tag:items:teoe:meltable_fiery>.add(<item:twilightforest:fiery_helmet>);
<tag:items:teoe:meltable_fiery>.add(<item:twilightforest:fiery_chestplate>);
<tag:items:teoe:meltable_fiery>.add(<item:twilightforest:fiery_leggings>);
<tag:items:teoe:meltable_fiery>.add(<item:twilightforest:fiery_boots>);

<tag:items:teoe:meltable_fiery>.add(<item:twilightforest:fiery_sword>);
<tag:items:teoe:meltable_fiery>.add(<item:twilightforest:fiery_pickaxe>);



# Ironwood
<tag:items:teoe:meltable_ironwood>.add(<item:twilightforest:ironwood_helmet>);
<tag:items:teoe:meltable_ironwood>.add(<item:twilightforest:ironwood_chestplate>);
<tag:items:teoe:meltable_ironwood>.add(<item:twilightforest:ironwood_leggings>);
<tag:items:teoe:meltable_ironwood>.add(<item:twilightforest:ironwood_boots>);

<tag:items:teoe:meltable_ironwood>.add(<item:twilightforest:ironwood_sword>);
<tag:items:teoe:meltable_ironwood>.add(<item:twilightforest:ironwood_pickaxe>);
<tag:items:teoe:meltable_ironwood>.add(<item:twilightforest:ironwood_shovel>);
<tag:items:teoe:meltable_ironwood>.add(<item:twilightforest:ironwood_hoe>);
<tag:items:teoe:meltable_ironwood>.add(<item:twilightforest:ironwood_axe>);



# Knightmetal
<tag:items:teoe:meltable_knightmetal>.add(<item:twilightforest:knightmetal_helmet>);
<tag:items:teoe:meltable_knightmetal>.add(<item:twilightforest:knightmetal_chestplate>);
<tag:items:teoe:meltable_knightmetal>.add(<item:twilightforest:knightmetal_leggings>);
<tag:items:teoe:meltable_knightmetal>.add(<item:twilightforest:knightmetal_boots>);

<tag:items:teoe:meltable_knightmetal>.add(<item:twilightforest:knightmetal_sword>);
<tag:items:teoe:meltable_knightmetal>.add(<item:twilightforest:knightmetal_pickaxe>);
<tag:items:teoe:meltable_knightmetal>.add(<item:twilightforest:knightmetal_axe>);

<tag:items:teoe:meltable_knightmetal>.add(<item:twilightforest:block_and_chain>);
<tag:items:teoe:meltable_knightmetal>.add(<item:twilightforest:knightmetal_ring>);
<tag:items:teoe:meltable_knightmetal>.add(<item:twilightforest:knightmetal_shield>);

print("0-tags-scrap.zs loaded");