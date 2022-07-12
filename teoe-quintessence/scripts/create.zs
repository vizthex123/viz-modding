# Adds recipes to Create's machines
print("create.zs loading...");
/*
<recipetype:create:mixing>.addRecipe("recipeName", "heat*", <output>, [<item_inputs>], [<fluid_inputs>], Duration**);
* none, heated, superheated
** optional

<recipetype:create:compacting>.addRecipe("recipeName", "heat*", <output>, [<item_inputs>], [<fluid_inputs>], Duration**);
* none, heated, superheated
** optional

<recipetype:create:filling>.addRecipe("recipeName", <output>, <input>, <fluid>);

<recipetype:create:pressing>.addRecipe(String name, MCWeightedItemStack[] output, IIngredientWithAmount input, @Optional(100) int duration)

<recipetype:create:mechanical_crafting>.addRecipe("recipeName", <output>,
[[<item>],
[<item>],
[<item>]]);

Can add more rows as needed. Can be any shape.

do item:minecraft:air for empty spaces
do fluid:minecraft:empty for empty fluids
*/

// Extract Sugar Water from fluid holders
<recipetype:create:emptying>.addRecipe("empty_sugar_water_bucket", <item:minecraft:bucket>, <fluid:the_bumblezone:sugar_water_still>*1000, <item:the_bumblezone:sugar_water_bucket>);
<recipetype:create:emptying>.addRecipe("empty_sugar_water_bottle", <item:minecraft:glass_bottle>, <fluid:the_bumblezone:sugar_water_still>*250, <item:the_bumblezone:sugar_water_bottle>);

// Convert debris scrap nuggets into scrap
<recipetype:create:mechanical_crafting>.addRecipe("nuggets_to_scrap", <item:minecraft:netherite_scrap>,
[[<tag:items:forge:nuggets/netherite_scrap>, <tag:items:forge:nuggets/netherite_scrap>, <tag:items:forge:nuggets/netherite_scrap>],
[<tag:items:forge:nuggets/netherite_scrap>, <tag:items:forge:nuggets/netherite_scrap>, <tag:items:forge:nuggets/netherite_scrap>],
[<tag:items:forge:nuggets/netherite_scrap>, <tag:items:forge:nuggets/netherite_scrap>, <tag:items:forge:nuggets/netherite_scrap>]]);


### Crushing Wheels ###
/*
<recipetype:create:milling>.addRecipe("recipeName", [<outputs> % chance], <input>);

<recipetype:create:crushing>.addRecipe("recipeName", [<outputs> % chance], <input>);

default time for both is 2 - 3 seconds
*/

// Crush Galcite into Coal & Powdered Obsidian
<recipetype:create:crushing>.addRecipe("crush_galcite", [<item:minecraft:coal>*4 % 100, <item:create:powdered_obsidian> % 20], <item:geode:galcite>);

// Crush Moss Carpets into Moss Paste
<recipetype:create:crushing>.addRecipe("crush_moss_carpet", [<item:quark:moss_paste> % 65], <item:minecraft:moss_carpet>, 1);

// Crushing Wheel version of my Planks > Sawdust recipe, and TE's Log > Sawdust one
<recipetype:create:crushing>.addRecipe("crush_planks", [<item:thermal:sawdust>*2 % 100], <tag:items:minecraft:planks>, 1);
<recipetype:create:crushing>.addRecipe("crush_logs", [<item:thermal:sawdust>*8 % 100], <tag:items:minecraft:logs>, 3);

// Moved AE2's Ender Dust to the Crushing Wheels
blastFurnace.remove(<item:ae2:ender_dust>);
<recipetype:create:crushing>.addRecipe("ender_dust", [<item:ae2:ender_dust> % 100], <item:minecraft:ender_pearl>, 3);

// Crying Obsidian > Powdered Obsidian
<recipetype:create:crushing>.addRecipe("crying_obsidian_to_dust", [<item:create:powdered_obsidian>*2, <item:create:powdered_obsidian> % 50, <item:create:powdered_obsidian> % 25, <item:minecraft:obsidian> % 50], <item:minecraft:crying_obsidian>, 5);

// Crush Gilded Blackstone into Gold
<recipetype:create:crushing>.addRecipe("gilded_blackstone_crushing", [<item:create:crushed_gold_ore>, <item:minecraft:gold_nugget>*6 % 25, <item:minecraft:blackstone> % 85], <item:minecraft:gilded_blackstone>, 7);

// Crushing recipe for Gold Rings
<recipetype:create:crushing>.addRecipe("crush_gold_ring", [<item:create:crushed_gold_ore>*2 % 50, <item:minecraft:gold_nugget>*8 % 50], <item:additionaladditions:gold_ring>, 3);

// Crush Sweet Berries into Red & Green Dye
<recipetype:create:crushing>.addRecipe("crush_sweet_berries", [<item:minecraft:red_dye>*3 % 100, <item:minecraft:green_dye> % 15], <item:minecraft:sweet_berries>, 3);

// Crush Certus Quartz into Dust
<recipetype:create:crushing>.addRecipe("crush_certus_quartz", [<item:ae2:certus_quartz_dust> % 100], <tag:items:ae2:all_certus_quartz>, 2);

// Crush Raw Quartz into Quartz
<recipetype:create:crushing>.addRecipe("crush_raw_quartz", [<item:minecraft:quartz>*2 % 100, <item:minecraft:quartz>*2 % 50], <item:byg:raw_quartz_block>, 5);

// Crush Slime Crystal Blocks into Slime Crystals
<recipetype:create:crushing>.addRecipe("crush_earthslime", [<item:tconstruct:earth_slime_crystal>*3 % 100, <item:tconstruct:earth_slime_crystal> % 50, <item:create:experience_nugget> % 50], <item:tconstruct:earth_slime_crystal_block>, 10);
<recipetype:create:crushing>.addRecipe("crush_skyslime", [<item:tconstruct:sky_slime_crystal>*3 % 100, <item:tconstruct:sky_slime_crystal> % 50, <item:create:experience_nugget> % 65], <item:tconstruct:sky_slime_crystal_block>, 10);
<recipetype:create:crushing>.addRecipe("crush_ichorslime", [<item:tconstruct:ichor_slime_crystal>*3 % 100, <item:tconstruct:ichor_slime_crystal> % 50, <item:create:experience_nugget> % 75], <item:tconstruct:ichor_slime_crystal_block>, 10);
<recipetype:create:crushing>.addRecipe("crush_enderslime", [<item:tconstruct:ender_slime_crystal>*3 % 100, <item:tconstruct:ender_slime_crystal> % 50, <item:create:experience_nugget> % 100], <item:tconstruct:ender_slime_crystal_block>, 10);

# Ore Crushing Recipes
// Cobalt
<recipetype:create:crushing>.addRecipe("crush_raw_cobalt", [<item:kubejs:crushed_cobalt>, <item:create:experience_nugget> % 100, <item:create:experience_nugget> % 25], <item:tconstruct:raw_cobalt>, 10);
<recipetype:create:crushing>.addRecipe("crush_raw_cobalt_block", [<item:kubejs:crushed_cobalt>*9, <item:create:experience_nugget>*9 % 100, <item:create:experience_nugget> % 50], <item:tconstruct:raw_cobalt_block>, 10);
<recipetype:create:crushing>.addRecipe("crush_cobalt_ore", [<item:kubejs:crushed_cobalt>, <item:kubejs:crushed_cobalt> % 75, <item:create:experience_nugget>*2 % 100, <item:create:experience_nugget> % 50, <item:minecraft:netherrack> % 12], <item:tconstruct:cobalt_ore>, 10);

// Pendorite
<recipetype:create:crushing>.addRecipe("crush_raw_pendorite", [<item:kubejs:crushed_pendorite>, <item:create:experience_nugget>*2 % 100], <item:byg:raw_pendorite>, 30);
<recipetype:create:crushing>.addRecipe("crush_raw_pendorite_block", [<item:kubejs:crushed_pendorite>*9, <item:create:experience_nugget>*27 % 75], <item:byg:raw_pendorite_block>, 30);
<recipetype:create:crushing>.addRecipe("crush_pendorite_ore", [<item:kubejs:crushed_pendorite>, <item:kubejs:crushed_pendorite> % 75, <item:create:experience_nugget>*3 % 100], <item:byg:pendorite_ore>, 30);

// Platinum
<recipetype:create:crushing>.addRecipe("crush_raw_platinum", [<item:kubejs:crushed_platinum>, <item:create:experience_nugget> % 90], <item:ob_core:platinum_raw>, 15);
<recipetype:create:crushing>.addRecipe("crush_raw_platinum_block", [<item:kubejs:crushed_platinum>*9, <item:create:experience_nugget>*9 % 90], <item:ob_core:raw_platinum_block>, 15);
<recipetype:create:crushing>.addRecipe("crush_raw_platinum_ore", [<item:kubejs:crushed_platinum>, <item:kubejs:crushed_platinum> % 75, <item:create:experience_nugget>*2 % 85, <item:minecraft:cobbled_deepslate> % 12], <item:ob_core:deepslate_platinum_ore>, 15);

// Soulstone
<recipetype:create:crushing>.remove(<item:malum:raw_soulstone>);

<recipetype:create:crushing>.addRecipe("crush_raw_soulstone_block", [<item:malum:crushed_soulstone>*9, <item:create:experience_nugget>*9 % 85], <item:malum:block_of_raw_soulstone>, 7);
<recipetype:create:crushing>.addRecipe("crush_soulstone_ore", [<item:malum:crushed_soulstone>, <item:malum:crushed_soulstone> % 75, <item:create:experience_nugget> % 80, <item:minecraft:cobblestone> % 12], <item:malum:soulstone_ore>, 7);
<recipetype:create:crushing>.addRecipe("crush_deepslate_soulstone_ore", [<item:malum:crushed_soulstone>, <item:malum:crushed_soulstone> % 75, <item:create:experience_nugget> % 80, <item:minecraft:cobbled_deepslate> % 12], <item:malum:deepslate_soulstone_ore>, 7);

###########################################################################

# Crush Wrappist Blocks into Shards
<recipetype:create:crushing>.addRecipe("crush_wrappist_block", [<item:geode:wrappist_shard>*3 % 100, <item:geode:wrappist_shard> % 50, <item:create:experience_nugget> % 100, <item:create:experience_nugget> % 50], <item:geode:wrappist_block>, 5);

# Crush Corundum blocks into crystals
<recipetype:create:crushing>.addRecipe("crush_red_corundum", [<item:quark:red_corundum_cluster>*3 % 100, <item:quark:red_corundum_cluster> % 75], <item:quark:red_corundum>|<item:quark:waxed_red_corundum>, 10);

<recipetype:create:crushing>.addRecipe("crush_orange_corundum", [<item:quark:orange_corundum_cluster>*3 % 100, <item:quark:orange_corundum_cluster> % 75], <item:quark:orange_corundum>|<item:quark:waxed_orange_corundum>, 10);

<recipetype:create:crushing>.addRecipe("crush_yellow_corundum", [<item:quark:yellow_corundum_cluster>*3 % 100, <item:quark:yellow_corundum_cluster> % 75], <item:quark:yellow_corundum>|<item:quark:waxed_yellow_corundum>, 10);

<recipetype:create:crushing>.addRecipe("crush_green_corundum", [<item:quark:green_corundum_cluster>*3 % 100, <item:quark:green_corundum_cluster> % 75], <item:quark:green_corundum>|<item:quark:waxed_green_corundum>, 10);

<recipetype:create:crushing>.addRecipe("crush_blue_corundum", [<item:quark:blue_corundum_cluster>*3 % 100, <item:quark:blue_corundum_cluster> % 75], <item:quark:blue_corundum>|<item:quark:waxed_blue_corundum>, 10);

<recipetype:create:crushing>.addRecipe("crush_indigo_corundum", [<item:quark:indigo_corundum_cluster>*3 % 100, <item:quark:indigo_corundum_cluster> % 75], <item:quark:indigo_corundum>|<item:quark:waxed_indigo_corundum>, 10);

<recipetype:create:crushing>.addRecipe("crush_violet_corundum", [<item:quark:violet_corundum_cluster>*3 % 100, <item:quark:violet_corundum_cluster> % 75], <item:quark:violet_corundum>|<item:quark:waxed_violet_corundum>, 10);

<recipetype:create:crushing>.addRecipe("crush_white_corundum", [<item:quark:white_corundum_cluster>*3 % 100, <item:quark:white_corundum_cluster> % 75], <item:quark:white_corundum>|<item:quark:waxed_white_corundum>, 10);

<recipetype:create:crushing>.addRecipe("crush_black_corundum", [<item:quark:black_corundum_cluster>*3 % 100, <item:quark:black_corundum_cluster> % 75], <item:quark:black_corundum>|<item:quark:waxed_black_corundum>, 10);

print("create.zs loaded");