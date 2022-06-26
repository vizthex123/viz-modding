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
<tag:items:twilightforest:portal/activator>.add(<item:kubejs:portal_catalyst>);
<tag:items:minecraft:planks>.add(<item:kubejs:mdf>);

# Lime
<recipetype:create:crushing>.addRecipe("crush_limestone", [<item:kubejs:lime> % 100], <item:create:limestone>|<item:quark:limestone>);

<recipetype:thermal:pulverizer>.addRecipe("pulverize_limestone", [<item:kubejs:lime> % 50], <item:create:limestone>|<item:quark:limestone>, 0.0, 4000);

# Glue
craftingTable.addShapeless("glue", <item:kubejs:glue>, [<tag:items:forge:slimeballs>, <tag:items:forge:slimeballs>, <item:minecraft:paper>]);

# Super Glue (Create)
craftingTable.addShapeless("super_glue", <item:create:super_glue>, [<item:kubejs:glue>, <tag:items:forge:plates/iron>]);

# MDF Board
craftingTable.addShaped("mdf_board", <item:kubejs:mdf>,
    [[<item:thermal:sawdust>, <item:thermal:sawdust>, <item:thermal:sawdust>],
    [<item:thermal:sawdust>, <item:kubejs:glue>, <item:thermal:sawdust>],
    [<item:thermal:sawdust>, <item:thermal:sawdust>, <item:thermal:sawdust>]]);

# Portal Catalyst
mods.extendedcrafting.TableCrafting.addShaped("portal_catalyst", 1, <item:kubejs:portal_catalyst>,
	[[<item:thermal:steel_ingot>|<item:tconstruct:hepatizon_ingot>, <item:minecraft:diamond>, <item:thermal:steel_ingot>|<item:tconstruct:hepatizon_ingot>]]);

print("3-kubejs.zs loaded");