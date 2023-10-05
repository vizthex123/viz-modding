# Adds recipes to my custom KubeJS items
# Dossiers are in research.zs

print("2-kubejs.zs loading...");

/*
furnace.addRecipe("recipeName", <output>, <input>, xp, cooktime-10s default);

craftingTable.addShapeless("recipeName", <output>, [<inputs>]);

craftingTable.addShaped("recipeName", <output>, 
    [[<input>, <input>, <input>],
    [<input>, <input>, <input>],
    [<input>, <input>, <input>]]);

craftingTable.removeByName("recipeName");
*/

# Sales Token
# Will be removed when AdminShop gets tag support
craftingTable.addShapeless("sales_token", <item:kubejs:seller>, [<item:lightmanscurrency:coin_copper>, <item:lightmanscurrency:coin_copper>, <item:lightmanscurrency:coin_copper>, <item:lightmanscurrency:coin_copper>]);
craftingTable.addShapeless("sales_token_deco", <item:kubejs:seller>, [<item:createdeco:copper_coinstack>, <item:createdeco:copper_coinstack>]);

val aqua = "\u00A7b";

<item:kubejs:seller>.addTooltip(aqua +  "Converts some items into Coins when crafted with them");
<item:kubejs:seller>.addTooltip(aqua +  "Will be removed once tag support gets added to AdminShop.");


# Tags
# Binding and Paper (for Unwritten Scrolls) is in 0-tags.zs
<tag:items:minecraft:planks>.add(<item:kubejs:mdf>);
<tag:items:forge:leather>.add(<item:kubejs:sheepskin>);
<tag:items:forge:leather>.add(<item:kubejs:pig_hide>);
<tag:items:forge:nuggets/iron>.add(<item:kubejs:tiny_scrap>);
<tag:items:lightmanscurrency:ticket_material>.add(<item:kubejs:parchment>);


# Convert Shredded Hide into Leather
craftingTable.addShaped("hide_to_leather", <item:minecraft:leather>, 
    [[<item:kubejs:shredded_hide>, <item:kubejs:shredded_hide>],
	[<item:kubejs:shredded_hide>, <item:kubejs:shredded_hide>]]);

# Fibers
craftingTable.addShapeless("fibers_to_string", <item:minecraft:string>, [<item:kubejs:fibers>, <item:kubejs:fibers>]);

craftingTable.addShaped("fibers_to_wool", <item:minecraft:white_wool>, 
    [[<item:kubejs:fibers>, <item:kubejs:fibers>, <item:kubejs:fibers>],
    [<item:kubejs:fibers>, <item:kubejs:fibers>, <item:kubejs:fibers>],
    [<item:kubejs:fibers>, <item:kubejs:fibers>, <item:kubejs:fibers>]]);

// Cut various plants into Fibers
<recipetype:create:cutting>.addRecipe("plants_to_fibers", <item:kubejs:fibers>, <tag:items:cie:fibrous_foiliage>, 60);

# Scrap
furnace.addRecipe("smelt_scrap", <item:minecraft:iron_ingot>, <item:kubejs:scrap>, 0.25, 200);
blastFurnace.addRecipe("blast_scrap", <item:minecraft:iron_ingot>, <item:kubejs:scrap>, 0.25, 100);


### Sawdust Stuff ###
val glue = <item:kubejs:glue>;
val sawdust = <item:kubejs:sawdust>;
val quicklime = <item:kubejs:quicklime>;

# Glue
craftingTable.addShapeless("glue", glue, [<tag:items:forge:slimeballs>, <tag:items:forge:slimeballs>, <item:minecraft:paper>]);
craftingTable.addShapeless("glue_sus", glue, [<item:food_enhancements:suspicious_substance>, <item:minecraft:paper>]);
craftingTable.addShapeless("glue_honeycomb", glue, [<item:minecraft:honeycomb>, <item:minecraft:honeycomb>, <item:minecraft:honeycomb>, <item:minecraft:honeycomb>, <item:minecraft:paper>]);

// Super Glue (Create)
// Super Glue
craftingTable.remove(<item:create:super_glue>);
craftingTable.addShapeless("super_glue", <item:create:super_glue>, [glue, glue, <tag:items:forge:plates/iron>]);

# Parchment
// Acts as paper
craftingTable.addShaped("parchment", <item:kubejs:parchment>, 
    [[<item:minecraft:air>, glue, <item:minecraft:air>],
	[sawdust, sawdust, sawdust]]);

// Parchment from Quicklime
craftingTable.addShaped("parchment_quicklime", <item:kubejs:parchment>, 
    [[quicklime, quicklime, quicklime],
	[quicklime, quicklime, quicklime]]);


# Sawdust
// Use Axes to make a bit at a time
craftingTable.addShapeless("basic_sawdust", sawdust, [<tag:items:minecraft:planks>, <tag:items:forge:tools/axes>.asIIngredient().transformDamage(5)]);


// Clump
craftingTable.addShaped("sawdust_clump", <item:kubejs:sawdust_clump>,
    [[sawdust, sawdust],
    [sawdust, sawdust]]);

// Compressed
<recipetype:create:pressing>.addRecipe("press_sawdust_clump", [<item:kubejs:compressed_sawdust>], <item:kubejs:sawdust_clump>, 40);

furnace.addRecipe("smelt_compressed_sawdust", <item:minecraft:charcoal>, <item:kubejs:compressed_sawdust>, 0, 200);

craftingTable.addShaped("sawdust_sticks", <item:minecraft:stick>*8,
    [[<item:kubejs:compressed_sawdust>],
    [<item:kubejs:compressed_sawdust>]]);

composter.setValue(<item:kubejs:compressed_sawdust>, 0.25);

# MDF Board
craftingTable.addShaped("mdf_board", <item:kubejs:mdf>,
    [[sawdust, sawdust, sawdust],
    [sawdust, glue, sawdust],
    [sawdust, sawdust, sawdust]]);

craftingTable.addShaped("compressed_mdf_board", <item:kubejs:mdf>*4,
    [[<item:kubejs:compressed_sawdust>, glue, <item:kubejs:compressed_sawdust>],
    [<item:kubejs:compressed_sawdust>, glue, <item:kubejs:compressed_sawdust>]]);

craftingTable.addShaped("mdf_chest", <item:minecraft:chest>,
    [[<item:kubejs:mdf>, <item:kubejs:mdf>, <item:kubejs:mdf>],
    [<item:kubejs:mdf>, <item:minecraft:air>, <item:kubejs:mdf>],
    [<item:kubejs:mdf>, <item:kubejs:mdf>, <item:kubejs:mdf>]]);

print("2-kubejs.zs loaded");