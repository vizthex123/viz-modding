# Adds recipes to Thermal "Series'" stuff

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

// Restore the old Cresent Hammer recipe
craftingTable.remove(<item:thermal:wrench>);
craftingTable.addShaped("crescent_hammer", <item:thermal:wrench>,
    [[<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>],
    [<item:minecraft:air>, <item:thermal:tin_ingot>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>]]);

// Alt Redstone Furnace recipe
craftingTable.addShaped("redstone_furnace_smoker", <item:thermal:machine_furnace>,
    [[<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:air>],
    [<item:minecraft:smoker>, <item:thermal:machine_frame>|<item:rftoolsbase:machine_frame>, <tag:items:teoe:furnace>],
    [<tag:items:forge:gears/copper>, <item:thermal:rf_coil>, <tag:items:forge:gears/copper>]]);

# Re-does the recipes for Rubber
// Flowers
craftingTable.removeByName("thermal:rubber_from_dandelion");
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
craftingTable.addShaped("rubber_glow", <item:thermal:rubber>*4,
    [[<item:minecraft:glow_lichen>, <item:minecraft:glow_lichen>, <item:minecraft:glow_lichen>],
    [<item:minecraft:glow_lichen>, <item:minecraft:water_bucket>, <item:minecraft:glow_lichen>],
    [<item:minecraft:glow_lichen>, <item:minecraft:glow_lichen>, <item:minecraft:glow_lichen>]]);

// Make the Gearworking Die from any gears
// Not sure why this isn't the default tbh...
craftingTable.remove(<item:thermal:press_gear_die>);
craftingTable.addShaped("gear_press", <item:thermal:press_gear_die>, 
    [[<item:minecraft:air>, <item:thermal:invar_plate>, <item:minecraft:air>],
    [<item:thermal:invar_plate>, <tag:items:forge:gears>, <item:thermal:invar_plate>],
    [<item:minecraft:air>, <item:thermal:invar_plate>, <item:minecraft:air>]]);

// Sawdust > Paper
craftingTable.addShaped("paper_sawdust", <item:minecraft:paper>, 
    [[<item:thermal:sawdust>, <item:thermal:sawdust>, <item:thermal:sawdust>]]);



### Machine Recipes ###
/*
<recipetype:thermal:pulverizer>.addRecipe(String name, MCWeightedItemStack[] outputs, IIngredient ingredient, float experience, int energy);

<recipetype:thermal:chiller>.addRecipe(String name, IItemStack output, IIngredient ingredient, IFluidStack inputFluid, int energy);

<recipetype:thermal:refinery>.addRecipe(String name, MCWeightedItemStack itemOutput, IFluidStack[] fluidsOutput, IFluidStack inputFluid, int energy);

<recipetype:thermal:smelter>.addRecipe(String name, MCWeightedItemStack[] outputs, IIngredient[] ingredients, float experience, int energy);
*/

// Process Limestone into Bones (Fossils)
// TODO: Replace with Lime when ContentTweaker updates
<recipetype:thermal:pulverizer>.addRecipe("pulverize_limestone", [<item:minecraft:bone> % 50], <item:quark:limestone>|<item:create:limestone>, 0.0, 4000);

// Pulverize Certus Quartz into Dust
<recipetype:thermal:pulverizer>.addRecipe("certus_dust", [<item:ae2:certus_quartz_dust> % 100], <item:ae2:certus_quartz_crystal>|<item:ae2:charged_certus_quartz_crystal>, 0, 2000);

// Fractionate Sugar Water into Water
<recipetype:thermal:refinery>.addRecipe("sugar_water_refining", <item:minecraft:sugar>%50, [<fluid:minecraft:water>*1000], <fluid:the_bumblezone:sugar_water_still>, 2000);

// Turn Planks into Sawdust
// Not quite sure why this isn't done by default...
<recipetype:thermal:pulverizer>.addRecipe("sawdust_planks", [<item:thermal:sawdust>*2 % 100], <tag:items:minecraft:planks>, 0, 1000);

// Pyrolyze BYG coals into coal coke
<recipetype:thermal:pyrolyzer>.addRecipe("coal_coke_anthracite", [<item:thermal:coal_coke> % 100, <item:thermal:coal_coke> % 25, <item:thermal:tar> % 75], <fluid:thermal:heavy_oil>*250, <item:byg:anthracite>, 6000);
<recipetype:thermal:pyrolyzer>.addRecipe("coal_coke_lignite", [ <item:thermal:coal_coke> % 100, <item:thermal:tar> % 45], <fluid:thermal:light_oil>*100, <item:byg:lignite>, 3000);

/*
# Craft Rods in the Blast Chiller
// Copper
<recipetype:thermal:chiller>.addRecipe("copper_rod", <item:createaddition:copper_rod>, <item:thermal:chiller_rod_cast>, <fluid:tconstruct:molten_copper>*180, 3200);

// Iron
<recipetype:thermal:chiller>.addRecipe("iron_rod", <item:createaddition:iron_rod>, <item:thermal:chiller_rod_cast>, <fluid:tconstruct:molten_iron>*180, 3200);

// Gold
<recipetype:thermal:chiller>.addRecipe("gold_rod", <item:createaddition:gold_rod>, <item:thermal:chiller_rod_cast>, <fluid:tconstruct:molten_gold>*180, 3200);

// Brass
<recipetype:thermal:chiller>.addRecipe("brass_rod", <item:createaddition:brass_rod>, <item:thermal:chiller_rod_cast>, <fluid:tconstruct:molten_brass>*180, 3200);
*/


# Pulverize Corundum blocks into crystals
<recipetype:thermal:pulverizer>.addRecipe("pulverize_red_corundum", [<item:quark:red_corundum_cluster>*2 % 100, <item:quark:red_corundum_cluster> % 50], <item:quark:red_corundum>|<item:quark:waxed_red_corundum>, 0, 4000);

<recipetype:thermal:pulverizer>.addRecipe("pulverize_orange_corundum", [<item:quark:orange_corundum_cluster>*2 % 100, <item:quark:orange_corundum_cluster> % 50], <item:quark:orange_corundum>|<item:quark:waxed_orange_corundum>, 0, 4000);

<recipetype:thermal:pulverizer>.addRecipe("pulverize_yellow_corundum", [<item:quark:yellow_corundum_cluster>*2 % 100, <item:quark:yellow_corundum_cluster> % 50], <item:quark:yellow_corundum>|<item:quark:waxed_yellow_corundum>, 0, 4000);

<recipetype:thermal:pulverizer>.addRecipe("pulverize_green_corundum", [<item:quark:green_corundum_cluster>*2 % 100, <item:quark:green_corundum_cluster> % 50], <item:quark:green_corundum>|<item:quark:waxed_green_corundum>, 0, 4000);

<recipetype:thermal:pulverizer>.addRecipe("pulverize_blue_corundum", [<item:quark:blue_corundum_cluster>*2 % 100, <item:quark:blue_corundum_cluster> % 50], <item:quark:blue_corundum>|<item:quark:waxed_blue_corundum>, 0, 4000);

<recipetype:thermal:pulverizer>.addRecipe("pulverize_indigo_corundum", [<item:quark:indigo_corundum_cluster>*2 % 100, <item:quark:indigo_corundum_cluster> % 50], <item:quark:indigo_corundum>|<item:quark:waxed_indigo_corundum>, 0, 4000);

<recipetype:thermal:pulverizer>.addRecipe("pulverize_violet_corundum", [<item:quark:violet_corundum_cluster>*2 % 100, <item:quark:violet_corundum_cluster> % 50], <item:quark:violet_corundum>|<item:quark:waxed_violet_corundum>, 0, 4000);

<recipetype:thermal:pulverizer>.addRecipe("pulverize_white_corundum", [<item:quark:white_corundum_cluster>*2 % 100, <item:quark:white_corundum_cluster> % 50], <item:quark:white_corundum>|<item:quark:waxed_white_corundum>, 0, 4000);

<recipetype:thermal:pulverizer>.addRecipe("pulverize_black_corundum", [<item:quark:black_corundum_cluster>*2 % 100, <item:quark:black_corundum_cluster> % 50], <item:quark:black_corundum>|<item:quark:waxed_black_corundum>, 0, 4000);



### Add Catalysts to various machines
/*
<recipetype:thermal:pulverizer_catalyst>.addCatalyst(String name, IIngredient ingredient, float primaryMod, float secondaryMod, float energyMod, float minChance, float useChance);

<recipetype:thermal:smelter_catalyst>.addCatalyst(String name, IIngredient ingredient, float primaryMod, float secondaryMod, float energyMod, float minChance, float useChance);

<recipetype:thermal:insolator_catalyst>.addCatalyst(String name, IIngredient ingredient, float primaryMod, float secondaryMod, float energyMod, float minChance, float useChance);

Min chance is the minium chance to trigger the catalyst (I guess?)
*/
# Pulverizer
<recipetype:thermal:pulverizer_catalyst>.addCatalyst("prismarine_shard", <item:minecraft:prismarine_shard>, 1.45, 1.65, 1.3, 0.45, 0.4);
<recipetype:thermal:pulverizer_catalyst>.addCatalyst("prismarine_crystal", <item:minecraft:prismarine_crystals>, 1.35, 2.0, 1.5, 0.6, 0.25);
<recipetype:thermal:pulverizer_catalyst>.addCatalyst("amethyst_catalyst", <item:minecraft:amethyst_shard>, 1.0, 0.75, 0.35, 0.55, 0.35);

<recipetype:thermal:pulverizer_catalyst>.addCatalyst("quartz_dust", <item:thermal:quartz_dust>, 1.5, 1.75, 1.35, 0.4, 0.3);
<recipetype:thermal:pulverizer_catalyst>.addCatalyst("certus_quartz_dust", <item:ae2:certus_quartz_dust>, 1.35, 1.5, 1.25, 0.5, 0.3);

<recipetype:thermal:pulverizer_catalyst>.addCatalyst("cinnabar_dust", <item:thermal:cinnabar_dust>, 3.0, 3.0, 2.5, 0.5, 0.8); // Idk the min chance for Cinnabar so let's hope this is close enough

<recipetype:thermal:pulverizer_catalyst>.addCatalyst("corundum", <item:quark:red_corundum_cluster>|<item:quark:orange_corundum_cluster>|<item:quark:yellow_corundum_cluster>|<item:quark:green_corundum_cluster>|<item:quark:blue_corundum_cluster>|<item:quark:indigo_corundum_cluster>|<item:quark:violet_corundum_cluster>|<item:quark:white_corundum_cluster>|<item:quark:black_corundum_cluster>, 1.25, 1.0, 0.85, 0.5, 0.5);

# Induction Smelter
<recipetype:thermal:smelter_catalyst>.addCatalyst("sky_stone_dust", <item:ae2:sky_dust>, 1.35, 0.9, 0.75, 1.0, 0.75);
<recipetype:thermal:smelter_catalyst>.addCatalyst("fire_charge_catalyst", <item:minecraft:fire_charge>, 1.25, 1.5, 0.3, 0.6, 0.55);
<recipetype:thermal:smelter_catalyst>.addCatalyst("lava_bucket", <item:minecraft:lava_bucket>, 1.0, 1.25, 0.75, 1.0, 0.35);


# Phytogenic Insolator
<recipetype:thermal:insolator_catalyst>.addCatalyst("sky_dust", <item:ae2:sky_dust>, 0.9, 1.0, 0.25, 1.0, 0.85);
<recipetype:thermal:insolator_catalyst>.addCatalyst("sawdust", <item:thermal:sawdust>, 1.05, 1.1, 0.9, 0.5, 0.75);
<recipetype:thermal:insolator_catalyst>.addCatalyst("pollen", <item:byg:pollen_dust>|<item:the_bumblezone:pollen_puff>, 1.5, 1.25, 0.65, 0.75, 0.6);



print("thermal.zs loaded");