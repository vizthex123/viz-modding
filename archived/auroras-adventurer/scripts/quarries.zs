# Change things related to all Quarries
# OreDict entries are in 3_OreDict.zs

print("Loading quarries.zs...");

// Add upgrade recipe for the Quantum Quarry
recipes.remove(<extrautils2:quarry>);
mods.extendedcrafting.TableCrafting.addShaped(2, <extrautils2:quarry>, 
	[[<minecraft:end_stone>, <minecraft:end_stone>, <ore:highTierPickaxe>, <minecraft:end_stone>, <minecraft:end_stone>],
	[<minecraft:end_stone>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <minecraft:end_stone>],
	[<ore:highTierPickaxe>, <extrautils2:decorativesolid:7>, <buildcraftbuilders:quarry>, <extrautils2:decorativesolid:7>, <ore:highTierPickaxe>],
	[<minecraft:end_stone>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <minecraft:end_stone>],
	[<minecraft:end_stone>, <minecraft:end_stone>, <ore:highTierPickaxe>, <minecraft:end_stone>, <minecraft:end_stone>]]);

// Make the Actuator use the OreDict
recipes.removeShaped(<extrautils2:quarryproxy>);
recipes.addShaped(<extrautils2:quarryproxy>, [[<minecraft:end_stone>, <minecraft:end_rod>, <minecraft:end_stone>],
                                      			             [<minecraft:end_stone>, <ore:highTierPickaxe>, <minecraft:end_stone>],
                                  			              [<ore:quartzDark>, <extrautils2:decorativesolid:7>, <ore:quartzDark>]]);
														  
// Change the recipe for the Fueled Quarry
// Makes it a bit cheaper
recipes.remove(<simplequarry:fuel_quarry>);
recipes.addShaped(<simplequarry:fuel_quarry>, [[<ore:dustRedstone>, <minecraft:ender_pearl>, <ore:dustRedstone>],
                                    			               [<ore:coal>, <ore:midTierPickaxe>, <ore:coal>],
                                			               [<ore:gearGold>, <minecraft:furnace>, <ore:gearGold>]]);

recipes.addShaped(<simplequarry:fuel_quarry>, [[<ore:dustRedstone>, <minecraft:ender_pearl>, <ore:dustRedstone>],
                                    			               [<extrautils2:ingredients:4>, <ore:midTierPickaxe>, <extrautils2:ingredients:4>],
                                			               [<ore:gearIron>, <minecraft:furnace>, <ore:gearIron>]]);
// Change recipe for the Powered Quarry
// It's meant to be a mid-tier between the Fueled and BuildCraft Quarries
recipes.remove(<simplequarry:powered_quarry>);
recipes.addShaped(<simplequarry:powered_quarry>, [[<ore:dustRedstone>, <minecraft:hopper>, <ore:dustRedstone>],
                                                                                                         [<thermalfoundation:material:513>, <simplequarry:fuel_quarry>, <thermalfoundation:material:515>],
                                                      			     [<ore:gearConstantan>, <ore:highTierPickaxe>, <ore:gearConstantan>]]);

// Add an alternate recipe to the BuildCraft Quarry
recipes.remove(<buildcraftbuilders:quarry>);
recipes.addShaped(<buildcraftbuilders:quarry>, [[<ore:gearTin>, <projectred-core:resource_item:105>, <ore:gearTin>],
                                  			               [<ore:gearCopper>, <ore:gearEmerald>, <ore:gearCopper>],
                                 			               [<ore:gearIron>, <simplequarry:powered_quarry>, <ore:gearIron>]]);

print("quarries.zs loaded");