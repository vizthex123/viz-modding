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

// Make chains cheaper

// Rose Gold decraft
craftingTable.addShapeless("rose_gold_fix", <item:tconstruct:rose_gold_ingot>*9, [<item:thermal:rose_gold_block>]);

// Myalite recipes
craftingTable.addShapeless("myalite", <item:quark:myalite>, [<item:byg:purple_bulbis_shell>, <item:byg:bulbis_shell>]);
craftingTable.addShapeless("dusky_myalite", <item:quark:dusky_myalite>, [<item:byg:purple_bulbis_shell>, <item:byg:purple_bulbis_shell>]);
craftingTable.addShapeless("myalite_crystal", <item:quark:myalite_crystal>, [<item:byg:purple_bulbis_shell>, <item:minecraft:chorus_fruit>]);


// Remove furnace recipes for BYG's Sand -> Glass
// Adds them to the Blast Furnace
// (And Induction Smelter after I can disable catalysts)
furnace.removeByName("byg:black_glass_from_sand");
furnace.removeByName("byg:white_glass_from_sand");
furnace.removeByName("byg:blue_glass_from_sand");
furnace.removeByName("byg:purple_glass_from_sand");
furnace.removeByName("byg:pink_glass_from_sand");

blastFurnace.addRecipe("red_glass", <item:minecraft:red_stained_glass>, <item:minecraft:red_sand>, 0.1, 200);
blastFurnace.addRecipe("black_glass", <item:minecraft:black_stained_glass>, <item:byg:black_sand>, 0.1, 200);
blastFurnace.addRecipe("white_glass", <item:minecraft:white_stained_glass>, <item:byg:white_sand>, 0.1, 200);
blastFurnace.addRecipe("blue_glass", <item:minecraft:blue_stained_glass>, <item:byg:blue_sand>, 0.1, 200);
blastFurnace.addRecipe("purple_glass", <item:minecraft:purple_stained_glass>, <item:byg:purple_sand>, 0.1, 200);
blastFurnace.addRecipe("pink_glass", <item:minecraft:pink_stained_glass>, <item:byg:pink_sand>, 0.1, 200);

// Add tag support to Mushroom & Rabbit Stew
craftingTable.remove(<item:minecraft:mushroom_stew>);
craftingTable.remove(<item:minecraft:rabbit_stew>);
craftingTable.addShapeless("mushroom_stew", <item:minecraft:mushroom_stew>, [<item:minecraft:bowl>, <tag:items:forge:mushrooms>, <tag:items:forge:mushrooms>]);

craftingTable.addShapeless("rabbit_stew", <item:minecraft:rabbit_stew>, [<item:minecraft:baked_potato>, <item:minecraft:cooked_rabbit>, <item:minecraft:bowl>, <item:minecraft:carrot>, <tag:items:forge:mushrooms>]);

// Make Nether Grout work with modded soul sands
craftingTable.remove(<item:tconstruct:nether_grout>);
craftingTable.addShapeless("nether_grout", <item:tconstruct:nether_grout>*2, [<tag:items:teoe:soul_sand>, <tag:items:forge:gravel>, <item:minecraft:magma_cream>]);

craftingTable.addShapeless("nether_grout_sludge", <item:tconstruct:nether_grout>, [<item:nourished_nether:soul_sludge>, <tag:items:forge:gravel>, <item:minecraft:magma_cream>|<item:minecraft:blaze_powder>]);

// Fix the Netherite Nuggets > Ingot recipe
craftingTable.removeByName("nourished_nether:netherite_nuggets_to_ingot");
craftingTable.removeByName("thermal:storage/netherite_ingot_from_nuggets");
craftingTable.removeByName("tconstruct:common/materials/netherite_ingot_from_nuggets");
craftingTable.addShaped("netherite_ingot", <item:minecraft:netherite_ingot>,
    [[<tag:items:forge:nuggets/netherite>, <tag:items:forge:nuggets/netherite>, <tag:items:forge:nuggets/netherite>],
    [<tag:items:forge:nuggets/netherite>, <tag:items:forge:nuggets/netherite>, <tag:items:forge:nuggets/netherite>],
    [<tag:items:forge:nuggets/netherite>, <tag:items:forge:nuggets/netherite>, <tag:items:forge:nuggets/netherite>]]);

// Fix the Sticky Multi-Piston not using tags
craftingTable.removeByName("essentials:multi_piston_sticky");
craftingTable.addShaped("sticky_multi_piston", <item:essentials:multi_piston_sticky>,
    [[<tag:items:forge:slimeballs>],
    [<item:essentials:multi_piston>]]);

// Make packing tape use tags
craftingTable.remove(<item:packingtape:tape>);
craftingTable.addShapeless("packing_tape", <item:packingtape:tape>, [<tag:items:forge:slimeballs>, <item:minecraft:string>, <item:minecraft:paper>]);

// Removes duplicate Fire Charge recipes
// Also adds tag support
craftingTable.remove(<item:minecraft:fire_charge>);
craftingTable.addShapeless("fire_charge", <item:minecraft:fire_charge>*3, [<tag:items:minecraft:coals>, <item:minecraft:blaze_powder>, <item:minecraft:gunpowder>]);

// Fixes chests not being craftable with modded planks & logs
craftingTable.addShaped("chest", <item:minecraft:chest>,
    [[<tag:items:teoe:planks>, <tag:items:teoe:planks>, <tag:items:teoe:planks>],
    [<tag:items:teoe:planks>, <item:minecraft:air>, <tag:items:teoe:planks>],
    [<tag:items:teoe:planks>, <tag:items:teoe:planks>, <tag:items:teoe:planks>]]);

craftingTable.addShaped("chest_logs", <item:minecraft:chest>*4,
    [[<tag:items:teoe:logs>, <tag:items:teoe:logs>, <tag:items:teoe:logs>],
    [<tag:items:teoe:logs>, <item:minecraft:air>, <tag:items:teoe:logs>],
    [<tag:items:teoe:logs>, <tag:items:teoe:logs>, <tag:items:teoe:logs>]]);

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