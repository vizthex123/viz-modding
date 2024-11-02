# Adds recipes to saw things into Sawdust

import crafttweaker.api.tag.MCTag;

print("sawdust.zs loading...");
/*
<recipetype:thermal:sawmill>.addRecipe(String name, MCWeightedItemStack[] outputs, IIngredient ingredient, int energy);

<recipetype:create:cutting>.addRecipe(String name, IItemStack output, IIngredient input, @Optional(100) int duration);
*/

val sawdust = <item:thermal:sawdust>;
val spider_string = <item:minecraft:string>;

# Saw wooden stuff into Sawdust
# Sawdust value is equal to panks used (slabs & sticks count as 0.5 and 0.25 respectively)
# Full blocks take 2k RF, all else is 1k (except when it's not, lol)
# For mech saw recipes, full blocks take 5 seconds, partial ones take 3, and items take 1 - 2
# Mechanical Saw gives 50% more sawdust, rounded down

// Bowls
<recipetype:thermal:sawmill>.addRecipe("saw_bowl", [sawdust % 75], <item:minecraft:bowl>, 500);
<recipetype:create:cutting>.addRecipe("mech_saw_bowl", sawdust, <item:minecraft:bowl>, 1);

// Torches
<recipetype:thermal:sawmill>.addRecipe("saw_torch", [sawdust % 5], <tag:items:quintessence:torch>, 750);

// Chests
<recipetype:thermal:sawmill>.addRecipe("saw_chests", [sawdust*8], <tag:items:forge:chests/wooden>, 2000);
<recipetype:create:cutting>.addRecipe("mech_saw_chests", sawdust*12, <tag:items:forge:chests/wooden>, 5);

// Barrels
<recipetype:thermal:sawmill>.addRecipe("saw_barrels", [sawdust*7, sawdust % 50], <item:minecraft:barrel>, 2000);
<recipetype:create:cutting>.addRecipe("mech_saw_barrels", sawdust*10, <item:minecraft:barrel>, 5);

// Composter
<recipetype:thermal:sawmill>.addRecipe("saw_composter", [sawdust*3, sawdust % 50], <item:minecraft:composter>, 2000);
<recipetype:create:cutting>.addRecipe("mech_saw_composter", sawdust*5, <item:minecraft:composter>, 5);

// Crafting Tables
<recipetype:thermal:sawmill>.addRecipe("saw_workbench", [sawdust*4], <tag:items:forge:workbenches>, 2000);
<recipetype:create:cutting>.addRecipe("mech_saw_workbench", sawdust*6, <tag:items:forge:workbenches>, 5);

// Note Block
<recipetype:thermal:sawmill>.addRecipe("saw_note_block", [sawdust*8, <item:minecraft:redstone> % 50], <item:minecraft:note_block>, 2000);
<recipetype:create:cutting>.addRecipe("mech_saw_note_block", sawdust*12, <item:minecraft:note_block>, 5);

// Jukebox
<recipetype:thermal:sawmill>.addRecipe("saw_jukebox", [sawdust*8, <item:minecraft:diamond> % 75], <item:minecraft:jukebox>, 2000);
<recipetype:create:cutting>.addRecipe("mech_saw_jukebox", sawdust*12, <item:minecraft:jukebox>, 5);

// Lectern
<recipetype:thermal:sawmill>.addRecipe("saw_lectern", [sawdust*8], <item:minecraft:lectern>, 2000);
<recipetype:create:cutting>.addRecipe("mech_saw_lectern", sawdust*12, <item:minecraft:lectern>, 5);

// Loom
<recipetype:thermal:sawmill>.addRecipe("saw_loom", [sawdust*2, spider_string % 50], <item:minecraft:loom>, 2000);
<recipetype:create:cutting>.addRecipe("mech_saw_loom", sawdust*3, <item:minecraft:loom>, 5);

// Cartography Table
<recipetype:thermal:sawmill>.addRecipe("saw_cartography_table", [sawdust*4, <item:minecraft:paper> % 50], <item:minecraft:cartography_table>, 2000);
<recipetype:create:cutting>.addRecipe("mech_saw_cartography_table", sawdust*6, <item:minecraft:cartography_table>, 5);

// Fletching Table
<recipetype:thermal:sawmill>.addRecipe("saw_fletching_table", [sawdust*4], <item:minecraft:fletching_table>, 2000);
<recipetype:create:cutting>.addRecipe("mech_saw_fletching_table", sawdust*6, <item:minecraft:fletching_table>, 5);

// Smithing Table
<recipetype:thermal:sawmill>.addRecipe("saw_smithing_table", [sawdust*4, <item:kubejs:small_iron_scrap>*2 % 50], <item:minecraft:smithing_table>, 2000);
<recipetype:create:cutting>.addRecipe("mech_saw_smithing_table", sawdust*6, <item:minecraft:smithing_table>, 5);

// Stairs
<recipetype:thermal:sawmill>.addRecipe("saw_stairs", [sawdust, sawdust % 50], <tag:items:minecraft:wooden_stairs>, 1500);
<recipetype:create:cutting>.addRecipe("mech_saw_stairs", sawdust, <tag:items:minecraft:wooden_stairs>, 3);

// Fences & Gates
<recipetype:thermal:sawmill>.addRecipe("saw_fences", [sawdust, sawdust % 66], <tag:items:forge:fences/wooden>, 1000);
<recipetype:create:cutting>.addRecipe("mech_saw_fences", sawdust*2, <tag:items:forge:fences/wooden>, 2);
<recipetype:thermal:sawmill>.addRecipe("saw_fence_gates", [sawdust*3], <tag:items:forge:fence_gates/wooden>, 1250);
<recipetype:create:cutting>.addRecipe("mech_saw_fence_gates", sawdust*4, <tag:items:forge:fence_gates/wooden>, 2);

// Trapdoors
<recipetype:thermal:sawmill>.addRecipe("saw_trapdoors", [sawdust*3], <tag:items:minecraft:wooden_trapdoors>, 1500);
<recipetype:create:cutting>.addRecipe("mech_saw_trapdoors", sawdust*4, <tag:items:minecraft:wooden_trapdoors>, 3);

// Doors
<recipetype:thermal:sawmill>.addRecipe("saw_doors", [sawdust*2], <tag:items:minecraft:wooden_doors>, 1500);
<recipetype:create:cutting>.addRecipe("mech_saw_doors", sawdust*2, <tag:items:minecraft:wooden_doors>, 3);

// Slabs
<recipetype:thermal:sawmill>.addRecipe("saw_slabs", [sawdust % 50], <tag:items:minecraft:wooden_slabs>, 1000);
<recipetype:create:cutting>.addRecipe("mech_saw_slabs", sawdust, <tag:items:minecraft:wooden_slabs>, 2);

// Boats
<recipetype:thermal:sawmill>.addRecipe("saw_boats", [sawdust*5], <tag:items:minecraft:boats>, 1250);
<recipetype:create:cutting>.addRecipe("mech_saw_boats", sawdust*7, <tag:items:minecraft:boats>, 3);

// Signs
<recipetype:thermal:sawmill>.addRecipe("saw_signs", [sawdust*2], <tag:items:minecraft:signs>, 1000);
<recipetype:create:cutting>.addRecipe("mech_saw_signs", sawdust*3, <tag:items:minecraft:signs>, 1);

// Pressure Plates
<recipetype:thermal:sawmill>.addRecipe("saw_pressure_plates", [sawdust*2], <tag:items:minecraft:wooden_pressure_plates>, 750);
<recipetype:create:cutting>.addRecipe("mech_saw_pressure_plates", sawdust*3, <tag:items:minecraft:wooden_pressure_plates>, 1);

// Buttons
<recipetype:thermal:sawmill>.addRecipe("saw_buttons", [sawdust], <tag:items:minecraft:wooden_buttons>, 500);
<recipetype:create:cutting>.addRecipe("mech_saw_buttons", sawdust, <tag:items:minecraft:wooden_buttons>, 1);

// Wooden Tools
<recipetype:thermal:sawmill>.addRecipe("saw_wood_tools", [sawdust*2, sawdust % 50], <tag:items:quintessence:wooden_tool>.asIIngredient().anyDamage(), 500);
<recipetype:create:cutting>.addRecipe("mech_saw_wood_tools", sawdust*3, <tag:items:quintessence:wooden_tool>.asIIngredient().anyDamage(), 1);


### Modded Stuff ###
// Wooden Paxel
<recipetype:thermal:sawmill>.addRecipe("saw_paxel", [sawdust*7], <item:easypaxellite:wood_paxel>, 750);
<recipetype:create:cutting>.addRecipe("mech_saw_paxel", sawdust*10, <item:easypaxellite:wood_paxel>, 2);

// Wooden Bracket
<recipetype:thermal:sawmill>.addRecipe("saw_bracket", [sawdust*2, sawdust % 50], <item:create:wooden_bracket>, 1000);
<recipetype:create:cutting>.addRecipe("mech_saw_bracket", sawdust*3, <item:create:wooden_bracket>, 3);

// Wooden Hopper
<recipetype:thermal:sawmill>.addRecipe("saw_wooden_hopper", [sawdust*5], <item:woodenhopper:wooden_hopper>, 1000);
<recipetype:create:cutting>.addRecipe("mech_saw_wooden_hopper", sawdust*7, <item:woodenhopper:wooden_hopper>, 2);

print("sawdust.zs loaded");