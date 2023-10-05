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

// Fix the Smoker having 3 recipes (quark moment)
craftingTable.remove(<item:minecraft:smoker>);
craftingTable.addShaped("smoker", <item:minecraft:smoker>,
    [[<item:minecraft:air>, <tag:items:minecraft:logs>, <item:minecraft:air>],
    [<tag:items:minecraft:logs>, <tag:items:cie:furnace>, <tag:items:minecraft:logs>],
    [<item:minecraft:air>, <tag:items:minecraft:logs>, <item:minecraft:air>]]);

// Gilded Netherite conversion
// BYN Gilded Netherite stats match AA's ones
smithing.removeByName("bygonenether:smithing/gilded_netherite_helmet_smithing");
smithing.removeByName("bygonenether:smithing/gilded_netherite_chestplate_smithing");
smithing.removeByName("bygonenether:smithing/gilded_netherite_leggings_smithing");
smithing.removeByName("bygonenether:smithing/gilded_netherite_boots_smithing");

smithing.addRecipe("gilded_netherite_helmet_conversion", <item:bygonenether:gilded_netherite_helmet>, <item:additionaladditions:gilded_netherite_helmet>, <item:minecraft:gold_ingot>);
smithing.addRecipe("gilded_netherite_chestplate_conversion", <item:bygonenether:gilded_netherite_chestplate>, <item:additionaladditions:gilded_netherite_chestplate>, <item:minecraft:gold_ingot>);
smithing.addRecipe("gilded_netherite_leggings_conversion", <item:bygonenether:gilded_netherite_leggings>, <item:additionaladditions:gilded_netherite_leggings>, <item:minecraft:gold_ingot>);
smithing.addRecipe("gilded_netherite_boots_conversion", <item:bygonenether:gilded_netherite_boots>, <item:additionaladditions:gilded_netherite_boots>, <item:minecraft:gold_ingot>);

print("fixes.zs loaded");