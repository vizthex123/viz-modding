# Adds recipes to the Extended Crafting mod
# Note that some recipes will be in their respective script, this is more like misc.zs - a catch-all for things that don't fit neatly anywhere else
print("ExtendedCrafting.zs loading...");
/*
recipes.remove(<>);
recipes.addShaped(<output>, [[<null>, <null>, <null>],
                                      [<null>, <null>, <null>],
                                      [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);

Use the recipe wand for table recipes

Combination Crafting: (Crafting Core + Pedestals)
mods.extendedcrafting.CombinationCrafting.addRecipe(<output>, rfCost, RFRATE, <catalyst>, [<input1>, <input2>, <up to 48 max>]);

mods.extendedcrafting.CombinationCrafting.remove(<output>);


Quantum Compression Crafting:
mods.extendedcrafting.CompressionCrafting.addRecipe(<output>, <input>, inputCount, <catalyst>, rfCost, rfRate);

mods.extendedcrafting.CompressionCrafting.remove(<output>);


Ender Crafting:
mods.extendedcrafting.EnderCrafting.addShaped(<output>, [[<input>, <input>, <input>], [<input>, <input>, <input>], [<input>, <input>, <input>]], SECONDS); 

mods.extendedcrafting.EnderCrafting.addShapeless(<output>, [<input1>, <input2>, <up to 9 max>], SECONDS); 

mods.extendedcrafting.EnderCrafting.remove(<output>);
*/

// Tooltips
<extendedcrafting:table_basic>.addTooltip(format.green("Works like a normal crafting table"));
<extendedcrafting:table_basic>.addTooltip(format.green("Retains contents if UI is closed"));
<extendedcrafting:table_elite>.addTooltip(format.red("Currently useless!"));
<extendedcrafting:table_ultimate>.addTooltip(format.red("Currently useless!"));

// Data Disk recipes
// Starts at Iron since you need to power the machine
print("All Data Disk recipes are in ExtendedCrafting.zs!");

recipes.addShapeless(<contenttweaker:datadisk_military>, [<ore:arrow>, <ore:arrow>, <ore:arrow>, <ore:arrow>]);
recipes.addShapeless(<contenttweaker:datadisk_military>*2, [<foundry:roundnormal>, <foundry:roundnormal>, <foundry:roundnormal>, <foundry:roundnormal>]);
recipes.addShapeless(<contenttweaker:datadisk_military>*3, [<foundry:roundhollow>, <foundry:roundhollow>, <foundry:roundhollow>, <foundry:roundhollow>]);
recipes.addShapeless(<contenttweaker:datadisk_military>*4, [<foundry:roundap>, <foundry:roundap>, <foundry:roundap>, <foundry:roundap>]);


recipes.addShapeless(<contenttweaker:datadisk_stone>, [<extrautils2:compressedcobblestone>, <ore:cobblestone>]);
recipes.addShapeless(<contenttweaker:datadisk_bronze>, [<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>]);
recipes.addShapeless(<contenttweaker:datadisk_iron>, [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]);

mods.extendedcrafting.TableCrafting.addShapeless(0, <contenttweaker:datadisk_industrial_unref>, [<ore:ingotSteel>, <mekanism:enrichedalloy>, <mekanism:enrichedalloy>]);
mods.extendedcrafting.TableCrafting.addShapeless(0, <contenttweaker:datadisk_machine_unref>*2, [<mekanism:basicblock:8>, <mekanism:reinforcedalloy>, <mekanism:reinforcedalloy>]);
mods.extendedcrafting.TableCrafting.addShapeless(0, <contenttweaker:datadisk_information_unref>*2, [<ore:ingotCarbon>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:processor:5>, <refinedstorage:processor:4>, <refinedstorage:processor:3>]);

mods.extendedcrafting.TableCrafting.addShapeless(0, <contenttweaker:datadisk_atomic>*4, [<contenttweaker:proton>, <contenttweaker:proton>, <contenttweaker:proton>, <contenttweaker:proton>, <contenttweaker:neutron>, <contenttweaker:electron>, <contenttweaker:electron>, <contenttweaker:electron>, <contenttweaker:electron>]);


mods.extendedcrafting.CompressionCrafting.addRecipe(<contenttweaker:datadisk_industrial>, <contenttweaker:datadisk_industrial_unref>, 8, <extendedcrafting:material:8>, 5000, 50);
mods.extendedcrafting.CompressionCrafting.addRecipe(<contenttweaker:datadisk_machine>, <contenttweaker:datadisk_machine_unref>, 16, <extendedcrafting:material:9>, 10000, 100);
mods.extendedcrafting.CompressionCrafting.addRecipe(<contenttweaker:datadisk_information>, <contenttweaker:datadisk_information_unref>, 16, <extendedcrafting:material:10>, 50000, 500);


mods.extendedcrafting.CompressionCrafting.addRecipe(<contenttweaker:neutron>*6, <projectred-core:resource_item:342>, 12, <mekanism:atomicalloy>, 80000, 1225);
mods.extendedcrafting.CompressionCrafting.addRecipe(<contenttweaker:proton>*4, <magneticraft:crafting:4>, 8, <projectred-core:resource_item:104>, 100000, 1750);
mods.extendedcrafting.CompressionCrafting.addRecipe(<contenttweaker:electron>*4, <magneticraft:crafting:4>, 8, <projectred-core:resource_item:103>, 120000, 2400);


// Buff Pedestal crafting
recipes.remove(<extendedcrafting:pedestal>);
recipes.addShaped(<extendedcrafting:pedestal>*4, [[null, <extendedcrafting:material>, null],
                                   				 [null, <extendedcrafting:material>, null],
                                				 [<extendedcrafting:material>, <extendedcrafting:storage>, <extendedcrafting:material>]]);

// Change the recipe for the Small Tank (Magneticraft) since it's rather OP
recipes.remove(<magneticraft:small_tank>);
mods.extendedcrafting.TableCrafting.addShaped(0, <magneticraft:small_tank>, 
	[[<magneticraft:multiblock_parts:2>, <magneticraft:multiblock_parts:2>, <magneticraft:multiblock_parts:2>], 
	[<openblocks:tank>, <magneticraft:multiblock_parts:2>, <openblocks:tank>], 
	[<magneticraft:multiblock_parts:2>, <magneticraft:multiblock_parts:2>, <magneticraft:multiblock_parts:2>]]);

mods.extendedcrafting.TableCrafting.addShaped(0, <magneticraft:small_tank>, 
	[[<magneticraft:multiblock_parts:2>, <magneticraft:multiblock_parts:2>, <magneticraft:multiblock_parts:2>], 
	[null, <foundry:infernotank>, null], 
	[<magneticraft:multiblock_parts:2>, <magneticraft:multiblock_parts:2>, <magneticraft:multiblock_parts:2>]]);

mods.extendedcrafting.TableCrafting.addShaped(0, <magneticraft:small_tank>, 
	[[<magneticraft:multiblock_parts:5>, <buildcraftfactory:tank>, <magneticraft:multiblock_parts:5>], 
	[<buildcraftfactory:tank>, null, <buildcraftfactory:tank>], 
	[<magneticraft:multiblock_parts:5>, <buildcraftfactory:tank>, <magneticraft:multiblock_parts:5>]]);


// Change the Automation Interface recipe
recipes.remove(<extendedcrafting:interface>);
mods.extendedcrafting.TableCrafting.addShaped(0, <extendedcrafting:interface>, 
	[[<extendedcrafting:material:36>, <extendedcrafting:material:8>, <extendedcrafting:material:36>],
	[<ore:ingotBronze>, <extendedcrafting:frame>, <ore:ingotBronze>], 
	[<extendedcrafting:material:36>, <ore:ingotBronze>, <extendedcrafting:material:36>]]);

// Change the Crafting Core recipe
recipes.remove(<extendedcrafting:crafting_core>);
mods.extendedcrafting.TableCrafting.addShaped(0, <extendedcrafting:crafting_core>, 
	[[<ore:ingotBlackIron>, <extendedcrafting:material:15>, <ore:ingotBlackIron>], 
	[<extendedcrafting:material:36>, <extendedcrafting:frame>, <extendedcrafting:material:36>], 
	[<ore:ingotBlackIron>, <extendedcrafting:material:8>, <ore:ingotBlackIron>]]);

// Change the Quantum Compressor recipe
recipes.remove(<extendedcrafting:compressor>);
mods.extendedcrafting.TableCrafting.addShaped(0, <extendedcrafting:compressor>, 
	[[<ore:ingotBlackIron>, <extendedcrafting:material:14>, <ore:ingotBlackIron>], 
	[<extendedcrafting:material:14>, <extendedcrafting:frame>, <extendedcrafting:material:14>], 
	[<ore:ingotBlackIron>, <extendedcrafting:material:14>, <ore:ingotBlackIron>]]);

// Change the Basic Component recipe so you can make it earlier
recipes.remove(<extendedcrafting:material:14>);
recipes.addShapeless(<extendedcrafting:material:14>, [<extendedcrafting:material:2>, <ore:ingotBronze>, <ore:ingotBronze>, <projectred-core:resource_item:105>|<minecraft:redstone>]);

recipes.addShapeless(<extendedcrafting:material:14>, [<extendedcrafting:material:2>, <ore:ingotBronze>, <ore:ingotBronze>, <ore:dustSulfur>, <ore:dustSulfur>]);

// Change the Advanced Component recipe so you can make it earlier
recipes.remove(<extendedcrafting:material:15>);
recipes.addShapeless(<extendedcrafting:material:15>, [<extendedcrafting:material:2>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <projectred-core:resource_item:105>|<minecraft:redstone>]);

// Change the recipe for the Basic Crafting Table
recipes.remove(<extendedcrafting:table_basic>);
recipes.addShaped(<extendedcrafting:table_basic>, [[<extendedcrafting:material:14>, <extendedcrafting:material:8>, <extendedcrafting:material:14>],
                                    			                     [<ore:workbench>, <ore:blockBronze>, <ore:workbench>],
                                    			                     [<extendedcrafting:material:14>, <extendedcrafting:material:2>, <extendedcrafting:material:14>]]);

// Change Ender Crafter recipe so you can get it pre-Nether
recipes.remove(<extendedcrafting:ender_crafter>);
recipes.addShaped(<extendedcrafting:ender_crafter>, [[<minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>],
                                  				       [<extendedcrafting:material:36>, <ore:workbench>, <extendedcrafting:material:36>],
                                   				       [<extendedcrafting:material:36>, <extendedcrafting:material:36>, <extendedcrafting:material:36>]]);
// Same as above, but for the Alternator
recipes.remove(<extendedcrafting:ender_alternator>);
recipes.addShaped(<extendedcrafting:ender_alternator>, [[null, <minecraft:ender_pearl>, null],
                                  				            [null, <extendedcrafting:material:36>, null],
                                   				            [<extendedcrafting:material:36>, <extendedcrafting:material:36>, <extendedcrafting:material:36>]]);

// Add a buffed alternate recipe for Black Iron
mods.extendedcrafting.EnderCrafting.addShaped(<extendedcrafting:material>*6, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
								[<ore:dyeBlack>, <ore:dyeBlack>, <ore:dyeBlack>],
								[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]], 10); 

// Same as above, but for Ender Ingot
mods.extendedcrafting.EnderCrafting.addShaped(<extendedcrafting:material:36>*6, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
								     [<minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>],
								     [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]], 20); 

// Advanced Rods (Titanium & Iridium)
recipes.removeShaped(<libvulpes:productrod:7>);
recipes.removeShaped(<libvulpes:productrod:10>);
mods.extendedcrafting.TableCrafting.addShapedMirrored(0, <libvulpes:productrod:7>*4, 
	[[null, null, <ore:ingotTitanium>], 
	[null, <ore:ingotTitanium>, null], 
	[<ore:ingotTitanium>, null, null]]);

mods.extendedcrafting.TableCrafting.addShapedMirrored(0, <libvulpes:productrod:10>*4, 
	[[null, null, <ore:ingotIridium>], 
	[null, <ore:ingotIridium>, null], 
	[<ore:ingotIridium>, null, null]]);

// Alloy Rods (Titanium-Alumide & Titanium-Iridium)
recipes.removeShaped(<advancedrocketry:productrod>);
recipes.removeShaped(<advancedrocketry:productrod:1>);
mods.extendedcrafting.TableCrafting.addShapedMirrored(0, <advancedrocketry:productrod>*4, 
	[[null, null, <ore:ingotTitaniumAluminide>], 
	[null, <ore:ingotTitaniumAluminide>, null], 
	[<ore:ingotTitaniumAluminide>, null, null]]);

mods.extendedcrafting.TableCrafting.addShapedMirrored(0, <advancedrocketry:productrod:1>*4, 
	[[null, null, <ore:ingotTitaniumIridium>], 
	[null, <ore:ingotTitaniumIridium>, null], 
	[<ore:ingotTitaniumIridium>, null, null]]);

// Quantum Quarry
recipes.remove(<extrautils2:quarry>);
mods.extendedcrafting.TableCrafting.addShaped(2, <extrautils2:quarry>, 
	[[<minecraft:nether_brick>, <minecraft:nether_brick>, <extendedcrafting:material:11>, <minecraft:nether_brick>, <minecraft:nether_brick>], 
	[<minecraft:nether_brick>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <minecraft:nether_brick>], 
	[<extendedcrafting:material:11>, <extrautils2:decorativesolid:7>, <buildcraftbuilders:quarry>, <extrautils2:decorativesolid:7>, <extendedcrafting:material:11>], 
	[<minecraft:nether_brick>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <minecraft:nether_brick>], 
	[<minecraft:nether_brick>, <minecraft:nether_brick>, <extendedcrafting:material:11>, <minecraft:nether_brick>, <minecraft:nether_brick>]]);

// Quantum Quarry Actuator
recipes.remove(<extrautils2:quarryproxy>);
mods.extendedcrafting.TableCrafting.addShaped(2, <extrautils2:quarryproxy>*6, 
	[[null, null, <techguns:itemshared:103>, null, null], 
	[<ore:netherrack>, <ore:netherrack>, <ore:stickTitaniumAluminide>, <ore:netherrack>, <ore:netherrack>], 
	[<ore:netherrack>, <ore:stickTitaniumAluminide>, <ore:stickTitaniumAluminide>, <ore:stickTitaniumAluminide>, <ore:netherrack>], 
	[<extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>], 
	[<extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>]]);

// Alternate recipe
mods.extendedcrafting.TableCrafting.addShaped(2, <extrautils2:quarryproxy>*6, 
	[[null, null, <techguns:itemshared:103>, null, null], 
	[null, null, <ore:stickTitaniumIridium>, null, null], 
	[<ore:netherrack>, <ore:stickTitaniumIridium>, <ore:stickTitaniumIridium>, <ore:stickTitaniumIridium>, <ore:netherrack>], 
	[<ore:netherrack>, <ore:netherrack>, <ore:netherrack>, <ore:netherrack>, <ore:netherrack>], 
	[<extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>]]);

// Change the recipe for Warp Stones
// Technically not that expensive, but it's meant as more of an infusion-type recipe (like in Thaumcraft 4)
recipes.remove(<waystones:warp_stone>);
mods.extendedcrafting.CombinationCrafting.addRecipe(<waystones:warp_stone>, 22500, 225, <extrautils2:ingredients:2>, [<waystones:warp_scroll>, <waystones:warp_scroll>, <waystones:warp_scroll>, <waystones:bound_scroll>, <waystones:bound_scroll>, <waystones:bound_scroll>, <waystones:return_scroll>, <waystones:return_scroll>, <waystones:return_scroll>]);


// Diamond Tools
recipes.remove(<minecraft:diamond_sword>);
recipes.remove(<minecraft:diamond_pickaxe>);
recipes.remove(<minecraft:diamond_shovel>);
recipes.remove(<minecraft:diamond_hoe>);
recipes.remove(<minecraft:diamond_axe>);

recipes.remove(<minecraft:diamond_helmet>);
recipes.remove(<minecraft:diamond_chestplate>);
recipes.remove(<minecraft:diamond_leggings>);
recipes.remove(<minecraft:diamond_boots>);

mods.extendedcrafting.TableCrafting.addShaped(0, <minecraft:diamond_sword>, 
	[[null, <ore:gemDiamond>, null], 
	[null, <ore:gemDiamond>, null], 
	[null, <ore:stickWood>, null]]);

mods.extendedcrafting.TableCrafting.addShaped(0, <minecraft:diamond_pickaxe>, 
	[[<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>], 
	[null, <ore:stickWood>, null], 
	[null, <ore:stickWood>, null]]);

mods.extendedcrafting.TableCrafting.addShapedMirrored(0, <minecraft:diamond_shovel>, 
	[[null, <ore:gemDiamond>, null], 
	[null, <ore:stickWood>, null], 
	[null, <ore:stickWood>, null]]);

mods.extendedcrafting.TableCrafting.addShapedMirrored(0, <minecraft:diamond_hoe>, 
	[[<ore:gemDiamond>, <ore:gemDiamond>, null], 
	[null, <ore:stickWood>, null], 
	[null, <ore:stickWood>, null]]);

mods.extendedcrafting.TableCrafting.addShapedMirrored(0, <minecraft:diamond_axe>, 
	[[<ore:gemDiamond>, <ore:gemDiamond>, null], 
	[<ore:gemDiamond>, <ore:stickWood>, null], 
	[null, <ore:stickWood>, null]]);


mods.extendedcrafting.TableCrafting.addShaped(0, <minecraft:diamond_helmet>, 
	[[<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>], 
	[<ore:gemDiamond>, null, <ore:gemDiamond>], 
	[null, null, null]]);

mods.extendedcrafting.TableCrafting.addShaped(0, <minecraft:diamond_chestplate>, 
	[[<ore:gemDiamond>, null, <ore:gemDiamond>], 
	[<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>], 
	[<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>]]);

mods.extendedcrafting.TableCrafting.addShaped(0, <minecraft:diamond_leggings>, 
	[[<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>], 
	[<ore:gemDiamond>, null, <ore:gemDiamond>], 
	[<ore:gemDiamond>, null, <ore:gemDiamond>]]);

mods.extendedcrafting.TableCrafting.addShaped(0, <minecraft:diamond_boots>, 
	[[null, null, null], 
	[<ore:gemDiamond>, null, <ore:gemDiamond>], 
	[<ore:gemDiamond>, null, <ore:gemDiamond>]]);

// Bedrock Miner
recipes.remove(<bedrockores:bedrock_miner>);
mods.extendedcrafting.TableCrafting.addShaped(2, <bedrockores:bedrock_miner>, 
	[[null, null, <buildcraftbuilders:quarry>, null, null], 
	[null, <ore:blockRedstone>, <ore:blockRedstone>, <ore:blockRedstone>, null], 
	[<ore:blockIron>, <minecraft:piston>, <minecraft:piston>, <minecraft:piston>, <ore:blockIron>], 
	[<ore:blockIron>, <ore:blockRedstone>, <ore:blockRedstone>, <ore:blockRedstone>, <ore:blockIron>], 
	[<ore:obsidian>, <ore:blockDiamond>, <ore:obsidian>, <ore:blockDiamond>, <ore:obsidian>]]);

# Black Hole stuff
// Unit
recipes.remove(<industrialforegoing:black_hole_unit>);
mods.extendedcrafting.TableCrafting.addShaped(2, <industrialforegoing:black_hole_unit>, 
	[[<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>], 
	[<ore:chest>, <minecraft:diamond>|<minecraft:emerald>, <openblocks:golden_eye>, <minecraft:diamond>|<minecraft:emerald>, <ore:chest>], 
	[<ore:chest>, <minecraft:ender_eye>, <mekanism:basicblock:8>|<thermalexpansion:frame>, <minecraft:ender_eye>, <ore:chest>], 
	[<ore:chest>, <minecraft:diamond>|<minecraft:emerald>, <minecraft:ender_eye>, <minecraft:diamond>|<minecraft:emerald>, <ore:chest>], 
	[<ore:chest>, <ore:chest>, <ore:chest>, <ore:chest>, <ore:chest>]]);

// Tank
recipes.remove(<industrialforegoing:black_hole_tank>);
mods.extendedcrafting.TableCrafting.addShaped(2, <industrialforegoing:black_hole_tank>, 
	[[<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>], 
	[<minecraft:bucket>, <minecraft:diamond>|<minecraft:emerald>, <openblocks:golden_eye>, <minecraft:diamond>|<minecraft:emerald>, <minecraft:bucket>], 
	[<minecraft:bucket>, <minecraft:ender_eye>, <mekanism:basicblock:8>|<thermalexpansion:frame>, <minecraft:ender_eye>, <minecraft:bucket>], 
	[<minecraft:bucket>, <minecraft:diamond>|<minecraft:emerald>, <minecraft:ender_eye>, <minecraft:diamond>|<minecraft:emerald>, <minecraft:bucket>], 
	[<minecraft:bucket>, <minecraft:bucket>, <minecraft:bucket>, <minecraft:bucket>, <minecraft:bucket>]]);

print("ExtendedCrafting.zs loaded");