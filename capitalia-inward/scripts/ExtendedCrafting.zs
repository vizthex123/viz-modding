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

first input is the center item

use recipe maker for table & ender crafting recipes
*/

# Reduce table costs
craftingTable.remove(<item:extendedcrafting:basic_table>);
craftingTable.remove(<item:extendedcrafting:advanced_table>);

// Basic
craftingTable.addShaped("basic_table", <item:extendedcrafting:basic_table>, 
    [[<item:minecraft:air>, <item:pneumaticcraft:ingot_iron_compressed>, <item:minecraft:air>], 
	[<item:pneumaticcraft:ingot_iron_compressed>, <tag:items:forge:workbench>, <item:pneumaticcraft:ingot_iron_compressed>], 
	[<item:minecraft:air>, <item:pneumaticcraft:ingot_iron_compressed>, <item:minecraft:air>]]);

// Advanced
craftingTable.addShaped("advanced_table", <item:extendedcrafting:advanced_table>, 
    [[<item:minecraft:air>, <item:minecraft:gold_ingot>, <item:minecraft:air>], 
	[<item:minecraft:gold_ingot>, <item:extendedcrafting:basic_table>, <item:minecraft:gold_ingot>], 
	[<item:minecraft:air>, <item:minecraft:gold_ingot>, <item:minecraft:air>]]);

// Elite
craftingTable.addShapeless("elite_table", <item:extendedcrafting:elite_table>, [<item:extendedcrafting:advanced_table>, <item:minecraft:diamond>]);

// Ultimate
craftingTable.addShapeless("ultimate_table", <item:extendedcrafting:ultimate_table>, [<item:extendedcrafting:elite_table>, <item:minecraft:emerald>, <item:lightmanscurrency:coin_emerald>]);

# Change the Crafting Core recipe
craftingTable.remove(<item:extendedcrafting:crafting_core>);
craftingTable.addShaped("crafting_core", <item:extendedcrafting:crafting_core>, 
    [[<item:pneumaticcraft:ingot_iron_compressed>, <item:extendedcrafting:elite_component>, <item:pneumaticcraft:ingot_iron_compressed>],
    [<item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:frame>, <item:extendedcrafting:black_iron_slate>],
    [<item:pneumaticcraft:ingot_iron_compressed>, <item:extendedcrafting:black_iron_slate>, <item:pneumaticcraft:ingot_iron_compressed>]]);

# Change Wallet recipes
craftingTable.remove(<item:lightmanscurrency:wallet_copper>);
craftingTable.remove(<item:lightmanscurrency:wallet_iron>);
craftingTable.remove(<item:lightmanscurrency:wallet_gold>);
craftingTable.remove(<item:lightmanscurrency:wallet_emerald>);
craftingTable.remove(<item:lightmanscurrency:wallet_diamond>);
craftingTable.remove(<item:lightmanscurrency:wallet_netherite>);

craftingTable.addShaped("copper_wallet", <item:lightmanscurrency:wallet_copper>, 
    [[<item:minecraft:air>, <item:lightmanscurrency:coin_copper>, <item:minecraft:air>],
    [<item:minecraft:leather>, <item:minecraft:copper_ingot>, <item:minecraft:leather>],
    [<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>]]);

craftingTable.addShaped("iron_wallet", <item:lightmanscurrency:wallet_iron>, 
    [[<item:minecraft:air>, <item:lightmanscurrency:coin_iron>, <item:minecraft:air>],
    [<item:minecraft:leather>, <item:minecraft:iron_ingot>, <item:minecraft:leather>],
    [<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>]]);

craftingTable.addShapeless("iron_wallet_upgrade", <item:lightmanscurrency:wallet_iron>, [<item:lightmanscurrency:wallet_copper>, <item:minecraft:iron_ingot>, <item:lightmanscurrency:coin_iron>]);

mods.extendedcrafting.TableCrafting.addShaped("gold_wallet", 1, <item:lightmanscurrency:wallet_gold>,
	[[<item:minecraft:air>, <item:lightmanscurrency:coin_gold>, <item:minecraft:air>], 
	[<item:minecraft:leather>, <item:minecraft:gold_ingot>, <item:minecraft:leather>], 
	[<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>]]);

mods.extendedcrafting.TableCrafting.addShapeless("gold_wallet_upgrade", 1, <item:lightmanscurrency:wallet_gold>, [<item:lightmanscurrency:wallet_iron>, <item:minecraft:gold_ingot>, <item:lightmanscurrency:coin_gold>]);

mods.extendedcrafting.TableCrafting.addShaped("emerald_wallet", 1, <item:lightmanscurrency:wallet_emerald>,
	[[<item:minecraft:air>, <item:lightmanscurrency:coin_emerald>, <item:minecraft:air>], 
	[<item:minecraft:leather>, <item:minecraft:emerald>, <item:minecraft:leather>], 
	[<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>]]);

mods.extendedcrafting.TableCrafting.addShapeless("emerald_wallet_upgrade", 1, <item:lightmanscurrency:wallet_emerald>, [<item:lightmanscurrency:wallet_gold>, <item:minecraft:emerald>, <item:lightmanscurrency:coin_emerald>]);

mods.extendedcrafting.TableCrafting.addShaped("diamond_wallet", 1, <item:lightmanscurrency:wallet_diamond>,
	[[<item:minecraft:air>, <item:lightmanscurrency:coin_diamond>, <item:minecraft:air>], 
	[<item:minecraft:leather>, <item:minecraft:diamond>, <item:minecraft:leather>], 
	[<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>]]);

mods.extendedcrafting.TableCrafting.addShapeless("diamond_wallet_upgrade", 1, <item:lightmanscurrency:wallet_diamond>, [<item:lightmanscurrency:wallet_emerald>, <item:minecraft:diamond>, <item:lightmanscurrency:coin_diamond>]);

mods.extendedcrafting.TableCrafting.addShaped("netherite_wallet", 1, <item:lightmanscurrency:wallet_netherite>,
	[[<item:minecraft:air>, <item:createdeco:netherite_coinstack>, <item:minecraft:air>], 
	[<item:minecraft:leather>, <item:minecraft:netherite_ingot>, <item:minecraft:leather>], 
	[<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>]]);

mods.extendedcrafting.TableCrafting.addShapeless("netherite_wallet_upgrade", 1, <item:lightmanscurrency:wallet_netherite>, [<item:lightmanscurrency:wallet_diamond>, <item:minecraft:diamond>, <item:createdeco:netherite_coinstack>]);

print("ExtendedCrafting.zs loaded");