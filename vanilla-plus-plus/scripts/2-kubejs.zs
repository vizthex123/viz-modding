# Changes things related to my KubeJS items

import crafttweaker.api.tag.MCTag;

print("2-kubejs.zs loading...");

/*
craftingTable.addShapeless("name", <item:output>, [<item>]);
craftingTable.addShaped("name", <item:output>,
    [[<item>, <item>, <item>],
    [<item>, <item>, <item>],
    [<item>, <item, <item>]]);
craftingTable.remove(<item>);
craftingTable.removeByName("name");

blastFurnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);

furnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);
*/

# Craft Disc Residue into Coal
craftingTable.addShapeless("disc_residue_to_coal", <item:minecraft:coal>*8, [<item:kubejs:disc_residue>]);

# Craft Biomass & Meaty Clumps
val organic = <tag:items:vanilla:biomass_materials>;
val meat = <tag:items:vanilla:meaty_clump_materials>;
craftingTable.addShapeless("biomass", <item:kubejs:biomass>, [organic, organic, organic, organic, organic, organic, organic, organic]);
craftingTable.addShapeless("meaty_clump", <item:kubejs:meaty_clump>, [meat, meat, meat, meat, meat, meat, meat, meat]);

# Craft Small Scrap into Scrap
craftingTable.addShapeless("copper_scrap", <item:kubejs:copper_scrap>, [<item:kubejs:small_copper_scrap>, <item:kubejs:small_copper_scrap>, <item:kubejs:small_copper_scrap>]);

craftingTable.addShapeless("scrap", <item:kubejs:scrap>, [<item:kubejs:small_scrap>, <item:kubejs:small_scrap>, <item:kubejs:small_scrap>]);

craftingTable.addShapeless("gold_scrap", <item:kubejs:gold_scrap>, [<item:kubejs:small_gold_scrap>, <item:kubejs:small_gold_scrap>, <item:kubejs:small_gold_scrap>]);

craftingTable.addShapeless("diamond_scrap", <item:kubejs:diamond_scrap>, [<item:kubejs:small_diamond_scrap>, <item:kubejs:small_diamond_scrap>, <item:kubejs:small_diamond_scrap>]);


# Smelt Scrap into Ingots
furnace.addRecipe("smelt_copper_scrap", <item:minecraft:copper_ingot>, <item:kubejs:copper_scrap>, 0, 200);
furnace.addRecipe("smelt_scrap", <item:minecraft:iron_ingot>, <item:kubejs:scrap>, 0, 200);
furnace.addRecipe("smelt_gold_scrap", <item:minecraft:gold_ingot>, <item:kubejs:gold_scrap>, 0, 200);

blastFurnace.addRecipe("blast_copper_scrap", <item:minecraft:copper_ingot>, <item:kubejs:copper_scrap>, 0, 100);
blastFurnace.addRecipe("blast_scrap", <item:minecraft:iron_ingot>, <item:kubejs:scrap>, 0, 100);
blastFurnace.addRecipe("blast_gold_scrap", <item:minecraft:gold_ingot>, <item:kubejs:gold_scrap>, 0, 100);
blastFurnace.addRecipe("blast_diamond_scrap", <item:minecraft:diamond>, <item:kubejs:diamond_scrap>, 0, 100);

print("2-kubejs.zs loaded");