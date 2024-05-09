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
<extendedcrafting:table_advanced>.addTooltip(format.green("Retains contents if UI is closed"));
<extendedcrafting:table_elite>.addTooltip(format.green("Retains contents if UI is closed"));

// Moves Long Fall Boots to a Basic Crafting Table
// Uses the same recipe
recipes.remove(<longfallboots:longfallboots>);
mods.extendedcrafting.TableCrafting.addShaped(0, <longfallboots:longfallboots>, 
	[[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>], 
	[<minecraft:obsidian>, null, <minecraft:obsidian>], 
	[<minecraft:diamond>, null, <minecraft:diamond>]]);

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
recipes.addShaped(<extendedcrafting:table_basic>, [[<extendedcrafting:material:14>, <extendedcrafting:material:14>, <extendedcrafting:material:14>],
                                    			                     [<ore:workbench>, <ore:blockBronze>, <ore:workbench>],
                                    			                     [<extendedcrafting:material:2>, <extendedcrafting:material:2>, <extendedcrafting:material:2>]]);

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
mods.extendedcrafting.TableCrafting.addShapedMirrored(0, <libvulpes:productrod:7>*3, 
	[[null, null, <ore:ingotTitanium>], 
	[null, <ore:ingotTitanium>, null], 
	[<ore:ingotTitanium>, null, null]]);

mods.extendedcrafting.TableCrafting.addShapedMirrored(0, <libvulpes:productrod:10>*3, 
	[[null, null, <ore:ingotIridium>], 
	[null, <ore:ingotIridium>, null], 
	[<ore:ingotIridium>, null, null]]);

// Alloy Rods (Titanium-Alumide & Titanium-Iridium)
recipes.removeShaped(<advancedrocketry:productrod>);
recipes.removeShaped(<advancedrocketry:productrod:1>);
mods.extendedcrafting.TableCrafting.addShapedMirrored(0, <advancedrocketry:productrod>, 
	[[null, null, <ore:ingotTitaniumAluminide>], 
	[null, <ore:ingotTitaniumAluminide>, null], 
	[<ore:ingotTitaniumAluminide>, null, null]]);

mods.extendedcrafting.TableCrafting.addShapedMirrored(0, <advancedrocketry:productrod:1>, 
	[[null, null, <ore:ingotTitaniumIridium>], 
	[null, <ore:ingotTitaniumIridium>, null], 
	[<ore:ingotTitaniumIridium>, null, null]]);

// Quantum Quarry
recipes.remove(<extrautils2:quarry>);
mods.extendedcrafting.TableCrafting.addShaped(2, <extrautils2:quarry>, 
	[[<thermalfoundation:material:326>, <extrautils2:decorativesolid:7>, <extendedcrafting:material:11>, <extrautils2:decorativesolid:7>, <thermalfoundation:material:326>], 
	[<extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <thermalfoundation:material:263>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>], 
	[<extendedcrafting:material:11>, <thermalfoundation:material:264>, <buildcraftbuilders:quarry>, <thermalfoundation:material:264>, <extendedcrafting:material:11>], 
	[<extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <thermalfoundation:material:263>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>], 
	[<thermalfoundation:material:326>, <extrautils2:decorativesolid:7>, <extendedcrafting:material:11>, <extrautils2:decorativesolid:7>, <thermalfoundation:material:326>]]);

// Quantum Quarry Actuator
recipes.remove(<extrautils2:quarryproxy>);
mods.extendedcrafting.TableCrafting.addShaped(2, <extrautils2:quarryproxy>*6, 
	[[null, null, <techguns:itemshared:103>, null, null], 
	[null, <extendedcrafting:material:36>, <thermalfoundation:material:263>, <extendedcrafting:material:36>, null], 
	[<thermalfoundation:material:326>, <thermalfoundation:material:263>, <thermalfoundation:material:263>, <thermalfoundation:material:263>, <thermalfoundation:material:326>], 
	[<extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>], 
	[<extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>]]);

// Alternate recipe
mods.extendedcrafting.TableCrafting.addShaped(2, <extrautils2:quarryproxy>*6, 
	[[null, null, <techguns:itemshared:103>, null, null], 
	[null, null, <thermalfoundation:material:326>, null, null], 
	[null, <thermalfoundation:material:136>, <thermalfoundation:material:263>, <thermalfoundation:material:136>, null], 
	[null, <thermalfoundation:material:359>, <thermalfoundation:material:359>, <thermalfoundation:material:359>, null], 
	[<extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>]]);

// Change the recipe for Warp Stones
// Technically not that expensive, but it's meant as more of an infusion-type recipe (like in Thaumcraft 4)
recipes.remove(<waystones:warp_stone>);
mods.extendedcrafting.CombinationCrafting.addRecipe(<waystones:warp_stone>, 22500, 225, <extrautils2:ingredients:2>, [<waystones:warp_scroll>, <waystones:warp_scroll>, <waystones:warp_scroll>, <waystones:bound_scroll>, <waystones:bound_scroll>, <waystones:bound_scroll>, <waystones:return_scroll>, <waystones:return_scroll>, <waystones:return_scroll>]);


# New Angel Ring recipes
// Players have to use the conversion recipes to make the others
recipes.removeShaped(<extrautils2:angelring>);
recipes.removeShaped(<extrautils2:angelring:1>);
recipes.removeShaped(<extrautils2:angelring:2>);
recipes.removeShaped(<extrautils2:angelring:3>);
recipes.removeShaped(<extrautils2:angelring:4>);
recipes.removeShaped(<extrautils2:angelring:5>);

mods.extendedcrafting.TableCrafting.addShaped(0, <extrautils2:angelring>, 
	[[<ore:blockGlass>, <ore:blockGlass>, <extrautils2:ingredients:11>, <extrautils2:chickenring:1>, <extrautils2:ingredients:11>, <ore:blockGlass>, <ore:blockGlass>], 
	[<ore:blockGlass>, <projectred-core:resource_item:103>, <projectred-core:resource_item:103>, <projectred-core:resource_item:103>, <projectred-core:resource_item:103>, <projectred-core:resource_item:103>, <ore:blockGlass>], 
	[<thermalfoundation:material:33>, <projectred-core:resource_item:103>, <projectred-core:resource_item:104>, <projectred-core:resource_item:104>, <projectred-core:resource_item:104>, <projectred-core:resource_item:103>, <thermalfoundation:material:33>], 
	[<thermalfoundation:material:33>, <projectred-core:resource_item:103>, <projectred-core:resource_item:104>, <simplyjetpacks:itemjetpack:33>.withTag({Energy: 0, JetpackParticle: 0}), <projectred-core:resource_item:104>, <projectred-core:resource_item:103>, <thermalfoundation:material:33>], 
	[<thermalfoundation:material:33>, <projectred-core:resource_item:103>, <projectred-core:resource_item:104>, <projectred-core:resource_item:104>, <projectred-core:resource_item:104>, <projectred-core:resource_item:103>, <thermalfoundation:material:33>], 
	[<ore:blockGlass>, <projectred-core:resource_item:103>, <projectred-core:resource_item:103>, <projectred-core:resource_item:103>, <projectred-core:resource_item:103>, <projectred-core:resource_item:103>, <ore:blockGlass>], 
	[<ore:blockGlass>, <ore:blockGlass>, <extrautils2:ingredients:11>, <extrautils2:chickenring>, <extrautils2:ingredients:11>, <ore:blockGlass>, <ore:blockGlass>]]);
	
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
	[null, <thermalfoundation:material:327>, <projectred-core:resource_item:342>, <thermalfoundation:material:327>, null], 
	[<thermalfoundation:material:262>, <projectred-core:resource_item:104>, <progressiveautomation:miner_diamond>, <projectred-core:resource_item:104>, <thermalfoundation:material:262>], 
	[<thermalfoundation:material:262>, <thermalfoundation:material:327>, <projectred-core:resource_item:342>, <thermalfoundation:material:327>, <thermalfoundation:material:262>], 
	[<minecraft:obsidian>, <minecraft:diamond_block>, <minecraft:obsidian>, <minecraft:diamond_block>, <minecraft:obsidian>]]);

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

// Changed the Ranged Pump recipe
recipes.remove(<rangedpumps:pump>);
mods.extendedcrafting.TableCrafting.addShaped(0, <rangedpumps:pump>, 
	[[<minecraft:obsidian>, <thermalfoundation:material:32>, <minecraft:obsidian>], 
	[<thermalfoundation:material:32>, <thermalfoundation:material:290>, <thermalfoundation:material:32>], 
	[<minecraft:obsidian>, <thermalfoundation:material:32>, <minecraft:obsidian>]]);

// Change the recipe for the Magmatic Generator
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}));
mods.extendedcrafting.TableCrafting.addShaped(0, <extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}),
	[[<projectred-core:resource_item:104>, <projectred-core:resource_item:104>, <projectred-core:resource_item:104>], 
	[<projectred-core:resource_item:104>, <thermalfoundation:material:293>, <projectred-core:resource_item:104>], 
	[<thermalfoundation:material:353>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <thermalfoundation:material:353>]]);

// Billionaire's Singularity
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity_custom:1>, <extendedcrafting:singularity_custom>, 1000, <extendedcrafting:material:13>, 1000000000, 1000000);



// Ultimate Ingot recipe
mods.extendedcrafting.TableCrafting.addShaped(3, <extendedcrafting:material:32>*4, 
	[[<techguns:itemshared:84>, null, <thermalfoundation:material:165>, <thermalfoundation:material:167>, <thermalfoundation:material:166>, null, <techguns:itemshared:84>], 
	[null, <mekanism:ingot>, <projectred-core:resource_item:104>, <extrautils2:ingredients:11>, <projectred-core:resource_item:104>, <mekanism:ingot>, null], 
	[<thermalfoundation:material:166>, <projectred-core:resource_item:104>, <extrautils2:ingredients:17>, <extrautils2:ingredients:17>, <extrautils2:ingredients:17>, <projectred-core:resource_item:104>, <thermalfoundation:material:165>], 
	[<thermalfoundation:material:167>, <extrautils2:ingredients:11>, <extrautils2:ingredients:17>, <extendedcrafting:material:12>, <extrautils2:ingredients:17>, <extrautils2:ingredients:11>, <thermalfoundation:material:167>], 
	[<thermalfoundation:material:165>, <projectred-core:resource_item:104>, <extrautils2:ingredients:17>, <extrautils2:ingredients:17>, <extrautils2:ingredients:17>, <projectred-core:resource_item:104>, <thermalfoundation:material:166>], 
	[null, <mekanism:ingot>, <projectred-core:resource_item:104>, <extrautils2:ingredients:11>, <projectred-core:resource_item:104>, <mekanism:ingot>, null], 
	[<techguns:itemshared:84>, null, <thermalfoundation:material:166>, <thermalfoundation:material:167>, <thermalfoundation:material:165>, null, <techguns:itemshared:84>]]);

// Ultimate Singularity recipe
mods.extendedcrafting.TableCrafting.addShaped(3, <extendedcrafting:singularity_ultimate>,
	[[<extendedcrafting:material:32>, null, <extendedcrafting:singularity_custom:1>, <extendedcrafting:material:48>, <extendedcrafting:singularity_custom:1>, null, <extendedcrafting:material:32>], 
	[null, <extendedcrafting:material:32>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <extendedcrafting:material:32>, null], 
	[null, <extendedcrafting:material:36>, <extendedcrafting:material:32>, <extendedcrafting:singularity_custom:1>, <extendedcrafting:material:32>, <extendedcrafting:material:36>, null], 
	[<extendedcrafting:singularity_custom:1>, <extendedcrafting:singularity_custom:1>, <bigreactors:blockludicrite>, <extendedcrafting:material:13>, <bigreactors:blockludicrite>, <extendedcrafting:singularity_custom:1>, <extendedcrafting:singularity_custom:1>], 
	[null, <extendedcrafting:material:36>, <extendedcrafting:material:32>, <extendedcrafting:singularity_custom:1>, <extendedcrafting:material:32>, <extendedcrafting:material:36>, null], 
	[null, <extendedcrafting:material:32>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <extendedcrafting:material:32>, null], 
	[<extendedcrafting:material:32>, null, <extendedcrafting:singularity_custom:1>, <extendedcrafting:material:48>, <extendedcrafting:singularity_custom:1>, null, <extendedcrafting:material:32>]]);


# Removes Diamond & Emerald nuggets since TE has those already
recipes.removeByRecipeName("extendedcrafting:emerald_nugget_from");
recipes.removeByRecipeName("extendedcrafting:diamond_nugget_from");

<ore:nuggetEmerald>.remove(<extendedcrafting:material:129>);
<ore:nuggetDiamond>.remove(<extendedcrafting:material:128>);

mods.jei.JEI.removeAndHide(<extendedcrafting:material:129>);
mods.jei.JEI.removeAndHide(<extendedcrafting:material:128>);

print("ExtendedCrafting.zs loaded");