# Changes stuff from Lightman's Currency
print("currency.zs loading...");

/*
furnace.addRecipe("recipeName", <output>, <input>, xp, cooktime-10s default);

craftingTable.addShapeless("recipeName", <output>, [<inputs>]);

craftingTable.addShaped("recipeName", <output>, 
    [[<input>, <input>, <input>],
    [<input>, <input>, <input>],
    [<input>, <input>, <input>]]);

craftingTable.removeByName("recipeName");
craftingTable.remove(<item>);

smithing.addRecipe("recipe_name", <output>, <item>, <item2>);

smithing.removeByName("name");

<item:>.addTooltip("tip");
*/

val empty = <item:minecraft:air>;

val copper = <item:lightmanscurrency:coin_copper>;
val iron = <item:lightmanscurrency:coin_iron>;
val gold = <item:lightmanscurrency:coin_gold>;
val emerald = <item:lightmanscurrency:coin_emerald>;
val diamond = <item:lightmanscurrency:coin_diamond>;
val netherite = <item:lightmanscurrency:coin_netherite>;

# New Trading Core recipes
craftingTable.remove(<item:lightmanscurrency:trading_core>);
craftingTable.addShaped("trading_core", <item:lightmanscurrency:trading_core>, 
    [[empty, <item:createdeco:iron_coinstack>, empty],
    [<item:createdeco:iron_coinstack>, gold, <item:createdeco:iron_coinstack>],
    [empty, <item:createdeco:iron_coinstack>, empty]]);
	
craftingTable.addShaped("trading_core_alt", <item:lightmanscurrency:trading_core>, 
    [[empty, <item:createdeco:gold_coinstack>, empty],
    [<item:createdeco:gold_coinstack>, copper, <item:createdeco:gold_coinstack>],
    [empty, <item:createdeco:gold_coinstack>, empty]]);


# Change Wallet recipes
craftingTable.remove(<item:lightmanscurrency:wallet_copper>);
craftingTable.remove(<item:lightmanscurrency:wallet_iron>);
craftingTable.remove(<item:lightmanscurrency:wallet_gold>);
craftingTable.remove(<item:lightmanscurrency:wallet_emerald>);
craftingTable.remove(<item:lightmanscurrency:wallet_diamond>);
craftingTable.remove(<item:lightmanscurrency:wallet_netherite>);

val binding = <tag:items:cie:binding>;

craftingTable.addShaped("copper_wallet", <item:lightmanscurrency:wallet_copper>, 
    [[empty, <item:createdeco:copper_coin>, empty],
    [binding, copper, binding],
    [empty, binding, empty]]);

craftingTable.addShaped("iron_wallet", <item:lightmanscurrency:wallet_iron>, 
    [[empty, <item:createdeco:iron_coin>, empty],
    [binding, iron, binding],
    [empty, binding, empty]]);

craftingTable.addShapeless("iron_wallet_upgrade", <item:lightmanscurrency:wallet_iron>, [<item:lightmanscurrency:wallet_copper>, iron, <item:createdeco:iron_coin>]);

mods.extendedcrafting.TableCrafting.addShaped("gold_wallet", 1, <item:lightmanscurrency:wallet_gold>,
	[[empty, <item:createdeco:gold_coin>, empty], 
	[binding, gold, binding], 
	[empty, binding, empty]]);

mods.extendedcrafting.TableCrafting.addShapeless("gold_wallet_upgrade", 1, <item:lightmanscurrency:wallet_gold>, [<item:lightmanscurrency:wallet_iron>, gold, <item:createdeco:gold_coin>]);

mods.extendedcrafting.TableCrafting.addShaped("emerald_wallet", 1, <item:lightmanscurrency:wallet_emerald>,
	[[empty, <item:createdeco:zinc_coin>, empty], 
	[binding, emerald, binding], 
	[empty, binding, empty]]);

mods.extendedcrafting.TableCrafting.addShapeless("emerald_wallet_upgrade", 1, <item:lightmanscurrency:wallet_emerald>, [<item:lightmanscurrency:wallet_gold>, emerald, <item:createdeco:zinc_coin>]);

mods.extendedcrafting.TableCrafting.addShaped("diamond_wallet", 1, <item:lightmanscurrency:wallet_diamond>,
	[[empty, <item:createdeco:brass_coin>, empty], 
	[binding, diamond, binding], 
	[empty, binding, empty]]);

mods.extendedcrafting.TableCrafting.addShapeless("diamond_wallet_upgrade", 1, <item:lightmanscurrency:wallet_diamond>, [<item:lightmanscurrency:wallet_emerald>, diamond, <item:createdeco:brass_coin>]);

mods.extendedcrafting.TableCrafting.addShaped("netherite_wallet", 1, <item:lightmanscurrency:wallet_netherite>,
	[[empty, <item:createdeco:cast_iron_coin>, empty], 
	[binding, <tag:items:cie:netherite_scrap>, binding], 
	[empty, binding, empty]]);

mods.extendedcrafting.TableCrafting.addShapeless("netherite_wallet_upgrade", 1, <item:lightmanscurrency:wallet_netherite>, [<item:lightmanscurrency:wallet_diamond>, <tag:items:cie:netherite_scrap>, <item:createdeco:cast_iron_coin>]);

print("currency.zs loaded");