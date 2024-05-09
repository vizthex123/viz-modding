# Changes things related to Flux Networks
/*
recipes.addShaped(<output>, [[<null>, <null>, <null>],
                                      [<null>, <null>, <null>],
                                      [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
recipes.remove(<item>);
recipes.removeShaped(<item>);
recipes.removeShapeless(<item>);
<item>.addTooltip("Tooltip");
<item>.addShiftTooltip("Tooltip");
*/
print("Loading FluxNetworks.zs...");

// Convert Points & Plugs
recipes.addShapeless(<fluxnetworks:fluxplug>, [<fluxnetworks:fluxpoint>, <fluxnetworks:fluxblock>]);
recipes.addShapeless(<fluxnetworks:fluxpoint>, [<fluxnetworks:fluxplug>, <minecraft:redstone_block>]);
/*
// Add alternate Flux recipes
recipes.addShapeless(<fluxnetworks:flux>*4, [<minecraft:lava_bucket>, <sccraftingrunes:itemcommonmat>, <sccraftingrunes:itemcommonmat>, <sccraftingrunes:itemcommonmat>, <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>]);

recipes.addShapeless(<fluxnetworks:flux>*8, [<minecraft:lava_bucket>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemuncommonmat>, <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>]);

recipes.addShapeless(<fluxnetworks:flux>*16, [<minecraft:lava_bucket>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <ore:blockRedstone>, <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>]);

recipes.addShapeless(<fluxnetworks:flux>*32, [<minecraft:lava_bucket>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemlegendarymat>, <ore:blockRedstone>, <ore:blockRedstone>, <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>]);
*/
// Change recipes for storage blocks
recipes.remove(<fluxnetworks:fluxstorage>);
recipes.remove(<fluxnetworks:herculeanfluxstorage>);
recipes.remove(<fluxnetworks:gargantuanfluxstorage>);
recipes.addShaped(<fluxnetworks:fluxstorage>, [[<ore:dustRedstone>, <fluxnetworks:fluxblock>, <ore:dustRedstone>],
                                   			              [<ore:paneGlass>, null, <ore:paneGlass>],
                                      			              [<ore:dustRedstone>, <fluxnetworks:fluxblock>, <ore:dustRedstone>]]);

recipes.addShaped(<fluxnetworks:herculeanfluxstorage>, [[<ore:dustRedstone>, <fluxnetworks:fluxstorage>, <ore:dustRedstone>],
                                   			                                [<ore:paneGlass>, null, <ore:paneGlass>],
                                      			                                [<ore:dustRedstone>, <fluxnetworks:fluxblock>, <ore:dustRedstone>]]);

recipes.addShaped(<fluxnetworks:gargantuanfluxstorage>, [[<ore:dustRedstone>, <fluxnetworks:herculeanfluxstorage>, <ore:dustRedstone>],
                                   			                                    [<ore:paneGlass>, null, <ore:paneGlass>],
                                      			                                    [<ore:dustRedstone>, <fluxnetworks:fluxblock>, <ore:dustRedstone>]]);
// Change recipe for Flux Cores
recipes.remove(<fluxnetworks:fluxcore>);
recipes.addShaped(<fluxnetworks:fluxcore>*4, [[<fluxnetworks:flux>, <minecraft:obsidian>, <fluxnetworks:flux>],
                                    			             [<minecraft:obsidian>, <minecraft:ender_pearl>, <minecraft:obsidian>],
				             [<fluxnetworks:flux>, <minecraft:obsidian>, <fluxnetworks:flux>]]);
// Change recipe for the blocks
recipes.remove(<fluxnetworks:fluxblock>);
recipes.addShaped(<fluxnetworks:fluxblock>, [[<fluxnetworks:flux>, <fluxnetworks:flux>, <fluxnetworks:flux>],
                                     			          [<fluxnetworks:flux>, <fluxnetworks:flux>, <fluxnetworks:flux>],
                                      			          [<fluxnetworks:flux>, <fluxnetworks:flux>, <fluxnetworks:flux>]]);

recipes.addShaped(<fluxnetworks:fluxblock>*2, [[<fluxnetworks:flux>, <fluxnetworks:fluxcore>, <fluxnetworks:flux>],
                                     			               [<fluxnetworks:fluxcore>, <fluxnetworks:flux>, <fluxnetworks:fluxcore>],
                                      			               [<fluxnetworks:flux>, <fluxnetworks:fluxcore>, <fluxnetworks:flux>]]);
// Tooltips
<fluxnetworks:fluxplug>.addTooltip(format.aqua("Transfers 20,000 RF/t"));
<fluxnetworks:fluxpoint>.addTooltip(format.aqua("Transfers 20,000 RF/t"));

<fluxnetworks:fluxstorage>.addTooltip(format.green("Stores 5,000 RF"));
<fluxnetworks:fluxstorage>.addTooltip(format.aqua("Transfers 500 RF/t"));

<fluxnetworks:herculeanfluxstorage>.addTooltip(format.green("Stores 10,000 RF"));
<fluxnetworks:herculeanfluxstorage>.addTooltip(format.aqua("Transfers 1,000 RF/t"));

<fluxnetworks:gargantuanfluxstorage>.addTooltip(format.green("Stores 25,000 RF"));
<fluxnetworks:gargantuanfluxstorage>.addTooltip(format.aqua("Transfers 2,500 RF/t"));

print("FluxNetworks.zs loaded");