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

// Add OreDict support for Bread
recipes.remove(<minecraft:bread>);
recipes.addShaped(<minecraft:bread>, [[<ore:listAllgrain>, <ore:listAllgrain>, <ore:listAllgrain>]]);

// Fix Vulcanite recipes
furnace.remove(<vulcanite:vulcanite_ingot>);
furnace.remove(<vulcanite:vulcanite_nugget>);

furnace.addRecipe(<vulcanite:vulcanite_ingot>, <vulcanite:nether_vulcanite_ore>, 3.0);
furnace.addRecipe(<vulcanite:vulcanite_nugget>, <vulcanite:vulcanite_ore>, 2.0);

// Fix the Stone Sickle and Saw using Flint
recipes.remove(<microblockcbe:saw_stone>);
recipes.remove(<projectred-exploration:stone_sickle>);

recipes.addShaped(<microblockcbe:saw_stone>, [[null, null, null],
																					[<ore:stickWood>, <ore:rodStone>, <ore:rodStone>],
																					[<ore:stickWood>, <ore:stone>, <ore:rodStone>]]);

recipes.addShapedMirrored(<projectred-exploration:stone_sickle>, [[null, <ore:stone>, null],
																													[null, null, <ore:stone>],
																													[<ore:stickWood>, <ore:stone>, null]]);

// Fix the Underground Bucket not being craftable
recipes.addShaped(<glacidus:underground_bucket>, [[<glacidus:underground_planks>, null, <glacidus:underground_planks>],
                                      [null, <glacidus:underground_planks>, null]]);

// Make the Glider wing recipe craft 2 at once.
recipes.remove(<openblocks:generic>);
recipes.addShapedMirrored(<openblocks:generic>*2, [[null, <ore:stickWood>, <ore:leather>],
                                				        [<ore:stickWood>, <ore:leather>, <ore:leather>],
                               				        [<ore:leather>, <ore:leather>, <ore:leather>]]);

// Fix Stone Crafting Plates conflicting with Cobblestone Parts
recipes.remove(<sct:stone_crafting_plate>);
recipes.remove(<sct:stone_crafting_table>);
recipes.addShaped(<sct:stone_crafting_table>, [[<ore:cobblestone>, <ore:cobblestone>],
                                				        [<ore:cobblestone>, <ore:cobblestone>]]);

// Fixes Unfired Clay Shears being in the wrong shape
// Also adds a recipe for finished Clay Shears
recipes.remove(<ceramics:clay_shears>);
recipes.remove(<ceramics:unfired_clay:1>);
recipes.addShaped(<ceramics:clay_shears>, [[null, <ceramics:unfired_clay:9>],
                                				        [<ceramics:unfired_clay:9>, null]]);

recipes.addShaped(<ceramics:unfired_clay:1>, [[null, <minecraft:clay_ball>],
                                				        [<minecraft:clay_ball>, null]]);

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

// Convert Natura & Glacidus sticks
recipes.addShapeless(<minecraft:stick>, [<natura:sticks:*>]);
recipes.addShapeless(<minecraft:stick>, [<glacidus:underground_stick>]);

// Stone Sticks can be crafted more easily
// Also fixes the recipe Forge Microblocks' ones
recipes.remove(<sct:stone_stick>);
recipes.remove(<microblockcbe:stone_rod>);

recipes.addShaped(<sct:stone_stick>*2, [[<ore:cobblestone>, null],
                                                                                      [<ore:cobblestone>, null]]);

recipes.addShaped(<microblockcbe:stone_rod>*4, [[<ore:stone>, null],
                                                                                      [<ore:stone>, null]]);

// Remove duplicate recipes for Sticky Pistons
recipes.remove(<minecraft:sticky_piston>);
recipes.addShaped(<minecraft:sticky_piston>, [[<ore:slimeball>, null],
                                                                                      [<minecraft:piston>, null]]);

// Ghostwood Fletching fix (makes 3 instead of 1)
recipes.remove(<natura:materials:5>);
recipes.addShaped(<natura:materials:5>*3, [[null, <natura:sticks:9>, null],
                                                                                      [<natura:nether_leaves>, <natura:sticks:9>, <natura:nether_leaves>],
                                                                                      [<natura:nether_leaves>, <natura:sticks:9>, <natura:nether_leaves>]]);

print("fixes.zs loaded");