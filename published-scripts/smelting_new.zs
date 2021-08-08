# Lets you smelt down vanilla items into ores, and boosts the existing recipes
# Script by vizthex
# https://www.curseforge.com/members/vizthex/projects
# Version 1.7, made for 1.14.4 and higher

import crafttweaker.api.FurnaceManager;
import crafttweaker.api.BlastFurnaceManager;

print("smelting.zs loading...");

// Smelt Flint and Steel & Buckets into Iron
furnace.addRecipe("flint_and_steel_to_iron", <item:minecraft:iron_ingot>, <item:minecraft:flint_and_steel>, 1.5, 100);
furnace.addRecipe("bucket_to_iron", <item:minecraft:iron_nugget>*13, <item:minecraft:bucket>, 3.0, 200);

blastFurnace.addRecipe("flint_and_steel_to_iron_blasting", <item:minecraft:iron_ingot>, <item:minecraft:flint_and_steel>, 1.5, 50);
blastFurnace.addRecipe("bucket_to_iron_blasting", <item:minecraft:iron_nugget>*13, <item:minecraft:bucket>, 3.0, 200);

// Smelt Compasses & Clocks
furnace.addRecipe("compass_to_iron", <item:minecraft:iron_ingot>*2, <item:minecraft:compass>, 2.0, 100);
furnace.addRecipe("clock_to_gold", <item:minecraft:gold_ingot>*2, <item:minecraft:clock>, 2.0, 100);

blastFurnace.addRecipe("compass_to_iron_blasting", <item:minecraft:iron_ingot>*2, <item:minecraft:compass>, 2.0, 100);
blastFurnace.addRecipe("clock_to_gold_blasting", <item:minecraft:gold_ingot>*2, <item:minecraft:clock>, 2.0, 100);

// Smelt Anvils. Requires a Blast Furnace.
// You lose a bit of Iron each time though
blastFurnace.addRecipe("anvil_to_iron", <item:minecraft:iron_ingot>*15, <item:minecraft:anvil>, 8.0, 600);
blastFurnace.addRecipe("damaged_anvil_to_iron", <item:minecraft:iron_block>, <item:minecraft:anvil>, 4.0, 500);
blastFurnace.addRecipe("broken_anvil_to_iron", <item:minecraft:iron_ingot>*5, <item:minecraft:anvil>, 2.0, 400);

# Increase Ingot output of smelted items
# This took even longer to write than last time.
// Furnace
furnace.removeByName("minecraft:iron_nugget_from_smelting");
furnace.removeByName("minecraft:gold_nugget_from_smelting");

furnace.addRecipe("chainmail_helm_to_iron", <item:minecraft:iron_nugget>*5, <item:minecraft:chainmail_helmet>.anyDamage(), 1.0, 200);
furnace.addRecipe("chainmail_chest_to_iron", <item:minecraft:iron_nugget>*8, <item:minecraft:chainmail_chestplate>.anyDamage(), 1.6, 200);
furnace.addRecipe("chainmail_legs_to_iron", <item:minecraft:iron_nugget>*4, <item:minecraft:chainmail_leggings>.anyDamage(), 1.4, 200);
furnace.addRecipe("chainmail_boots_to_iron", <item:minecraft:iron_nugget>*2, <item:minecraft:chainmail_boots>.anyDamage(), 0.8, 200);

furnace.addRecipe("iron_helm_to_iron", <item:minecraft:iron_nugget>*22, <item:minecraft:iron_helmet>.anyDamage(), 0.5, 200);
furnace.addRecipe("iron_chest_to_iron", <item:minecraft:iron_nugget>*36, <item:minecraft:iron_chestplate>.anyDamage(), 0.8, 200);
furnace.addRecipe("iron_legs_to_iron", <item:minecraft:iron_nugget>*31, <item:minecraft:iron_leggings>.anyDamage(), 0.7, 200);
furnace.addRecipe("iron_boots_to_iron", <item:minecraft:iron_nugget>*18, <item:minecraft:iron_boots>.anyDamage(), 0.4, 200);

furnace.addRecipe("iron_sword_to_iron", <item:minecraft:iron_nugget>*6, <item:minecraft:iron_sword>.anyDamage(), 0.2, 200);
furnace.addRecipe("iron_pick_to_iron", <item:minecraft:iron_nugget>*13, <item:minecraft:iron_pickaxe>.anyDamage(), 0.3, 200);
furnace.addRecipe("iron_spade_to_iron", <item:minecraft:iron_nugget>*4, <item:minecraft:iron_shovel>.anyDamage(), 0.1, 200);
furnace.addRecipe("iron_hoe_to_iron", <item:minecraft:iron_nugget>*6, <item:minecraft:iron_hoe>.anyDamage(), 0.2, 200);
furnace.addRecipe("iron_axe_to_iron", <item:minecraft:iron_nugget>*13, <item:minecraft:iron_axe>.anyDamage(), 0.3, 200);

furnace.addRecipe("golden_helm_to_golden", <item:minecraft:gold_nugget>*22, <item:minecraft:golden_helmet>.anyDamage(), 0.5, 200);
furnace.addRecipe("golden_chest_to_golden", <item:minecraft:gold_nugget>*36, <item:minecraft:golden_chestplate>.anyDamage(), 0.8, 200);
furnace.addRecipe("golden_legs_to_golden", <item:minecraft:gold_nugget>*31, <item:minecraft:golden_leggings>.anyDamage(), 0.7, 200);
furnace.addRecipe("golden_boots_to_golden", <item:minecraft:gold_nugget>*18, <item:minecraft:golden_boots>.anyDamage(), 0.4, 200);

furnace.addRecipe("golden_sword_to_golden", <item:minecraft:gold_nugget>*6, <item:minecraft:golden_sword>.anyDamage(), 0.2, 200);
furnace.addRecipe("golden_pick_to_golden", <item:minecraft:gold_nugget>*13, <item:minecraft:golden_pickaxe>.anyDamage(), 0.3, 200);
furnace.addRecipe("golden_spade_to_golden", <item:minecraft:gold_nugget>*4, <item:minecraft:golden_shovel>.anyDamage(), 0.1, 200);
furnace.addRecipe("golden_hoe_to_golden", <item:minecraft:gold_nugget>*6, <item:minecraft:golden_hoe>.anyDamage(), 0.2, 200);
furnace.addRecipe("golden_axe_to_golden", <item:minecraft:gold_nugget>*13, <item:minecraft:golden_axe>.anyDamage(), 0.3, 200);


// Blast Furnace
blastFurnace.removeByName("minecraft:iron_nugget_from_blasting");
blastFurnace.removeByName("minecraft:gold_nugget_from_blasting");

blastFurnace.addRecipe("chainmail_helm_to_iron_blasting", <item:minecraft:iron_nugget>*5, <item:minecraft:chainmail_helmet>.anyDamage(), 1.0, 100);
blastFurnace.addRecipe("chainmail_chest_to_iron_blasting", <item:minecraft:iron_nugget>*8, <item:minecraft:chainmail_chestplate>.anyDamage(), 1.6, 100);
blastFurnace.addRecipe("chainmail_legs_to_iron_blasting", <item:minecraft:iron_nugget>*4, <item:minecraft:chainmail_leggings>.anyDamage(), 1.4, 100);
blastFurnace.addRecipe("chainmail_boots_to_iron_blasting", <item:minecraft:iron_nugget>*2, <item:minecraft:chainmail_boots>.anyDamage(), 0.8, 100);

blastFurnace.addRecipe("iron_helm_to_iron_blasting", <item:minecraft:iron_nugget>*22, <item:minecraft:iron_helmet>.anyDamage(), 0.5, 100);
blastFurnace.addRecipe("iron_chest_to_iron_blasting", <item:minecraft:iron_nugget>*36, <item:minecraft:iron_chestplate>.anyDamage(), 0.8, 100);
blastFurnace.addRecipe("iron_legs_to_iron_blasting", <item:minecraft:iron_nugget>*31, <item:minecraft:iron_leggings>.anyDamage(), 0.7, 100);
blastFurnace.addRecipe("iron_boots_to_iron_blasting", <item:minecraft:iron_nugget>*18, <item:minecraft:iron_boots>.anyDamage(), 0.4, 100);

blastFurnace.addRecipe("iron_sword_to_iron_blasting", <item:minecraft:iron_nugget>*9, <item:minecraft:iron_sword>.anyDamage(), 0.2, 100);
blastFurnace.addRecipe("iron_pick_to_iron_blasting", <item:minecraft:iron_nugget>*13, <item:minecraft:iron_pickaxe>.anyDamage(), 0.3, 100);
blastFurnace.addRecipe("iron_spade_to_iron_blasting", <item:minecraft:iron_nugget>*4, <item:minecraft:iron_shovel>.anyDamage(), 0.1, 100);
blastFurnace.addRecipe("iron_hoe_to_iron_blasting", <item:minecraft:iron_ingot>, <item:minecraft:iron_hoe>.anyDamage(), 0.2, 100);
blastFurnace.addRecipe("iron_axe_to_iron_blasting", <item:minecraft:iron_nugget>*13, <item:minecraft:iron_axe>.anyDamage(), 0.3, 100);

blastFurnace.addRecipe("golden_helm_to_golden_blasting", <item:minecraft:gold_nugget>*22, <item:minecraft:golden_helmet>.anyDamage(), 0.5, 100);
blastFurnace.addRecipe("golden_chest_to_golden_blasting", <item:minecraft:gold_nugget>*36, <item:minecraft:golden_chestplate>.anyDamage(), 0.8, 100);
blastFurnace.addRecipe("golden_legs_to_golden_blasting", <item:minecraft:gold_nugget>*31, <item:minecraft:golden_leggings>.anyDamage(), 0.7, 100);
blastFurnace.addRecipe("golden_boots_to_golden_blasting", <item:minecraft:gold_nugget>*18, <item:minecraft:golden_boots>.anyDamage(), 0.4, 100);

blastFurnace.addRecipe("golden_sword_to_golden_blasting", <item:minecraft:gold_nugget>*9, <item:minecraft:golden_sword>.anyDamage(), 0.2, 100);
blastFurnace.addRecipe("golden_pick_to_golden_blasting", <item:minecraft:gold_nugget>*13, <item:minecraft:golden_pickaxe>.anyDamage(), 0.3, 100);
blastFurnace.addRecipe("golden_spade_to_golden_blasting", <item:minecraft:gold_nugget>*4, <item:minecraft:golden_shovel>.anyDamage(), 0.1, 100);
blastFurnace.addRecipe("golden_hoe_to_golden_blasting", <item:minecraft:gold_ingot>, <item:minecraft:golden_hoe>.anyDamage(), 0.2, 100);
blastFurnace.addRecipe("golden_axe_to_golden_blasting", <item:minecraft:gold_nugget>*13, <item:minecraft:golden_axe>.anyDamage(), 0.3, 100);



// Smelt Diamond & Netherite items, and Horse Amour in a Blast Furnace
blastFurnace.addRecipe("diamond_helm_to_diamond", <item:minecraft:diamond>*2, <item:minecraft:diamond_helmet>.anyDamage(), 0.5, 200);
blastFurnace.addRecipe("diamond_chest_to_diamond", <item:minecraft:diamond>*4, <item:minecraft:diamond_chestplate>.anyDamage(), 0.8, 200);
blastFurnace.addRecipe("diamond_legs_to_diamond", <item:minecraft:diamond>*3, <item:minecraft:diamond_leggings>.anyDamage(), 0.7, 200);
blastFurnace.addRecipe("diamond_boots_to_diamond", <item:minecraft:diamond>*2, <item:minecraft:diamond_boots>.anyDamage(), 0.4, 200);

blastFurnace.addRecipe("diamond_sword_to_diamond", <item:minecraft:diamond>*2, <item:minecraft:diamond_sword>.anyDamage(), 0.4, 200);
blastFurnace.addRecipe("diamond_pick_to_diamond", <item:minecraft:diamond>*2, <item:minecraft:diamond_pickaxe>.anyDamage(), 0.6, 200);
blastFurnace.addRecipe("diamond_spade_to_diamond", <item:minecraft:diamond>*2, <item:minecraft:diamond_shovel>.anyDamage(), 0.2, 200);
blastFurnace.addRecipe("diamond_hoe_to_diamond", <item:minecraft:diamond>*2, <item:minecraft:diamond_hoe>.anyDamage(), 0.4, 200);
blastFurnace.addRecipe("diamond_axe_to_diamond", <item:minecraft:diamond>*2, <item:minecraft:diamond_axe>.anyDamage(), 0.6, 200);


blastFurnace.addRecipe("netherite_helm_to_scrap", <item:minecraft:netherite_scrap>*3, <item:minecraft:netherite_helmet>.anyDamage(), 1.0, 200);
blastFurnace.addRecipe("netherite_chest_to_scrap", <item:minecraft:netherite_scrap>*3, <item:minecraft:netherite_chestplate>.anyDamage(), 1.6, 200);
blastFurnace.addRecipe("netherite_legs_to_scrap", <item:minecraft:netherite_scrap>*3, <item:minecraft:netherite_leggings>.anyDamage(), 1.4, 200);
blastFurnace.addRecipe("netherite_boots_to_scrap", <item:minecraft:netherite_scrap>*3, <item:minecraft:netherite_boots>.anyDamage(), 0.8, 200);

blastFurnace.addRecipe("netherite_sword_to_scrap", <item:minecraft:netherite_scrap>*2, <item:minecraft:netherite_sword>.anyDamage(), 0.8, 200);
blastFurnace.addRecipe("netherite_pick_to_scrap", <item:minecraft:netherite_scrap>*2, <item:minecraft:netherite_pickaxe>.anyDamage(), 1.2, 200);
blastFurnace.addRecipe("netherite_spade_to_scrap", <item:minecraft:netherite_scrap>*2, <item:minecraft:netherite_shovel>.anyDamage(), 0.4, 200);
blastFurnace.addRecipe("netherite_hoe_to_scrap", <item:minecraft:netherite_scrap>*2, <item:minecraft:netherite_hoe>.anyDamage(), 0.8, 200);
blastFurnace.addRecipe("netherite_axe_to_scrap", <item:minecraft:netherite_scrap>*2, <item:minecraft:netherite_axe>.anyDamage(), 1.2, 200);


blastFurnace.addRecipe("iron_horse_armor_to_iron", <item:minecraft:iron_ingot>*7, <item:minecraft:iron_horse_armor>.anyDamage(), 0.5, 400);
blastFurnace.addRecipe("golden_horse_armor_to_iron", <item:minecraft:gold_ingot>*7, <item:minecraft:golden_horse_armor>.anyDamage(), 0.75, 400);
blastFurnace.addRecipe("diamond_horse_armor_to_iron", <item:minecraft:diamond>*7, <item:minecraft:diamond_horse_armor>.anyDamage(), 1.0, 400);

print("smelting.zs loaded");