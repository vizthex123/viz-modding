# Adds recipes for Tinkers' hearts
// Requires either TinkersHearts_OreDict_BQ, TinkersHearts_OreDict_HQM, or both scripts to be loaded.
# Script by vizthex

recipes.remove(<TConstruct:heartCanister:1>);

# OreDict Hearts
recipes.addShapeless(<HardcoreQuesting:hearts:3>, [<ore:quarterHeart>, <ore:quarterHeart>, <ore:quarterHeart>, <ore:quarterHeart>]);
recipes.addShapeless(<HardcoreQuesting:hearts:2>, [<ore:quarterHeart>, <ore:quarterHeart>, <ore:quarterHeart>]);
recipes.addShapeless(<HardcoreQuesting:hearts:2>, [<ore:quarterHeart>, <ore:halfHeart>]);
recipes.addShapeless(<HardcoreQuesting:hearts:1>, [<ore:quarterHeart>, <ore:quarterHeart>]);


# Minature Red Heart
recipes.addShapeless(<TConstruct:heartCanister:1>, [<ore:fullHeart>, <ore:dustRedstone>]);
recipes.addShapeless(<TConstruct:heartCanister:1>*4, [<TConstruct:heartCanister:3>]);

# Miniature Yellow Heart
recipes.addShapeless(<TConstruct:heartCanister:3>*4, [<TConstruct:heartCanister:1>, <TConstruct:heartCanister:1>, <TConstruct:heartCanister:1>, <TConstruct:heartCanister:1>]);

# Miniature Green Heart
recipes.addShapeless(<TConstruct:heartCanister:5>*2, [<TConstruct:heartCanister:3>, <TConstruct:heartCanister:3>, <TConstruct:heartCanister:3>, <TConstruct:heartCanister:3>]);

# Green Heart Canister
recipes.addShaped(<TConstruct:heartCanister:6>*4, [[<ore:nuggetEmerald>, <minecraft:cake>, <ore:nuggetEmerald>],
                             			                       [<minecraft:mushroom_stew>, <TConstruct:heartCanister:4>, <minecraft:mushroom_stew>],
                          			                       [<ore:nuggetEmerald>, <minecraft:cake>, <ore:nuggetEmerald>]]);
// Recipe 2 (Cheaper, but only makes 1)
recipes.addShapeless(<TConstruct:heartCanister:6>, [<TConstruct:heartCanister:4>, <minecraft:cake>, <ore:gemEmerald>]);