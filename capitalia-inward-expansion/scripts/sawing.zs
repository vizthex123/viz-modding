# Recycling recipes for Create's Mechanical Saw
print("sawing.zs loading...");
/*
<recipetype:create:cutting>.addRecipe(String name, IItemStack output, IIngredient input, @Optional(100) int duration);
*/

val leather = <item:minecraft:leather>;
val spider_string = <item:minecraft:string>;

val sawdust = <item:kubejs:sawdust>;

// Saw Leather gear
<recipetype:create:cutting>.addRecipe("saw_leather_helmet", leather*3, <item:minecraft:leather_helmet>, 3);
<recipetype:create:cutting>.addRecipe("saw_leather_chestplate", leather*4, <item:minecraft:leather_chestplate>, 3);
<recipetype:create:cutting>.addRecipe("saw_leather_leggings", leather*4, <item:minecraft:leather_leggings>, 3);
<recipetype:create:cutting>.addRecipe("saw_leather_boots", leather*2, <item:minecraft:leather_boots>, 3);

// Saw Books into Leather
<recipetype:create:cutting>.addRecipe("saw_book", leather, <item:minecraft:book>, 1);
<recipetype:create:cutting>.addRecipe("saw_book_and_quill", leather, <item:minecraft:writable_book>, 1);
<recipetype:create:cutting>.addRecipe("saw_written_book", leather, <item:minecraft:written_book>.anyDamage(), 1);

// Saw Name Tags into String
<recipetype:create:cutting>.addRecipe("saw_name_tag", spider_string*2, <item:minecraft:name_tag>, 1);


### Sawdust
# Full blocks take 5 seconds, partial ones are 3, misc/small things are 1 - 2
# 1 Plank = 1 Sawdust
# 2 Slabs = 1 Sawdust

// Armour Stand
<recipetype:create:cutting>.addRecipe("saw_stand", sawdust*3, <item:minecraft:armor_stand>, 3);

// Beds
<recipetype:create:cutting>.addRecipe("saw_beds", sawdust*3, <tag:items:minecraft:beds>, 5);

// Slabs
<recipetype:create:cutting>.addRecipe("saw_slabs", sawdust*3, <tag:items:minecraft:wooden_slabs>, 2);

// Doors
<recipetype:create:cutting>.addRecipe("saw_doors", sawdust*2, <tag:items:minecraft:wooden_doors>, 3);

// Fences & Gates
<recipetype:create:cutting>.addRecipe("saw_fences", sawdust, <tag:items:forge:fences/wooden>, 2);
<recipetype:create:cutting>.addRecipe("saw_fence_gates", sawdust*2, <tag:items:forge:fence_gates/wooden>, 2);

// Trapdoors
<recipetype:create:cutting>.addRecipe("saw_trapdoors", sawdust*3, <tag:items:minecraft:wooden_trapdoors>, 2);

// Chests
<recipetype:create:cutting>.addRecipe("saw_chests", sawdust*8, <tag:items:forge:chests/wooden>, 5);

// Barrels
<recipetype:create:cutting>.addRecipe("saw_barrels", sawdust*7, <item:minecraft:barrel>, 5);

// Crafting Tables
<recipetype:create:cutting>.addRecipe("saw_workbench", sawdust*4, <item:minecraft:crafting_table>, 5);

// Note Block
<recipetype:create:cutting>.addRecipe("saw_note_block", sawdust*8, <item:minecraft:note_block>, 5);

// Jukebox
<recipetype:create:cutting>.addRecipe("saw_jukebox", sawdust*8, <item:minecraft:jukebox>, 5);

// Lectern
<recipetype:create:cutting>.addRecipe("saw_lectern", sawdust*10, <item:minecraft:lectern>, 4);

// Boats
<recipetype:create:cutting>.addRecipe("saw_boats", sawdust*5, <tag:items:minecraft:boats>, 3);

// Stairs
// Would be 1.5 Sawdust (since 6/4 = 1.5), but I rounded it up
<recipetype:create:cutting>.addRecipe("saw_stairs", sawdust*2, <tag:items:minecraft:wooden_stairs>, 2);

// Signs
<recipetype:create:cutting>.addRecipe("mech_saw_signs", sawdust*2, <tag:items:minecraft:signs>, 1);

// Pressure Plates
<recipetype:create:cutting>.addRecipe("saw_pressure_plates", sawdust, <tag:items:minecraft:wooden_pressure_plates>, 1);

// Buttons
<recipetype:create:cutting>.addRecipe("saw_buttons", <item:minecraft:stick>*4, <tag:items:minecraft:wooden_buttons>, 1);



# Profession Tables
// Cartography
<recipetype:create:cutting>.addRecipe("saw_cartography_table", sawdust*4, <item:minecraft:cartography_table>, 5);

// Fletching
<recipetype:create:cutting>.addRecipe("saw_fletching_table", sawdust*4, <item:minecraft:fletching_table>, 5);

// Smithing
<recipetype:create:cutting>.addRecipe("saw_smithing_table", sawdust*4, <item:minecraft:smithing_table>, 5);

// Composter
<recipetype:create:cutting>.addRecipe("saw_composter", sawdust*5, <item:minecraft:composter>, 3);

// Loom
<recipetype:create:cutting>.addRecipe("saw_loom", sawdust*2, <item:minecraft:loom>, 5);



# Misc Items

// Bows
<recipetype:create:cutting>.addRecipe("saw_bow", sawdust, <item:minecraft:bow>.anyDamage(), 1);

// Crossbows
<recipetype:create:cutting>.addRecipe("saw_crossbow", sawdust*2, <item:minecraft:crossbow>.anyDamage()|<item:additionaladditions:crossbow_with_spyglass>.anyDamage(), 1);

// Hand Crank
<recipetype:create:cutting>.addRecipe("saw_hand_crank", sawdust*3, <item:create:hand_crank>, 2);

// Glow Sticks
<recipetype:create:cutting>.addRecipe("saw_glowstick", sawdust, <item:additionaladditions:glow_stick>, 1);

// Ropes
<recipetype:create:cutting>.addRecipe("saw_rope", spider_string, <item:additionaladditions:rope>, 1);

print("sawing.zs loaded");