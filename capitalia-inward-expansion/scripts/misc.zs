# Adds recipes that don't belong anywhere else

print("misc.zs loading...");

/*
furnace.addRecipe("recipeName", <output>, <input>, xp, cooktime-10s default);

craftingTable.addShapeless("recipeName", <output>, [<inputs>]);

craftingTable.addShaped("recipeName", <output>, 
    [[<input>, <input>, <input>],
    [<input>, <input>, <input>],
    [<input>, <input>, <input>]]);

craftingTable.removeByName("recipeName");
craftingTable.remove(<item>);

smithing.addRecipe("recipe_name", <output>, <item>, <item2>);

smithing.removeByName("name");
*/

val empty = <item:minecraft:air>;

val stick = <tag:items:forge:rods/wooden>;
val planks = <tag:items:minecraft:planks>;

val iron = <item:minecraft:iron_ingot>;
val nugget = <tag:items:forge:nuggets/iron>;

val leather = <tag:items:cie:binding>;

// Compost Ash
composter.setValue(<item:nourished_nether:ash_lump>, 0.5);

// Adds tag support to the Bedroll
craftingTable.remove(<item:upgrade_aquatic:bedroll>);
craftingTable.addShaped("bedroll", <item:upgrade_aquatic:bedroll>, 
    [[leather, leather, <tag:items:minecraft:wool>],
    [leather, leather, leather]]);

// Makes the Tape Measure an upgrade to the Abacus
craftingTable.remove(<item:measurements:tape_measure>);
craftingTable.addShaped("tape_measure", <item:measurements:tape_measure>, 
    [[<item:extendedcrafting:black_iron_ingot>, <item:minecraft:black_dye>, empty],
    [<item:minecraft:black_dye>, <item:quark:abacus>, <item:minecraft:yellow_dye>],
    [empty, empty, <item:minecraft:yellow_dye>]]);

// Make Packing Tape use Glue
craftingTable.remove(<item:packingtape:tape>);
craftingTable.addShapeless("packing_tape", <item:packingtape:tape>, [<item:kubejs:glue>, <tag:items:forge:string>, <tag:items:cie:binding>]);

 // Wooden Hopper cheaper and upgrade
craftingTable.remove(<item:woodenhopper:wooden_hopper>);
craftingTable.addShaped("wooden_hopper", <item:woodenhopper:wooden_hopper>, 
    [[planks, empty, planks],
    [planks, empty, planks],
    [empty, planks, empty]]);

craftingTable.addShaped("wooden_hopper_upgrade", <item:minecraft:hopper>, 
    [[iron, empty, iron],
    [iron, <item:woodenhopper:wooden_hopper>, iron],
    [empty, iron, empty]]);

// Makes Iron Nuggets -> Ingots use tags
craftingTable.removeByName("minecraft:iron_ingot_from_nuggets");
craftingTable.addShaped("iron_nuggets_to_ingot", iron, 
    [[nugget, nugget, nugget],
    [nugget, nugget, nugget],
    [nugget, nugget, nugget]]);

// Make Books use my custom tags
craftingTable.remove(<item:minecraft:book>);
craftingTable.addShapeless("book", <item:minecraft:book>, [<tag:items:cie:paper>, <tag:items:cie:paper>, <tag:items:cie:paper>, <tag:items:cie:binding>]);

// Cheaper Beetroot Soup
craftingTable.remove(<item:minecraft:beetroot_soup>);
craftingTable.addShapeless("beetroot_soup", <item:minecraft:beetroot_soup>, [<item:minecraft:bowl>, <item:minecraft:beetroot>, <item:minecraft:beetroot>, <item:minecraft:beetroot>]);

# Makes Mushroom and Rabbit Stew use tags
craftingTable.remove(<item:minecraft:rabbit_stew>);
craftingTable.remove(<item:minecraft:mushroom_stew>);

craftingTable.addShapeless("rabbit_stew", <item:minecraft:rabbit_stew>, [<item:minecraft:cooked_rabbit>, <item:minecraft:baked_potato>, <item:minecraft:carrot>, <item:minecraft:bowl>, <tag:items:forge:mushrooms>]);
craftingTable.addShapeless("mushroom_stew", <item:minecraft:mushroom_stew>, [<item:minecraft:bowl>, <tag:items:forge:mushrooms>, <tag:items:forge:mushrooms>]);

// Cheaper Abacus
craftingTable.remove(<item:quark:abacus>);
craftingTable.addShaped("abacus", <item:quark:abacus>, 
    [[planks, stick, planks],
    [planks, <tag:items:forge:nuggets/zinc>, planks],
    [planks, stick, planks]]);

// Make Additional Additions' recipe for the Trident use Prismarine Rods
// Also integrates a Thraser Tooth from Upgrade Aquatic's recipe
craftingTable.remove(<item:minecraft:trident>);
craftingTable.addShaped("trident", <item:minecraft:trident>, 
    [[empty, <item:additionaladditions:trident_shard>, <item:upgrade_aquatic:thrasher_tooth>],
    [empty, <item:upgrade_aquatic:prismarine_rod>, <item:additionaladditions:trident_shard>],
    [<item:upgrade_aquatic:prismarine_rod>, empty, empty]]);

// Change the campfire Fried Egg to a Boiled Egg
campfire.removeByName("additionaladditions:fried_egg_from_campfire_cooking");
campfire.addRecipe("campfire_boiled_egg", <item:food_enhancements:boiled_egg>, <item:minecraft:egg>, 0.1, 6000);

// Smelt Modded Bones into Gelatin
// Fish Bones take 50% longer
// Sculk Bones take twice as long
campfire.addRecipe("campfire_gelatin_fish_bones", <item:food_enhancements:gelatin>, <item:aquamirae:sharp_bones>|<item:food_enhancements:fish_bones>, 0.25, 600);
furnace.addRecipe("smelt_gelatin_fish_bones", <item:food_enhancements:gelatin>, <item:aquamirae:sharp_bones>|<item:food_enhancements:fish_bones>, 0.25, 300);
smoker.addRecipe("smoke_gelatin_fish_bones", <item:food_enhancements:gelatin>, <item:aquamirae:sharp_bones>|<item:food_enhancements:fish_bones>, 0.25, 150);

 campfire.addRecipe("campfire_gelatin_sculk_bones", <item:food_enhancements:gelatin>*3, <item:deep_dark_regrowth:sculk_bone>, 0.5, 1200);
furnace.addRecipe("smelt_gelatin_sculk_bones", <item:food_enhancements:gelatin>*3, <item:deep_dark_regrowth:sculk_bone>, 0.5, 600);
smoker.addRecipe("smoke_gelatin_sculk_bones", <item:food_enhancements:gelatin>*3, <item:deep_dark_regrowth:sculk_bone>, 0.5, 300);

print("misc.zs loaded");