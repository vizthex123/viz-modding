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

// Make 16 Sticks at once
craftingTable.addShaped("logs_to_sticks", <item:minecraft:stick>*16, 
    [[<tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>]]);

// Make 4 chests at once
craftingTable.addShaped("chest_logs", <item:minecraft:chest>*4, 
    [[<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <item:minecraft:air>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]]);

// Blast Furnace glass
blastFurnace.addRecipe("sand_to_glass", <item:minecraft:glass>, <tag:items:minecraft:sand>, 0.1, 100);

// Make Anvils out of Lead
craftingTable.addShaped("lead_anvil", <item:minecraft:anvil>, 
    [[<tag:items:forge:storage_blocks/lead>, <tag:items:forge:storage_blocks/lead>, <tag:items:forge:storage_blocks/lead>],
    [<item:minecraft:air>, <tag:items:forge:ingots/lead>, <item:minecraft:air>],
    [<tag:items:forge:ingots/lead>, <tag:items:forge:ingots/lead>, <tag:items:forge:ingots/lead>]]);

print("qol.zs loaded");