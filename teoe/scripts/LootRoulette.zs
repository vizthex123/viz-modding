# Name: LootRoulette.zs
# Changes: Tooltips for Loot Roulette items, and display names
# Script by vizthex

<LootRoulette:MaterialCache>.displayName = "Mystical Cache";
<LootRoulette:MaterialCache>.addTooltip(format.gold("Contains Mystical Gems, which can be turned into coins"));
<LootRoulette:MaterialCache>.addTooltip(format.gold("or used to craft various items"));

<LootRoulette:C>.addTooltip(format.gold("Worth 500 Coins"));
<LootRoulette:U>.addTooltip(format.gold("Worth 1,500 Coins"));
<LootRoulette:R>.addTooltip(format.gold("Worth 5,000 Coins"));
<LootRoulette:L>.addTooltip(format.gold("Worth 15,000 Coins"));

<LootRoulette:C>.displayName = "Mystical Ruby";
<LootRoulette:U>.displayName = "Mystical Sapphire";
<LootRoulette:R>.displayName = "Mystical Amythest";
<LootRoulette:L>.displayName = "Mystical Topaz";

recipes.addShaped(<LootRoulette:MaterialCache>*4, [[<universalcoins:item.obsidian_coin>, <universalcoins:item.diamond_coin>, <universalcoins:item.obsidian_coin>],
                                            		                    [<universalcoins:item.diamond_coin>, <universalcoins:item.obsidian_coin>, <universalcoins:item.diamond_coin>],
 		              		                    [<universalcoins:item.obsidian_coin>, <universalcoins:item.diamond_coin>, <universalcoins:item.obsidian_coin>]]);