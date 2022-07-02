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
*/

# Tags
<tag:items:minecraft:planks>.add(<item:kubejs:mdf>);
<tag:items:twilightforest:portal/activator>.add(<item:kubejs:portal_catalyst>);


# Lime
<recipetype:create:crushing>.addRecipe("crush_limestone", [<item:kubejs:lime> % 100], <item:create:limestone>|<item:quark:limestone>, 5);

<recipetype:thermal:pulverizer>.addRecipe("pulverize_limestone", [<item:kubejs:lime> % 50], <item:create:limestone>|<item:quark:limestone>, 0.0, 4000);

# Glue
craftingTable.addShapeless("glue", <item:kubejs:glue>, [<tag:items:forge:slimeballs>, <tag:items:forge:slimeballs>, <item:minecraft:paper>]);
craftingTable.addShapeless("glue_sus", <item:kubejs:glue>, [<item:food_enhancements:suspicious_substance>, <item:minecraft:paper>]);

# Super Glue (Create)
craftingTable.addShapeless("super_glue", <item:create:super_glue>, [<item:kubejs:glue>, <tag:items:forge:plates/iron>]);

# Compressed Sawdust
<recipetype:create:pressing>.addRecipe("press_compressed_sawdust", [<item:kubejs:compressed_sawdust> % 100], <item:thermal:sawdust>*4, 2);

<recipetype:thermal:press>.addRecipe("multipress_compressed_sawdust", [<item:kubejs:compressed_sawdust> % 100], <fluid:minecraft:empty>, [<item:thermal:sawdust>*4, <item:thermal:press_packing_2x2_die>], 1000);

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