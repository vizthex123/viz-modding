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

// Make the Glider wing recipe craft 2 at once.
recipes.remove(<openblocks:generic>);
recipes.addShapedMirrored(<openblocks:generic>*2, [[null, <ore:stickWood>, <ore:leather>],
                                				        [<ore:stickWood>, <ore:leather>, <ore:leather>],
                               				        [<ore:leather>, <ore:leather>, <ore:leather>]]);

// Fix Stone Crafting Plates conflicting with Cobblestone Parts
recipes.remove(<sct:stone_crafting_plate>);
recipes.addShapeless(<sct:stone_crafting_plate>*2, [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]);

// Fixes the Clay Shears recipes
recipes.remove(<ceramics:clay_shears>);
recipes.addShapeless(<ceramics:clay_shears>, [<ceramics:unfired_clay:9>, <ceramics:unfired_clay:9>]);
recipes.addShapeless(<ceramics:unfired_clay:1>, [<minecraft:clay>, <minecraft:clay>]);

// Fixes the Unfired Clay Plate recipe not being shapeless
recipes.remove(<ceramics:unfired_clay:8>);
recipes.addShapeless(<ceramics:unfired_clay:8>, [<minecraft:clay_ball>, <minecraft:clay_ball>]);

// Fix Stone Shears having a recipe conflict
recipes.remove(<thermalfoundation:tool.shears_stone>);
recipes.addShapeless(<thermalfoundation:tool.shears_stone>, [<stonechest:part_cobblestone>]);

// Fix ore blocks giving the wrong ingots
recipes.removeShapeless(<ore:ingotTin>);
recipes.removeShapeless(<ore:ingotCopper>);
recipes.addShapeless(<thermalfoundation:material:129>*9, [<ore:blockTin>]);
recipes.addShapeless(<thermalfoundation:material:128>*9, [<ore:blockCopper>]);

// Stone Sticks can be crafted more easily
// Also fixes the recipe Forge Microblocks' ones
recipes.remove(<byg:stonestick>);
recipes.remove(<microblockcbe:stone_rod>);
recipes.addShapeless(<byg:stonestick>*4, [<ore:cobblestone>, <ore:cobblestone>]);
recipes.addShapeless(<microblockcbe:stone_rod>*3, [<ore:stone>, <ore:stone>]);

// Convert Natura & Glacidus sticks
recipes.addShapeless(<minecraft:stick>, [<natura:sticks:*>]);
recipes.addShapeless(<minecraft:stick>, [<glacidus:underground_stick>]);

// Remove duplicate recipes for Sticky Pistons
recipes.remove(<minecraft:sticky_piston>);
recipes.addShapeless(<minecraft:sticky_piston>, [<minecraft:piston>, <ore:slimeball>]);

// Ghostwood Fletching fix (makes 3 instead of 1)
recipes.remove(<natura:materials:5>);
recipes.addShaped(<natura:materials:5>*3, [[null, <natura:sticks:9>, null],
                                                                                      [<natura:nether_leaves>, <natura:sticks:9>, <natura:nether_leaves>],
                                                                                      [<natura:nether_leaves>, <natura:sticks:9>, <natura:nether_leaves>]]);

// Make the Woden Hopper (Wopper) cheaper
recipes.remove(<wopper:wopper>);
recipes.addShaped(<wopper:wopper>, [[<ore:plankWood>, null, <ore:plankWood>],
                                		                  [<ore:plankWood>, null, <ore:plankWood>],
                                  		                  [null, <ore:plankWood>, null]]);

print("fixes.zs loaded");