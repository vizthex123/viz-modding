# Adds random QoL recipes because I'm addicted
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
<item>.maxStackSize=NEW(up to 64);
<item>.maxDamage = NEWVALUE;
*/

// Craft Sticks out of Saplings
recipes.addShapeless(<minecraft:stick>, [<ore:treeSapling>]);
 
// QoL stick crafting recipe, like Extra Utils adds
// Not shaped anymore because it doesn't want to work that way
recipes.addShaped(<theaurorian:silentwoodstick>*16, [[<theaurorian:silentwoodlog>],
																							   [<theaurorian:silentwoodlog>]]);