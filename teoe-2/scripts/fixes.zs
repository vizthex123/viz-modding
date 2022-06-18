# Fixes various recipes - either because they're broken, or have several duplicates

import crafttweaker.api.tag.MCTag;

print("fixes.zs loading...");

/*
craftingTable.addShapeless("name", <item:output>, [<item>]);
craftingTable.addShaped("name", <item:output>,
    [[<item>, <item>, <item>],
    [<item>, <item>, <item>],
    [<item>, <item, <item>]]);
craftingTable.remove(<item>);
craftingTable.removeByName("name");
*/

// Fixes chests not being craftable with modded planks
craftingTable.addShaped("chest", <item:minecraft:chest>,
    [[<tag:items:teoe:planks>, <tag:items:teoe:planks>, <tag:items:teoe:planks>],
    [<tag:items:teoe:planks>, <item:minecraft:air>, <tag:items:teoe:planks>],
    [<tag:items:teoe:planks>, <tag:items:teoe:planks>, <tag:items:teoe:planks>]]);

// Fix the Blast Furnace having 4 recipes (quark moment)
craftingTable.remove(<item:minecraft:blast_furnace>);
craftingTable.addShaped("blast_furnace", <item:minecraft:blast_furnace>,
    [[<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <tag:items:teoe:furnace>, <item:minecraft:iron_ingot>],
    [<item:minecraft:smooth_stone>|<item:minecraft:smooth_basalt>, <item:minecraft:smooth_stone>|<item:minecraft:smooth_basalt>, <item:minecraft:smooth_stone>|<item:minecraft:smooth_basalt>]]);

// Fix the Smoker having 3 recipes (quark moment)
craftingTable.remove(<item:minecraft:smoker>);
craftingTable.addShaped("smoker", <item:minecraft:smoker>,
    [[<item:minecraft:air>, <tag:items:minecraft:logs>, <item:minecraft:air>],
    [<tag:items:minecraft:logs>, <tag:items:teoe:furnace>, <tag:items:minecraft:logs>],
    [<item:minecraft:air>, <tag:items:minecraft:logs>, <item:minecraft:air>]]);

print("fixes.zs loaded");