# Fixes broken recipes/items
print("fixes.zs loading...");

/*
recipes.remove(<>);
recipes.addShaped(<output>,
	[[<null>, <null>, <null>],
	  [<null>, <null>, <null>],
	  [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
furnace.addRecipe(<output>, <input>, XP[F]);
<item>.maxStackSize=NEW;
*/

// Lets you use Harvestcraft seaweed to make Sushi Rolls
// I'd make it a new OreDict recipe, but that would ruin the order... ah well.
recipes.addShapeless(<aquaculture:food:10>, [<aquaculture:food:3>, <harvestcraft:seaweeditem>]);

// Lets you smelt Titanium Ingots back into Titanium
furnace.addRecipe(<better_diving:titanium>*9, <better_diving:titanium_ingot>, 0.0);
/*
// Fix broken Terracotta recipe
furnace.remove(<minecraft:hardened_clay>);
furnace.addRecipe(<minecraft:hardened_clay>, <minecraft:clay>, 0.35);
*/
// Clay block > balls
recipes.addShapeless(<minecraft:clay_ball>*4, [<minecraft:clay>]);

// (Should) fix[es] how there's multiple recipes (that don't work) for Charcoal
// Also adds one that uses Driftwood
furnace.remove(<minecraft:coal:1>);
furnace.addRecipe(<minecraft:coal:1>, <ore:logWood>, 0.15);
furnace.addRecipe(<minecraft:coal:1>, <aquaculture:loot>, 0.15);

# Add recipes to make Cured Fish
recipes.addShapeless(<better_diving:peeper_cured>, [<better_diving:peeper>, <ore:dustSalt>]);
recipes.addShapeless(<better_diving:bladderfish_cured>, [<better_diving:bladderfish>, <ore:dustSalt>]);
recipes.addShapeless(<better_diving:garryfish_cured>, [<better_diving:garryfish>, <ore:dustSalt>]);
recipes.addShapeless(<better_diving:holefish_cured>, [<better_diving:holefish>, <ore:dustSalt>]);
recipes.addShapeless(<better_diving:boomerang_cured>, [<better_diving:boomerang>, <ore:dustSalt>]);

// Re-do Proto-Emerald Dust (Oredust) > Emerald recipe
// Moved to the centrifuge (Modular Machinery config)
furnace.remove(<minecraft:emerald>);
furnace.addRecipe(<minecraft:emerald>, <minecraft:emerald_ore>, 1.0);

print("fixes.zs loaded");