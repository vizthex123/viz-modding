// REDSTONE ARSENAL

# Flux-Infused Boots recipe fix
recipes.removeShaped(<RedstoneArsenal:armor.bootsFlux>);
recipes.addShaped(<RedstoneArsenal:armor.bootsFlux>, [[null, null, null],
                                                          		                              [<RedstoneArsenal:material:128>, null, <RedstoneArsenal:material:128>],
																							  [<RedstoneArsenal:material:128>, null, <RedstoneArsenal:material:128>]]);
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// SUPER SOLAR PANELS
# Administrator Solar Panel recipe
recipes.addShaped(<supersolarpanel:AdminSolarPanel>, [[<supersolarpanel:SingularSolarPanel>, <AdvancedSolarPanel:asp_crafting_items:13>, <supersolarpanel:SingularSolarPanel>],
                                                                                                              [<AdvancedSolarPanel:asp_crafting_items:13>, <ganysend:timeManipulator>, <AdvancedSolarPanel:asp_crafting_items:13>],
                                                                                                              [<supersolarpanel:SingularSolarPanel>, <AdvancedSolarPanel:asp_crafting_items:13>, <supersolarpanel:SingularSolarPanel>]]);
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// INDUSTRIAL CRAFT 2
# Alt Recipe for cables
# This acts like the pre-Experimental versions did
recipes.remove(<IC2:itemCable>);
recipes.remove(<IC2:itemCable:3>);
recipes.remove(<IC2:itemCable:9>);
recipes.remove(<IC2:itemCable:13>);

# Copper Cable
recipes.addShaped(<IC2:itemCable> * 6, [[<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>],
                                                                    [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
                                                                    [<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>]]);
# Gold Cable
recipes.addShaped(<IC2:itemCable:3> * 2, [[<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>],
																	   [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>],
																	   [<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>]]);
# Tin Cable
recipes.addShaped(<IC2:itemCable:13> * 6, [[<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>],
                                                                         [<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>],
                                                                         [<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>]]);
# Glass Fibre Cable recipe
# Similar to the regular one, but gives 4 cables instead
# I cna't modify the IC2 recipes since they used their own crafting handler (annoyingly)
recipes.removeShaped(<IC2:itemCable:9>);
recipes.addShaped(<IC2:itemCable:9> * 4, [[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
																	   [<IC2:itemDust2:2>, <IC2:itemDust2:2>, <IC2:itemDust2:2>],
																	   [<minecraft:glass>, <minecraft:glass>, <minecraft:glass>]]);
# Fixed Coolant Cell recipes
# Water Bucket
recipes.addShaped(<IC2:reactorCoolantSimple:1>, [[null, <ore:ingotTin>, null],
                                                                                      [<ore:ingotTin>, <minecraft:water_bucket>, <ore:ingotTin>],
                                                                                      [null, <ore:ingotTin>, null]]);
# Water Bottle
recipes.addShaped(<IC2:reactorCoolantSimple:1>, [[null, <ore:ingotTin>, null],
                                                                                      [<ore:ingotTin>, <minecraft:potion>, <ore:ingotTin>],
                                                                                      [null, <ore:ingotTin>, null]]);
# Water Cell
recipes.addShaped(<IC2:reactorCoolantSimple:1>, [[null, <ore:ingotTin>, null],
                                                                                      [<ore:ingotTin>, <IC2:itemCellEmpty:1>, <ore:ingotTin>],
                                                                                      [null, <ore:ingotTin>, null]]);
# Diamond Drill recipe fix
# This is because the turning table is cancerous and doesn't work right
# Will only work with fully charged or fully uncharge drills, cuz idk how to use metadatas
# Uncharged
recipes.addShaped(<IC2:itemToolDDrill:26>, [[null, null, null],
                                                                            [null, <minecraft:diamond>, null],
                                                                            [<minecraft:diamond>, <IC2:itemToolDrill:26>, <minecraft:diamond>]]);
# Charged
recipes.addShaped(<IC2:itemToolDDrill:1>, [[null, null, null],
                                                                          [null, <minecraft:diamond>, null],
                                                                          [<minecraft:diamond>, <IC2:itemToolDrill:1>, <minecraft:diamond>]]);
# Advanced BatPack upgrade recipe
# Recipe #1 (Partially Charged)
recipes.addShaped(<IC2:itemArmorAdvBatpack:1>.withTag({charge: 60000.0}), [[<IC2:itemAdvBat:26>, <ore:circuitAdvanced>, <IC2:itemAdvBat:26>],
																						[<IC2:itemAdvBat:26>, <IC2:itemArmorBatpack:1>.withTag({charge: 60000.0}), <IC2:itemAdvBat:26>],
                                     				                                    [<IC2:itemAdvBat:26>, null, <IC2:itemAdvBat:26>]]);
# Recipe #2 (Uncharged)
recipes.addShaped(<IC2:itemArmorAdvBatpack:27>, [[<IC2:itemAdvBat:26>, <ore:circuitAdvanced>, <IC2:itemAdvBat:26>],
																					     [<IC2:itemAdvBat:26>, <IC2:itemArmorBatpack:27>, <IC2:itemAdvBat:26>],
																					     [<IC2:itemAdvBat:26>, null, <IC2:itemAdvBat:26>]]);
# Convert Rubber to Rubber!
recipes.addShapeless(<IC2:itemRubber> * 2, [<MineFactoryReloaded:rubber.bar>]);

// Same as above, but with raw rubber
recipes.addShapeless(<IC2:itemRubber>, [<MineFactoryReloaded:rubber.raw>, <MineFactoryReloaded:rubber.raw>]);
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// SUPER MULTI-DRILLS
# Tater Motor fix
# Lets the Tater Motor use poisonous potatos
# Recipe 1 (Iron)
recipes.addShaped(<SuperMultiDrills:DrillBattery>, [[<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>],
																					   [<ore:ingotIron>, <minecraft:poisonous_potato>, <ore:ingotIron>],
																					   [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]]);
# Recipe 2 (Copper)
recipes.addShaped(<SuperMultiDrills:DrillBattery>, [[<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>],
																					   [<ore:ingotCopper>, <minecraft:poisonous_potato>, <ore:ingotCopper>],
																					   [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]]);
# Drill Upgrade: Fortune (Super Multi-Drills) recipe fix
# Original one is a bit too expensive 
recipes.removeShaped(<SuperMultiDrills:DrillUpgrade:3>);
recipes.addShaped(<SuperMultiDrills:DrillUpgrade:3>, [[<ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>],
																						    [<SuperMultiDrills:CraftingItem>, <ore:gemDiamond>, <SuperMultiDrills:CraftingItem>],
																						    [null, null, null]]);
# Alt Recipe (Apatite and Emerald)
recipes.addShaped(<SuperMultiDrills:DrillUpgrade:3>, [[<Forestry:resourceStorage>, <Forestry:resourceStorage>, <Forestry:resourceStorage>],
																						    [<SuperMultiDrills:CraftingItem>, <ore:gemEmerald>, <SuperMultiDrills:CraftingItem>],
																						    [<Forestry:resourceStorage>, <Forestry:resourceStorage>, <Forestry:resourceStorage>]]);
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// SOLAR FLUX

# Fixes Mirror Recipes
// By "fixes" I mean "changes", by making them give 3 per instead of 2. Same recipes though.
# Iron Ingot
recipes.removeShaped(<SolarFlux:mirror>);
recipes.addShaped(<SolarFlux:mirror> * 3, [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
                                                                                   [null, <ore:ingotIron>, null],
                                                                                   [null, null, null]]);
# Tin Ingot
recipes.addShaped(<SolarFlux:mirror> * 3, [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
                                                                                   [null, <ore:ingotTin>, null],
                                                                                   [null, null, null]]);
# Aluminium Ingot
recipes.addShaped(<SolarFlux:mirror> * 3, [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
                                                                                   [null, <ore:ingotAluminum>, null],
                                                                                   [null, null, null]]);
# Fixes Efficency Upgrade recipe
// Regular one is a big too expensive/didn't work
recipes.removeShaped(<SolarFlux:upgradeEfficiency>);
recipes.addShaped(<SolarFlux:upgradeEfficiency>, [[null, <SolarFlux:solarCell1>, null],
                                                                                      [<SolarFlux:solarCell1>, <SolarFlux:upgradeBlank>, <SolarFlux:solarCell1>],
                                                                                      [null, <SolarFlux:solarCell1>, null]]);
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// APPLIED ENERGISTICS 2
# New ME Controller recipe
# Originally made by FTB Team for Infinity Evolved Expert Mode
recipes.remove(<appliedenergistics2:tile.BlockController>);
recipes.addShaped(<appliedenergistics2:tile.BlockController>, [[<appliedenergistics2:tile.BlockSkyStone:1>, <ore:crystalPureFluix>, <appliedenergistics2:tile.BlockSkyStone:1>], 
                                                                                                                        [<appliedenergistics2:item.ItemMultiMaterial:24>, <appliedenergistics2:item.ToolCertusQuartzWrench>, <appliedenergistics2:item.ItemMultiMaterial:24>],                                                                                                                     		                    [<appliedenergistics2:tile.BlockSkyStone:1>, <ore:crystalPureFluix>, <appliedenergistics2:tile.BlockSkyStone:1>]]);