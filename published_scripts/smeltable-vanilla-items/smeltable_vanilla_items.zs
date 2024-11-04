# Lets you smelt down vanilla items into ingots & nuggets, and boosts the existing recipes
# Script by vizthex
# https://www.curseforge.com/members/vizthex/projects
# Version 2.1, made for 1.14.4 and higher

print("smelting.zs loading...");

// Smelt Spyglasses into Amethyst
furnace.addRecipe("smelt_spyglass", <item:minecraft:amethyst_shard>, <item:minecraft:spyglass>, 1.0, 200);
blastFurnace.addRecipe("blast_spyglass", <item:minecraft:amethyst_shard>, <item:minecraft:spyglass>, 1.0, 100);

// Smelt Flint and Steel & Buckets into Iron
furnace.addRecipe("smelt_fas", <item:minecraft:iron_nugget>*6, <item:minecraft:flint_and_steel>.anyDamage(), 1.5, 100);
furnace.addRecipe("smelt_bucket", <item:minecraft:iron_nugget>*13, <item:minecraft:bucket>, 3.0, 200);

blastFurnace.addRecipe("blast_fas", <item:minecraft:iron_nugget>*6, <item:minecraft:flint_and_steel>.anyDamage(), 1.5, 50);
blastFurnace.addRecipe("blast_bucket", <item:minecraft:iron_nugget>*13, <item:minecraft:bucket>, 3.0, 200);

// Smelt Compasses & Clocks
furnace.addRecipe("smelt_compass", <item:minecraft:iron_ingot>*2, <item:minecraft:compass>, 2.0, 100);
furnace.addRecipe("smelt_clock", <item:minecraft:gold_ingot>*2, <item:minecraft:clock>, 2.0, 100);

blastFurnace.addRecipe("blast_compass", <item:minecraft:iron_ingot>*2, <item:minecraft:compass>, 2.0, 100);
blastFurnace.addRecipe("blast_clock", <item:minecraft:gold_ingot>*2, <item:minecraft:clock>, 2.0, 100);

// Blast Anvils
// You lose a bit of Iron each time
blastFurnace.addRecipe("blast_anvil", <item:minecraft:iron_ingot>*15, <item:minecraft:anvil>, 8.0, 600);
blastFurnace.addRecipe("blast_anvil2", <item:minecraft:iron_ingot>*9, <item:minecraft:chipped_anvil>, 4.0, 500);
blastFurnace.addRecipe("blast_anvil3", <item:minecraft:iron_ingot>*5, <item:minecraft:damaged_anvil>, 2.0, 400);

# Increase Ingot output of smelted items
# This took even longer to write than last time.
// Furnace
furnace.removeByName("minecraft:iron_nugget_from_smelting");
furnace.removeByName("minecraft:gold_nugget_from_smelting");

furnace.addRecipe("smelt_chainmail_helmet", <item:minecraft:iron_nugget>*5, <item:minecraft:chainmail_helmet>.anyDamage(), 1.0, 200);
furnace.addRecipe("smelt_chainmail_chestplate", <item:minecraft:iron_nugget>*8, <item:minecraft:chainmail_chestplate>.anyDamage(), 1.6, 200);
furnace.addRecipe("smelt_chainmail_legings", <item:minecraft:iron_nugget>*4, <item:minecraft:chainmail_leggings>.anyDamage(), 1.4, 200);
furnace.addRecipe("smelt_chainmail_boots", <item:minecraft:iron_nugget>*2, <item:minecraft:chainmail_boots>.anyDamage(), 0.8, 200);

furnace.addRecipe("smelt_iron_helmet", <item:minecraft:iron_nugget>*22, <item:minecraft:iron_helmet>.anyDamage(), 0.5, 200);
furnace.addRecipe("smelt_iron_chestplate", <item:minecraft:iron_nugget>*36, <item:minecraft:iron_chestplate>.anyDamage(), 0.8, 200);
furnace.addRecipe("smelt_iron_leggings", <item:minecraft:iron_nugget>*31, <item:minecraft:iron_leggings>.anyDamage(), 0.7, 200);
furnace.addRecipe("smelt_iron_boots", <item:minecraft:iron_nugget>*18, <item:minecraft:iron_boots>.anyDamage(), 0.4, 200);

furnace.addRecipe("smelt_iron_sword", <item:minecraft:iron_nugget>*6, <item:minecraft:iron_sword>.anyDamage(), 0.2, 200);
furnace.addRecipe("smelt_iron_pickaxe", <item:minecraft:iron_nugget>*13, <item:minecraft:iron_pickaxe>.anyDamage(), 0.3, 200);
furnace.addRecipe("smelt_iron_shovel", <item:minecraft:iron_nugget>*4, <item:minecraft:iron_shovel>.anyDamage(), 0.1, 200);
furnace.addRecipe("smelt_iron_hoe", <item:minecraft:iron_nugget>*6, <item:minecraft:iron_hoe>.anyDamage(), 0.2, 200);
furnace.addRecipe("smelt_iron_axe", <item:minecraft:iron_nugget>*13, <item:minecraft:iron_axe>.anyDamage(), 0.3, 200);

furnace.addRecipe("smelt_gold_helmet", <item:minecraft:gold_nugget>*22, <item:minecraft:golden_helmet>.anyDamage(), 0.5, 200);
furnace.addRecipe("smelt_gold_chestplate", <item:minecraft:gold_nugget>*36, <item:minecraft:golden_chestplate>.anyDamage(), 0.8, 200);
furnace.addRecipe("smelt_gold_leggings", <item:minecraft:gold_nugget>*31, <item:minecraft:golden_leggings>.anyDamage(), 0.7, 200);
furnace.addRecipe("smelt_gold_boots", <item:minecraft:gold_nugget>*18, <item:minecraft:golden_boots>.anyDamage(), 0.4, 200);

furnace.addRecipe("smelt_gold_sword", <item:minecraft:gold_nugget>*6, <item:minecraft:golden_sword>.anyDamage(), 0.2, 200);
furnace.addRecipe("smelt_gold_pickaxe", <item:minecraft:gold_nugget>*13, <item:minecraft:golden_pickaxe>.anyDamage(), 0.3, 200);
furnace.addRecipe("smelt_gold_shovel", <item:minecraft:gold_nugget>*4, <item:minecraft:golden_shovel>.anyDamage(), 0.1, 200);
furnace.addRecipe("smelt_gold_hoe", <item:minecraft:gold_nugget>*6, <item:minecraft:golden_hoe>.anyDamage(), 0.2, 200);
furnace.addRecipe("smelt_gold_axe", <item:minecraft:gold_nugget>*13, <item:minecraft:golden_axe>.anyDamage(), 0.3, 200);


// Blast Furnace
blastFurnace.removeByName("minecraft:iron_nugget_from_blasting");
blastFurnace.removeByName("minecraft:gold_nugget_from_blasting");

blastFurnace.addRecipe("blast_chainmail_helmet", <item:minecraft:iron_nugget>*5, <item:minecraft:chainmail_helmet>.anyDamage(), 1.0, 100);
blastFurnace.addRecipe("blast_chainmail_chestplate", <item:minecraft:iron_nugget>*8, <item:minecraft:chainmail_chestplate>.anyDamage(), 1.6, 100);
blastFurnace.addRecipe("blast_chainmail_leggings", <item:minecraft:iron_nugget>*4, <item:minecraft:chainmail_leggings>.anyDamage(), 1.4, 100);
blastFurnace.addRecipe("blast_chainmail_boots", <item:minecraft:iron_nugget>*2, <item:minecraft:chainmail_boots>.anyDamage(), 0.8, 100);

blastFurnace.addRecipe("blast_iron_helmet", <item:minecraft:iron_nugget>*22, <item:minecraft:iron_helmet>.anyDamage(), 0.5, 100);
blastFurnace.addRecipe("blast_iron_chestplate", <item:minecraft:iron_nugget>*36, <item:minecraft:iron_chestplate>.anyDamage(), 0.8, 100);
blastFurnace.addRecipe("blast_iron_leggings", <item:minecraft:iron_nugget>*31, <item:minecraft:iron_leggings>.anyDamage(), 0.7, 100);
blastFurnace.addRecipe("blast_iron_boots", <item:minecraft:iron_nugget>*18, <item:minecraft:iron_boots>.anyDamage(), 0.4, 100);

blastFurnace.addRecipe("blast_iron_sword", <item:minecraft:iron_nugget>*9, <item:minecraft:iron_sword>.anyDamage(), 0.2, 100);
blastFurnace.addRecipe("blast_iron_pickaxe", <item:minecraft:iron_nugget>*13, <item:minecraft:iron_pickaxe>.anyDamage(), 0.3, 100);
blastFurnace.addRecipe("blast_iron_shovel", <item:minecraft:iron_nugget>*4, <item:minecraft:iron_shovel>.anyDamage(), 0.1, 100);
blastFurnace.addRecipe("blast_iron_hoe", <item:minecraft:iron_ingot>, <item:minecraft:iron_hoe>.anyDamage(), 0.2, 100);
blastFurnace.addRecipe("blast_iron_axe", <item:minecraft:iron_nugget>*13, <item:minecraft:iron_axe>.anyDamage(), 0.3, 100);

blastFurnace.addRecipe("blast_gold_helmet", <item:minecraft:gold_nugget>*22, <item:minecraft:golden_helmet>.anyDamage(), 0.5, 100);
blastFurnace.addRecipe("blast_gold_chestplate", <item:minecraft:gold_nugget>*36, <item:minecraft:golden_chestplate>.anyDamage(), 0.8, 100);
blastFurnace.addRecipe("blast_gold_leggings", <item:minecraft:gold_nugget>*31, <item:minecraft:golden_leggings>.anyDamage(), 0.7, 100);
blastFurnace.addRecipe("blast_gold_boots", <item:minecraft:gold_nugget>*18, <item:minecraft:golden_boots>.anyDamage(), 0.4, 100);

blastFurnace.addRecipe("blast_gold_sword", <item:minecraft:gold_nugget>*9, <item:minecraft:golden_sword>.anyDamage(), 0.2, 100);
blastFurnace.addRecipe("blast_gold_pickaxe", <item:minecraft:gold_nugget>*13, <item:minecraft:golden_pickaxe>.anyDamage(), 0.3, 100);
blastFurnace.addRecipe("blast_gold_shovel", <item:minecraft:gold_nugget>*4, <item:minecraft:golden_shovel>.anyDamage(), 0.1, 100);
blastFurnace.addRecipe("blast_gold_hoe", <item:minecraft:gold_nugget>*6, <item:minecraft:golden_hoe>.anyDamage(), 0.2, 100);
blastFurnace.addRecipe("blast_gold_axe", <item:minecraft:gold_nugget>*13, <item:minecraft:golden_axe>.anyDamage(), 0.3, 100);



// Smelt Diamond & Netherite items, and Horse Amour in a Blast Furnace
blastFurnace.addRecipe("blast_diamond_helmet", <item:minecraft:diamond>*2, <item:minecraft:diamond_helmet>.anyDamage(), 0.5, 150);
blastFurnace.addRecipe("blast_diamond_chestplate", <item:minecraft:diamond>*4, <item:minecraft:diamond_chestplate>.anyDamage(), 0.8, 150);
blastFurnace.addRecipe("blast_diamond_leggings", <item:minecraft:diamond>*3, <item:minecraft:diamond_leggings>.anyDamage(), 0.7, 150);
blastFurnace.addRecipe("blast_diamond_boots", <item:minecraft:diamond>*2, <item:minecraft:diamond_boots>.anyDamage(), 0.4, 150);

blastFurnace.addRecipe("blast_diamond_sword", <item:minecraft:diamond>*2, <item:minecraft:diamond_sword>.anyDamage(), 0.4, 150);
blastFurnace.addRecipe("blast_diamond_pickaxe", <item:minecraft:diamond>*2, <item:minecraft:diamond_pickaxe>.anyDamage(), 0.6, 150);
blastFurnace.addRecipe("blast_diamond_shovel", <item:minecraft:diamond>*2, <item:minecraft:diamond_shovel>.anyDamage(), 0.2, 150);
blastFurnace.addRecipe("blast_diamond_hoe", <item:minecraft:diamond>*2, <item:minecraft:diamond_hoe>.anyDamage(), 0.4, 150);
blastFurnace.addRecipe("blast_diamond_axe", <item:minecraft:diamond>*2, <item:minecraft:diamond_axe>.anyDamage(), 0.6, 150);


blastFurnace.addRecipe("blast_netherite_helmet", <item:minecraft:netherite_scrap>*3, <item:minecraft:netherite_helmet>.anyDamage(), 1.0, 200);
blastFurnace.addRecipe("blast_netherite_chestplate", <item:minecraft:netherite_scrap>*3, <item:minecraft:netherite_chestplate>.anyDamage(), 1.6, 200);
blastFurnace.addRecipe("blast_netherite_leggings", <item:minecraft:netherite_scrap>*3, <item:minecraft:netherite_leggings>.anyDamage(), 1.4, 200);
blastFurnace.addRecipe("blast_netherite_boots", <item:minecraft:netherite_scrap>*3, <item:minecraft:netherite_boots>.anyDamage(), 0.8, 200);

blastFurnace.addRecipe("blast_netherite_sword", <item:minecraft:netherite_scrap>*2, <item:minecraft:netherite_sword>.anyDamage(), 0.8, 200);
blastFurnace.addRecipe("blast_netherite_pickaxe", <item:minecraft:netherite_scrap>*2, <item:minecraft:netherite_pickaxe>.anyDamage(), 1.2, 200);
blastFurnace.addRecipe("blast_netherite_shovel", <item:minecraft:netherite_scrap>*2, <item:minecraft:netherite_shovel>.anyDamage(), 0.4, 200);
blastFurnace.addRecipe("blast_netherite_hoe", <item:minecraft:netherite_scrap>*2, <item:minecraft:netherite_hoe>.anyDamage(), 0.8, 200);
blastFurnace.addRecipe("blast_netherite_axe", <item:minecraft:netherite_scrap>*2, <item:minecraft:netherite_axe>.anyDamage(), 1.2, 200);

blastFurnace.addRecipe("blast_iron_horse_armour", <item:minecraft:iron_ingot>*4, <item:minecraft:iron_horse_armor>.anyDamage(), 3.0, 100);
blastFurnace.addRecipe("blast_gold_horse_armour", <item:minecraft:gold_ingot>*4, <item:minecraft:golden_horse_armor>.anyDamage(), 3.0, 100);
blastFurnace.addRecipe("blast_diamond_horse_armour", <item:minecraft:diamond>*4, <item:minecraft:diamond_horse_armor>.anyDamage(), 3.0, 150);

print("smelting.zs loaded");