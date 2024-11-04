# Fixes random recipes
/*
recipes.addShaped(<output>, [[<null>, <null>, <null>],
                                    	                    [<null>, <null>, <null>],
                                   	                    [<null>, <null>, <null>]]);

recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
recipes.remove(<item>);
recipes.removeShaped(<item>);
recipes.removeShapeless(<item>);

furnace.remove(<item>);
furnace.addRecipe(<output>, <input>, XP[F]);
*/

# Adds Charcoal recipes for modded logs
# Damn thing won't let me fix them all in one fell swoop >:{
val charcoal = <minecraft:coal:1>;

// Aurorian Woods (because Elise forgot lol)
furnace.addRecipe(charcoal, <theaurorian:silentwoodlog>, 0.2);
furnace.addRecipe(charcoal, <theaurorian:weepingwillowlog>, 0.2);

// Elvenwood
furnace.addRecipe(charcoal, <botanicadds:elvenwood_log>, 0.2);
/*
// Taintwood
furnace.addRecipe(charcoal, <thaumcraft:taint_log>, 0.5);
*/