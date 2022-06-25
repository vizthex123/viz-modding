# Hides things from JEI, or adds info about them

import mods.jei.JEI;

print("JEI.zs loading...");

/*
mods.jei.JEI.hideIngredient(<item>);
mods.jei.JEI.hideFluid(<fluid:minecraft:lava>);

mods.jei.JEI.addInfo(<item>, ["line1", "line2"]);

mods.jei.JEI.hideRecipe("category", "recipeName");
*/

# Add JEI Info for various items
mods.jei.JEI.addDescription(<item:additionaladditions:gold_ring>, ["Gained from bartering with Piglins"]);
mods.jei.JEI.addDescription(<item:ae2:me_p2p_tunnel>, ["Right-click with an accepted item to change it to that type of P2P tunel" + "Filter JEI with $attunment to see the accepted list (since it uses item tags)"]);
mods.jei.JEI.addDescription(<item:minecraft:ladder>, ["You can use any vanilla wood to make that variation of a ladder"]);
mods.jei.JEI.addDescription(<item:waystones:attuned_shard>, ["Swap the Attuned Shards of 2 Warp Plates to bind them to each other"]);


# Hides infested blocks from JEI
mods.jei.JEI.hideIngredient(<item:minecraft:infested_stone>);
mods.jei.JEI.hideIngredient(<item:minecraft:infested_deepslate>);
mods.jei.JEI.hideIngredient(<item:minecraft:infested_cobblestone>);
mods.jei.JEI.hideIngredient(<item:minecraft:infested_stone_bricks>);
mods.jei.JEI.hideIngredient(<item:minecraft:infested_mossy_stone_bricks>);
mods.jei.JEI.hideIngredient(<item:minecraft:infested_cracked_stone_bricks>);
mods.jei.JEI.hideIngredient(<item:minecraft:infested_chiseled_stone_bricks>);
mods.jei.JEI.hideIngredient(<item:minecraft:infested_stone_bricks>);


# Hides creative-only items from JEI
mods.jei.JEI.hideIngredient(<item:ae2:creative_energy_cell>);
mods.jei.JEI.hideIngredient(<item:ae2:creative_item_cell>);
mods.jei.JEI.hideIngredient(<item:ae2:creative_fluid_cell>);
mods.jei.JEI.hideIngredient(<item:botania:creative_pool>);
mods.jei.JEI.hideIngredient(<item:botania:infrangible_platform>);
mods.jei.JEI.hideIngredient(<item:botania:lens_storm>);
mods.jei.JEI.hideIngredient(<item:botania:mana_tablet>);
mods.jei.JEI.hideIngredient(<item:botania:corporea_spark_creative>);
mods.jei.JEI.hideIngredient(<item:create:creative_motor>);
mods.jei.JEI.hideIngredient(<item:create:creative_fluid_tank>);
mods.jei.JEI.hideIngredient(<item:create:creative_crate>);
mods.jei.JEI.hideIngredient(<item:create:creative_blaze_cake>);
mods.jei.JEI.hideIngredient(<item:create:handheld_worldshaper>);
mods.jei.JEI.hideIngredient(<item:createaddition:creative_energy>);
mods.jei.JEI.hideIngredient(<item:storagedrawers:creative_storage_upgrade>);
mods.jei.JEI.hideIngredient(<item:storagedrawers:creative_vending_upgrade>);
mods.jei.JEI.hideIngredient(<item:thermal:rf_coil_creative_augment>);
mods.jei.JEI.hideIngredient(<item:thermal:fluid_tank_creative_augment>);
mods.jei.JEI.hideIngredient(<item:thermal:machine_efficiency_creative_augment>);
mods.jei.JEI.hideIngredient(<item:thermal:machine_catalyst_creative_augment>);
mods.jei.JEI.hideIngredient(<item:tconstruct:creative_slot>);
mods.jei.JEI.hideIngredient(<item:titanium:creative_generator>);
mods.jei.JEI.hideIngredient(<item:wormhole:creative_energy_cell>);


# Hide Uncrafting
mods.jei.JEI.hideIngredient(<item:twilightforest:uncrafting_table>);
JEI.hideCategory("twilightforest:uncrafting");

print("JEI.zs loaded");