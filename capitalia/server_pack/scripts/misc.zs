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

// Clear OB tank NBT
recipes.addShapeless(<openblocks:tank>, [<openblocks:tank>]);

// More recipes for Shroom Powder
recipes.addShapeless(<biomesoplenty:shroompowder>, [<biomesoplenty:mushroom:1>]);
recipes.addShapeless(<biomesoplenty:shroompowder>, [<biomesoplenty:mushroom:2>]);
recipes.addShapeless(<biomesoplenty:shroompowder>*2, [<biomesoplenty:mushroom:3>]);
recipes.addShapeless(<biomesoplenty:shroompowder>*3, [<biomesoplenty:mushroom:4>]);
recipes.addShapeless(<biomesoplenty:shroompowder>*5, [<biomesoplenty:mushroom:5>]);

// Add a use for shroom powder
recipes.addShapeless(<minecraft:mushroom_stew>, [<minecraft:bowl>, <biomesoplenty:shroompowder>, <minecraft:brown_mushroom>|<minecraft:red_mushroom>]);

// Convert Yellorium Dust into Yellowcake
recipes.addShapeless(<techguns:itemshared:97>, [<bigreactors:dustyellorium>]);

// Change the Filler Upgrade's recipe
recipes.remove(<simplequarry:upgrade_filler>);
recipes.addShaped(<simplequarry:upgrade_filler>, [[<minecraft:dirt:1>|<biomesoplenty:dirt:8>|<biomesoplenty:dirt:9>|<biomesoplenty:dirt:10>, <minecraft:iron_shovel>, <minecraft:dirt:1>|<biomesoplenty:dirt:8>|<biomesoplenty:dirt:9>|<biomesoplenty:dirt:10>],
                                   				[<minecraft:dirt:1>|<biomesoplenty:dirt:8>|<biomesoplenty:dirt:9>|<biomesoplenty:dirt:10>, <simplequarry:upgrade_base>, <minecraft:dirt:1>|<biomesoplenty:dirt:8>|<biomesoplenty:dirt:9>|<biomesoplenty:dirt:10>],
                                      			 	[<minecraft:dirt:1>|<biomesoplenty:dirt:8>|<biomesoplenty:dirt:9>|<biomesoplenty:dirt:10>, <minecraft:dirt:1>|<biomesoplenty:dirt:8>|<biomesoplenty:dirt:9>|<biomesoplenty:dirt:10>, <minecraft:dirt:1>|<biomesoplenty:dirt:8>|<biomesoplenty:dirt:9>|<biomesoplenty:dirt:10>]]);

// Change Flint & Steel to use Steel
recipes.remove(<minecraft:flint_and_steel>);
recipes.addShapeless(<minecraft:flint_and_steel>, [<ore:ingotSteel>, <advancedrocketry:misc:1>, <minecraft:flint>]);

// Math Calculator
recipes.remove(<jecalculation:item_calculator:1>);
recipes.addShaped(<jecalculation:item_calculator:1>, [[<minecraft:stone:*>, <ore:dyeBlack>, <minecraft:stone:*>],
                                    				     [<minecraft:stone:*>, <minecraft:redstone>, <minecraft:stone:*>],
                                   				     [<minecraft:stone:*>, <ore:ingotBronze>, <minecraft:stone:*>]]);

// Junkbox & Stone Storage recipes
recipes.remove(<multistorage:stone_storage>);
recipes.remove(<multistorage:stone_storage:5>);
recipes.addShaped(<multistorage:stone_storage:5>, [[<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>],
                                   			 	     [<minecraft:stone_slab>, <extrautils2:compressedcobblestone>, <minecraft:stone_slab>],
                                     			 	     [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]]);

recipes.addShaped(<multistorage:stone_storage>, [[<ore:stone>, <extrautils2:compressedcobblestone>, <ore:stone>],
                                   			 	[<minecraft:stone_slab>, null, <minecraft:stone_slab>],
                                     			 	[<ore:stone>, <extrautils2:compressedcobblestone>, <ore:stone>]]);

recipes.addShaped(<multistorage:stone_storage:1>, [[<minecraft:stone:*>, <minecraft:stone:*>, <minecraft:stone:*>],
                                   			 	   [<minecraft:stone:*>, null, <minecraft:stone:*>],
                                     			 	   [<minecraft:stone:*>, <minecraft:stone:*>, <minecraft:stone:*>]]);

// Smelt Yellowcake into Yellorium Dust
furnace.addRecipe(<bigreactors:ingotyellorium>, <techguns:itemshared:97>, 2.5);

// Builder's Bags
recipes.remove(<buildersbag:builders_bag_tier_five>);
recipes.remove(<buildersbag:builders_bag_tier_four>);
recipes.addShaped(<buildersbag:builders_bag_tier_four>, [[null, <ore:craftingTableWood>, null],
                                   				               [<minecraft:leather>, <buildersbag:builders_bag_tier_three>, <minecraft:leather>],
                                  				               [<ore:ingotSteel>, <ore:chestWood>, <ore:ingotSteel>]]);

recipes.addShaped(<buildersbag:builders_bag_tier_five>, [[null, <mekanism:ingot>|<techguns:itemshared:84>, null],
                                   				             [<minecraft:leather>, <buildersbag:builders_bag_tier_four>, <minecraft:leather>],
                                  				             [<faufil:hopperpipe>, <ore:blockDiamond>, <faufil:hopperpipe>]]);
// Redstone Engine
recipes.remove(<buildcraftcore:engine>);
recipes.addShaped(<buildcraftcore:engine>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
                                  			       [null, <ore:blockGlass>, null],
                                   			       [<ore:gearWood>, <minecraft:stone:*>, <ore:gearWood>]]);

// Golden Revolver recipe
recipes.remove(<techguns:goldenrevolver>);
recipes.addShaped(<techguns:goldenrevolver>.withTag({ammo: 0 as short, ammovariant: "default", camo: 0 as byte}), [[<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
                                   			                 [<minecraft:gold_ingot>, <foundry:revolver:*>|<techguns:revolver:*>, <minecraft:gold_ingot>],
                                     			             [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]]);
															 
// Miner's Ring recipes
recipes.addShapeless(<baubles:ring>, [<mekanismtools:bronzepickaxe>, <projectred-core:resource_item:105>|<minecraft:redstone>, <projectred-core:resource_item:105>|<minecraft:redstone>]);
recipes.addShapeless(<baubles:ring>, [<minecraft:iron_pickaxe>, <minecraft:redstone>|<projectred-core:resource_item:105>]);

// Shop recipe
recipes.remove(<adminshop:shop>);
recipes.addShaped(<adminshop:shop>, [[<ore:plankWood>, <ore:blockGlass>, <ore:plankWood>],
                                     			 [<ore:plankWood>, <ore:ingotBronze>, <ore:plankWood>],
                                     			 [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);
												 
// Auto-seller recipe
recipes.remove(<adminshop:seller>);
recipes.addShaped(<adminshop:seller>, [[<minecraft:iron_ingot>, <minecraft:hopper>, <minecraft:iron_ingot>],
                                     		 	[<minecraft:bucket>|<claybucket:claybucket>, <ore:blockGlass>, <projectred-core:resource_item:105>|<minecraft:redstone>],
                                     			[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);

// Change Marble Table recipe
recipes.remove(<marblecraftingtable:marble_crafting_table>);
recipes.addShapeless(<marblecraftingtable:marble_crafting_table>, [<sct:stone_crafting_table>, <ore:dyeWhite>, <ore:dyeWhite>]);

// Convert Fuel Pellets back into Coal
recipes.addShapeless(<minecraft:coal>, [<progressiveautomation:coal_pellet>, <progressiveautomation:coal_pellet>, <progressiveautomation:coal_pellet>, <progressiveautomation:coal_pellet>, <progressiveautomation:coal_pellet>, <progressiveautomation:coal_pellet>, <progressiveautomation:coal_pellet>, <progressiveautomation:coal_pellet>]);

// Recipe for the Research Table
recipes.remove(<researchtable:table>);
recipes.addShaped(<researchtable:table>, [[null, <minecraft:writable_book>, null],
                                     			   [<minecraft:stone>|<minecraft:stone:2>|<minecraft:stone:4>|<minecraft:stone:6>, <ore:workbench>, <minecraft:stone>|<minecraft:stone:2>|<minecraft:stone:4>|<minecraft:stone:6>],
                                      		                       [<minecraft:stone>|<minecraft:stone:2>|<minecraft:stone:4>|<minecraft:stone:6>, null, <minecraft:stone>|<minecraft:stone:2>|<minecraft:stone:4>|<minecraft:stone:6>]]);

// Mechnical Crafter recipe change
recipes.remove(<extrautils2:crafter>);
recipes.addShapeless(<extrautils2:crafter>, [<extrautils2:analogcrafter>, <ore:chestWood>, <extrautils2:ingredients>]);

// Gravel --> Flint
recipes.addShapeless(<minecraft:flint>*2, [<minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>]);

// Decraft Cobwebs
recipes.addShapeless(<minecraft:string>*2, [<minecraft:web>]);

// Convert Wool to String
recipes.addShapeless(<minecraft:string>*2, [<ore:wool>, <minecraft:flint>, <minecraft:flint>]);

// Turn Sandstone into Glass
// Not as item-efficient, but faster
furnace.addRecipe(<minecraft:glass>*3, <minecraft:sandstone>, 0.3);
furnace.addRecipe(<minecraft:glass>*6, <minecraft:sandstone:2>, 0.6);

// Alt Exchanger Core (T1) recipe
recipes.addShaped(<exchangers:exchanger_core_tier1>, [[<ore:logWood>, null, <ore:logWood>],
                                     				            [<ore:dustRedstone>, <minecraft:ender_pearl>, <ore:dustRedstone>],
                                			 	            [<ore:logWood>, null, <ore:logWood>]]);
// Cheaper RF Engine
// Easier than changing every recipe lol, plus these things are kind of pointless on their own. All PA stuff is supposed to be early-game anyway.
recipes.remove(<progressiveautomation:rf_engine>);
recipes.addShaped(<progressiveautomation:rf_engine>, [[<ore:ingotCopper>, <minecraft:gold_ingot>, <ore:ingotCopper>],
                                      				          [<ore:ingotBronze>, <ore:dustRedstone>, <ore:ingotBronze>],
                                   				          [<ore:ingotCopper>, <ore:ingotBronze>, <ore:ingotCopper>]]);
// Cheaper Diamond Miner
// Why does it need 10 by default?!
recipes.remove(<progressiveautomation:miner_diamond>);
recipes.addShaped(<progressiveautomation:miner_diamond>, [[null, <minecraft:diamond>, null],
                                    					  [<minecraft:diamond>, <progressiveautomation:miner_iron>, <minecraft:diamond>],
                              					  [null, <minecraft:diamond>, null]]);
// Cheaper PA Upgrades
recipes.remove(<progressiveautomation:wood_upgrade>);
recipes.remove(<progressiveautomation:stone_upgrade>);
recipes.remove(<progressiveautomation:iron_upgrade>);
recipes.remove(<progressiveautomation:diamond_upgrade>);

recipes.addShaped(<progressiveautomation:wood_upgrade>, [[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
                                      					  [<ore:slabWood>, <mekanism:otherdust:3>|<minecraft:redstone>, <ore:slabWood>],
                                      				 	  [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]]);
recipes.addShaped(<progressiveautomation:wood_upgrade>*2, [[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
                                      					      [<ore:slabWood>, <projectred-core:resource_item:105>, <ore:slabWood>],
                                      				 	      [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]]);

recipes.addShapeless(<progressiveautomation:stone_upgrade>, [<progressiveautomation:wood_upgrade>, <ore:cobblestone>, <ore:cobblestone>]);
recipes.addShapeless(<progressiveautomation:stone_upgrade>, [<progressiveautomation:wood_upgrade>, <minecraft:stone:*>, <minecraft:stone:*>]);
recipes.addShapeless(<progressiveautomation:iron_upgrade>, [<progressiveautomation:stone_upgrade>, <ore:ingotIron>, <ore:ingotIron>]);
recipes.addShapeless(<progressiveautomation:diamond_upgrade>, [<progressiveautomation:iron_upgrade>, <ore:gemDiamond>]);

// Alt recipe that uses Emeralds, because those things are kinda pointless
recipes.addShapeless(<progressiveautomation:diamond_upgrade>*2, [<progressiveautomation:iron_upgrade>, <ore:gemEmerald>]);

print("misc.zs loaded");