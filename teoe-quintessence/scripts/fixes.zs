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

// Fix the Sticky Multi-Piston not using tags
craftingTable.removeByName("essentials:multi_piston_sticky");
craftingTable.addShapeless("sticky_multi_piston", <item:essentials:multi_piston_sticky>, [<item:essentials:multi_piston>, <tag:items:forge:slimeballs>]);

// Fix the repeater recipes not using tags
craftingTable.remove(<item:minecraft:repeater>);
craftingTable.addShaped("repeater", <item:minecraft:repeater>,
    [[<item:minecraft:redstone_torch>, <item:minecraft:redstone>, <item:minecraft:redstone_torch>],
    [<tag:items:forge:stone>, <tag:items:forge:stone>, <tag:items:forge:stone>]]);

craftingTable.addShaped("repeater_quark", <item:minecraft:repeater>,
    [[<item:minecraft:redstone>, <item:minecraft:air>, <item:minecraft:redstone>],
    [<tag:items:balm:wooden_rods>, <item:minecraft:redstone>, <tag:items:balm:wooden_rods>],
    [<tag:items:forge:stone>, <tag:items:forge:stone>, <tag:items:forge:stone>]]);

// Fix the duplicate packing tape recipe
craftingTable.remove(<item:packingtape:tape>);
craftingTable.addShapeless("packing_tape", <item:packingtape:tape>, [<tag:items:forge:slimeballs>, <item:minecraft:string>, <item:minecraft:paper>]);

// Duplicate Fire Charge recipe
craftingTable.remove(<item:minecraft:fire_charge>);
craftingTable.addShapeless("fire_charge", <item:minecraft:fire_charge>*3, [<item:minecraft:gunpowder>, <item:minecraft:blaze_powder>, <tag:items:minecraft:coals>]);

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

// Fixes Copper having like 4 recipes when it just needs 2
craftingTable.remove(<item:minecraft:copper_ingot>);
craftingTable.addShapeless("uncraft_copper_block", <item:minecraft:copper_ingot>*9, [<item:minecraft:waxed_copper_block>|<item:minecraft:copper_block>]);

craftingTable.addShaped("copper_ingot", <item:minecraft:copper_ingot>,
    [[<tag:items:forge:nuggets/copper>, <tag:items:forge:nuggets/copper>, <tag:items:forge:nuggets/copper>],
    [<tag:items:forge:nuggets/copper>, <tag:items:forge:nuggets/copper>, <tag:items:forge:nuggets/copper>],
    [<tag:items:forge:nuggets/copper>, <tag:items:forge:nuggets/copper>, <tag:items:forge:nuggets/copper>]]);

print("fixes.zs loaded");