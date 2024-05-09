# Adds Quality of Life recipes, because I am tired of re-making this script in every single modpack.
# Find all my projects here: https://www.curseforge.com/members/vizthex/projects
# Script made by vizthex

import crafttweaker.api.tag.MCTag;
import crafttweaker.api.SmokerManager;
import crafttweaker.api.FurnaceManager;
import crafttweaker.api.BlastFurnaceManager;

print("qol.zs loading...");

/*
craftingTable.addShapeless("recipeName", <output>, [<inputs>]);

craftingTable.addShaped("recipeName", <output>, 
    [[<input>, <input>, <input>],
    [<input>, <input>, <input>],
    [<input>, <input>, <input>]]);

<recipetype:thermal:smelter>.addRecipe("name", [<4-outputs>], [<3-inputs>], 0, rf);
*/

// Empty tinker's fluid containers of their fluid
craftingTable.addShapeless("empty_seared_tank", <item:tconstruct:seared_fuel_tank>, [<item:tconstruct:seared_fuel_tank>]);
craftingTable.addShapeless("empty_ingot_tank", <item:tconstruct:seared_ingot_tank>, [<item:tconstruct:seared_ingot_tank>]);
craftingTable.addShapeless("empty_seared_gauge", <item:tconstruct:seared_fuel_gauge>, [<item:tconstruct:seared_fuel_gauge>]);

craftingTable.addShapeless("empty_scorched_ingot_tank", <item:tconstruct:scorched_ingot_tank>, [<item:tconstruct:scorched_ingot_tank>]);
craftingTable.addShapeless("empty_scorched_tank", <item:tconstruct:scorched_fuel_tank>, [<item:tconstruct:scorched_fuel_tank>]);
craftingTable.addShapeless("empty_scorched_gauge", <item:tconstruct:scorched_fuel_gauge>, [<item:tconstruct:scorched_fuel_gauge>]);

// Make 16 Sticks at once
craftingTable.addShapedMirrored("logs_to_sticks", <item:minecraft:stick>*16, 
    [[<tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>]]);

// Make 4 chests at once
craftingTable.addShaped("chest_logs", <item:minecraft:chest>*4, 
    [[<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <item:minecraft:air>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]]);

// Turn Plant Fibers into String
craftingTable.addShaped("fiber_to_string", <item:minecraft:string>*3, 
    [[<item:extcaves:plant_fiber>, <item:extcaves:plant_fiber>, <item:extcaves:plant_fiber>],
    [<item:extcaves:plant_fiber>, <item:extcaves:plant_fiber>, <item:extcaves:plant_fiber>],
    [<item:extcaves:plant_fiber>, <item:extcaves:plant_fiber>, <item:extcaves:plant_fiber>]]);

// Turn Plant Fibers into Paper
craftingTable.addShaped("fiber_to_paper", <item:minecraft:paper>, 
    [[<item:extcaves:plant_fiber>, <item:extcaves:plant_fiber>, <item:extcaves:plant_fiber>],
    [<item:extcaves:plant_fiber>, <item:extcaves:plant_fiber>, <item:extcaves:plant_fiber>]]);

// Convert Nether furnaces to Overworld ones
craftingTable.addShapeless("nether_to_blast", <item:minecraft:blast_furnace>, [<item:netherrocks:nether_blast_furnace>, <item:minecraft:iron_ingot>]);
craftingTable.addShapeless("nether_to_smoker", <item:minecraft:smoker>, [<item:netherrocks:nether_smoker>, <tag:items:minecraft:logs>]);
craftingTable.addShapeless("nether_to_furnace", <item:minecraft:furnace>, [<item:netherrocks:nether_furnace>, <tag:items:forge:cobblestone>]);

// Make Glass in a Blast Furnace
// Still have no clue why tf this isn't in vanilla yet
blastFurnace.addRecipe("blast_sand_to_glass", <item:minecraft:glass>, <item:minecraft:sand>, 0.0, 100);

// Make Stone in a Blast Furnace
// Still have no clue why tf this isn't in vanilla yet
blastFurnace.addRecipe("blast_cobble_to_stone", <item:minecraft:stone>, <item:minecraft:cobblestone>, 0.0, 100);

// Smelt Rotten Flesh into Leather
furnace.addRecipe("flesh_to_leather", <item:minecraft:leather>, <item:minecraft:rotten_flesh>, 1.5, 300);
smoker.addRecipe("flesh_to_leather_smoker", <item:minecraft:leather>, <item:minecraft:rotten_flesh>, 1.5, 200);

// Make Anvils out of Lead
craftingTable.addShaped("lead_anvil", <item:minecraft:anvil>, 
    [[<item:minecraft:air>, <tag:items:forge:storage_blocks/lead>, <item:minecraft:air>],
    [<item:minecraft:air>, <tag:items:forge:storage_blocks/lead>, <item:minecraft:air>],
    [<tag:items:forge:ingots/lead>, <tag:items:forge:ingots/lead>, <tag:items:forge:ingots/lead>]]);

// Convert Bones into Wood
craftingTable.addShapeless("bones_to_wood", <item:minecraft:warped_stem>*2, [<item:minecraft:bone>, <item:minecraft:bone>, <item:minecraft:bone>]);

// Convert Flesh to Wood
craftingTable.addShapeless("flesh_to_wood", <item:minecraft:crimson_stem>*2, [<item:biomesoplenty:flesh>, <item:biomesoplenty:flesh>, <item:biomesoplenty:flesh>, <item:biomesoplenty:flesh>]);

// Convert wraps to the other kind
craftingTable.addShapeless("crimson_to_warped", <item:comfortable_nether:warped_rotten_wrap>, [<item:minecraft:warped_fungus>, <item:comfortable_nether:crimson_rotten_wrap>]);

craftingTable.addShapeless("warped_to_crimson", <item:comfortable_nether:crimson_rotten_wrap>, [<item:minecraft:crimson_fungus>, <item:comfortable_nether:warped_rotten_wrap>]);

<recipetype:create:mixing>.addRecipe("warped_duplication", "none", <item:comfortable_nether:warped_rotten_wrap>*2, [<item:comfortable_nether:golden_warped_fungus>, <item:comfortable_nether:warped_rotten_wrap>]);

// Adds an alt recipe Furnace that uses Basalt
craftingTable.addShaped("furnace_basalt", <item:minecraft:furnace>, 
    [[<item:minecraft:basalt>, <item:minecraft:basalt>, <item:minecraft:basalt>],
    [<item:minecraft:basalt>, <item:minecraft:air>, <item:minecraft:basalt>],
    [<item:minecraft:basalt>, <item:minecraft:basalt>, <item:minecraft:basalt>]]);

// Extract Cobblestone from Netherrack
craftingTable.addShapeless("netherrack_to_cobble", <item:minecraft:cobblestone>, [<item:minecraft:netherrack>, <item:minecraft:netherrack>, <item:minecraft:netherrack>, <item:minecraft:flint>]);

// Get Flint from Netherrack
craftingTable.addShapeless("netherrack_to_flint", <item:minecraft:flint>, [<item:minecraft:netherrack>, <item:minecraft:netherrack>, <item:minecraft:netherrack>, <item:minecraft:netherrack>]);

// Convert Flesh into Brambles
craftingTable.addShapeless("flesh_to_brambles", <item:biomesoplenty:bramble>*2, [<item:biomesoplenty:flesh>,<item:biomesoplenty:flesh>]);

// Convert Brambles to Sticks
craftingTable.addShaped("brambles_to_sticks", <item:minecraft:stick>*3, 
    [[<item:biomesoplenty:bramble>, <item:minecraft:air>],
    [<item:biomesoplenty:bramble>, <item:minecraft:air>]]);

// Recipe to make sticks from vines
craftingTable.addShapeless("vines_to_sticks", <item:minecraft:stick>*2, [<tag:items:vine>]);

// Make Mushroom Soup out of the nether fungi
craftingTable.addShapeless("mushroom-stew_nether", <item:minecraft:mushroom_stew>, [<item:minecraft:crimson_fungus>, <item:minecraft:warped_fungus>, <item:minecraft:bowl>]);

craftingTable.addShapeless("mushroom-stew_nether_gilded", <item:minecraft:mushroom_stew>, [<item:comfortable_nether:golden_warped_fungus>, <item:minecraft:bowl>]);

print("qol.zs loaded");