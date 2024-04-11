# Adds recipes to furnaces
# If it gives Scrap, it goes in recycling.zs

print("smelting.zs loading...");

/*
craftingTable.remove(<item>);
craftingTable.removeByName("name");

craftingTable.addShapeless("recipeName", <output>, [<inputs>]);

craftingTable.addShaped("recipeName", <output>, 
    [[<input>, <input>, <input>],
    [<input>, <input>, <input>],
    [<input>, <input>, <input>]]);

blastFurnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);

furnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);
*/

val amethyst = <item:minecraft:amethyst_shard>;
val echo = <item:minecraft:echo_shard>;
val gold = <item:minecraft:gold_ingot>;
val lapis = <item:minecraft:lapis_lazuli>;
val redstone = <item:minecraft:redstone>;

val wool = <tag:items:minecraft:wool>;

// Smelt Shards into Clay
furnace.addRecipe("shard_to_clay", <item:minecraft:clay_ball>, <tag:items:vanilla:shards>, 1.0, 200);

// Smelt & Blast Dripstone into Clay
furnace.addRecipe("smelt_pointed_dripstone_to_clay", <item:minecraft:clay_ball>, <item:minecraft:pointed_dripstone>, 0.4, 200);
blastFurnace.addRecipe("blast_pointed_dripstone_to_clay", <item:minecraft:clay_ball>, <item:minecraft:pointed_dripstone>, 0.4, 100);
blastFurnace.addRecipe("blast_dripstone_to_clay", <item:minecraft:clay>, <item:minecraft:dripstone_block>, 1.6, 100);

// Blast Raw Ore blocks
blastFurnace.addRecipe("blast_raw_iron", <item:minecraft:iron_block>, <item:minecraft:raw_iron_block>, 6.3, 600);
blastFurnace.addRecipe("blast_raw_gold", <item:minecraft:gold_block>, <item:minecraft:raw_gold_block>, 9.0, 600);

print("smelting.zs loaded");