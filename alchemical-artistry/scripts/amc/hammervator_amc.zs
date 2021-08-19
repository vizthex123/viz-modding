# Adds AMC & recipes to Hammers & Excavators because I am tired of spamming my other scripts
#priority 20

import crafttweaker.api.tag.MCTag;

print("hammervator_amc.zs loading...");
/*
Tiers:
italicized dark gray: <1 (microscopic)
dark gray: 1 - 25 (minimal)
gray: 26 - 100 (average)
dark blue: 101 - 250 (above average)
dark aqua: 251 - 500 (high)
aqua: 501 - 1,000 (very high)
green: 1,001 - 4,999 (extreme)

purple: 5,000+ (insane)

<tag:items:amc-value:0>.add(<item:>);
*/

<tag:items:amc-value:8.972>.add(<item:vanillahammers:wood_hammer>);
<tag:items:amc-value:2.75>.add(<item:vanillahammers:stone_hammer>);
<tag:items:amc-value:450.75>.add(<item:vanillahammers:iron_hammer>);
<tag:items:amc-value:900.75>.add(<item:vanillahammers:gold_hammer>);
<tag:items:amc-value:18000.75>.add(<item:vanillahammers:diamond_hammer>);
<tag:items:amc-value:18000.75>.add(<item:vanillahammers:emerald_hammer>);
<tag:items:amc-value:20200.75>.add(<item:vanillahammers:netherite_hammer>);
<tag:items:amc-value:200.75>.add(<item:vanillahammers:obsidian_hammer>);
<tag:items:amc-value:8.75>.add(<item:vanillahammers:ender_hammer>);



<tag:items:amc-value:4.611>.add(<item:vanillaexcavators:wood_excavator>);
<tag:items:amc-value:1.5>.add(<item:vanillaexcavators:stone_excavator>);
<tag:items:amc-value:225.5>.add(<item:vanillaexcavators:iron_excavator>);
<tag:items:amc-value:450.5>.add(<item:vanillaexcavators:gold_excavator>);
<tag:items:amc-value:9000.5>.add(<item:vanillaexcavators:diamond_excavator>);
<tag:items:amc-value:9000.5>.add(<item:vanillaexcavators:emerald_excavator>);
<tag:items:amc-value:11200.5>.add(<item:vanillaexcavators:netherite_excavator>);
<tag:items:amc-value:100.5>.add(<item:vanillaexcavators:obsidian_excavator>);
<tag:items:amc-value:4.5>.add(<item:vanillaexcavators:ender_excavator>);



# AMC Recipes
# Uses bags & compression catalyst
# Time taken is equal to the AMC value used in the recipe
# <250 AMC needs 1 catalyst (max of 3s or 1k RF)
# 250 - 500 AMC needs 1 catalyst (max of 5s or 2k RF)
// 400's is 3k RF
# 500+ AMC (10s or 4k RF)
# 1,000+ AMC needs 2 catalysts (15s or 6k RF)
# 2,500+ AMC needs 3 catalysts (30s or 8k RF)
# 5,000+ AMC needs 5 catalysts (45s or 12k RF)
# 10,000+ AMC needs 2 advanced catalysts (60s or 16k RF)
# 15,000+ AMC needs 1 advanced & 1 very advanced catalyst (75s or 20k RF)
# 25,000+ AMC needs 2 very advanced catalysts (90s or 24k RF)
# Crystal Values:
# Submicroscopic: 0.001
# Microscopic: 0.005
# Miniscule: 0.25
# Tiny: 1
# Small: 2
# Large: 5
/*
mods.extendedcrafting.EnderCrafting.addShapeless("name", <output>, [<9-inputs>], seconds);

<recipetype:thermal:smelter>.addRecipe("name", [<4-outputs>], [<3-inputs>], 0, rf);

RF cost is 100x (total) AMC value
*/

### Hammers
// Ender Hammer [8.75]
<recipetype:thermal:smelter>.addRecipe("crystallize_ender_hammer", [<item:contenttweaker:amc_crystal_small>*4 % 100, <item:contenttweaker:amc_crystal_miniscule>*3 % 100], [<tag:items:amc-value:8.75>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 500);

// Wooden Hammer [8.972]
<recipetype:thermal:smelter>.addRecipe("crystallize_wooden_hammer", [<item:contenttweaker:amc_crystal_small>*4 % 100, <item:contenttweaker:amc_crystal_miniscule>*3 % 100, <item:contenttweaker:amc_crystal_submicroscopic>*222 % 100], [<tag:items:amc-value:8.972>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 500);

// Obsidian Hammer [200.75]
<recipetype:thermal:smelter>.addRecipe("crystalpress_obsidian_hammer", [<item:contenttweaker:100-bag>*2 % 100, <item:contenttweaker:amc_crystal_miniscule>*3 % 100], [<tag:items:amc-value:200.75>, <item:contenttweaker:alchemical_crystalpress_catalyst>], 0, 2000);

// Iron Hammer [450.75]
<recipetype:thermal:smelter>.addRecipe("crystalpress_iron_hammer", [<item:contenttweaker:100-bag>*4 % 100, <item:contenttweaker:50-bag> % 100, <item:contenttweaker:amc_crystal_miniscule>*3 % 100], [<tag:items:amc-value:450.75>, <item:contenttweaker:alchemical_crystalpress_catalyst>], 0, 3000);

// Gold Hammer [900.75]
<recipetype:thermal:smelter>.addRecipe("crystalpress_gold_hammer", [<item:contenttweaker:100-bag>*9 % 100, <item:contenttweaker:amc_crystal_miniscule>*3 % 100], [<tag:items:amc-value:900.75>, <item:contenttweaker:alchemical_crystalpress_catalyst>], 0, 4000);

// Diamond/Emerald Hammer [18,000.75]
<recipetype:thermal:smelter>.addRecipe("crystalpress_18000.75-amc", [<item:contenttweaker:10k-crate> % 100, <item:contenttweaker:5k-crate> % 100, <item:contenttweaker:1k-crate>*3 % 100, <item:contenttweaker:amc_crystal_miniscule>*3 % 100], [<tag:items:amc-value:18000.75>, <item:contenttweaker:very_advanced_alchemical_catalyst>, <item:contenttweaker:advanced_alchemical_catalyst>], 0, 20000);

// Netherite Hammer [20,200.75]
<recipetype:thermal:smelter>.addRecipe("crystalpress_netherite_hammer", [<item:contenttweaker:10k-crate>*2 % 100, <item:contenttweaker:100-bag>*2 % 100, <item:contenttweaker:amc_crystal_miniscule>*3 % 100], [<tag:items:amc-value:20200.75>, <item:contenttweaker:very_advanced_alchemical_catalyst>*2], 0, 24000);


### Excavators

// Wooden Excavator [4.611]
<recipetype:thermal:smelter>.addRecipe("crystallize_wooden_excavator", [<item:contenttweaker:amc_crystal_small>*2 % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100, <item:contenttweaker:amc_crystal_submicroscopic>*111 % 100], [<tag:items:amc-value:4.611>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 500);

// Iron Excavator [225.5]
<recipetype:thermal:smelter>.addRecipe("crystalpress_iron_excavator", [<item:contenttweaker:100-bag>*2 % 100, <item:contenttweaker:25-bag> % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<tag:items:amc-value:225.5>, <item:contenttweaker:alchemical_crystalpress_catalyst>], 0, 1000);

// Gold Excavator [450.5]
<recipetype:thermal:smelter>.addRecipe("crystalpress_gold_excavator", [<item:contenttweaker:100-bag>*4 % 100, <item:contenttweaker:50-bag> % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<tag:items:amc-value:450.5>, <item:contenttweaker:alchemical_crystalpress_catalyst>], 0, 1000);

// Diamond/Emerald Excavator [9,000.5]
<recipetype:thermal:smelter>.addRecipe("crystalpress_9000.5-amc", [<item:contenttweaker:5k-crate> % 100, <item:contenttweaker:1k-crate>*4 % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<tag:items:amc-value:9000.5>, <item:contenttweaker:alchemical_crystalpress_catalyst>], 0, 1000);

// Netherite Excavator [11,200.5]
<recipetype:thermal:smelter>.addRecipe("crystalpress_netherite_excavator", [<item:contenttweaker:10k-crate> % 100, <item:contenttweaker:1k-crate> % 100, <item:contenttweaker:100-bag>*2 % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<tag:items:amc-value:11200.5>, <item:contenttweaker:alchemical_crystalpress_catalyst>], 0, 1000);


print("hammervator_amc.zs loaded");