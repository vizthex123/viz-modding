# Changes recipes from Simply Jetpacks
# Copied from my Aurora's Adventurer modpack

print("simply_jetpacks.zs loading...");

// Leather Strap uses OreDict
recipes.remove(<simplyjetpacks:metaitem:4>);
recipes.addShaped(<simplyjetpacks:metaitem:4>, [[null, null, null],
                                   			                  [<ore:leather>, <ore:ingotIron>, <ore:leather>],
                                  			                  [<ore:leather>, <ore:ingotIron>, <ore:leather>]]);
// Thruster Recipes Fixes
recipes.remove(<simplyjetpacks:metaitemmods:20>);
recipes.remove(<simplyjetpacks:metaitemmods:21>);
recipes.remove(<simplyjetpacks:metaitemmods:22>);
recipes.remove(<simplyjetpacks:metaitemmods:23>);
recipes.addShaped(<simplyjetpacks:metaitemmods:20>*2, [[<ore:ingotLead>, <thermalfoundation:material:513>, <ore:ingotLead>],
                                     				                [<thermaldynamics:duct_0>, <thermalexpansion:dynamo:3>, <thermaldynamics:duct_0>],
                                      				                [<ore:ingotLead>, <ore:dustRedstone>, <ore:ingotLead>]]);

recipes.addShaped(<simplyjetpacks:metaitemmods:21>*2, [[<ore:ingotInvar>, <thermalfoundation:material:513>, <ore:ingotInvar>],
                                     				                [<thermaldynamics:duct_0:1>, <thermalexpansion:dynamo:1>, <thermaldynamics:duct_0:1>],
                                      				                [<ore:ingotInvar>, <projectred-core:resource_item:105>, <ore:ingotInvar>]]);

recipes.addShaped(<simplyjetpacks:metaitemmods:22>*2, [[<ore:ingotElectrum>, <thermalfoundation:material:513>, <ore:ingotElectrum>],
                                     				                [<thermaldynamics:duct_0:2>, <thermalexpansion:dynamo:4>, <thermaldynamics:duct_0:2>],
                                      				                [<ore:ingotElectrum>, <forge:bucketfilled>.withTag({FluidName: "redstone", Amount: 1000}), <ore:ingotElectrum>]]);

recipes.addShaped(<simplyjetpacks:metaitemmods:23>*2, [[<ore:ingotEnderium>, <thermalfoundation:material:513>, <ore:ingotEnderium>],
                                     				                [<thermaldynamics:duct_0:3>, <thermalexpansion:dynamo:4>, <thermaldynamics:duct_0:3>],
                                      				                [<ore:ingotEnderium>, <forge:bucketfilled>.withTag({FluidName: "redstone", Amount: 1000}), <ore:ingotEnderium>]]);

// Change the recipe for the Glowstone Elevation Unit (Empty)

// Change the recipe for the Cryotheum Coolant Unit (Empty)



/*
// Changes recipe for Fluxed Thruster
recipes.remove(<simplyjetpacks:metaitemmods:24>);
recipes.addShaped(<simplyjetpacks:metaitemmods:24>*2, [[<ore:ingotSignalum>, <simplyjetpacks:metaitemmods:26>, <ore:ingotSignalum>],
                                   			                                    [<simplyjetpacks:metaitemmods:23>, <simplyjetpacks:metaitemmods:26>, <simplyjetpacks:metaitemmods:23>],
                                  			                                    [<simplyjetpacks:metaitemmods:28>, <simplyjetpacks:metaitemmods:19>, <simplyjetpacks:metaitemmods:28>]]);
*/
// Changes the recipe for the Flux-Infused JetPlate


print("simply_jetpacks.zs loaded");