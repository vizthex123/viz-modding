# Adds recipes that use the Molecular Rearranger

print("rearranger.zs loading...");

val rearranger = <contenttweaker:molecular_rearranger>;

// Melon Blocks -> Pumpkins
recipes.addShapeless("melons_to_pumpkins", <minecraft:pumpkin>, [<minecraft:melon_block>, <jjcoin:gold_coin>]);

// Melons -> Sugar Canes/Salt
recipes.addShapeless("melon_to_salt", <xlfoodmod:salt>, [<byg:woodenmortar>.reuse(), <minecraft:melon>]);
recipes.addShapeless("melon_to_sugar_cane", <minecraft:reeds>, [<jjcoin:silver_coin>, <minecraft:melon>]);

// Remove terracotta & concrete colouring
// Also converts concrete into terracotta
recipes.addShapeless(<minecraft:hardened_clay>, [<minecraft:stained_hardened_clay:*>, <jjcoin:copper_coin>]);
recipes.addShapeless(<minecraft:hardened_clay>*2, [<minecraft:concrete:*>, <jjcoin:silver_coin>]);


print("rearranger.zs loaded");