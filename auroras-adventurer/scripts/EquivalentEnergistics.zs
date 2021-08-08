# Changes things from Equivalent Energistics
/*
recipes.addShaped(<output>, [[<null>, <null>, <null>],
                                    	                    [<null>, <null>, <null>],
                                   	                    [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
recipes.remove(<item>);
recipes.removeShaped(<item>);
recipes.removeShapeless(<item>);

<item>.displayName = "New Name";
<item>.addTooltip("Tooltip");
*/
print("Loading EquivalentEnergistics.zs...");

# Renames & Tooltips
<equivalentenergistics:emc_storage_component>.displayName = "ME EMC Storage Component Alpha";
<equivalentenergistics:emc_storage_component:1>.displayName = "ME EMC Storage Component Beta";
<equivalentenergistics:emc_storage_component:2>.displayName = "ME EMC Storage Component Gamma";
<equivalentenergistics:emc_storage_component:3>.displayName = "ME EMC Storage Component Delta";
<equivalentenergistics:emc_storage_component:4>.displayName = "ME EMC Storage Component Epsilon";
<equivalentenergistics:emc_storage_component:5>.displayName = "ME EMC Storage Component Theta";
<equivalentenergistics:emc_storage_component:6>.displayName = "ME EMC Storage Component Lambda";
<equivalentenergistics:emc_storage_component:7>.displayName = "ME EMC Storage Component Omega";

<equivalentenergistics:emc_cell>.displayName = "ME EMC Storage Cell Alpha";
<equivalentenergistics:emc_cell:1>.displayName = "ME EMC Storage Cell Beta";
<equivalentenergistics:emc_cell:2>.displayName = "ME EMC Storage Cell Gamma";
<equivalentenergistics:emc_cell:3>.displayName = "ME EMC Storage Cell Delta";
<equivalentenergistics:emc_cell:4>.displayName = "ME EMC Storage Cell Epsilon";
<equivalentenergistics:emc_cell:5>.displayName = "ME EMC Storage Cell Theta";
<equivalentenergistics:emc_cell:6>.displayName = "ME EMC Storage Cell Lambda";
<equivalentenergistics:emc_cell:7>.displayName = "ME EMC Storage Cell Omega";


<equivalentenergistics:emc_condenser:*>.addTooltip(format.aqua("Converts items it receives into EMC Crystals"));
<equivalentenergistics:emc_condenser>.addTooltip(format.blue("Converts a maximum of 1,024 EMC per tick"));
<equivalentenergistics:emc_condenser:1>.addTooltip(format.blue("Converts a maximum of 10,240 EMC per tick"));
<equivalentenergistics:emc_condenser:2>.addTooltip(format.blue("Converts a maximum of 102,400 EMC per tick"));
<equivalentenergistics:emc_condenser:3>.addTooltip(format.blue("Converts a maximum of 1,024,000 EMC per tick"));


<equivalentenergistics:emc_crystal>.displayName = "EMC Crystal Shard";

<equivalentenergistics:emc_book>.addTooltip(format.aqua("Bind to yourself (right-click) and place inside an EMC Assembler"));


# Change recipe for Tier 1 & 2 components
recipes.remove(<equivalentenergistics:emc_storage_component>);
recipes.remove(<equivalentenergistics:emc_storage_component:1>);
recipes.addShaped(<equivalentenergistics:emc_storage_component>, [[<projecte:item.pe_covalence_dust>, <ore:certusQuartz>, <projecte:item.pe_covalence_dust>],
                                    	                  				                  [<ore:certusQuartz>, <appliedenergistics2:material:22>, <ore:certusQuartz>],
                                   	                    			                  [<projecte:item.pe_covalence_dust>, <ore:certusQuartz>, <projecte:item.pe_covalence_dust>]]);
// Make 3 at once, like with other components
recipes.addShaped(<equivalentenergistics:emc_storage_component>*3, [[<projecte:item.pe_covalence_dust:1>, <appliedenergistics2:material:1>, <projecte:item.pe_covalence_dust:1>],
                                    	                  				                         [<appliedenergistics2:material:1>, <appliedenergistics2:material:23>, <appliedenergistics2:material:1>],
                                   	                    			                         [<projecte:item.pe_covalence_dust:2>, <appliedenergistics2:material:2>, <projecte:item.pe_covalence_dust:1>]]);

recipes.addShaped(<equivalentenergistics:emc_storage_component:1>, [[<projecte:item.pe_covalence_dust:1>, <appliedenergistics2:material:23>, <projecte:item.pe_covalence_dust:1>],
                                    	                  				                     [<equivalentenergistics:emc_storage_component>, <appliedenergistics2:quartz_glass>, <equivalentenergistics:emc_storage_component>],
                                   	                    			                     [<projecte:item.pe_covalence_dust:1>, <equivalentenergistics:emc_storage_component>, <projecte:item.pe_covalence_dust:1>]]);

// Add a recipe for the Cell Housing
recipes.addShaped(<equivalentenergistics:item_misc>, [[<appliedenergistics2:quartz_glass>, <projecte:item.pe_covalence_dust>, <appliedenergistics2:quartz_glass>],
                                    	                			        [<projecte:item.pe_covalence_dust>, null, <projecte:item.pe_covalence_dust>],
                                   	                 			        [<ore:gemDiamond>, <ore:ingotGold>, <ore:ingotIron>]]);


# Change recipe for all Storage Cells
// Makes them use Dust equal to their Tier
# 8 Total
# Tier 1 - 2 - Low
# Tier 3 - 4 - Medium
# Tier 5 - 1x Medium & 2x Low
# Tier 6 - 2x Medium & 1x High
# Tier 7 - 8 - High
// Tiers 6 - 8 use Vibrant Quartz Glass
// appliedenergistics2:quartz_vibrant_glass
// Tiers 4 - 5 use Gold instead of Iron
// 6 is 1 Diamond + 2 Gold
// 7 - 8 use Diamonds

// T1
recipes.removeShaped(<equivalentenergistics:emc_cell:*>);
recipes.addShaped(<equivalentenergistics:emc_cell>, [[<appliedenergistics2:quartz_glass>, <projecte:item.pe_covalence_dust>, <appliedenergistics2:quartz_glass>],
                                    	                                                                 [<projecte:item.pe_covalence_dust>, <equivalentenergistics:emc_storage_component>, <projecte:item.pe_covalence_dust>],
                                   	                 		                         [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);
// T2
recipes.addShaped(<equivalentenergistics:emc_cell:1>, [[<appliedenergistics2:quartz_glass>, <projecte:item.pe_covalence_dust>, <appliedenergistics2:quartz_glass>],
                                    	                                                                    [<projecte:item.pe_covalence_dust>, <equivalentenergistics:emc_storage_component:1>, <projecte:item.pe_covalence_dust>],
                                   	                 		                            [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);
// T3
recipes.addShaped(<equivalentenergistics:emc_cell:2>, [[<appliedenergistics2:quartz_glass>, <projecte:item.pe_covalence_dust:1>, <appliedenergistics2:quartz_glass>],
                                    	                                                                    [<projecte:item.pe_covalence_dust:1>, <equivalentenergistics:emc_storage_component:2>, <projecte:item.pe_covalence_dust:1>],
                                   	                 		                            [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);
// T4
recipes.addShaped(<equivalentenergistics:emc_cell:3>, [[<appliedenergistics2:quartz_glass>, <projecte:item.pe_covalence_dust:1>, <appliedenergistics2:quartz_glass>],
                                    	                                                                    [<projecte:item.pe_covalence_dust:1>, <equivalentenergistics:emc_storage_component:3>, <projecte:item.pe_covalence_dust:1>],
                                   	                 		                            [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]]);
// T5
recipes.addShaped(<equivalentenergistics:emc_cell:4>, [[<appliedenergistics2:quartz_glass>, <projecte:item.pe_covalence_dust:1>, <appliedenergistics2:quartz_glass>],
                                    	                                                                    [<projecte:item.pe_covalence_dust>, <equivalentenergistics:emc_storage_component:4>, <projecte:item.pe_covalence_dust>],
                                   	                 		                            [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]]);
// T6
recipes.addShaped(<equivalentenergistics:emc_cell:5>, [[<appliedenergistics2:quartz_vibrant_glass>, <projecte:item.pe_covalence_dust:2>, <appliedenergistics2:quartz_vibrant_glass>],
                                    	                                                                    [<projecte:item.pe_covalence_dust:1>, <equivalentenergistics:emc_storage_component:5>, <projecte:item.pe_covalence_dust:1>],
                                   	                 		                            [<ore:ingotGold>, <ore:gemDiamond>, <ore:ingotGold>]]);
// T7
recipes.addShaped(<equivalentenergistics:emc_cell:6>, [[<appliedenergistics2:quartz_vibrant_glass>, <projecte:item.pe_covalence_dust:2>, <appliedenergistics2:quartz_vibrant_glass>],
                                    	                                                                    [<projecte:item.pe_covalence_dust:2>, <equivalentenergistics:emc_storage_component:6>, <projecte:item.pe_covalence_dust:2>],
                                   	                 		                            [<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>]]);
// T8
recipes.addShaped(<equivalentenergistics:emc_cell:7>, [[<appliedenergistics2:quartz_vibrant_glass>, <projecte:item.pe_covalence_dust:2>, <appliedenergistics2:quartz_vibrant_glass>],
                                    	                                                                    [<projecte:item.pe_covalence_dust:2>, <equivalentenergistics:emc_storage_component:7>, <projecte:item.pe_covalence_dust:2>],
                                   	                 		                            [<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>]]);

print("EquivalentEnergistics.zs loaded");