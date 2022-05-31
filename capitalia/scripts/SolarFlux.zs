# Changes things from the Solar Flux mod
/*
recipes.remove(<>);
recipes.addShaped(<output>, [[<null>, <null>, <null>],
                                      [<null>, <null>, <null>],
                                      [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
*/

print("SolarFlux.zs loading...");
print("Removed items included here!");

// Cut cost of Efficiency Upgrades because they're bad
recipes.remove(<solarflux:efficiency_upgrade>);
recipes.addShapeless(<solarflux:efficiency_upgrade>, [<solarflux:mirror>, <solarflux:blank_upgrade>]);

# Removes items
// Anything past 5 is way too OP. Might re-add later though.
// Even 5 is a bit OP, but the changed recipe balances it out at least a bit
mods.jei.JEI.removeAndHide(<solarflux:solar_panel_6>);
mods.jei.JEI.removeAndHide(<solarflux:solar_panel_7>);
mods.jei.JEI.removeAndHide(<solarflux:solar_panel_8>);

mods.jei.JEI.removeAndHide(<solarflux:photovoltaic_cell_4>);
mods.jei.JEI.removeAndHide(<solarflux:photovoltaic_cell_5>);
mods.jei.JEI.removeAndHide(<solarflux:photovoltaic_cell_6>);

# Change Slar Panel component recipes
// Mirrors
recipes.remove(<solarflux:mirror>);
recipes.addShaped(<solarflux:mirror>*3, [[null, null, null],
                                    			  [<foundry:refractoryglass>, <foundry:refractoryglass>, <foundry:refractoryglass>],
                                      			  [null, <minecraft:iron_ingot>, null]]);

recipes.addShaped(<solarflux:mirror>, [[null, null, null],
                             		                 [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
                               		                 [null, <ore:ingotBronze>, null]]);
# Photovoltaic Cells
// 1
// Same recipe, just makes 3 at once
recipes.remove(<solarflux:photovoltaic_cell_1>);
mods.extendedcrafting.TableCrafting.addShaped(0, <solarflux:photovoltaic_cell_1>*3,
	[[<foundry:refractoryglass>, <foundry:refractoryglass>, <foundry:refractoryglass>], 
	[<ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>], 
	[<solarflux:mirror>, <solarflux:mirror>, <solarflux:mirror>]]);
	
// 2
recipes.remove(<solarflux:photovoltaic_cell_2>);
mods.extendedcrafting.TableCrafting.addShaped(0, <solarflux:photovoltaic_cell_2>*3, 
	[[<ore:gemLapis>, <ore:ingotIron>, <ore:gemLapis>], 
	[<ore:ingotIron>, <ore:gemLapis>, <ore:ingotIron>], 
	[<solarflux:photovoltaic_cell_1>, <solarflux:photovoltaic_cell_1>, <solarflux:photovoltaic_cell_1>]]);
	
// 3
recipes.remove(<solarflux:photovoltaic_cell_3>);
mods.extendedcrafting.TableCrafting.addShaped(0, <solarflux:photovoltaic_cell_3>*3, 
	[[<ore:dustGlowstone>, <ore:dustGlowstone>, <ore:dustGlowstone>], 
	[<foundry:refractoryglass>, <ore:blockGlassHardened>, <foundry:refractoryglass>], 
	[<solarflux:photovoltaic_cell_2>, <solarflux:photovoltaic_cell_2>, <solarflux:photovoltaic_cell_2>]]);

# Solar Panels
// 1
recipes.remove(<solarflux:solar_panel_1>);
recipes.addShaped(<solarflux:solar_panel_1>, [[<solarflux:mirror>, <solarflux:mirror>, <solarflux:mirror>],
                                    	             		           [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
                                                         		           [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);
// 2
recipes.remove(<solarflux:solar_panel_2>);
recipes.addShaped(<solarflux:solar_panel_2>, [[<solarflux:solar_panel_1>, <solarflux:solar_panel_1>, <solarflux:solar_panel_1>],
                                    			           [<solarflux:solar_panel_1>, <projectred-core:resource_item:342>, <solarflux:solar_panel_1>],
                         		                               [<solarflux:solar_panel_1>, <solarflux:solar_panel_1>, <solarflux:solar_panel_1>]]);
// 3
recipes.remove(<solarflux:solar_panel_3>);
recipes.addShaped(<solarflux:solar_panel_3>, [[<solarflux:photovoltaic_cell_1>, <solarflux:photovoltaic_cell_1>, <solarflux:photovoltaic_cell_1>],
                                    	             		           [<solarflux:solar_panel_2>, <ore:circuitBasic>, <solarflux:solar_panel_2>],
                                                         		           [<solarflux:solar_panel_2>, <projectred-core:resource_item:104>, <solarflux:solar_panel_2>]]);
// 4
recipes.remove(<solarflux:solar_panel_4>);
recipes.addShaped(<solarflux:solar_panel_4>, [[<solarflux:photovoltaic_cell_2>, <solarflux:photovoltaic_cell_2>, <solarflux:photovoltaic_cell_2>],
                                    	             		           [<solarflux:solar_panel_3>, <ore:circuitAdvanced>, <solarflux:solar_panel_3>],
                                                         		           [<solarflux:solar_panel_3>, <mekanism:enrichedalloy>, <solarflux:solar_panel_3>]]);
// 5
recipes.remove(<solarflux:solar_panel_5>);
recipes.addShaped(<solarflux:solar_panel_5>, [[<solarflux:photovoltaic_cell_3>, <solarflux:photovoltaic_cell_3>, <solarflux:photovoltaic_cell_3>],
                                    	             		           [<solarflux:solar_panel_4>, <ore:circuitElite>, <solarflux:solar_panel_4>],
                                                         		           [<solarflux:solar_panel_4>, <mekanism:reinforcedalloy>, <solarflux:solar_panel_4>]]);

print("SolarFlux.zs loaded");