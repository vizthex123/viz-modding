# Lets you smelt down vanilla items into ores, and boosts the existing recipes

print("smelting.zs loading...");

// Smelt Flint and Steel into Iron
// Even though I blacklisted them form LootBags, they keep showing up
furnace.addRecipe(<minecraft:iron_ingot>, <minecraft:flint_and_steel:*>, 1.0);

// Smelt Compasses & Clocks
furnace.addRecipe(<minecraft:iron_ingot>*2, <minecraft:compass>, 1.0);
furnace.addRecipe(<minecraft:gold_ingot>*2, <minecraft:clock>, 1.5);

// Smelt Anvils
// You lose a bit of Iron each time though
furnace.addRecipe(<minecraft:iron_block>*2, <minecraft:anvil>, 6.0);
furnace.addRecipe(<minecraft:iron_block>, <minecraft:anvil:1>, 3.0);
furnace.addRecipe(<minecraft:iron_ingot>*6, <minecraft:anvil:2>, 1.5);

// Increase Ingot output of smelted items
// This took forever to write
furnace.remove(<minecraft:iron_nugget>);
furnace.remove(<minecraft:gold_nugget>);

furnace.addRecipe(<minecraft:iron_nugget>*5, <minecraft:chainmail_helmet:*>, 1.0);
furnace.addRecipe(<minecraft:iron_nugget>*8, <minecraft:chainmail_chestplate:*>, 1.6);
furnace.addRecipe(<minecraft:iron_nugget>*7, <minecraft:chainmail_leggings:*>, 1.4);
furnace.addRecipe(<minecraft:iron_nugget>*4, <minecraft:chainmail_boots:*>, 0.8);

furnace.addRecipe(<minecraft:iron_ingot>*2, <minecraft:iron_helmet:*>, 0.5);
furnace.addRecipe(<minecraft:iron_ingot>*4, <minecraft:iron_chestplate:*>, 0.8);
furnace.addRecipe(<minecraft:iron_ingot>*3, <minecraft:iron_leggings:*>, 0.7);
furnace.addRecipe(<minecraft:iron_ingot>*2, <minecraft:iron_boots:*>, 0.4);

furnace.addRecipe(<minecraft:iron_nugget>*6, <minecraft:iron_sword:*>, 0.2);
furnace.addRecipe(<minecraft:iron_ingot>*2, <minecraft:iron_pickaxe:*>, 0.3);
furnace.addRecipe(<minecraft:iron_nugget>*4, <minecraft:iron_shovel:*>, 0.1);
furnace.addRecipe(<minecraft:iron_ingot>*1, <minecraft:iron_axe:*>, 0.3);
furnace.addRecipe(<minecraft:iron_nugget>*8, <minecraft:iron_hoe:*>, 0.2);

furnace.addRecipe(<minecraft:gold_ingot>*2, <minecraft:golden_helmet:*>, 0.5);
furnace.addRecipe(<minecraft:gold_ingot>*4, <minecraft:golden_chestplate:*>, 0.8);
furnace.addRecipe(<minecraft:gold_ingot>*3, <minecraft:golden_leggings:*>, 0.7);
furnace.addRecipe(<minecraft:gold_ingot>*2, <minecraft:golden_boots:*>, 0.4);

furnace.addRecipe(<minecraft:gold_nugget>*6, <minecraft:golden_sword:*>, 0.2);
furnace.addRecipe(<minecraft:gold_ingot>*2, <minecraft:golden_pickaxe:*>, 0.3);
furnace.addRecipe(<minecraft:gold_nugget>*4, <minecraft:golden_shovel:*>, 0.1);
furnace.addRecipe(<minecraft:gold_ingot>*1, <minecraft:golden_axe:*>, 0.3);
furnace.addRecipe(<minecraft:gold_nugget>*8, <minecraft:golden_hoe:*>, 0.2);

furnace.addRecipe(<minecraft:diamond>*2, <minecraft:diamond_helmet:*>, 0.5);
furnace.addRecipe(<minecraft:diamond>*4, <minecraft:diamond_chestplate:*>, 0.8);
furnace.addRecipe(<minecraft:diamond>*3, <minecraft:diamond_leggings:*>, 0.7);
furnace.addRecipe(<minecraft:diamond>*2, <minecraft:diamond_boots:*>, 0.4);

furnace.addRecipe(<minecraft:diamond>*1, <minecraft:diamond_sword:*>, 0.2);
furnace.addRecipe(<minecraft:diamond>*2, <minecraft:diamond_pickaxe:*>, 0.3);
furnace.addRecipe(<minecraft:diamond>*1, <minecraft:diamond_shovel:*>, 0.1);
furnace.addRecipe(<minecraft:diamond>*2, <minecraft:diamond_axe:*>, 0.3);
furnace.addRecipe(<minecraft:diamond>*1, <minecraft:diamond_hoe:*>, 0.2);

furnace.addRecipe(<minecraft:iron_ingot>*4, <mekanismtools:ironpaxel:*>, 1.5);
furnace.addRecipe(<minecraft:gold_ingot>*4, <mekanismtools:goldpaxel:*>, 2.0);
furnace.addRecipe(<minecraft:dye:4>*5, <mekanismtools:lapislazulipaxel:*>, 2.5);
furnace.addRecipe(<mekanism:ingot:3>*4, <mekanismtools:glowstonepaxel:*>, 3.0);
furnace.addRecipe(<mekanism:ingot:1>*4, <mekanismtools:osmiumpaxel:*>, 3.5);
furnace.addRecipe(<thermalfoundation:material:163>*4, <mekanismtools:bronzepaxel:*>, 4.5);
furnace.addRecipe(<mekanism:ingot>*4, <mekanismtools:obsidianpaxel:*>, 5.0);

print("smelting.zs loaded");