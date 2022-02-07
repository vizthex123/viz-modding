# Fixes broken/conflicting/duplicate recipes
print("fixes.zs loading...");
/*
recipes.remove(<>);
recipes.addShaped(<output>, [[<null>, <null>, <null>],
                                      [<null>, <null>, <null>],
                                      [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
furnace.addRecipe(<output>, <input>, XP[F]);
<item>.maxStackSize=NEW;
*/

// Make the Wooden Hopper (Wopper) cheaper
recipes.remove(<wopper:wopper>);
recipes.addShaped(<wopper:wopper>, [[<ore:plankWood>, null, <ore:plankWood>],
                                		                  [<ore:plankWood>, null, <ore:plankWood>],
                                  		                  [null, <ore:plankWood>, null]]);

print("fixes.zs loaded");