# Changes recipes for Lightman's Currency items, as well as anything related to the economy of the pack

import crafttweaker.api.tag.MCTag;
import crafttweaker.api.recipe.SmithingRecipeManager;

print("currency.zs loading...");
/*
craftingTable.addShapeless("name", <item:output>, [<item>]);
craftingTable.addShaped("name", <item:output>,
    [[<item>, <item>, <item>],
    [<item>, <item>, <item>],
    [<item>, <item>, <item>]]);
craftingTable.remove(<item>);
craftingTable.removeByName("name");

<recipetype:create:compacting>.addRecipe(name as string, heat as HeatCondition, outputs as IFluidStack[], itemInputs as IIngredientWithAmount[], fluidInputs as FluidIngredient[], duration as int) as void

For Extended Crafting, use the recipe maker
*/

val copper_coin = <item:lightmanscurrency:coin_copper>;
val iron_coin = <item:lightmanscurrency:coin_iron>;
val gold_coin = <item:lightmanscurrency:coin_gold>;
val emerald_coin = <item:lightmanscurrency:coin_emerald>;
val diamond_coin = <item:lightmanscurrency:coin_diamond>;
val netherite_coin = <item:lightmanscurrency:coin_netherite>;

val iron = <item:minecraft:iron_ingot>;

# Ticket recipe info
mods.jei.JEI.addDescription(<item:minecraft:paper>, ["Can be used to make tickets in a Ticket Station"]);

# New Trading Core recipe
craftingTable.remove(<item:lightmanscurrency:trading_core>);
craftingTable.addShaped("trading_core", <item:lightmanscurrency:trading_core>,
    [[iron_coin],
    [<tag:items:forge:ingots/gold>],
    [<tag:items:forge:dusts/redstone>]]);

# New Money Chest recipe
craftingTable.remove(<item:lightmanscurrency:coin_chest>);
craftingTable.addShaped("money_chest", <item:lightmanscurrency:coin_chest>,
    [[<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, copper_coin, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]]);
	
# New Wallet recipes
craftingTable.remove(<item:lightmanscurrency:wallet_copper>);
craftingTable.remove(<item:lightmanscurrency:wallet_iron>);
craftingTable.remove(<item:lightmanscurrency:wallet_gold>);
craftingTable.remove(<item:lightmanscurrency:wallet_emerald>);
craftingTable.remove(<item:lightmanscurrency:wallet_diamond>);
craftingTable.remove(<item:lightmanscurrency:wallet_netherite>);

// Copper
craftingTable.addShaped("copper_wallet", <item:lightmanscurrency:wallet_copper>,
	[[<item:minecraft:air>, copper_coin, <item:minecraft:air>], 
	[<item:minecraft:leather>, <item:minecraft:copper_ingot>, <item:minecraft:leather>], 
	[<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>]]);

// Iron
craftingTable.addShaped("iron_wallet", <item:lightmanscurrency:wallet_iron>,
	[[<item:minecraft:air>, iron_coin, <item:minecraft:air>], 
	[<item:minecraft:leather>, iron, <item:minecraft:leather>], 
	[<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>]]);

craftingTable.addShapeless("iron_wallet_upgrade", <item:lightmanscurrency:wallet_iron>, [<item:lightmanscurrency:wallet_copper>, iron, iron_coin]);

// Gold
craftingTable.addShaped("gold_wallet", <item:lightmanscurrency:wallet_gold>,
	[[<item:minecraft:air>, <tag:items:forge:nuggets>, <item:minecraft:air>], 
	[<item:minecraft:leather>, <item:minecraft:gold_ingot>, <item:minecraft:leather>], 
	[<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>]]);

craftingTable.addShapeless("gold_wallet_upgrade", <item:lightmanscurrency:wallet_gold>, [<item:lightmanscurrency:wallet_iron>, <item:minecraft:gold_ingot>, gold_coin]);

// Emerald
mods.extendedcrafting.TableCrafting.addShaped("emerald_wallet", 1, <item:lightmanscurrency:wallet_emerald>,
	[[<item:minecraft:air>, <tag:items:forge:nuggets>, <item:minecraft:air>], 
	[<item:minecraft:leather>, <item:minecraft:emerald>, <item:minecraft:leather>], 
	[<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>]]);

mods.extendedcrafting.TableCrafting.addShapeless("emerald_wallet_upgrade", 1, <item:lightmanscurrency:wallet_emerald>,
	[<item:lightmanscurrency:wallet_gold>, <item:minecraft:emerald>, emerald_coin]);

// Diamond
mods.extendedcrafting.TableCrafting.addShaped("diamond_wallet", 1, <item:lightmanscurrency:wallet_diamond>,
	[[<item:minecraft:air>, <tag:items:forge:nuggets>, <item:minecraft:air>], 
	[<item:minecraft:leather>, <item:minecraft:diamond>, <item:minecraft:leather>], 
	[<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>]]);

mods.extendedcrafting.TableCrafting.addShapeless("diamond_wallet_upgrade", 1, <item:lightmanscurrency:wallet_diamond>,
	[<item:lightmanscurrency:wallet_emerald>, <item:minecraft:diamond>]);

// Netherite
mods.extendedcrafting.TableCrafting.addShaped("netherite_wallet", 1, <item:lightmanscurrency:wallet_netherite>,
	[[<item:minecraft:air>, <tag:items:forge:nuggets>, <item:minecraft:air>], 
	[<item:minecraft:leather>, <item:minecraft:netherite_ingot>, <item:minecraft:leather>], 
	[<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>]]);
	
smithing.addRecipe("netherite_wallet_upgrade", <item:lightmanscurrency:wallet_netherite>, <item:lightmanscurrency:wallet_diamond>, <tag:items:forge:ingots/netherite>);

/*
mods.extendedcrafting.TableCrafting.addShapeless("netherite_wallet_upgrade", 1, <item:lightmanscurrency:wallet_netherite>,
	[<item:lightmanscurrency:wallet_diamond>, <item:minecraft:netherite_ingot>]);
*/


# Multiservo press Coin Pile & Block recipes
# 1000 RF for Piles, 2000 for Blocks
# 2 seconds for piles, 4 for blocks

val copper_coin_pile = <item:lightmanscurrency:coinpile_copper>;
val iron_coin_pile = <item:lightmanscurrency:coinpile_iron>;
val gold_coin_pile = <item:lightmanscurrency:coinpile_gold>;
val emerald_coin_pile = <item:lightmanscurrency:coinpile_emerald>;
val diamond_coin_pile = <item:lightmanscurrency:coinpile_diamond>;
val netherite_coin_pile = <item:lightmanscurrency:coinpile_netherite>;

val copper_coin_block = <item:lightmanscurrency:coinblock_copper>;
val iron_coin_block = <item:lightmanscurrency:coinblock_iron>;
val gold_coin_block = <item:lightmanscurrency:coinblock_gold>;
val emerald_coin_block = <item:lightmanscurrency:coinblock_emerald>;
val diamond_coin_block = <item:lightmanscurrency:coinblock_diamond>;
val netherite_coin_block = <item:lightmanscurrency:coinblock_netherite>;

craftingTable.removeByName("lightmanscurrency:coins/coinpile_copper_from_coin");
craftingTable.removeByName("lightmanscurrency:coins/coinpile_iron_from_coin");
craftingTable.removeByName("lightmanscurrency:coins/coinpile_gold_from_coin");
craftingTable.removeByName("lightmanscurrency:coins/coinpile_emerald_from_coin");
craftingTable.removeByName("lightmanscurrency:coins/coinpile_diamond_from_coin");
craftingTable.removeByName("lightmanscurrency:coins/coinpile_netherite_from_coin");

<recipetype:create:compacting>.addRecipe("compact_copper_pile", <constant:create:heat_condition:none>, [copper_coin_pile], [copper_coin*9], [], 2);
<recipetype:create:compacting>.addRecipe("compact_iron_pile", <constant:create:heat_condition:none>, [iron_coin_pile], [iron_coin*9], [], 2);
<recipetype:create:compacting>.addRecipe("compact_gold_pile", <constant:create:heat_condition:none>, [gold_coin_pile], [gold_coin*9], [], 2);
<recipetype:create:compacting>.addRecipe("compact_emerald_pile", <constant:create:heat_condition:none>, [emerald_coin_pile], [emerald_coin*9], [], 2);
<recipetype:create:compacting>.addRecipe("compact_diamond_pile", <constant:create:heat_condition:none>, [diamond_coin_pile], [diamond_coin*9], [], 2);
<recipetype:create:compacting>.addRecipe("compact_netherite_pile", <constant:create:heat_condition:none>, [netherite_coin_pile], [netherite_coin*9], [], 2);


<recipetype:thermal:press>.addRecipe("press_copper_pile", [copper_coin_pile], <fluid:minecraft:empty>, [copper_coin*9, <item:thermal:press_packing_3x3_die>], 1000);
<recipetype:thermal:press>.addRecipe("press_iron_pile", [iron_coin_pile], <fluid:minecraft:empty>, [iron_coin*9, <item:thermal:press_packing_3x3_die>], 1000);
<recipetype:thermal:press>.addRecipe("press_gold_pile", [gold_coin_pile], <fluid:minecraft:empty>, [gold_coin*9, <item:thermal:press_packing_3x3_die>], 1000);
<recipetype:thermal:press>.addRecipe("press_emerald_pile", [emerald_coin_pile], <fluid:minecraft:empty>, [emerald_coin*9, <item:thermal:press_packing_3x3_die>], 1000);
<recipetype:thermal:press>.addRecipe("press_diamond_pile", [diamond_coin_pile], <fluid:minecraft:empty>, [diamond_coin*9, <item:thermal:press_packing_3x3_die>], 1000);
<recipetype:thermal:press>.addRecipe("press_netherite_pile", [netherite_coin_pile], <fluid:minecraft:empty>, [netherite_coin*9, <item:thermal:press_packing_3x3_die>], 1000);


craftingTable.removeByName("lightmanscurrency:coins/coinblock_copper_from_pile");
craftingTable.removeByName("lightmanscurrency:coins/coinblock_iron_from_pile");
craftingTable.removeByName("lightmanscurrency:coins/coinblock_gold_from_pile");
craftingTable.removeByName("lightmanscurrency:coins/coinblock_emerald_from_pile");
craftingTable.removeByName("lightmanscurrency:coins/coinblock_diamond_from_pile");
craftingTable.removeByName("lightmanscurrency:coins/coinblock_netherite_from_pile");

<recipetype:create:compacting>.addRecipe("compact_copper_coin_block", <constant:create:heat_condition:none>, [copper_coin_block], [copper_coin_pile*4], [], 4);
<recipetype:create:compacting>.addRecipe("compact_iron_coin_block", <constant:create:heat_condition:none>, [iron_coin_block], [iron_coin_pile*4], [], 4);
<recipetype:create:compacting>.addRecipe("compact_gold_coin_block", <constant:create:heat_condition:none>, [gold_coin_block], [gold_coin_pile*4], [], 4);
<recipetype:create:compacting>.addRecipe("compact_emerald_coin_block", <constant:create:heat_condition:none>, [emerald_coin_block], [emerald_coin_pile*4], [], 4);
<recipetype:create:compacting>.addRecipe("compact_diamond_coin_block", <constant:create:heat_condition:none>, [diamond_coin_block], [diamond_coin_pile*4], [], 4);
<recipetype:create:compacting>.addRecipe("compact_netherite_coin_block", <constant:create:heat_condition:none>, [netherite_coin_block], [netherite_coin_pile*4], [], 4);


<recipetype:thermal:press>.addRecipe("press_copper_coin_block", [copper_coin_block], <fluid:minecraft:empty>, [copper_coin_pile*4, <item:thermal:press_packing_2x2_die>], 2000);
<recipetype:thermal:press>.addRecipe("press_iron_coin_block", [iron_coin_block], <fluid:minecraft:empty>, [iron_coin_pile*4, <item:thermal:press_packing_2x2_die>], 2000);
<recipetype:thermal:press>.addRecipe("press_gold_coin_block", [gold_coin_block], <fluid:minecraft:empty>, [gold_coin_pile*4, <item:thermal:press_packing_2x2_die>], 2000);
<recipetype:thermal:press>.addRecipe("press_emerald_coin_block", [emerald_coin_block], <fluid:minecraft:empty>, [emerald_coin_pile*4, <item:thermal:press_packing_2x2_die>], 2000);
<recipetype:thermal:press>.addRecipe("press_diamond_coin_block", [diamond_coin_block], <fluid:minecraft:empty>, [diamond_coin_pile*4, <item:thermal:press_packing_2x2_die>], 2000);
<recipetype:thermal:press>.addRecipe("press_netherite_coin_block", [netherite_coin_block], <fluid:minecraft:empty>, [netherite_coin_pile*4, <item:thermal:press_packing_2x2_die>], 2000);


# Use Coins in a Numismatic Dynamo
// RF values are kinda arbitrary to balance things out
<recipetype:thermal:numismatic_fuel>.addFuel("copper_coin_fuel", copper_coin, 1000);
<recipetype:thermal:numismatic_fuel>.addFuel("iron_coin_fuel", iron_coin, 4000);
<recipetype:thermal:numismatic_fuel>.addFuel("gold_coin_fuel", gold_coin, 8000);
<recipetype:thermal:numismatic_fuel>.addFuel("emerald_coin_fuel", emerald_coin, 12000);
<recipetype:thermal:numismatic_fuel>.addFuel("diamond_coin_fuel", diamond_coin, 64000);
<recipetype:thermal:numismatic_fuel>.addFuel("netherite_coin_fuel", netherite_coin, 256000);
/*
// Coin Piles
// RF value is a number I picked
<recipetype:thermal:numismatic_fuel>.addFuel("copper_pile_fuel", copper_coin_pile, 10000);
<recipetype:thermal:numismatic_fuel>.addFuel("iron_coin_pile_fuel", iron_coin_pile, 40000);
<recipetype:thermal:numismatic_fuel>.addFuel("gold_coin_pile_fuel", gold_coin_pile, 80000);
<recipetype:thermal:numismatic_fuel>.addFuel("emerald_coin_pile_fuel", emerald_coin_pile, 120000);
<recipetype:thermal:numismatic_fuel>.addFuel("diamond_coin_pile_fuel", diamond_coin_pile, 640000);
<recipetype:thermal:numismatic_fuel>.addFuel("netherite_coin_pile_fuel", netherite_coin_pile, 2560000);

// Coin Blocks
// RF value is 
<recipetype:thermal:numismatic_fuel>.addFuel("copper_coin_block_fuel", copper_coin_block, 40000);
<recipetype:thermal:numismatic_fuel>.addFuel("iron_coin_block_fuel", iron_coin_block, 100000);
<recipetype:thermal:numismatic_fuel>.addFuel("gold_coin_block_fuel", gold_coin_block, 350000);
<recipetype:thermal:numismatic_fuel>.addFuel("emerald_coin_block_fuel", emerald_coin_block, 750000);
<recipetype:thermal:numismatic_fuel>.addFuel("diamond_coin_block_fuel", diamond_coin_block, 1000000);
<recipetype:thermal:numismatic_fuel>.addFuel("netherite_coin_block_fuel", netherite_coin_block, 10000000);
*/


# Upgrade trading blocks into network traders
craftingTable.addShaped("normal_network_upgrade", <item:lightmanscurrency:item_trader_server_med>,
    [[iron, <tag:items:lightmanscurrency:trader_normal>, iron],
    [iron, <item:lightmanscurrency:trading_core>, iron],
    [iron, <item:minecraft:ender_eye>, iron]]);
	
craftingTable.addShaped("special_network_upgrade", <item:lightmanscurrency:item_trader_server_med>,
    [[iron, <tag:items:lightmanscurrency:trader_specialty>, iron],
    [iron, <item:lightmanscurrency:trading_core>, iron],
    [iron, <item:minecraft:ender_eye>, iron]]);


# Remove the Coin Minter since it's now useless
craftingTable.remove(<item:lightmanscurrency:coinmint>);
mods.jei.JEI.hideIngredient(<item:lightmanscurrency:coinmint>);

print("currency.zs loaded");