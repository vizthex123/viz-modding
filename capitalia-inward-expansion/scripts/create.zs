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
val xp = <item:create:experience_nugget>;

val fiber = <item:kubejs:fibers>;
val sawdust = <item:kubejs:sawdust>;

val iron = <item:minecraft:iron_ingot>;
val diamond = <item:minecraft:diamond>;
val netherite = <item:minecraft:netherite_ingot>;
<<<<<<< Updated upstream
=======

val iron_plate = <tag:items:forge:plates/iron>;

>>>>>>> Stashed changes
val brass = <item:create:brass_ingot>; // Don't change it to a tag! Used to fix the recipe for Create's Brass.
val iron_plate = <tag:items:forge:plates/iron>;

<<<<<<< Updated upstream
val cobblestone = <item:minecraft:cobblestone>;



// Change the Sandpaper recipes to add tag support
craftingTable.remove(<item:create:sand_paper>);
craftingTable.remove(<item:create:red_sand_paper>);
craftingTable.addShapeless("sandpaper", <item:create:sand_paper>, [<item:minecraft:sand>, <tag:items:cie:paper>]);
craftingTable.addShapeless("red_sandpaper", <item:create:red_sand_paper>, [<item:minecraft:red_sand>, <tag:items:cie:paper>]);

// Change the Item Vault recipe
// Done because I increased the capacity to 64 stacks
craftingTable.remove(<item:create:item_vault>);
craftingTable.addShaped("vault", <item:create:item_vault>, 
    [[empty, iron_plate, empty],
    [iron_plate, <tag:items:functionalstorage:drawer>, iron_plate],
    [empty, iron_plate, empty]]);
=======
// Change the Item Vault recipe
craftingTable.remove(<item:create:item_vault>);
craftingTable.addShaped("vault", <item:create:item_vault>, 
    [[empty, iron_plate, empty],
    [iron_plate, <tag:items:functionalstorage:drawer>, iron_plate],
    [empty, iron_plate, empty]]);

// Crush Crying Obsidian into Powdered Obsidian
<recipetype:create:crushing>.addRecipe("crush_crying_obsidian", [<item:create:powdered_obsidian>*4, <item:minecraft:obsidian> % 50, <item:minecraft:amethyst_shard>*2 % 35, <item:minecraft:lapis_lazuli>*5 % 25], <item:minecraft:crying_obsidian>, 150);
>>>>>>> Stashed changes

// Make the Basin Lid not have a weird recipe
craftingTable.remove(<item:createdieselgenerators:basin_lid>);
craftingTable.addShaped("lid", <item:createdieselgenerators:basin_lid>, 
    [[empty, iron, empty],
    [<item:create:andesite_alloy>, <item:create:andesite_alloy>, <item:create:andesite_alloy>]]);
	
// Process Uranium in a Washing Setup instead of Furnace
furnace.removeByName("powah:smelting/uraninite_from_raw");
blastFurnace.removeByName("powah:smelting/uraninite_from_raw_blasting");
<recipetype:create:splashing>.addRecipe("uraninite", [<item:powah:uraninite>], <item:powah:uraninite_raw>, 200);

// Wash Thorium into Uranium
<recipetype:create:splashing>.addRecipe("thorium_to_uraninite", [<item:powah:uraninite>, <item:powah:uraninite> % 50, <item:minecraft:iron_nugget>*2 % 50], <item:create_new_age:thorium>, 200);

// Wash Irradium into Thorium and Uranium
<recipetype:create:splashing>.addRecipe("irradium_to_thorium", [<item:create_new_age:thorium>*2, <item:powah:uraninite>*3 % 75, <item:minecraft:gold_nugget>*3 % 75, <item:minecraft:gold_nugget>*2 % 50], <item:enlightened_end:raw_irradium>, 200);

// Change the Brass recipe to match Bluepower's
<recipetype:create:mixing>.remove(brass);
<recipetype:create:mixing>.addRecipe("brass", <constant:create:heat_condition:none>, [brass*2], [<item:minecraft:copper_ingot>, <tag:items:forge:ingots/zinc>], [<fluid:minecraft:lava>*500]);

<recipetype:create:mixing>.addRecipe("brass_boosted", <constant:create:heat_condition:heated>, [brass*4], [<item:minecraft:copper_ingot>*3, <tag:items:forge:ingots/zinc>], []);

// Compact Sunflowers into Plant Oil
<recipetype:create:compacting>.addRecipe("sunflower_oil", <constant:create:heat_condition:none>, [<fluid:createdieselgenerators:plant_oil>*200], [<item:minecraft:sunflower>], [], 40);

// Compact Magma into Lava
<recipetype:create:compacting>.addRecipe("magma_lava", <constant:create:heat_condition:heated>, [<fluid:minecraft:lava>*100], [<item:minecraft:magma_block>], []);

# Crush Raw Ores from Bluepower
<recipetype:create:crushing>.addRecipe("crush_raw_silver", [<item:create:crushed_raw_silver>, xp % 75], <item:bluepower:silver_raw>);
<recipetype:create:crushing>.addRecipe("crush_raw_zinc", [<item:bluepower:zinc_dust>, xp % 75], <item:bluepower:zinc_raw>);
<recipetype:create:crushing>.addRecipe("crush_raw_tungsten", [<item:bluepower:tungsten_dust>, xp*2, xp*2 % 75], <item:bluepower:tungsten_raw>);

// Wash Crushed Raw Silver
<recipetype:create:splashing>.addRecipe("wash_silver", [<item:bluepower:silver_nugget>*9, <item:create:zinc_nugget> % 75, <item:create:copper_nugget>*3 % 75], <item:create:crushed_raw_silver>);

// Mill Glow Ink Sacs into Ink Sacs and Cyan Dye
<recipetype:create:milling>.addRecipe("mill_glow_sacs", [<item:minecraft:ink_sac>, <item:minecraft:cyan_dye> % 50], <item:minecraft:glow_ink_sac>, 20);

// Mill Carpets into Fibers
<recipetype:create:milling>.addRecipe("mill_carpet", [fiber*2, fiber % 50], <tag:items:minecraft:wool_carpets>, 20);

// Make Wool -> String give Fibers
<recipetype:create:milling>.removeByName("create:milling/wool");
<recipetype:create:crushing>.removeByName("create:crushing/wool");
<recipetype:create:milling>.addRecipe("mill_wool", [fiber*4], <tag:items:minecraft:wool>, 60);

// Crush Wood into Sawdust
<recipetype:create:crushing>.addRecipe("crush_logs", [sawdust*4], <tag:items:minecraft:logs>);
<recipetype:create:crushing>.addRecipe("crush_planks", [sawdust], <tag:items:minecraft:planks>);

// Crush Warped Wart Blocks into Nether Wart
<recipetype:create:crushing>.addRecipe("crush_warped_wart", [<item:minecraft:nether_wart> % 15], <item:minecraft:warped_wart_block>);

// Crush Crying Obsidian into Powdered Obsidian
<recipetype:create:crushing>.addRecipe("crush_crying_obsidian", [<item:create:powdered_obsidian>*4, <item:minecraft:obsidian> % 50, <item:minecraft:amethyst_shard>*2 % 35, <item:minecraft:lapis_lazuli>*5 % 25], <item:minecraft:crying_obsidian>, 150);

// Crush Cladded Stone into Cladding and Cobblestone
<recipetype:create:crushing>.addRecipe("crush_cladded_stone", [cobblestone, <item:biomemakeover:crude_cladding> % 25], <item:biomemakeover:cladded_stone>);

// Crush Quartz Blocks into Quartz
<recipetype:create:crushing>.addRecipe("crush_quartz_block", [<item:minecraft:quartz>*3, <item:minecraft:quartz> % 75], <item:minecraft:quartz_block>|<item:minecraft:smooth_quartz>);

// Crush Rose Quartz into Rose Quartz
<recipetype:create:crushing>.addRecipe("crush_rose_quartz_block", [<item:cave_enhancements:rose_quartz>*2, <item:cave_enhancements:rose_quartz>*2 % 50], <item:cave_enhancements:rose_quartz_block>);

// Polish Cave Enhancements Rose Quartz
<recipetype:create:sandpaper_polishing>.addRecipe("polish_rose_quartz", <item:create:polished_rose_quartz>, <item:cave_enhancements:rose_quartz>);


// Crush Quartz Blocks into Create
<recipetype:create:crushing>.addRecipe("crush_quartz_block", [<item:minecraft:quartz>*3, <item:minecraft:quartz> % 75], <item:minecraft:quartz_block>);

# Block crushing that the mod missed
val clay = <item:minecraft:clay_ball>;
val quartz = <item:ae2:certus_quartz_crystal>;
val crushed_iron = <item:create:crushed_raw_iron>;

// Terracotta
<recipetype:create:milling>.removeByName("create:milling/terracotta");
<recipetype:create:milling>.addRecipe("mill_terracotta", [clay, clay*2 % 75], <tag:items:minecraft:terracotta>);

// Deepslate
<recipetype:create:crushing>.addRecipe("crush_deepslate", [cobblestone, <item:minecraft:gravel>], <item:minecraft:cobbled_deepslate>);

// Gilded Blackstone
// Regular is already done by Bygone Nether
<recipetype:create:crushing>.addRecipe("crush_gilded_blackstone", [<item:minecraft:blackstone>, <item:kubejs:gold_scrap>], <item:minecraft:gilded_blackstone>);

// Basalt
<recipetype:create:crushing>.addRecipe("crush_basalt", [<item:minecraft:tuff>, <item:minecraft:quartz> % 20], <item:minecraft:basalt>|<item:minecraft:smooth_basalt>);

// BluePower's Basalt
<recipetype:create:crushing>.addRecipe("crush_basalt_cobble", [<item:minecraft:tuff> % 50, <item:minecraft:quartz> % 10], <item:bluepower:basalt_cobble>, 200);

// Gilded Blackstone
<recipetype:create:crushing>.addRecipe("crush_gilded_blackstone", [<item:minecraft:blackstone>, <item:kubejs:gold_scrap>], <item:minecraft:gilded_blackstone>);

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
<recipetype:create:crushing>.addRecipe("crush_permafrost", [cobblestone, <item:minecraft:blue_ice> % 50, <item:minecraft:snowball>*6, <item:minecraft:snowball>*2 % 50], <item:quark:permafrost>);

// Crush Myalite
<recipetype:create:crushing>.addRecipe("crush_myalite", [<item:minecraft:popped_chorus_fruit> % 75, crushed_iron % 5], <item:quark:myalite>);
<recipetype:create:crushing>.addRecipe("crush_dusky_myalite", [<item:minecraft:popped_chorus_fruit> % 50, crushed_iron % 15], <item:quark:dusky_myalite>);

// Crush Mesmerite
<recipetype:create:crushing>.addRecipe("crush_mesmerite", [cobblestone, <item:biomemakeover:illunite_shard> % 50], <item:biomemakeover:mesmerite>);




# Remove duplicate crushing recipes
<recipetype:create:crushing>.removeByName("create:crushing/tuff");

<recipetype:create:crushing>.removeByName("create:crushing/asurine");
<recipetype:create:crushing>.removeByName("create:crushing/crimsite");
<recipetype:create:crushing>.removeByName("create:crushing/veridium");



// Fix the Ore Vein Finder recipe
craftingTable.remove(<item:createoreexcavation:vein_finder>);
craftingTable.addShaped("vein_finder", <item:createoreexcavation:vein_finder>, 
    [[<item:minecraft:ender_eye>, <tag:items:forge:gems/amethyst>, empty],
    [<item:bluepower:teslatite_dust>, <tag:items:forge:rods/wooden>, empty],
    [empty, empty, <tag:items:forge:rods/wooden>]]);

// Cheaper Drills
craftingTable.remove(<item:createoreexcavation:drill>);
craftingTable.remove(<item:createoreexcavation:diamond_drill>);
<<<<<<< Updated upstream
smithing.removeByName("createoreexcavation:netherite_drill_smithing");
=======
craftingTable.remove(<item:createoreexcavation:netherite_drill>);
>>>>>>> Stashed changes
craftingTable.addShaped("iron_drill", <item:createoreexcavation:drill>, 
    [[empty, iron_plate, iron_plate],
    [iron_plate, iron, iron_plate],
    [iron_plate, iron_plate, empty]]);

smithing.addRecipe("diamond_drill", <item:createoreexcavation:diamond_drill>, <item:createoreexcavation:drill>, diamond);

smithing.addRecipe("netherite_drill", <item:createoreexcavation:netherite_drill>, <item:createoreexcavation:diamond_drill>, <item:createdeco:netherite_sheet>);

# Fix raw ore processing from Create Ore Excavation
<<<<<<< Updated upstream
<recipetype:create:milling>.removeByName("createoreexcavation:milling/redstone_milling");
<recipetype:create:cutting>.removeByName("createoreexcavation:cutting/emerald_cutting");
<recipetype:create:cutting>.removeByName("createoreexcavation:cutting/diamond_cutting");
<recipetype:create:crushing>.removeByName("createoreexcavation:crushing/redstone_crushing");

<recipetype:create:crushing>.addRecipe("crush_raw_redstone", [<item:minecraft:redstone>*4, xp % 75], <item:createoreexcavation:raw_redstone>);
<recipetype:create:crushing>.addRecipe("crush_raw_emerald", [<item:minecraft:emerald>, xp*2], <item:createoreexcavation:raw_emerald>);
<recipetype:create:crushing>.addRecipe("crush_raw_diamond", [diamond, xp*3], <item:createoreexcavation:raw_diamond>);

# Remove some of the recipes from Sandpaper Overhaul
# <recipetype:create:deploying>.removeByName("create_so:lapis_lazuli_sandpaper_using_deployer");
<recipetype:create:sequenced_assembly>.removeByName("create_so:unrefined_lapis_lazuli");

// Make Iron Sandpaper use the paper tag
craftingTable.remove(<item:create_so:crushed_iron_sandpaper>);
craftingTable.addShapeless("iron_sandpaper", <item:create_so:crushed_iron_sandpaper>, [<tag:items:cie:paper>, <item:create_so:crushed_iron>]);

=======
val xp = <item:create:experience_nugget>;

<recipetype:create:milling>.removeByName("createoreexcavation:milling/redstone_milling");
<recipetype:create:crushing>.removeByName("createoreexcavation:crushing/redstone_crushing");
<recipetype:create:crushing>.addRecipe("crush_raw_redstone", [<item:minecraft:redstone>*4, xp % 50], <item:createoreexcavation:raw_redstone>);

<recipetype:create:cutting>.removeByName("createoreexcavation:cutting/emerald_cutting");
<recipetype:create:cutting>.removeByName("createoreexcavation:cutting/diamond_cutting");
<recipetype:create:crushing>.addRecipe("crush_raw_emerald", [<item:minecraft:emerald>, xp*2], <item:createoreexcavation:raw_emerald>);
<recipetype:create:crushing>.addRecipe("crush_raw_diamond", [diamond, xp*3], <item:createoreexcavation:raw_diamond>);

>>>>>>> Stashed changes
print("create.zs loaded");