# Adds meltable tags to various items
# Used in the scrapping recipes I made
#priority 10

import crafttweaker.api.tag.MCTag;

print("0-tags-scrap.zs loading...");
/*
<tag>.add(<item>);
<tag>.remove(<item>);
*/


### Scrap Items ###
# Copper
val copper = <tag:items:teoe:meltable_copper>;

copper.add(<item:minecraft:lightning_rod>);
copper.add(<item:minecraft:spyglass>);

copper.add(<item:additionaladditions:watering_can>);

copper.add(<item:create:copper_diving_helmet>);
copper.add(<item:create:copper_backtank>);
copper.add(<item:create:copper_diving_boots>);
copper.add(<item:create:fluid_pipe>);

copper.add(<item:essentials:sorting_hopper>);

copper.add(<item:ironchest:copper_chest>);
copper.add(<item:ironchest:trapped_copper_chest>);
copper.add(<item:ironchest:wood_to_copper_chest_upgrade>);

copper.add(<item:tconstruct:copper_can>);



# Iron
val iron = <tag:items:teoe:meltable_iron>;

iron.add(<item:minecraft:chainmail_helmet>);
iron.add(<item:minecraft:chainmail_chestplate>);
iron.add(<item:minecraft:chainmail_leggings>);
iron.add(<item:minecraft:chainmail_boots>);

iron.add(<item:minecraft:iron_helmet>);
iron.add(<item:minecraft:iron_chestplate>);
iron.add(<item:minecraft:iron_leggings>);
iron.add(<item:minecraft:iron_boots>);

iron.add(<item:minecraft:iron_sword>);
iron.add(<item:minecraft:iron_pickaxe>);
iron.add(<item:minecraft:iron_axe>);
iron.add(<item:minecraft:iron_shovel>);
iron.add(<item:minecraft:iron_hoe>);

iron.add(<item:minecraft:iron_horse_armor>);
iron.add(<item:minecraft:flint_and_steel>);
iron.add(<item:minecraft:crossbow>);
iron.add(<item:minecraft:shears>);
iron.add(<item:minecraft:shield>);

iron.add(<item:minecraft:bucket>);
iron.add(<item:minecraft:cauldron>);
iron.add(<item:minecraft:chain>);
iron.add(<item:minecraft:compass>);
iron.add(<item:minecraft:heavy_weighted_pressure_plate>);
iron.add(<item:minecraft:hopper>);
iron.add(<item:minecraft:iron_door>);
iron.add(<item:minecraft:iron_trapdoor>);
iron.add(<item:minecraft:lantern>);
iron.add(<item:minecraft:soul_lantern>);
iron.add(<item:minecraft:stonecutter>);
iron.add(<item:minecraft:tripwire_hook>);
iron.add(<item:minecraft:minecart>);
iron.add(<item:minecraft:activator_rail>);
iron.add(<item:minecraft:detector_rail>);
iron.add(<item:minecraft:rail>);

iron.add(<item:botania:ghost_rail>);

iron.add(<item:ironchest:iron_chest>);
iron.add(<item:ironchest:trapped_iron_chest>);
iron.add(<item:ironchest:wood_to_iron_chest_upgrade>);
iron.add(<item:ironchest:copper_to_iron_chest_upgrade>);

iron.add(<item:thermal:crossover_rail>);


iron.add(<item:aquamirae:terrible_helmet>);
iron.add(<item:aquamirae:terrible_chestplate>);
iron.add(<item:aquamirae:terrible_leggings>);
iron.add(<item:aquamirae:terrible_boots>);

iron.add(<item:aquamirae:terrible_sword>);
iron.add(<item:aquamirae:poisoned_blade>);
iron.add(<item:aquamirae:oxygen_tank>);

iron.add(<item:byg:boric_lantern>);
iron.add(<item:byg:glowstone_lantern>);
iron.add(<item:byg:therium_lantern>);
iron.add(<item:byg:cryptic_lantern>);
iron.add(<item:byg:chain_plating>);

iron.add(<item:cookingforblockheads:fridge>);
iron.add(<item:cookingforblockheads:oven>);
iron.add(<item:cookingforblockheads:toaster>);

iron.add(<item:create:chute>);
iron.add(<item:create:filter>);
iron.add(<item:create:super_glue>);
iron.add(<item:create:metal_bracket>);

iron.add(<item:enigmaticlegacy:iron_ring>);

iron.add(<item:essentials:item_chute>);

iron.add(<item:fuel_canister:fuel_canister>);

iron.add(<item:quark:iron_button>);
iron.add(<item:quark:iron_ladder>);
iron.add(<item:quark:trowel>);

iron.add(<item:thermal:drill_head>);
iron.add(<item:thermal:saw_blade>);
iron.add(<item:thermal:slot_seal>);
iron.add(<tag:items:whisperwoods:wisp_lantern>);


	// These items melt into a nugget since they use 3 nuggets or less per craft
val iron_small = <tag:items:teoe:meltable_iron_small>;

iron_small.add(<item:minecraft:iron_bars>);
iron_small.add(<item:cookingforblockheads:tool_rack>);
iron_small.add(<item:createaddition:spool>);
iron_small.add(<item:ironjetpacks:strap>);
iron_small.add(<item:twilightforest:iron_ladder>);


	// Melts into regular Scrap since they use 9 ingots or more
val iron_big = <tag:items:teoe:meltable_iron_big>;

iron_big.add(<item:minecraft:anvil>);
iron_big.add(<item:minecraft:chipped_anvil>);
iron_big.add(<item:minecraft:damaged_anvil>);
iron_big.add(<item:aquamirae:three_bolt_helmet>);
iron_big.add(<item:aquamirae:three_bolt_suit>);
iron_big.add(<item:aquamirae:three_bolt_leggings>);
iron_big.add(<item:aquamirae:three_bolt_boots>);
iron_big.add(<item:create:mechanical_press>);
iron_big.add(<item:create:schematicannon>);
iron_big.add(<item:xnet:antenna_base>);



# Gold
val gold = <tag:items:teoe:meltable_gold>;

gold.add(<item:minecraft:golden_helmet>);
gold.add(<item:minecraft:golden_chestplate>);
gold.add(<item:minecraft:golden_leggings>);
gold.add(<item:minecraft:golden_boots>);

gold.add(<item:minecraft:golden_sword>);
gold.add(<item:minecraft:golden_pickaxe>);
gold.add(<item:minecraft:golden_axe>);
gold.add(<item:minecraft:golden_shovel>);
gold.add(<item:minecraft:golden_hoe>);

gold.add(<item:minecraft:golden_horse_armor>);

gold.add(<item:minecraft:clock>);
gold.add(<item:minecraft:light_weighted_pressure_plate>);
gold.add(<item:minecraft:powered_rail>);


gold.add(<item:additionaladditions:gold_ring>);

gold.add(<item:create:controller_rail>);

gold.add(<item:ironchest:gold_chest>);
gold.add(<item:ironchest:trapped_gold_chest>);
gold.add(<item:ironchest:iron_to_gold_chest_upgrade>);

gold.add(<item:twilightforest:gold_minotaur_axe>);



# Diamond
val diamond = <tag:items:teoe:meltable_diamond>;

diamond.add(<item:minecraft:diamond_helmet>);
diamond.add(<item:minecraft:diamond_chestplate>);
diamond.add(<item:minecraft:diamond_leggings>);
diamond.add(<item:minecraft:diamond_boots>);

diamond.add(<item:minecraft:diamond_sword>);
diamond.add(<item:minecraft:diamond_pickaxe>);
diamond.add(<item:minecraft:diamond_axe>);
diamond.add(<item:minecraft:diamond_shovel>);
diamond.add(<item:minecraft:diamond_hoe>);
diamond.add(<item:minecraft:diamond_horse_armor>);

diamond.add(<item:additionaladditions:pocket_jukebox>);

diamond.add(<item:aquamirae:fin_cutter>);
diamond.add(<item:aquamirae:maze_rose>);
diamond.add(<item:aquamirae:poisoned_chakra>);

diamond.add(<item:ironchest:diamond_chest>);
diamond.add(<item:ironchest:trapped_diamond_chest>);
diamond.add(<item:ironchest:gold_to_diamond_chest_upgrade>);
diamond.add(<item:ironchest:crystal_chest>);
diamond.add(<item:ironchest:trapped_crystal_chest>);
diamond.add(<item:ironchest:diamond_to_crystal_chest_upgrade>);

diamond.add(<item:longfallboots:longfallboots>);

diamond.add(<item:twilightforest:diamond_minotaur_axe>);


# Netherite
val netherite = <tag:items:teoe:meltable_netherite>;

netherite.add(<item:minecraft:netherite_helmet>);
netherite.add(<item:minecraft:netherite_chestplate>);
netherite.add(<item:minecraft:netherite_leggings>);
netherite.add(<item:minecraft:netherite_boots>);

netherite.add(<item:minecraft:netherite_sword>);
netherite.add(<item:minecraft:netherite_pickaxe>);
netherite.add(<item:minecraft:netherite_axe>);
netherite.add(<item:minecraft:netherite_shovel>);
netherite.add(<item:minecraft:netherite_hoe>);

netherite.add(<item:aquamirae:abyssal_tiara>);
netherite.add(<item:aquamirae:abyssal_heaume>);
netherite.add(<item:aquamirae:abyssal_brigantine>);
netherite.add(<item:aquamirae:abyssal_leggings>);
netherite.add(<item:aquamirae:abyssal_boots>);

netherite.add(<item:aquamirae:divider>);
netherite.add(<item:aquamirae:whisper_of_the_abyss>);



# Platinum
val platinum = <tag:items:teoe:meltable_platinum>;

platinum.add(<item:ob_core:paladin_helmet>);
platinum.add(<item:ob_core:paladin_extra_helmet>);
platinum.add(<item:ob_core:paladin_chestplate>);
platinum.add(<item:ob_core:paladin_leggings>);
platinum.add(<item:ob_core:paladin_boots>);

platinum.add(<item:ob_core:lance_billet>);
platinum.add(<item:ob_core:platinum_bolt>);
platinum.add(<item:ob_core:prospectors_pick>);
platinum.add(<item:ob_core:sword_billet>);



# Rose Gold
val rose_gold = <tag:items:teoe:meltable_rose_gold>;

rose_gold.add(<item:additionaladditions:rose_gold_helmet>);
rose_gold.add(<item:additionaladditions:rose_gold_chestplate>);
rose_gold.add(<item:additionaladditions:rose_gold_leggings>);
rose_gold.add(<item:additionaladditions:rose_gold_boots>);
rose_gold.add(<item:additionaladditions:rose_gold_sword>);
rose_gold.add(<item:additionaladditions:rose_gold_pickaxe>);
rose_gold.add(<item:additionaladditions:rose_gold_shovel>);
rose_gold.add(<item:additionaladditions:rose_gold_hoe>);
rose_gold.add(<item:additionaladditions:rose_gold_axe>);



# Lumium
val lumium = <tag:items:teoe:meltable_lumium>;

lumium.add(<item:thermal:lumium_glass>);
lumium.add(<item:thermal:lumium_rail>);
lumium.add(<item:thermal:lumium_crossover_rail>);
lumium.add(<item:thermal:lumium_powered_rail>);
lumium.add(<item:thermal:lumium_activator_rail>);
lumium.add(<item:thermal:lumium_detector_rail>);



# Fiery
val fiery = <tag:items:teoe:meltable_fiery>;

fiery.add(<item:twilightforest:fiery_helmet>);
fiery.add(<item:twilightforest:fiery_chestplate>);
fiery.add(<item:twilightforest:fiery_leggings>);
fiery.add(<item:twilightforest:fiery_boots>);

fiery.add(<item:twilightforest:fiery_sword>);
fiery.add(<item:twilightforest:fiery_pickaxe>);



# Ironwood
val ironwood = <tag:items:teoe:meltable_ironwood>;

ironwood.add(<item:twilightforest:ironwood_helmet>);
ironwood.add(<item:twilightforest:ironwood_chestplate>);
ironwood.add(<item:twilightforest:ironwood_leggings>);
ironwood.add(<item:twilightforest:ironwood_boots>);

ironwood.add(<item:twilightforest:ironwood_sword>);
ironwood.add(<item:twilightforest:ironwood_pickaxe>);
ironwood.add(<item:twilightforest:ironwood_shovel>);
ironwood.add(<item:twilightforest:ironwood_hoe>);
ironwood.add(<item:twilightforest:ironwood_axe>);



# Knightmetal
val knightmetal = <tag:items:teoe:meltable_knightmetal>;

knightmetal.add(<item:twilightforest:knightmetal_helmet>);
knightmetal.add(<item:twilightforest:knightmetal_chestplate>);
knightmetal.add(<item:twilightforest:knightmetal_leggings>);
knightmetal.add(<item:twilightforest:knightmetal_boots>);

knightmetal.add(<item:twilightforest:knightmetal_sword>);
knightmetal.add(<item:twilightforest:knightmetal_pickaxe>);
knightmetal.add(<item:twilightforest:knightmetal_axe>);

knightmetal.add(<item:twilightforest:block_and_chain>);
knightmetal.add(<item:twilightforest:knightmetal_ring>);
knightmetal.add(<item:twilightforest:knightmetal_shield>);


# Prismarine
val prismarine = <tag:items:teoe:meltable_prismarine>;

prismarine.add(<item:thermal:prismarine_powered_rail>);
prismarine.add(<item:thermal:prismarine_activator_rail>);
prismarine.add(<item:thermal:prismarine_crossover_rail>);
prismarine.add(<item:thermal:prismarine_detector_rail>);
prismarine.add(<item:thermal:prismarine_rail>);


print("0-tags-scrap.zs loaded");