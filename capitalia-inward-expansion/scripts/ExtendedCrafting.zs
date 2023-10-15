# Adds recipes to blocks from Extended Crafting
# Also changes recipes for Extended Crafting's blocks

print("ExtendedCrafting.zs loading...");

/*
craftingTable.addShaped("recipeName", <output>, 
    [[<input>, <input>, <input>],
    [<input>, <input>, <input>],
    [<input>, <input>, <input>]]);

craftingTable.addShapeless("recipeName", <output>, [<inputs>]);

mods.extendedcrafting.CombinationCrafting.addRecipe("name", <output>, powerCost, [inputs], powerRate);

mods.extendedcrafting.CompressionCrafting.addRecipe(name, <input>, <output>, inputCount, <catalyst>, powerCost, powerRate);

first input is the center item

use recipe maker for table & ender crafting recipes
*/

val empty = <item:minecraft:air>;

val slate = <item:extendedcrafting:black_iron_slate>;
val black_iron = <item:extendedcrafting:black_iron_ingot>;
val frame = <item:extendedcrafting:frame>;

val brass = <tag:items:forge:ingots/brass>;
val blue = <item:bluepower:blue_alloy_ingot>;
val red = <item:bluepower:red_alloy_ingot>;
val purple = <item:bluepower:purple_alloy_ingot>;
val redstone_ingot = <item:extendedcrafting:redstone_ingot>;

val obsidian = <tag:items:cie:obsidian>;
val pane = <tag:items:forge:glass_panes>;

val clay = <item:minecraft:clay_ball>;
val pearl = <tag:items:forge:ender_pearls>;

val redstone = <item:minecraft:redstone>;
val glowstone = <item:minecraft:glowstone_dust>;

# Deep Mob Learning
# (though it's actually "Hostile Neural Networks")
craftingTable.remove(<item:hostilenetworks:sim_chamber>);
craftingTable.remove(<item:hostilenetworks:loot_fabricator>);
craftingTable.remove(<item:hostilenetworks:empty_prediction>);
craftingTable.remove(<item:hostilenetworks:blank_data_model>);
craftingTable.remove(<item:hostilenetworks:deep_learner>);

mods.extendedcrafting.TableCrafting.addShaped("simulation_chamber", 1, <item:hostilenetworks:sim_chamber>,
	[[empty, pane, empty], 
	[<item:minecraft:prismarine_shard>, obsidian, <item:minecraft:prismarine_shard>], 
	[<item:minecraft:ender_pearl>, <item:spirit:soul_cage>, <item:minecraft:ender_pearl>]]);

mods.extendedcrafting.TableCrafting.addShaped("loot_fabricator", 1, <item:hostilenetworks:loot_fabricator>,
	[[empty, purple, empty], 
	[<item:minecraft:diamond>, obsidian, <item:minecraft:diamond>], 
	[brass, <item:bluepower:auto_project_table>, brass]]);

mods.extendedcrafting.TableCrafting.addShaped("prediction_matrix", 1, <item:hostilenetworks:empty_prediction>*16,
	[[black_iron, pane, empty], 
	[pane, clay, pane], 
	[empty, pane, black_iron]]);

mods.extendedcrafting.TableCrafting.addShaped("model_framework", 1, <item:hostilenetworks:blank_data_model>,
	[[clay, glowstone, clay], 
	[redstone, <item:kubejs:science_stone>, redstone], 
	[clay, <item:minecraft:gold_ingot>, clay]]);

mods.extendedcrafting.TableCrafting.addShaped("deep_learner", 1, <item:hostilenetworks:deep_learner>,
	[[obsidian, redstone, obsidian], 
	[redstone_ingot, pane, redstone_ingot], 
	[obsidian, redstone_ingot, obsidian]]);


# Change Ender Magnets to require a Basic Table (and Ender Crafter)
craftingTable.remove(<item:endermagnet:ender_torch>);
craftingTable.remove(<item:endermagnet:ender_magnet_tier1>);
craftingTable.remove(<item:endermagnet:ender_magnet_tier2>);
craftingTable.remove(<item:endermagnet:ender_magnet_tier3>);

mods.extendedcrafting.TableCrafting.addShaped("ender_torch", 1, <item:endermagnet:ender_torch>*2,
	[[pearl], 
	[obsidian]]);

mods.extendedcrafting.TableCrafting.addShaped("t1_ender_magnet", 1, <item:endermagnet:ender_magnet_tier1>,
	[[empty, <item:minecraft:iron_ingot>, empty], 
	[<item:minecraft:iron_ingot>, <item:minecraft:ender_eye>, <item:minecraft:iron_ingot>], 
	[empty, <item:minecraft:iron_ingot>, empty]]);

mods.extendedcrafting.TableCrafting.addShaped("t2_ender_magnet", 1, <item:endermagnet:ender_magnet_tier2>,
	[[empty, <item:minecraft:gold_ingot>, empty], 
	[<item:minecraft:gold_ingot>, <item:endermagnet:ender_magnet_tier1>, <item:minecraft:gold_ingot>], 
	[empty, <item:minecraft:gold_ingot>, empty]]);

mods.extendedcrafting.EnderCrafting.addShaped("t3_ender_magnet", <item:endermagnet:ender_magnet_tier3>,
	[[empty, <item:minecraft:diamond>, empty], 
	[<item:minecraft:diamond>, <item:endermagnet:ender_magnet_tier2>, <item:minecraft:diamond>], 
	[empty, <item:minecraft:diamond>, empty]], 20);

// Quarry
craftingTable.remove(<item:quarry:quarry_block>);
mods.extendedcrafting.TableCrafting.addShaped("quarry", 1, <item:quarry:quarry_block>,
	[[glowstone, purple, glowstone], 
	[purple, frame, purple], 
	[glowstone, purple, glowstone]]);

// Area Card
craftingTable.remove(<item:quarry:area_card>);
mods.extendedcrafting.TableCrafting.addShaped("area_card", 1, <item:quarry:area_card>,
	[[empty, empty, pane], 
	[empty, red, red], 
	[<item:bluepower:teslatite_dust>, glowstone, <item:bluepower:teslatite_dust>]]);

// Change the Experience Obelisk to require a Basic Table
craftingTable.remove(<item:experienceobelisk:experience_obelisk>);
mods.extendedcrafting.TableCrafting.addShaped("experience_obelisk", 1, <item:experienceobelisk:experience_obelisk>,
	[[<item:bluepower:tungsten_carbide>, <item:minecraft:emerald>, <item:bluepower:tungsten_carbide>], 
	[<item:bluepower:tungsten_carbide>, <item:create:fluid_tank>, <item:bluepower:tungsten_carbide>], 
	[<item:bluepower:tungsten_carbide>, <tag:items:cie:obsidian>, <item:bluepower:tungsten_carbide>]]);

// Change Long Fall Boots to require a Basic Table
craftingTable.remove(<item:longfallboots:longfallboots>);
mods.extendedcrafting.TableCrafting.addShaped("long_fall_boots", 1, <item:longfallboots:longfallboots>,
	[[<item:bluepower:tungsten_carbide>, empty, <item:bluepower:tungsten_carbide>],
	[<tag:items:cie:obsidian>, empty, <tag:items:cie:obsidian>], 
	[<item:minecraft:diamond>, empty, <item:minecraft:diamond>]]);

// Change Etherium Coins to be crafted in a Flux Crafter
craftingTable.remove(<item:deep_dark_regrowth:ethereum_coin>);
mods.extendedcrafting.FluxCrafting.addShaped("ethereum_coin", <item:deep_dark_regrowth:ethereum_coin>*2,
	[[empty, <item:minecraft:gold_nugget>, empty], 
	[<item:minecraft:gold_nugget>, <item:deep_dark_regrowth:etherium_gem>, <item:minecraft:gold_nugget>], 
	[empty, <item:minecraft:gold_nugget>, empty]], 2015, 30);

// Make Black Iron Slate shapeless
craftingTable.remove(slate);
craftingTable.addShapeless("slate", slate, [black_iron, black_iron]);

# Reduce table costs
val component = <item:extendedcrafting:redstone_component>;

craftingTable.remove(<item:extendedcrafting:basic_table>);
craftingTable.remove(<item:extendedcrafting:advanced_table>);
craftingTable.remove(<item:extendedcrafting:elite_table>);
craftingTable.remove(<item:extendedcrafting:ultimate_table>);

craftingTable.remove(<item:extendedcrafting:basic_auto_table>);
craftingTable.remove(<item:extendedcrafting:advanced_auto_table>);
craftingTable.remove(<item:extendedcrafting:elite_auto_table>);
craftingTable.remove(<item:extendedcrafting:ultimate_auto_table>);

// Basic
craftingTable.addShaped("basic_table", <item:extendedcrafting:basic_table>, 
    [[empty, slate, empty], 
	[black_iron, <tag:items:forge:workbenches>, black_iron], 
	[black_iron, empty, black_iron]]);

craftingTable.addShaped("basic_auto_table", <item:extendedcrafting:basic_auto_table>, 
    [[empty, component, empty], 
	[component, <item:extendedcrafting:basic_table>, component], 
	[empty, component, empty]]);

// Advanced
craftingTable.addShaped("advanced_table", <item:extendedcrafting:advanced_table>, 
    [[<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>], 
	[empty, <item:extendedcrafting:basic_table>, empty], 
	[empty, black_iron, empty]]);

craftingTable.addShaped("advanced_auto_table", <item:extendedcrafting:advanced_auto_table>, 
    [[empty, component, empty], 
	[component, <item:extendedcrafting:advanced_table>, component], 
	[empty, component, empty]]);

// Elite
craftingTable.addShapeless("elite_table", <item:extendedcrafting:elite_table>, [<item:extendedcrafting:advanced_table>, <item:minecraft:diamond>]);

craftingTable.addShaped("elite_auto_table", <item:extendedcrafting:elite_auto_table>, 
    [[empty, component, empty], 
	[component, <item:extendedcrafting:elite_table>, component], 
	[empty, component, empty]]);

// Ultimate
craftingTable.addShapeless("ultimate_table", <item:extendedcrafting:ultimate_table>, [<item:extendedcrafting:elite_table>, <item:minecraft:emerald>, <item:minecraft:emerald>]);

craftingTable.addShaped("ultimate_auto_table", <item:extendedcrafting:ultimate_auto_table>, 
    [[empty, component, empty], 
	[component, <item:extendedcrafting:ultimate_table>, component], 
	[empty, component, empty]]);

# Flux Crafter
# Recipe is unchanged, but moved to the Basic Table
craftingTable.remove(<item:extendedcrafting:flux_crafter>);
craftingTable.remove(<item:extendedcrafting:flux_alternator>);

mods.extendedcrafting.TableCrafting.addShaped("flux_crafter", 1, <item:extendedcrafting:flux_crafter>,
	[[<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>], 
	[redstone_ingot, <tag:items:forge:workbenches>, redstone_ingot], 
	[redstone_ingot, redstone_ingot, redstone_ingot]]);

mods.extendedcrafting.TableCrafting.addShaped("flux_alternator", 1, <item:extendedcrafting:flux_alternator>*2,
	[[empty, <item:minecraft:gold_ingot>, empty], 
	[empty, redstone_ingot, empty], 
	[redstone_ingot, redstone_ingot, redstone_ingot]]);

# Quantum Compressor
craftingTable.remove(<item:extendedcrafting:compressor>);
mods.extendedcrafting.TableCrafting.addShaped("quantum_compressor", 1, <item:extendedcrafting:compressor>,
	[[empty, <item:bluepower:battery>, empty], 
	[slate, frame, slate], 
	[<item:create:mechanical_piston>, <item:bluepower:motor>, <item:create:mechanical_piston>]]);

# Crafting Core
craftingTable.remove(<item:extendedcrafting:crafting_core>);
craftingTable.remove(<item:extendedcrafting:pedestal>);
mods.extendedcrafting.TableCrafting.addShaped("crafting_core", 1, <item:extendedcrafting:crafting_core>,
	[[empty, <item:bluepower:battery>, empty], 
	[slate, frame, slate], 
	[black_iron, <item:bluepower:project_table>, black_iron]]);

# Boost Pedestal output
mods.extendedcrafting.TableCrafting.addShaped("pedestal", 1, <item:extendedcrafting:pedestal>*4,
	[[empty, black_iron, empty], 
	[empty, black_iron, empty], 
	[black_iron, <item:extendedcrafting:black_iron_block>, black_iron]]);

# Better Crystaltine recipe
mods.extendedcrafting.TableCrafting.remove(<item:extendedcrafting:crystaltine_ingot>);
mods.extendedcrafting.TableCrafting.addShaped("crystaltine", 3, <item:extendedcrafting:crystaltine_ingot>*8,
	[[empty, empty, empty, empty, empty, empty, empty], 
	[<item:spirit:soul_steel_ingot>, purple, purple, purple, purple, purple, <item:spirit:soul_steel_ingot>], 
	[<item:nourished_nether:necronium_ingot>, <item:minecraft:netherite_ingot>, <item:bluepower:tungsten_carbide>, <item:minecraft:diamond>, <item:bluepower:tungsten_carbide>, <item:minecraft:netherite_ingot>, <item:nourished_nether:necronium_ingot>], 
	[<item:nourished_nether:necronium_ingot>, <item:minecraft:netherite_ingot>, <item:bluepower:tungsten_carbide>, <item:minecraft:diamond>, <item:bluepower:tungsten_carbide>, <item:minecraft:netherite_ingot>, <item:nourished_nether:necronium_ingot>], 
	[<item:spirit:soul_steel_ingot>, purple, purple, purple, purple, purple, <item:spirit:soul_steel_ingot>], 
	[empty, empty, empty, empty, empty, empty, empty], 
	[empty, empty, empty, empty, empty, empty, empty]]);

// Craft Infused Teslatite
mods.extendedcrafting.CombinationCrafting.addRecipe("infused_testlatite", <item:bluepower:infused_teslatite_dust>*2, 25000, [<item:ae2:ender_dust>, glowstone, <item:bluepower:teslatite_dust>, <item:bluepower:teslatite_dust>, <item:bluepower:teslatite_dust>], 60);

print("ExtendedCrafting.zs loaded");