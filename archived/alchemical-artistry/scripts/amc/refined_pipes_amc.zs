# Adds AMC & recipes to Refined Pipes' items because I am tired of spamming my other scripts
#priority 20

import crafttweaker.api.tag.MCTag;

print("refined_pipes_amc.zs loading...");
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


<tag:items:amc-value:25.5>.add(<item:refinedpipes:basic_item_pipe>);
<tag:items:amc-value:62.833>.add(<item:refinedpipes:improved_item_pipe>);
<tag:items:amc-value:1035>.add(<item:refinedpipes:advanced_item_pipe>); // Should be 1,037.5

<tag:items:amc-value:25.5>.add(<item:refinedpipes:basic_fluid_pipe>);
<tag:items:amc-value:62.833>.add(<item:refinedpipes:improved_fluid_pipe>);
<tag:items:amc-value:1012.833>.add(<item:refinedpipes:advanced_fluid_pipe>);
<tag:items:amc-value:1012.833>.add(<item:refinedpipes:elite_fluid_pipe>);
<tag:items:amc-value:212.833>.add(<item:refinedpipes:ultimate_fluid_pipe>);

<tag:items:amc-value:36.833>.add(<item:refinedpipes:basic_energy_pipe>);
<tag:items:amc-value:54.291>.add(<item:refinedpipes:improved_energy_pipe>);
<tag:items:amc-value:1075>.add(<item:refinedpipes:advanced_energy_pipe>); // Should be 1,077.5
<tag:items:amc-value:738.75>.add(<item:refinedpipes:elite_energy_pipe>);
<tag:items:amc-value:233.333>.add(<item:refinedpipes:ultimate_energy_pipe>);

<tag:items:amc-value:205>.add(<item:refinedpipes:basic_extractor_attachment>);
<tag:items:amc-value:455>.add(<item:refinedpipes:improved_extractor_attachment>);
<tag:items:amc-value:3555>.add(<item:refinedpipes:advanced_extractor_attachment>);
<tag:items:amc-value:6755>.add(<item:refinedpipes:elite_extractor_attachment>);
<tag:items:amc-value:7405>.add(<item:refinedpipes:ultimate_extractor_attachment>);


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

// Basic Energy Pipe [36.833]
<recipetype:thermal:smelter>.addRecipe("crystalpress_basic_energy_pipe", [<item:contenttweaker:10-bag>*3 % 100, <item:contenttweaker:2-bag>*3 % 100, <item:contenttweaker:amc_crystal_miniscule>*3 % 100, <item:contenttweaker:amc_crystal_submicroscopic>*83 % 100], [<tag:items:amc-value:36.833>, <item:contenttweaker:alchemical_crystalpress_catalyst>], 0, 750);

// Improved Energy Pipe [54.291]
<recipetype:thermal:smelter>.addRecipe("crystalpress_improved_energy_pipe", [<item:contenttweaker:50-bag> % 100, <item:contenttweaker:2-bag>*2 % 100], [<tag:items:amc-value:54.291>, <item:contenttweaker:alchemical_crystalpress_catalyst>], 0, 1000);

// Improved Item & Fluid Pipes [62.833]
<recipetype:thermal:smelter>.addRecipe("crystalpress_improved_pipes", [<item:contenttweaker:10-bag>*6 % 100, <item:contenttweaker:2-bag> % 100, <item:contenttweaker:amc_crystal_miniscule>*3 % 100, <item:contenttweaker:amc_crystal_submicroscopic>*83 % 100], [<tag:items:amc-value:62.833>, <item:contenttweaker:alchemical_crystalpress_catalyst>], 0, 1000);

// Basic Extractor [205]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_basic_extractor", <item:contenttweaker:5-bag>*41, [<tag:items:amc-value:205>, <item:contenttweaker:alchemical_compression_catalyst>], 3);

// Ultimate Fluid Pipe [212.833]
<recipetype:thermal:smelter>.addRecipe("crystalpress_ultimate_fluid_pipe", [<item:contenttweaker:100-bag>*2 % 100, <item:contenttweaker:2-bag>*6 % 100, <item:contenttweaker:amc_crystal_miniscule>*3 % 100, <item:contenttweaker:amc_crystal_submicroscopic>*83 % 100], [<tag:items:amc-value:212.833>, <item:contenttweaker:alchemical_crystalpress_catalyst>], 0, 2000);

// Ultimate Energy Pipe [233.333]
<recipetype:thermal:smelter>.addRecipe("crystalpress_ultimate_energy_pipe", [<item:contenttweaker:100-bag>*2 % 100, <item:contenttweaker:10-bag>*3 % 100, <item:contenttweaker:1-bag>*3 % 100, <item:contenttweaker:amc_crystal_submicroscopic>*333 % 100], [<tag:items:amc-value:233.333>, <item:contenttweaker:alchemical_crystalpress_catalyst>], 0, 2000);

# 400+ (3k RF)
// Improved Extractor [455]
<recipetype:thermal:smelter>.addRecipe("compress_improved_extractor", [<item:contenttweaker:100-bag>*4 % 100, <item:contenttweaker:50-bag> % 100, <item:contenttweaker:5-bag> % 100], [<tag:items:amc-value:455>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 3000);


# 500+ (4k RF)
// Elite Energy Pipe [738.75]
<recipetype:thermal:smelter>.addRecipe("crystalpress_elite_pipe", [<item:contenttweaker:500-crate> % 100, <item:contenttweaker:10-bag>*3 % 100, <item:contenttweaker:2-bag>*4 % 100, <item:contenttweaker:amc_crystal_miniscule>*3 % 100], [<tag:items:amc-value:738.75>, <item:contenttweaker:alchemical_crystalpress_catalyst>], 0, 4000);


# 1k+ (2 catalysts, 6k RF)
// Advanced & Elite Fluid Pipes [1,012.833]
<recipetype:thermal:smelter>.addRecipe("crystalpress_fluid_pipes", [<item:contenttweaker:1k-crate> % 100, <item:contenttweaker:10-bag> % 100, <item:contenttweaker:2-bag> % 100, <item:contenttweaker:amc_crystal_submicroscopic>*833 % 100], [<tag:items:amc-value:1012.833>, <item:contenttweaker:alchemical_crystalpress_catalyst>*2], 0, 6000);

// Advanced Energy Pipe [1,075]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_1075-amc", <item:contenttweaker:25-bag>*43, [<tag:items:amc-value:1075>, <item:contenttweaker:alchemical_compression_catalyst>, <item:contenttweaker:alchemical_compression_catalyst>], 15);

# 2k+ (3 catalysts, 8k RF)
// Advanced Extractor [3,555]
<recipetype:thermal:smelter>.addRecipe("compress_advanced_extractor", [<item:contenttweaker:1k-crate>*3 % 100, <item:contenttweaker:500-crate> % 100, <item:contenttweaker:50-bag> % 100, <item:contenttweaker:5-bag> % 100], [<tag:items:amc-value:3555>, <item:contenttweaker:alchemical_compression_catalyst>*3], 0, 8000);

// Elite Extractor [6,755]
<recipetype:thermal:smelter>.addRecipe("compress_elite_extractor", [<item:contenttweaker:1k-crate>*6 % 100, <item:contenttweaker:100-bag>*7 % 100, <item:contenttweaker:50-bag> % 100, <item:contenttweaker:5-bag> % 100], [<tag:items:amc-value:6755>, <item:contenttweaker:alchemical_compression_catalyst>*3], 0, 8000);

// Ultimate Extractor [7,405]
<recipetype:thermal:smelter>.addRecipe("compress_ultimate_extractor", [<item:contenttweaker:5k-crate> % 100, <item:contenttweaker:1k-crate>*2 % 100, <item:contenttweaker:100-bag>*4 % 100, <item:contenttweaker:5-bag> % 100], [<tag:items:amc-value:7405>, <item:contenttweaker:alchemical_compression_catalyst>*3], 0, 8000);


print("refined_pipes_amc.zs loaded");