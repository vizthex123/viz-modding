# Adds recipes to saw things into Sawdust

import crafttweaker.api.tag.MCTag;

print("sawdust.zs loading...");
/*
<recipetype:thermal:sawmill>.addRecipe(String name, MCWeightedItemStack[] outputs, IIngredient ingredient, int energy);

<recipetype:create:cutting>.addRecipe(String name, IItemStack output, IIngredient input, @Optional(100) int duration);
*/

val sawdust = <item:thermal:sawdust>;

# Saw wooden stuff into Sawdust
# Sawdust value is equal to panks used, slabs & sticks count as 0.5 and 0.25 respectively
# Full blocks take 500 RF, all else takes 100 or so

// Crafting Table
<recipetype:thermal:sawmill>.addRecipe("saw_workbench", [sawdust*4], <item:minecraft:crafting_table>, 500);

// Barrels
<recipetype:thermal:sawmill>.addRecipe("saw_barrel", [sawdust*7, sawdust % 50], <item:minecraft:barrel>, 500);

// Compostor
<recipetype:thermal:sawmill>.addRecipe("saw_compostor", [sawdust*7, sawdust % 50], <item:minecraft:barrel>, 500);

// Chests
<recipetype:thermal:sawmill>.addRecipe("saw_chests", [sawdust*8], <tag:items:forge:chests/wooden>, 500);

// Note Block
<recipetype:thermal:sawmill>.addRecipe("saw_note_block", [sawdust*8, <item:minecraft:redstone> % 50], <item:minecraft:note_block>, 500);

// Jukebox
<recipetype:thermal:sawmill>.addRecipe("saw_jukebox", [sawdust*8, <item:minecraft:diamond> % 50], <item:minecraft:jukebox>, 500);

// Stairs
<recipetype:thermal:sawmill>.addRecipe("saw_stairs", [sawdust*2], <tag:items:minecraft:wooden_stairs>, 1500);

// Fences
<recipetype:thermal:sawmill>.addRecipe("saw_fences", [sawdust*2], <tag:items:forge:fences/wooden>, 1000);

// Fence Gates
<recipetype:thermal:sawmill>.addRecipe("saw_fence_gates", [sawdust*2], <tag:items:forge:fence_gates/wooden>, 1250);

// Trapdoors
<recipetype:thermal:sawmill>.addRecipe("saw_trapdoors", [sawdust*3], <tag:items:minecraft:wooden_trapdoors>, 1500);

// Doors
<recipetype:thermal:sawmill>.addRecipe("saw_doors", [sawdust*2], <tag:items:minecraft:wooden_doors>, 1500);

// Slabs
<recipetype:thermal:sawmill>.addRecipe("saw_slabs", [sawdust*2], <tag:items:minecraft:wooden_slabs>, 1000);

// Boats
<recipetype:thermal:sawmill>.addRecipe("saw_boats", [sawdust*5], <tag:items:minecraft:boats>, 1250);

// Signs
<recipetype:thermal:sawmill>.addRecipe("saw_signs", [sawdust*6], <tag:items:minecraft:signs>, 1000);

// Pressure Plates
<recipetype:thermal:sawmill>.addRecipe("saw_pressure_plates", [sawdust], <tag:items:minecraft:wooden_pressure_plates>, 750);

// Buttons
<recipetype:thermal:sawmill>.addRecipe("saw_buttons", [sawdust % 50], <tag:items:minecraft:wooden_buttons>, 500);

// Wooden Tools
<recipetype:thermal:sawmill>.addRecipe("saw_wood_tools", [sawdust*2, sawdust % 50], <item:minecraft:wooden_sword>|<item:minecraft:wooden_pickaxe>|<item:minecraft:wooden_axe>|<item:minecraft:wooden_shovel>|<item:minecraft:wooden_hoe>, 500);

// Bookshelves
<recipetype:thermal:sawmill>.addRecipe("saw_bookshelves", [sawdust*6], <tag:blocks:forge:bookshelves>, 500);

# Profession Tables
<recipetype:thermal:sawmill>.addRecipe("saw_tables", [sawdust*4], <tag:items:low-power:profession_table>, 500);

// Loom
<recipetype:thermal:sawmill>.addRecipe("saw_loom", [sawdust*2], <item:minecraft:loom>, 500);

// Lectern
<recipetype:thermal:sawmill>.addRecipe("saw_loom", [sawdust*8], <item:minecraft:lectern>, 500);

/*
### Modded Stuff ###
// Wooden Paxel
<recipetype:thermal:sawmill>.addRecipe("saw_paxel", [sawdust*7], <item:easypaxellite:wood_paxel>, 750);
*/
print("sawdust.zs loaded");