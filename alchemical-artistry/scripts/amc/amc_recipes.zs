# Adds recipes that use AMC
# Will (usually) use various items as a "catalyst"

import crafttweaker.api.tag.MCTag;

print("amc_recipes.zs loading....zs loading...");

# Crystal Values:
# Submicroscopic: 0.001
# Microscopic: 0.005
# Miniscule: 0.25
# Tiny: 1
# Small: 2
# Large: 5
# Use highest amc-value possible, then goes down from there
/*
mods.extendedcrafting.EnderCrafting.addShapeless("name", <output>, [<9-inputs>], seconds);

<recipetype:thermal:smelter>.addRecipe("name", [<4-outputs>], [<3-inputs>], 0, rf);

RF cost is 100x (total) AMC value
*/

### AMC Fractions
# Tags aren't used unless there's 2+ items with the value
# Items get Induction Smelted with a Crystallization Catalyst
# Uses 1 normally
# 2 if worth 250+
# 1 + Compression if worth 500+
# Alchemical Catalyst + Compression if worth 1k+, and uses 15k RF
# Advanced Alchemical Catalyst + Compression if worth 5k+, and uses 20k RF
# Base RF use is 1,000
# Every 10 AMC = +1000 RF (rounded down, so 35 uses 3k RF)
# Max RF cost of 10,000 so they don't take literally forever to craft

// Lever (Worth 1.25)
<recipetype:thermal:smelter>.addRecipe("crystallize_1.25-amc", [<item:contenttweaker:amc_crystal_tiny> % 100, <item:contenttweaker:amc_crystal_miniscule> % 100], [<tag:items:amc-value:1.25>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 500);

// Items worth 1.5 AMC
<recipetype:thermal:smelter>.addRecipe("crystallize_1.5-amc", [<item:contenttweaker:amc_crystal_tiny> % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<tag:items:amc-value:1.5>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 500);

// Signs (Worth 2.083)
<recipetype:thermal:smelter>.addRecipe("crystallize_2.083-amc", [<item:contenttweaker:amc_crystal_small> % 100, <item:contenttweaker:amc_crystal_submicroscopic>*83 % 100], [<tag:items:amc-value:2.083>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 500);

// Items worth 2.5 AMC
<recipetype:thermal:smelter>.addRecipe("crystallize_2.5-amc", [<item:contenttweaker:amc_crystal_small> % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<tag:items:amc-value:2.5>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 500);

// Stone Sword (Worth 2.75)
<recipetype:thermal:smelter>.addRecipe("crystallize_2.75-amc", [<item:contenttweaker:amc_crystal_small> % 100, <item:contenttweaker:amc_crystal_miniscule>*3 % 100], [<tag:items:amc-value:2.75>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 500);

// Iron Nugget (Worth 2.777)
<recipetype:thermal:smelter>.addRecipe("crystallize_iron_nugget", [<item:contenttweaker:amc_crystal_small> % 100, <item:contenttweaker:amc_crystal_microscopic>*3 % 100, <item:contenttweaker:amc_crystal_submicroscopic>*27 % 100], [<item:minecraft:iron_nugget>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 500);

// Items worth 3.5 AMC
<recipetype:thermal:smelter>.addRecipe("crystallize_3.5-amc", [<item:contenttweaker:amc_crystal_tiny>*3 % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<tag:items:amc-value:3.5>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 500);

// Black Iron Nugget (Worth 3.888)
<recipetype:thermal:smelter>.addRecipe("crystallize_3.888-amc", [<item:contenttweaker:amc_crystal_tiny>*3 % 100, <item:contenttweaker:amc_crystal_miniscule>*3 % 100, <item:contenttweaker:amc_crystal_microscopic>*27 % 100, <item:contenttweaker:amc_crystal_submicroscopic>*3 % 100], [<tag:items:amc-value:3.888>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 500);

// Portable Crafting Table
<recipetype:thermal:smelter>.addRecipe("crystallize_4.5-amc", [<item:contenttweaker:amc_crystal_small>*2 % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<tag:items:amc-value:4.5>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 500);

// Wood (block things?) (Worth 5.333)
// Actually uses a tag, nice!
<recipetype:thermal:smelter>.addRecipe("crystallize_5.333-amc", [<item:contenttweaker:amc_crystal_large> % 100, <item:contenttweaker:amc_crystal_microscopic> % 100, <item:contenttweaker:amc_crystal_submicroscopic>*83 % 100], [<tag:items:amc-value:5.333>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 750);

// Wooden Sword (Worth 5.25)
<recipetype:thermal:smelter>.addRecipe("crystallize_5.25-amc", [<item:contenttweaker:amc_crystal_large> % 100, <item:contenttweaker:amc_crystal_miniscule> % 100], [<tag:items:amc-value:5.25>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 750);

// Stone Hoe (Worth 5.5)
<recipetype:thermal:smelter>.addRecipe("crystallize_5.5-amc", [<item:contenttweaker:amc_crystal_large> % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<tag:items:amc-value:5.5>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 750);

// Gold Nugget (Worth 5.555)
<recipetype:thermal:smelter>.addRecipe("crystallize_5.555-amc", [<item:contenttweaker:amc_crystal_large> % 100, <item:contenttweaker:amc_crystal_microscopic>*111 % 100], [<tag:items:amc-value:5.555>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 750);

// Cookies (Worth 7.75)
<recipetype:thermal:smelter>.addRecipe("crystallize_7.75-amc", [<item:contenttweaker:amc_crystal_small>*3 % 100, <item:contenttweaker:amc_crystal_tiny> % 100, <item:contenttweaker:amc_crystal_miniscule>*3 % 100], [<tag:items:amc-value:7.75>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 750);

// Mushroom Stew (Worth 8.75)
<recipetype:thermal:smelter>.addRecipe("crystallize_mushroom_stew", [<item:contenttweaker:amc_crystal_small>*4 % 100, <item:contenttweaker:amc_crystal_miniscule>*3 % 100], [<item:minecraft:mushroom_stew>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 750);

// Iron Bars (Worth 9.375)
<recipetype:thermal:smelter>.addRecipe("crystallize_iron_bars", [<item:contenttweaker:amc_crystal_small>*4 % 100, <item:contenttweaker:amc_crystal_miniscule> % 100, <item:contenttweaker:amc_crystal_microscopic>*75 % 100], [<item:minecraft:iron_bars>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 750);

// Hyphae (Worth 10.666)
<recipetype:thermal:smelter>.addRecipe("crystallize_10.666-amc", [<item:contenttweaker:amc_crystal_large>*2, <item:contenttweaker:amc_crystal_microscopic>*128 % 100, <item:contenttweaker:amc_crystal_submicroscopic>*26 % 100], [<tag:items:amc-value:10.666>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 1000);

// Wooden Hoe (Worth 10.5)
<recipetype:thermal:smelter>.addRecipe("crystallize_10.5-amc", [<item:contenttweaker:amc_crystal_large>*2 % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<tag:items:amc-value:10.5>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 1000);

// Items worth 12.5 AMC
<recipetype:thermal:smelter>.addRecipe("crystallize_12.5-amc", [<item:contenttweaker:amc_crystal_small>*6 % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<tag:items:amc-value:12.5>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 1000);

// Wooden Pick(axe) (Worth 15.5)
<recipetype:thermal:smelter>.addRecipe("crystallize_15.5-amc", [<item:contenttweaker:amc_crystal_large>*3 % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<tag:items:amc-value:15.5>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 1000);

// Loom (Worth 16.5)
<recipetype:thermal:smelter>.addRecipe("crystallize_16.5-amc", [<item:contenttweaker:amc_crystal_large>*3 % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<tag:items:amc-value:16.5>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 1000);

// Items worth 25.5 AMC
<recipetype:thermal:smelter>.addRecipe("crystallize_25.5-amc", [<item:contenttweaker:amc_crystal_large>*5 % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<tag:items:amc-value:25.5>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 1000);

// Beetroot Soup (Worth 36.75)
<recipetype:thermal:smelter>.addRecipe("crystallize_beetroot_soup", [<item:contenttweaker:amc_crystal_large>*7 % 100, <item:contenttweaker:amc_crystal_tiny> % 100, <item:contenttweaker:amc_crystal_miniscule>*3 % 100], [<item:minecraft:beetroot_soup>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 1500);

// Brick Stairs (Worth 37.5)
<recipetype:thermal:smelter>.addRecipe("crystallize_brick_stairs", [<item:contenttweaker:amc_crystal_large>*7 % 100, <item:contenttweaker:amc_crystal_small> % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<item:minecraft:brick_stairs>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 1500);

// Iron Sword (Worth 50.25)
<recipetype:thermal:smelter>.addRecipe("crystallize_iron_sword", [<item:contenttweaker:amc_crystal_large>*10 % 100, <item:contenttweaker:amc_crystal_miniscule> % 100], [<tag:items:amc-value:50.25>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 1500);

// Golden Shovel (Worth 50.5)
<recipetype:thermal:smelter>.addRecipe("crystallize_golden_shovel", [<item:contenttweaker:amc_crystal_large>*10 % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<tag:items:amc-value:50.5>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 1500);

// Rabbit Stew (Worth 52.25)
<recipetype:thermal:smelter>.addRecipe("crystallize_rabbit_stew", [<item:contenttweaker:amc_crystal_large>*10 % 100, <item:contenttweaker:amc_crystal_small> % 100, <item:contenttweaker:amc_crystal_miniscule> % 100], [<item:minecraft:rabbit_stew>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 1500);

// Ender Nugget (Worth 58.333)
<recipetype:thermal:smelter>.addRecipe("crystallize_ender_nugget", [<item:contenttweaker:amc_crystal_large>*11 % 100, <item:contenttweaker:amc_crystal_tiny>*3 % 100, <item:contenttweaker:amc_crystal_miniscule> % 100, <item:contenttweaker:amc_crystal_submicroscopic>*83 % 100], [<tag:items:amc-value:58.333>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 1500);

// Iron Pick(axe) (Worth 75.5)
<recipetype:thermal:smelter>.addRecipe("crystallize_75.5-amc", [<item:contenttweaker:amc_crystal_large>*15 % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<tag:items:amc-value:75.5>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 2000);

// Banners (Worth 96.25)
<recipetype:thermal:smelter>.addRecipe("crystallize_96.25-amc", [<item:contenttweaker:amc_crystal_large>*19 % 100, <item:contenttweaker:amc_crystal_tiny> % 100, <item:contenttweaker:amc_crystal_miniscule> % 100], [<tag:items:amc-value:96.25>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 3000);

// Golden Sword (Worth 100.25)
<recipetype:thermal:smelter>.addRecipe("crystallize_100.25-amc", [<item:contenttweaker:amc_crystal_large>*20 % 100, <item:contenttweaker:amc_crystal_miniscule> % 100], [<tag:items:amc-value:100.25>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 4000);

// Golden Hoe (Worth 100.5)
<recipetype:thermal:smelter>.addRecipe("crystallize_100.5-amc", [<item:contenttweaker:amc_crystal_large>*20 % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<tag:items:amc-value:100.5>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 4000);

// Primsarine Brick Slab (Worth 112.5)
<recipetype:thermal:smelter>.addRecipe("crystallize_prismarine_brick_slab", [<item:contenttweaker:amc_crystal_small>*56 % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<item:minecraft:prismarine_brick_slab>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 4000);

// Golden Pick(axe) (Worth 150.5)
<recipetype:thermal:smelter>.addRecipe("crystallize_150.5-amc", [<item:contenttweaker:amc_crystal_large>*30 % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<tag:items:amc-value:150.5>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 4000);

// Naga Fang Dagger (Worth 275.25)
<recipetype:thermal:smelter>.addRecipe("crystalpress_275.25-amc", [<item:contenttweaker:250-crate> % 100, <item:contenttweaker:25-bag> % 100, <item:contenttweaker:amc_crystal_miniscule> % 100], [<tag:items:amc-value:275.25>, <item:contenttweaker:alchemical_crystalpress_catalyst>], 0, 4000);

// Primsarine Brick Stairs (Worth 337.5)
<recipetype:thermal:smelter>.addRecipe("crystallize_prismarine_brick_stairs", [<item:contenttweaker:amc_crystal_large>*64 % 100, <item:contenttweaker:amc_crystal_large>*3 % 100, <item:contenttweaker:amc_crystal_small> % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<item:minecraft:prismarine_brick_stairs>, <item:contenttweaker:alchemical_crystallization_catalyst>*2], 0, 4000);

### Recipes below give crates & crystals (because they use both catalysts)
# Also called "crystalpress" instead of "crystallize"

# Diamond Tools
// Worth 1,000.5
<recipetype:thermal:smelter>.addRecipe("crystalpress_1000.5-amc", [<item:contenttweaker:1k-crate> % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<tag:items:amc-value:1000.5>, <item:contenttweaker:alchemical_catalyst>, <item:contenttweaker:alchemical_crystalpress_catalyst>], 0, 4000);

// Worth 2,000.25
<recipetype:thermal:smelter>.addRecipe("crystalpress_2000.25-amc", [<item:contenttweaker:1k-crate>*2 % 100, <item:contenttweaker:amc_crystal_miniscule> % 100], [<tag:items:amc-value:2000.25>, <item:contenttweaker:alchemical_catalyst>, <item:contenttweaker:alchemical_crystalpress_catalyst>], 0, 4000);

// Worth 2,000.5
<recipetype:thermal:smelter>.addRecipe("crystalpress_2000.5-amc", [<item:contenttweaker:1k-crate>*2 % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<tag:items:amc-value:2000.5>, <item:contenttweaker:alchemical_catalyst>, <item:contenttweaker:alchemical_crystalpress_catalyst>], 0, 4000);

// Worth 3,000.5
<recipetype:thermal:smelter>.addRecipe("crystalpress_3000.5-amc", [<item:contenttweaker:1k-crate>*3 % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<tag:items:amc-value:3000.5>, <item:contenttweaker:alchemical_catalyst>, <item:contenttweaker:alchemical_crystalpress_catalyst>], 0, 5000);

# Netherite Tools
// Worth 3,200.5
<recipetype:thermal:smelter>.addRecipe("crystalpress_3200.5-amc", [<item:contenttweaker:1k-crate>*3 % 100, <item:contenttweaker:100-bag>*2 % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<tag:items:amc-value:3200.5>, <item:contenttweaker:advanced_alchemical_catalyst>, <item:contenttweaker:alchemical_crystalpress_catalyst>*2], 0, 5000);

// Worth 4,200.25
<recipetype:thermal:smelter>.addRecipe("crystalpress_4200.25-amc", [<item:contenttweaker:1k-crate>*4 % 100, <item:contenttweaker:100-bag>*2 % 100, <item:contenttweaker:amc_crystal_miniscule> % 100], [<tag:items:amc-value:4200.25>, <item:contenttweaker:advanced_alchemical_catalyst>, <item:contenttweaker:alchemical_crystalpress_catalyst>*2], 0, 6000);

// Worth 4,200.5
<recipetype:thermal:smelter>.addRecipe("crystalpress_4200.5-amc", [<item:contenttweaker:1k-crate>*4 % 100, <item:contenttweaker:100-bag>*2 % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<tag:items:amc-value:4200.5>, <item:contenttweaker:advanced_alchemical_catalyst>, <item:contenttweaker:alchemical_crystalpress_catalyst>*2], 0, 6000);

// Worth 5,200.5
<recipetype:thermal:smelter>.addRecipe("crystalpress_5200.5-amc", [<item:contenttweaker:5k-crate> % 100, <item:contenttweaker:100-bag>*2 % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<tag:items:amc-value:5200.5>, <item:contenttweaker:advanced_alchemical_catalyst>, <item:contenttweaker:alchemical_crystalpress_catalyst>*2], 0, 6000);


################################################################################################################################################################################
### Tagged items (whole numbers)
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

// Gonna make single-value things 1 second since they're worth so little
// Double-digit can be 2 til hit hits 50 AMC
mods.extendedcrafting.EnderCrafting.addShapeless("compress_3-amc", <item:contenttweaker:1-bag>*3, [<tag:items:amc-value:3>, <item:contenttweaker:alchemical_compression_catalyst>], 1);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_4-amc", <item:contenttweaker:2-bag>*2, [<tag:items:amc-value:4>, <item:contenttweaker:alchemical_compression_catalyst>], 1);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_6-amc", <item:contenttweaker:2-bag>*3, [<tag:items:amc-value:6>, <item:contenttweaker:alchemical_compression_catalyst>], 1);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_7-amc", <item:contenttweaker:1-bag>*7, [<tag:items:amc-value:7>, <item:contenttweaker:alchemical_compression_catalyst>], 1);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_8-amc", <item:contenttweaker:2-bag>*4, [<tag:items:amc-value:8>, <item:contenttweaker:alchemical_compression_catalyst>], 1);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_9-amc", <item:contenttweaker:1-bag>*9, [<tag:items:amc-value:9>, <item:contenttweaker:alchemical_compression_catalyst>], 1);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_12-amc", <item:contenttweaker:2-bag>*6, [<tag:items:amc-value:12>, <item:contenttweaker:alchemical_compression_catalyst>], 2);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_13-amc", <item:contenttweaker:1-bag>*13, [<tag:items:amc-value:13>, <item:contenttweaker:alchemical_compression_catalyst>], 2);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_15-amc", <item:contenttweaker:5-bag>*3, [<tag:items:amc-value:15>, <item:contenttweaker:alchemical_compression_catalyst>], 2);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_16-amc", <item:contenttweaker:2-bag>*8, [<tag:items:amc-value:16>, <item:contenttweaker:alchemical_compression_catalyst>], 2);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_18-amc", <item:contenttweaker:2-bag>*9, [<tag:items:amc-value:18>, <item:contenttweaker:alchemical_compression_catalyst>], 2);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_20-amc", <item:contenttweaker:10-bag>*2, [<tag:items:amc-value:20>, <item:contenttweaker:alchemical_compression_catalyst>], 2);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_24-amc", <item:contenttweaker:2-bag>*12, [<tag:items:amc-value:24>, <item:contenttweaker:alchemical_compression_catalyst>], 2);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_26-amc", <item:contenttweaker:2-bag>*13, [<tag:items:amc-value:26>, <item:contenttweaker:alchemical_compression_catalyst>], 2);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_28-amc", <item:contenttweaker:2-bag>*14, [<tag:items:amc-value:28>, <item:contenttweaker:alchemical_compression_catalyst>], 2);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_30-amc", <item:contenttweaker:10-bag>*3, [<tag:items:amc-value:30>, <item:contenttweaker:alchemical_compression_catalyst>], 2);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_35-amc", <item:contenttweaker:5-bag>*7, [<tag:items:amc-value:35>, <item:contenttweaker:alchemical_compression_catalyst>], 2);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_36-amc", <item:contenttweaker:2-bag>*18, [<tag:items:amc-value:36>, <item:contenttweaker:alchemical_compression_catalyst>], 2);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_40-amc", <item:contenttweaker:10-bag>*4, [<tag:items:amc-value:40>, <item:contenttweaker:alchemical_compression_catalyst>], 2);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_45-amc", <item:contenttweaker:5-bag>*9, [<tag:items:amc-value:45>, <item:contenttweaker:alchemical_compression_catalyst>], 2);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_54-amc", <item:contenttweaker:2-bag>*27, [<tag:items:amc-value:54>, <item:contenttweaker:alchemical_compression_catalyst>], 3);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_55-amc", <item:contenttweaker:5-bag>*11, [<tag:items:amc-value:55>, <item:contenttweaker:alchemical_compression_catalyst>], 3);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_65-amc", <item:contenttweaker:5-bag>*13, [<tag:items:amc-value:65>, <item:contenttweaker:alchemical_compression_catalyst>], 3);


mods.extendedcrafting.EnderCrafting.addShapeless("compress_70-amc", <item:contenttweaker:10-bag>*7, [<tag:items:amc-value:70>, <item:contenttweaker:alchemical_compression_catalyst>], 3);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_72-amc", <item:contenttweaker:2-bag>*36, [<tag:items:amc-value:72>, <item:contenttweaker:alchemical_compression_catalyst>], 3);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_75-amc", <item:contenttweaker:25-bag>*3, [<tag:items:amc-value:75>, <item:contenttweaker:alchemical_compression_catalyst>], 3);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_80-amc", <item:contenttweaker:10-bag>*8, [<tag:items:amc-value:80>, <item:contenttweaker:alchemical_compression_catalyst>], 3);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_85-amc", <item:contenttweaker:5-bag>*17, [<tag:items:amc-value:85>, <item:contenttweaker:alchemical_compression_catalyst>], 3);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_90-amc", <item:contenttweaker:10-bag>*9, [<tag:items:amc-value:90>, <item:contenttweaker:alchemical_compression_catalyst>], 3);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_105-amc", <item:contenttweaker:5-bag>*21, [<tag:items:amc-value:105>, <item:contenttweaker:alchemical_compression_catalyst>], 3);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_110-amc", <item:contenttweaker:10-bag>*11, [<tag:items:amc-value:110>, <item:contenttweaker:alchemical_compression_catalyst>], 3);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_120-amc", <item:contenttweaker:10-bag>*12, [<tag:items:amc-value:120>, <item:contenttweaker:alchemical_compression_catalyst>], 3);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_125-amc", <item:contenttweaker:25-bag>*5, [<tag:items:amc-value:125>, <item:contenttweaker:alchemical_compression_catalyst>], 3);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_130-amc", <item:contenttweaker:10-bag>*13, [<tag:items:amc-value:130>, <item:contenttweaker:alchemical_compression_catalyst>], 3);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_135-amc", <item:contenttweaker:5-bag>*27, [<tag:items:amc-value:135>, <item:contenttweaker:alchemical_compression_catalyst>], 3);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_140-amc", <item:contenttweaker:10-bag>*14, [<tag:items:amc-value:140>, <item:contenttweaker:alchemical_compression_catalyst>], 3);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_150-amc", <item:contenttweaker:50-bag>*3, [<tag:items:amc-value:150>, <item:contenttweaker:alchemical_compression_catalyst>], 3);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_155-amc", <item:contenttweaker:5-bag>*31, [<tag:items:amc-value:155>, <item:contenttweaker:alchemical_compression_catalyst>], 3);

<recipetype:thermal:smelter>.addRecipe("compress_158-amc", [<item:contenttweaker:50-bag>*3 % 100, <item:contenttweaker:2-bag>*4 % 100], [<tag:items:amc-value:158>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 2000);

mods.extendedcrafting.EnderCrafting.addShapeless("compress_175-amc", <item:contenttweaker:25-bag>*7, [<tag:items:amc-value:175>, <item:contenttweaker:alchemical_compression_catalyst>], 3);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_180-amc", <item:contenttweaker:10-bag>*18, [<tag:items:amc-value:180>, <item:contenttweaker:alchemical_compression_catalyst>], 3);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_190-amc", <item:contenttweaker:10-bag>*19, [<tag:items:amc-value:190>, <item:contenttweaker:alchemical_compression_catalyst>], 3);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_210-amc", <item:contenttweaker:10-bag>*21, [<tag:items:amc-value:210>, <item:contenttweaker:alchemical_compression_catalyst>], 3);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_215-amc", <item:contenttweaker:5-bag>*43, [<tag:items:amc-value:215>, <item:contenttweaker:alchemical_compression_catalyst>], 3);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_225-amc", <item:contenttweaker:25-bag>*9, [<tag:items:amc-value:225>, <item:contenttweaker:alchemical_compression_catalyst>], 3);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_235-amc", <item:contenttweaker:5-bag>*47, [<tag:items:amc-value:235>, <item:contenttweaker:alchemical_compression_catalyst>], 3);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_240-amc", <item:contenttweaker:10-bag>*24, [<tag:items:amc-value:240>, <item:contenttweaker:alchemical_compression_catalyst>], 3);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_280-amc", <item:contenttweaker:10-bag>*28, [<tag:items:amc-value:280>, <item:contenttweaker:alchemical_compression_catalyst>], 5);

<recipetype:thermal:smelter>.addRecipe("compress_291-amc", [<item:contenttweaker:100-bag>*2 % 100, <item:contenttweaker:10-bag>*9 % 100, <item:contenttweaker:1-bag> % 100], [<tag:items:amc-value:291>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 2000);

mods.extendedcrafting.EnderCrafting.addShapeless("compress_305-amc", <item:contenttweaker:5-bag>*61, [<tag:items:amc-value:300>, <item:contenttweaker:alchemical_compression_catalyst>], 5);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_300-amc", <item:contenttweaker:100-bag>*3, [<tag:items:amc-value:305>, <item:contenttweaker:alchemical_compression_catalyst>], 5);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_315-amc", <item:contenttweaker:5-bag>*63, [<tag:items:amc-value:315>, <item:contenttweaker:alchemical_compression_catalyst>], 5);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_350-amc", <item:contenttweaker:50-bag>*7, [<tag:items:amc-value:350>, <item:contenttweaker:alchemical_compression_catalyst>], 5);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_400-amc", <item:contenttweaker:100-bag>*4, [<tag:items:amc-value:400>, <item:contenttweaker:alchemical_compression_catalyst>], 5);

<recipetype:thermal:smelter>.addRecipe("compress_415-amc", [<item:contenttweaker:100-bag>*4 % 100, <item:contenttweaker:5-bag>*3 % 100], [<tag:items:amc-value:415>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 2000);

mods.extendedcrafting.EnderCrafting.addShapeless("compress_450-amc", <item:contenttweaker:50-bag>*9, [<tag:items:amc-value:450>, <item:contenttweaker:alchemical_compression_catalyst>], 5);


mods.extendedcrafting.EnderCrafting.addShapeless("compress_550-amc", <item:contenttweaker:50-bag>*11, [<tag:items:amc-value:550>, <item:contenttweaker:alchemical_compression_catalyst>], 10);

<recipetype:thermal:smelter>.addRecipe("compress_628-amc", [<item:contenttweaker:500-crate> % 100, <item:contenttweaker:100-bag> % 100, <item:contenttweaker:2-bag>*14 % 100], [<tag:items:amc-value:628>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 4000);

<recipetype:thermal:smelter>.addRecipe("compress_707-amc", [<item:contenttweaker:500-crate> % 100, <item:contenttweaker:100-bag>*2 % 100, <item:contenttweaker:2-bag>*3 % 100, <item:contenttweaker:1-bag> % 100], [<tag:items:amc-value:707>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 4000);

mods.extendedcrafting.EnderCrafting.addShapeless("compress_750-amc", <item:contenttweaker:250-crate>*3, [<tag:items:amc-value:750>, <item:contenttweaker:alchemical_compression_catalyst>], 10);
mods.extendedcrafting.EnderCrafting.addShapeless("compress_900-amc", <item:contenttweaker:100-bag>*9, [<tag:items:amc-value:900>, <item:contenttweaker:alchemical_compression_catalyst>], 10);

<recipetype:thermal:smelter>.addRecipe("compress_1008-amc", [<item:contenttweaker:1k-crate> % 100, <item:contenttweaker:2-bag>*4 % 100], [<tag:items:amc-value:1008>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 6000);

<recipetype:thermal:smelter>.addRecipe("compress_1035-amc", [<item:contenttweaker:1k-crate> % 100, <item:contenttweaker:25-bag> % 100, <item:contenttweaker:10-bag> % 100], [<tag:items:amc-value:1035>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 6000);

<recipetype:thermal:smelter>.addRecipe("compress_1291-amc", [<item:contenttweaker:1k-crate> % 100, <item:contenttweaker:100-bag>*2 % 100, <item:contenttweaker:10-bag>*9 % 100, <item:contenttweaker:1-bag> % 100], [<tag:items:amc-value:1291>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 6000);

mods.extendedcrafting.EnderCrafting.addShapeless("compress_1400-amc", <item:contenttweaker:100-bag>*14, [<tag:items:amc-value:1400>, <item:contenttweaker:alchemical_compression_catalyst>], 15);

<recipetype:thermal:smelter>.addRecipe("compress_1512-amc", [<item:contenttweaker:1k-crate> % 100, <item:contenttweaker:500-crate> % 100, <item:contenttweaker:2-bag>*6 % 100], [<tag:items:amc-value:1512>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 6000);

<recipetype:thermal:smelter>.addRecipe("compress_2200-amc", [<item:contenttweaker:1k-crate> % 100, <item:contenttweaker:100-bag>*2 % 100], [<tag:items:amc-value:2200>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 8000);

<recipetype:thermal:smelter>.addRecipe("compress_2216-amc", [<item:contenttweaker:1k-crate>*2 % 100, <item:contenttweaker:100-bag>*2 % 100, <item:contenttweaker:2-bag>*8 % 100], [<tag:items:amc-value:2216>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 8000);

<recipetype:thermal:smelter>.addRecipe("compress_2455-amc", [<item:contenttweaker:1k-crate>*2 % 100, <item:contenttweaker:100-bag>*4 % 100, <item:contenttweaker:50-bag> % 100, <item:contenttweaker:5-bag> % 100], [<tag:items:amc-value:2455>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 8000);

<recipetype:thermal:smelter>.addRecipe("compress_3049-amc", [<item:contenttweaker:1k-crate>*3 % 100, <item:contenttweaker:10-bag>*4 % 100, <item:contenttweaker:5-bag> % 100, <item:contenttweaker:2-bag>*2 % 100], [<tag:items:amc-value:3049>, <item:contenttweaker:alchemical_compression_catalyst>*3], 0, 12000);

mods.extendedcrafting.EnderCrafting.addShapeless("compress_3150-amc", <item:contenttweaker:50-bag>*63, [<tag:items:amc-value:3150>, <item:contenttweaker:alchemical_compression_catalyst>*3], 30);

<recipetype:thermal:smelter>.addRecipe("compress_3299-amc", [<item:contenttweaker:1k-crate>*3 % 100, <item:contenttweaker:250-crate> % 100, <item:contenttweaker:25-bag> % 100, <item:contenttweaker:2-bag>*12 % 100], [<tag:items:amc-value:3299>, <item:contenttweaker:alchemical_compression_catalyst>*3], 0, 12000);

<recipetype:thermal:smelter>.addRecipe("compress_3605-amc", [<item:contenttweaker:1k-crate>*3 % 100, <item:contenttweaker:500-crate> % 100, <item:contenttweaker:100-bag> % 100, <item:contenttweaker:5-bag> % 100], [<tag:items:amc-value:3605>, <item:contenttweaker:alchemical_compression_catalyst>*3], 0, 12000);

mods.extendedcrafting.EnderCrafting.addShapeless("compress_4000-amc",<item:contenttweaker:1k-crate>*4, [<tag:items:amc-value:4000>, <item:contenttweaker:alchemical_compression_catalyst>*3], 30);

<recipetype:thermal:smelter>.addRecipe("compress_4080-amc", [<item:contenttweaker:1k-crate>*4 % 100, <item:contenttweaker:50-bag> % 100, <item:contenttweaker:10-bag>*3 % 100], [<tag:items:amc-value:4080>, <item:contenttweaker:alchemical_compression_catalyst>*3], 0, 8000);

<recipetype:thermal:smelter>.addRecipe("compress_4200-amc", [<item:contenttweaker:1k-crate>*4 % 100, <item:contenttweaker:100-bag>*2 % 100], [<tag:items:amc-value:4200>, <item:contenttweaker:alchemical_compression_catalyst>*3], 0, 8000);

mods.extendedcrafting.EnderCrafting.addShapeless("compress_5000-amc",<item:contenttweaker:5k-crate>, [<tag:items:amc-value:5000>, <item:contenttweaker:alchemical_compression_catalyst>*5], 45);

<recipetype:thermal:smelter>.addRecipe("compress_5010-amc", [<item:contenttweaker:5k-crate> % 100, <item:contenttweaker:10-bag> % 100], [<tag:items:amc-value:5010>, <item:contenttweaker:alchemical_compression_catalyst>*5], 0, 8000);

<recipetype:thermal:smelter>.addRecipe("compress_5305-amc", [<item:contenttweaker:5k-crate> % 100, <item:contenttweaker:100-bag>*3 % 100, <item:contenttweaker:5-bag> % 100], [<tag:items:amc-value:5305>, <item:contenttweaker:alchemical_compression_catalyst>*5], 0, 8000);

mods.extendedcrafting.EnderCrafting.addShapeless("compress_7000-amc",<item:contenttweaker:1k-crate>*7, [<tag:items:amc-value:7000>, <item:contenttweaker:alchemical_compression_catalyst>*5], 45);

<recipetype:thermal:smelter>.addRecipe("compress_7200-amc", [<item:contenttweaker:1k-crate>*7 % 100, <item:contenttweaker:100-bag>*2 % 100], [<tag:items:amc-value:7200>, <item:contenttweaker:alchemical_compression_catalyst>*5], 0, 12000);

mods.extendedcrafting.EnderCrafting.addShapeless("compress_8000-amc",<item:contenttweaker:1k-crate>*8, [<tag:items:amc-value:8000>, <item:contenttweaker:alchemical_compression_catalyst>*5], 45);

<recipetype:thermal:smelter>.addRecipe("compress_9200-amc", [<item:contenttweaker:5k-crate> % 100, <item:contenttweaker:1k-crate>*4 % 100, <item:contenttweaker:100-bag>*2 % 100], [<tag:items:amc-value:9200>, <item:contenttweaker:alchemical_compression_catalyst>*5], 0, 12000);
// 10k+ is 2 advanced
<recipetype:thermal:smelter>.addRecipe("compress_12200-amc", [<item:contenttweaker:10k-crate> % 100, <item:contenttweaker:1k-crate>*2 % 100, <item:contenttweaker:100-bag>*2 % 100], [<tag:items:amc-value:12200>, <item:contenttweaker:advanced_alchemical_catalyst>*2], 0, 20000);
// 15k+ is 1 very and 1 advanced
<recipetype:thermal:smelter>.addRecipe("compress_19800-amc", [<item:contenttweaker:10k-crate> % 100, <item:contenttweaker:1k-crate>*9 % 100, <item:contenttweaker:100-bag>*8 % 100], [<tag:items:amc-value:19800>, <item:contenttweaker:very_advanced_alchemical_catalyst>, <item:contenttweaker:advanced_alchemical_catalyst>], 0, 20000);
// 20k+ is 2 very advanced
mods.extendedcrafting.EnderCrafting.addShapeless("compress_45000-amc",<item:contenttweaker:5k-crate>*9, [<tag:items:amc-value:45000>, <item:contenttweaker:very_advanced_alchemical_catalyst>*2], 90);

##############################################################################################################################################################################
# Lets you convert my ContentTweaker stuff into AMC Crystals
# I would add an AMC value to them, but that's kinda meh imo
# (Really they're supposed to be that way, but game balance)
# RF cost is 100x AMC value
/*
<recipetype:thermal:smelter>.addRecipe("ticket_to_crystals", [<item:contenttweaker:amc_crystal_large>*64 % 100, <item:contenttweaker:amc_crystal_large>*64 % 100, <item:contenttweaker:amc_crystal_large>*64 % 100, <item:contenttweaker:amc_crystal_large>*8 % 100], [<item:contenttweaker:ticket>, <item:contenttweaker:very_advanced_alchemical_catalyst>, <tag:items:pack:crystalline>], 0, 5000);

<recipetype:thermal:smelter>.addRecipe("ashen_token_to_crystals", [<item:contenttweaker:amc_crystal_large>*5 % 100], [<item:contenttweaker:ashen_token>, <item:contenttweaker:alchemical_catalyst>, <tag:items:pack:crystalline>], 0, 2500);

<recipetype:thermal:smelter>.addRecipe("verdant_token_to_crystals", [<item:contenttweaker:amc_crystal_large>*20 % 100], [<item:contenttweaker:verdant_token>, <item:contenttweaker:advanced_alchemical_catalyst>, <tag:items:pack:crystalline>], 0, 10000);

<recipetype:thermal:smelter>.addRecipe("azure_token_to_crystals", [<item:contenttweaker:amc_crystal_large>*64 % 100, <item:contenttweaker:amc_crystal_large>*36 % 100], [<item:contenttweaker:verdant_token>, <item:contenttweaker:advanced_alchemical_catalyst>, <tag:items:pack:crystalline>], 0, 50000);
*/
##############################################################################################################################################################################
/*
mods.extendedcrafting.CompressionCrafting.addRecipe("name", <input>, <output>, inputCount, <catalyst>, RFCost, RFRate);
*/

# Anything less than 5 can't be used in Combination Crafting (most of the time)
# Bag recipes have 2x the RF rate, to help incentivize you to use them (since it'd craft 2x faster, and can use all bag values)
# RF cost is 100x total AMC used, rate is the same as its AMC value
// Ticket (1,000 AMC)
mods.extendedcrafting.CombinationCrafting.addRecipe("ticket_1000", <item:contenttweaker:ticket>, 100000, [<item:contenttweaker:ticket_catalyst>, <tag:items:amc-value:1000>], 1000);

mods.extendedcrafting.CombinationCrafting.addRecipe("ticket_500", <item:contenttweaker:ticket>, 100000, [<item:contenttweaker:ticket_catalyst>, <tag:items:amc-value:500>, <tag:items:amc-value:500>], 1000);

mods.extendedcrafting.CombinationCrafting.addRecipe("ticket_250", <item:contenttweaker:ticket>, 100000, [<item:contenttweaker:ticket_catalyst>, <tag:items:amc-value:250>, <tag:items:amc-value:250>, <tag:items:amc-value:250>, <tag:items:amc-value:250>], 1000);

mods.extendedcrafting.CombinationCrafting.addRecipe("ticket_200", <item:contenttweaker:ticket>, 100000, [<item:contenttweaker:ticket_catalyst>, <tag:items:amc-value:200>, <tag:items:amc-value:200>, <tag:items:amc-value:200>, <tag:items:amc-value:200>, <tag:items:amc-value:200>], 1000);

mods.extendedcrafting.CombinationCrafting.addRecipe("ticket_125", <item:contenttweaker:ticket>, 100000, [<item:contenttweaker:ticket_catalyst>, <tag:items:amc-value:125>, <tag:items:amc-value:125>, <tag:items:amc-value:125>, <tag:items:amc-value:125>, <tag:items:amc-value:125>, <tag:items:amc-value:125>, <tag:items:amc-value:125>, <tag:items:amc-value:125>], 1000);

mods.extendedcrafting.CombinationCrafting.addRecipe("ticket_100", <item:contenttweaker:ticket>, 100000, [<item:contenttweaker:ticket_catalyst>, <tag:items:amc-value:100>, <tag:items:amc-value:100>, <tag:items:amc-value:100>, <tag:items:amc-value:100>, <tag:items:amc-value:100>, <tag:items:amc-value:100>, <tag:items:amc-value:100>, <tag:items:amc-value:100>, <tag:items:amc-value:100>, <tag:items:amc-value:100>], 1000);

mods.extendedcrafting.CombinationCrafting.addRecipe("ticket_minium_token", <item:contenttweaker:ticket>, 100000, [<item:contenttweaker:ticket_catalyst>, <item:contenttweaker:minium_token>], 1000);

mods.extendedcrafting.CombinationCrafting.addRecipe("ticket_azure_token", <item:contenttweaker:ticket>, 100000, [<item:contenttweaker:ticket_catalyst>, <item:contenttweaker:azure_token>, <item:contenttweaker:azure_token>], 1000);

mods.extendedcrafting.CombinationCrafting.addRecipe("ticket_verdant_token", <item:contenttweaker:ticket>, 100000, [<item:contenttweaker:ticket_catalyst>, <item:contenttweaker:verdant_token>, <item:contenttweaker:verdant_token>, <item:contenttweaker:verdant_token>, <item:contenttweaker:verdant_token>, <item:contenttweaker:verdant_token>, <item:contenttweaker:verdant_token>, <item:contenttweaker:verdant_token>, <item:contenttweaker:verdant_token>, <item:contenttweaker:verdant_token>, <item:contenttweaker:verdant_token>], 1000);

mods.extendedcrafting.CompressionCrafting.addRecipe("ticket_ashen_token", <item:contenttweaker:ashen_token>, <item:contenttweaker:ticket>, 40, <item:contenttweaker:ticket_catalyst>, 100000, 100);

mods.extendedcrafting.CombinationCrafting.addRecipe("compress_ticket_10k", <item:contenttweaker:ticket>*10, 100000, [<item:contenttweaker:ticket_catalyst>, <item:contenttweaker:10k-crate>], 1000);
mods.extendedcrafting.CombinationCrafting.addRecipe("compress_ticket_5k", <item:contenttweaker:ticket>*5, 100000, [<item:contenttweaker:ticket_catalyst>, <item:contenttweaker:5k-crate>], 1000);


// Ashen Token (Minimal tier, 1 - 25 AMC) [25]
mods.extendedcrafting.CompressionCrafting.addRecipe("compress_ashen_token_25", <item:contenttweaker:25-bag>, <item:contenttweaker:ashen_token>, 1, <item:contenttweaker:token_catalyst>, 2500, 25);
mods.extendedcrafting.CompressionCrafting.addRecipe("compress_ashen_token_10", <item:contenttweaker:10-bag>, <item:contenttweaker:ashen_token>*2, 5, <item:contenttweaker:token_catalyst>, 2500, 25);
mods.extendedcrafting.CompressionCrafting.addRecipe("compress_ashen_token_5", <item:contenttweaker:5-bag>, <item:contenttweaker:ashen_token>, 5, <item:contenttweaker:token_catalyst>, 2500, 25);
mods.extendedcrafting.CompressionCrafting.addRecipe("compress_ashen_token_2", <item:contenttweaker:2-bag>, <item:contenttweaker:ashen_token>*2, 25, <item:contenttweaker:token_catalyst>, 2500, 25);
mods.extendedcrafting.CompressionCrafting.addRecipe("compress_ashen_token_1", <item:contenttweaker:1-bag>, <item:contenttweaker:ashen_token>, 25, <item:contenttweaker:token_catalyst>, 2500, 25);


// Verdant Token (Average tier, 25 - 100 AMC) [100]
mods.extendedcrafting.CompressionCrafting.addRecipe("compress_verdant_token_100", <item:contenttweaker:100-bag>, <item:contenttweaker:verdant_token>, 1, <item:contenttweaker:advanced_token_catalyst>, 10000, 100);

mods.extendedcrafting.CompressionCrafting.addRecipe("compress_verdant_token_50", <item:contenttweaker:50-bag>, <item:contenttweaker:verdant_token>, 2, <item:contenttweaker:advanced_token_catalyst>, 10000, 100);

mods.extendedcrafting.CompressionCrafting.addRecipe("compress_verdant_token_25", <item:contenttweaker:25-bag>, <item:contenttweaker:verdant_token>, 4, <item:contenttweaker:advanced_token_catalyst>, 10000, 100);


// Azure Token (Above Average/High tier, 100 - 500 AMC) [500]
mods.extendedcrafting.CompressionCrafting.addRecipe("compress_azure_token_500", <item:contenttweaker:500-crate>, <item:contenttweaker:azure_token>, 1, <item:contenttweaker:very_advanced_token_catalyst>, 50000, 500);

mods.extendedcrafting.CompressionCrafting.addRecipe("compress_azure_token_250", <item:contenttweaker:250-crate>, <item:contenttweaker:azure_token>, 2, <item:contenttweaker:very_advanced_token_catalyst>, 50000, 500);

mods.extendedcrafting.CompressionCrafting.addRecipe("compress_azure_token_100", <item:contenttweaker:100-bag>, <item:contenttweaker:azure_token>, 5, <item:contenttweaker:very_advanced_token_catalyst>, 50000, 500);


// Mininum Token (Very High/Extreme, 500 - 1,000 AMC) [1,000]
mods.extendedcrafting.CompressionCrafting.addRecipe("compress_minium_token_1000", <item:contenttweaker:1k-crate>, <item:contenttweaker:minium_token>, 1, <item:contenttweaker:highly_advanced_token_catalyst>, 100000, 1000);

mods.extendedcrafting.CompressionCrafting.addRecipe("compress_minium_token_500", <item:contenttweaker:500-crate>, <item:contenttweaker:minium_token>, 2, <item:contenttweaker:highly_advanced_token_catalyst>, 100000, 1000);

mods.extendedcrafting.CompressionCrafting.addRecipe("compress_minium_token_250", <item:contenttweaker:250-crate>, <item:contenttweaker:minium_token>, 4, <item:contenttweaker:highly_advanced_token_catalyst>, 100000, 1000);


// Alchemist's Token (Extreme/Insane, 5,000 & higher) [5,000]
mods.extendedcrafting.CompressionCrafting.addRecipe("compress_minium_token_10k", <item:contenttweaker:10k-crate>, <item:contenttweaker:alchemist_token>*2, 1, <item:contenttweaker:alchemist_token_catalyst>, 500000, 5000);

mods.extendedcrafting.CompressionCrafting.addRecipe("compress_minium_token_5k", <item:contenttweaker:5k-crate>, <item:contenttweaker:alchemist_token>, 1, <item:contenttweaker:alchemist_token_catalyst>, 500000, 5000);

mods.extendedcrafting.CompressionCrafting.addRecipe("compress_minium_token_1k", <item:contenttweaker:1k-crate>, <item:contenttweaker:alchemist_token>, 5, <item:contenttweaker:alchemist_token_catalyst>, 500000, 5000);


print("amc_recipes.zs loaded");