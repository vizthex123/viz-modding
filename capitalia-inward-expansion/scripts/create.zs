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

<recipetype:create:mechanical_crafting>.addRecipe("name", <output>,
	[[input],
	[input],
	[<input>]]);

can be any shape
*/

val empty = <item:minecraft:air>;
val xp = <item:create:experience_nugget>;

val fiber = <item:kubejs:fibers>;
val sawdust = <item:kubejs:sawdust>;

val iron = <item:minecraft:iron_ingot>;
val diamond = <item:minecraft:diamond>;
val netherite = <item:minecraft:netherite_ingot>;

val brass = <item:create:brass_ingot>; // Don't change it to a tag! Used to fix the recipe for Create's Brass.
val iron_plate = <tag:items:forge:plates/iron>;

val cobblestone = <item:minecraft:cobblestone>;

// Copper Patina -> Green & Cyan Dye
craftingTable.removeByName("additionaladditions:patina_cyan_dye");
<recipetype:create:milling>.addRecipe("patina_to_dye", [<item:minecraft:green_dye>, <item:minecraft:cyan_dye>], <item:additionaladditions:copper_patina>, 30);

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

// Make the Basin Lid not have a weird recipe
craftingTable.remove(<item:createdieselgenerators:basin_lid>);
craftingTable.addShaped("lid", <item:createdieselgenerators:basin_lid>, 
    [[empty, iron, empty],
    [<item:create:andesite_alloy>, <item:create:andesite_alloy>, <item:create:andesite_alloy>]]);

// Mixing recipe for Tungsten Carbide
<recipetype:create:mixing>.addRecipe("tungsten_carbide", <constant:create:heat_condition:heated>, [<item:bluepower:tungsten_carbide>*4], [<tag:items:minecraft:coals>*4, <item:bluepower:tungsten_ingot>], [], 100);

<recipetype:create:mixing>.addRecipe("tungsten_carbide_soul", <constant:create:heat_condition:heated>, [<item:bluepower:tungsten_carbide>*4], [<item:nourished_nether:soul_coal>*2, <item:bluepower:tungsten_ingot>], [], 100);

<recipetype:create:mixing>.addRecipe("tungsten_carbide_block", <constant:create:heat_condition:heated>, [<item:bluepower:tungsten_carbide>*9], [<item:quark:charcoal_block>|<item:bygonenether:withered_coal_block>, <item:bluepower:tungsten_block>], [], 400);

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

// Compact Small Flowers into Plant Oil
<recipetype:create:compacting>.addRecipe("flower_oil", <constant:create:heat_condition:none>, [<fluid:createdieselgenerators:plant_oil>*50], [<tag:items:minecraft:small_flowers>], [], 40);

// Compact Tall Flowers into Plant Oil
<recipetype:create:compacting>.addRecipe("tall_flower_oil", <constant:create:heat_condition:none>, [<fluid:createdieselgenerators:plant_oil>*100], [<tag:items:cie:tall_flowers>], [], 60);

// Compact Sunflowers into Plant Oil
<recipetype:create:compacting>.addRecipe("sunflower_oil", <constant:create:heat_condition:none>, [<fluid:createdieselgenerators:plant_oil>*500], [<item:minecraft:sunflower>], [], 80);

// Compact Spore Blossoms into Plant Oil
<recipetype:create:compacting>.addRecipe("blossom_oil", <constant:create:heat_condition:none>, [<fluid:createdieselgenerators:plant_oil>*1000], [<item:minecraft:spore_blossom>], [], 100);

// Compact Phantom Membranes into Biodiesel
<recipetype:create:compacting>.addRecipe("membrane_diesel", <constant:create:heat_condition:none>, [<fluid:createdieselgenerators:biodiesel>*250], [<item:minecraft:phantom_membrane>], [], 100);

// Compact Magma into Lava
<recipetype:create:compacting>.addRecipe("magma_to_lava", <constant:create:heat_condition:heated>, [<fluid:minecraft:lava>*100], [<item:minecraft:magma_block>], []);

# Crush Raw Ores from Bluepower
<recipetype:create:crushing>.addRecipe("crush_raw_silver", [<item:create:crushed_raw_silver>, xp % 75], <item:bluepower:silver_raw>);
<recipetype:create:crushing>.addRecipe("crush_raw_zinc", [<item:bluepower:zinc_dust>, xp % 75], <item:bluepower:zinc_raw>);
<recipetype:create:crushing>.addRecipe("crush_raw_tungsten", [<item:bluepower:tungsten_dust>, xp*2, xp*1 % 50], <item:bluepower:tungsten_raw>);

// Wash Crushed Raw Silver
<recipetype:create:splashing>.addRecipe("wash_silver", [<item:bluepower:silver_nugget>*9, <item:create:zinc_nugget> % 75, <item:create:copper_nugget>*3 % 75], <item:create:crushed_raw_silver>);

// Smelt Crushed Raw Silver
furnace.addRecipe("smelt_crushed_silver", <item:bluepower:silver_ingot>, <item:create:crushed_raw_silver>, 0.1, 200);
blastFurnace.addRecipe("blast_crushed_silver", <item:bluepower:silver_ingot>, <item:create:crushed_raw_silver>, 0.1, 100);

// Mill Glow Ink Sacs into Ink Sacs and Cyan Dye
<recipetype:create:milling>.addRecipe("mill_glow_sacs", [<item:minecraft:ink_sac>, <item:minecraft:cyan_dye> % 50], <item:minecraft:glow_ink_sac>, 20);
### Milling Recipes


### Crushing Recipes 

// Crush Wood into Sawdust
<recipetype:create:crushing>.addRecipe("crush_logs", [sawdust*4], <tag:items:minecraft:logs>);
<recipetype:create:crushing>.addRecipe("crush_planks", [sawdust], <tag:items:minecraft:planks>);

// Crush Warped Wart Blocks into Nether Wart
<recipetype:create:crushing>.addRecipe("crush_warped_wart", [<item:minecraft:nether_wart> % 15], <item:minecraft:warped_wart_block>);

// Crush Heart of Diamond into Diamonds
<recipetype:create:crushing>.addRecipe("crush_diamond_heart", [<item:minecraft:diamond>*4], <item:quark:diamond_heart>);

// Crush Crying Obsidian into Powdered Obsidian
<recipetype:create:crushing>.addRecipe("crush_crying_obsidian", [<item:create:powdered_obsidian>*4, <item:minecraft:obsidian> % 50, <item:minecraft:amethyst_shard>*2 % 35, <item:minecraft:lapis_lazuli>*5 % 25], <item:minecraft:crying_obsidian>, 150);

// Crush Cladded Stone into Cladding and Cobblestone
<recipetype:create:crushing>.addRecipe("crush_cladded_stone", [cobblestone, <item:biomemakeover:crude_cladding> % 25], <item:biomemakeover:cladded_stone>);

// Crush Quartz Blocks
<recipetype:create:crushing>.addRecipe("crush_quartz_block", [<item:minecraft:quartz>*3, <item:minecraft:quartz> % 75], <item:minecraft:quartz_block>|<item:minecraft:smooth_quartz>);

// Crush Rose Quartz Blocks
<recipetype:create:crushing>.addRecipe("crush_rose_quartz_block", [<item:cave_enhancements:rose_quartz>*2, <item:cave_enhancements:rose_quartz>*2 % 50], <item:cave_enhancements:rose_quartz_block>);

// Temp rose quartz recipe until CT support gets added to the sandpaper add-on
<recipetype:create:mechanical_crafting>.addRecipe("temp_polish_rose_quartz", <item:create:polished_rose_quartz>,
	[[<item:cave_enhancements:rose_quartz>]]);

/*
// Polish Cave Enhancements Rose Quartz
<recipetype:create:sandpaper_polishing>.addRecipe("polish_rose_quartz", <item:create:polished_rose_quartz>, <item:cave_enhancements:rose_quartz>);
*/

# Block crushing that the mod missed
val clay = <item:minecraft:clay_ball>;
val quartz = <item:ae2:certus_quartz_crystal>;
val crushed_iron = <item:create:crushed_raw_iron>;

// Dirt
// Mud also has the tag
<recipetype:create:milling>.addRecipe("mill_dirt", [<item:minecraft:wheat_seeds> % 10, <item:minecraft:beetroot_seeds> % 7, <item:minecraft:potato> % 5, <item:minecraft:sweet_berries> % 2], <tag:items:minecraft:dirt>);

// Concrete
<recipetype:create:milling>.addRecipe("mill_concrete", [<item:minecraft:sand> % 50, <item:mechanicalmachinery:dust> % 50], <tag:items:minecraft:concrete>, 200);

// Terracotta
<recipetype:create:milling>.removeByName("create:milling/terracotta");
<recipetype:create:milling>.addRecipe("mill_terracotta", [clay, clay*2 % 75], <tag:items:minecraft:terracotta>, 150);

// Glazed Terracotta
<recipetype:create:milling>.addRecipe("mill_glazed_terracotta", [clay, clay*2 % 75], <tag:items:minecraft:glazed_terracotta>, 150);

// Deepslate
<recipetype:create:crushing>.addRecipe("crush_deepslate", [cobblestone, <item:minecraft:gravel> % 50], <item:minecraft:cobbled_deepslate>, 200);

// Gilded Blackstone
<recipetype:create:crushing>.addRecipe("crush_gilded_blackstone", [<item:minecraft:blackstone>, <item:kubejs:gold_scrap>], <item:minecraft:gilded_blackstone>);

// Blackstone
<recipetype:create:crushing>.addRecipe("crush_blackstone", [cobblestone], <item:minecraft:blackstone>);

// Basalt
<recipetype:create:crushing>.addRecipe("crush_basalt", [<item:minecraft:tuff>, <item:minecraft:quartz> % 20], <item:minecraft:basalt>|<item:minecraft:smooth_basalt>);

// BluePower's Basalt
<recipetype:create:crushing>.addRecipe("crush_basalt_cobble", [<item:minecraft:tuff> % 50, <item:minecraft:quartz> % 10], <item:bluepower:basalt_cobble>, 200);

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
smithing.removeByName("createoreexcavation:netherite_drill_smithing");
craftingTable.addShaped("iron_drill", <item:createoreexcavation:drill>, 
    [[empty, iron_plate, iron_plate],
    [iron_plate, iron, iron_plate],
    [iron_plate, iron_plate, empty]]);

smithing.addRecipe("diamond_drill", <item:createoreexcavation:diamond_drill>, <item:createoreexcavation:drill>, diamond);

smithing.addRecipe("netherite_drill", <item:createoreexcavation:netherite_drill>, <item:createoreexcavation:diamond_drill>, <item:createdeco:netherite_sheet>);

# Fix raw ore processing from Create Ore Excavation
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

# Make Plasma Tools *way* more expensive
craftingTable.remove(<item:deep_dark_regrowth:plasma_pickaxe>);
craftingTable.remove(<item:deep_dark_regrowth:plasma_axe>);
craftingTable.remove(<item:deep_dark_regrowth:plasma_shovel>);
craftingTable.remove(<item:deep_dark_regrowth:plasma_hoe>);

val scrip = <item:kubejs:prestige_scrip>;
val seal = <item:deep_dark_regrowth:unbreakability_seal>;

val plasma = <item:deep_dark_regrowth:plasma>;
val sculk = <item:deep_dark_regrowth:plasmatic_sculk>;

val necro = <item:nourished_nether:necronium_ingot>;
val steel = <item:spirit:soul_steel_ingot>;

val blaze = <item:minecraft:blaze_rod>;
val rod = <tag:items:forge:rods/prismarine>;

// Pickaxe
<recipetype:create:mechanical_crafting>.addRecipe("plasma_pickaxe", <item:deep_dark_regrowth:plasma_pickaxe>,
	[[empty, empty, empty, seal, empty, empty, empty],
	[empty, sculk, plasma, scrip, plasma, sculk, empty],
	[necro, plasma, plasma, <item:additionaladditions:gilded_netherite_pickaxe>, plasma, plasma, necro], 
	[empty, steel, steel, blaze, steel, steel, empty],
	[empty, steel, empty, blaze, empty, steel, empty],
	[empty, empty, empty, rod, empty, empty, empty],	
	[empty, empty, empty, rod, empty, empty, empty]]);

// Axe
<recipetype:create:mechanical_crafting>.addRecipe("plasma_axe", <item:deep_dark_regrowth:plasma_axe>,
	[[empty, empty, sculk, seal, sculk, empty],
	[empty, necro, plasma, scrip, steel, steel],
	[necro, plasma, plasma, <item:additionaladditions:gilded_netherite_axe>, steel, steel],
	[empty, empty, empty, blaze, empty, empty],
	[empty, empty, empty, blaze, empty, empty],
	[empty, empty, empty, rod, empty, empty],
	[empty, empty, empty, rod, empty, empty]]);

// Shovel
<recipetype:create:mechanical_crafting>.addRecipe("plasma_shovel", <item:deep_dark_regrowth:plasma_shovel>,
	[[empty, seal, empty],
	[sculk, scrip, sculk],
	[plasma, <item:additionaladditions:gilded_netherite_shovel>, plasma],
	[steel, necro, steel],
	[empty, blaze, empty],
	[empty, blaze, empty],
	[empty, rod, empty],
	[empty, rod, empty]]);

// Hoe
<recipetype:create:mechanical_crafting>.addRecipe("plasma_hoe", <item:deep_dark_regrowth:plasma_hoe>,
	[[empty, empty, empty, seal],
	[empty, necro, sculk, scrip],
	[steel, plasma, plasma, <item:additionaladditions:gilded_netherite_hoe>],
	[empty, empty, empty,  blaze],
	[empty, empty, empty, blaze],
	[empty, empty, empty, rod],
	[empty, empty, empty, rod]]);

print("create.zs loaded");