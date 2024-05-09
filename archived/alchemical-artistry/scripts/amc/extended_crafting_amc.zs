# Adds AMC & recipes to Extended Crafting's items because I am tired of spamming my other scripts
#priority 20

import crafttweaker.api.tag.MCTag;

print("extended_crafting_amc.zs loading...");
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
# Materials
<tag:items:amc-value:405>.add(<item:extendedcrafting:luminessence_block>);

<tag:items:amc-value:6.666>.add(<item:extendedcrafting:redstone_nugget>);
<tag:items:amc-value:60>.add(<item:extendedcrafting:redstone_ingot>);
<tag:items:amc-value:540>.add(<item:extendedcrafting:redstone_ingot_block>);

<tag:items:amc-value:58.333>.add(<item:extendedcrafting:ender_nugget>);
<tag:items:amc-value:525>.add(<item:extendedcrafting:ender_ingot>);
<tag:items:amc-value:4725>.add(<item:extendedcrafting:ender_ingot_block>);

<tag:items:amc-value:3.888>.add(<item:extendedcrafting:black_iron_nugget>);
<tag:items:amc-value:35>.add(<item:extendedcrafting:black_iron_ingot>);
<tag:items:amc-value:315>.add(<item:extendedcrafting:black_iron_block>);

<tag:items:amc-value:45000>.add(<item:extendedcrafting:nether_star_block>);

// Catalysts & Components
<tag:items:amc-value:70>.add(<item:extendedcrafting:black_iron_slate>);
<tag:items:amc-value:165>.add(<item:extendedcrafting:basic_component>);
<tag:items:amc-value:215>.add(<item:extendedcrafting:advanced_component>);
<tag:items:amc-value:2115>.add(<item:extendedcrafting:elite_component>);
<tag:items:amc-value:235>.add(<item:extendedcrafting:redstone_component>);

<tag:items:amc-value:695>.add(<item:extendedcrafting:basic_catalyst>);
<tag:items:amc-value:895>.add(<item:extendedcrafting:advanced_catalyst>);
<tag:items:amc-value:8495>.add(<item:extendedcrafting:elite_catalyst>);
<tag:items:amc-value:975>.add(<item:extendedcrafting:redstone_catalyst>);


# Blocks
<tag:items:amc-value:125>.add(<item:extendedcrafting:pedestal>);
<tag:items:amc-value:215>.add(<item:extendedcrafting:frame>);

<tag:items:amc-value:480>.add(<item:extendedcrafting:basic_table>); // Should be 479
<tag:items:amc-value:1520>.add(<item:extendedcrafting:basic_auto_table>);
<tag:items:amc-value:1105>.add(<item:extendedcrafting:advanced_table>);
<tag:items:amc-value:2245>.add(<item:extendedcrafting:advanced_auto_table>);
<tag:items:amc-value:7430>.add(<item:extendedcrafting:elite_table>);
<tag:items:amc-value:12370>.add(<item:extendedcrafting:elite_auto_table>);

<tag:items:amc-value:2320>.add(<item:extendedcrafting:crafting_core>);
<tag:items:amc-value:575>.add(<item:extendedcrafting:compressor>);
<tag:items:amc-value:1500>.add(<item:extendedcrafting:ender_alternator>); // Should be a rough average of both recipes
<tag:items:amc-value:1320>.add(<item:extendedcrafting:ender_crafter>); // Should be 1,318.332



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

// Redstone Ingot Nuggets [6.666]
<recipetype:thermal:smelter>.addRecipe("crystallize_redstone_ingot_nugget", [<item:contenttweaker:amc_crystal_large> % 100, <item:contenttweaker:amc_crystal_tiny> % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100,  <item:contenttweaker:amc_crystal_submicroscopic>*666 % 100], [<tag:items:amc-value:6.666>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 500);

// Basic Component [165]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_basic_component", <item:contenttweaker:5-bag>*33, [<tag:items:amc-value:165>, <item:contenttweaker:alchemical_compression_catalyst>], 3);

// Basic Table [480]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_basic_table", <item:contenttweaker:10-bag>*48, [<tag:items:amc-value:480>, <item:contenttweaker:alchemical_compression_catalyst>], 5);

// Ender Ingot [525]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_ender_ingot", <item:contenttweaker:25-bag>*21, [<tag:items:amc-value:525>, <item:contenttweaker:alchemical_compression_catalyst>], 10);

// Quantum Compressor [575]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_compressor", <item:contenttweaker:25-bag>*23, [<tag:items:amc-value:575>, <item:contenttweaker:alchemical_compression_catalyst>], 10);

// Redstone Ingot Block [540]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_540-amc", <item:contenttweaker:10-bag>*54, [<tag:items:amc-value:540>, <item:contenttweaker:alchemical_compression_catalyst>], 10);

// Basic Catalyst [695]
<recipetype:thermal:smelter>.addRecipe("compress_basic_catalyst", [<item:contenttweaker:500-crate> % 100, <item:contenttweaker:100-bag> % 100, <item:contenttweaker:25-bag>*3 % 100, <item:contenttweaker:10-bag>*2 % 100], [<tag:items:amc-value:695>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 4000);

// Advanced Catalyst [895]
<recipetype:thermal:smelter>.addRecipe("compress_advanced_catalyst", [<item:contenttweaker:500-crate> % 100, <item:contenttweaker:100-bag>*3 % 100, <item:contenttweaker:25-bag>*3 % 100, <item:contenttweaker:10-bag>*2 % 100], [<tag:items:amc-value:895>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 4000);

// Redstone Catalyst [975]
<recipetype:thermal:smelter>.addRecipe("compress_redstone_catalyst", [<item:contenttweaker:500-crate> % 100, <item:contenttweaker:100-bag>*4 % 100, <item:contenttweaker:25-bag>*3 % 100], [<tag:items:amc-value:975>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 4000);

// Advanced Table [1,105]
<recipetype:thermal:smelter>.addRecipe("compress_advanced_table", [<item:contenttweaker:1k-crate> % 100, <item:contenttweaker:100-bag> % 100, <item:contenttweaker:5-bag> % 100], [<tag:items:amc-value:1105>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 6000);

// Ender Crafter [1,320]
<recipetype:thermal:smelter>.addRecipe("compress_ender_crafter", [<item:contenttweaker:1k-crate> % 100, <item:contenttweaker:100-bag>*3 % 100, <item:contenttweaker:10-bag>*2 % 100], [<tag:items:amc-value:1320>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 6000);

// Ender Alternator [1,500]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_ender_alternator", <item:contenttweaker:500-crate>*3, [<tag:items:amc-value:1500>, <item:contenttweaker:alchemical_compression_catalyst>*2], 15);

// Basic Auto-Crafting Table [1,520]
<recipetype:thermal:smelter>.addRecipe("compress_basic_auto_table", [<item:contenttweaker:1k-crate>*2 % 100, <item:contenttweaker:500-crate> % 100, <item:contenttweaker:10-bag>*2 % 100], [<tag:items:amc-value:1520>, <item:contenttweaker:alchemical_compression_catalyst>*2], 0, 6000);

// Elite Component [2,115]
<recipetype:thermal:smelter>.addRecipe("compress_elite_component", [<item:contenttweaker:1k-crate>*2 % 100, <item:contenttweaker:100-bag> % 100, <item:contenttweaker:10-bag> % 100, <item:contenttweaker:5-bag> % 100], [<tag:items:amc-value:2115>, <item:contenttweaker:alchemical_compression_catalyst>*3], 0, 8000);

// Advanced Auto Table [2,245]
<recipetype:thermal:smelter>.addRecipe("compress_advanced_auto_table", [<item:contenttweaker:1k-crate>*2 % 100, <item:contenttweaker:100-bag>*2 % 100, <item:contenttweaker:10-bag>*4 % 100, <item:contenttweaker:5-bag> % 100], [<tag:items:amc-value:2245>, <item:contenttweaker:alchemical_compression_catalyst>*3], 0, 8000);

// Crafting Core [2,320]
<recipetype:thermal:smelter>.addRecipe("compress_crafting_core", [<item:contenttweaker:1k-crate>*2 % 100, <item:contenttweaker:100-bag>*3 % 100, <item:contenttweaker:10-bag>*2 % 100], [<tag:items:amc-value:2320>, <item:contenttweaker:alchemical_compression_catalyst>*3], 0, 8000);

// Ender Ingot Block [4,725]
<recipetype:thermal:smelter>.addRecipe("compress_ender_ingot_block", [<item:contenttweaker:1k-crate>*4 % 100, <item:contenttweaker:500-crate> % 100, <item:contenttweaker:100-bag>*2 % 100, <item:contenttweaker:25-bag> % 100], [<tag:items:amc-value:4725>, <item:contenttweaker:alchemical_compression_catalyst>*3], 0, 8000);

// Elite Table [7,430]
<recipetype:thermal:smelter>.addRecipe("compress_elite_table", [<item:contenttweaker:5k-crate> % 100, <item:contenttweaker:1k-crate>*2 % 100, <item:contenttweaker:100-bag>*4 % 100, <item:contenttweaker:10-bag>*3 % 100], [<tag:items:amc-value:7430>, <item:contenttweaker:alchemical_compression_catalyst>*5], 0, 12000);

// Elite Catalyst [8,495]
<recipetype:thermal:smelter>.addRecipe("compress_elite_catalyst", [<item:contenttweaker:5k-crate> % 100, <item:contenttweaker:1k-crate>*3 % 100, <item:contenttweaker:100-bag>*4 % 100, <item:contenttweaker:5-bag>*19 % 100], [<tag:items:amc-value:8495>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 12000);

// Elite Auto Table [12,370]
<recipetype:thermal:smelter>.addRecipe("compress_elite_auto_table", [<item:contenttweaker:10k-crate> % 100, <item:contenttweaker:1k-crate>*2 % 100, <item:contenttweaker:100-bag>*3 % 100, <item:contenttweaker:10-bag>*7 % 100], [<tag:items:amc-value:12370>, <item:contenttweaker:alchemical_compression_catalyst>*5], 0, 12000);

print("extended_crafting_amc.zs loaded");