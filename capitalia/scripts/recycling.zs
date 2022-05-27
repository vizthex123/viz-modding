# Lets you smelt down vanilla items into ingots, and boosts the existing recipes
# Also fixes recipes from Mekanism
# Uses the Furnace and Induction Smelter

print("recycling.zs loading...");

/*
mods.thermalexpansion.InductionSmelter.addRecipe(IItemStack primaryOutput, IItemStack primaryInput, IItemStack secondaryInput, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance);

furnace.addRecipe(<output>, <input>, XP[F]);

Uses 1 Sand per recycling recipe, RF amount varies
*/

// Smelt Flint and Steel into Flint
furnace.addRecipe(<minecraft:flint>, <minecraft:flint_and_steel:*>, 0);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:4>, <minecraft:flint_and_steel:*>, <ore:sand>.firstItem, 3000, <minecraft:flint>, 50);

// Smelt Compasses & Clocks
furnace.addRecipe(<minecraft:iron_ingot>*2, <minecraft:compass>, 0);
furnace.addRecipe(<minecraft:gold_ingot>*2, <minecraft:clock>, 0);

// Increase Ingot output of smelted items
// This took forever to write
furnace.remove(<minecraft:iron_nugget>);
furnace.remove(<minecraft:gold_nugget>);

furnace.addRecipe(<minecraft:iron_nugget>*5, <minecraft:chainmail_helmet:*>, 0);
furnace.addRecipe(<minecraft:iron_nugget>*8, <minecraft:chainmail_chestplate:*>, 0);
furnace.addRecipe(<minecraft:iron_nugget>*7, <minecraft:chainmail_leggings:*>, 0);
furnace.addRecipe(<minecraft:iron_nugget>*4, <minecraft:chainmail_boots:*>, 0);

furnace.addRecipe(<minecraft:iron_ingot>*2, <minecraft:iron_helmet:*>, 0);
furnace.addRecipe(<minecraft:iron_ingot>*4, <minecraft:iron_chestplate:*>, 0);
furnace.addRecipe(<minecraft:iron_ingot>*3, <minecraft:iron_leggings:*>, 0);
furnace.addRecipe(<minecraft:iron_ingot>*2, <minecraft:iron_boots:*>, 0);

furnace.addRecipe(<minecraft:iron_nugget>*6, <minecraft:iron_sword:*>, 0);
furnace.addRecipe(<minecraft:iron_ingot>*2, <minecraft:iron_pickaxe:*>, 0);
furnace.addRecipe(<minecraft:iron_nugget>*4, <minecraft:iron_shovel:*>, 0);
furnace.addRecipe(<minecraft:iron_ingot>*1, <minecraft:iron_axe:*>, 0);
furnace.addRecipe(<minecraft:iron_nugget>*8, <minecraft:iron_hoe:*>, 0);

furnace.addRecipe(<minecraft:gold_ingot>*2, <minecraft:golden_helmet:*>, 0);
furnace.addRecipe(<minecraft:gold_ingot>*4, <minecraft:golden_chestplate:*>, 0);
furnace.addRecipe(<minecraft:gold_ingot>*3, <minecraft:golden_leggings:*>, 0);
furnace.addRecipe(<minecraft:gold_ingot>*2, <minecraft:golden_boots:*>, 0);

furnace.addRecipe(<minecraft:gold_nugget>*6, <minecraft:golden_sword:*>, 0);
furnace.addRecipe(<minecraft:gold_ingot>*2, <minecraft:golden_pickaxe:*>, 0);
furnace.addRecipe(<minecraft:gold_nugget>*4, <minecraft:golden_shovel:*>, 0);
furnace.addRecipe(<minecraft:gold_ingot>*1, <minecraft:golden_axe:*>, 0);
furnace.addRecipe(<minecraft:gold_nugget>*8, <minecraft:golden_hoe:*>, 0);

furnace.addRecipe(<minecraft:diamond>*2, <minecraft:diamond_helmet:*>, 0);
furnace.addRecipe(<minecraft:diamond>*4, <minecraft:diamond_chestplate:*>, 0);
furnace.addRecipe(<minecraft:diamond>*3, <minecraft:diamond_leggings:*>, 0);
furnace.addRecipe(<minecraft:diamond>*2, <minecraft:diamond_boots:*>, 0);

furnace.addRecipe(<minecraft:diamond>*1, <minecraft:diamond_sword:*>, 0);
furnace.addRecipe(<minecraft:diamond>*2, <minecraft:diamond_pickaxe:*>, 0);
furnace.addRecipe(<minecraft:diamond>*1, <minecraft:diamond_shovel:*>, 0);
furnace.addRecipe(<minecraft:diamond>*2, <minecraft:diamond_axe:*>, 0);
furnace.addRecipe(<minecraft:diamond>*1, <minecraft:diamond_hoe:*>, 0);


# Mekanism Tools
# All the recipes giev 50% of the materials back
// Can only do Lapis since idk the recipe names :c
furnace.addRecipe(<minecraft:iron_ingot>*4, <mekanismtools:ironpaxel:*>, 0);
furnace.addRecipe(<minecraft:gold_ingot>*4, <mekanismtools:goldpaxel:*>, 0);
mods.thermalexpansion.InductionSmelter.addRecipe(<minecraft:diamond>*4, <mekanismtools:diamondpaxel:*>, <ore:sand>.firstItem, 4000);

// Lapis Lazuli
furnace.addRecipe(<minecraft:dye:4>, <mekanismtools:lapislazulisword:*>, 0);
furnace.addRecipe(<jaopca:item_nuggetlapis>*13, <mekanismtools:lapislazulipickaxe:*>, 0);
furnace.addRecipe(<jaopca:item_nuggetlapis>*5, <mekanismtools:lapislazulishovel:*>, 0);
furnace.addRecipe(<minecraft:dye:4>, <mekanismtools:lapislazulihoe:*>, 0);
furnace.addRecipe(<jaopca:item_nuggetlapis>*13, <mekanismtools:lapislazuliaxe:*>, 0);
furnace.addRecipe(<minecraft:dye:4>*4, <mekanismtools:lapislazulipaxel:*>, 0);

furnace.addRecipe(<jaopca:item_nuggetlapis>*22, <mekanismtools:lapislazulihelmet:*>, 0);
furnace.addRecipe(<minecraft:dye:4>*4, <mekanismtools:lapislazulichestplate:*>, 0);
furnace.addRecipe(<jaopca:item_nuggetlapis>*31, <mekanismtools:lapislazulileggings:*>, 0);
furnace.addRecipe(<minecraft:dye:4>*2, <mekanismtools:lapislazuliboots:*>, 0);

// Steel
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:4>, <mekanismtools:steelsword:*>, <ore:sand>.firstItem, 6000, <minecraft:iron_ingot>, 100);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:4>*2, <mekanismtools:steelpickaxe:*>, <ore:sand>.firstItem, 6000, <minecraft:iron_ingot>, 100);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:4>*4, <mekanismtools:steelshovel:*>, <ore:sand>.firstItem, 6000, <minecraft:iron_ingot>, 100);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:4>, <mekanismtools:steelhoe:*>, <ore:sand>.firstItem, 6000, <minecraft:iron_ingot>, 100);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:4>*2, <mekanismtools:steelaxe:*>, <ore:sand>.firstItem, 6000, <minecraft:iron_ingot>, 100);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:4>*4, <mekanismtools:steelpaxel:*>, <ore:sand>.firstItem, 6000, <minecraft:iron_ingot>, 100);

mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:4>*2, <mekanismtools:steelhelmet:*>, <ore:sand>.firstItem, 6000, <minecraft:iron_ingot>, 100);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:4>*3, <mekanismtools:steelchestplate:*>, <ore:sand>.firstItem, 6000, <minecraft:iron_ingot>*2, 100);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:4>*3, <mekanismtools:steelleggings:*>, <ore:sand>.firstItem, 6000, <minecraft:iron_ingot>, 100);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:4>, <mekanismtools:steelboots:*>, <ore:sand>.firstItem, 6000, <minecraft:iron_ingot>, 100);

// Obsidian
// Gives 25% back since Obsidian has stronks
// Might make it use 2 sand later on
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:nugget>*4, <mekanismtools:obsidiansword:*>, <ore:sand>.firstItem, 8000);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:nugget>*6, <mekanismtools:obsidianpickaxe:*>, <ore:sand>.firstItem, 8000);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:nugget>*2, <mekanismtools:obsidianshovel:*>, <ore:sand>.firstItem, 8000);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:nugget>*4, <mekanismtools:obsidianhoe:*>, <ore:sand>.firstItem, 8000);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:nugget>*6, <mekanismtools:obsidianaxe:*>, <ore:sand>.firstItem, 8000);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:nugget>*15, <mekanismtools:obsidianpaxel:*>, <ore:sand>.firstItem, 8000);

mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:nugget>*11, <mekanismtools:obsidianhelmet:*>, <ore:sand>.firstItem, 8000);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:nugget>*18, <mekanismtools:obsidianchestplate:*>, <ore:sand>.firstItem, 8000);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:nugget>*15, <mekanismtools:obsidianleggings:*>, <ore:sand>.firstItem, 8000);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:nugget>*9, <mekanismtools:obsidianboots:*>, <ore:sand>.firstItem, 8000);

// Osmium
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:1>, <mekanismtools:osmiumsword:*>, <ore:sand>.firstItem, 4000);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:1>*2, <mekanismtools:osmiumpickaxe:*>, <ore:sand>.firstItem, 4000);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:1>*4, <mekanismtools:osmiumshovel:*>, <ore:sand>.firstItem, 4000);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:1>, <mekanismtools:osmiumhoe:*>, <ore:sand>.firstItem, 4000);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:1>*2, <mekanismtools:osmiumaxe:*>, <ore:sand>.firstItem, 4000);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:1>*4, <mekanismtools:osmiumpaxel:*>, <ore:sand>.firstItem, 4000);

mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:1>*2, <mekanismtools:osmiumhelmet:*>, <ore:sand>.firstItem, 4000);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:1>*3, <mekanismtools:osmiumchestplate:*>, <ore:sand>.firstItem, 4000);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:1>*3, <mekanismtools:osmiumleggings:*>, <ore:sand>.firstItem, 4000);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:1>, <mekanismtools:osmiumboots:*>, <ore:sand>.firstItem, 4000);

// Bronze
mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:163>, <mekanismtools:bronzesword:*>, <ore:sand>.firstItem, 3000);
mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:163>*2, <mekanismtools:bronzepickaxe:*>, <ore:sand>.firstItem, 3000);
mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:163>*4, <mekanismtools:bronzeshovel:*>, <ore:sand>.firstItem, 3000);
mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:163>, <mekanismtools:bronzehoe:*>, <ore:sand>.firstItem, 3000);
mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:163>*2, <mekanismtools:bronzeaxe:*>, <ore:sand>.firstItem, 3000);
mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:163>*4, <mekanismtools:bronzepaxel:*>, <ore:sand>.firstItem, 3000);

mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:163>*2, <mekanismtools:bronzehelmet:*>, <ore:sand>.firstItem, 3000);
mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:163>*3, <mekanismtools:bronzechestplate:*>, <ore:sand>.firstItem, 3000);
mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:163>*3, <mekanismtools:bronzeleggings:*>, <ore:sand>.firstItem, 3000);
mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:163>, <mekanismtools:bronzeboots:*>, <ore:sand>.firstItem, 3000);

// Glowstone
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:3>, <mekanismtools:glowstonesword:*>, <ore:sand>.firstItem, 6000);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:3>*2, <mekanismtools:glowstonepickaxe:*>, <ore:sand>.firstItem, 6000);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:3>*4, <mekanismtools:glowstoneshovel:*>, <ore:sand>.firstItem, 6000);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:3>, <mekanismtools:glowstonehoe:*>, <ore:sand>.firstItem, 6000);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:3>*2, <mekanismtools:glowstoneaxe:*>, <ore:sand>.firstItem, 6000);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:3>*4, <mekanismtools:glowstonepaxel:*>, <ore:sand>.firstItem, 6000);

mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:3>*2, <mekanismtools:glowstonehelmet:*>, <ore:sand>.firstItem, 6000);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:3>*3, <mekanismtools:glowstonechestplate:*>, <ore:sand>.firstItem, 6000);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:3>*3, <mekanismtools:glowstoneleggings:*>, <ore:sand>.firstItem, 6000);
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:ingot:3>, <mekanismtools:glowstoneboots:*>, <ore:sand>.firstItem, 6000);








/*
furnace.addRecipe(<mekanism:ingot:3>*4, <mekanismtools:glowstonepaxel:*>, 0);
furnace.addRecipe(<mekanism:ingot:1>*4, <mekanismtools:osmiumpaxel:*>, 0);
furnace.addRecipe(<thermalfoundation:material:163>*4, <mekanismtools:bronzepaxel:*>, 0);
furnace.addRecipe(<mekanism:ingot>*4, <mekanismtools:obsidianpaxel:*>, 0);
*/


print("recycling.zs loaded");