# Changes things related to Flux Networks

print("FluxNetworks.zs loading...");

// Flux Blocks (Flux Networks) Fix
recipes.remove(<fluxnetworks:fluxblock>);
recipes.addShaped(<fluxnetworks:fluxblock>, [[<fluxnetworks:flux>, <fluxnetworks:flux>, <fluxnetworks:flux>],
                              			          [<fluxnetworks:flux>, <fluxnetworks:flux>, <fluxnetworks:flux>],
                              			          [<fluxnetworks:flux>, <fluxnetworks:flux>, <fluxnetworks:flux>]]);

// Changes Flux Storage recipes
recipes.remove(<fluxnetworks:fluxstorage>);
recipes.remove(<fluxnetworks:herculeanfluxstorage>);
recipes.remove(<fluxnetworks:gargantuanfluxstorage>);
recipes.addShaped(<fluxnetworks:fluxstorage>, [[<fluxnetworks:flux>, <fluxnetworks:fluxcore>, <fluxnetworks:flux>],
                                  			               [<fluxnetworks:fluxcore>, <fluxnetworks:fluxblock>, <fluxnetworks:fluxcore>],
				               [<fluxnetworks:flux>, <fluxnetworks:fluxcore>, <fluxnetworks:flux>]]);

recipes.addShaped(<fluxnetworks:herculeanfluxstorage>, [[null, <fluxnetworks:fluxcore>, null],
                                  			                                 [<fluxnetworks:fluxcore>, <fluxnetworks:fluxstorage>, <fluxnetworks:fluxcore>],
				                                 [null, <fluxnetworks:fluxcore>, null]]);

recipes.addShaped(<fluxnetworks:gargantuanfluxstorage>, [[null, <fluxnetworks:fluxcore>, null],
                                  			                                 [<fluxnetworks:fluxcore>, <fluxnetworks:herculeanfluxstorage>, <fluxnetworks:fluxcore>],
				                                 [null, <fluxnetworks:fluxcore>, null]]);
// Conversions
recipes.addShapeless(<fluxnetworks:fluxplug>, [<fluxnetworks:fluxpoint>, <fluxnetworks:flux>]);
recipes.addShapeless(<fluxnetworks:fluxpoint>, [<fluxnetworks:fluxplug>, <fluxnetworks:flux>]);

// Tooltips
<fluxnetworks:fluxstorage>.addTooltip(format.aqua("Storage Capacity: 5,000 RF"));
<fluxnetworks:fluxstorage>.addTooltip(format.green("Transfer Rate: 500 RF/t"));

<fluxnetworks:herculeanfluxstorage>.addTooltip(format.aqua("Storage Capacity: 10,000 RF"));
<fluxnetworks:herculeanfluxstorage>.addTooltip(format.green("Transfer Rate: 1,000 RF/t"));

<fluxnetworks:gargantuanfluxstorage>.addTooltip(format.aqua("Storage Capacity: 25,000 RF"));
<fluxnetworks:gargantuanfluxstorage>.addTooltip(format.green("Transfer Rate: 2,500 RF/t:"));

print("FluxNetworks.zs loaded");