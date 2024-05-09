# Adds AMC & recipes to RFTools' items because I am tired of spamming my other scripts
#priority 20

import crafttweaker.api.tag.MCTag;

print("rftools_amc.zs loading...");
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

<tag:items:amc-value:50>.add(<item:rftoolsbase:dimensionalshard_overworld>);
<tag:items:amc-value:50>.add(<item:rftoolsbase:dimensionalshard_nether>);
<tag:items:amc-value:50>.add(<item:rftoolsbase:dimensionalshard_end>);

<tag:items:amc-value:8>.add(<item:rftoolsbase:crafting_card>); // Should be 7.375
<tag:items:amc-value:235>.add(<item:rftoolsbase:filter_module>);
<tag:items:amc-value:4.851>.add(<item:rftoolsbase:machine_base>);
<tag:items:amc-value:75>.add(<item:rftoolsbase:information_screen>); // Should be 75.601
<tag:items:amc-value:125>.add(<item:rftoolsbase:machine_frame>); // Should be 127.7775
<tag:items:amc-value:2395>.add(<item:rftoolsbase:machine_infuser>);
<tag:items:amc-value:2165>.add(<item:rftoolsbase:tablet>); // Both tablets should be 2167.22
<tag:items:amc-value:2165>.add(<item:rftoolsbase:tablet_filled>);
<tag:items:amc-value:40>.add(<item:rftoolsbase:smartwrench>); // Both wrenches should be 39
<tag:items:amc-value:40>.add(<item:rftoolsbase:smartwrench_select>);
// Shards and infused things are in other scripts
<tag:items:amc-value:63.331>.add(<item:rftoolsbase:manual>);

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
mods.extendedcrafting.EnderCrafting.add(Shapeless("name", <output>, [<9-inputs>], seconds);

<recipetype:thermal:smelter>.add(Recipe("name", [<4-outputs>], [<3-inputs>], 0, rf);

RF cost is 100x (total) AMC value
*/

// Machine Base [4.851]
<recipetype:thermal:smelter>.addRecipe("crystallize_module_base", [<item:contenttweaker:amc_crystal_small>*2 % 100, <item:contenttweaker:amc_crystal_miniscule>*3 % 100, <item:contenttweaker:amc_crystal_microscopic>*20 % 100, <item:contenttweaker:amc_crystal_submicroscopic>*1 % 100], [<tag:items:amc-value:4.851>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 500);

// Technology Guide [63.331]
<recipetype:thermal:smelter>.addRecipe("crystalpress_guide", [<item:contenttweaker:50-bag> % 100, <item:contenttweaker:1-bag>*13 % 100, <item:contenttweaker:amc_crystal_microscopic>*66 % 100, <item:contenttweaker:amc_crystal_submicroscopic> % 100], [<tag:items:amc-value:63.331>, <item:contenttweaker:alchemical_crystalpress_catalyst>], 0, 750);

// Tablet [2,165]
<recipetype:thermal:smelter>.addRecipe("compress_tablet", [<item:contenttweaker:1k-crate>*2 % 100, <item:contenttweaker:100-bag> % 100, <item:contenttweaker:50-bag> % 100, <item:contenttweaker:5-bag>*3 % 100], [<tag:items:amc-value:2165>, <item:contenttweaker:alchemical_crystalpress_catalyst>], 0, 8000);

print("rftools_amc.zs loaded");