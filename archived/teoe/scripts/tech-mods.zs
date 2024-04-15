# Changes recipes for various tech mods

print("tech-mods.zs loading...");

### IndustrialCraft 2
/*
# Old-school recipes for cables
// Tin Cable
recipes.addShaped(<IC2:itemCable:13>*6, [[<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>],
																			[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>],
																			[<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>]]);

// Copper Cable
recipes.addShaped(<IC2:itemCable>*6, [[<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>],
																	  [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
																	  [<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>]]);

// Gold Cable
recipes.addShaped(<IC2:itemCable:3>*3, [[<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>],
																		  [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>],
																		  [<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>]]);
*/
// Replace the Glass Fibre Cable recipe
// Gives 2 per craft and adds OreDict support
recipes.remove(<IC2:itemCable:9>);
recipes.addShaped(<IC2:itemCable:9>*2, [[<ore:glass>, <ore:glass>, <ore:glass>],
																	   [<IC2:itemDust2:2>, <ore:dustSilver>, <IC2:itemDust2:2>],
																	   [<ore:glass>, <ore:glass>, <ore:glass>]]);
/*
# Diamond Drill recipe fix
# This is because the turning table is cancerous to use
### Remove the multi-line comment if you want to use this recipe

# Uncharged
recipes.remove(<IC2:itemToolDDrill>);
recipes.addShaped(<IC2:itemToolDDrill:26>, [[null, null, null],
                                                                            [null, <minecraft:diamond>, null],
                                                                            [<minecraft:diamond>, <IC2:itemToolDrill:26>, <minecraft:diamond>]]);

# Charged
recipes.addShaped(<IC2:itemToolDDrill:1>, [[null, null, null],
                                                                          [null, <minecraft:diamond>, null],
                                                                          [<minecraft:diamond>, <IC2:itemToolDrill:1>, <minecraft:diamond>]]);
*/

# Upgrade a BatPack into an Advanced BatPack
val advanced_alloy = <IC2:itemPartAlloy>;
val advanced_battery = <IC2:itemAdvBat:26>;
val iridum_plate = <IC2:itemPartIridium>;

// Uncharged
recipes.addShaped(<IC2:itemArmorAdvBatpack:27>, [[advanced_battery, <ore:circuitBasic>, advanced_battery],
																					     [advanced_battery, <IC2:itemArmorBatpack:27>, advanced_battery],
																					     [advanced_battery, null, advanced_battery]]);

// 60k EU
recipes.addShaped(<IC2:itemArmorAdvBatpack:1>.withTag({charge: 60000.0}), [[advanced_battery, <ore:circuitBasic>, advanced_battery],
																				     [advanced_battery, <IC2:itemArmorBatpack:1>.withTag({charge: 60000.0}), advanced_battery],
																					 [advanced_battery, null, advanced_battery]]);

# Upgrade an Advanced Nano Chestplate into QuantumSuit Bodyarmour
// Partially Charged (Jetpack and NanoSuit)
recipes.addShaped(<IC2:itemArmorQuantumChestplate>.withTag({charge: 3030000}), [[iridum_plate, <GraviSuite:advNanoChestPlate:1>.withTag({charge: 3000000.0}), iridum_plate],
																				     [advanced_alloy, <IC2:itemBatLamaCrystal:26>.withTag({charge: 0}), advanced_alloy],
																					 [advanced_alloy, <IC2:itemArmorJetpackElectric:1>.withTag({charge: 30000}), advanced_alloy]]);

// Charged NanoSuit
recipes.addShaped(<IC2:itemArmorQuantumChestplate>.withTag({charge: 3000000}), [[iridum_plate, <GraviSuite:advNanoChestPlate:1>.withTag({charge: 3000000.0}), iridum_plate],
																				     [advanced_alloy, <IC2:itemBatLamaCrystal:26>.withTag({charge: 0}), advanced_alloy],
																					 [advanced_alloy, <IC2:itemArmorJetpackElectric:26>.withTag({charge: 0}), advanced_alloy]]);

// Uncharged
recipes.addShaped(<IC2:itemArmorQuantumChestplate:26>, [[iridum_plate, <GraviSuite:advNanoChestPlate:26>.withTag({charge: 0}), iridum_plate],
																				     [advanced_alloy, <IC2:itemBatLamaCrystal:26>.withTag({}), advanced_alloy],
																					 [advanced_alloy, <IC2:itemArmorJetpackElectric:26>.withTag({}), advanced_alloy]]);

### Misc Mods
// Fixes the Weather Crystal's recipe conflict
recipes.remove(<EnderIO:itemMaterial:10>);
recipes.addShapeless(<EnderIO:itemMaterial:10>, [<ore:gemDiamond>, <ore:gemEmerald>]);

// Make Rubber Balls use the OreDict
recipes.remove(<EMT:EMTItems:10>);
recipes.addShaped(<EMT:EMTItems:10>, [[<ore:itemRubber>, <ore:itemRubber>], 
																	    [<ore:itemRubber>, <ore:itemRubber>]]);

// Make Mirrors give 3 items instead of 2 per craft, but makes them use Silver or Aluminum
recipes.removeShaped(<SolarFlux:mirror>);
recipes.addShaped(<SolarFlux:mirror>*3, [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
																	    [null, <ore:ingotSilver>, null]]);

recipes.addShaped(<SolarFlux:mirror>*3, [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
																	    [<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>]]);

// Change the Tater Motor's recipe, and lets it use poisonous potatoes
recipes.remove(<SuperMultiDrills:DrillBattery>);
recipes.addShaped(<SuperMultiDrills:DrillBattery>, [[<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>],
																					     [<ore:ingotCopper>, <minecraft:potato>, <ore:ingotCopper>],
																					     [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]]);

recipes.addShaped(<SuperMultiDrills:DrillBattery>, [[<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>],
																					     [<ore:ingotCopper>, <minecraft:poisonous_potato>, <ore:ingotCopper>],
																					     [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]]);

// Fix the recipe for Flux-Infused Boots so it matches other boots
recipes.removeShaped(<RedstoneArsenal:armor.bootsFlux>);
recipes.addShaped(<RedstoneArsenal:armor.bootsFlux>, [[null, null, null],
																								  [<RedstoneArsenal:material:128>, null, <RedstoneArsenal:material:128>],
																								  [<RedstoneArsenal:material:128>, null, <RedstoneArsenal:material:128>]]);

print("tech-mods.zs loaded");