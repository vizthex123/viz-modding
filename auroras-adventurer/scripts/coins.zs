# Changes this related to coins, money. etc.
/*
recipes.addShaped(<output>, [[<null>, <null>, <null>],
                                      [<null>, <null>, <null>],
                                      [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
recipes.remove(<item>);

<item>.displayName = "New Name";
<item>.addTooltip("Tooltip");
<item>.addShiftTooltip("Tooltip");
*/
print("Loading coins.zs");

// Coin Values
<ordinarycoins:coinbronze>.addTooltip(format.gold("1 Aurum"));
<ordinarycoins:coinsilver>.addTooltip(format.gold("5 Aurum"));
<ordinarycoins:coingold>.addTooltip(format.gold("10 Aurum"));
<ordinarycoins:coinplatinum>.addTooltip(format.gold("50 Aurum"));

// Renames Coins
<ordinarycoins:coinbronze>.displayName = "Copper Aurum";
<ordinarycoins:coinsilver>.displayName = "Silver Aurum";
<ordinarycoins:coingold>.displayName = "Gold Aurum";
<ordinarycoins:coinplatinum>.displayName = "Platinum Aurum";

// Coin Recipes
recipes.addShapeless(<ordinarycoins:coinsilver>, [<ordinarycoins:coinbronze>, <ordinarycoins:coinbronze>, <ordinarycoins:coinbronze>, <ordinarycoins:coinbronze>, <ordinarycoins:coinbronze>]);
recipes.addShapeless(<ordinarycoins:coinbronze>*5, [<ordinarycoins:coinsilver>]);

recipes.addShapeless(<ordinarycoins:coingold>, [<ordinarycoins:coinsilver>, <ordinarycoins:coinsilver>]);
recipes.addShapeless(<ordinarycoins:coinsilver>*2, [<ordinarycoins:coingold>]);

recipes.addShapeless(<ordinarycoins:coinplatinum>, [<ordinarycoins:coingold>, <ordinarycoins:coingold>, <ordinarycoins:coingold>, <ordinarycoins:coingold>, <ordinarycoins:coingold>]);
recipes.addShapeless(<ordinarycoins:coingold>*5, [<ordinarycoins:coinplatinum>]);

print("coins.zs loaded");