# Changes things related to Loot Roulette (and houses most recipes that use it)
# Nether Star recipe is in misc.zs
print("LootRoulette.zs loading...");

val cache = <LootRoulette:MaterialCache>;
val common = <LootRoulette:C>;
val uncommon = <LootRoulette:U>;
val rare = <LootRoulette:R>;
val legendary = <LootRoulette:L>;

val diamond_coin = <universalcoins:item.diamond_coin>;
val obsidian_coin = <universalcoins:item.obsidian_coin>;

# Cache recipe
recipes.addShaped(cache*4, [[diamond_coin, diamond_coin, diamond_coin],
											      [diamond_coin, obsidian_coin, diamond_coin],
											      [diamond_coin, diamond_coin, diamond_coin]]);

# Green Hearts
val empty_canister = <TConstruct:heartCanister>;
recipes.addShapeless(<TConstruct:heartCanister:5>, [diamond_coin, <TConstruct:heartCanister:3>, <TConstruct:heartCanister:1>]);
recipes.addShapeless(<TConstruct:heartCanister:6>, [empty_canister, empty_canister, <TConstruct:heartCanister:5>, rare]);

# Renames & Tooltips
cache.displayName = "Mystical Cache";
cache.addTooltip(format.gold("Contains Mystical Gems (used to craft various items)"));

common.addTooltip(format.gold("Worth 500 Coins"));
uncommon.addTooltip(format.gold("Worth 1,500 Coins"));
rare.addTooltip(format.gold("Worth 5,000 Coins"));
legendary.addTooltip(format.gold("Worth 15,000 Coins"));

common.displayName = "Mystical Ruby";
uncommon.displayName = "Mystical Sapphire";
rare.displayName = "Mystical Amythest";
legendary.displayName = "Mystical Topaz";

print("LootRoulette.zs loaded");