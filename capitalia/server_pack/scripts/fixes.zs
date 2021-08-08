# Fixes broken/conflicting/duplicate recipes
print("fixes.zs loading...");
/*
recipes.remove(<>);
recipes.addShaped(<output>, [[<null>, <null>, <null>],
                                      [<null>, <null>, <null>],
                                      [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
furnace.addRecipe(<output>, <input>, XP[F]);
<item>.maxStackSize=NEW;
*/

// Cut cost of Efficiency Upgrades because they're bad
recipes.remove(<solarflux:efficiency_upgrade>);
recipes.addShapeless(<solarflux:efficiency_upgrade>, [<solarflux:mirror>, <solarflux:blank_upgrade>]);

// Fix duplicate Block of Charcoal recipes
recipes.remove(<chisel:block_charcoal2>);
recipes.remove(<mekanism:basicblock:3>);
recipes.removeByRecipeName("forestry:charcoal_block");
recipes.addShaped(<mekanism:basicblock:3>, [[<minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>],
                                  		                                [<minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>],
                                    		                                [<minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>]]);

// Convert for Mekanism, if you want that for the Metallurgic Infuser
recipes.addShapeless(<mekanism:basicblock:3>, [<forestry:charcoal>, <minecraft:flint>]);

// Craftable Barley Seeds (since they dron't drop from farmed ores unless broken)
recipes.addShapeless(<natura:overworld_seeds>*2, [<natura:materials>, <natura:materials>]);

// Fix how the quarry mines basalt instead of the cobblestone
recipes.addShapeless(<projectred-exploration:stone:2>, [<projectred-exploration:stone:3>]);

// Fix duplicate OB Sponge recipes
recipes.remove(<openblocks:sponge>);
recipes.addShapeless(<openblocks:sponge>, [<ore:wool>, <ore:slimeball>]);

// Fix Heavy Cloth recipe
recipes.remove(<techguns:itemshared:60>);
recipes.addShaped(<techguns:itemshared:60>*3, [[null, <ore:wool>, null],
					[<ore:wool>, <ore:leather>, <ore:wool>],
					[null, <ore:wool>, null]]);

// Fix the Culinary Generator not accepting some items
	// Barley
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}), [[<natura:materials>, <natura:materials>, <natura:materials>],
                                   							                    [<natura:materials>, <minecraft:cooked_beef>|<minecraft:cooked_porkchop>|<minecraft:cooked_fish>|<minecraft:cooked_fish:1>|<minecraft:cooked_chicken>|<minecraft:cooked_rabbit>|<minecraft:cooked_mutton>, <natura:materials>],
                                     								 [<minecraft:redstone>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <minecraft:redstone>]]);

// Beetroots
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}), [[<minecraft:beetroot>, <minecraft:beetroot>, <minecraft:beetroot>],
                                   							                    [<minecraft:beetroot>, <minecraft:cooked_beef>|<minecraft:cooked_porkchop>|<minecraft:cooked_fish>|<minecraft:cooked_fish:1>|<minecraft:cooked_chicken>|<minecraft:cooked_rabbit>|<minecraft:cooked_mutton>, <minecraft:beetroot>],
                                     								 [<minecraft:redstone>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <minecraft:redstone>]]);


// Fix Stone Shears having a recipe conflict
recipes.remove(<thermalfoundation:tool.shears_stone>);
recipes.addShapeless(<thermalfoundation:tool.shears_stone>, [<sct:stone_crafting_plate>]);

// Makes Black Iron Slate shapeless (idk why it isn't by default)
recipes.remove(<extendedcrafting:material:2>);
recipes.addShapeless(<extendedcrafting:material:2>, [<extendedcrafting:material>, <extendedcrafting:material>]);

// Should fix ore blocks giving the wrong ingots
recipes.removeShapeless(<ore:ingotTin>);
recipes.removeShapeless(<ore:ingotCopper>);
recipes.removeShapeless(<ore:ingotAluminum>);
recipes.removeShapeless(<ore:ingotAluminium>);
recipes.addShapeless(<mekanism:ingot:6>*9, [<ore:blockTin>]);
recipes.addShapeless(<mekanism:ingot:5>*9, [<ore:blockCopper>]);
recipes.addShapeless(<magneticraft:ingots:7>*9, [<ore:blockAluminum>]);

// Craft Limestone Bricks with both variants
recipes.remove(<magneticraft:limestone:1>);
recipes.addShapeless(<magneticraft:limestone:1>*4, [<magneticraft:limestone>|<chisel:limestone2:7>, <magneticraft:limestone>|<chisel:limestone2:7>, <magneticraft:limestone>|<chisel:limestone2:7>, <magneticraft:limestone>|<chisel:limestone2:7>]);

// Stone Sticks can be crafted more easily
// Also removes the recipe Forge Microblocks' ones (which is in JEI.zs)
recipes.remove(<sct:stone_stick>);
recipes.addShapeless(<sct:stone_stick>*2, [<minecraft:cobblestone>, <minecraft:cobblestone>]);

// Convert Natura sticks
recipes.addShapeless(<minecraft:stick>, [<natura:sticks:*>]);

// Sticky Piston duplicates
recipes.remove(<minecraft:sticky_piston>);
recipes.addShapeless(<minecraft:sticky_piston>, [<minecraft:piston>, <ore:slimeball>]);

// Basalt Bricks
recipes.removeShaped(<projectred-exploration:stone:4>);
recipes.addShapeless(<projectred-exploration:stone:4>*4, [<ore:stoneBasalt>, <ore:stoneBasalt>, <ore:stoneBasalt>, <ore:stoneBasalt>]);

// Ghostwood Fletching fix (makes 3 instead of 1)
recipes.remove(<natura:materials:5>);
recipes.addShaped(<natura:materials:5>*3, [[null, <natura:sticks:9>, null],
                                                                                      [<natura:nether_leaves>, <natura:sticks:9>, <natura:nether_leaves>],
                                                                                      [<natura:nether_leaves>, <natura:sticks:9>, <natura:nether_leaves>]]);

// Make the Woden Hopper (Wopper) cheaper
recipes.remove(<wopper:wopper>);
recipes.addShaped(<wopper:wopper>, [[<ore:plankWood>, null, <ore:plankWood>],
                                		                  [<ore:plankWood>, null, <ore:plankWood>],
                                  		                  [null, <ore:plankWood>, null]]);

print("fixes.zs loaded");