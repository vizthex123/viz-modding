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

// Restore the old Crescent Hammer recipe
mods.extendedcrafting.TableCrafting.addShaped("old_hammer", 1, <item:thermal:wrench>,
    [[<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>],
    [<item:minecraft:air>, <item:thermal:tin_ingot>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>]]);

// Alt Redstone Furnace recipe
// Lets you upgrade a Furnace and Smoker since I hate having duplicates
craftingTable.addShaped("redstone_furnace_smoker", <item:thermal:machine_furnace>,
    [[<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:air>],
    [<item:minecraft:smoker>, <item:thermal:machine_frame>, <tag:items:teoe:furnace>],
    [<tag:items:forge:gears/copper>, <item:thermal:rf_coil>, <tag:items:forge:gears/copper>]]);

// Make the Gearworking Die from any gears
// Not sure why this isn't the default...
craftingTable.remove(<item:thermal:press_gear_die>);
craftingTable.addShaped("gear_press", <item:thermal:press_gear_die>, 
    [[<item:minecraft:air>, <item:thermal:invar_plate>, <item:minecraft:air>],
    [<item:thermal:invar_plate>, <tag:items:forge:gears>, <item:thermal:invar_plate>],
    [<item:minecraft:air>, <item:thermal:invar_plate>, <item:minecraft:air>]]);

// Sawdust > Paper
craftingTable.addShaped("paper_sawdust", <item:minecraft:paper>, 
    [[<item:thermal:sawdust>, <item:thermal:sawdust>, <item:thermal:sawdust>]]);

// Add tag support to Tesseracts, and make them use the basic table
craftingTable.remove(<item:tesseract:tesseract>);
mods.extendedcrafting.TableCrafting.addShaped("tesseract", 1, <item:tesseract:tesseract>,
    [[<item:thermal:enderium_ingot>, <tag:items:thermal:glass/hardened>, <item:thermal:enderium_ingot>],
    [<tag:items:thermal:glass/hardened>, <item:thermal:machine_frame>, <tag:items:thermal:glass/hardened>],
    [<item:thermal:enderium_ingot>, <tag:items:thermal:glass/hardened>, <item:thermal:enderium_ingot>]]);



# Replace rubber recipes to add mod support
// Flowers
craftingTable.removeByName("thermal:rubber_from_dandelion");
craftingTable.addShaped("rubber_saplings", <item:thermal:rubber>,
    [[<tag:items:minecraft:saplings>, <tag:items:minecraft:saplings>, <tag:items:minecraft:saplings>],
    [<tag:items:minecraft:saplings>, <item:minecraft:water_bucket>, <tag:items:minecraft:saplings>],
    [<tag:items:minecraft:saplings>, <tag:items:minecraft:saplings>, <tag:items:minecraft:saplings>]]);

craftingTable.addShaped("rubber_flowers", <item:thermal:rubber>,
    [[<tag:items:minecraft:small_flowers>, <tag:items:minecraft:small_flowers>, <tag:items:minecraft:small_flowers>],
    [<tag:items:minecraft:small_flowers>, <item:minecraft:water_bucket>, <tag:items:minecraft:small_flowers>],
    [<tag:items:minecraft:small_flowers>, <tag:items:minecraft:small_flowers>, <tag:items:minecraft:small_flowers>]]);

	// Tall Flowers
craftingTable.addShaped("rubber_tall_flowers", <item:thermal:rubber>*3,
    [[<tag:items:minecraft:tall_flowers>, <tag:items:minecraft:tall_flowers>, <tag:items:minecraft:tall_flowers>],
    [<tag:items:minecraft:tall_flowers>, <item:minecraft:water_bucket>, <tag:items:minecraft:tall_flowers>],
    [<tag:items:minecraft:tall_flowers>, <tag:items:minecraft:tall_flowers>, <tag:items:minecraft:tall_flowers>]]);

// Vines
craftingTable.removeByName("thermal:rubber_from_vine");
craftingTable.addShaped("rubber_vines", <item:thermal:rubber>*2,
    [[<tag:items:teoe:vines>, <tag:items:teoe:vines>, <tag:items:teoe:vines>],
    [<tag:items:teoe:vines>, <item:minecraft:water_bucket>, <tag:items:teoe:vines>],
    [<tag:items:teoe:vines>, <tag:items:teoe:vines>, <tag:items:teoe:vines>]]);

// Slimy Vines
craftingTable.addShaped("rubber_slimy_vines", <item:thermal:rubber>*4,
    [[<tag:items:teoe:slimy_vines>, <tag:items:teoe:slimy_vines>, <tag:items:teoe:slimy_vines>],
    [<tag:items:teoe:slimy_vines>, <item:minecraft:water_bucket>, <tag:items:teoe:slimy_vines>],
    [<tag:items:teoe:slimy_vines>, <tag:items:teoe:slimy_vines>, <tag:items:teoe:slimy_vines>]]);

// Glow Lichen
craftingTable.addShaped("rubber_lichen", <item:thermal:rubber>*4,
    [[<item:minecraft:glow_lichen>, <item:minecraft:glow_lichen>, <item:minecraft:glow_lichen>],
    [<item:minecraft:glow_lichen>, <item:minecraft:water_bucket>, <item:minecraft:glow_lichen>],
    [<item:minecraft:glow_lichen>, <item:minecraft:glow_lichen>, <item:minecraft:glow_lichen>]]);



### Machine Recipes ###
/*
<recipetype:thermal:pulverizer>.addRecipe(String name, MCWeightedItemStack[] outputs, IIngredient ingredient, float experience, int energy);

<recipetype:thermal:smelter>.addRecipe(String name, MCWeightedItemStack[] outputs, IIngredient[] ingredients, float experience, int energy);

// <recipetype:thermal:furnace>.addRecipe(String name, IItemStack output, IIngredient ingredient, float experience, int energy);

<recipetype:thermal:chiller>.addRecipe(String name, IItemStack output, IIngredient ingredient, IFluidStack inputFluid, int energy);

<recipetype:thermal:refinery>.addRecipe(String name, MCWeightedItemStack itemOutput, IFluidStack[] fluidsOutput, IFluidStack inputFluid, int energy);

<recipetype:thermal:centrifuge>.addRecipe(String name, MCWeightedItemStack[] outputs, IFluidStack outputFluid, IIngredient ingredient, int energy);

<recipetype:thermal:crucible>.addRecipe(String name, IFluidStack output, IIngredient ingredient, int energy);
*/

// Redstone Furnace Sythian Stalks into Gold Nuggets
<recipetype:thermal:furnace>.addRecipe("smelt_stalk", <item:minecraft:gold_nugget>, <item:byg:sythian_stalk_block>, 1.0, 2000);

// Pulverize Quartize Sand into Sand & Quartz
<recipetype:thermal:pulverizer>.addRecipe("pulverize_quartz_sand", [<item:minecraft:sand>, <item:minecraft:quartz> % 35], <item:byg:quartzite_sand>, 0, 4000);

// Pulverize Galcite into Coal & Powdered Obsidian
<recipetype:thermal:pulverizer>.addRecipe("pulverize_galcite", [<item:minecraft:coal>*4, <item:create:powdered_obsidian> % 20], <item:geode:galcite>, 0, 4000);

// Pulverize Moss Carpets into Moss Paste
<recipetype:thermal:pulverizer>.addRecipe("pulverize_moss_carpet", [<item:quark:moss_paste> % 65], <item:minecraft:moss_carpet>, 0, 500);

// Melt down Fiery Blood/Tears into Fiery Essence
<recipetype:thermal:crucible>.addRecipe("melt_fiery", <fluid:twilightforest:fiery_essence>*250, <tag:items:twilightforest:fiery_vial>, 1000);

# Process Bumblezone's blocks & items into honey(combs)
<recipetype:thermal:centrifuge>.addRecipe("centrifuge_honey_crystal_shard", [<item:minecraft:sugar> % 50], <fluid:cofh_core:honey>*100, <item:the_bumblezone:honey_crystal_shards>, 4000);

<recipetype:thermal:centrifuge>.addRecipe("centrifuge_porous_honeycomb", [<item:minecraft:honeycomb>*2, <item:minecraft:honeycomb>*2 % 50], <fluid:cofh_core:honey>*50, <item:the_bumblezone:porous_honeycomb_block>, 4000);
<recipetype:thermal:centrifuge>.addRecipe("centrifuge_filled_porous_honeycomb", [<item:minecraft:honeycomb>*2, <item:minecraft:honeycomb>*2 % 50], <fluid:cofh_core:honey>*250, <item:the_bumblezone:filled_porous_honeycomb_block>, 4000);

<recipetype:thermal:centrifuge>.addRecipe("centrifuge_brood_blocks", [<item:minecraft:honeycomb>*2, <item:minecraft:honeycomb>*2 % 50, <item:minecraft:bee_spawn_egg> % 25, <item:the_bumblezone:honey_slime_spawn_egg> % 25], <fluid:cofh_core:honey>*250, <item:the_bumblezone:empty_honeycomb_brood_block>|<item:the_bumblezone:honeycomb_brood_block>, 4000);

<recipetype:thermal:crucible>.addRecipe("melt_honey_crystal", <fluid:cofh_core:honey>*250, <item:the_bumblezone:honey_crystal>, 2000);
<recipetype:thermal:crucible>.addRecipe("melt_honey_cocoon", <fluid:cofh_core:honey>*500, <item:the_bumblezone:honey_cocoon>, 2000);
<recipetype:thermal:crucible>.addRecipe("melt_sticky_honey_residue", <fluid:cofh_core:honey>*25, <item:the_bumblezone:sticky_honey_residue>, 1000);

// Process Frost Magma into Water & Magma Cream
<recipetype:thermal:centrifuge>.addRecipe("centrifuge_frost_magma", [<item:minecraft:magma_cream> % 50, <item:minecraft:magma_cream> % 25], <fluid:minecraft:water>*1000, <item:byg:frost_magma>, 4000);

// Smelt Illager Flesh into Leather
<recipetype:thermal:furnace>.addRecipe("leather_illager", <item:minecraft:leather>, <item:food_enhancements:illager_flesh>*2, 0, 4000);

// Fractionate Sugar Water into Water
<recipetype:thermal:refinery>.addRecipe("sugar_water_refining", <item:minecraft:sugar> % 50, [<fluid:minecraft:water>*1000], <fluid:the_bumblezone:sugar_water_still>*1000, 2000);

// Induction Smelt Quicklime to make Steel
<recipetype:thermal:smelter>.addRecipe("induction_smelt_quicklime", [<item:thermal:steel_ingot> % 15], [<item:minecraft:iron_ingot>|<item:thermal:iron_dust>, <tag:items:forge:limestone>, <item:kubejs:quicklime>*8], 0, 6400);

// Induction Smelt Ash into Charcoal
<recipetype:thermal:smelter>.addRecipe("smelt_basalt_ash", [<item:minecraft:charcoal> % 50], [<item:nourished_nether:basalt_ash>*4], 0, 6400);
<recipetype:thermal:smelter>.addRecipe("smelt_subzero_ash", [<item:minecraft:charcoal> % 40], [<item:byg:subzero_ash_block>*4], 0, 6400);

// Pulverize Cobalt
<recipetype:thermal:pulverizer>.addRecipe("pulverize_raw_cobalt", [<item:kubejs:crushed_cobalt>, <item:kubejs:iridium_chunks> % 15], <item:tconstruct:raw_cobalt>, 0, 4000);
# <recipetype:thermal:pulverizer>.addRecipe("pulverize_raw_cobalt_block", [<item:kubejs:crushed_cobalt>*9, <item:kubejs:iridium_chunks>*2 % 25], <item:tconstruct:raw_cobalt_block>, 0, 4000);
<recipetype:thermal:pulverizer>.addRecipe("pulverize_cobalt_ore", [<item:kubejs:crushed_cobalt>*2, <item:kubejs:iridium_chunks>*2 % 20, <item:minecraft:gravel> % 15], <item:tconstruct:cobalt_ore>, 0, 4000);

// Pulverize Platinum
<recipetype:thermal:pulverizer>.addRecipe("pulverize_raw_platinum", [<item:kubejs:crushed_platinum>, <item:kubejs:iridium_chunks> % 20], <item:ob_core:platinum_raw>, 0, 6000);
# <recipetype:thermal:pulverizer>.addRecipe("pulverize_raw_platinum_block", [<item:kubejs:crushed_platinum>*9, <item:kubejs:iridium_chunks>*2 % 30], <item:ob_core:raw_platinum_block>, 0, 6000);
<recipetype:thermal:pulverizer>.addRecipe("pulverize_platinum_ore", [<item:kubejs:crushed_platinum>*2, <item:kubejs:iridium_chunks>*2 % 30, <item:minecraft:gravel> % 20], <item:ob_core:deepslate_platinum_ore>, 0, 6000);

// Pulverize Pendorite
<recipetype:thermal:pulverizer>.addRecipe("pulverize_raw_pendorite", [<item:kubejs:crushed_pendorite>, <item:minecraft:netherite_scrap> % 25, <item:kubejs:iridium_chunks> % 35], <item:byg:raw_pendorite>, 0, 8000);
# <recipetype:thermal:pulverizer>.addRecipe("pulverize_raw_pendorite_block", [<item:kubejs:crushed_pendorite>*9, <item:minecraft:netherite_scrap>*2 % 30, <item:kubejs:iridium_chunks> % 40], <item:byg:raw_pendorite_block>, 0, 8000);
<recipetype:thermal:pulverizer>.addRecipe("pulverize_pendorite_ore", [<item:kubejs:crushed_pendorite>*2, <item:minecraft:netherite_scrap> % 30, <item:kubejs:iridium_chunks> % 40, <item:minecraft:gravel> % 20], <item:byg:pendorite_ore>, 0, 8000);

// Pulverize Soulstone
<recipetype:thermal:pulverizer>.addRecipe("pulverize_raw_soulstone", [<item:malum:crushed_soulstone>, <item:malum:crushed_soulstone> % 50], <item:malum:raw_soulstone>, 0, 3000);
# <recipetype:thermal:pulverizer>.addRecipe("pulverize_raw_soulstone_block", [<item:malum:crushed_soulstone>*9, <item:malum:crushed_soulstone>*2 % 30], <item:malum:block_of_raw_soulstone>, 0, 3000);
<recipetype:thermal:pulverizer>.addRecipe("pulverize_soulstone_ore", [<item:malum:crushed_soulstone>*2, <item:malum:crushed_soulstone> % 75, <item:minecraft:gravel> % 20], <item:malum:soulstone_ore>|<item:malum:deepslate_soulstone_ore>, 0, 3000);

// Pulverize Certus Quartz into Dust
<recipetype:thermal:pulverizer>.addRecipe("pulverize_certus_quartz", [<item:ae2:certus_quartz_dust>], <tag:items:ae2:all_certus_quartz>, 0, 2000);

// Pulverize Raw Quartz into Quartz
<recipetype:thermal:pulverizer>.addRecipe("pulverize_raw_quartz", [<item:minecraft:quartz>, <item:minecraft:quartz> % 50], <item:byg:raw_quartz_block>, 0, 4000);

// Turn Planks into Sawdust
// Not quite sure why this isn't done by default...
<recipetype:thermal:pulverizer>.addRecipe("sawdust_planks", [<item:thermal:sawdust>*2], <tag:items:minecraft:planks>, 0, 500);

// Pyrolyze BYG coals into coal coke
<recipetype:thermal:pyrolyzer>.addRecipe("coal_coke_anthracite", [<item:thermal:coal_coke>, <item:thermal:coal_coke> % 25, <item:thermal:tar> % 75], <fluid:thermal:heavy_oil>*250, <item:byg:anthracite>, 6000);
<recipetype:thermal:pyrolyzer>.addRecipe("coal_coke_lignite", [ <item:thermal:coal_coke>, <item:thermal:tar> % 45], <fluid:thermal:light_oil>*100, <item:byg:lignite>, 3000);

// Add tag support to the wool unpacking recipe
<recipetype:thermal:press>.removeRecipe([<item:minecraft:string>], [<fluid:minecraft:empty>]);
<recipetype:thermal:press>.addRecipe("unpack_wool", [<item:minecraft:string>], <fluid:minecraft:empty>, [<tag:items:minecraft:wool>, <item:thermal:press_unpacking_die>], 400);

# Add more recipes for Latex (from TE)
// Flower tags
<recipetype:thermal:press>.removeRecipe([<item:minecraft:dandelion>], [<fluid:thermal:latex>*50]);
<recipetype:thermal:press>.addRecipe("small_latex", [<item:minecraft:air>], <fluid:thermal:latex>*50, [<tag:items:minecraft:small_flowers>, <item:minecraft:air>], 400);
<recipetype:thermal:press>.addRecipe("tall_latex", [<item:minecraft:air>], <fluid:thermal:latex>*100, [<tag:items:minecraft:tall_flowers>, <item:minecraft:air>], 400);

// Glow Berries
<recipetype:thermal:press>.addRecipe("glow_berry_latex", [<item:minecraft:air>], <fluid:thermal:latex>*75, [<item:minecraft:glow_berries>, <item:minecraft:air>], 400);

// Strawberries
<recipetype:thermal:press>.addRecipe("strawberry_latex", [<item:minecraft:air>], <fluid:thermal:latex>*100, [<item:thermal:strawberry>, <item:minecraft:air>], 400);

// Tomatoes
<recipetype:thermal:press>.addRecipe("tomato_latex", [<item:minecraft:air>], <fluid:thermal:latex>*100, [<item:thermal:tomato>, <item:minecraft:air>], 400);



### Geode Block Recipes ###
// Pulverize Subzero Blocks into Shards
<recipetype:thermal:pulverizer>.addRecipe("pulverize_subzero_block", [<item:byg:subzero_crystal_shard>*2],<item:byg:subzero_crystal_block>, 0, 4000);

// Pulverize Wrappist Blocks into Shards
<recipetype:thermal:pulverizer>.addRecipe("pulverize_wrappist_block", [<item:geode:wrappist_shard>*2],<item:geode:wrappist_block>, 0, 4000);

// Pulverize Slime Crystal blocks into their crystal
<recipetype:thermal:pulverizer>.addRecipe("pulverize_earthslime", [<item:tconstruct:earth_slime_crystal>*2], <item:tconstruct:earth_slime_crystal_block>, 0.5, 4000);
<recipetype:thermal:pulverizer>.addRecipe("pulverize_skyslime", [<item:tconstruct:sky_slime_crystal>*2], <item:tconstruct:sky_slime_crystal_block>, 1.0, 4000);
<recipetype:thermal:pulverizer>.addRecipe("pulverize_ichorslime", [<item:tconstruct:ichor_slime_crystal>*2], <item:tconstruct:ichor_slime_crystal_block>, 2.5, 4000);
<recipetype:thermal:pulverizer>.addRecipe("pulverize_enderslime", [<item:tconstruct:ender_slime_crystal>*2], <item:tconstruct:ender_slime_crystal_block>, 5.0, 4000);

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



### Add Catalysts to various machines
/*
<recipetype:thermal:pulverizer_catalyst>.addCatalyst(String name, IIngredient ingredient, float primaryMod, float secondaryMod, float energyMod, float minChance, float useChance);

<recipetype:thermal:smelter_catalyst>.addCatalyst(String name, IIngredient ingredient, float primaryMod, float secondaryMod, float energyMod, float minChance, float useChance);

<recipetype:thermal:insolator_catalyst>.addCatalyst(String name, IIngredient ingredient, float primaryMod, float secondaryMod, float energyMod, float minChance, float useChance);

Min chance is the minium chance to trigger the catalyst (I guess?)
*/

# Pulverizer
<recipetype:thermal:pulverizer_catalyst>.addCatalyst("prismarine_shard", <item:minecraft:prismarine_shard>, 1.45, 1.65, 1.3, 0.4, 0.4);
<recipetype:thermal:pulverizer_catalyst>.addCatalyst("prismarine_crystal", <item:minecraft:prismarine_crystals>, 1.35, 2.0, 1.5, 0.5, 0.25);
<recipetype:thermal:pulverizer_catalyst>.addCatalyst("amethyst_catalyst", <item:minecraft:amethyst_shard>, 1.0, 1.0, 0.25, 0.75, 0.85);

<recipetype:thermal:pulverizer_catalyst>.addCatalyst("quartz_dust", <item:thermal:quartz_dust>, 1.5, 1.75, 1.35, 0.35, 0.3);
<recipetype:thermal:pulverizer_catalyst>.addCatalyst("certus_quartz_dust", <item:ae2:certus_quartz_dust>, 1.35, 1.5, 1.25, 0.5, 0.3);

<recipetype:thermal:pulverizer_catalyst>.addCatalyst("wrappist", <item:geode:wrappist_shard>, 2.0, 1.5, 0.7, 0.5, 0.7);

// Idk the min chance for Cinnabar, so let's hope this is close enough
<recipetype:thermal:pulverizer_catalyst>.addCatalyst("cinnabar_dust", <item:thermal:cinnabar_dust>, 3.0, 3.5, 2.75, 0.5, 0.7);

<recipetype:thermal:pulverizer_catalyst>.addCatalyst("corundum", <tag:items:teoe:corundum>, 1.25, 1.0, 0.9, 0.5, 0.65);
/*
<recipetype:thermal:pulverizer_catalyst>.addCatalyst("corundum", <item:quark:red_corundum_cluster>|<item:quark:orange_corundum_cluster>|<item:quark:yellow_corundum_cluster>|<item:quark:green_corundum_cluster>|<item:quark:blue_corundum_cluster>|<item:quark:indigo_corundum_cluster>|<item:quark:violet_corundum_cluster>|<item:quark:white_corundum_cluster>|<item:quark:black_corundum_cluster>, 1.25, 1.0, 0.85, 0.5, 0.65);
*/

# Induction Smelter
<recipetype:thermal:smelter_catalyst>.addCatalyst("sky_stone_dust", <item:ae2:sky_dust>, 1.35, 0.9, 0.75, 1.0, 0.5);
<recipetype:thermal:smelter_catalyst>.addCatalyst("magic_dust", <tag:items:teoe:magic_dust>, 3.0, 1.5, 2.25, 0.8, 0.25);



# Phytogenic Insolator
<recipetype:thermal:insolator_catalyst>.addCatalyst("ash", <item:byg:subzero_ash_block>|<item:nourished_nether:basalt_ash>, 1.0, 1.15, 0.35, 0.75, 0.55);
<recipetype:thermal:insolator_catalyst>.addCatalyst("hex_ash", <item:malum:hex_ash>, 1.25, 1.0, 0.35, 0.75, 0.5);
<recipetype:thermal:insolator_catalyst>.addCatalyst("sky_dust", <item:ae2:sky_dust>, 0.9, 1.0, 0.25, 1.0, 0.85);
<recipetype:thermal:insolator_catalyst>.addCatalyst("sawdust", <item:kubejs:sawdust_clump>, 1.1, 1.15, 0.85, 0.5, 0.7);
<recipetype:thermal:insolator_catalyst>.addCatalyst("pollen", <item:byg:pollen_dust>|<item:the_bumblezone:pollen_puff>, 1.5, 1.25, 0.65, 0.75, 0.6);

print("thermal.zs loaded");