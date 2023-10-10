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
<recipetype:create:cutting>.addRecipe("saw_cartography_table", sawdust*4, <item:minecraft:cartography_table>, 100);

// Composter
// Gives 3.5, but I rounded it down
<recipetype:create:cutting>.addRecipe("saw_composter", sawdust*3, <item:minecraft:composter>, 60);

// Lectern
<recipetype:create:cutting>.addRecipe("saw_lectern", sawdust*8, <item:minecraft:lectern>, 60);



# Log Sawing
<recipetype:create:cutting>.addRecipe("cut_blighted_balsa", <item:biomemakeover:stripped_blighted_balsa_log>, <item:biomemakeover:blighted_balsa_log>);
<recipetype:create:cutting>.addRecipe("cut_willow", <item:biomemakeover:stripped_willow_log>, <item:biomemakeover:willow_log>);
<recipetype:create:cutting>.addRecipe("cut_swamp_cypress", <item:biomemakeover:stripped_swamp_cypress_log>, <item:biomemakeover:swamp_cypress_log>);
<recipetype:create:cutting>.addRecipe("cut_ancient_oak", <item:biomemakeover:stripped_ancient_oak_log>, <item:biomemakeover:ancient_oak_log>);

<recipetype:create:cutting>.addRecipe("cut_stripped_blighted_balsa", <item:biomemakeover:blighted_balsa_planks>*6, <item:biomemakeover:stripped_blighted_balsa_log>);
<recipetype:create:cutting>.addRecipe("cut_stripped_willow", <item:biomemakeover:willow_planks>*6, <item:biomemakeover:stripped_willow_log>);
<recipetype:create:cutting>.addRecipe("cut_stripped_swamp_cypress", <item:biomemakeover:swamp_cypress_planks>*6, <item:biomemakeover:stripped_swamp_cypress_log>);
<recipetype:create:cutting>.addRecipe("cut_stripped_ancient_oak", <item:biomemakeover:ancient_oak_planks>*6, <item:biomemakeover:stripped_ancient_oak_log>);



<recipetype:create:cutting>.addRecipe("cut_blighted_balsa_wood", <item:biomemakeover:stripped_blighted_balsa_wood>, <item:biomemakeover:blighted_balsa_wood>);
<recipetype:create:cutting>.addRecipe("cut_willow_wood", <item:biomemakeover:stripped_willow_wood>, <item:biomemakeover:willow_wood>);
<recipetype:create:cutting>.addRecipe("cut_swamp_cypress_wood", <item:biomemakeover:stripped_swamp_cypress_wood>, <item:biomemakeover:swamp_cypress_wood>);
<recipetype:create:cutting>.addRecipe("cut_ancient_oak_wood", <item:biomemakeover:stripped_ancient_oak_wood>, <item:biomemakeover:ancient_oak_wood>);

<recipetype:create:cutting>.addRecipe("cut_stripped_blighted_balsa_wood", <item:biomemakeover:blighted_balsa_planks>*6, <item:biomemakeover:stripped_blighted_balsa_wood>);
<recipetype:create:cutting>.addRecipe("cut_stripped_willow_wood", <item:biomemakeover:willow_planks>*6, <item:biomemakeover:stripped_willow_wood>);
<recipetype:create:cutting>.addRecipe("cut_stripped_swamp_cypress_wood", <item:biomemakeover:swamp_cypress_planks>*6, <item:biomemakeover:stripped_swamp_cypress_wood>);
<recipetype:create:cutting>.addRecipe("cut_stripped_ancient_oak_wood", <item:biomemakeover:ancient_oak_planks>*6, <item:biomemakeover:stripped_ancient_oak_wood>);



<recipetype:create:cutting>.addRecipe("cut_indigo", <item:enlightened_end:stripped_indigo_stem>, <item:enlightened_end:indigo_stem>);
<recipetype:create:cutting>.addRecipe("cut_stripped_indigo", <item:enlightened_end:indigo_planks>*6, <item:enlightened_end:stripped_indigo_stem>);

<recipetype:create:cutting>.addRecipe("cut_indigo_hyphae", <item:enlightened_end:stripped_indigo_hyphae>, <item:enlightened_end:indigo_hyphae>);
<recipetype:create:cutting>.addRecipe("cut_stripped_indigo_hyphae", <item:enlightened_end:indigo_planks>*6, <item:enlightened_end:stripped_indigo_hyphae>);

<recipetype:create:cutting>.addRecipe("cut_cerulean_stalk", <item:enlightened_end:stripped_cerulean_stalk_block>, <item:enlightened_end:cerulean_log>);
<recipetype:create:cutting>.addRecipe("cut_stripped_cerulean_stalk", <item:enlightened_end:cerulean_planks>*6, <item:enlightened_end:stripped_cerulean_stalk_block>);


<recipetype:create:cutting>.addRecipe("cut_silver_birch", <item:silverbirch:stripped_silver_birch_log>, <item:silverbirch:silver_birch_log>);
<recipetype:create:cutting>.addRecipe("cut_silver_birch_wood", <item:silverbirch:stripped_silver_birch_wood>, <item:silverbirch:silver_birch_wood>);

<recipetype:create:cutting>.addRecipe("cut_stripped_silver_birch", <item:silverbirch:silver_birch_planks>*6, <item:silverbirch:stripped_silver_birch_log>);
<recipetype:create:cutting>.addRecipe("cut_stripped_silver_birch_wood", <item:silverbirch:silver_birch_planks>*6, <item:silverbirch:stripped_silver_birch_wood>);

	// Hollow
	// Only gives 4 due to most of the log being absent
<recipetype:create:cutting>.addRecipe("cut_hollow_oak", <item:minecraft:oak_planks>*4, <item:quark:hollow_oak_log>);
<recipetype:create:cutting>.addRecipe("cut_hollow_spruce", <item:minecraft:spruce_planks>*4, <item:quark:hollow_spruce_log>);
<recipetype:create:cutting>.addRecipe("cut_hollow_birch", <item:minecraft:birch_planks>*4, <item:quark:hollow_birch_log>);
<recipetype:create:cutting>.addRecipe("cut_hollow_jungle", <item:minecraft:jungle_planks>*4, <item:quark:hollow_jungle_log>);
<recipetype:create:cutting>.addRecipe("cut_hollow_acacia", <item:minecraft:acacia_planks>*4, <item:quark:hollow_acacia_log>);
<recipetype:create:cutting>.addRecipe("cut_hollow_dark_oak", <item:minecraft:dark_oak_planks>*4, <item:quark:hollow_dark_oak_log>);
<recipetype:create:cutting>.addRecipe("cut_hollow_mangrove", <item:minecraft:mangrove_planks>*4, <item:quark:hollow_mangrove_log>);
<recipetype:create:cutting>.addRecipe("cut_hollow_crimson", <item:minecraft:crimson_planks>*4, <item:quark:hollow_crimson_stem>);
<recipetype:create:cutting>.addRecipe("cut_hollow_warped", <item:minecraft:warped_planks>*4, <item:quark:hollow_warped_stem>);

<recipetype:create:cutting>.addRecipe("cut_hollow_ancient", <item:quark:ancient_planks>*4, <item:quark:hollow_ancient_log>);
<recipetype:create:cutting>.addRecipe("cut_hollow_azalea", <item:quark:azalea_planks>*4, <item:quark:hollow_azalea_log>);
<recipetype:create:cutting>.addRecipe("cut_hollow_blossom", <item:quark:blossom_planks>*4, <item:quark:hollow_blossom_log>);

<recipetype:create:cutting>.addRecipe("cut_hollow_silver", <item:silverbirch:silver_birch_planks>*4, <item:silverbirch:hollow_log>);


print("create_sawing.zs loaded");