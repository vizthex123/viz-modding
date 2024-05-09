# Changes AE2's recipes/progression
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

print("Loading AE2.zs...");

// Tooltips
<appliedenergistics2:crafting_accelerator>.addTooltip(format.aqua("Makes attached crafting CPUs smarter"));

// Integrates the recipe for the Energy Acceptor with Botania and The Aurorian
recipes.remove(<appliedenergistics2:energy_acceptor>);
recipes.addShaped(<appliedenergistics2:energy_acceptor>, [[<botania:manaresource>, <theaurorian:aurorianglass>, <botania:manaresource>],
                                			                                     [<theaurorian:aurorianglass>, <ore:crystalFluix>, <theaurorian:aurorianglass>],
                            			                                     [<botania:manaresource>, <theaurorian:aurorianglass>, <botania:manaresource>]]);

// Integrates the recipe for the ME Controller with Blood Magic
// Also adds an alternate one that uses T4 (Demonic) Slates or Terrasteel to skip the Acceptor requirement
recipes.remove(<appliedenergistics2:controller>);
recipes.addShaped(<appliedenergistics2:controller>, [[<bloodmagic:slate:1>, <appliedenergistics2:material:24>, <bloodmagic:slate:1>],
                            				    [<ore:crystalFluix>, <appliedenergistics2:energy_acceptor>, <ore:crystalFluix>],
                             			                        [<bloodmagic:slate:1>, <appliedenergistics2:smooth_sky_stone_block>, <bloodmagic:slate:1>]]);

recipes.addShaped(<appliedenergistics2:controller>, [[<bloodmagic:slate:3>|<botania:manaresource:4>, <theaurorian:auroriansteel>, <bloodmagic:slate:3>|<botania:manaresource:4>],
                            				    [<appliedenergistics2:fluix_block>, <appliedenergistics2:material:24>, <appliedenergistics2:fluix_block>],
                             			                        [<bloodmagic:slate:3>|<botania:manaresource:4>, <theaurorian:auroriansteel>, <bloodmagic:slate:3>|<botania:manaresource:4>]]);

// Boosted Quartz Fiber recipe
// Gives 3x the output, but needs Hardened Glass
recipes.addShaped(<appliedenergistics2:part:140>*9, [[<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>],
                               				       [<ore:dustQuartz>, <ore:dustQuartz>, <ore:dustQuartz>],
                              				       [<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>]]);

// Enhances 1k Storage Component recipes
// Also integrates with Botania & Blood Magic
recipes.remove(<appliedenergistics2:material:35>);
recipes.addShaped(<appliedenergistics2:material:35>, [[<botania:manaresource:23>, <ore:certusQuartz>, <botania:manaresource:23>],
                                      				       [<ore:certusQuartz>, <appliedenergistics2:material:22>, <ore:certusQuartz>],
                                  				       [<botania:manaresource:23>, <ore:certusQuartz>, <botania:manaresource:23>]]);

recipes.addShaped(<appliedenergistics2:material:35>*3, [[<bloodmagic:slate>, <ore:certusQuartz>, <bloodmagic:slate>],
                                      				           [<appliedenergistics2:material:1>, <appliedenergistics2:material:24>, <appliedenergistics2:material:1>],
                                  				           [<bloodmagic:slate>, <ore:certusQuartz>, <bloodmagic:slate>]]);

recipes.addShaped(<appliedenergistics2:material:35>*6, [[<botania:manaresource:8>|<bloodmagic:slate:2>, <appliedenergistics2:material:1>, <botania:manaresource:8>|<bloodmagic:slate:2>],
                                      				           [<appliedenergistics2:material:1>, <appliedenergistics2:material:23>, <appliedenergistics2:material:1>],
                                  				           [<botania:manaresource:8>|<bloodmagic:slate:2>, <appliedenergistics2:material:1>, <botania:manaresource:8>|<bloodmagic:slate:2>]]);

// Same as above, but for Fluid Storage
recipes.remove(<appliedenergistics2:material:54>);
recipes.addShaped(<appliedenergistics2:material:54>, [[<botanicadds:mana_lapis>, <ore:certusQuartz>, <botanicadds:mana_lapis>],
                                      				       [<ore:certusQuartz>, <appliedenergistics2:material:22>, <ore:certusQuartz>],
                                  				       [<botanicadds:mana_lapis>, <ore:certusQuartz>, <botanicadds:mana_lapis>]]);

recipes.addShaped(<appliedenergistics2:material:54>*3, [[<bloodmagic:slate>, <botanicadds:mana_lapis>, <bloodmagic:slate>],
                                      				           [<appliedenergistics2:material:1>, <appliedenergistics2:material:24>, <appliedenergistics2:material:1>],
                                  				           [<bloodmagic:slate>, <botanicadds:mana_lapis>, <bloodmagic:slate>]]);

recipes.addShaped(<appliedenergistics2:material:54>*6, [[<botanicadds:elven_lapis>|<bloodmagic:slate:2>, <appliedenergistics2:material:1>, <botanicadds:elven_lapis>|<bloodmagic:slate:2>],
                                      				           [<appliedenergistics2:material:1>, <appliedenergistics2:material:23>, <appliedenergistics2:material:1>],
                                  				           [<botanicadds:elven_lapis>|<bloodmagic:slate:2>, <appliedenergistics2:material:1>, <botanicadds:elven_lapis>|<bloodmagic:slate:2>]]);
// Change recipe for the Inscriber
// Integrates with The Aurorian
recipes.remove(<appliedenergistics2:inscriber>);
recipes.addShaped(<appliedenergistics2:inscriber>, [[<theaurorian:ceruleaningot>, <minecraft:sticky_piston>, <theaurorian:moonstoneingot>],
                                   			                      [<theaurorian:moonstoneingot>, null, <ore:crystalFluix>],
                                  				  [<theaurorian:ceruleaningot>, <minecraft:sticky_piston>, <theaurorian:moonstoneingot>]]);
// Change recipe for the Advanced Inscriber
// Integrates with Botania & RF Tools
recipes.remove(<ae2stuff:inscriber>);
recipes.addShaped(<ae2stuff:inscriber>, [[<botania:manaresource>, <ore:magicalPearl>, <botania:manaresource>],
                                  			[<appliedenergistics2:material:24>, <appliedenergistics2:inscriber>, <appliedenergistics2:material:24>],
                                   		                    [<botania:manaresource>, <rftools:infused_diamond>, <botania:manaresource>]]);

// Change recipes for the Crystal Growth Accelerator & Chamber
// Integrates with The Aurorian, Botania, Blood Magic, and Project Red
recipes.remove(<ae2stuff:grower>);
recipes.remove(<appliedenergistics2:quartz_growth_accelerator>);
recipes.addShaped(<appliedenergistics2:quartz_growth_accelerator>, [[<theaurorian:moonstoneingot>, <appliedenergistics2:part:16>, <theaurorian:moonstoneingot>],
                                   					                 [<appliedenergistics2:quartz_glass>, <ore:crystalFluix>, <appliedenergistics2:quartz_glass>],
                                    					                 [<theaurorian:moonstoneingot>, <appliedenergistics2:part:16>, <theaurorian:moonstoneingot>]]);
mods.biggercraftingtables.Big.addShaped(<ae2stuff:grower>, 
	[[<ore:scrapIngot>, <projectred-core:resource_item:104>, <appliedenergistics2:quartz_growth_accelerator>, <projectred-core:resource_item:104>, <ore:scrapIngot>],
	[<bloodmagic:slate>, <botania:managlass>, <appliedenergistics2:part:16>, <botania:managlass>, <bloodmagic:slate>],
	[<appliedenergistics2:quartz_growth_accelerator>, <appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:chest>, <appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:quartz_growth_accelerator>],
	[<bloodmagic:slate>, <botania:managlass>, <appliedenergistics2:part:16>, <botania:managlass>, <bloodmagic:slate>],
	[<ore:scrapIngot>, <projectred-core:resource_item:104>, <appliedenergistics2:quartz_growth_accelerator>, <projectred-core:resource_item:104>, <ore:scrapIngot>]]);

// Change recipe for the Crafting Unit (Empty)
// Integrates with The Aurorian, Botania, and Blood Magic
recipes.remove(<appliedenergistics2:crafting_unit>);
recipes.addShaped(<appliedenergistics2:crafting_unit>, [[<botania:manaresource>, <bloodmagic:slate>, <botania:manaresource>],
                                   				         [<appliedenergistics2:part:16>, <ore:magicalPearl>, <appliedenergistics2:part:16>],
                                     				         [<ore:scrapIngot>, <bloodmagic:slate>, <ore:scrapIngot>]]);
// Change recipe for the Security Terminal
recipes.remove(<appliedenergistics2:security_station>);
recipes.addShaped(<appliedenergistics2:security_station>, [[<theaurorian:ceruleaningot>, <appliedenergistics2:material:24>, <theaurorian:ceruleaningot>],
                                   				                [<appliedenergistics2:part:16>, <ore:magicalPearl>, <appliedenergistics2:part:16>],
                                				                [<theaurorian:moonstoneingot>, <appliedenergistics2:chest>, <theaurorian:moonstoneingot>]]);
// Change recipe for ME Chest
recipes.remove(<appliedenergistics2:chest>);
recipes.addShaped(<appliedenergistics2:chest>, [[<theaurorian:aurorianglass>, <appliedenergistics2:part:180>, <theaurorian:aurorianglass>],
                                      			               [<appliedenergistics2:part:16>, <bloodmagic:slate>, <appliedenergistics2:part:16>],
                                    			               [<botania:manaresource>, <ore:magicalPearl>, <botania:manaresource>]]);

recipes.addShaped(<appliedenergistics2:chest>*2, [[<botania:managlass>, <appliedenergistics2:part:380>, <botania:managlass>],
                                      			                    [<appliedenergistics2:part:16>, <bloodmagic:slate:1>, <appliedenergistics2:part:16>],
                                    			                    [<ore:scrapIngot>, <ore:magicalPearl>, <ore:scrapIngot>]]);
// Change recipe for ME Drive
// Integrates with Blood Magic, Botania, and The Aurorian
// Also whatever else is in that OreDict entry
recipes.remove(<appliedenergistics2:drive>);
recipes.addShaped(<appliedenergistics2:drive>, [[<theaurorian:auroriansteel>, <appliedenergistics2:material:24>, <theaurorian:auroriansteel>],
                                 			              [<appliedenergistics2:part:16>, <bloodmagic:slate>, <appliedenergistics2:part:16>],
                                      			              [<theaurorian:auroriansteel>, <ore:magicalPearl>, <theaurorian:auroriansteel>]]);
// Upgrade Chest to Drive
// Integrates with Actually Additions, Botania, and Project Red
recipes.addShaped(<appliedenergistics2:drive>, [[null, <projectred-core:resource_item:104>, null],
                                      			              [<ore:quartzDark>, <appliedenergistics2:chest>, <ore:quartzDark>],
                                   			              [<botania:manaresource:4>, null, <botania:manaresource:4>]]);
// Convert regular Interfaces to Fluid ones
recipes.addShapeless(<appliedenergistics2:fluid_interface>, [<appliedenergistics2:interface>, <botanicadds:mana_lapis>]);

// Order: Silicon, Logic, Calculation, Engineering
recipes.addShaped(<appliedenergistics2:material:19>, [[null, <sccraftingrunes:itemcommonmat>, null],
                                 			                           [<sccraftingrunes:itemcommonmat>, <sccraftingrunes:itemcommonmat>, <sccraftingrunes:itemcommonmat>],
                                     				       [null, <sccraftingrunes:itemcommonmat>, null]]);

recipes.addShaped(<appliedenergistics2:material:15>, [[null, <sccraftingrunes:itemuncommonmat>, null],
                                 			                           [<sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemuncommonmat>],
                                     				       [null, <sccraftingrunes:itemuncommonmat>, null]]);

recipes.addShaped(<appliedenergistics2:material:13>, [[null, <sccraftingrunes:itemuncommonmat>, null],
                                 			                           [<sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemuncommonmat>],
                                     				       [null, <sccraftingrunes:itemuncommonmat>, null]]);

recipes.addShaped(<appliedenergistics2:material:14>, [[null, <sccraftingrunes:itemraremat>, null],
                                 			                           [<sccraftingrunes:itemraremat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemraremat>],
                                     				       [null, <sccraftingrunes:itemraremat>, null]]);

print("AE2.zs loaded");