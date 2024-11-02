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
/*
# Crushed Ores
# Recipes to make them are in create.zs
blastFurnace.addRecipe("blast_crushed_cobalt", <item:tconstruct:cobalt_ingot>, <item:kubejs:crushed_cobalt>, 1.5, 100);
blastFurnace.addRecipe("blast_crushed_platinum", <item:ob_core:platinum_ingot>, <item:kubejs:crushed_platinum>, 2.0, 100);
blastFurnace.addRecipe("blast_crushed_pendorite", <item:byg:pendorite_scraps>, <item:kubejs:crushed_pendorite>, 0.45, 100);

<recipetype:thermal:furnace>.addRecipe("redstone_crushed_cobalt", <item:tconstruct:cobalt_ingot>, <item:kubejs:crushed_cobalt>, 1.5, 2000);
<recipetype:thermal:furnace>.addRecipe("redstone_crushed_platinum", <item:ob_core:platinum_ingot>, <item:kubejs:crushed_platinum>, 2.0, 2000);
<recipetype:thermal:furnace>.addRecipe("redstone_crushed_pendorite", <item:byg:pendorite_scraps>, <item:kubejs:crushed_pendorite>, 0.45, 2000);

### Scrap Recipes ###
val copper = <item:kubejs:copper_scrap>;
val iron = <item:kubejs:iron_scrap>;
val gold = <item:kubejs:gold_scrap>;
val diamond = <item:kubejs:diamond_scrap>;

val small_copper = <item:kubejs:small_copper_scrap>;
val small_iron = <item:kubejs:small_iron_scrap>;
val small_gold = <item:kubejs:small_gold_scrap>;
val small_diamond = <item:kubejs:small_diamond_scrap>;


val platinum = <item:kubejs:platinum_scrap>;
val lumium = <item:kubejs:lumium_scrap>;

val small_platinum = <item:kubejs:small_platinum_scrap>;
val small_lumium = <item:kubejs:small_lumium_scrap>;


val fiery = <item:kubejs:fiery_scrap>;
val ironwood = <item:kubejs:ironwood_scrap>;
val knightmetal = <item:kubejs:knightmetal_scrap>;

val small_fiery = <item:kubejs:small_fiery_scrap>;
val small_ironwood = <item:kubejs:small_ironwood_scrap>;
val small_knightmetal = <item:kubejs:small_knightmetal_scrap>;

# Craft Small Scrap into Scrap
craftingTable.addShapeless("copper_scrap", copper, [small_copper, small_copper, small_copper]);

craftingTable.addShapeless("iron_scrap", iron, [small_iron, small_iron, small_iron]);

craftingTable.addShapeless("gold_scrap", gold, [small_gold, small_gold, small_gold]);

craftingTable.addShapeless("diamond_scrap", diamond, [small_diamond, small_diamond, small_diamond]);

craftingTable.addShapeless("platinum_scrap", platinum, [small_platinum, small_platinum, small_platinum]);

craftingTable.addShapeless("lumium_scrap", lumium, [small_lumium, small_lumium, small_lumium]);

craftingTable.addShapeless("fiery_scrap", fiery, [small_fiery, small_fiery, small_fiery]);

craftingTable.addShapeless("ironwood_scrap", ironwood, [small_ironwood, small_ironwood, small_ironwood]);

craftingTable.addShapeless("knightmetal_scrap", knightmetal, [small_knightmetal, small_knightmetal, small_knightmetal]);


# Smelt Scrap into Ingots
furnace.addRecipe("smelt_copper_scrap", <item:minecraft:copper_ingot>, copper, 0, 200);
furnace.addRecipe("smelt_scrap", <item:minecraft:iron_ingot>, iron, 0, 200);
furnace.addRecipe("smelt_gold_scrap", <item:minecraft:gold_ingot>, gold, 0, 200);
furnace.addRecipe("smelt_ironwood_scrap", <item:twilightforest:ironwood_ingot>, ironwood, 0, 200);

blastFurnace.addRecipe("blast_copper_scrap", <item:minecraft:copper_ingot>, copper, 0, 100);
blastFurnace.addRecipe("blast_scrap", <item:minecraft:iron_ingot>, iron, 0, 100);
blastFurnace.addRecipe("blast_gold_scrap", <item:minecraft:gold_ingot>, gold, 0, 100);
blastFurnace.addRecipe("blast_diamond_scrap", <item:minecraft:diamond>, diamond, 0, 100);

blastFurnace.addRecipe("blast_platinum_scrap", <item:ob_core:platinum_ingot>, platinum, 0, 100);
blastFurnace.addRecipe("blast_lumium_scrap", <item:thermal:lumium_ingot>, lumium, 0, 100);
blastFurnace.addRecipe("blast_fiery_scrap", <item:twilightforest:fiery_ingot>, fiery, 0, 100);
blastFurnace.addRecipe("blast_ironwood_scrap", <item:twilightforest:ironwood_ingot>, ironwood, 0, 100);
blastFurnace.addRecipe("blast_knightmetal_scrap", <item:twilightforest:knightmetal_ingot>, knightmetal, 0, 100);
*/

# Quicklime
val quicklime = <item:kubejs:quicklime>;

blastFurnace.addRecipe("blast_limestone", quicklime, <tag:items:create:stone_types/limestone>, 0, 100);
blastFurnace.addRecipe("blast_travertine", quicklime, <item:byg:travertine>, 0, 100);

<recipetype:create:mechanical_crafting>.addRecipe("paper_quicklime", <item:minecraft:paper>, [[quicklime, quicklime, quicklime]]);

// Clean Spent Filters
<recipetype:thermal:smelter>.addRecipe("clean_filter", [<item:deepresonance:filter_material> % 50], [<item:deepresonance:spent_filter_material>, quicklime], 0, 6000);

// Induction Smelt Quicklime to make Steel
<recipetype:thermal:smelter>.addRecipe("induction_smelt_quicklime", [<item:thermal:steel_ingot> % 15], [<item:minecraft:iron_ingot>|<item:thermal:iron_dust>, <tag:items:create:stone_types/limestone>, quicklime*8], 0, 6400);


# Glue
val glue = <item:kubejs:glue>;

craftingTable.addShapeless("glue", glue, [<tag:items:forge:slimeballs>, <tag:items:forge:slimeballs>, <item:minecraft:paper>]);
craftingTable.addShapeless("glue_bone", glue, [<item:minecraft:bone>, <item:minecraft:bone>, <item:minecraft:bone>, <item:minecraft:paper>]);
craftingTable.addShapeless("glue_necrotic_bone", glue, [<item:tconstruct:necrotic_bone>, <item:minecraft:paper>]);
craftingTable.addShapeless("glue_rib_bone", glue*2, [<item:reliquary:rib_bone>, <item:minecraft:paper>]);
craftingTable.addShapeless("glue_sharp_bone", glue, [<item:aquamirae:sharp_bones>, <item:aquamirae:sharp_bones>, <item:aquamirae:sharp_bones>, <item:aquamirae:sharp_bones>, <item:aquamirae:sharp_bones>, <item:minecraft:paper>]);
craftingTable.addShapeless("glue_honeycomb", glue, [<item:minecraft:honeycomb>, <item:minecraft:honeycomb>, <item:minecraft:honeycomb>, <item:minecraft:honeycomb>, <item:minecraft:paper>]);

// Super Glue
craftingTable.remove(<item:create:super_glue>);
craftingTable.addShapeless("super_glue", <item:create:super_glue>, [glue, glue, <tag:items:forge:plates/iron>]);



# Sawdust
val sawdust = <item:thermal:sawdust>;
val sawdust_clump = <item:kubejs:sawdust_clump>;
val compressed_sawdust = <item:kubejs:compressed_sawdust>;

// Clump
craftingTable.addShaped("sawdust_clump", sawdust_clump,
    [[sawdust, sawdust],
    [sawdust, sawdust]]);

<recipetype:thermal:press>.addRecipe("press_sawdust", [sawdust_clump], <fluid:minecraft:empty>, [sawdust*4, <item:thermal:press_packing_2x2_die>], 400);

// Compressed
compressed_sawdust.burnTime = 400;
composter.setValue(compressed_sawdust, 0.5);

furnace.addRecipe("smelt_compressed_sawdust", <item:minecraft:charcoal>, compressed_sawdust, 0, 200);

craftingTable.addShaped("sawdust_sticks", <item:minecraft:stick>*8,
    [[compressed_sawdust],
    [compressed_sawdust]]);

<recipetype:thermal:press>.addRecipe("uncraft_sawdust", [sawdust_clump], <fluid:minecraft:empty>, [compressed_sawdust, <item:thermal:press_unpacking_die>], 400);

// Paper from Compressed Sawdust
craftingTable.addShaped("paper_compressed_sawdust", <item:minecraft:paper>*3, 
    [[compressed_sawdust, compressed_sawdust, compressed_sawdust]]);

// Blocks of Sawdust from Compressed Sawdust
craftingTable.addShaped("sawdust_block", <item:thermal:sawdust_block>*2,
    [[compressed_sawdust, compressed_sawdust],
    [compressed_sawdust, compressed_sawdust]]);

// Compress Clumps
<recipetype:thermal:press>.addRecipe("press_sawdust_clump", [compressed_sawdust*2], <fluid:minecraft:empty>, [sawdust_clump, sawdust_clump], 1000);

<recipetype:create:pressing>.addRecipe("mech_press_sawdust_clump", [compressed_sawdust], sawdust_clump, 3);


# MDF Board
craftingTable.addShaped("mdf", <item:kubejs:mdf>,
    [[sawdust, sawdust, sawdust],
    [sawdust, glue, sawdust],
    [sawdust, sawdust, sawdust]]);

craftingTable.addShaped("compressed_mdf_board", <item:kubejs:mdf>*4,
    [[compressed_sawdust, glue, compressed_sawdust],
    [compressed_sawdust, glue, compressed_sawdust]]);


# Portal Catalyst
craftingTable.addShaped("portal_catalyst", <item:kubejs:portal_catalyst>,
    [[<item:minecraft:gold_ingot>, <item:minecraft:diamond>, <item:minecraft:gold_ingot>]]);


# Iridium Fuel Cell
<recipetype:create:mechanical_crafting>.addRecipe("iridium_fuel_cell", <item:kubejs:iridium_fuel_cell>,
[[<item:minecraft:air>, <tag:items:forge:plates/lead>, <item:minecraft:air>],
[<tag:items:forge:plates/lead>, <item:kubejs:iridium_chunks>, <tag:items:forge:plates/lead>],
[<item:minecraft:air>, <tag:items:forge:plates/lead>, <item:minecraft:air>]]);



# Tags
val crushed_ore = <tag:items:create:crushed_ores>;

crushed_ore.add(<item:kubejs:crushed_cobalt>);
crushed_ore.add(<item:kubejs:crushed_pendorite>);
crushed_ore.add(<item:kubejs:crushed_platinum>);
<tag:items:minecraft:planks>.add(<item:kubejs:mdf>);
<tag:items:twilightforest:portal/activator>.add(<item:kubejs:portal_catalyst>);

print("3-kubejs.zs loaded");