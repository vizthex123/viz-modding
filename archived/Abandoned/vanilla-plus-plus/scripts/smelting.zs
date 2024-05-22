# Adds recipes to furnaces
# If it gives Scrap, it goes in recycling.zs
print("smelting.zs loading...");
/*
blastFurnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);

furnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);
*/

val echo_shard = <item:minecraft:echo_shard>;

val gold_scrap = <item:kubejs:gold_scrap>;
val diamond_scrap = <item:kubejs:diamond_scrap>;

// Blast Totems of Undying into Gold Scrap
blastFurnace.addRecipe("blast_totem", gold_scrap*32, <item:minecraft:totem_of_undying>, 10.0, 200);

// Blast Golden Apples into Gold Scrap
furnace.addRecipe("smelt_golden_apple", gold_scrap*8, <item:minecraft:golden_apple>, 2.0, 200);
blastFurnace.addRecipe("blast_golden_apple", gold_scrap*8, <item:minecraft:golden_apple>, 2.0, 100);

// Blast Enchanted Golden Apples into Gold Scrap
blastFurnace.addRecipe("blast_enchanted_golden_apple", gold_scrap*64, <item:minecraft:enchanted_golden_apple>, 8.0, 100);

// Blast Echo Shards into Diamond Scrap
blastFurnace.addRecipe("blast_echo_shard", diamond_scrap, echo_shard, 8.0, 400);

// Blast Heart of the Sea into Diamond Scrap
blastFurnace.addRecipe("blast_heart", diamond_scrap*8, <item:minecraft:heart_of_the_sea>, 20.0, 600);

// Blast Sculk Catalysts & Shriekers into Echo Shards
blastFurnace.addRecipe("blast_sculk_catalyst", echo_shard, <item:minecraft:sculk_catalyst>, 16.0, 200);
blastFurnace.addRecipe("blast_sculk_shrieker", echo_shard, <item:minecraft:sculk_shrieker>, 32.0, 200);



// Smelt Shards into Clay
val clay = <item:minecraft:clay_ball>;
furnace.addRecipe("shard_to_clay", clay, <tag:items:vanilla:shards>, 1.0, 200);

# Smelt & Blast Dripstone into Clay
furnace.addRecipe("smelt_pointed_dripstone_to_clay", clay, <item:minecraft:pointed_dripstone>, 0.4, 200);
blastFurnace.addRecipe("blast_pointed_dripstone_to_clay", clay, <item:minecraft:pointed_dripstone>, 0.4, 100);
blastFurnace.addRecipe("blast_dripstone_to_clay_block", <item:minecraft:clay>, <item:minecraft:dripstone_block>, 1.6, 100);

# Blast Raw Ore blocks
blastFurnace.removeByName("charm:extra_recipes/copper_block_from_blasting_raw_copper_block");

blastFurnace.addRecipe("blast_raw_copper", <item:minecraft:copper_block>, <item:minecraft:raw_copper_block>, 4.5, 900);
blastFurnace.addRecipe("blast_raw_iron", <item:minecraft:iron_block>, <item:minecraft:raw_iron_block>, 6.3, 900);
blastFurnace.addRecipe("blast_raw_gold", <item:minecraft:gold_block>, <item:minecraft:raw_gold_block>, 9.0, 900);

print("smelting.zs loaded");