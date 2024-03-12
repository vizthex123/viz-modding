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
recipes.addShaped("bread", <minecraft:bread>, [[<ore:listAllgrain>, <ore:listAllgrain>, <ore:listAllgrain>]]);

// Fix Vulcanite recipes
furnace.remove(<vulcanite:vulcanite_ingot>);
furnace.remove(<vulcanite:vulcanite_nugget>);

furnace.addRecipe(<vulcanite:vulcanite_ingot>, <vulcanite:nether_vulcanite_ore>, 3.0);
furnace.addRecipe(<vulcanite:vulcanite_nugget>, <vulcanite:vulcanite_ore>, 2.0);

// Fix the Stone Sickle and Saw using Flint
recipes.remove(<microblockcbe:saw_stone>);
recipes.remove(<projectred-exploration:stone_sickle>);

recipes.addShaped("stone_saw", <microblockcbe:saw_stone>, [[null, null, null],
																					[<ore:stickWood>, <ore:rodStone>, <ore:rodStone>],
																					[<ore:stickWood>, <ore:stone>, <ore:rodStone>]]);

recipes.addShapedMirrored("stone_sickle", <projectred-exploration:stone_sickle>, [[null, <ore:stone>, null],
																													[null, null, <ore:stone>],
																													[<ore:stickWood>, <ore:stone>, null]]);

// Fix the Underground Bucket not being craftable
recipes.addShaped("underground_bucket", <glacidus:underground_bucket>, [[<glacidus:underground_planks>, null, <glacidus:underground_planks>],
                                      [null, <glacidus:underground_planks>, null]]);

// Make the Glider wing recipe craft 2 at once.
recipes.remove(<openblocks:generic>);
recipes.addShapedMirrored("glider_wing", <openblocks:generic>*2, [[null, <ore:stickWood>, <ore:leather>],
                                				        [<ore:stickWood>, <ore:leather>, <ore:leather>],
														[<ore:leather>, <ore:leather>, <ore:leather>]]);

// Fix Stone Crafting Plates conflicting with Cobblestone Parts
recipes.remove(<sct:stone_crafting_plate>);
recipes.remove(<sct:stone_crafting_table>);
recipes.addShaped("stone_crafting_table", <sct:stone_crafting_table>, [[<ore:cobblestone>, <ore:cobblestone>],
																														  [<ore:cobblestone>, <ore:cobblestone>]]);

// Fixes Unfired Clay Shears being in the wrong shape
// Also adds a recipe for finished Clay Shears
recipes.remove(<ceramics:clay_shears>);
recipes.remove(<ceramics:unfired_clay:1>);
recipes.addShaped("clay_shears", <ceramics:clay_shears>, [[null, <ceramics:unfired_clay:9>],
                                				        [<ceramics:unfired_clay:9>, null]]);

recipes.addShaped("unfired_clay_shears", <ceramics:unfired_clay:1>, [[null, <minecraft:clay_ball>],
                                				        [<minecraft:clay_ball>, null]]);

// Fixes the Unfired Clay Plate recipe not being shapeless
recipes.remove(<ceramics:unfired_clay:8>);
recipes.addShapeless("unfired_clay_plate", <ceramics:unfired_clay:8>, [<minecraft:clay_ball>, <minecraft:clay_ball>]);

// Fix Stone Shears having a recipe conflict
recipes.remove(<thermalfoundation:tool.shears_stone>);
recipes.addShapeless("stone_shears", <thermalfoundation:tool.shears_stone>, [<stonechest:part_cobblestone>]);

// Convert Natura & Glacidus sticks
recipes.addShapeless("convert_natura_sticks", <minecraft:stick>, [<natura:sticks:*>]);
recipes.addShapeless("convert_underground_sticks", <minecraft:stick>, [<glacidus:underground_stick>]);

// Stone Sticks can be crafted more easily
// Also fixes the recipe Forge Microblocks' ones
recipes.remove(<sct:stone_stick>);
recipes.remove(<microblockcbe:stone_rod>);

recipes.addShaped("stone_stick", <sct:stone_stick>*2, [[<ore:cobblestone>, null],
                                                                                      [<ore:cobblestone>, null]]);

recipes.addShaped("stone_rod", <microblockcbe:stone_rod>*4, [[<ore:stone>, null],
                                                                                      [<ore:stone>, null]]);

// Remove duplicate recipes for Sticky Pistons
recipes.remove(<minecraft:sticky_piston>);
recipes.addShaped("sticky_piston", <minecraft:sticky_piston>, [[<ore:slimeball>, null],
                                                                                      [<minecraft:piston>, null]]);

// Ghostwood Fletching fix (makes 3 instead of 1)
recipes.remove(<natura:materials:5>);
recipes.addShaped("ghostwood_fletching", <natura:materials:5>*3, [[null, <natura:sticks:9>, null],
                                                                                      [<natura:nether_leaves>, <natura:sticks:9>, <natura:nether_leaves>],
                                                                                      [<natura:nether_leaves>, <natura:sticks:9>, <natura:nether_leaves>]]);

print("fixes.zs loaded");