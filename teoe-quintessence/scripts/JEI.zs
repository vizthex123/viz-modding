# Hides things from JEI, or adds info about them

import mods.jei.JEI;

print("JEI.zs loading...");

/*
mods.jei.JEI.hideIngredient(<item>);
mods.jei.JEI.hideFluid(<fluid:minecraft:lava>);

mods.jei.JEI.addInfo(<item>, ["line1", "line2"]);

mods.jei.JEI.hideRecipe("category", "recipeName");
*/


# Add JEI Info tabs for various items
mods.jei.JEI.addDescription(<item:appbot:mana_p2p_tunnel>, ["Right-click a P2P tunnel with any Botania item to make it a Mana Tunnel"]);
mods.jei.JEI.addDescription(<item:additionaladditions:gold_ring>, ["Gained from bartering with Piglins"]);
mods.jei.JEI.addDescription(<item:minecraft:ladder>, ["You can use any vanilla wood to make that variation of a ladder (e.g. Dark Oak makes Dark Oak Ladders)"]);
mods.jei.JEI.addDescription(<item:waystones:attuned_shard>, ["Swap the Attuned Shards of 2 Warp Plates to bind them to each other"]);
mods.jei.JEI.addDescription(<item:quark:soul_bead>, ["Can be used to locate Nether Fortresses, or turned into Coins." + "\n\nWraiths will spawn in the Soul Sand Valley"]);
mods.jei.JEI.addDescription(<item:ob_core:magic_dust>, ["Find a Magic Crystal Cluster deep in the underground, which will grow Magic Dust over time." + "\n\nThey seem to be more common near lava"]);



# Hides infested blocks
mods.jei.JEI.hideIngredient(<item:minecraft:infested_stone>);
mods.jei.JEI.hideIngredient(<item:minecraft:infested_deepslate>);
mods.jei.JEI.hideIngredient(<item:minecraft:infested_cobblestone>);
mods.jei.JEI.hideIngredient(<item:minecraft:infested_stone_bricks>);
mods.jei.JEI.hideIngredient(<item:minecraft:infested_mossy_stone_bricks>);
mods.jei.JEI.hideIngredient(<item:minecraft:infested_cracked_stone_bricks>);
mods.jei.JEI.hideIngredient(<item:minecraft:infested_chiseled_stone_bricks>);
mods.jei.JEI.hideIngredient(<item:minecraft:infested_stone_bricks>);



# Hides creative-only items
#	mods.jei.JEI.hideIngredient(<item:ae2:creative_energy_cell>);
#	mods.jei.JEI.hideIngredient(<item:ae2:creative_item_cell>);
#	mods.jei.JEI.hideIngredient(<item:ae2:creative_fluid_cell>);
#	mods.jei.JEI.hideIngredient(<item:botania:creative_pool>);
mods.jei.JEI.hideIngredient(<item:botania:infrangible_platform>);
mods.jei.JEI.hideIngredient(<item:botania:lens_storm>);
#	mods.jei.JEI.hideIngredient(<item:botania:mana_tablet>.withTag({creative: 1 as byte, mana: 500000 as int}));
mods.jei.JEI.hideIngredient(<item:botania:corporea_spark_creative>);
#	mods.jei.JEI.hideIngredient(<item:create:creative_motor>);
#	mods.jei.JEI.hideIngredient(<item:create:creative_crate>);
#	mods.jei.JEI.hideIngredient(<item:create:creative_fluid_tank>);
#	mods.jei.JEI.hideIngredient(<item:create:creative_blaze_cake>);
#	mods.jei.JEI.hideIngredient(<item:create:handheld_worldshaper>);
mods.jei.JEI.hideIngredient(<item:createaddition:creative_energy>);
mods.jei.JEI.hideIngredient(<item:storagedrawers:creative_storage_upgrade>);
mods.jei.JEI.hideIngredient(<item:storagedrawers:creative_vending_upgrade>);
#	mods.jei.JEI.hideIngredient(<item:thermal:rf_coil_creative_augment>);
mods.jei.JEI.hideIngredient(<item:thermal:fluid_tank_creative_augment>);
mods.jei.JEI.hideIngredient(<item:thermal:machine_efficiency_creative_augment>);
mods.jei.JEI.hideIngredient(<item:thermal:machine_catalyst_creative_augment>);
#	mods.jei.JEI.hideIngredient(<item:tconstruct:creative_slot>);
mods.jei.JEI.hideIngredient(<item:titanium:creative_generator>);
mods.jei.JEI.hideIngredient(<item:wormhole:creative_energy_cell>);
mods.jei.JEI.hideIngredient(<item:enigmaticlegacy:loot_generator>);
mods.jei.JEI.hideIngredient(<item:quantumquarryplus:creative_cell>);
mods.jei.JEI.hideIngredient(<item:ironjetpacks:capacitor>.withTag({Id: "ironjetpacks:creative" as string}));
mods.jei.JEI.hideIngredient(<item:ironjetpacks:thruster>.withTag({Id: "ironjetpacks:creative" as string}));
mods.jei.JEI.hideIngredient(<item:ironjetpacks:jetpack>.withTag({Id: "ironjetpacks:creative" as string}));
mods.jei.JEI.hideIngredient(<item:ironjetpacks:cell>.withTag({Id: "ironjetpacks:creative" as string}));



# Hides disabled items
mods.jei.JEI.hideIngredient(<item:ae2:vibration_chamber>);
mods.jei.JEI.hideIngredient(<item:essentials:slotted_chest>);
mods.jei.JEI.hideIngredient(<item:industrialforegoing:iron_gear>);
mods.jei.JEI.hideIngredient(<item:industrialforegoing:gold_gear>);
mods.jei.JEI.hideIngredient(<item:industrialforegoing:diamond_gear>);
mods.jei.JEI.hideIngredient(<item:wstweaks:lava_blade>);
mods.jei.JEI.hideIngredient(<item:wstweaks:blaze_blade>);
mods.jei.JEI.hideIngredient(<item:wormhole:coal_generator>);



# Hides normally obtainable that aren't obtainable in the pack
mods.jei.JEI.hideIngredient(<item:malum:aluminum_node>);
mods.jei.JEI.hideIngredient(<item:malum:uranium_node>);
mods.jei.JEI.hideIngredient(<item:malum:osmium_node>);



# Hides technical items
mods.jei.JEI.hideIngredient(<item:minecraft:bedrock>);
mods.jei.JEI.hideIngredient(<item:minecraft:end_portal_frame>);

mods.jei.JEI.hideIngredient(<item:ae2:identity_annihilation_plane>);

mods.jei.JEI.hideIngredient(<item:enigmaticlegacy:soul_crystal>);

mods.jei.JEI.hideIngredient(<item:reliquary:mob_charm>);
mods.jei.JEI.hideIngredient(<item:reliquary:mob_charm_fragment>);

mods.jei.JEI.hideIngredient(<item:twilightforest:ore_meter>);
mods.jei.JEI.hideIngredient(<item:twilightforest:twilight_portal_miniature_structure>);
mods.jei.JEI.hideIngredient(<item:twilightforest:naga_courtyard_miniature_structure>);
mods.jei.JEI.hideIngredient(<item:twilightforest:lich_tower_miniature_structure>);
mods.jei.JEI.hideIngredient(<item:twilightforest:twisted_stone>);
mods.jei.JEI.hideIngredient(<item:twilightforest:twisted_stone_pillar>);
mods.jei.JEI.hideIngredient(<item:twilightforest:auroralized_glass>);
mods.jei.JEI.hideIngredient(<item:twilightforest:cinder_furnace>);
mods.jei.JEI.hideIngredient(<item:twilightforest:cinder_log>);
mods.jei.JEI.hideIngredient(<item:twilightforest:cinder_wood>);
mods.jei.JEI.hideIngredient(<item:twilightforest:slider>);

mods.jei.JEI.hideIngredient(<item:twilightforest:pink_force_field>);
mods.jei.JEI.hideIngredient(<item:twilightforest:orange_force_field>);
mods.jei.JEI.hideIngredient(<item:twilightforest:green_force_field>);
mods.jei.JEI.hideIngredient(<item:twilightforest:blue_force_field>);
mods.jei.JEI.hideIngredient(<item:twilightforest:violet_force_field>);

mods.jei.JEI.hideIngredient(<item:titanium:block_test>);
mods.jei.JEI.hideIngredient(<item:titanium:block_twenty_four_test>);
mods.jei.JEI.hideIngredient(<item:titanium:block_asset_test>);
mods.jei.JEI.hideIngredient(<item:titanium:machine_test>);
# Hide Uncrafting
mods.jei.JEI.hideIngredient(<item:twilightforest:uncrafting_table>);
JEI.hideCategory("twilightforest:uncrafting");

print("JEI.zs loaded");