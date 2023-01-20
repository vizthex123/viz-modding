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

# Craft Biomass
craftingTable.addShapeless("biomass_flesh", <item:kubejs:biomass>, [<item:minecraft:rotten_flesh>, <item:minecraft:rotten_flesh>, <item:minecraft:rotten_flesh>]);
craftingTable.addShapeless("biomass_raw", <item:kubejs:biomass>, [<tag:items:c:raw_meat>, <tag:items:c:raw_meat>, <tag:items:c:raw_meat>]);
craftingTable.addShapeless("biomass_cooked", <item:kubejs:biomass>, [<tag:items:c:cooked_meat>, <tag:items:c:cooked_meat>, <tag:items:c:cooked_meat>, <tag:items:c:cooked_meat>]);

# Compost Biomass
composter.setValue(<item:kubejs:biomass>, 0.6);

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
blastFurnace.addRecipe("blast_diamond_scrap", <item:minecraft:diamond>, <item:kubejs:diamond_scrap>, 0, 200);


print("2-kubejs.zs loaded");