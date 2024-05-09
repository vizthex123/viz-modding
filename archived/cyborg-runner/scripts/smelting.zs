# Lets you smelt down vanilla items into ores, and boosts the existing recipes
# Script by vizthex
# https://www.curseforge.com/members/vizthex/projects

print("smelting.zs loading...");

var iron = <minecraft:iron_nugget>;
var gold = <minecraft:gold_nugget>;

// Smelt Compressed Cobblestone into Stone Bricks (T1 - 3)
furnace.addRecipe(<minecraft:stone>*9, <extrautils2:compressedcobblestone>, 0.9);
furnace.addRecipe(<minecraft:stone>*64, <extrautils2:compressedcobblestone:1>, 3.0);
mods.thermalexpansion.InductionSmelter.addRecipe(<minecraft:stonebrick>*64, <extrautils2:compressedcobblestone:2>, <minecraft:cobblestone>, 2000, <minecraft:stonebrick>*64, 100);

# Recycling gives 3 Nuggets per Ingot used

// Smelt Flint and Steel & Buckets into Iron
furnace.addRecipe(iron*3, <minecraft:flint_and_steel:*>, 0.75);
furnace.addRecipe(iron*9, <minecraft:bucket>, 3.0);

// Smelt Compasses & Clocks
furnace.addRecipe(iron*12, <minecraft:compass>, 2.0);
furnace.addRecipe(gold*12, <minecraft:clock>, 4.0);

// Smelt Cauldrons & the Codex
furnace.addRecipe(iron*21, <minecraft:cauldron>, 3.5);
furnace.addRecipe(iron*32, <villagenames:codex>, 10.0);

# Increase Nugget output of smelted items
# Chainmail gives 1 nugget per material to make it give half the nuggets needed to craft the set
furnace.remove(iron);
furnace.remove(gold);

furnace.addRecipe(iron*5, <minecraft:chainmail_helmet:*>, 1.0);
furnace.addRecipe(iron*8, <minecraft:chainmail_chestplate:*>, 1.6);
furnace.addRecipe(iron*7, <minecraft:chainmail_leggings:*>, 1.4);
furnace.addRecipe(iron*4, <minecraft:chainmail_boots:*>, 0.8);

furnace.addRecipe(iron*15, <minecraft:iron_helmet:*>, 0.5);
furnace.addRecipe(iron*24, <minecraft:iron_chestplate:*>, 0.8);
furnace.addRecipe(iron*21, <minecraft:iron_leggings:*>, 0.7);
furnace.addRecipe(iron*12, <minecraft:iron_boots:*>, 0.4);

furnace.addRecipe(iron*6, <minecraft:iron_sword:*>, 0.2);
furnace.addRecipe(iron*9, <minecraft:iron_pickaxe:*>, 0.3);
furnace.addRecipe(iron*3, <minecraft:iron_shovel:*>, 0.1);
furnace.addRecipe(iron*6, <minecraft:iron_hoe:*>, 0.2);
furnace.addRecipe(iron*9, <minecraft:iron_axe:*>, 0.3);

furnace.addRecipe(gold*15, <minecraft:golden_helmet:*>, 0.5);
furnace.addRecipe(gold*24, <minecraft:golden_chestplate:*>, 0.8);
furnace.addRecipe(gold*21, <minecraft:golden_leggings:*>, 0.7);
furnace.addRecipe(gold*12, <minecraft:golden_boots:*>, 0.4);

furnace.addRecipe(gold*6, <minecraft:golden_sword:*>, 0.2);
furnace.addRecipe(gold*9, <minecraft:golden_pickaxe:*>, 0.3);
furnace.addRecipe(gold*3, <minecraft:golden_shovel:*>, 0.1);
furnace.addRecipe(gold*6, <minecraft:golden_hoe:*>, 0.2);
furnace.addRecipe(gold*9, <minecraft:golden_axe:*>, 0.3);

print("smelting.zs loaded");