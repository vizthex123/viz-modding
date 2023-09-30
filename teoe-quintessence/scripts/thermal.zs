# Adds recipes to Thermal "Series" stuff

import crafttweaker.api.tag.MCTag;

print("thermal.zs loading...");
/*
craftingTable.addShaped("name", <item:output>,
    [[<item>, <item>, <item>],
    [<item>, <item>, <item>],
    [<item>, <item>, <item>]]);
craftingTable.remove(<item>);
craftingTable.removeByName("name");
*/

val empty = <item:minecraft:air>;
val iridium = <item:kubejs:iridium_chunks>;
val crushed_zinc = <item:create:crushed_raw_zinc>;

// Restore the old Crescent Hammer recipe
mods.extendedcrafting.TableCrafting.addShaped("old_hammer", 1, <item:thermal:wrench>,
    [[<item:minecraft:iron_ingot>, empty, <item:minecraft:iron_ingot>],
    [empty, <item:thermal:tin_ingot>, empty],
    [empty, <item:minecraft:iron_ingot>, empty]]);

// Alt Redstone Furnace recipe
// Lets you upgrade a Furnace and Smoker since I hate having duplicates
craftingTable.addShaped("redstone_furnace_smoker", <item:thermal:machine_furnace>,
    [[empty, <item:minecraft:redstone>, empty],
    [<item:minecraft:smoker>, <item:thermal:machine_frame>, <tag:items:teoe:furnace>],
    [<tag:items:forge:gears/copper>, <item:thermal:rf_coil>, <tag:items:forge:gears/copper>]]);

// Make the Gearworking Die from any gears
// Not sure why this isn't the default...
craftingTable.remove(<item:thermal:press_gear_die>);
craftingTable.addShaped("gear_press", <item:thermal:press_gear_die>, 
    [[empty, <item:thermal:invar_plate>, empty],
    [<item:thermal:invar_plate>, <tag:items:forge:gears>, <item:thermal:invar_plate>],
    [empty, <item:thermal:invar_plate>, empty]]);


# Replace rubber recipes to add tag support
val water = <item:minecraft:water_bucket>;

// Saplings
craftingTable.removeByName("thermal:rubber_from_dandelion");
craftingTable.addShaped("rubber_saplings", <item:thermal:rubber>,
    [[<tag:items:minecraft:saplings>, <tag:items:minecraft:saplings>, <tag:items:minecraft:saplings>],
    [<tag:items:minecraft:saplings>, water, <tag:items:minecraft:saplings>],
    [<tag:items:minecraft:saplings>, <tag:items:minecraft:saplings>, <tag:items:minecraft:saplings>]]);

// Flowers
craftingTable.addShaped("rubber_flowers", <item:thermal:rubber>,
    [[<tag:items:minecraft:small_flowers>, <tag:items:minecraft:small_flowers>, <tag:items:minecraft:small_flowers>],
    [<tag:items:minecraft:small_flowers>, water, <tag:items:minecraft:small_flowers>],
    [<tag:items:minecraft:small_flowers>, <tag:items:minecraft:small_flowers>, <tag:items:minecraft:small_flowers>]]);

	// Tall Flowers
craftingTable.addShaped("rubber_tall_flowers", <item:thermal:rubber>*3,
    [[<tag:items:minecraft:tall_flowers>, <tag:items:minecraft:tall_flowers>, <tag:items:minecraft:tall_flowers>],
    [<tag:items:minecraft:tall_flowers>, water, <tag:items:minecraft:tall_flowers>],
    [<tag:items:minecraft:tall_flowers>, <tag:items:minecraft:tall_flowers>, <tag:items:minecraft:tall_flowers>]]);

// Vines
craftingTable.removeByName("thermal:rubber_from_vine");
craftingTable.addShaped("rubber_vines", <item:thermal:rubber>*2,
    [[<tag:items:teoe:vines>, <tag:items:teoe:vines>, <tag:items:teoe:vines>],
    [<tag:items:teoe:vines>, water, <tag:items:teoe:vines>],
    [<tag:items:teoe:vines>, <tag:items:teoe:vines>, <tag:items:teoe:vines>]]);

// Slimy Vines
craftingTable.addShaped("rubber_slimy_vines", <item:thermal:rubber>*4,
    [[<tag:items:teoe:slimy_vines>, <tag:items:teoe:slimy_vines>, <tag:items:teoe:slimy_vines>],
    [<tag:items:teoe:slimy_vines>, water, <tag:items:teoe:slimy_vines>],
    [<tag:items:teoe:slimy_vines>, <tag:items:teoe:slimy_vines>, <tag:items:teoe:slimy_vines>]]);

// Glow Lichen
craftingTable.addShaped("rubber_lichen", <item:thermal:rubber>*4,
    [[<item:minecraft:glow_lichen>, <item:minecraft:glow_lichen>, <item:minecraft:glow_lichen>],
    [<item:minecraft:glow_lichen>, water, <item:minecraft:glow_lichen>],
    [<item:minecraft:glow_lichen>, <item:minecraft:glow_lichen>, <item:minecraft:glow_lichen>]]);



### Machine Recipes ###
/*
<recipetype:thermal:pulverizer>.addRecipe(String name, MCWeightedItemStack[] outputs, IIngredient ingredient, float experience, int energy);

<recipetype:thermal:smelter>.addRecipe(String name, MCWeightedItemStack[] outputs, IIngredient[] ingredients, float experience, int energy);

<recipetype:thermal:furnace>.addRecipe(String name, IItemStack output, IIngredient ingredient, float experience, int energy);

<recipetype:thermal:chiller>.addRecipe(String name, IItemStack output, IIngredient ingredient, IFluidStack inputFluid, int energy);

<recipetype:thermal:refinery>.addRecipe(String name, MCWeightedItemStack itemOutput, IFluidStack[] fluidsOutput, IFluidStack inputFluid, int energy);

<recipetype:thermal:centrifuge>.addRecipe(String name, MCWeightedItemStack[] outputs, IFluidStack outputFluid, IIngredient ingredient, int energy);

<recipetype:thermal:crucible>.addRecipe(String name, IFluidStack output, IIngredient ingredient, int energy);
*/

// Redstone Furnace Sythian Stalks into Gold Nuggets
<recipetype:thermal:furnace>.addRecipe("smelt_stalk", <item:minecraft:gold_nugget>, <item:byg:sythian_stalk_block>, 1.0, 2000);

// Pulverize Quartize Sand into Sand & Quartz
<recipetype:thermal:pulverizer>.addRecipe("pulverize_quartz_sand", [<item:minecraft:sand>, <item:minecraft:quartz> % 35], <item:byg:quartzite_sand>, 0, 4000);

// Pulverize Moss Carpets into Moss Paste
<recipetype:thermal:pulverizer>.addRecipe("pulverize_moss_carpet", [<item:quark:moss_paste> % 65], <item:minecraft:moss_carpet>, 0, 500);

// Melt down Fiery Blood/Tears into Fiery Essence
<recipetype:thermal:crucible>.addRecipe("melt_fiery", <fluid:twilightforest:fiery_essence>*250, <tag:items:twilightforest:fiery_vial>, 1000);

// Process Frost Magma into Water & Magma Cream
<recipetype:thermal:centrifuge>.addRecipe("centrifuge_frost_magma", [<item:minecraft:magma_cream> % 50, <item:minecraft:magma_cream> % 25], <fluid:minecraft:water>*1000, <item:byg:frost_magma>, 4000);

// Induction Smelt Ash into Charcoal
<recipetype:thermal:smelter>.addRecipe("smelt_subzero_ash", [<item:minecraft:charcoal> % 40, <item:malum:arcane_charcoal> % 5], [<item:byg:subzero_ash_block>*4], 0, 6400);
<recipetype:thermal:smelter>.addRecipe("smelt_ash_lump", [<item:minecraft:charcoal> % 50], [<item:nourished_nether:ash_lump>*4], 0, 6400);

// Use Iridium to improve Platinum production
<recipetype:thermal:smelter>.addRecipe("platinum_boost", [<item:ob_core:platinum_ingot>*2, <item:ob_core:platinum_ingot> % 50], [<item:kubejs:crushed_platinum>, iridium], 0, 4000);

<recipetype:thermal:smelter>.addRecipe("platinum_ore_boost", [<item:ob_core:platinum_ingot>*2, <item:ob_core:platinum_ingot> % 55, <item:minecraft:deepslate> % 15], [<item:ob_core:deepslate_platinum_ore>, iridium], 0, 6000);

### Ore Pulverizing Recipes ###

// Pulverize Zinc
<recipetype:thermal:pulverizer>.addRecipe("pulverize_raw_zinc", [crushed_zinc, <item:create:experience_nugget> % 50], <item:create:raw_zinc>, 0, 3000);
<recipetype:thermal:pulverizer>.addRecipe("pulverize_zinc_ore", [crushed_zinc*2, <item:create:experience_nugget> % 60, <item:minecraft:gravel> % 20], <tag:items:forge:ores/zinc>, 0, 3000);

// Pulverize Cobalt
<recipetype:thermal:pulverizer>.addRecipe("pulverize_raw_cobalt", [<item:kubejs:crushed_cobalt>, iridium % 15], <item:tconstruct:raw_cobalt>, 0, 4000);
<recipetype:thermal:pulverizer>.addRecipe("pulverize_cobalt_ore", [<item:kubejs:crushed_cobalt>*2, iridium*2 % 20, <item:minecraft:gravel> % 15], <item:tconstruct:cobalt_ore>, 0, 4000);

// Pulverize Platinum
<recipetype:thermal:pulverizer>.addRecipe("pulverize_raw_platinum", [<item:kubejs:crushed_platinum>, iridium % 20], <item:ob_core:platinum_raw>, 0, 6000);
<recipetype:thermal:pulverizer>.addRecipe("pulverize_platinum_ore", [<item:kubejs:crushed_platinum>*2, iridium*2 % 30, <item:minecraft:gravel> % 20], <item:ob_core:deepslate_platinum_ore>, 0, 6000);

// Pulverize Pendorite
<recipetype:thermal:pulverizer>.addRecipe("pulverize_raw_pendorite", [<item:kubejs:crushed_pendorite>, <item:minecraft:netherite_scrap> % 25, iridium % 35], <item:byg:raw_pendorite>, 0, 8000);
<recipetype:thermal:pulverizer>.addRecipe("pulverize_pendorite_ore", [<item:kubejs:crushed_pendorite>*2, <item:minecraft:netherite_scrap> % 30, iridium % 40, <item:minecraft:gravel> % 20], <item:byg:pendorite_ore>, 0, 8000);

// Pulverize Soulstone
<recipetype:thermal:pulverizer>.addRecipe("pulverize_raw_soulstone", [<item:malum:crushed_soulstone>, <item:create:experience_nugget> % 65], <item:malum:raw_soulstone>, 0, 3000);
<recipetype:thermal:pulverizer>.addRecipe("pulverize_soulstone_ore", [<item:malum:crushed_soulstone>*2, <item:create:experience_nugget> % 75, <item:minecraft:gravel> % 20], <item:malum:soulstone_ore>|<item:malum:deepslate_soulstone_ore>, 0, 3000);

// Pulverize Certus Quartz into Dust
<recipetype:thermal:pulverizer>.addRecipe("pulverize_certus_quartz", [<item:ae2:certus_quartz_dust>], <tag:items:ae2:all_certus_quartz>, 0, 2000);

// Pulverize Raw Quartz into Quartz
<recipetype:thermal:pulverizer>.addRecipe("pulverize_raw_quartz", [<item:minecraft:quartz>, <item:minecraft:quartz> % 50], <item:byg:raw_quartz_block>, 0, 4000);

// Turn Planks into Sawdust
// Not quite sure why this isn't done by default...
<recipetype:thermal:pulverizer>.addRecipe("sawdust_planks", [<item:thermal:sawdust>*2], <tag:items:minecraft:planks>, 0, 500);

// Pyrolyze Compressed Sawdust into Charcoal
<recipetype:thermal:pyrolyzer>.addRecipe("charcoal_compressed_sawdust", [<item:minecraft:charcoal>], <fluid:thermal:creosote>*25, <item:kubejs:compressed_sawdust>, 1000);

// Pyrolyze BYG coals into coal coke
<recipetype:thermal:pyrolyzer>.addRecipe("coal_coke_anthracite", [<item:thermal:coal_coke>, <item:thermal:coal_coke> % 25, <item:thermal:tar> % 75], <fluid:thermal:heavy_oil>*250, <item:byg:anthracite>, 6000);
<recipetype:thermal:pyrolyzer>.addRecipe("coal_coke_lignite", [ <item:thermal:coal_coke>, <item:thermal:tar> % 45], <fluid:thermal:light_oil>*100, <item:byg:lignite>, 3000);

// Add tag support to the wool unpacking recipe
<recipetype:thermal:press>.removeRecipe([<item:minecraft:string>], [<fluid:minecraft:empty>]);
<recipetype:thermal:press>.addRecipe("unpack_wool", [<item:minecraft:string>], <fluid:minecraft:empty>, [<tag:items:minecraft:wool>, <item:thermal:press_unpacking_die>], 400);

# Add more recipes for Latex (from TE)
// Flower tags
# <recipetype:thermal:press>.removeByRecipeName("thermal:machines/press/press_dandelion_to_latex");
# <recipetype:thermal:press>.removeRecipe(<item:minecraft:dandelion>);
<recipetype:thermal:press>.addRecipe("small_latex", [empty], <fluid:thermal:latex>*50, [<tag:items:minecraft:small_flowers>, empty], 400);
<recipetype:thermal:press>.addRecipe("tall_latex", [empty], <fluid:thermal:latex>*100, [<tag:items:minecraft:tall_flowers>, empty], 400);

// Glow Berries
<recipetype:thermal:press>.addRecipe("glow_berry_latex", [empty], <fluid:thermal:latex>*75, [<item:minecraft:glow_berries>, empty], 400);

// Strawberries
<recipetype:thermal:press>.addRecipe("strawberry_latex", [empty], <fluid:thermal:latex>*25, [<item:thermal:strawberry>, empty], 400);

// Tomatoes
<recipetype:thermal:press>.addRecipe("tomato_latex", [empty], <fluid:thermal:latex>*25, [<item:thermal:tomato>, empty], 400);



### Geode Block Recipes ###
// Pulverize Subzero Blocks into Shards
<recipetype:thermal:pulverizer>.addRecipe("pulverize_subzero_block", [<item:byg:subzero_crystal_shard>*2],<item:byg:subzero_crystal_block>, 0, 4000);

// Pulverize Slime Crystal blocks into their crystal
<recipetype:thermal:pulverizer>.addRecipe("pulverize_earthslime", [<item:tconstruct:earth_slime_crystal>*2, <item:malum:natural_quartz> % 50], <item:tconstruct:earth_slime_crystal_block>, 0.5, 4000);
<recipetype:thermal:pulverizer>.addRecipe("pulverize_skyslime", [<item:tconstruct:sky_slime_crystal>*2, <item:ae2:sky_dust> % 50], <item:tconstruct:sky_slime_crystal_block>, 1.0, 4000);
<recipetype:thermal:pulverizer>.addRecipe("pulverize_ichorslime", [<item:tconstruct:ichor_slime_crystal>*2, <item:create:cinder_flour> % 50], <item:tconstruct:ichor_slime_crystal_block>, 2.5, 4000);
<recipetype:thermal:pulverizer>.addRecipe("pulverize_enderslime", [<item:tconstruct:ender_slime_crystal>*2, <item:thermal:ender_pearl_dust> % 50], <item:tconstruct:ender_slime_crystal_block>, 5.0, 4000);

# Pulverize Corundum blocks into crystals
<recipetype:thermal:pulverizer>.addRecipe("pulverize_red_corundum", [<item:quark:red_corundum_cluster>*2, <item:quark:red_corundum_cluster> % 50], <item:quark:red_corundum>|<item:quark:waxed_red_corundum>, 0, 4000);

<recipetype:thermal:pulverizer>.addRecipe("pulverize_orange_corundum", [<item:quark:orange_corundum_cluster>*2, <item:quark:orange_corundum_cluster> % 50], <item:quark:orange_corundum>|<item:quark:waxed_orange_corundum>, 0, 4000);

<recipetype:thermal:pulverizer>.addRecipe("pulverize_yellow_corundum", [<item:quark:yellow_corundum_cluster>*2, <item:quark:yellow_corundum_cluster> % 50], <item:quark:yellow_corundum>|<item:quark:waxed_yellow_corundum>, 0, 4000);

<recipetype:thermal:pulverizer>.addRecipe("pulverize_green_corundum", [<item:quark:green_corundum_cluster>*2, <item:quark:green_corundum_cluster> % 50], <item:quark:green_corundum>|<item:quark:waxed_green_corundum>, 0, 4000);

<recipetype:thermal:pulverizer>.addRecipe("pulverize_blue_corundum", [<item:quark:blue_corundum_cluster>*2, <item:quark:blue_corundum_cluster> % 50], <item:quark:blue_corundum>|<item:quark:waxed_blue_corundum>, 0, 4000);

<recipetype:thermal:pulverizer>.addRecipe("pulverize_indigo_corundum", [<item:quark:indigo_corundum_cluster>*2, <item:quark:indigo_corundum_cluster> % 50], <item:quark:indigo_corundum>|<item:quark:waxed_indigo_corundum>, 0, 4000);

<recipetype:thermal:pulverizer>.addRecipe("pulverize_violet_corundum", [<item:quark:violet_corundum_cluster>*2, <item:quark:violet_corundum_cluster> % 50], <item:quark:violet_corundum>|<item:quark:waxed_violet_corundum>, 0, 4000);

<recipetype:thermal:pulverizer>.addRecipe("pulverize_white_corundum", [<item:quark:white_corundum_cluster>*2, <item:quark:white_corundum_cluster> % 50], <item:quark:white_corundum>|<item:quark:waxed_white_corundum>, 0, 4000);

<recipetype:thermal:pulverizer>.addRecipe("pulverize_black_corundum", [<item:quark:black_corundum_cluster>*2, <item:quark:black_corundum_cluster> % 50], <item:quark:black_corundum>|<item:quark:waxed_black_corundum>, 0, 4000);

print("thermal.zs loaded");