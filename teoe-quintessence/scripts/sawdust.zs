# Adds recipes to saw things into Sawdust

import crafttweaker.api.tag.MCTag;

print("sawdust.zs loading...");
/*
<recipetype:thermal:sawmill>.addRecipe(String name, MCWeightedItemStack[] outputs, IIngredient ingredient, int energy);

<recipetype:create:cutting>.addRecipe(String name, IItemStack output, IIngredient input, @Optional(100) int duration);
*/

# Saw wooden stuff into Sawdust
# Sawdust value is equal to half the wooden planks used, and is always at 100%
# Slabs in the recipe give a 75% chance for 4 sticks (sticks can give sticks too, and any extra items used to craft the thing)
# Full blocks take 2k RF, all else is 1k (except when it's not, lol)
# Mechcanical Saw gives bonus Sawdust when it can't do the full output

// Barrels
<recipetype:thermal:sawmill>.addRecipe("saw_barrels", [<item:thermal:sawdust>*3 % 100, <item:thermal:sawdust> % 50, <item:minecraft:stick>*4 % 75], <item:minecraft:barrel>, 2000);

<recipetype:create:cutting>.addRecipe("mech_saw_barrels", <item:thermal:sawdust>*4, <item:minecraft:barrel>, 2);

// Chests
<recipetype:thermal:sawmill>.addRecipe("saw_chests", [<item:thermal:sawdust>*4 % 100], <tag:items:forge:chests/wooden>, 2000);

<recipetype:create:cutting>.addRecipe("mech_saw_chests", <item:thermal:sawdust>*4, <tag:items:forge:chests/wooden>, 2);

// Note Block
<recipetype:thermal:sawmill>.addRecipe("saw_note_block", [<item:thermal:sawdust>*4 % 100, <item:minecraft:redstone> % 50], <item:minecraft:note_block>, 2000);

<recipetype:create:cutting>.addRecipe("mech_saw_note_block", <item:thermal:sawdust>*6, <item:minecraft:note_block>, 2);

// Jukebox
<recipetype:thermal:sawmill>.addRecipe("saw_jukebox", [<item:thermal:sawdust>*4 % 100, <item:minecraft:diamond> % 50], <item:minecraft:jukebox>, 2000);

<recipetype:create:cutting>.addRecipe("mech_saw_jukebox", <item:thermal:sawdust>*5, <item:minecraft:jukebox>, 2);

// Boats
<recipetype:thermal:sawmill>.addRecipe("saw_boats", [<item:thermal:sawdust>*3 % 100], <tag:items:minecraft:boats>, 1250);

<recipetype:create:cutting>.addRecipe("mech_saw_boats", <item:thermal:sawdust>*3, <tag:items:minecraft:boats>, 1);

// Stairs
<recipetype:thermal:sawmill>.addRecipe("saw_stairs", [<item:thermal:sawdust>*4 % 100], <tag:items:minecraft:wooden_stairs>, 1500);

<recipetype:create:cutting>.addRecipe("mech_saw_stairs", <item:thermal:sawdust>*4, <tag:items:minecraft:wooden_stairs>, 1);

// Fences
<recipetype:thermal:sawmill>.addRecipe("saw_fences", [<item:thermal:sawdust>*2 % 100], <tag:items:forge:fences/wooden>, 1000);

<recipetype:create:cutting>.addRecipe("mech_saw_fences", <item:thermal:sawdust>*2, <tag:items:forge:fences/wooden>, 1);

// Fence Gates
<recipetype:thermal:sawmill>.addRecipe("saw_fence_gates", [<item:thermal:sawdust>*2 % 100, <item:minecraft:stick>*2 % 50], <tag:items:forge:fence_gates/wooden>, 1000);

<recipetype:create:cutting>.addRecipe("mech_saw_fence_gates", <item:thermal:sawdust>*4, <tag:items:forge:fence_gates/wooden>, 1);

// Trapdoors
<recipetype:thermal:sawmill>.addRecipe("saw_trapdoors", [<item:thermal:sawdust>*2 % 100], <tag:items:minecraft:wooden_trapdoors>, 1000);

<recipetype:create:cutting>.addRecipe("mech_saw_trapdoors", <item:thermal:sawdust>*2, <tag:items:minecraft:wooden_trapdoors>, 1);

// Doors
<recipetype:thermal:sawmill>.addRecipe("saw_doors", [<item:thermal:sawdust> % 100, <item:thermal:sawdust> % 50], <tag:items:minecraft:wooden_doors>, 1000);

<recipetype:create:cutting>.addRecipe("mech_saw_doors", <item:thermal:sawdust>*3, <tag:items:minecraft:wooden_doors>, 1);

// Slabs
<recipetype:thermal:sawmill>.addRecipe("saw_slabs", [<item:thermal:sawdust> % 100, <item:thermal:sawdust>*2 % 50], <tag:items:minecraft:wooden_slabs>, 1000);

<recipetype:create:cutting>.addRecipe("mech_saw_slabs", <item:thermal:sawdust>*2, <tag:items:minecraft:wooden_slabs>, 1);

// Signs
<recipetype:thermal:sawmill>.addRecipe("saw_signs", [<item:thermal:sawdust>*3 % 100, <item:minecraft:stick> % 50], <tag:items:minecraft:signs>, 1000);

<recipetype:create:cutting>.addRecipe("mech_saw_signs", <item:thermal:sawdust>*4, <tag:items:minecraft:signs>, 1);

// Pressure Plates
<recipetype:thermal:sawmill>.addRecipe("saw_pressure_plates", [<item:thermal:sawdust> % 100], <tag:items:minecraft:wooden_pressure_plates>, 750);

<recipetype:create:cutting>.addRecipe("mech_saw_pressure_plates", <item:thermal:sawdust>, <tag:items:minecraft:signs>, 1);

// Buttons
<recipetype:thermal:sawmill>.addRecipe("saw_buttons", [<item:thermal:sawdust> % 50], <tag:items:minecraft:wooden_buttons>, 500);

<recipetype:create:cutting>.addRecipe("mech_saw_buttons", <item:thermal:sawdust>, <tag:items:minecraft:wooden_buttons>, 1);

print("sawdust.zs loaded");