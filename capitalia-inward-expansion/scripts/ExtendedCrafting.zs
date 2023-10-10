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

val copper_coin = <item:lightmanscurrency:coin_copper>;
val iron_coin = <item:lightmanscurrency:coin_iron>;
val gold_coin = <item:lightmanscurrency:coin_gold>;
val emerald_coin = <item:lightmanscurrency:coin_emerald>;
val diamond_coin = <item:lightmanscurrency:coin_diamond>;
val netherite_coin = <item:lightmanscurrency:coin_netherite>;

<<<<<<< Updated upstream
// Change the Experience Obelisk to require a Basic Table

=======
>>>>>>> Stashed changes
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
craftingTable.remove(<item:extendedcrafting:basic_table>);
craftingTable.remove(<item:extendedcrafting:advanced_table>);
craftingTable.remove(<item:extendedcrafting:elite_table>);
craftingTable.remove(<item:extendedcrafting:ultimate_table>);

// Basic
craftingTable.addShaped("basic_table", <item:extendedcrafting:basic_table>, 
    [[empty, slate, empty], 
	[black_iron, <tag:items:forge:workbenches>, black_iron], 
	[black_iron, empty, black_iron]]);

// Advanced
craftingTable.addShaped("advanced_table", <item:extendedcrafting:advanced_table>, 
    [[empty, <item:minecraft:gold_ingot>, empty], 
	[<item:minecraft:gold_ingot>, <item:extendedcrafting:basic_table>, <item:minecraft:gold_ingot>], 
	[empty, <item:minecraft:gold_ingot>, empty]]);

// Elite
craftingTable.addShapeless("elite_table", <item:extendedcrafting:elite_table>, [<item:extendedcrafting:advanced_table>, <item:minecraft:diamond>]);

// Ultimate
craftingTable.addShapeless("ultimate_table", <item:extendedcrafting:ultimate_table>, [<item:extendedcrafting:elite_table>, <item:minecraft:emerald>, <item:minecraft:emerald>, emerald_coin, emerald_coin]);


# Flux Crafter
# Recipe is unchanged, but moved to the Basic Table
craftingTable.remove(<item:extendedcrafting:flux_crafter>);
craftingTable.remove(<item:extendedcrafting:flux_alternator>);

mods.extendedcrafting.TableCrafting.addShaped("flux_crafter", 1, <item:extendedcrafting:flux_crafter>,
	[[<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>], 
	[<item:extendedcrafting:redstone_ingot>, <tag:items:forge:workbenches>, <item:extendedcrafting:redstone_ingot>], 
	[<item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot>]]);

mods.extendedcrafting.TableCrafting.addShaped("flux_alternator", 1, <item:extendedcrafting:flux_alternator>*2,
	[[empty, <item:minecraft:gold_ingot>, empty], 
	[empty, <item:extendedcrafting:redstone_ingot>, empty], 
	[<item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot>]]);

# Quantum Compressor
craftingTable.remove(<item:extendedcrafting:compressor>);
mods.extendedcrafting.TableCrafting.addShaped("quantum_compressor", 1, <item:extendedcrafting:compressor>,
	[[empty, <item:bluepower:battery>, empty], 
	[slate, <item:extendedcrafting:frame>, slate], 
	[<item:create:mechanical_piston>, <item:bluepower:motor>, <item:create:mechanical_piston>]]);

# Crafting Core
craftingTable.remove(<item:extendedcrafting:crafting_core>);
craftingTable.remove(<item:extendedcrafting:pedestal>);
mods.extendedcrafting.TableCrafting.addShaped("crafting_core", 1, <item:extendedcrafting:crafting_core>,
	[[empty, <item:bluepower:battery>, empty], 
	[slate, <item:extendedcrafting:frame>, slate], 
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
	[<item:spirit:soul_steel_ingot>, <item:bluepower:purple_alloy_ingot>, <item:bluepower:purple_alloy_ingot>, <item:bluepower:purple_alloy_ingot>, <item:bluepower:purple_alloy_ingot>, <item:bluepower:purple_alloy_ingot>, <item:spirit:soul_steel_ingot>], 
	[<item:nourished_nether:necronium_ingot>, <item:minecraft:netherite_ingot>, <item:bluepower:tungsten_carbide>, <item:minecraft:diamond>, <item:bluepower:tungsten_carbide>, <item:minecraft:netherite_ingot>, <item:nourished_nether:necronium_ingot>], 
	[<item:nourished_nether:necronium_ingot>, <item:minecraft:netherite_ingot>, <item:bluepower:tungsten_carbide>, <item:minecraft:diamond>, <item:bluepower:tungsten_carbide>, <item:minecraft:netherite_ingot>, <item:nourished_nether:necronium_ingot>], 
	[<item:spirit:soul_steel_ingot>, <item:bluepower:purple_alloy_ingot>, <item:bluepower:purple_alloy_ingot>, <item:bluepower:purple_alloy_ingot>, <item:bluepower:purple_alloy_ingot>, <item:bluepower:purple_alloy_ingot>, <item:spirit:soul_steel_ingot>], 
	[empty, empty, empty, empty, empty, empty, empty], 
	[empty, empty, empty, empty, empty, empty, empty]]);

// Craft Infused Teslatite
mods.extendedcrafting.CombinationCrafting.addRecipe("infused_testlatite", <item:bluepower:infused_teslatite_dust>*2, 25000, [<item:ae2:ender_dust>, <item:minecraft:glowstone_dust>, <item:bluepower:teslatite_dust>, <item:bluepower:teslatite_dust>, <item:bluepower:teslatite_dust>], 60);

print("ExtendedCrafting.zs loaded");