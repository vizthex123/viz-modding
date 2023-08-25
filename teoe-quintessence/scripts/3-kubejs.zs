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
blastFurnace.addRecipe("blast_crushed_cobalt", <item:tconstruct:cobalt_ingot>, <item:kubejs:crushed_cobalt>, 1.5, 100);
blastFurnace.addRecipe("blast_crushed_platinum", <item:ob_core:platinum_ingot>, <item:kubejs:crushed_platinum>, 2.0, 100);
blastFurnace.addRecipe("blast_crushed_pendorite", <item:byg:pendorite_scraps>, <item:kubejs:crushed_pendorite>, 0.45, 100);

<recipetype:thermal:furnace>.addRecipe("redstone_crushed_cobalt", <item:tconstruct:cobalt_ingot>, <item:kubejs:crushed_cobalt>, 1.5, 2000);
<recipetype:thermal:furnace>.addRecipe("redstone_crushed_platinum", <item:ob_core:platinum_ingot>, <item:kubejs:crushed_platinum>, 2.0, 2000);
<recipetype:thermal:furnace>.addRecipe("redstone_crushed_pendorite", <item:byg:pendorite_scraps>, <item:kubejs:crushed_pendorite>, 0.45, 2000);


# Craft Small Scrap into Scrap
craftingTable.addShapeless("copper_scrap", <item:kubejs:copper_scrap>, [<item:kubejs:small_copper_scrap>, <item:kubejs:small_copper_scrap>, <item:kubejs:small_copper_scrap>]);

craftingTable.addShapeless("iron_scrap", <item:kubejs:iron_scrap>, [<item:kubejs:small_iron_scrap>, <item:kubejs:small_iron_scrap>, <item:kubejs:small_iron_scrap>]);

craftingTable.addShapeless("gold_scrap", <item:kubejs:gold_scrap>, [<item:kubejs:small_gold_scrap>, <item:kubejs:small_gold_scrap>, <item:kubejs:small_gold_scrap>]);

craftingTable.addShapeless("diamond_scrap", <item:kubejs:diamond_scrap>, [<item:kubejs:small_diamond_scrap>, <item:kubejs:small_diamond_scrap>, <item:kubejs:small_diamond_scrap>]);

craftingTable.addShapeless("platinum_scrap", <item:kubejs:platinum_scrap>, [<item:kubejs:small_platinum_scrap>, <item:kubejs:small_platinum_scrap>, <item:kubejs:small_platinum_scrap>]);

craftingTable.addShapeless("lumium_scrap", <item:kubejs:lumium_scrap>, [<item:kubejs:small_lumium_scrap>, <item:kubejs:small_lumium_scrap>, <item:kubejs:small_lumium_scrap>]);

craftingTable.addShapeless("fiery_scrap", <item:kubejs:fiery_scrap>, [<item:kubejs:small_fiery_scrap>, <item:kubejs:small_fiery_scrap>, <item:kubejs:small_fiery_scrap>]);

craftingTable.addShapeless("ironwood_scrap", <item:kubejs:ironwood_scrap>, [<item:kubejs:small_ironwood_scrap>, <item:kubejs:small_ironwood_scrap>, <item:kubejs:small_ironwood_scrap>]);

craftingTable.addShapeless("knightmetal_scrap", <item:kubejs:knightmetal_scrap>, [<item:kubejs:small_knightmetal_scrap>, <item:kubejs:small_knightmetal_scrap>, <item:kubejs:small_knightmetal_scrap>]);


# Smelt Scrap into Ingots
furnace.addRecipe("smelt_copper_scrap", <item:minecraft:copper_ingot>, <item:kubejs:copper_scrap>, 0, 200);
furnace.addRecipe("smelt_scrap", <item:minecraft:iron_ingot>, <item:kubejs:iron_scrap>, 0, 200);
furnace.addRecipe("smelt_gold_scrap", <item:minecraft:gold_ingot>, <item:kubejs:gold_scrap>, 0, 200);
furnace.addRecipe("smelt_ironwood_scrap", <item:twilightforest:ironwood_ingot>, <item:kubejs:ironwood_scrap>, 0, 200);

blastFurnace.addRecipe("blast_copper_scrap", <item:minecraft:copper_ingot>, <item:kubejs:copper_scrap>, 0, 100);
blastFurnace.addRecipe("blast_scrap", <item:minecraft:iron_ingot>, <item:kubejs:iron_scrap>, 0, 100);
blastFurnace.addRecipe("blast_gold_scrap", <item:minecraft:gold_ingot>, <item:kubejs:gold_scrap>, 0, 100);
blastFurnace.addRecipe("blast_diamond_scrap", <item:minecraft:diamond>, <item:kubejs:diamond_scrap>, 0, 100);

blastFurnace.addRecipe("blast_platinum_scrap", <item:ob_core:platinum_ingot>, <item:kubejs:platinum_scrap>, 0, 100);
blastFurnace.addRecipe("blast_lumium_scrap", <item:thermal:lumium_ingot>, <item:kubejs:lumium_scrap>, 0, 100);
blastFurnace.addRecipe("blast_fiery_scrap", <item:twilightforest:fiery_ingot>, <item:kubejs:fiery_scrap>, 0, 100);
blastFurnace.addRecipe("blast_ironwood_scrap", <item:twilightforest:ironwood_ingot>, <item:kubejs:ironwood_scrap>, 0, 100);
blastFurnace.addRecipe("blast_knightmetal_scrap", <item:twilightforest:knightmetal_ingot>, <item:kubejs:knightmetal_scrap>, 0, 100);


# Quicklime
furnace.addRecipe("smelt_limestone", <item:kubejs:quicklime>, <tag:items:forge:limestone>, 0, 200);
blastFurnace.addRecipe("blast_limestone", <item:kubejs:quicklime>, <tag:items:forge:limestone>, 0, 100);

furnace.addRecipe("smelt_travertine", <item:kubejs:quicklime>, <item:byg:travertine>, 0, 200);
blastFurnace.addRecipe("blast_travertine", <item:kubejs:quicklime>, <item:byg:travertine>, 0, 100);

<recipetype:create:mechanical_crafting>.addRecipe("paper_quicklime", <item:minecraft:paper>, [[<item:kubejs:quicklime>, <item:kubejs:quicklime>, <item:kubejs:quicklime>]]);


# Glue
craftingTable.addShapeless("glue", <item:kubejs:glue>, [<tag:items:forge:slimeballs>, <tag:items:forge:slimeballs>, <item:minecraft:paper>]);
craftingTable.addShapeless("glue_bone", <item:kubejs:glue>, [<item:minecraft:bone>, <item:minecraft:bone>, <item:minecraft:bone>, <item:minecraft:paper>]);
craftingTable.addShapeless("glue_necrotic_bone", <item:kubejs:glue>, [<item:tconstruct:necrotic_bone>, <item:minecraft:paper>]);
craftingTable.addShapeless("glue_rib_bone", <item:kubejs:glue>*2, [<item:reliquary:rib_bone>, <item:minecraft:paper>]);
craftingTable.addShapeless("glue_sharp_bone", <item:kubejs:glue>, [<item:aquamirae:sharp_bones>, <item:aquamirae:sharp_bones>, <item:aquamirae:sharp_bones>, <item:aquamirae:sharp_bones>, <item:aquamirae:sharp_bones>, <item:minecraft:paper>]);
craftingTable.addShapeless("glue_honeycomb", <item:kubejs:glue>, [<item:minecraft:honeycomb>, <item:minecraft:honeycomb>, <item:minecraft:honeycomb>, <item:minecraft:honeycomb>, <item:minecraft:paper>]);

// Super Glue (Create)
craftingTable.addShapeless("super_glue", <item:create:super_glue>, [<item:kubejs:glue>, <tag:items:forge:plates/iron>]);



# Sawdust
// Clump
craftingTable.addShaped("sawdust_clump", <item:kubejs:sawdust_clump>,
    [[<item:thermal:sawdust>, <item:thermal:sawdust>],
    [<item:thermal:sawdust>, <item:thermal:sawdust>]]);

<recipetype:thermal:press>.addRecipe("press_sawdust", [<item:kubejs:sawdust_clump>], <fluid:minecraft:empty>, [<item:thermal:sawdust>*4, <item:thermal:press_packing_2x2_die>], 400);

// Compressed
<item:kubejs:compressed_sawdust>.burnTime = 400;
composter.setValue(<item:kubejs:compressed_sawdust>, 0.5);

furnace.addRecipe("smelt_compressed_sawdust", <item:minecraft:charcoal>, <item:kubejs:compressed_sawdust>, 0, 200);

craftingTable.addShaped("sawdust_sticks", <item:minecraft:stick>*8,
    [[<item:kubejs:compressed_sawdust>],
    [<item:kubejs:compressed_sawdust>]]);

<recipetype:thermal:press>.addRecipe("uncraft_sawdust", [<item:kubejs:sawdust_clump>], <fluid:minecraft:empty>, [<item:kubejs:compressed_sawdust>, <item:thermal:press_unpacking_die>], 400);

// Paper from Compressed Sawdust
craftingTable.addShaped("paper_compressed_sawdust", <item:minecraft:paper>*3, 
    [[<item:kubejs:compressed_sawdust>, <item:kubejs:compressed_sawdust>, <item:kubejs:compressed_sawdust>]]);

// Blocks of Sawdust from Compressed Sawdust
craftingTable.addShaped("sawdust_block", <item:thermal:sawdust_block>*2,
    [[<item:kubejs:compressed_sawdust>, <item:kubejs:compressed_sawdust>],
    [<item:kubejs:compressed_sawdust>, <item:kubejs:compressed_sawdust>]]);

// Compress Clumps
<recipetype:thermal:press>.addRecipe("press_sawdust_clump", [<item:kubejs:compressed_sawdust>*2], <fluid:minecraft:empty>, [<item:kubejs:sawdust_clump>, <item:kubejs:sawdust_clump>], 1000);

<recipetype:create:pressing>.addRecipe("mech_press_sawdust_clump", [<item:kubejs:compressed_sawdust>], <item:kubejs:sawdust_clump>, 3);


# MDF Board
craftingTable.addShaped("mdf", <item:kubejs:mdf>,
    [[<item:thermal:sawdust>, <item:thermal:sawdust>, <item:thermal:sawdust>],
    [<item:thermal:sawdust>, <item:kubejs:glue>, <item:thermal:sawdust>],
    [<item:thermal:sawdust>, <item:thermal:sawdust>, <item:thermal:sawdust>]]);

craftingTable.addShaped("compressed_mdf_board", <item:kubejs:mdf>*4,
    [[<item:kubejs:compressed_sawdust>, <item:kubejs:glue>, <item:kubejs:compressed_sawdust>],
    [<item:kubejs:compressed_sawdust>, <item:kubejs:glue>, <item:kubejs:compressed_sawdust>]]);



# Iridium Fuel Cell
<recipetype:create:mechanical_crafting>.addRecipe("iridium_fuel_cell", <item:kubejs:iridium_fuel_cell>,
[[<item:minecraft:air>, <tag:items:forge:plates/lead>, <item:minecraft:air>],
[<tag:items:forge:plates/lead>, <item:kubejs:iridium_chunks>, <tag:items:forge:plates/lead>],
[<item:minecraft:air>, <tag:items:forge:plates/lead>, <item:minecraft:air>]]);

// Sequenced Version
/* Sequence:
1) Deploy Lead Plate
2) Press Lead Plate
3) Press the entire thing
*/
/*
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("iridium_fuel_cell_sequence")
                                                      .transitionTo(<item:kubejs:iridium_fuel_cell>)
                                                      .require(<item:kubejs:iridium_chunks>)
                                                      .addOutput(<item:kubejs:iridium_fuel_cell>, 100)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:plates/lead>))
                                                      .addStep<mods.createtweaker.PressRecipe>(((rb) => rb.require(<tag:items:forge:plates/lead>))
                                                      .addStep<mods.createtweaker.PressRecipe>());
*/

# Portal Catalyst
<recipetype:create:mechanical_crafting>.addRecipe("portal_catalyst", <item:kubejs:portal_catalyst>,
[[<item:thermal:steel_ingot>|<item:tconstruct:hepatizon_ingot>, <item:minecraft:diamond>, <item:thermal:steel_ingot>|<item:tconstruct:hepatizon_ingot>]]);

print("3-kubejs.zs loaded");