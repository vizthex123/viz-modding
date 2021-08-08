# Lets you smelt down vanilla items into ores, and boosts the existing recipes
# Script by vizthex
# https://www.curseforge.com/members/vizthex/projects

print("smelting.zs loading...");

// Smelt Compressed Cobblestone (T1 - 4)
furnace.addRecipe(<minecraft:stone>*9, <extrautils2:compressedcobblestone>, 0.9);
furnace.addRecipe(<minecraft:stone>*64, <extrautils2:compressedcobblestone:1>, 3.0);
furnace.addRecipe(<minecraft:stonebrick>*64, <extrautils2:compressedcobblestone:2>, 8.0);
furnace.addRecipe(<minecraft:stonebrick:3>*64, <extrautils2:compressedcobblestone:3>, 20.0);

// Smelt Flint and Steel & Buckets into Iron
furnace.addRecipe(<minecraft:iron_ingot>, <minecraft:flint_and_steel:*>, 0.75);
furnace.addRecipe(<minecraft:iron_nugget>*13, <minecraft:bucket>, 3.0);

// Smelt Compasses & Clocks
furnace.addRecipe(<minecraft:iron_ingot>*2, <minecraft:compass>, 2.0);
furnace.addRecipe(<minecraft:gold_ingot>*2, <minecraft:clock>, 5.0);

// Smelt Anvils
// You lose a bit of Iron each time though
furnace.addRecipe(<minecraft:iron_ingot>*15, <minecraft:anvil>, 6.0);
furnace.addRecipe(<minecraft:iron_block>, <minecraft:anvil:1>, 3.0);
furnace.addRecipe(<minecraft:iron_ingot>*5, <minecraft:anvil:2>, 1.5);

// Smelt Cauldrons & Codex
furnace.addRecipe(<minecraft:iron_nugget>*31, <minecraft:cauldron>, 3.5);
furnace.addRecipe(<minecraft:iron_ingot>*5, <villagenames:codex>, 10.0);

// Increase Ingot output of smelted items
// This took forever to write
furnace.remove(<minecraft:iron_nugget>);
furnace.remove(<minecraft:gold_nugget>);

furnace.addRecipe(<minecraft:iron_nugget>*10, <minecraft:chainmail_helmet:*>, 1.0);
furnace.addRecipe(<minecraft:iron_nugget>*8, <minecraft:chainmail_chestplate:*>, 1.6);
furnace.addRecipe(<minecraft:iron_nugget>*4, <minecraft:chainmail_leggings:*>, 1.4);
furnace.addRecipe(<minecraft:iron_nugget>*2, <minecraft:chainmail_boots:*>, 0.8);

furnace.addRecipe(<minecraft:iron_ingot>*22, <minecraft:iron_helmet:*>, 0.5);
furnace.addRecipe(<minecraft:iron_ingot>*36, <minecraft:iron_chestplate:*>, 0.8);
furnace.addRecipe(<minecraft:iron_ingot>*31, <minecraft:iron_leggings:*>, 0.7);
furnace.addRecipe(<minecraft:iron_ingot>*18, <minecraft:iron_boots:*>, 0.4);

furnace.addRecipe(<minecraft:iron_nugget>*9, <minecraft:iron_sword:*>, 0.2);
furnace.addRecipe(<minecraft:iron_nugget>*13, <minecraft:iron_pickaxe:*>, 0.3);
furnace.addRecipe(<minecraft:iron_nugget>*4, <minecraft:iron_shovel:*>, 0.1);
furnace.addRecipe(<minecraft:iron_ingot>, <minecraft:iron_hoe:*>, 0.2);
furnace.addRecipe(<minecraft:iron_nugget>*13, <minecraft:iron_axe:*>, 0.3);

furnace.addRecipe(<minecraft:gold_ingot>*2, <minecraft:golden_helmet:*>, 0.5);
furnace.addRecipe(<minecraft:gold_ingot>*4, <minecraft:golden_chestplate:*>, 0.8);
furnace.addRecipe(<minecraft:gold_ingot>*3, <minecraft:golden_leggings:*>, 0.7);
furnace.addRecipe(<minecraft:gold_ingot>*2, <minecraft:golden_boots:*>, 0.4);

furnace.addRecipe(<minecraft:gold_nugget>*9, <minecraft:golden_sword:*>, 0.2);
furnace.addRecipe(<minecraft:gold_nugget>*13, <minecraft:golden_pickaxe:*>, 0.3);
furnace.addRecipe(<minecraft:gold_nugget>*4, <minecraft:golden_shovel:*>, 0.1);
furnace.addRecipe(<minecraft:gold_ingot>, <minecraft:golden_hoe:*>, 0.2);
furnace.addRecipe(<minecraft:gold_nugget>*13, <minecraft:golden_axe:*>, 0.3);

furnace.addRecipe(<minecraft:diamond>*2, <minecraft:diamond_helmet:*>, 0.5);
furnace.addRecipe(<minecraft:diamond>*4, <minecraft:diamond_chestplate:*>, 0.8);
furnace.addRecipe(<minecraft:diamond>*3, <minecraft:diamond_leggings:*>, 0.7);
furnace.addRecipe(<minecraft:diamond>*2, <minecraft:diamond_boots:*>, 0.4);

furnace.addRecipe(<minecraft:diamond>, <minecraft:diamond_sword:*>, 0.2);
furnace.addRecipe(<minecraft:diamond>, <minecraft:diamond_pickaxe:*>, 0.3);
furnace.addRecipe(<minecraft:diamond>, <minecraft:diamond_shovel:*>, 0.1);
furnace.addRecipe(<minecraft:diamond>, <minecraft:diamond_hoe:*>, 0.2);
furnace.addRecipe(<minecraft:diamond>, <minecraft:diamond_axe:*>, 0.3);

furnace.addRecipe(<minecraft:iron_ingot>*5, <minecraft:iron_horse_armor:*>, 0.5);
furnace.addRecipe(<minecraft:gold_ingot>*5, <minecraft:golden_horse_armor:*>, 0.75);
furnace.addRecipe(<minecraft:diamond>*5, <minecraft:diamond_horse_armor:*>, 1.0);

print("smelting.zs loaded");