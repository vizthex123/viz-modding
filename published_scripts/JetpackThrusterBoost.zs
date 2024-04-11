# Boosts Simply Jetpacks 2's thruster recipes, you gain 2 per now instead of 1
# Currently only supports Thermal Expansion
# Script by vizthex
# https://www.curseforge.com/members/vizthex/projects

print("JetpackThrusterBoost.zs loading...");

// Leadstone
recipes.remove(<simplyjetpacks:metaitemmods:20>);
recipes.addShaped(<simplyjetpacks:metaitemmods:20>*2, [[<ore:ingotLead>, <thermalfoundation:material:513>, <ore:ingotLead>],
                                    	                 			                [<thermaldynamics:duct_0>, <thermalexpansion:dynamo:3>, <thermaldynamics:duct_0>],
                                   	               			                [<ore:ingotLead>, <ore:dustRedstone>, <ore:ingotLead>]]);
// Hardened
recipes.remove(<simplyjetpacks:metaitemmods:21>);
recipes.addShaped(<simplyjetpacks:metaitemmods:21>*2, [[<ore:ingotInvar>, <thermalfoundation:material:513>, <ore:ingotInvar>],
                                    	                 			                [<thermaldynamics:duct_0:1>, <thermalexpansion:dynamo:1>, <thermaldynamics:duct_0:1>],
                                   	               			                [<ore:ingotInvar>, <ore:dustRedstone>, <ore:ingotInvar>]]);
// Reinforced
recipes.remove(<simplyjetpacks:metaitemmods:22>);
recipes.addShaped(<simplyjetpacks:metaitemmods:22>*2, [[<ore:ingotElectrum>, <thermalfoundation:material:513>, <ore:ingotElectrum>],
                                    	                 			                [<thermaldynamics:duct_0:2>, <thermalexpansion:dynamo:4>, <thermaldynamics:duct_0:2>],
                                   	               			                [<ore:ingotElectrum>, <forge:bucketfilled>.withTag({FluidName: "redstone", Amount: 1000}), <ore:ingotInvar>]]);
// Resonant
recipes.remove(<simplyjetpacks:metaitemmods:23>);
recipes.addShaped(<simplyjetpacks:metaitemmods:23>*2, [[<ore:ingotEnderium>, <thermalfoundation:material:513>, <ore:ingotEnderium>],
                                    	                 			                [<thermaldynamics:duct_0:4>, <thermalexpansion:dynamo:4>, <thermaldynamics:duct_0:4>],
                                   	               			                [<ore:ingotEnderium>, <forge:bucketfilled>.withTag({FluidName: "redstone", Amount: 1000}), <ore:ingotEnderium>]]);
// Fluxed
recipes.remove(<simplyjetpacks:metaitemmods:24>);
recipes.addShaped(<simplyjetpacks:metaitemmods:24>*2, [[<simplyjetpacks:metaitemmods:28>, <simplyjetpacks:metaitemmods:23>, <simplyjetpacks:metaitemmods:28>],
                                    	                 			                [<redstonearsenal:material:224>, <ore:blockSignalum>, <redstonearsenal:material:224>],
                                   	               			                [<simplyjetpacks:metaitemmods:28>, <simplyjetpacks:metaitemmods:23>, <simplyjetpacks:metaitemmods:28>]]);

print("JetpackThrusterBoost.zs loaded");