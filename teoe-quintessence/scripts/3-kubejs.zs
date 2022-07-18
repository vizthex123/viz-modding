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
<tag:items:create:crushed_ores>.add(<item:kubejs:crushed_cobalt>);
<tag:items:create:crushed_ores>.add(<item:kubejs:crushed_pendorite>);
<tag:items:create:crushed_ores>.add(<item:kubejs:crushed_platinum>);
<tag:items:twilightforest:portal/activator>.add(<item:kubejs:portal_catalyst>);


# Crushed Ores
# Recipes to make them are in create.zs
blastFurnace.addRecipe("blast_crushed_cobalt", <item:tconstruct:cobalt_ingot>, <item:kubejs:crushed_cobalt>, 1.5, 200);
blastFurnace.addRecipe("blast_crushed_pendorite", <item:byg:pendorite_scraps>, <item:kubejs:crushed_pendorite>, 0.45, 140);
blastFurnace.addRecipe("blast_crushed_platinum", <item:ob_core:platinum_ingot>, <item:kubejs:crushed_platinum>, 1.5, 400);


# Lime
<recipetype:thermal:pulverizer>.addRecipe("pulverize_limestone", [<item:kubejs:lime> % 50], <tag:items:forge:limestone>, 0.0, 4000);
<recipetype:create:crushing>.addRecipe("crush_limestone", [<item:kubejs:lime> % 50], <tag:items:forge:limestone>, 5);

<recipetype:thermal:pulverizer>.addRecipe("pulverize_travertine", [<item:kubejs:lime>], <item:byg:travertine>, 0.0, 4000);
<recipetype:create:crushing>.addRecipe("crush_travertine", [<item:kubejs:lime>], <item:byg:travertine>, 5);


# Glue
craftingTable.addShapeless("glue", <item:kubejs:glue>, [<tag:items:forge:slimeballs>, <tag:items:forge:slimeballs>, <item:minecraft:paper>]);
craftingTable.addShapeless("glue_sus", <item:kubejs:glue>, [<item:food_enhancements:suspicious_substance>, <item:minecraft:paper>]);
craftingTable.addShapeless("glue_honeycomb", <item:kubejs:glue>, [<item:minecraft:honeycomb>, <item:minecraft:honeycomb>, <item:minecraft:honeycomb>, <item:minecraft:honeycomb>, <item:minecraft:paper>]);

// Super Glue (Create)
craftingTable.addShapeless("super_glue", <item:create:super_glue>, [<item:kubejs:glue>, <item:kubejs:glue>, <tag:items:forge:plates/iron>]);

# Sawdust
// Clump
craftingTable.addShaped("sawdust_clump", <item:kubejs:sawdust_clump>,
    [[<item:thermal:sawdust>, <item:thermal:sawdust>],
    [<item:thermal:sawdust>, <item:thermal:sawdust>]]);

<recipetype:thermal:press>.addRecipe("press_sawdust", [<item:kubejs:sawdust_clump>], <fluid:minecraft:empty>, [<item:thermal:sawdust>*4, <item:thermal:press_packing_2x2_die>], 400);

// Compressed
furnace.addRecipe("smelt_compressed_sawdust", <item:minecraft:charcoal>, <item:kubejs:compressed_sawdust>, 0, 200);

craftingTable.addShaped("sawdust_sticks", <item:minecraft:stick>*8,
    [[<item:kubejs:compressed_sawdust>],
    [<item:kubejs:compressed_sawdust>]]);

<recipetype:thermal:press>.addRecipe("uncraft_sawdust", [<item:kubejs:sawdust_clump>], <fluid:minecraft:empty>, [<item:kubejs:compressed_sawdust>, <item:thermal:press_unpacking_die>], 400);

// Compressed Clumps
<recipetype:thermal:press>.addRecipe("multipress_sawdust_clump", [<item:kubejs:compressed_sawdust>*2], <fluid:minecraft:empty>, [<item:kubejs:sawdust_clump>, <item:kubejs:sawdust_clump>], 1000);

<recipetype:create:pressing>.addRecipe("press_sawdust_clump", [<item:kubejs:compressed_sawdust>], <item:kubejs:sawdust_clump>, 1);



# MDF Board
craftingTable.addShaped("mdf_board", <item:kubejs:mdf>,
    [[<item:thermal:sawdust>, <item:thermal:sawdust>, <item:thermal:sawdust>],
    [<item:thermal:sawdust>, <item:kubejs:glue>, <item:thermal:sawdust>],
    [<item:thermal:sawdust>, <item:thermal:sawdust>, <item:thermal:sawdust>]]);

craftingTable.addShaped("compressed_mdf_board", <item:kubejs:mdf>*4,
    [[<item:kubejs:compressed_sawdust>, <item:kubejs:glue>, <item:kubejs:compressed_sawdust>],
    [<item:kubejs:compressed_sawdust>, <item:kubejs:glue>, <item:kubejs:compressed_sawdust>]]);


# Iridium Fuel Cell
<recipetype:create:mechanical_crafting>.addRecipe("iridium_fuel_cell", <item:kubejs:iridium_cell>,
[[<item:minecraft:air>, <tag:items:forge:plates/lead>, <item:minecraft:air>],
[<tag:items:forge:plates/lead>, <item:kubejs:iridium>, <tag:items:forge:plates/lead>],
[<item:minecraft:air>, <tag:items:forge:plates/lead>, <item:minecraft:air>]]);

// Sequenced Version
/* Sequence:
1) Deploy Lead Plate
2) Press Lead Plate
3) Press the entire thing
*/
/*
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("iridium_cell_sequence")
                                                      .transitionTo(<item:kubejs:iridium_cell>)
                                                      .require(<item:kubejs:iridium>)
                                                      .addOutput(<item:kubejs:iridium_cell>, 100)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:plates/lead>))
                                                      .addStep<mods.createtweaker.PressRecipe>(((rb) => rb.require(<tag:items:forge:plates/lead>))
                                                      .addStep<mods.createtweaker.PressRecipe>());
*/

# Portal Catalyst
<recipetype:create:mechanical_crafting>.addRecipe("portal_catalyst", <item:kubejs:portal_catalyst>,
[[<item:thermal:steel_ingot>|<item:tconstruct:hepatizon_ingot>, <item:minecraft:diamond>, <item:thermal:steel_ingot>|<item:tconstruct:hepatizon_ingot>]]);

print("3-kubejs.zs loaded");