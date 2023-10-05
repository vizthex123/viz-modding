# Changes recipes for miscellanous items
print("misc.zs loading...");
/*
recipes.remove(<>);
recipes.addShaped(<output>, [[<null>, <null>, <null>],
                                      [<null>, <null>, <null>],
                                      [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
furnace.addRecipe(<output>, <input>, XP[F]);
<item>.maxStackSize=NEW;
*/

// Makes the Culinary Generator use my OreDict entries
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}));
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}), [[<ore:listAllcrops>, <ore:listAllcrops>, <ore:listAllcrops>],
                                   			    [<ore:listAllcrops>, <ore:listAllmeat>, <ore:listAllcrops>],
                                  			    [<minecraft:redstone>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <minecraft:redstone>]]);

// Fix the conflict between SCT's Crafting Plates and the ones from Stone Chest
// Also changes the recipes for its content
recipes.remove(<sct:stone_crafting_plate>);
recipes.addShaped(<sct:stone_crafting_plate>, [[<ore:cobblestone>, <ore:cobblestone>],
                                      [<ore:cobblestone>, <ore:cobblestone>]]);
recipes.remove(<sct:stone_crafting_table>);
recipes.addShapeless(<sct:stone_crafting_table>, [<sct:stone_crafting_plate>]);

recipes.addShapedMirrored(<sct:stone_stick>*2, [[<sct:stone_crafting_plate>, null],
                                     		 [<sct:stone_crafting_plate>, null]]);

// Alternate Hopper recipes
recipes.addShaped(<minecraft:hopper>, [[<minecraft:iron_ingot>, <ore:logWood>, <minecraft:iron_ingot>],
                                      		                    [<minecraft:iron_ingot>, <ore:logWood>, <minecraft:iron_ingot>],
                                    		 	[null, <minecraft:iron_ingot>, null]]);

recipes.addShaped(<minecraft:hopper>, [[<minecraft:iron_ingot>, <wopper:wopper>, <minecraft:iron_ingot>],
                                      		                    [<minecraft:iron_ingot>, <ore:logWood>, <minecraft:iron_ingot>],
                                    		 	[null, <minecraft:iron_ingot>, null]]);

// New Akashic Tome recipes
recipes.remove(<akashictome:tome>);
recipes.addShapeless(<akashictome:tome>, [<ore:bookshelf>, <minecraft:paper>]);
recipes.addShapeless(<akashictome:tome>, [<minecraft:book>, <minecraft:paper>]);

// New Idea Table recipe
// Removes Parchment & Feather requirements
recipes.remove(<ftgumod:idea_table>);
recipes.addShaped(<ftgumod:idea_table>, [[null, <ore:stickWood>, null],
                                  			    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
                               			    [<ore:planksWood>, <ore:craftingTableWood>, <ore:planksWood>]]);

// Convert Webs to String
recipes.addShapeless(<minecraft:string>*2, [<minecraft:web>]);

print("misc.zs loaded");