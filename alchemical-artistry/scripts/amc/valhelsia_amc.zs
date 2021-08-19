# Adds AMC & recipes to Valhelsia Structures' items because I am tired of spamming my other scripts
#priority 20

import crafttweaker.api.tag.MCTag;

print("valhelsia_amc.zs loading...");
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

<tag:items:amc-value:500>.add(<item:valhelsia_structures:dungeon_door>);

<tag:items:amc-value:3>.add(<item:valhelsia_structures:doused_torch>);
<tag:items:amc-value:4>.add(<item:valhelsia_structures:doused_soul_torch>);
<tag:items:amc-value:105.75>.add(<item:valhelsia_structures:brazier>);
<tag:items:amc-value:97.75>.add(<item:valhelsia_structures:soul_brazier>);
<tag:items:amc-value:2>.add(<item:valhelsia_structures:oak_post>);
<tag:items:amc-value:2>.add(<item:valhelsia_structures:spruce_post>);
<tag:items:amc-value:2>.add(<item:valhelsia_structures:birch_post>);
<tag:items:amc-value:2>.add(<item:valhelsia_structures:jungle_post>);
<tag:items:amc-value:2>.add(<item:valhelsia_structures:acacia_post>);
<tag:items:amc-value:2>.add(<item:valhelsia_structures:dark_oak_post>);
<tag:items:amc-value:4>.add(<item:valhelsia_structures:warped_post>);
<tag:items:amc-value:4>.add(<item:valhelsia_structures:crimson_post>);

<tag:items:amc-value:0.5>.add(<item:valhelsia_structures:cut_oak_post>);
<tag:items:amc-value:0.5>.add(<item:valhelsia_structures:cut_spruce_post>);
<tag:items:amc-value:0.5>.add(<item:valhelsia_structures:cut_birch_post>);
<tag:items:amc-value:0.5>.add(<item:valhelsia_structures:cut_jungle_post>);
<tag:items:amc-value:0.5>.add(<item:valhelsia_structures:cut_acacia_post>);
<tag:items:amc-value:0.5>.add(<item:valhelsia_structures:cut_dark_oak_post>);
<tag:items:amc-value:1>.add(<item:valhelsia_structures:cut_warped_post>);
<tag:items:amc-value:1>.add(<item:valhelsia_structures:cut_crimson_post>);

<tag:items:amc-value:4.125>.add(<item:valhelsia_structures:metal_framed_glass>);
// Panes should be 0.2578125, but are handled by the microscopic AMC script
<tag:items:amc-value:15.75>.add(<item:valhelsia_structures:paper_wall>);

val jar = <tag:items:valhelsia_structures:jars>;
val amc75 = <tag:items:amc-value:75>;

for item in jar.elements {
   amc75.add(jar);
}

<tag:items:amc-value:125>.add(<item:valhelsia_structures:big_glazed_jar>);
<tag:items:amc-value:125>.add(<item:valhelsia_structures:cracked_big_glazed_jar>);
<tag:items:amc-value:125>.add(<item:valhelsia_structures:big_white_glazed_jar>);
<tag:items:amc-value:125>.add(<item:valhelsia_structures:big_orange_glazed_jar>);
<tag:items:amc-value:125>.add(<item:valhelsia_structures:big_magenta_glazed_jar>);
<tag:items:amc-value:125>.add(<item:valhelsia_structures:big_light_blue_glazed_jar>);
<tag:items:amc-value:125>.add(<item:valhelsia_structures:big_yellow_glazed_jar>);
<tag:items:amc-value:125>.add(<item:valhelsia_structures:big_lime_glazed_jar>);
<tag:items:amc-value:125>.add(<item:valhelsia_structures:big_pink_glazed_jar>);
<tag:items:amc-value:125>.add(<item:valhelsia_structures:big_gray_glazed_jar>);
<tag:items:amc-value:125>.add(<item:valhelsia_structures:big_light_gray_glazed_jar>);
<tag:items:amc-value:125>.add(<item:valhelsia_structures:big_cyan_glazed_jar>);
<tag:items:amc-value:125>.add(<item:valhelsia_structures:big_purple_glazed_jar>);
<tag:items:amc-value:125>.add(<item:valhelsia_structures:big_blue_glazed_jar>);
<tag:items:amc-value:125>.add(<item:valhelsia_structures:big_brown_glazed_jar>);
<tag:items:amc-value:125>.add(<item:valhelsia_structures:big_green_glazed_jar>);
<tag:items:amc-value:125>.add(<item:valhelsia_structures:big_red_glazed_jar>);
<tag:items:amc-value:125>.add(<item:valhelsia_structures:big_black_glazed_jar>);

<tag:items:amc-value:12>.add(<item:valhelsia_structures:bone_pile>);
<tag:items:amc-value:108>.add(<item:valhelsia_structures:bone_pile_block>);

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

// Metal Framed Glass [4.125]
<recipetype:thermal:smelter>.addRecipe("crystallize_metal_framed_glass", [<item:contenttweaker:amc_crystal_small>*2 % 100, <item:contenttweaker:amc_crystal_microscopic>*25 % 100], [<tag:items:amc-value:4.125>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 500);

// Paper Wall [15.75]
<recipetype:thermal:smelter>.addRecipe("crystallize_paper_wall", [<item:contenttweaker:amc_crystal_large>*5 % 100, <item:contenttweaker:amc_crystal_miniscule>*3 % 100], [<tag:items:amc-value:15.75>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 750);

// Soul Brazier [97.75]
<recipetype:thermal:smelter>.addRecipe("crystalpress_soul_brazier", [<item:contenttweaker:50-bag> % 100, <item:contenttweaker:25-bag> % 100, <item:contenttweaker:2-bag>*11 % 100, <item:contenttweaker:amc_crystal_miniscule>*3 % 100], [<tag:items:amc-value:97.75>, <item:contenttweaker:alchemical_crystalpress_catalyst>], 0, 950);

// Brazier [105.75]
<recipetype:thermal:smelter>.addRecipe("crystalpress_brazier", [<item:contenttweaker:100-bag> % 100, <item:contenttweaker:5-bag> % 100, <item:contenttweaker:amc_crystal_miniscule>*3 % 100], [<tag:items:amc-value:105.75>, <item:contenttweaker:alchemical_crystalpress_catalyst>], 0, 1000);

// Bone Pile Block [108]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_bone_pile_block", <item:contenttweaker:2-bag>*54, [<item:valhelsia_structures:bone_pile_block>, <item:contenttweaker:alchemical_compression_catalyst>], 3);

print("valhelsia_amc.zs loaded");