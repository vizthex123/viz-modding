# Changes recipes for automation-related items
/*
recipes.remove(<>);
recipes.addShaped(<output>, [[<null>, <null>, <null>],
                                      [<null>, <null>, <null>],
                                      [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
furnace.addRecipe(<output>, <input>, XP[F]);
*/

print("Automation.zs loading...");

// Hopper Pipe alt recipe
recipes.addShapeless(<faufil:hopperpipe>*3, [<minecraft:hopper>]);

// Change recipes for the filter hopper
recipes.remove(<faufil:hopperfilter>);
recipes.addShapeless(<faufil:hopperfilter>, [<minecraft:hopper>, <ore:string>, <ore:string>]);
recipes.addShapeless(<faufil:hopperfilter>, [<minecraft:hopper>, <minecraft:iron_bars>]);

// Alternate Hopper recipe
recipes.addShaped(<minecraft:hopper>, [[<minecraft:iron_ingot>, <wopper:wopper>, <minecraft:iron_ingot>],
                                      		                    [<minecraft:iron_ingot>, <ore:logWood>, <minecraft:iron_ingot>],
                                    		 	[null, <minecraft:iron_ingot>, null]]);

# Conveyor Progression: Stone > Magneticraft/LA Conveyor > Fast > Express
# Mekanism's Logistical Sorter is a mid/late-game alternative, Magneticraft Pneumatic Tubes are a mid-game alterantive, and BuildCraft pipes are early-game alternatives
// Stone Conveyors
recipes.remove(<logisticalautomation:conveyor_stone>);
recipes.addShaped(<logisticalautomation:conveyor_stone>*4, [[null, null, null],
                                                           				  [<minecraft:stone_slab:3>, <minecraft:stone_slab:3>, <minecraft:stone_slab:3>],
                             	                   				  [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);
// Magneticraft Conveyors
// Leaves regular recipes so you can craft 12 at once when oyu get better items
recipes.addShaped(<magneticraft:conveyor_belt>*2, [[null, null, null],
                                      				    [<logisticalautomation:iron_stick>, <logisticalautomation:iron_stick>, <logisticalautomation:iron_stick>],
                                     				    [<logisticalautomation:conveyor_stone>, <ore:ingotIron>, <logisticalautomation:conveyor_stone>]]);

// Upgrade Stone to Basic
recipes.addShaped(<logisticalautomation:conveyor_normal>*4, [[<logisticalautomation:conveyor_stone>, <logisticalautomation:conveyor_stone>, <logisticalautomation:conveyor_stone>],
                                      				    [<logisticalautomation:conveyor_stone>, <logisticalautomation:iron_motor_set>, <logisticalautomation:conveyor_stone>],
                                     				    [<logisticalautomation:conveyor_stone>, <logisticalautomation:conveyor_stone>, <logisticalautomation:conveyor_stone>]]);

// Cheaper Fueled & Powered Quarries
// Idk why they're so expensive by default
recipes.remove(<simplequarry:fuel_quarry>);
recipes.remove(<simplequarry:powered_quarry>);
recipes.addShaped(<simplequarry:fuel_quarry>, [[<ore:stone>, <projectred-core:resource_item:105>|<minecraft:redstone>|<mekanism:otherdust:3>, <ore:stone>],
                                    			               [<ore:ingotGold>, <mekanismtools:stonepaxel:*>, <ore:ingotGold>],
                                      			               [<ore:stone>, <progressiveautomation:miner_stone>, <ore:stone>]]);

recipes.addShaped(<simplequarry:powered_quarry>, [[<ore:ingotGold>, <projectred-core:resource_item:105>|<minecraft:redstone>, <ore:ingotGold>],
                                     				     [<ore:ingotGold>, <simplequarry:fuel_quarry>, <ore:ingotGold>],
                                  				     [<ore:ingotGold>, <minecraft:iron_pickaxe:*>|<mekanismtools:bronzepaxel:*>, <ore:ingotGold>]]);
// Changes BuildCraft Quarry's recipe
recipes.remove(<buildcraftbuilders:quarry>);
recipes.addShaped(<buildcraftbuilders:quarry>, [[<ore:gearIron>, <projectred-core:resource_item:105>, <ore:gearIron>],
                                     			               [<ore:gearBronze>, <simplequarry:powered_quarry>|<progressiveautomation:miner_diamond>, <ore:gearBronze>],
                                  			               [<ore:gearGold>, <minecraft:diamond_pickaxe>|<mekanismtools:steelpaxel>, <ore:gearGold>]]);

// Sloped & Vertical Conveyor Recipe Changes
recipes.addShapeless(<logisticalautomation:conveyor_normal>, [<logisticalautomation:conveyor_stair_normal>]);
recipes.addShapeless(<logisticalautomation:conveyor_fast>, [<logisticalautomation:conveyor_stair_fast>]);
recipes.addShapeless(<logisticalautomation:conveyor_express>, [<logisticalautomation:conveyor_stair_express>]);

recipes.remove(<logisticalautomation:conveyor_stair_normal>);
recipes.remove(<logisticalautomation:conveyor_vertical_normal>);
recipes.addShapedMirrored(<logisticalautomation:conveyor_stair_normal>*6, [[<logisticalautomation:conveyor_normal>, null, null],
                                 					                [<logisticalautomation:conveyor_normal>, <logisticalautomation:conveyor_normal>, null],
                                    					                [<logisticalautomation:conveyor_normal>, <logisticalautomation:conveyor_normal>, <logisticalautomation:conveyor_normal>]]);
recipes.addShapedMirrored(<logisticalautomation:conveyor_vertical_normal>*3, [[null, <logisticalautomation:conveyor_normal>, null],
                              					                      [null, <logisticalautomation:conveyor_normal>, null],
                                  					                      [null, <logisticalautomation:conveyor_normal>, null]]);
# Fast
recipes.remove(<logisticalautomation:conveyor_stair_fast>);
recipes.remove(<logisticalautomation:conveyor_vertical_fast>);
recipes.addShaped(<logisticalautomation:conveyor_stair_fast>*6, [[<logisticalautomation:conveyor_fast>, null, null],
                                 					                [<logisticalautomation:conveyor_fast>, <logisticalautomation:conveyor_fast>, null],
                                    					                [<logisticalautomation:conveyor_fast>, <logisticalautomation:conveyor_fast>, <logisticalautomation:conveyor_fast>]]);
recipes.addShaped(<logisticalautomation:conveyor_vertical_fast>*3, [[null, <logisticalautomation:conveyor_fast>, null],
                              					                      [null, <logisticalautomation:conveyor_fast>, null],
                                  					                      [null, <logisticalautomation:conveyor_fast>, null]]);
# Express
recipes.remove(<logisticalautomation:conveyor_stair_express>);
recipes.remove(<logisticalautomation:conveyor_vertical_express>);
recipes.addShaped(<logisticalautomation:conveyor_stair_express>*6, [[<logisticalautomation:conveyor_express>, null, null],
                                 					                [<logisticalautomation:conveyor_express>, <logisticalautomation:conveyor_express>, null],
                                    					                [<logisticalautomation:conveyor_express>, <logisticalautomation:conveyor_express>, <logisticalautomation:conveyor_express>]]);
recipes.addShaped(<logisticalautomation:conveyor_vertical_express>*3, [[null, <logisticalautomation:conveyor_express>, null],
                              					                      [null, <logisticalautomation:conveyor_express>, null],
                                  					                      [null, <logisticalautomation:conveyor_express>, null]]);

print("Automation.zs loaded");