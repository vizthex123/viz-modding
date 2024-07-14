# Miscellanous changes
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

// Craft Chests with Silentwood Logs
recipes.addShaped(<minecraft:chest>*4, [[<theaurorian:silentwoodlog>, <theaurorian:silentwoodlog>, <theaurorian:silentwoodlog>],
																  	   [<theaurorian:silentwoodlog>, null, <theaurorian:silentwoodlog>],
																	   [<theaurorian:silentwoodlog>, <theaurorian:silentwoodlog>, <theaurorian:silentwoodlog>]]);

// Craft Hoppers with Cerulean
recipes.addShaped(<minecraft:hopper>, [[<theaurorian:ceruleaningot>, null, <theaurorian:ceruleaningot>],
																	  [<theaurorian:ceruleaningot>, <ore:chestWood>, <theaurorian:ceruleaningot>],
																	  [null, <theaurorian:ceruleaningot>, null]]);

recipes.addShaped(<minecraft:hopper>, [[<theaurorian:ceruleaningot>, <theaurorian:silentwoodlog>, <theaurorian:ceruleaningot>],
																	  [<theaurorian:ceruleaningot>, <theaurorian:silentwoodlog>, <theaurorian:ceruleaningot>],
																	  [null, <theaurorian:ceruleaningot>, null]]);

// Change wooden hopper recipe
recipes.remove(<tconstruct:wooden_hopper>);
recipes.addShaped(<tconstruct:wooden_hopper>, [[<ore:plankWood>, null, <ore:plankWood>],
																					   [<ore:plankWood>, null, <ore:plankWood>],
																					   [null, <ore:plankWood>, null]]);
// Change recipe for the Deep Dark portal
recipes.remove(<extrautils2:teleporter:1>);
recipes.addShaped(<extrautils2:teleporter:1>, [[<extrautils2:compressedcobblestone>, <extrautils2:compressedcobblestone>, <extrautils2:compressedcobblestone>],
                                      			           [<extrautils2:compressedcobblestone>, <theaurorian:crystal>, <extrautils2:compressedcobblestone>],
                         			           [<extrautils2:compressedcobblestone>, <extrautils2:compressedcobblestone>, <extrautils2:compressedcobblestone>]]);

// Decraft cobwebs
recipes.addShapeless(<minecraft:string>, [<minecraft:web>]);

print("misc.zs loaded");