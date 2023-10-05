# Recycling recipes for Create's Mechanical Saw
print("crate_sawing.zs loading...");
/*
<recipetype:create:cutting>.addRecipe(String name, IItemStack output, IIngredient input, @Optional(100) int duration);
*/

val fiber = <item:kubejs:fibers>;
val hide = <item:kubejs:shredded_hide>;

val sawdust = <item:kubejs:sawdust>;

# Full blocks take 5 seconds, partial ones take 3, and items take 1 - 2

// Saw Leather gear
<recipetype:create:cutting>.addRecipe("saw_leather_helmet", hide*5, <item:minecraft:leather_helmet>.anyDamage(), 40);
<recipetype:create:cutting>.addRecipe("saw_leather_chestplate", hide*8, <item:minecraft:leather_chestplate>.anyDamage(), 40);
<recipetype:create:cutting>.addRecipe("saw_leather_leggings", hide*7, <item:minecraft:leather_leggings>.anyDamage(), 40);
<recipetype:create:cutting>.addRecipe("saw_leather_boots", hide*4, <item:minecraft:leather_boots>.anyDamage(), 40);

// Saw Books into Shredded Hide
<recipetype:create:cutting>.addRecipe("saw_book", hide, <item:minecraft:book>, 30);
<recipetype:create:cutting>.addRecipe("saw_book_and_quill", hide, <item:minecraft:writable_book>, 30);
<recipetype:create:cutting>.addRecipe("saw_written_book", hide, <item:minecraft:written_book>.anyDamage(), 30);

// Saw Name Tags into Fibers
<recipetype:create:cutting>.addRecipe("saw_name_tag", fiber*6, <item:minecraft:name_tag>, 20);

// Saw Witch Hat into Shredded Hide
<recipetype:create:cutting>.addRecipe("saw_witch_hat", hide*6, <item:biomemakeover:witch_hat>.anyDamage(), 30);


### Sawdust
# Full blocks take 5 seconds, partial ones are 3, misc/small things are 1 - 2
# 1 Plank = 1 Sawdust
# 2 Slabs = 1 Sawdust
# If an item uses metal to craft, put it in create_recycling.zs instead!

// Slabs
<recipetype:create:cutting>.addRecipe("saw_slabs", sawdust*3, <tag:items:minecraft:wooden_slabs>, 50);

// Armour Stand
// You lose the slab, but oh well
<recipetype:create:cutting>.addRecipe("saw_stand", sawdust*3, <item:minecraft:armor_stand>, 60);

// Fences & Gates
// Fences would give ~1.6
<recipetype:create:cutting>.addRecipe("saw_fences", sawdust, <tag:items:forge:fences/wooden>, 60);
<recipetype:create:cutting>.addRecipe("saw_fence_gates", sawdust*3, <tag:items:forge:fence_gates/wooden>, 60);

// Trapdoors
<recipetype:create:cutting>.addRecipe("saw_trapdoors", sawdust*3, <tag:items:minecraft:wooden_trapdoors>, 40);

// Doors
<recipetype:create:cutting>.addRecipe("saw_doors", sawdust*2, <tag:items:minecraft:wooden_doors>, 60);

// Chests
<recipetype:create:cutting>.addRecipe("saw_chests", sawdust*8, <tag:items:forge:chests/wooden>, 100);

// Barrels
<recipetype:create:cutting>.addRecipe("saw_barrels", sawdust*7, <item:minecraft:barrel>, 100);

// Crafting Tables
<recipetype:create:cutting>.addRecipe("saw_workbench", sawdust*4, <item:minecraft:crafting_table>, 100);

// Note Block
<recipetype:create:cutting>.addRecipe("saw_note_block", sawdust*8, <item:minecraft:note_block>, 100);

// Jukebox
<recipetype:create:cutting>.addRecipe("saw_jukebox", sawdust*8, <item:minecraft:jukebox>, 100);

// Stairs
// Would be 1.5, but I rounded it up
<recipetype:create:cutting>.addRecipe("saw_stairs", sawdust*2, <tag:items:minecraft:wooden_stairs>, 80);

// Signs
// Would be ~2.1 due to the stick, but I rounded it down
<recipetype:create:cutting>.addRecipe("saw_signs", sawdust*2, <tag:items:minecraft:signs>, 20);

// Pressure Plates
<recipetype:create:cutting>.addRecipe("saw_pressure_plates", sawdust*2, <tag:items:minecraft:wooden_pressure_plates>, 20);

// Buttons
<recipetype:create:cutting>.addRecipe("saw_buttons", sawdust, <tag:items:minecraft:wooden_buttons>, 20);

// Boats
<recipetype:create:cutting>.addRecipe("saw_boats", sawdust*5, <tag:items:minecraft:boats>, 60);

// Hand Crank
<recipetype:create:cutting>.addRecipe("saw_hand_crank", sawdust*3, <item:create:hand_crank>, 40);


# Profession Tables
# The rest are in create_recycling.zs
// Cartography Table
// Paper is lost, but oh well
<recipetype:create:cutting>.addRecipe("saw_cartography_table", sawdust*4, <item:minecraft:lectern>, 100);

// Composter
// Gives 3.5, but I rounded it down
<recipetype:create:cutting>.addRecipe("saw_composter", sawdust*3, <item:minecraft:composter>, 60);

// Lectern
<recipetype:create:cutting>.addRecipe("saw_lectern", sawdust*8, <item:minecraft:lectern>, 60);

print("create_sawing.zs loaded");