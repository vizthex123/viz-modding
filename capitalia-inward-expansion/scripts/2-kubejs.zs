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

val empty = <item:minecraft:air>;

val glue = <item:kubejs:glue>;
val fiber = <item:kubejs:fibers>;
val paper = <tag:items:cie:paper>;
val sawdust = <item:kubejs:sawdust>;
val quicklime = <item:kubejs:quicklime>;
val parchment = <item:kubejs:parchment>;

val nugget = <item:kubejs:tiny_iron_scrap>;
val gold_nugget = <item:kubejs:tiny_gold_scrap>;

# Sales Token
# Will be removed when AdminShop gets tag support
# Recipes are in adminshop.zs
craftingTable.addShapeless("sales_token", <item:kubejs:seller>, [<item:lightmanscurrency:coin_copper>, <item:lightmanscurrency:coin_copper>, <item:lightmanscurrency:coin_copper>, <item:lightmanscurrency:coin_copper>]);
craftingTable.addShapeless("sales_token_deco", <item:kubejs:seller>, [<item:createdeco:copper_coinstack>, <item:createdeco:copper_coinstack>]);

val aqua = "\u00A7b";

<item:kubejs:seller>.addTooltip(aqua +  "Converts some items into Coins when crafted with them");
<item:kubejs:seller>.addTooltip(aqua +  "Will be removed once proper NBT support gets added to AdminShop.");



# Tags
# Binding and Paper (for Unwritten Scrolls) is in 0-tags.zs
<tag:items:minecraft:planks>.add(<item:kubejs:mdf>);
<tag:items:forge:leather>.add(<item:kubejs:sheepskin>);
<tag:items:forge:leather>.add(<item:kubejs:pig_hide>);
<tag:items:forge:nuggets/iron>.add(<item:kubejs:tiny_iron_scrap>);
<tag:items:forge:nuggets/gold>.add(<item:kubejs:tiny_gold_scrap>);
<tag:items:lightmanscurrency:ticket_material>.add(parchment);


# Prestige Conversions
craftingTable.addShapeless("prestige_chits", <item:kubejs:prestige_chit>*4, [<item:kubejs:prestige_scrip>]);
craftingTable.addShapeless("prestige_scrip", <item:kubejs:prestige_scrip>, [<item:kubejs:prestige_chit>, <item:kubejs:prestige_chit>, <item:kubejs:prestige_chit>, <item:kubejs:prestige_chit>]);


# Convert Shredded Hide into Leather
craftingTable.addShapeless("hide_to_leather", <item:minecraft:leather>, [<item:kubejs:shredded_hide>, <item:kubejs:shredded_hide>]);


# Fibers
craftingTable.addShapeless("fibers_to_string", <item:minecraft:string>, [fiber, fiber]);

craftingTable.addShaped("fibers_to_wool", <item:minecraft:white_wool>, 
    [[fiber, fiber, fiber],
    [fiber, fiber, fiber],
    [fiber, fiber, fiber]]);

// Cut various plants into Fibers
<recipetype:create:cutting>.addRecipe("plants_to_fibers", <item:kubejs:fibers>, <tag:items:cie:fibrous_foiliage>, 60);


# Parchment
// Acts as paper
craftingTable.addShaped("parchment", parchment, 
    [[empty, glue, empty],
	[sawdust, sawdust, sawdust]]);

// Parchment from Quicklime
<<<<<<< Updated upstream
craftingTable.addShaped("parchment_quicklime", parchment*2, 
=======
craftingTable.addShaped("parchment_quicklime", parchment, 
>>>>>>> Stashed changes
    [[fiber, quicklime, fiber],
	[quicklime, quicklime, quicklime]]);

// Make Parchment from Fibers
craftingTable.addShaped("fiber_parchment", parchment, 
    [[fiber, fiber, fiber],
    [fiber, fiber, fiber]]);


# Scrap
blastFurnace.addRecipe("blast_scrap", <item:minecraft:iron_ingot>, <item:kubejs:iron_scrap>, 0.25, 200);
blastFurnace.addRecipe("blast_gold_scrap", <item:minecraft:gold_ingot>, <item:kubejs:gold_scrap>, 0.5, 200);

# Combine Tiny Scrap into Scrap
craftingTable.addShaped("scrap", <item:kubejs:iron_scrap>, 
    [[nugget, nugget, nugget],
    [nugget, nugget, nugget],
    [nugget, nugget, nugget]]);

craftingTable.addShaped("gold_scrap", <item:kubejs:gold_scrap>, 
    [[gold_nugget, gold_nugget, gold_nugget],
    [gold_nugget, gold_nugget, gold_nugget],
    [gold_nugget, gold_nugget, gold_nugget]]);



### Sawdust Stuff ###

# Glue
craftingTable.addShapeless("glue", glue, [<tag:items:forge:slimeballs>, <tag:items:forge:slimeballs>, <tag:items:cie:paper>]);
craftingTable.addShapeless("glue_sus", glue, [<item:food_enhancements:suspicious_substance>, <tag:items:cie:paper>]);
craftingTable.addShapeless("glue_honeycomb", glue, [<item:minecraft:honeycomb>, <item:minecraft:honeycomb>, <item:minecraft:honeycomb>, <item:minecraft:honeycomb>, <tag:items:cie:paper>]);

// Super Glue (Create)
// Super Glue
craftingTable.remove(<item:create:super_glue>);
craftingTable.addShapeless("super_glue", <item:create:super_glue>, [glue, glue, <tag:items:forge:plates/iron>]);


# Sawdust

// Use Axes to make 1
craftingTable.addShapeless("basic_sawdust", sawdust, [<tag:items:minecraft:planks>, <tag:items:forge:tools/axes>.asIIngredient().transformDamage(10)]);

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