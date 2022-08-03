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
mods.jei.JEI.addDescription(<item:additionaladditions:gold_ring>, ["Gained from bartering with Piglins"]);
mods.jei.JEI.addDescription(<item:minecraft:ladder>, ["You can use any vanilla wood to make that variation of a ladder (e.g. Dark Oak makes Dark Oak Ladders)"]);
mods.jei.JEI.addDescription(<item:quark:soul_bead>, ["Can be used to locate Nether Fortresses, or turned into Coins." + "\n\nWraiths will spawn in the Soul Sand Valley"]);


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
mods.jei.JEI.hideIngredient(<item:thermal:rf_coil_creative_augment>);
mods.jei.JEI.hideIngredient(<item:thermal:fluid_tank_creative_augment>);
mods.jei.JEI.hideIngredient(<item:thermal:machine_efficiency_creative_augment>);
mods.jei.JEI.hideIngredient(<item:thermal:machine_catalyst_creative_augment>);


# Hides technical items
mods.jei.JEI.hideIngredient(<item:minecraft:bedrock>);
mods.jei.JEI.hideIngredient(<item:minecraft:end_portal_frame>);

print("JEI.zs loaded");