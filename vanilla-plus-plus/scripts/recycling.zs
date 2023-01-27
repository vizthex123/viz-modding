# Adds recipes to recycle various things
print("recycling.zs loading...");
/*
furnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);
blastFurnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);

default cook time is 200

1 ingot = 1 scrap
1 nugget = 1 small scrap

1 scrap = 3 nuggets
9 small scrap = 1 scrap

.1 XP for scrap items, .3 for gold, .5 for diamond, 1 for netherite
*/

# Use Shears to recycle things
craftingTable.addShapeless("recycle_banners", <item:minecraft:string>*12, [<tag:items:bookshelf:shears>.asIIngredient().anyDamage().transformDamage(5), <tag:items:minecraft:banners>]);
craftingTable.addShapeless("recycle_bow", <item:minecraft:string>*2, [<tag:items:bookshelf:shears>.asIIngredient().anyDamage().transformDamage(3), <item:minecraft:bow>.anyDamage()]);
craftingTable.addShapeless("recycle_fishing_rod", <item:minecraft:string>, [<tag:items:bookshelf:shears>.asIIngredient().anyDamage().transformDamage(2), <item:minecraft:fishing_rod>.anyDamage()]);
craftingTable.addShapeless("recycle_lead", <item:minecraft:string>*2, [<tag:items:bookshelf:shears>.asIIngredient().anyDamage().transformDamage(1), <item:minecraft:lead>]);


# Smelt items into Scrap
furnace.removeByName("minecraft:iron_nugget_from_smelting");
furnace.removeByName("minecraft:gold_nugget_from_smelting");
blastFurnace.removeByName("minecraft:iron_nugget_from_blasting");
blastFurnace.removeByName("minecraft:gold_nugget_from_blasting");

furnace.removeByName("farmersdelight:iron_nugget_from_smelting_knife");
furnace.removeByName("nethersdelight:iron_nugget_from_smelting_machete");
furnace.removeByName("farmersdelight:gold_nugget_from_smelting_knife");
furnace.removeByName("nethersdelight:gold_nugget_from_smelting_machete");

blastFurnace.removeByName("farmersdelight:iron_nugget_from_blasting_knife");
blastFurnace.removeByName("nethersdelight:iron_nugget_from_blasting_machete");
blastFurnace.removeByName("farmersdelight:gold_nugget_from_blasting_knife");
blastFurnace.removeByName("nethersdelight:gold_nugget_from_blasting_machete");

furnace.addRecipe("recycle_copper_item", <item:kubejs:small_copper_scrap>, <tag:items:vanilla:meltable_copper>.asIIngredient().anyDamage(), 0, 200);
blastFurnace.addRecipe("blast_recycle_copper_item", <item:kubejs:small_copper_scrap>, <tag:items:vanilla:meltable_copper>.asIIngredient().anyDamage(), 0, 100);

furnace.addRecipe("recycle_metal_item", <item:kubejs:small_scrap>, <tag:items:vanilla:meltable_metal>.asIIngredient().anyDamage(), 0.1, 200);
blastFurnace.addRecipe("blast_recycle_metal_item", <item:kubejs:small_scrap>, <tag:items:vanilla:meltable_metal>.asIIngredient().anyDamage(), 0.1, 100);

furnace.addRecipe("recycle_small_metal_item", <item:minecraft:iron_nugget>, <tag:items:vanilla:meltable_metal_small>.asIIngredient(), 0.1, 200);
blastFurnace.addRecipe("blast_recycle_small_metal_item", <item:minecraft:iron_nugget>, <tag:items:vanilla:meltable_metal_small>.asIIngredient(), 0.1, 100);

furnace.addRecipe("recycle_gold_item", <item:kubejs:small_gold_scrap>, <tag:items:vanilla:meltable_gold>.asIIngredient().anyDamage(), 0.3, 200);
blastFurnace.addRecipe("blast_recycle_gold_item", <item:kubejs:small_gold_scrap>, <tag:items:vanilla:meltable_gold>.asIIngredient().anyDamage(), 0.3, 100);

furnace.addRecipe("recycle_small_gold_item", <item:minecraft:gold_nugget>, <tag:items:vanilla:meltable_gold_small>.asIIngredient(), 0.1, 200);
blastFurnace.addRecipe("blast_recycle_small_gold_item", <item:minecraft:gold_nugget>, <tag:items:vanilla:meltable_gold_small>.asIIngredient(), 0.1, 100);

blastFurnace.addRecipe("blast_recycle_diamond_item", <item:kubejs:small_diamond_scrap>, <tag:items:vanilla:meltable_diamond>.asIIngredient().anyDamage(), 0.5, 200);
blastFurnace.addRecipe("blast_recycle_netherite_item", <item:minecraft:netherite_scrap>, <tag:items:vanilla:meltable_netherite>.asIIngredient().anyDamage(), 1.0, 200);

// Recycle Music Discs
blastFurnace.addRecipe("recycle_music_disc", <item:kubejs:disc_residue>, <tag:items:minecraft:music_discs>, 1.0, 100);

// Recycle Candles
furnace.addRecipe("recycle_candles", <item:minecraft:honeycomb>, <tag:items:minecraft:candles>, 0.5, 200);



### Untagged Recipes
// Blast Golden Apples into Gold Scrap
furnace.addRecipe("smelt_golden_apple", <item:kubejs:gold_scrap>*8, <item:minecraft:golden_apple>, 1.5, 200);
blastFurnace.addRecipe("blast_golden_apple", <item:kubejs:gold_scrap>*8, <item:minecraft:golden_apple>, 1.5, 100);

// Blast Enchanted Golden Apples into Gold Scrap
blastFurnace.addRecipe("blast_enchanted_golden_apple", <item:kubejs:gold_scrap>*64, <item:minecraft:enchanted_golden_apple>, 3.0, 200);

// Blast Totems of Undying into Gold Scrap
blastFurnace.addRecipe("blast_recycle_totem", <item:kubejs:gold_scrap>*64, <item:minecraft:totem_of_undying>, 3.0, 200);

// Blast Echo Shards into Diamond Scrap
blastFurnace.addRecipe("blast_echo_shard", <item:kubejs:diamond_scrap>, <item:minecraft:echo_shard>, 5.0, 400);

// Blast Heart of the Sea into Diamond Scrap
blastFurnace.addRecipe("blast_heart", <item:kubejs:diamond_scrap>*4, <item:minecraft:heart_of_the_sea>, 10.0, 600);



# Modded Recipes
// Recycle Amethyst Mage Hands
furnace.addRecipe("recycle_amethyst_hand", <item:minecraft:amethyst_shard>*3, <item:magehand:amethyst_spawner_item>, 0.1, 200);
blastFurnace.addRecipe("blast_recycle_amethyst_hand", <item:minecraft:amethyst_shard>*3, <item:magehand:amethyst_spawner_item>, 0.1, 100);

// Recycle Ring of Attraction
furnace.addRecipe("recycle_ring", <item:minecraft:lapis_lazuli>*2, <item:ring_of_attraction:ring_of_attraction>, 0.1, 200);
blastFurnace.addRecipe("blast_recycle_ring", <item:minecraft:lapis_lazuli>*2, <item:ring_of_attraction:ring_of_attraction>, 0.1, 100);

print("recycling.zs loaded");