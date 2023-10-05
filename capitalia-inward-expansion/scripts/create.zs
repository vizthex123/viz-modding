# Changes recipes for Create & its add-ons

import mods.create.CompactingManager;

print("create.zs loading...");

/*
craftingTable.addShapeless("recipeName", <output>, [<items>]);

craftingTable.addShaped("recipeName", <output>, 
    [[<item>, <item>, <item>],
    [<item>, <item>, <item>],
    [<item>, <item>, <item>]]);

craftingTable.removeByName("recipeName");
craftingTable.remove(<item>);

<recipetype:create:milling>.addRecipe("name", [<outputs>], <item>, duration);
<recipetype:create:crushing>.addRecipe("name", [<outputs>], <item>, duration);

<recipetype:create:compacting>.addRecipe("name", <constant:create:heat_condition:none>, [<outputs>], [<inputs>], [<fluid inputs>], duration);
<recipetype:create:mixing>.addRecipe("name", <constant:create:heat_condition:none>, [<outputs>], [<inputs>], [<fluid inputs>], duration);
*/

val empty = <item:minecraft:air>;

val sawdust = <item:kubejs:sawdust>;

val iron = <item:minecraft:iron_ingot>;
val diamond = <item:minecraft:diamond>;
val netherite = <item:minecraft:netherite_ingot>;

val iron_plate = <item:create:iron_sheet>;

val brass = <item:create:brass_ingot>; // Don't change it to a tag! Used to fix the recipe for Create's Brass.

// Fix the Ore Vein Finder recipe
craftingTable.remove(<item:createoreexcavation:vein_finder>);
craftingTable.addShaped("vein_finder", <item:createoreexcavation:vein_finder>, 
    [[<item:minecraft:ender_eye>, <tag:items:forge:gems/amethyst>, empty],
    [<item:bluepower:teslatite_dust>, <tag:items:forge:rods/wooden>, empty],
    [empty, empty, <tag:items:forge:rods/wooden>]]);

// Cheaper Drills
craftingTable.remove(<item:createoreexcavation:drill>);
craftingTable.remove(<item:createoreexcavation:diamond_drill>);
craftingTable.remove(<item:createoreexcavation:netherite_drill>);
craftingTable.addShaped("iron_drill", <item:createoreexcavation:drill>, 
    [[empty, iron_plate, iron_plate],
    [iron_plate, iron, iron_plate],
    [iron_plate, iron_plate, empty]]);

smithing.addRecipe("diamond_drill", <item:createoreexcavation:diamond_drill>, <item:createoreexcavation:drill>, diamond);

smithing.addRecipe("netherite_drill", <item:createoreexcavation:netherite_drill>, <item:createoreexcavation:diamond_drill>, <item:createdeco:netherite_sheet>);

# Fix raw ore processing from Create Ore Excavation
val xp = <item:create:experience_nugget>;

<recipetype:create:milling>.removeByName("createoreexcavation:milling/redstone_milling");
<recipetype:create:crushing>.removeByName("createoreexcavation:crushing/redstone_crushing");
<recipetype:create:crushing>.addRecipe("crush_raw_redstone", [<item:minecraft:redstone>*4, xp % 50], <item:createoreexcavation:raw_redstone>);

<recipetype:create:cutting>.removeByName("createoreexcavation:cutting/emerald_cutting");
<recipetype:create:cutting>.removeByName("createoreexcavation:cutting/diamond_cutting");
<recipetype:create:crushing>.addRecipe("crush_raw_emerald", [<item:minecraft:emerald>, xp*2], <item:createoreexcavation:raw_emerald>);
<recipetype:create:crushing>.addRecipe("crush_raw_diamond", [diamond, xp*3], <item:createoreexcavation:raw_diamond>);

// Process Uranium in a Washing Setup instead of Furnace
furnace.removeByName("powah:smelting/uraninite_from_raw");
blastFurnace.removeByName("powah:smelting/uraninite_from_raw_blasting");
<recipetype:create:splashing>.addRecipe("uraninite", [<item:powah:uraninite>], <item:powah:uraninite_raw>, 200);

// Wash Thorium into Uranium
<recipetype:create:splashing>.addRecipe("thorium_to_uraninite", [<item:powah:uraninite>*2, <item:powah:uraninite> % 50, <item:minecraft:iron_nugget>*2 % 50], <item:create_new_age:thorium>, 200);

// Wash Irradium into Thorium and Uranium
<recipetype:create:splashing>.addRecipe("irradium_to_thorium", [<item:create_new_age:thorium>*2, <item:powah:uraninite>*3 % 75, <item:minecraft:gold_nugget>*3 % 75, <item:minecraft:gold_nugget>*2 % 50], <item:enlightened_end:raw_irradium>, 200);

// Change the Brass recipe to match Bluepower's
<recipetype:create:mixing>.remove(brass);
<recipetype:create:mixing>.addRecipe("brass", <constant:create:heat_condition:none>, [brass*2], [<item:minecraft:copper_ingot>, <tag:items:forge:ingots/zinc>], [<fluid:minecraft:lava>*500]);

<recipetype:create:mixing>.addRecipe("brass_boosted", <constant:create:heat_condition:heated>, [brass*4], [<item:minecraft:copper_ingot>*3, <tag:items:forge:ingots/zinc>], []);

// Plant Oil from Sunflowers
<recipetype:create:compacting>.addRecipe("sunflower_oil", <constant:create:heat_condition:none>, [<fluid:createdieselgenerators:plant_oil>*200], [<item:minecraft:sunflower>], [], 40);

// Crush Wood into Sawdust
<recipetype:create:crushing>.addRecipe("crush_logs", [sawdust*4], <tag:items:minecraft:logs>);
<recipetype:create:crushing>.addRecipe("crush_planks", [sawdust], <tag:items:minecraft:planks>);

// Mill Glow Ink Sacs into Ink Sacs and Cyan Dye
<recipetype:create:milling>.addRecipe("mill_glow_sacs", [<item:minecraft:ink_sac>, <item:minecraft:cyan_dye> % 50], <item:minecraft:glow_ink_sac>, 20);

# Block crushing that the mod missed
val clay = <item:minecraft:clay_ball>;
val quartz = <item:ae2:certus_quartz_crystal>;
val crushed_iron = <item:create:crushed_raw_iron>;

// Deepslate
<recipetype:create:crushing>.addRecipe("crush_deepslate", [<item:minecraft:cobblestone>, <item:minecraft:gravel>], <item:minecraft:cobbled_deepslate>);

// Scoria
<recipetype:create:crushing>.addRecipe("crush_scoria", [<item:minecraft:andesite> % 50, <item:minecraft:calcite> % 15, <item:nourished_nether:ash_lump>*2 % 20, <item:ae2:silicon> % 55], <item:create:scoria>);

// Scorchia
<recipetype:create:crushing>.addRecipe("crush_scorchia", [<item:minecraft:andesite>, <item:nourished_nether:ash_lump>*4 % 75], <item:create:scorchia>);

// Limestone
// Not accurate to how you get Quicklime, but I don't care
<recipetype:create:milling>.addRecipe("mill_limestone", [<item:kubejs:quicklime> % 50], <tag:items:forge:limestone>);
<recipetype:create:crushing>.addRecipe("crush_limestone", [<item:minecraft:calcite>, <item:kubejs:quicklime>*2 % 50], <tag:items:forge:limestone>);

// Crush Shale
<recipetype:create:crushing>.addRecipe("crush_shale", [quartz % 25, clay % 60, crushed_iron % 5], <item:quark:shale>);

	// Void Shale
<recipetype:create:crushing>.addRecipe("crush_void_shale", [quartz % 55, clay % 35, crushed_iron % 25], <item:enlightened_end:void_shale>);

// Crush Jasper
<recipetype:create:crushing>.addRecipe("crush_jasper", [<item:minecraft:calcite> % 25, clay % 20, <item:ae2:silicon> % 75], <item:quark:jasper>);

// Crush Permafrost
<recipetype:create:crushing>.addRecipe("crush_permafrost", [<item:minecraft:cobblestone>, <item:minecraft:blue_ice> % 50, <item:minecraft:snowball>*6, <item:minecraft:snowball>*2 % 50], <item:quark:permafrost>);

// Crush Myalite
<recipetype:create:crushing>.addRecipe("crush_myalite", [<item:minecraft:popped_chorus_fruit> % 75, crushed_iron % 5], <item:quark:myalite>);
<recipetype:create:crushing>.addRecipe("crush_dusky_myalite", [<item:minecraft:popped_chorus_fruit> % 50, crushed_iron % 15], <item:quark:dusky_myalite>);

// Crush all Terracotta types into Clay
<recipetype:create:milling>.removeByName("create:milling/terracotta");
<recipetype:create:milling>.addRecipe("mill_terracotta", [clay, clay*2 % 75], <tag:items:minecraft:terracotta>);


# Remove duplicate crushing recipes
<recipetype:create:crushing>.removeByName("create:crushing/tuff");

<recipetype:create:crushing>.removeByName("create:crushing/asurine");
<recipetype:create:crushing>.removeByName("create:crushing/crimsite");
<recipetype:create:crushing>.removeByName("create:crushing/veridium");

print("create.zs loaded");