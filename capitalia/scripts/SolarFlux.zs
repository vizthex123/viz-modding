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

// Solar Flux Reborn
// Anything past 5 is way too OP. Might re-add later though.
mods.jei.JEI.removeAndHide(<solarflux:solar_panel_6>);
mods.jei.JEI.removeAndHide(<solarflux:solar_panel_7>);
mods.jei.JEI.removeAndHide(<solarflux:solar_panel_8>);

mods.jei.JEI.removeAndHide(<solarflux:photovoltaic_cell_4>);
mods.jei.JEI.removeAndHide(<solarflux:photovoltaic_cell_5>);
mods.jei.JEI.removeAndHide(<solarflux:photovoltaic_cell_6>);

// Mirrors
recipes.remove(<solarflux:mirror>);
recipes.addShaped(<solarflux:mirror>*3, [[null, null, null],
                                    			  [<foundry:refractoryglass>, <foundry:refractoryglass>, <foundry:refractoryglass>],
                                      			  [null, <minecraft:iron_ingot>, null]]);

recipes.addShaped(<solarflux:mirror>, [[null, null, null],
                             		                 [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
                               		                 [null, <ore:ingotBronze>, null]]);
# Photovoltaic Cells
# 1 is fine, so it's unchanged. Just boosted to be 3 per craft.
// 1
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
/*
// 4
recipes.remove(<solarflux:photovoltaic_cell_4>);
recipes.addShaped(<solarflux:photovoltaic_cell_4>, [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
                                 			                     [<mekanism:enrichedalloy>, <ore:circuitBasic>, <mekanism:enrichedalloy>],
                                  				 [<mekanism:enrichedalloy>, <solarflux:photovoltaic_cell_3>, <mekanism:enrichedalloy>]]);
// 5
recipes.remove(<solarflux:photovoltaic_cell_5>);
recipes.addShaped(<solarflux:photovoltaic_cell_5>, [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
                                 			                     [<mekanism:reinforcedalloy>, <ore:circuitAdvanced>, <mekanism:reinforcedalloy>],
                                  				 [<mekanism:reinforcedalloy>, <solarflux:photovoltaic_cell_4>, <mekanism:reinforcedalloy>]]);
*/
# Solar Panels
// 1
recipes.remove(<solarflux:solar_panel_1>);
recipes.addShaped(<solarflux:solar_panel_1>, [[<solarflux:mirror>, <solarflux:mirror>, <solarflux:mirror>],
                                    	             		           [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
                                                         		           [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);
// 2
recipes.remove(<solarflux:solar_panel_2>);
recipes.addShaped(<solarflux:solar_panel_2>, [[<solarflux:solar_panel_1>, <solarflux:solar_panel_1>, <solarflux:solar_panel_1>],
                                    			           [<solarflux:solar_panel_1>, <ore:circuitBasic>, <solarflux:solar_panel_1>],
                         		                               [<solarflux:solar_panel_1>, <solarflux:solar_panel_1>, <solarflux:solar_panel_1>]]);
// 3
recipes.remove(<solarflux:solar_panel_3>);
recipes.addShaped(<solarflux:solar_panel_3>, [[<solarflux:photovoltaic_cell_1>, <solarflux:photovoltaic_cell_1>, <solarflux:photovoltaic_cell_1>],
                                    	             		           [<solarflux:solar_panel_2>, <ore:circuitAdvanced>, <solarflux:solar_panel_2>],
                                                         		           [<solarflux:solar_panel_2>, <ore:blockSteel>, <solarflux:solar_panel_2>]]);
// 4
recipes.remove(<solarflux:solar_panel_4>);
recipes.addShaped(<solarflux:solar_panel_4>, [[<solarflux:photovoltaic_cell_2>, <solarflux:photovoltaic_cell_2>, <solarflux:photovoltaic_cell_2>],
                                    	             		           [<solarflux:solar_panel_3>, <ore:circuitElite>, <solarflux:solar_panel_3>],
                                                         		           [<solarflux:solar_panel_3>, <mekanism:enrichedalloy>, <solarflux:solar_panel_3>]]);
// 5
recipes.remove(<solarflux:solar_panel_5>);
recipes.addShaped(<solarflux:solar_panel_5>, [[<solarflux:photovoltaic_cell_3>, <solarflux:photovoltaic_cell_3>, <solarflux:photovoltaic_cell_3>],
                                    	             		           [<solarflux:solar_panel_4>, <ore:circuitUltimate>, <solarflux:solar_panel_4>],
                                                         		           [<solarflux:solar_panel_4>, <mekanism:reinforcedalloy>, <solarflux:solar_panel_4>]]);
// 6
recipes.remove(<solarflux:solar_panel_6>);
recipes.addShaped(<solarflux:solar_panel_6>, [[<solarflux:photovoltaic_cell_4>, <solarflux:photovoltaic_cell_4>, <solarflux:photovoltaic_cell_4>],
                                    	             		           [<solarflux:solar_panel_5>, <mekanism:reinforcedalloy>, <solarflux:solar_panel_5>],
                                                         		           [<solarflux:solar_panel_5>, <mekanism:reinforcedalloy>, <solarflux:solar_panel_5>]]);
// 7
recipes.remove(<solarflux:solar_panel_7>);
recipes.addShaped(<solarflux:solar_panel_7>, [[<solarflux:photovoltaic_cell_5>, <solarflux:photovoltaic_cell_5>, <solarflux:photovoltaic_cell_5>],
                                    	             		           [<solarflux:solar_panel_6>, <mekanism:atomicalloy>, <solarflux:solar_panel_6>],
                                                         		           [<solarflux:solar_panel_6>, <mekanism:atomicalloy>, <solarflux:solar_panel_6>]]);

print("SolarFlux.zs loaded");