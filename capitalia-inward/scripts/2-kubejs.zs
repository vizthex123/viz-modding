# Adds recipes to my custom KubeJS items
# Dossiers are in research.zs

print("2-kubejs.zs loading...");

/*
furnace.addRecipe("recipeName", <output>, <input>, xp, cooktime-10s default);

craftingTable.addShapeless("recipeName", <output>, [<inputs>]);

craftingTable.addShaped("recipeName", <output>, 
    [[<input>, <input>, <input>],
    [<input>, <input>, <input>],
    [<input>, <input>, <input>]]);

craftingTable.removeByName("recipeName");
*/

# Tags
<tag:items:minecraft:planks>.add(<item:kubejs:mdf>);

# Sales Token
craftingTable.addShapeless("sales_token", <item:kubejs:seller>, [<tag:items:lightmanscurrency:coin>, <tag:items:lightmanscurrency:coin>, <tag:items:lightmanscurrency:coin>, <tag:items:lightmanscurrency:coin>]);
craftingTable.addShapeless("sales_token_deco", <item:kubejs:seller>, [<tag:items:cie:coin>, <tag:items:cie:coin>]);

val aqua = "\u00A7b";

<item:kubejs:seller>.addTooltip(aqua +  "Used to convert items into Coins");



### Sawdust Stuff ###

# Glue
craftingTable.addShapeless("glue", <item:kubejs:glue>, [<tag:items:forge:slimeballs>, <tag:items:forge:slimeballs>, <item:minecraft:paper>]);
craftingTable.addShapeless("glue_sus", <item:kubejs:glue>, [<item:food_enhancements:suspicious_substance>, <item:minecraft:paper>]);
craftingTable.addShapeless("glue_honeycomb", <item:kubejs:glue>, [<item:minecraft:honeycomb>, <item:minecraft:honeycomb>, <item:minecraft:honeycomb>, <item:minecraft:honeycomb>, <item:minecraft:paper>]);

// Super Glue (Create)
craftingTable.addShapeless("super_glue", <item:create:super_glue>, [<item:kubejs:glue>, <item:kubejs:glue>, <tag:items:forge:plates/iron>]);


# Sawdust
// Clump
craftingTable.addShaped("sawdust_clump", <item:kubejs:sawdust_clump>,
    [[<item:kubejs:sawdust>, <item:kubejs:sawdust>],
    [<item:kubejs:sawdust>, <item:kubejs:sawdust>]]);

// Compressed
furnace.addRecipe("smelt_compressed_sawdust", <item:minecraft:charcoal>, <item:kubejs:compressed_sawdust>, 0, 200);

craftingTable.addShaped("sawdust_sticks", <item:minecraft:stick>*8,
    [[<item:kubejs:compressed_sawdust>],
    [<item:kubejs:compressed_sawdust>]]);
/*
// Compressed Clumps
<recipetype:create:pressing>.addRecipe("press_sawdust_clump", [<item:kubejs:compressed_sawdust>], <item:kubejs:sawdust_clump>, 1);
*/

# MDF Board
craftingTable.addShaped("mdf_board", <item:kubejs:mdf>,
    [[<item:kubejs:sawdust>, <item:kubejs:sawdust>, <item:kubejs:sawdust>],
    [<item:kubejs:sawdust>, <item:kubejs:glue>, <item:kubejs:sawdust>],
    [<item:kubejs:sawdust>, <item:kubejs:sawdust>, <item:kubejs:sawdust>]]);

craftingTable.addShaped("compressed_mdf_board", <item:kubejs:mdf>*4,
    [[<item:kubejs:compressed_sawdust>, <item:kubejs:glue>, <item:kubejs:compressed_sawdust>],
    [<item:kubejs:compressed_sawdust>, <item:kubejs:glue>, <item:kubejs:compressed_sawdust>]]);


print("2-kubejs.zs loaded");