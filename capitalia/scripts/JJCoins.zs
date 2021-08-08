# Adds tooltips foritems from JJ Coins
/*
<item>.displayName = "New Name";
<item>.addTooltip("Tooltip");
<item>.addShiftTooltip("Tooltip");

recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
recipes.remove(<item>);
*/

print("JJCoins.zs loading...");

// Coffer recipe
recipes.addShapeless(<jjcoin:coffer>, [<ore:chestWood>, <jjcoin:copper_coin>|<jjcoin:silver_coin>|<jjcoin:gold_coin>|<jjcoin:diamond_coin>]);


// Tooltips
<jjcoin:copper_coin>.removeTooltip("Value 1");
<jjcoin:silver_coin>.removeTooltip("Value 10");
<jjcoin:gold_coin>.removeTooltip("Value 100");
<jjcoin:diamond_coin>.removeTooltip("Value 1000");

<jjcoin:copper_coin>.displayName = "Copper Credit";
<jjcoin:silver_coin>.displayName = "Silver Credit";
<jjcoin:gold_coin>.displayName = "Gold Credit";
<jjcoin:diamond_coin>.displayName = "Platinum Credit";

<jjcoin:copper_coin>.addTooltip(format.gold("$1"));
<jjcoin:silver_coin>.addTooltip(format.gold("$10"));
<jjcoin:gold_coin>.addTooltip(format.gold("$100"));
<jjcoin:diamond_coin>.addTooltip(format.gold("$1,000"));

<jjcoin:coffer>.addTooltip(format.white("Stores a lot of credits for you"));
<jjcoin:coffer>.addTooltip(format.aqua("Each slot can hold 500 Coins max"));
<jjcoin:coffer>.addTooltip(format.gold("Shows the total value in the UI"));
<jjcoin:coffer>.addTooltip(format.darkRed("May not work sometimes, not sure why."));


// Coin Crafting recipes
recipes.remove(<jjcoin:copper_coin>);
recipes.remove(<jjcoin:silver_coin>);
recipes.remove(<jjcoin:gold_coin>);
recipes.remove(<jjcoin:diamond_coin>);

recipes.addShapeless(<jjcoin:copper_coin>*10, [<jjcoin:silver_coin>]);
recipes.addShapeless(<jjcoin:silver_coin>*10, [<jjcoin:gold_coin>]);
recipes.addShapeless(<jjcoin:gold_coin>*10, [<jjcoin:diamond_coin>]);

print("JJCoins.zs loaded");