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
/*
// Press Leather out of Fleshes
<recipetype:create:pressing>.addRecipe("press_leather", [<item:minecraft:leather> % 25], <item:minecraft:rotten_flesh>, 5);
<recipetype:create:pressing>.addRecipe("press_illager_leather", [<item:minecraft:leather> % 50], <item:food_enhancements:illager_flesh>, 5);
*/
### Crushing Wheels ###
/*
<recipetype:create:milling>.addRecipe("recipeName", [<outputs> % chance], <input>);

<recipetype:create:crushing>.addRecipe("recipeName", [<outputs> % chance], <input>);

default time for both is 2 - 3 seconds
*/


// Crush Shale
<recipetype:create:crushing>.addRecipe("crush_shale", [<item:malum:natural_quartz> % 55, <item:create:crushed_iron_ore> % 15, <item:minecraft:clay_ball> % 30], <item:quark:shale>, 5);

// Crush Jasper
<recipetype:create:crushing>.addRecipe("crush_jasper", [<item:minecraft:calcite> % 25, <item:ae2:silicon> % 55, <item:minecraft:clay_ball> % 20], <item:quark:jasper>, 5);

// Crush Myalite
<recipetype:create:crushing>.addRecipe("crush_myalite", [<item:minecraft:popped_chorus_fruit> % 75], <item:quark:myalite>, 5);
<recipetype:create:crushing>.addRecipe("crush_dusky_myalite", [<item:minecraft:popped_chorus_fruit> % 50], <item:quark:dusky_myalite>, 5);

// Crush Scoria
<recipetype:create:crushing>.addRecipe("crush_scoria", [<item:minecraft:andesite> % 20, <item:minecraft:calcite> % 10, <item:ae2:silicon> % 50, <item:nourished_nether:basalt_ash_pile>*2 % 20], <item:create:scoria>, 5);

// Crush Scorchia
<recipetype:create:crushing>.addRecipe("crush_scorchia", [<item:minecraft:andesite>, <item:nourished_nether:basalt_ash_pile>*4 % 75], <item:create:scorchia>, 5);

// Crush Quartzite Sand into Sand & Quartz
<recipetype:create:crushing>.addRecipe("crush_quartz_sand", [<item:minecraft:sand>, <item:minecraft:quartz> % 40], <item:byg:quartzite_sand>, 5);

// Crush Galcite into Coal & Powdered Obsidian
<recipetype:create:crushing>.addRecipe("crush_galcite", [<item:minecraft:coal>*4, <item:create:powdered_obsidian> % 25], <item:geode:galcite>, 5);

// Crush Moss Carpets into Moss Paste
<recipetype:create:crushing>.addRecipe("crush_moss_carpet", [<item:quark:moss_paste> % 65], <item:minecraft:moss_carpet>, 1);

// Crushing Wheel version of my Planks > Sawdust recipe, and TE's Log > Sawdust one
<recipetype:create:crushing>.addRecipe("crush_planks", [<item:thermal:sawdust>*2], <tag:items:minecraft:planks>, 1);
<recipetype:create:crushing>.addRecipe("crush_logs", [<item:thermal:sawdust>*8], <tag:items:minecraft:logs>, 3);

// Crying Obsidian > Powdered Obsidian
<recipetype:create:crushing>.addRecipe("crying_obsidian_to_dust", [<item:create:powdered_obsidian>*2, <item:create:powdered_obsidian> % 50, <item:create:powdered_obsidian> % 25, <item:minecraft:obsidian> % 50], <item:minecraft:crying_obsidian>, 5);

// Crush Gilded Blackstone into Gold
<recipetype:create:crushing>.addRecipe("gilded_blackstone_crushing", [<item:create:crushed_gold_ore>, <item:minecraft:gold_nugget>*6 % 25, <item:minecraft:blackstone> % 85], <item:minecraft:gilded_blackstone>, 7);

// Crushing recipe for Gold Rings
<recipetype:create:crushing>.addRecipe("crush_gold_ring", [<item:create:crushed_gold_ore>*2 % 50, <item:minecraft:gold_nugget>*8 % 50], <item:additionaladditions:gold_ring>, 3);

// Crush Sweet Berries into Red & Green Dye
<recipetype:create:crushing>.addRecipe("crush_sweet_berries", [<item:minecraft:red_dye>*3, <item:minecraft:green_dye> % 15], <item:minecraft:sweet_berries>, 3);

// Crush Certus Quartz into Dust
<recipetype:create:crushing>.addRecipe("crush_certus_quartz", [<item:ae2:certus_quartz_dust>], <tag:items:ae2:all_certus_quartz>, 2);

// Crush Raw Quartz into Quartz
<recipetype:create:crushing>.addRecipe("crush_raw_quartz", [<item:minecraft:quartz>*2, <item:minecraft:quartz>*2 % 50], <item:byg:raw_quartz_block>, 5);

// Crush Slime Crystal Blocks into Slime Crystals
<recipetype:create:crushing>.addRecipe("crush_earthslime", [<item:tconstruct:earth_slime_crystal>*3, <item:tconstruct:earth_slime_crystal> % 50, <item:create:experience_nugget> % 50], <item:tconstruct:earth_slime_crystal_block>, 10);
<recipetype:create:crushing>.addRecipe("crush_skyslime", [<item:tconstruct:sky_slime_crystal>*3, <item:tconstruct:sky_slime_crystal> % 50, <item:create:experience_nugget> % 65], <item:tconstruct:sky_slime_crystal_block>, 10);
<recipetype:create:crushing>.addRecipe("crush_ichorslime", [<item:tconstruct:ichor_slime_crystal>*3, <item:tconstruct:ichor_slime_crystal> % 50, <item:create:experience_nugget> % 75], <item:tconstruct:ichor_slime_crystal_block>, 10);
<recipetype:create:crushing>.addRecipe("crush_enderslime", [<item:tconstruct:ender_slime_crystal>*3, <item:tconstruct:ender_slime_crystal> % 50, <item:create:experience_nugget>], <item:tconstruct:ender_slime_crystal_block>, 10);

# Crush Quark mores
// Crush Shale Coal Ore
<recipetype:create:crushing>.addRecipe("crush_shale_coal_ore", [<item:minecraft:coal>, <item:minecraft:coal> % 75, <item:create:experience_nugget> % 75, <item:quark:shale> % 12], <item:mores:shale_coal_ore>, 5);

// Crush Shale Copper Ore
<recipetype:create:crushing>.addRecipe("crush_shale_copper_ore", [<item:create:crushed_copper_ore>, <item:create:crushed_copper_ore> % 75, <item:create:experience_nugget> % 75, <item:quark:shale> % 12], <item:mores:shale_copper_ore>, 5);

// Crush Shale Iron Ore
<recipetype:create:crushing>.addRecipe("crush_shale_iron_ore", [<item:create:crushed_iron_ore>, <item:create:crushed_iron_ore> % 75, <item:create:experience_nugget> % 75, <item:quark:shale> % 12], <item:mores:shale_iron_ore>, 5);

// Crush Shale Gold Ore
<recipetype:create:crushing>.addRecipe("crush_shale_gold_ore", [<item:create:crushed_gold_ore>, <item:create:crushed_gold_ore> % 75, <item:create:experience_nugget> % 75, <item:quark:shale> % 12], <item:mores:shale_gold_ore>, 5);

// Crush Shale Lapis Ore
<recipetype:create:crushing>.addRecipe("crush_shale_lapis_ore", [<item:minecraft:lapis_lazuli>*10, <item:minecraft:lapis_lazuli> % 50, <item:create:experience_nugget> % 75, <item:quark:shale> % 12], <item:mores:shale_lapis_ore>, 5);

// Crush Shale Emerald Ore
<recipetype:create:crushing>.addRecipe("crush_shale_emerald_ore", [<item:minecraft:emerald>, <item:minecraft:emerald> % 75, <item:create:experience_nugget> % 75, <item:quark:shale> % 12], <item:mores:shale_emerald_ore>, 5);

// Crush Shale Diamond Ore
<recipetype:create:crushing>.addRecipe("crush_shale_diamond_ore", [<item:minecraft:diamond>, <item:minecraft:diamond> % 75, <item:create:experience_nugget> % 75, <item:quark:shale> % 12], <item:mores:shale_diamond_ore>, 5);



// Crush Jasper Coal Ore
<recipetype:create:crushing>.addRecipe("crush_jasper_coal_ore", [<item:minecraft:coal>, <item:minecraft:coal> % 75, <item:create:experience_nugget> % 75, <item:quark:jasper> % 12], <item:mores:jasper_coal_ore>, 5);

// Crush Jasper Copper Ore
<recipetype:create:crushing>.addRecipe("crush_jasper_copper_ore", [<item:create:crushed_copper_ore>, <item:create:crushed_copper_ore> % 75, <item:create:experience_nugget> % 75, <item:quark:jasper> % 12], <item:mores:jasper_copper_ore>, 5);

// Crush Jasper Iron Ore
<recipetype:create:crushing>.addRecipe("crush_jasper_iron_ore", [<item:create:crushed_iron_ore>, <item:create:crushed_iron_ore> % 75, <item:create:experience_nugget> % 75, <item:quark:jasper> % 12], <item:mores:jasper_iron_ore>, 5);

// Crush Jasper Gold Ore
<recipetype:create:crushing>.addRecipe("crush_jasper_gold_ore", [<item:create:crushed_gold_ore>, <item:create:crushed_gold_ore> % 75, <item:create:experience_nugget> % 75, <item:quark:jasper> % 12], <item:mores:jasper_gold_ore>, 5);

// Crush Jasper Lapis Ore
<recipetype:create:crushing>.addRecipe("crush_jasper_lapis_ore", [<item:minecraft:lapis_lazuli>*10, <item:minecraft:lapis_lazuli> % 50, <item:create:experience_nugget> % 75, <item:quark:jasper> % 12], <item:mores:jasper_lapis_ore>, 5);

// Crush Jasper Emerald Ore
<recipetype:create:crushing>.addRecipe("crush_jasper_emerald_ore", [<item:minecraft:emerald>, <item:minecraft:emerald> % 75, <item:create:experience_nugget> % 75, <item:quark:jasper> % 12], <item:mores:jasper_emerald_ore>, 5);

// Crush Jasper Diamond Ore
<recipetype:create:crushing>.addRecipe("crush_jasper_diamond_ore", [<item:minecraft:diamond>, <item:minecraft:diamond> % 75, <item:create:experience_nugget> % 75, <item:quark:jasper> % 12], <item:mores:jasper_diamond_ore>, 5);


// Crush Nether Iron Ore
<recipetype:create:crushing>.addRecipe("crush_nether_iron_ore", [<item:minecraft:iron_nugget>*18, <item:create:experience_nugget> % 75, <item:minecraft:netherrack> % 12], <item:nourished_nether:nether_iron_ore>, 5);


# Ore Crushing Recipes
# Chances are a bit higher than the Pulverizer
// Cobalt
<recipetype:create:crushing>.addRecipe("crush_raw_cobalt", [<item:kubejs:crushed_cobalt>, <item:kubejs:iridium_chunks> % 20, <item:create:experience_nugget>, <item:create:experience_nugget> % 25], <item:tconstruct:raw_cobalt>, 10);
<recipetype:create:crushing>.addRecipe("crush_raw_cobalt_block", [<item:kubejs:crushed_cobalt>*9, <item:kubejs:iridium_chunks>*2 % 25, <item:create:experience_nugget>*9 % 75, <item:create:experience_nugget> % 25], <item:tconstruct:raw_cobalt_block>, 10);
<recipetype:create:crushing>.addRecipe("crush_cobalt_ore", [<item:kubejs:crushed_cobalt>*2, <item:kubejs:iridium_chunks>*2 % 30, <item:create:experience_nugget>*2, <item:create:experience_nugget> % 50, <item:minecraft:netherrack> % 12], <item:tconstruct:cobalt_ore>, 10);

// Platinum
<recipetype:create:crushing>.addRecipe("crush_raw_platinum", [<item:kubejs:crushed_platinum>, <item:kubejs:iridium_chunks> % 30, <item:create:experience_nugget> % 90], <item:ob_core:platinum_raw>, 15);
<recipetype:create:crushing>.addRecipe("crush_raw_platinum_block", [<item:kubejs:crushed_platinum>*9, <item:kubejs:iridium_chunks>*2 % 35, <item:create:experience_nugget>*9 % 90], <item:ob_core:raw_platinum_block>, 15);
<recipetype:create:crushing>.addRecipe("crush_raw_platinum_ore", [<item:kubejs:crushed_platinum>*2, <item:kubejs:iridium_chunks>*2 % 40, <item:kubejs:crushed_platinum> % 75, <item:create:experience_nugget>*2 % 85, <item:minecraft:cobbled_deepslate> % 12], <item:ob_core:deepslate_platinum_ore>, 15);

// Pendorite
<recipetype:create:crushing>.addRecipe("crush_raw_pendorite", [<item:kubejs:crushed_pendorite>, <item:kubejs:iridium_chunks> % 35, <item:minecraft:netherite_scrap> % 35, <item:create:experience_nugget>*2 % 75], <item:byg:raw_pendorite>, 30);
<recipetype:create:crushing>.addRecipe("crush_raw_pendorite_block", [<item:kubejs:crushed_pendorite>*9, <item:kubejs:iridium_chunks>*2 % 40, <item:minecraft:netherite_scrap> % 25, <item:create:experience_nugget>*27 % 75], <item:byg:raw_pendorite_block>, 30);
<recipetype:create:crushing>.addRecipe("crush_pendorite_ore", [<item:kubejs:crushed_pendorite>*2, <item:kubejs:iridium_chunks>*2 % 45, <item:minecraft:netherite_scrap> % 50, <item:kubejs:crushed_pendorite> % 75, <item:create:experience_nugget>*3], <item:byg:pendorite_ore>, 30);

// Soulstone
<recipetype:create:crushing>.removeByName("malum:create/crushing/crush_raw_soulstone");
<recipetype:create:crushing>.removeByName("malum:create/crushing/crush_soulstone");
<recipetype:create:crushing>.removeByName("malum:create/crushing/crush_deepslate_soulstone");

<recipetype:create:crushing>.addRecipe("crush_raw_soulstone", [<item:malum:crushed_soulstone>, <item:create:experience_nugget> % 85], <item:malum:raw_soulstone>, 7);
<recipetype:create:crushing>.addRecipe("crush_raw_soulstone_block", [<item:malum:crushed_soulstone>*9, <item:create:experience_nugget>*9 % 85], <item:malum:block_of_raw_soulstone>, 7);
<recipetype:create:crushing>.addRecipe("crush_soulstone_ore", [<item:malum:crushed_soulstone>, <item:malum:crushed_soulstone> % 75, <item:create:experience_nugget> % 85, <item:minecraft:cobblestone> % 12], <item:malum:soulstone_ore>, 7);
<recipetype:create:crushing>.addRecipe("crush_deepslate_soulstone_ore", [<item:malum:crushed_soulstone>, <item:malum:crushed_soulstone> % 75, <item:create:experience_nugget> % 85, <item:minecraft:cobbled_deepslate> % 12], <item:malum:deepslate_soulstone_ore>, 7);

### Washing Recipes
# Pendorite has no nugget, rip
<recipetype:create:splashing>.addRecipe("wash_cobalt", [<item:tconstruct:cobalt_nugget>*9, <item:minecraft:iron_nugget> % 75], <item:kubejs:crushed_cobalt>);
<recipetype:create:splashing>.addRecipe("wash_pendorite", [<item:byg:raw_pendorite>, <item:kubejs:iridium_chunks> % 50], <item:kubejs:crushed_pendorite>);
<recipetype:create:splashing>.addRecipe("wash_platinum", [<item:ob_core:platinum_nugget>*9, <item:kubejs:iridium_chunks> % 25], <item:kubejs:crushed_platinum>);

###########################################################################
### Geode Block Recipes

// Crush Subzero Blocks into Shards
<recipetype:create:crushing>.addRecipe("crush_subzero_block", [<item:byg:subzero_crystal_shard>*3, <item:byg:subzero_crystal_shard> % 50], <item:byg:subzero_crystal_block>, 5);

// Crush Wrappist Blocks into Shards
<recipetype:create:crushing>.addRecipe("crush_wrappist_block", [<item:geode:wrappist_shard>*3, <item:geode:wrappist_shard> % 50], <item:geode:wrappist_block>, 5);

# Crush Corundum blocks into crystals
<recipetype:create:crushing>.addRecipe("crush_red_corundum", [<item:quark:red_corundum_cluster>*3, <item:quark:red_corundum_cluster> % 75], <item:quark:red_corundum>|<item:quark:waxed_red_corundum>, 10);

<recipetype:create:crushing>.addRecipe("crush_orange_corundum", [<item:quark:orange_corundum_cluster>*3, <item:quark:orange_corundum_cluster> % 75], <item:quark:orange_corundum>|<item:quark:waxed_orange_corundum>, 10);

<recipetype:create:crushing>.addRecipe("crush_yellow_corundum", [<item:quark:yellow_corundum_cluster>*3, <item:quark:yellow_corundum_cluster> % 75], <item:quark:yellow_corundum>|<item:quark:waxed_yellow_corundum>, 10);

<recipetype:create:crushing>.addRecipe("crush_green_corundum", [<item:quark:green_corundum_cluster>*3, <item:quark:green_corundum_cluster> % 75], <item:quark:green_corundum>|<item:quark:waxed_green_corundum>, 10);

<recipetype:create:crushing>.addRecipe("crush_blue_corundum", [<item:quark:blue_corundum_cluster>*3, <item:quark:blue_corundum_cluster> % 75], <item:quark:blue_corundum>|<item:quark:waxed_blue_corundum>, 10);

<recipetype:create:crushing>.addRecipe("crush_indigo_corundum", [<item:quark:indigo_corundum_cluster>*3, <item:quark:indigo_corundum_cluster> % 75], <item:quark:indigo_corundum>|<item:quark:waxed_indigo_corundum>, 10);

<recipetype:create:crushing>.addRecipe("crush_violet_corundum", [<item:quark:violet_corundum_cluster>*3, <item:quark:violet_corundum_cluster> % 75], <item:quark:violet_corundum>|<item:quark:waxed_violet_corundum>, 10);

<recipetype:create:crushing>.addRecipe("crush_white_corundum", [<item:quark:white_corundum_cluster>*3, <item:quark:white_corundum_cluster> % 75], <item:quark:white_corundum>|<item:quark:waxed_white_corundum>, 10);

<recipetype:create:crushing>.addRecipe("crush_black_corundum", [<item:quark:black_corundum_cluster>*3, <item:quark:black_corundum_cluster> % 75], <item:quark:black_corundum>|<item:quark:waxed_black_corundum>, 10);

print("create.zs loaded");