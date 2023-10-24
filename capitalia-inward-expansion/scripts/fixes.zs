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

val empty = <item:minecraft:air>;

val gold = <item:minecraft:gold_ingot>;
val iron = <item:minecraft:iron_ingot>; 

// Decraft Soul Steel Blocks
craftingTable.addShapeless("decraft_soul_steel_block", <item:spirit:soul_steel_ingot>*9, [<item:spirit:soul_steel_block>]);

// Make Nether Fungus Stew use either one
craftingTable.remove(<item:nourished_nether:nether_fungus_stew>);
craftingTable.addShapeless("nether_fungus_stew", <item:nourished_nether:nether_fungus_stew>, [<item:minecraft:crimson_fungus>|<item:minecraft:warped_fungus>, <item:minecraft:crimson_fungus>|<item:minecraft:warped_fungus>, <item:minecraft:bowl>]);

// Make Suspicious Stew use tags
craftingTable.remove(<item:minecraft:suspicious_stew>);
craftingTable.addShapeless("suspicious_stew", <item:minecraft:suspicious_stew>, [<tag:items:forge:mushrooms>, <tag:items:forge:mushrooms>, <item:minecraft:bowl>, <tag:items:minecraft:flowers>]);

// Silver Nuggets -> Ingot
craftingTable.addShaped("silver_ingot", <item:bluepower:silver_ingot>,
    [[<tag:items:forge:nuggets/silver>, <tag:items:forge:nuggets/silver>, <tag:items:forge:nuggets/silver>],
    [<tag:items:forge:nuggets/silver>, <tag:items:forge:nuggets/silver>, <tag:items:forge:nuggets/silver>],
    [<tag:items:forge:nuggets/silver>, <tag:items:forge:nuggets/silver>, <tag:items:forge:nuggets/silver>]]);

// Fixes the removal of Ectos yet remains of Ectoplasm
val ectoplasm = <tag:items:cie:ectoplasm>;

craftingTable.remove(<item:nourished_nether:polterpork>);
craftingTable.addShapeless("polterpork", <item:nourished_nether:polterpork>, [<item:nourished_nether:soul_weeds>, <item:nourished_nether:soul_weeds>, <item:nourished_nether:soul_weeds>, <item:nourished_nether:cooked_hoglin>, ectoplasm]);

craftingTable.remove(<item:nourished_nether:ectoplasm_block>);
craftingTable.addShaped("ectoplasm_block", <item:nourished_nether:ectoplasm_block>,
    [[ectoplasm, ectoplasm, ectoplasm],
    [ectoplasm, ectoplasm, ectoplasm],
    [ectoplasm, ectoplasm, ectoplasm]]);
	
// Fix the Blast Furnace having 4 recipes (quark moment)
craftingTable.remove(<item:minecraft:blast_furnace>);
craftingTable.addShaped("blast_furnace", <item:minecraft:blast_furnace>,
    [[iron, iron, iron],
    [iron, <tag:items:cie:furnace>, iron],
    [<item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>]]);

// Fix the Smoker having 3 recipes (quark moment)
craftingTable.remove(<item:minecraft:smoker>);
craftingTable.addShaped("smoker", <item:minecraft:smoker>,
    [[empty, <tag:items:minecraft:logs>, empty],
    [<tag:items:minecraft:logs>, <tag:items:cie:furnace>, <tag:items:minecraft:logs>],
    [empty, <tag:items:minecraft:logs>, empty]]);

// Gilded Netherite conversion
// BYN Gilded Netherite stats match AA's ones
smithing.removeByName("bygonenether:smithing/gilded_netherite_helmet_smithing");
smithing.removeByName("bygonenether:smithing/gilded_netherite_chestplate_smithing");
smithing.removeByName("bygonenether:smithing/gilded_netherite_leggings_smithing");
smithing.removeByName("bygonenether:smithing/gilded_netherite_boots_smithing");

smithing.addRecipe("gilded_netherite_helmet_conversion", <item:bygonenether:gilded_netherite_helmet>, <item:additionaladditions:gilded_netherite_helmet>, gold);
smithing.addRecipe("gilded_netherite_chestplate_conversion", <item:bygonenether:gilded_netherite_chestplate>, <item:additionaladditions:gilded_netherite_chestplate>, gold);
smithing.addRecipe("gilded_netherite_leggings_conversion", <item:bygonenether:gilded_netherite_leggings>, <item:additionaladditions:gilded_netherite_leggings>, gold);
smithing.addRecipe("gilded_netherite_boots_conversion", <item:bygonenether:gilded_netherite_boots>, <item:additionaladditions:gilded_netherite_boots>, gold);

print("fixes.zs loaded");