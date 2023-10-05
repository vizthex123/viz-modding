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

// Basic
craftingTable.addShaped("basic_table", <item:extendedcrafting:basic_table>, 
    [[empty, slate, empty], 
	[black_iron, <item:minecraft:crafting_table>, black_iron], 
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


# Quantum Compressor
craftingTable.remove(<item:extendedcrafting:compressor>);
mods.extendedcrafting.TableCrafting.addShaped("quantum_compressor", 1, <item:extendedcrafting:compressor>,
	[[empty, slate, empty], 
	[<item:bluepower:motor>, <item:powah:ender_core>, <item:bluepower:battery>], 
	[<item:create:mechanical_piston>, <item:extendedcrafting:frame>, <item:create:mechanical_piston>]]);

# Crafting Core
craftingTable.remove(<item:extendedcrafting:crafting_core>);
mods.extendedcrafting.TableCrafting.addShaped("crafting_core", 1, <item:extendedcrafting:crafting_core>,
	[[empty, <item:bluepower:battery>, empty], 
	[slate, <item:extendedcrafting:frame>, slate], 
	[black_iron, <item:bluepower:project_table>, black_iron]]);

# Boost Pedestal output
mods.extendedcrafting.TableCrafting.addShaped("pedestal", 1, <item:extendedcrafting:pedestal>,
	[[empty, black_iron, empty], 
	[empty, black_iron, empty], 
	[black_iron, <item:extendedcrafting:black_iron_block>, black_iron]]);

# Better Crystaltine recipe
mods.extendedcrafting.TableCrafting.remove(<item:extendedcrafting:crystaltine_ingot>);
mods.extendedcrafting.TableCrafting.addShaped("crystaltine", 3, <item:extendedcrafting:crystaltine_ingot>*4,
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