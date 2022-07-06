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
<tag:items:create:crushed_ores>.add(<item:kubejs:crushed_platinum>);
<tag:items:twilightforest:portal/activator>.add(<item:kubejs:portal_catalyst>);

# Crushed Platinum
blastFurnace.addRecipe("smelt_crushed_platinum", <item:ob_core:platinum_ingot>, <item:kubejs:crushed_platinum>, 1.5, 200);

# Lime
<recipetype:create:crushing>.addRecipe("crush_limestone", [<item:kubejs:lime> % 100], <item:create:limestone>|<item:quark:limestone>, 5);

<recipetype:thermal:pulverizer>.addRecipe("pulverize_limestone", [<item:kubejs:lime> % 50], <item:create:limestone>|<item:quark:limestone>, 0.0, 4000);

# Glue
craftingTable.addShapeless("glue", <item:kubejs:glue>, [<tag:items:forge:slimeballs>, <tag:items:forge:slimeballs>, <item:minecraft:paper>]);
craftingTable.addShapeless("glue_sus", <item:kubejs:glue>, [<item:food_enhancements:suspicious_substance>, <item:minecraft:paper>]);

# Super Glue (Create)
craftingTable.addShapeless("super_glue", <item:create:super_glue>, [<item:kubejs:glue>, <tag:items:forge:plates/iron>]);

# Compressed Sawdust & Sawdust Clump
craftingTable.addShaped("sawdust_clump", <item:kubejs:sawdust_clump>,
    [[<item:thermal:sawdust>, <item:thermal:sawdust>],
    [<item:thermal:sawdust>, <item:thermal:sawdust>]]);

<recipetype:create:pressing>.addRecipe("press_sawdust_clump", [<item:kubejs:compressed_sawdust> % 100], <item:kubejs:sawdust_clump>, 2);

<recipetype:thermal:press>.addRecipe("multipress_sawdust_clump", [<item:kubejs:compressed_sawdust> % 100], <fluid:minecraft:empty>, [<item:kubejs:sawdust_clump>, <item:minecraft:air>], 1000);

furnace.addRecipe("smelt_charcoal", <item:minecraft:charcoal>, <item:kubejs:compressed_sawdust>, 0, 200);

craftingTable.addShaped("sawdust_stick", <item:minecraft:stick>*4,
    [[<item:kubejs:compressed_sawdust>],
    [<item:kubejs:compressed_sawdust>],
    [<item:kubejs:compressed_sawdust>]]);

# MDF Board
craftingTable.addShaped("mdf_board", <item:kubejs:mdf>,
    [[<item:thermal:sawdust>, <item:thermal:sawdust>, <item:thermal:sawdust>],
    [<item:thermal:sawdust>, <item:kubejs:glue>, <item:thermal:sawdust>],
    [<item:thermal:sawdust>, <item:thermal:sawdust>, <item:thermal:sawdust>]]);

craftingTable.addShaped("compressed_mdf_board", <item:kubejs:mdf>*4,
    [[<item:kubejs:compressed_sawdust>, <item:kubejs:glue>, <item:kubejs:compressed_sawdust>],
    [<item:kubejs:compressed_sawdust>, <item:kubejs:glue>, <item:kubejs:compressed_sawdust>]]);

# Portal Catalyst
mods.extendedcrafting.TableCrafting.addShaped("portal_catalyst", 1, <item:kubejs:portal_catalyst>,
	[[<item:thermal:steel_ingot>|<item:tconstruct:hepatizon_ingot>, <item:minecraft:diamond>, <item:thermal:steel_ingot>|<item:tconstruct:hepatizon_ingot>]]);

print("3-kubejs.zs loaded");