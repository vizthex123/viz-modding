# Adds tooltips foritems from JJ Coins
print("JJCoins.zs loading...");
/*
<item>.displayName = "New Name";
<item>.addTooltip("Tooltip");
<item>.addShiftTooltip("Tooltip");

recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
recipes.remove(<item>);

Remember the platinum coin is diamond_coin!
*/
/*
// Use for the Toilary Mold
mods.extendedcrafting.TableCrafting.addShapeless(0, <jjcoin:copper_coin>*3, [<contenttweaker:coin_mold>, <minecraft:lava_bucket>, <ore:ingotCopper>, <ore:ingotCopper>]);
mods.extendedcrafting.TableCrafting.addShapeless(0, <jjcoin:silver_coin>*3, [<contenttweaker:coin_mold>, <minecraft:lava_bucket>, <ore:ingotSilver>, <ore:ingotSilver>]);
mods.extendedcrafting.TableCrafting.addShapeless(0, <jjcoin:gold_coin>*2, [<contenttweaker:coin_mold>, <minecraft:lava_bucket>, <ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]);
mods.extendedcrafting.TableCrafting.addShapeless(0, <jjcoin:diamond_coin>*5, [<contenttweaker:coin_mold>, <minecraft:lava_bucket>, <ore:ingotPlatinum>]);
*/
// Coffer recipe
recipes.addShapeless(<jjcoin:coffer>, [<ore:chest>, <jjcoin:copper_coin>|<jjcoin:silver_coin>|<jjcoin:gold_coin>|<jjcoin:diamond_coin>]);

// Renames & Tooltips
<jjcoin:copper_coin>.removeTooltip("Value 1");
<jjcoin:silver_coin>.removeTooltip("Value 10");
<jjcoin:gold_coin>.removeTooltip("Value 100");
<jjcoin:diamond_coin>.removeTooltip("Value 1000");

<jjcoin:copper_coin>.displayName = "Copper Toilary";
<jjcoin:silver_coin>.displayName = "Silver Toilary";
<jjcoin:gold_coin>.displayName = "Gold Toilary";
<jjcoin:diamond_coin>.displayName = "Platinum Toilary";

#	<jjcoin:coffer>.displayName = "Toilary Chest";


<jjcoin:copper_coin>.addTooltip(format.gold("1 Toilary"));
<jjcoin:silver_coin>.addTooltip(format.gold("5 Toilaries"));
<jjcoin:gold_coin>.addTooltip(format.gold("10 Toilaries"));
<jjcoin:diamond_coin>.addTooltip(format.gold("50 Toilaries"));

#	<jjcoin:coffer>.addTooltip(format.red("CURRENTLY BROKEN!"));
<jjcoin:coffer>.addTooltip(format.white("Stores many Toilaries for you"));
<jjcoin:coffer>.addTooltip(format.aqua("Each slot can hold 500 of one Toilary coin max"));
<jjcoin:coffer>.addTooltip(format.gold("Shows the total value in the UI"));

// Coin Crafting recipes
recipes.remove(<jjcoin:copper_coin>);
recipes.remove(<jjcoin:silver_coin>);
recipes.remove(<jjcoin:gold_coin>);
recipes.remove(<jjcoin:diamond_coin>);

recipes.addShapeless(<jjcoin:silver_coin>, [<jjcoin:copper_coin>, <jjcoin:copper_coin>, <jjcoin:copper_coin>, <jjcoin:copper_coin>, <jjcoin:copper_coin>]);
recipes.addShapeless(<jjcoin:gold_coin>, [<jjcoin:silver_coin>, <jjcoin:silver_coin>]);
recipes.addShapeless(<jjcoin:diamond_coin>, [<jjcoin:gold_coin>, <jjcoin:gold_coin>, <jjcoin:gold_coin>, <jjcoin:gold_coin>, <jjcoin:gold_coin>]);

recipes.addShapeless(<jjcoin:copper_coin>*5, [<jjcoin:silver_coin>]);
recipes.addShapeless(<jjcoin:silver_coin>*2, [<jjcoin:gold_coin>]);
recipes.addShapeless(<jjcoin:gold_coin>*5, [<jjcoin:diamond_coin>]);

print("JJCoins.zs loaded");