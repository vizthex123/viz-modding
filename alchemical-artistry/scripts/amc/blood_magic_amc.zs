# Adds AMC & recipes to Blood Magic's items because I am tired of spamming my other scripts
#priority 20

import crafttweaker.api.tag.MCTag;

print("blood_magic_amc.zs loading...");
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

# Slates, Runes, and Ritual Stones
<tag:items:amc-value:1>.add(<item:bloodmagic:blankslate>);
<tag:items:amc-value:1>.add(<item:bloodmagic:reinforcedslate>);
<tag:items:amc-value:1>.add(<item:bloodmagic:infusedslate>);
<tag:items:amc-value:1>.add(<item:bloodmagic:demonslate>);

<tag:items:amc-value:8>.add(<item:bloodmagic:blankrune>);
<tag:items:amc-value:34>.add(<item:bloodmagic:speedrune>);
<tag:items:amc-value:113>.add(<item:bloodmagic:sacrificerune>);
<tag:items:amc-value:38>.add(<item:bloodmagic:selfsacrificerune>);
<tag:items:amc-value:238>.add(<item:bloodmagic:dislocationrune>);
<tag:items:amc-value:238>.add(<item:bloodmagic:altarcapacityrune>);
<tag:items:amc-value:789>.add(<item:bloodmagic:bettercapacityrune>);
<tag:items:amc-value:20>.add(<item:bloodmagic:orbcapacityrune>);
<tag:items:amc-value:435>.add(<item:bloodmagic:accelerationrune>);
<tag:items:amc-value:174>.add(<item:bloodmagic:chargingrune>);

<tag:items:amc-value:101>.add(<item:bloodmagic:ritualstone>);
<tag:items:amc-value:804>.add(<item:bloodmagic:masterritualstone>);




// Materials
<tag:items:amc-value:100>.add(<item:bloodmagic:weakbloodshard>);
<tag:items:amc-value:75>.add(<item:bloodmagic:life_essence_bucket>);

<tag:items:amc-value:0.75>.add(<item:bloodmagic:slate_vial>);
<tag:items:amc-value:110>.add(<item:bloodmagic:melee_anointment>); // Should be 110.75
<tag:items:amc-value:28.305>.add(<item:bloodmagic:silk_touch_anointment>);
<tag:items:amc-value:60>.add(<item:bloodmagic:fortune_anointment>); // Should be 57.75
<tag:items:amc-value:105>.add(<item:bloodmagic:holy_water_anointment>); // Should be 105.75
<tag:items:amc-value:2510>.add(<item:bloodmagic:hidden_knowledge_anointment>); // Should be 2,511.75
<tag:items:amc-value:40>.add(<item:bloodmagic:quick_draw_anointment>); // Should be 40.75
<tag:items:amc-value:30>.add(<item:bloodmagic:looting_anointment>); // Should be 32.75
<tag:items:amc-value:50>.add(<item:bloodmagic:bow_power_anointment>); // Should be 48.25
# Will Power isn't in the mod yet
<tag:items:amc-value:30>.add(<item:bloodmagic:smelting_anointment>); // Should be 30.75


// Inscription Tools
<tag:items:amc-value:150>.add(<item:bloodmagic:airscribetool>);
<tag:items:amc-value:100>.add(<item:bloodmagic:firescribetool>);
<tag:items:amc-value:90>.add(<item:bloodmagic:waterscribetool>);
<tag:items:amc-value:100>.add(<item:bloodmagic:earthscribetool>);
<tag:items:amc-value:180>.add(<item:bloodmagic:duskscribetool>);


// Everything Else
<tag:items:amc-value:4>.add(<item:bloodmagic:soulsnare>);
<tag:items:amc-value:280>.add(<item:bloodmagic:soulforge>);
<tag:items:amc-value:463>.add(<item:bloodmagic:alchemicalreactionchamber>);
<tag:items:amc-value:1186>.add(<item:bloodmagic:demoncrucible>);
<tag:items:amc-value:292>.add(<item:bloodmagic:demoncrystallizer>);
<tag:items:amc-value:12.5>.add(<item:bloodmagic:largebloodstonebrick>); // Should be 12.625
<tag:items:amc-value:12.5>.add(<item:bloodmagic:bloodstonebrick>);
<tag:items:amc-value:162>.add(<item:bloodmagic:altar>);
<tag:items:amc-value:131>.add(<item:bloodmagic:alchemytable>);
<tag:items:amc-value:20>.add(<item:bloodmagic:incensealtar>); // Should be 19.5


<tag:items:amc-value:1>.add(<item:bloodmagic:woodbrickpath>);
<tag:items:amc-value:1>.add(<item:bloodmagic:woodtilepath>);
<tag:items:amc-value:1>.add(<item:bloodmagic:stonebrickpath>);
<tag:items:amc-value:1>.add(<item:bloodmagic:stonetilepath>);
<tag:items:amc-value:1>.add(<item:bloodmagic:wornstonebrickpath>);
<tag:items:amc-value:1>.add(<item:bloodmagic:wornstonetilepath>);

<tag:items:amc-value:80>.add(<item:bloodmagic:sacrificialdagger>);
<tag:items:amc-value:80>.add(<item:bloodmagic:arcaneashes>);
<tag:items:amc-value:50.25>.add(<item:bloodmagic:daggerofsacrifice>);

<tag:items:amc-value:1425>.add(<item:bloodmagic:lavacrystal>);
<tag:items:amc-value:1425>.add(<item:bloodmagic:activationcrystalweak>);
<tag:items:amc-value:2700>.add(<item:bloodmagic:experiencebook>);

<tag:items:amc-value:85>.add(<item:bloodmagic:reagentbinding>); // Should be like 88.055
<tag:items:amc-value:210>.add(<item:bloodmagic:livinghelmet>);
<tag:items:amc-value:285>.add(<item:bloodmagic:livingplate>);
<tag:items:amc-value:260>.add(<item:bloodmagic:livingleggings>);
<tag:items:amc-value:185>.add(<item:bloodmagic:livingboots>);

<tag:items:amc-value:160>.add(<item:bloodmagic:reagentwater>);
<tag:items:amc-value:290>.add(<item:bloodmagic:reagentlava>); // Should be 293
<tag:items:amc-value:120>.add(<item:bloodmagic:reagentvoid>); // Should be 118
<tag:items:amc-value:24>.add(<item:bloodmagic:reagentgrowth>);
<tag:items:amc-value:210>.add(<item:bloodmagic:reagentfastminer>); // Should be 211.5
<tag:items:amc-value:330>.add(<item:bloodmagic:reagentmagnetism>); // Should be 329
<tag:items:amc-value:170>.add(<item:bloodmagic:reagentair>);
<tag:items:amc-value:85>.add(<item:bloodmagic:reagentbloodlight>); // SHould be 85.5
<tag:items:amc-value:50>.add(<item:bloodmagic:reagentsight>); // Should be 50.5
<tag:items:amc-value:495>.add(<item:bloodmagic:reagentholding>);

<tag:items:amc-value:125>.add(<item:bloodmagic:sanguinereverter>);
<tag:items:amc-value:700>.add(<item:bloodmagic:furnacecell_primitive>); // Should be 697
<tag:items:amc-value:100>.add(<item:bloodmagic:primitive_hydration_cell>); // Should be 97

<tag:items:amc-value:20>.add(<item:bloodmagic:plantoil>); // Should be 19
<tag:items:amc-value:110>.add(<item:bloodmagic:basiccuttingfluid>); // Should be 112



<tag:items:amc-value:12>.add(<item:bloodmagic:coalsand>); // Should be 11.5
<tag:items:amc-value:35>.add(<item:bloodmagic:goldsand>); // Should be 37.5
<tag:items:amc-value:12.5>.add(<item:bloodmagic:ironsand>); // Should be 37.5
<tag:items:amc-value:250>.add(<item:bloodmagic:sand_netherite>);

<tag:items:amc-value:2>.add(<item:bloodmagic:sulfur>);
<tag:items:amc-value:85>.add(<item:bloodmagic:explosivepowder>); // Should be 82

<tag:items:amc-value:8>.add(<item:bloodmagic:ironfragment>); // Should be 8.333 etc.
<tag:items:amc-value:50>.add(<item:bloodmagic:goldfragment>);
<tag:items:amc-value:150>.add(<item:bloodmagic:fragment_netherite_scrap>); // Should be 166.666 etc.

<tag:items:amc-value:8>.add(<item:bloodmagic:irongravel>); // Should be 8.333 etc.
<tag:items:amc-value:50>.add(<item:bloodmagic:goldgravel>);
<tag:items:amc-value:150>.add(<item:bloodmagic:gravel_netherite_scrap>); // Should be 166.666 etc.

<tag:items:amc-value:105>.add(<item:bloodmagic:ritualtinkerer>); // Should be 104

<tag:items:amc-value:405>.add(<item:contenttweaker:frozen_reagent>); // Should be 406-ish

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

RF cost is 10x (total) AMC value

REMEMBER:
0.75, 1, 8, 12.5, 20, 100, 105, 110, and 280 AMC already have recipes!
*/

// Soft Coating [28.305]
<recipetype:thermal:smelter>.addRecipe("crystallize_soft_coating", [<item:contenttweaker:amc_crystal_large>*2 % 100, <item:contenttweaker:amc_crystal_small> % 100, <item:contenttweaker:amc_crystal_tiny> % 100, <item:contenttweaker:amc_crystal_microscopic>*61 % 100], [<tag:items:amc-value:28.305>, <item:contenttweaker:alchemical_compression_catalyst>|<item:contenttweaker:alchemical_crystallization_catalyst>], 0, 1000);

// Speed Rune [34]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_speed_rune", <item:contenttweaker:2-bag>*17, [<tag:items:amc-value:34>, <item:contenttweaker:alchemical_compression_catalyst>], 3);

// Rune of Self-Sacrifice [38]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_self-sacrifice_rune", <item:contenttweaker:2-bag>*19, [<tag:items:amc-value:38>, <item:contenttweaker:alchemical_compression_catalyst>], 3);

// Fortuna Extract [60]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_60-amc", <item:contenttweaker:10-bag>*6, [<tag:items:amc-value:60>, <item:contenttweaker:alchemical_compression_catalyst>], 3);

// Rune of Sacrifice [113]
<recipetype:thermal:smelter>.addRecipe("compress_sacrifice_rune", [<item:contenttweaker:100-bag> % 100, <item:contenttweaker:10-bag> % 100, <item:contenttweaker:2-bag> % 100, <item:contenttweaker:1-bag> % 100], [<tag:items:amc-value:113>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 1000);

// Ritual Stone [101]
<recipetype:thermal:smelter>.addRecipe("compress_ritual_stone", [<item:contenttweaker:100-bag> % 100, <item:contenttweaker:1-bag> % 100], [<tag:items:amc-value:101>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 2000);

// Alchemy Table [131]
<recipetype:thermal:smelter>.addRecipe("compress_alchemy_table", [<item:contenttweaker:100-bag> % 100, <item:contenttweaker:25-bag> % 100, <item:contenttweaker:5-bag> % 100, <item:contenttweaker:1-bag> % 100], [<tag:items:amc-value:131>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 2000);

// Water Reagent [160]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_water_reagent", <item:contenttweaker:10-bag>*16, [<tag:items:amc-value:160>, <item:contenttweaker:alchemical_compression_catalyst>], 3);

// Blood Altar [162]
<recipetype:thermal:smelter>.addRecipe("compress_blood_altar", [<item:contenttweaker:100-bag> % 100, <item:contenttweaker:50-bag> % 100, <item:contenttweaker:10-bag> % 100, <item:contenttweaker:2-bag> % 100], [<tag:items:amc-value:162>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 2000);

// Air Reagent [170]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_air_reagent", <item:contenttweaker:10-bag>*17, [<tag:items:amc-value:170>, <item:contenttweaker:alchemical_compression_catalyst>], 3);

// Charging Rune [174]
<recipetype:thermal:smelter>.addRecipe("compress_charging_rune", [<item:contenttweaker:100-bag> % 100, <item:contenttweaker:50-bag> % 100, <item:contenttweaker:10-bag>*2 % 100, <item:contenttweaker:2-bag>*2 % 100], [<tag:items:amc-value:174>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 2000);

// Living Boots [185]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_185-amc", <item:contenttweaker:5-bag>*37, [<tag:items:amc-value:185>, <item:contenttweaker:alchemical_compression_catalyst>], 3);

// Displacement & Capacity Runes [238]
<recipetype:thermal:smelter>.addRecipe("compress_238-amc", [<item:contenttweaker:100-bag>*2 % 100, <item:contenttweaker:25-bag> % 100, <item:contenttweaker:10-bag> % 100, <item:contenttweaker:1-bag>*3 % 100], [<tag:items:amc-value:238>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 2000);

// Living Leggings [260]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_living_boots", <item:contenttweaker:10-bag>*26, [<tag:items:amc-value:260>, <item:contenttweaker:alchemical_compression_catalyst>], 5);

// Living Chestplate [285]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_living_chestplate", <item:contenttweaker:5-bag>*57, [<tag:items:amc-value:285>, <item:contenttweaker:alchemical_compression_catalyst>], 5);

// Lava Reagent [290]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_lava_reagent", <item:contenttweaker:10-bag>*29, [<tag:items:amc-value:290>, <item:contenttweaker:alchemical_compression_catalyst>], 5);

// Demon Crystallizer [292]
<recipetype:thermal:smelter>.addRecipe("compress_demon_crystallizer", [<item:contenttweaker:100-bag>*2 % 100, <item:contenttweaker:50-bag> % 100, <item:contenttweaker:10-bag>*4 % 100, <item:contenttweaker:2-bag> % 100], [<tag:items:amc-value:292>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 2000);

// Magnetism Reagent [330]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_magnetism_reagent", <item:contenttweaker:10-bag>*33, [<tag:items:amc-value:330>, <item:contenttweaker:alchemical_compression_catalyst>], 5);

// Frozen Reagent [405]
<recipetype:thermal:smelter>.addRecipe("compress_405-amc", [<item:contenttweaker:100-bag>*4 % 100, <item:contenttweaker:5-bag> % 100], [<tag:items:amc-value:405>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 3000);

// Acceleration Rune [435]
<recipetype:thermal:smelter>.addRecipe("compress_acceleration_rune", [<item:contenttweaker:100-bag>*4 % 100, <item:contenttweaker:25-bag> % 100, <item:contenttweaker:10-bag> % 100], [<tag:items:amc-value:435>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 3000);

// Holding Reagent [495]
<recipetype:thermal:smelter>.addRecipe("compress_holding_reagent", [<item:contenttweaker:100-bag>*4 % 100, <item:contenttweaker:50-bag> % 100, <item:contenttweaker:10-bag>*4 % 100, <item:contenttweaker:5-bag> % 100], [<tag:items:amc-value:495>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 3000);

// Alchemical Reaction Chamber (ARC) [463]
<recipetype:thermal:smelter>.addRecipe("compress_arc", [<item:contenttweaker:100-bag>*4 % 100, <item:contenttweaker:50-bag> % 100, <item:contenttweaker:10-bag> % 100, <item:contenttweaker:1-bag>*3 % 100], [<tag:items:amc-value:463>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 3000);

// Primitive Fuel Cell [700]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_700-amc", <item:contenttweaker:100-bag>*7, [<tag:items:amc-value:700>, <item:contenttweaker:alchemical_compression_catalyst>], 10);

// Rune of Augmented Capacity [789]
<recipetype:thermal:smelter>.addRecipe("compress_augmented_rune", [<item:contenttweaker:500-crate> % 100, <item:contenttweaker:100-bag>*2 % 100, <item:contenttweaker:10-bag>*8 % 100, <item:contenttweaker:1-bag>*9 % 100], [<tag:items:amc-value:789>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 4000);

// Master Ritual Stone [804]
<recipetype:thermal:smelter>.addRecipe("compress_master_ritual_stone", [<item:contenttweaker:500-crate> % 100, <item:contenttweaker:100-bag>*3 % 100, <item:contenttweaker:2-bag>*2 % 100], [<tag:items:amc-value:804>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 4000);

### Needs 2 Catalysts

// Demon Crucible [1,186]
<recipetype:thermal:smelter>.addRecipe("compress_demon_crucible", [<item:contenttweaker:1k-crate> % 100, <item:contenttweaker:100-bag> % 100, <item:contenttweaker:10-bag>*8 % 100, <item:contenttweaker:2-bag>*3 % 100], [<tag:items:amc-value:1186>, <item:contenttweaker:alchemical_compression_catalyst>*2], 0, 6000);

// Lava & Weak Activation Crystal [1,425]
<recipetype:thermal:smelter>.addRecipe("compress_1425-amc", [<item:contenttweaker:1k-crate> % 100, <item:contenttweaker:100-bag>*4 % 100, <item:contenttweaker:25-bag> % 100], [<tag:items:amc-value:1425>, <item:contenttweaker:alchemical_compression_catalyst>*2], 0, 6000);

### Needs 3 Catalysts

// Lava Crystal [2,510]
<recipetype:thermal:smelter>.addRecipe("compress_lava_crystal", [<item:contenttweaker:1k-crate>*2 % 100, <item:contenttweaker:500-crate> % 100, <item:contenttweaker:10-bag> % 100], [<tag:items:amc-value:2510>, <item:contenttweaker:alchemical_compression_catalyst>*3], 0, 6000);

// Tome of Peritia [2,700]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_tome_of_peritia", <item:contenttweaker:100-bag>*27, [<tag:items:amc-value:2700>, <item:contenttweaker:alchemical_compression_catalyst>*3], 30);

print("blood_magic_amc.zs loaded");