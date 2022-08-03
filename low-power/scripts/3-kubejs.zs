# Changes things related to my KubeJS items

import crafttweaker.api.tag.MCTag;

print("3-kubejs.zs loading...");

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

# Tags
<tag:items:minecraft:planks>.add(<item:kubejs:mdf>);


# Glue
craftingTable.addShapeless("glue", <item:kubejs:glue>, [<tag:items:forge:slimeballs>, <tag:items:forge:slimeballs>, <item:minecraft:paper>]);
craftingTable.addShapeless("glue_honeycomb", <item:kubejs:glue>, [<item:minecraft:honeycomb>, <item:minecraft:honeycomb>, <item:minecraft:honeycomb>, <item:minecraft:honeycomb>, <item:minecraft:paper>]);


# Sawdust
// Clump
craftingTable.addShaped("sawdust_clump", <item:kubejs:sawdust_clump>,
    [[<item:thermal:sawdust>, <item:thermal:sawdust>],
    [<item:thermal:sawdust>, <item:thermal:sawdust>]]);

<recipetype:thermal:press>.addRecipe("press_sawdust", [<item:kubejs:sawdust_clump>], <fluid:minecraft:empty>, [<item:thermal:sawdust>*4, <item:thermal:press_packing_2x2_die>], 400);

<recipetype:thermal:press>.addRecipe("press_sawdust_clump", [<item:kubejs:compressed_sawdust>*2], <fluid:minecraft:empty>, [<item:kubejs:sawdust_clump>, <item:kubejs:sawdust_clump>], 400);

// Compressed
furnace.addRecipe("smelt_compressed_sawdust", <item:minecraft:charcoal>, <item:kubejs:compressed_sawdust>, 0, 200);

craftingTable.addShaped("sawdust_sticks", <item:minecraft:stick>*8,
    [[<item:kubejs:compressed_sawdust>],
    [<item:kubejs:compressed_sawdust>]]);

<recipetype:thermal:press>.addRecipe("uncraft_sawdust", [<item:kubejs:sawdust_clump>], <fluid:minecraft:empty>, [<item:kubejs:compressed_sawdust>, <item:thermal:press_unpacking_die>], 400);


# MDF Board
craftingTable.addShaped("mdf_board", <item:kubejs:mdf>,
    [[<item:thermal:sawdust>, <item:thermal:sawdust>, <item:thermal:sawdust>],
    [<item:thermal:sawdust>, <item:kubejs:glue>, <item:thermal:sawdust>],
    [<item:thermal:sawdust>, <item:thermal:sawdust>, <item:thermal:sawdust>]]);

craftingTable.addShaped("compressed_mdf_board", <item:kubejs:mdf>*4,
    [[<item:kubejs:compressed_sawdust>, <item:kubejs:glue>, <item:kubejs:compressed_sawdust>],
    [<item:kubejs:compressed_sawdust>, <item:kubejs:glue>, <item:kubejs:compressed_sawdust>]]);


print("3-kubejs.zs loaded");