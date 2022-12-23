# Fixes various recipes - either because they're broken, or have several duplicates

import crafttweaker.api.tag.MCTag;

print("fixes.zs loading...");

/*
craftingTable.addShapeless("name", <item:output>, [<item>]);
craftingTable.addShaped("name", <item:output>,
    [[<item>, <item>, <item>],
    [<item>, <item>, <item>],
    [<item>, <item>, <item>]]);
craftingTable.remove(<item>);
craftingTable.removeByName("name");
*/

# TODO: Fix Brass giving too much, nerf Blue Power or buff Create

// Fixes chests not being craftable with modded planks
craftingTable.addShaped("chest", <item:minecraft:chest>,
    [[<tag:items:cie:planks>, <tag:items:cie:planks>, <tag:items:cie:planks>],
    [<tag:items:cie:planks>, <item:minecraft:air>, <tag:items:cie:planks>],
    [<tag:items:cie:planks>, <tag:items:cie:planks>, <tag:items:cie:planks>]]);

// Fix the Blast Furnace having 4 recipes (quark moment)
craftingTable.remove(<item:minecraft:blast_furnace>);
craftingTable.addShaped("blast_furnace", <item:minecraft:blast_furnace>,
    [[<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <tag:items:cie:furnace>, <item:minecraft:iron_ingot>],
    [<item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>]]);

// Fix the Smoker having 3 recipes (quark moment)
craftingTable.remove(<item:minecraft:smoker>);
craftingTable.addShaped("smoker", <item:minecraft:smoker>,
    [[<item:minecraft:air>, <tag:items:minecraft:logs>, <item:minecraft:air>],
    [<tag:items:minecraft:logs>, <tag:items:cie:furnace>, <tag:items:minecraft:logs>],
    [<item:minecraft:air>, <tag:items:minecraft:logs>, <item:minecraft:air>]]);

print("fixes.zs loaded");