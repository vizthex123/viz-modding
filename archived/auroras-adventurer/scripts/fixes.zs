# Fixes various broken recipes, and/or improves QoL
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
<item>.maxStackSize=NEW_VALUE(up to 64);
*/
print("Loading fixes.zs...");
/*
// Floral Fertilizer recipe boost
// The one that uses dyes has been removed because 
recipes.remove(<botania:fertilizer>);
recipes.addShapeless(<botania:fertilizer>*2, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
*/

// Strip Nether Star NBT
// Stupid Chance Cubes >:{
recipes.addShapeless(<minecraft:nether_star>, [<minecraft:nether_star>]);

// Should fix duplicate Redstone Block decraft recipes
recipes.removeShaped(<minecraft:redstone>);
recipes.addShapeless(<minecraft:redstone>*9, [<ore:blockRedstone>]);

// Fix recipe order of the ME Interface
recipes.removeShapeless(<appliedenergistics2:interface>);
recipes.addShapeless(<appliedenergistics2:part:440>, [<appliedenergistics2:interface>]);

// Fixes Mixed Seeds recipe
// Uses OreDict, so it should accept everything
recipes.remove(<mysticalworld:assorted_seeds>);
recipes.addShapeless(<mysticalworld:assorted_seeds>*4, [<ore:listAllseed>, <ore:listAllseed>, <ore:listAllseed>, <ore:listAllseed>]);

// Fixes the duplicate comparator recipe
recipes.remove(<minecraft:comparator>);
recipes.addShaped(<minecraft:comparator>, [[null, <minecraft:redstone_torch>, null],
                                     			         [<minecraft:redstone_torch>, <ore:gemQuartz>, <minecraft:redstone_torch>],
                               			         [<ore:stone>, <ore:stone>, <ore:stone>]]);

// Fix how the shapeless recipe appears first for Illuminated Panels
recipes.removeShapeless(<appliedenergistics2:part:180>);
recipes.addShapeless(<appliedenergistics2:part:180>, [<appliedenergistics2:part:200>]);

// Should fix Aurorian Steel's recipe not being immediately visible
recipes.removeShaped(<theaurorian:auroriansteel>);
recipes.addShaped(<theaurorian:auroriansteel>, [[<theaurorian:auroriansteelnugget>, <theaurorian:auroriansteelnugget>, <theaurorian:auroriansteelnugget>],
                                    			                [<theaurorian:auroriansteelnugget>, <theaurorian:auroriansteelnugget>, <theaurorian:auroriansteelnugget>],
                                  			                [<theaurorian:auroriansteelnugget>, <theaurorian:auroriansteelnugget>, <theaurorian:auroriansteelnugget>]]);

// QoL stick crafting recipe, like Extra Utils adds
// Not shaped anymore because it doesn't want to work that way
recipes.addShapeless(<theaurorian:silentwoodstick>*16, [<theaurorian:silentwoodlog>, <theaurorian:silentwoodlog>]);

// Fix the Tape Measure Reel not using the OreDict
recipes.remove(<bibliocraft:tape>);
recipes.addShaped(<bibliocraft:tape>, [[<ore:string>, <ore:string>, <ore:string>],
                      	            	               [<ore:string>, <ore:dyeYellow>, <ore:string>],
                                		               [<ore:string>, <ore:string>, <ore:string>]]);

// Fix Clownfish & Pufferfish not being smeltable
furnace.addRecipe(<minecraft:cooked_fish>, <minecraft:fish:2>, 0.5);
furnace.addRecipe(<minecraft:cooked_fish>*2, <minecraft:fish:3>, 0.65);

// Craft Stone Sticks with Aurorian Cobblestone
recipes.addShaped(<tconstruct:stone_stick>*4, [[null, <theaurorian:auroriancobblestone>, null],
                                      			              [null, <theaurorian:auroriancobblestone>, null],
                                                          	             	              [null, null, null]]);
// Should fix the duplicate Bronze Ingot recipes
recipes.removeShaped(<thermalfoundation:material:163>);
recipes.removeShapeless(<thermalfoundation:material:163>);
recipes.addShaped(<thermalfoundation:material:163>, [[<ore:nuggetBronze>, <ore:nuggetBronze>, <ore:nuggetBronze>],
                                     				        [<ore:nuggetBronze>, <ore:nuggetBronze>, <ore:nuggetBronze>],
                        		 	 	         [<ore:nuggetBronze>, <ore:nuggetBronze>, <ore:nuggetBronze>]]);
recipes.addShapeless(<thermalfoundation:material:163>*9, [<ore:blockBronze>]);

// Mushroom Stew uses the OreDict
recipes.addShapeless(<minecraft:mushroom_stew>, [<minecraft:bowl>, <ore:listAllmushroom>, <ore:listAllmushroom>]);

// Fermented Spider Eye uses the OreDict
recipes.remove(<minecraft:fermented_spider_eye>);
recipes.addShapeless(<minecraft:fermented_spider_eye>, [<minecraft:sugar>, <minecraft:spider_eye>, <ore:listAllmushroom>]);

// Ghostwood Fletching fix (makes 3 instead of 1)
// I don't feel like re-adding every arrow recipe instead just to reduce it to 1
// Plus, realism
recipes.remove(<natura:materials:5>);
recipes.addShaped(<natura:materials:5>*3, [[null, <natura:sticks:9>, null],
                                                                                      [<natura:nether_leaves>, <natura:sticks:9>, <natura:nether_leaves>],
                                                                                      [<natura:nether_leaves>, <natura:sticks:9>, <natura:nether_leaves>]]);

// Fix iron/gold ring recipe conflicts (Aether legacy)
// Changes the recipe for the Gears since changing the one for the rings breaks the advancements
recipes.removeShaped(<thermalfoundation:material:24>);
recipes.removeShaped(<thermalfoundation:material:25>);
recipes.addShaped(<thermalfoundation:material:24>, [[null, <minecraft:iron_ingot>, null],
                                       			                          [<minecraft:iron_ingot>, <ore:nuggetIron>, <minecraft:iron_ingot>],
                                                                                                          [null, <minecraft:iron_ingot>, null]]);
recipes.addShaped(<thermalfoundation:material:25>, [[null, <minecraft:gold_ingot>, null],
                                       			                          [<minecraft:gold_ingot>, <ore:nuggetGold>, <minecraft:gold_ingot>],
                                                                                                          [null, <minecraft:gold_ingot>, null]]);

// Makes Level Heart's Heart Container shapeless
recipes.remove(<levelhearts:heart_container>);
recipes.addShapeless(<levelhearts:heart_container>, [<levelhearts:heart_piece>, <levelhearts:heart_piece>, <levelhearts:heart_piece>, <levelhearts:heart_piece>]);

// Quickly decraft clay blocks
recipes.addShapeless(<minecraft:clay_ball>*4, [<minecraft:clay>]);

// Fixed the duplicate Sticky Piston recipes
// OreDict entries for Rosin and Tar are in oredict.zs
recipes.remove(<minecraft:sticky_piston>);
recipes.addShapeless(<minecraft:sticky_piston>, [<minecraft:piston>, <ore:slimeball>]);

// Fixes Crafting Station recipe overriding others
recipes.remove(<tconstruct:tooltables>);
recipes.addShapeless(<tconstruct:tooltables>, [<ore:craftingTableWood>, <ore:stickWood>]);

// Fixes Chainmail Helmet recipe (using the top half of the table instead of the bottom)
recipes.addShaped(<minecraft:chainmail_helmet>, [[<craftablechainmail:chainmail_plate>, <craftablechainmail:chainmail_plate>, <craftablechainmail:chainmail_plate>],
                                                           [<craftablechainmail:chainmail_plate>, null, <craftablechainmail:chainmail_plate>],
                                                           [null, null, null]]);

// Culinary Generator not accepting Beetroots & Apples
recipes.addShaped(<extrautils2:machine>.withTag({Type:"extrautils2:generator_culinary"}), [[<ore:cropBeetroot>, <ore:cropBeetroot>, <ore:cropBeetroot>],
                                    			    					[<ore:cropBeetroot>, <ore:listAllmeatcooked>, <ore:cropBeetroot>],
                                			    					[<ore:dustRedstone>, <extrautils2:machine>.withTag({Type:"extrautils2:generator"}), <ore:dustRedstone>]]);

recipes.addShaped(<extrautils2:machine>.withTag({Type:"extrautils2:generator_culinary"}), [[<minecraft:apple>, <minecraft:apple>, <minecraft:apple>],
                                    			    					[<minecraft:apple>, <ore:listAllmeatcooked>, <minecraft:apple>],
                                			    					[<ore:dustRedstone>, <extrautils2:machine>.withTag({Type:"extrautils2:generator"}), <ore:dustRedstone>]]);
// Remove potion effects from tipped arrows
// Technically accepts regular arrows too, though that isn't useful
recipes.addShapeless(<minecraft:arrow>, [<ore:arrow>]);

// Use for Extra Utils fake items
recipes.addShapeless(<minecraft:reeds>, [<extrautils2:fakecopy:*>]);
/*
// Fix Cooked Fish recipes
// To prevent conflict with Cooked Salmon, I added a new OreDict entry to each fish
furnace.addRecipe(<minecraft:cooked_fish>, <minecraft:fish:3>, 0.35);
*/
// Smelting Stained Glass (& panes) to get regular Glass
furnace.addRecipe(<minecraft:glass>, <minecraft:stained_glass:*>, 0.1);
furnace.addRecipe(<minecraft:glass_pane>, <minecraft:stained_glass_pane:*>, 0.1);

// Leather Strap uses OreDict
recipes.remove(<simplyjetpacks:metaitem:4>);
recipes.addShaped(<simplyjetpacks:metaitem:4>, [[null, null, null],
                                   			                  [<ore:leather>, <ore:ingotIron>, <ore:leather>],
                                  			                  [<ore:leather>, <ore:ingotIron>, <ore:leather>]]);

// Upgrade Templates give 3 instead of 2
recipes.remove(<storagedrawers:upgrade_template>);
recipes.addShaped(<storagedrawers:upgrade_template>*3, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
                            				                  [<ore:stickWood>, <ore:drawerBasic>, <ore:stickWood>],
                                     				                  [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);
// Makes Epic Squid cheaper
// Also says what it does
<mysticalworld:epic_squid>.addTooltip(format.gold("Gives multiple buffs when eaten"));
recipes.remove(<mysticalworld:epic_squid>);
recipes.addShaped(<mysticalworld:epic_squid>*3, [[<ore:foodCalamaricooked>, <ore:foodCalamaricooked>, <ore:foodCalamaricooked>],
                                      				[<ore:foodCalamaricooked>, <ore:gemBlockValuable>, <ore:foodCalamaricooked>],
                              				[<ore:foodCalamaricooked>, <ore:foodCalamaricooked>, <ore:foodCalamaricooked>]]);
// Removes duplicate Furnace recipes
recipes.remove(<minecraft:furnace>);
recipes.addShaped(<minecraft:furnace>, [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
                                     			 [<ore:cobblestone>, null, <ore:cobblestone>],
                                     			 [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);
// Craft 8 Dyed Wool into regular
// Works with White Wool, so you can use that as filler
recipes.addShaped(<minecraft:wool>*8, [[<ore:blockWool>, <ore:blockWool>, <ore:blockWool>],
                               		                    [<ore:blockWool>, <ore:dyeWhite>, <ore:blockWool>],
                              		                    [<ore:blockWool>, <ore:blockWool>, <ore:blockWool>]]);
// Removes the shaped Bronze Ingot recipe, thus forcing you to use an Alloy Smelter or something
recipes.remove(<thermalfoundation:material:163>);
recipes.addShapeless(<thermalfoundation:material:163>*9, [<ore:blockBronze>]);
recipes.addShaped(<thermalfoundation:material:163>, [[<ore:nuggetBronze>, <ore:nuggetBronze>, <ore:nuggetBronze>],
                                   				         [<ore:nuggetBronze>, <ore:nuggetBronze>, <ore:nuggetBronze>],
                                 				         [<ore:nuggetBronze>, <ore:nuggetBronze>, <ore:nuggetBronze>]]);

print("fixes.zs loaded ");