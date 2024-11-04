# Adds recipes to smelt the first 3 Compressed Cobblestone and both Compressed Sands from Extra Utilities 2
# Should be indexed by almost every furnace-style block from mods
# Script by vizthex
# https://www.curseforge.com/members/vizthex/projects

print("Loading smeltable_compressed_blocks.zs...");

furnace.addRecipe(<minecraft:stone>*9, <extrautils2:compressedcobblestone>, 0.9);
furnace.addRecipe(<minecraft:stone>*64, <extrautils2:compressedcobblestone:1>, 2.4);
furnace.addRecipe(<minecraft:stonebrick>*64, <extrautils2:compressedcobblestone:2>, 5.0);

furnace.addRecipe(<minecraft:glass>*9, <extrautils2:compressedsand>, 1.5);
furnace.addRecipe(<minecraft:glass>*64, <extrautils2:compressedsand:1>, 4.0);

furnace.addRecipe(<minecraft:netherbrick>*9, <extrautils2:compressednetherrack>, 0.75);
furnace.addRecipe(<minecraft:netherbrick>*64, <extrautils2:compressednetherrack:1>, 1.5);
furnace.addRecipe(<minecraft:nether_brick>*64, <extrautils2:compressednetherrack:2>, 4.0);

print("smeltable_compressed_blocks.zs loaded");