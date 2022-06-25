# Changes recipes for Lightman's Currency items, as well as anything related to the economy of the pack

import crafttweaker.api.tag.MCTag;

print("currency.zs loading...");
/*
craftingTable.addShapeless("name", <item:output>, [<item>]);
craftingTable.addShaped("name", <item:output>,
    [[<item>, <item>, <item>],
    [<item>, <item>, <item>],
    [<item>, <item>, <item>]]);
craftingTable.remove(<item>);
craftingTable.removeByName("name");

<recipetype:thermal:pulverizer>.addRecipe(String name, MCWeightedItemStack[] outputs, IIngredient ingredient, float experience, int energy);

For Extended Crafting, use the recipe maker
*/


# Ticket recipe info
mods.jei.JEI.addDescription(<item:minecraft:paper>, ["Can be used to make tickets in a Ticket Machine"]);
mods.jei.JEI.addDescription(<item:lightmanscurrency:ticket>, ["Crafted by placing anything with the ticket_material tag into a Ticket Machine (mainly paper)"]);
mods.jei.JEI.addDescription(<item:lightmanscurrency:master_ticket>, ["Crafted by placing anything with the ticket_material tag into a Ticket Machine (mainly paper)"]);
mods.jei.JEI.addDescription(<item:lightmanscurrency:ticket_stub>, ["Crafted by placing anything with the ticket_material tag into a Ticket Machine (mainly paper)"]); 


# New wallet recipes
craftingTable.remove(<item:lightmanscurrency:wallet_copper>);
craftingTable.remove(<item:lightmanscurrency:wallet_iron>);
craftingTable.remove(<item:lightmanscurrency:wallet_gold>);
craftingTable.remove(<item:lightmanscurrency:wallet_emerald>);
craftingTable.remove(<item:lightmanscurrency:wallet_diamond>);
craftingTable.remove(<item:lightmanscurrency:wallet_netherite>);

// Copper
mods.extendedcrafting.TableCrafting.addShaped("copper_wallet", 1, <item:lightmanscurrency:wallet_copper>,
	[[<item:minecraft:air>, <tag:items:forge:nuggets>, <item:minecraft:air>], 
	[<item:minecraft:leather>, <item:minecraft:copper_ingot>, <item:minecraft:leather>], 
	[<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>]]);

// Iron
mods.extendedcrafting.TableCrafting.addShaped("iron_wallet", 1, <item:lightmanscurrency:wallet_iron>,
	[[<item:minecraft:air>, <tag:items:forge:nuggets>, <item:minecraft:air>], 
	[<item:minecraft:leather>, <item:minecraft:iron_ingot>, <item:minecraft:leather>], 
	[<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>]]);

mods.extendedcrafting.TableCrafting.addShapeless("iron_wallet_upgrade", 1, <item:lightmanscurrency:wallet_iron>,
	[<item:lightmanscurrency:wallet_copper>, <item:minecraft:iron_ingot>, <item:lightmanscurrency:coin_iron>]);

// Gold
mods.extendedcrafting.TableCrafting.addShaped("gold_wallet", 1, <item:lightmanscurrency:wallet_gold>,
	[[<item:minecraft:air>, <tag:items:forge:nuggets>, <item:minecraft:air>], 
	[<item:minecraft:leather>, <item:minecraft:gold_ingot>, <item:minecraft:leather>], 
	[<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>]]);

mods.extendedcrafting.TableCrafting.addShapeless("gold_wallet_upgrade", 1, <item:lightmanscurrency:wallet_gold>,
	[<item:lightmanscurrency:wallet_iron>, <item:minecraft:gold_ingot>, <item:lightmanscurrency:coin_gold>]);

// Emerald
mods.extendedcrafting.TableCrafting.addShaped("emerald_wallet", 1, <item:lightmanscurrency:wallet_emerald>,
	[[<item:minecraft:air>, <tag:items:forge:nuggets>, <item:minecraft:air>], 
	[<item:minecraft:leather>, <item:minecraft:emerald>, <item:minecraft:leather>], 
	[<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>]]);

mods.extendedcrafting.TableCrafting.addShapeless("emerald_wallet_upgrade", 1, <item:lightmanscurrency:wallet_emerald>,
	[<item:lightmanscurrency:wallet_gold>, <item:minecraft:emerald>, <item:lightmanscurrency:coin_emerald>]);

// Diamond
mods.extendedcrafting.TableCrafting.addShaped("diamond_wallet", 1, <item:lightmanscurrency:wallet_diamond>,
	[[<item:minecraft:air>, <tag:items:forge:nuggets>, <item:minecraft:air>], 
	[<item:minecraft:leather>, <item:minecraft:diamond>, <item:minecraft:leather>], 
	[<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>]]);

mods.extendedcrafting.TableCrafting.addShapeless("diamond_wallet_upgrade", 1, <item:lightmanscurrency:wallet_diamond>,
	[<item:lightmanscurrency:wallet_diamond>, <item:minecraft:diamond>, <item:lightmanscurrency:coin_diamond>]);

// Netherite
mods.extendedcrafting.TableCrafting.addShaped("netherite_wallet", 1, <item:lightmanscurrency:wallet_netherite>,
	[[<item:minecraft:air>, <tag:items:forge:nuggets>, <item:minecraft:air>], 
	[<item:minecraft:leather>, <item:minecraft:netherite_ingot>, <item:minecraft:leather>], 
	[<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>]]);

mods.extendedcrafting.TableCrafting.addShapeless("netherite_wallet_upgrade", 1, <item:lightmanscurrency:wallet_netherite>,
	[<item:lightmanscurrency:wallet_emerald>, <item:minecraft:netherite_ingot>, <item:lightmanscurrency:coin_netherite>]);



# New Coin Pile & Block recipes
# 2k RF for Piles, 4k for Blocks
craftingTable.removeByName("lightmanscurrency:coinpile_copper1");
craftingTable.removeByName("lightmanscurrency:coinpile_iron1");
craftingTable.removeByName("lightmanscurrency:coinpile_gold1");
craftingTable.removeByName("lightmanscurrency:coinpile_emerald1");
craftingTable.removeByName("lightmanscurrency:coinpile_diamond1");
craftingTable.removeByName("lightmanscurrency:coinpile_netherite1");

<recipetype:thermal:press>.addRecipe("press_copper_pile", [<item:lightmanscurrency:coinpile_copper> % 100], <fluid:minecraft:empty>, [<item:lightmanscurrency:coin_copper>*9, <item:thermal:press_packing_3x3_die>], 2000);
<recipetype:thermal:press>.addRecipe("press_iron_pile", [<item:lightmanscurrency:coinpile_iron> % 100], <fluid:minecraft:empty>, [<item:lightmanscurrency:coin_iron>*9, <item:thermal:press_packing_3x3_die>], 2000);
<recipetype:thermal:press>.addRecipe("press_gold_pile", [<item:lightmanscurrency:coinpile_gold> % 100], <fluid:minecraft:empty>, [<item:lightmanscurrency:coin_gold>*9, <item:thermal:press_packing_3x3_die>], 2000);
<recipetype:thermal:press>.addRecipe("press_emerald_pile", [<item:lightmanscurrency:coinpile_emerald> % 100], <fluid:minecraft:empty>, [<item:lightmanscurrency:coin_emerald>*9, <item:thermal:press_packing_3x3_die>], 2000);
<recipetype:thermal:press>.addRecipe("press_diamond_pile", [<item:lightmanscurrency:coinpile_diamond> % 100], <fluid:minecraft:empty>, [<item:lightmanscurrency:coin_diamond>*9, <item:thermal:press_packing_3x3_die>], 2000);
<recipetype:thermal:press>.addRecipe("press_netherite_pile", [<item:lightmanscurrency:coinpile_netherite> % 100], <fluid:minecraft:empty>, [<item:lightmanscurrency:coin_netherite>*9, <item:thermal:press_packing_3x3_die>], 2000);


craftingTable.removeByName("lightmanscurrency:coinblock_copper");
craftingTable.removeByName("lightmanscurrency:coinblock_iron");
craftingTable.removeByName("lightmanscurrency:coinblock_gold");
craftingTable.removeByName("lightmanscurrency:coinblock_emerald");
craftingTable.removeByName("lightmanscurrency:coinblock_diamond");
craftingTable.removeByName("lightmanscurrency:coinblock_netherite");

<recipetype:thermal:press>.addRecipe("press_copper_coin_block", [<item:lightmanscurrency:coinblock_copper> % 100], <fluid:minecraft:empty>, [<item:lightmanscurrency:coinpile_copper>*4, <item:thermal:press_packing_2x2_die>], 4000);
<recipetype:thermal:press>.addRecipe("press_iron_coin_block", [<item:lightmanscurrency:coinblock_iron> % 100], <fluid:minecraft:empty>, [<item:lightmanscurrency:coinpile_iron>*4, <item:thermal:press_packing_2x2_die>], 4000);
<recipetype:thermal:press>.addRecipe("press_gold_coin_block", [<item:lightmanscurrency:coinblock_gold> % 100], <fluid:minecraft:empty>, [<item:lightmanscurrency:coinpile_gold>*4, <item:thermal:press_packing_2x2_die>], 4000);
<recipetype:thermal:press>.addRecipe("press_emerald_coin_block", [<item:lightmanscurrency:coinblock_emerald> % 100], <fluid:minecraft:empty>, [<item:lightmanscurrency:coinpile_emerald>*4, <item:thermal:press_packing_2x2_die>], 4000);
<recipetype:thermal:press>.addRecipe("press_diamond_coin_block", [<item:lightmanscurrency:coinblock_diamond> % 100], <fluid:minecraft:empty>, [<item:lightmanscurrency:coinpile_diamond>*4, <item:thermal:press_packing_2x2_die>], 4000);
<recipetype:thermal:press>.addRecipe("press_netherite_coin_block", [<item:lightmanscurrency:coinblock_netherite> % 100], <fluid:minecraft:empty>, [<item:lightmanscurrency:coinpile_netherite>*4, <item:thermal:press_packing_2x2_die>], 4000);



# Use Coins in a Numismatic Dynamo
# Their RF values are kind of arbitrary to balance things out
<recipetype:thermal:numismatic_fuel>.addFuel("copper_coin_fuel", <item:lightmanscurrency:coin_copper>, 1000);
<recipetype:thermal:numismatic_fuel>.addFuel("iron_coin_fuel", <item:lightmanscurrency:coin_iron>, 4000);
<recipetype:thermal:numismatic_fuel>.addFuel("gold_coin_fuel", <item:lightmanscurrency:coin_gold>, 8000);
<recipetype:thermal:numismatic_fuel>.addFuel("emerald_coin_fuel", <item:lightmanscurrency:coin_emerald>, 12000);
<recipetype:thermal:numismatic_fuel>.addFuel("diamond_coin_fuel", <item:lightmanscurrency:coin_diamond>, 16000);
<recipetype:thermal:numismatic_fuel>.addFuel("netherite_coin_fuel", <item:lightmanscurrency:coin_netherite>, 20000);

// 10x the Coin value
<recipetype:thermal:numismatic_fuel>.addFuel("copper_pile_fuel", <item:lightmanscurrency:coinpile_copper>, 10000);
<recipetype:thermal:numismatic_fuel>.addFuel("iron_coin_pile_fuel", <item:lightmanscurrency:coinpile_iron>, 40000);
<recipetype:thermal:numismatic_fuel>.addFuel("gold_coin_pile_fuel", <item:lightmanscurrency:coinpile_gold>, 80000);
<recipetype:thermal:numismatic_fuel>.addFuel("emerald_coin_pile_fuel", <item:lightmanscurrency:coinpile_emerald>, 120000);
<recipetype:thermal:numismatic_fuel>.addFuel("diamond_coin_pile_fuel", <item:lightmanscurrency:coinpile_diamond>, 64000);
<recipetype:thermal:numismatic_fuel>.addFuel("netherite_coin_pile_fuel", <item:lightmanscurrency:coinpile_netherite>, 200000);

// 5x the Pile value
<recipetype:thermal:numismatic_fuel>.addFuel("copper_coin_block_fuel", <item:lightmanscurrency:coinblock_copper>, 50000);
<recipetype:thermal:numismatic_fuel>.addFuel("iron_coin_block_fuel", <item:lightmanscurrency:coinblock_iron>, 200000);
<recipetype:thermal:numismatic_fuel>.addFuel("gold_coin_block_fuel", <item:lightmanscurrency:coinblock_gold>, 400000);
<recipetype:thermal:numismatic_fuel>.addFuel("emerald_coin_block_fuel", <item:lightmanscurrency:coinblock_emerald>, 600000);
<recipetype:thermal:numismatic_fuel>.addFuel("diamond_coin_block_fuel", <item:lightmanscurrency:coinblock_diamond>, 320000);
<recipetype:thermal:numismatic_fuel>.addFuel("netherite_coin_block_fuel", <item:lightmanscurrency:coinblock_netherite>, 1000000);



### Recycling Recipes ###
// Elytra > 100 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_elytra", [<item:lightmanscurrency:coin_gold> % 100], <item:minecraft:elytra>, 0.0, 2000);

// Music Discs > 25 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_music_discs", [<item:lightmanscurrency:coin_iron>*2 % 100, <item:lightmanscurrency:coin_copper>*5 % 100], <tag:items:minecraft:music_discs>, 0.0, 2000);

// Blank Runes > 50 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_blank_runes", [<item:lightmanscurrency:coin_iron>*5 % 100], <item:quark:blank_rune>, 0.0, 2000);

// Bouncy Balls > 5 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_bouncy_balls", [<item:lightmanscurrency:coin_copper>*5 % 100], <item:conjurer_illager:throwable_ball>, 0.0, 2000);


# Remove the Coin Minter since it's now useless
craftingTable.remove(<item:lightmanscurrency:coinmint>);

print("currency.zs loaded");