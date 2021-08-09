# Adds low value (1 - 25) AMC tags to various items. Loads before everything else.
#priority 20

import crafttweaker.api.tag.MCTag;

print("1-low_amc.zs loading...");

/*
<tag:items:amc-value:>.add(<item:>);

Minimal is 1 - 25 AMC
*/

# Complicated magic that DShadowWolf told me on the CraftTweaker Discord
# https://discord.com/channels/136877912698650625/354745056743260172/875145119639175168
# But like, it adds tags to things with a tag. Pretty pog.
val wool = <tag:items:minecraft:wool>;
val rockwool = <tag:items:thermal:rockwool>;
val amc16 = <tag:items:amc-value:16>;
val amc4 = <tag:items:amc-value:4>;

for item in wool.elements {
   amc16.add(wool);
}

for item in rockwool.elements {
   amc4.add(rockwool);
}

# Alchemical Crystals
# Tooltips added in tooltips_amc.zs
<tag:items:amc-value:0.25>.add(<item:contenttweaker:amc_crystal_miniscule>);
<tag:items:amc-value:1>.add(<item:contenttweaker:amc_crystal_tiny>);
<tag:items:amc-value:2>.add(<item:contenttweaker:amc_crystal_small>);
<tag:items:amc-value:5>.add(<item:contenttweaker:amc_crystal_large>);

# Decimal values
<tag:items:amc-value:1.25>.add(<item:minecraft:lever>);
<tag:items:amc-value:1.5>.add(<item:minecraft:oak_fence>);
<tag:items:amc-value:1.5>.add(<item:minecraft:spruce_fence>);
<tag:items:amc-value:1.5>.add(<item:minecraft:birch_fence>);
<tag:items:amc-value:1.5>.add(<item:minecraft:jungle_fence>);
<tag:items:amc-value:1.5>.add(<item:minecraft:acacia_fence>);
<tag:items:amc-value:1.5>.add(<item:minecraft:dark_oak_fence>);

<tag:items:amc-value:1.5>.add(<item:minecraft:oak_stairs>);
<tag:items:amc-value:1.5>.add(<item:minecraft:spruce_stairs>);
<tag:items:amc-value:1.5>.add(<item:minecraft:birch_stairs>);
<tag:items:amc-value:1.5>.add(<item:minecraft:jungle_stairs>);
<tag:items:amc-value:1.5>.add(<item:minecraft:acacia_stairs>);
<tag:items:amc-value:1.5>.add(<item:minecraft:dark_oak_stairs>);

<tag:items:amc-value:1.5>.add(<item:minecraft:stone_stairs>);
<tag:items:amc-value:1.5>.add(<item:minecraft:cobblestone_stairs>);
<tag:items:amc-value:1.5>.add(<item:minecraft:stone_brick_stairs>);

<tag:items:amc-value:1.5>.add(<item:minecraft:andesite_stairs>);
<tag:items:amc-value:1.5>.add(<item:minecraft:granite_stairs>);
<tag:items:amc-value:1.5>.add(<item:minecraft:diorite_stairs>);

<tag:items:amc-value:1.5>.add(<item:minecraft:polished_andesite_stairs>);
<tag:items:amc-value:1.5>.add(<item:minecraft:polished_granite_stairs>);
<tag:items:amc-value:1.5>.add(<item:minecraft:polished_diorite_stairs>);


<tag:items:amc-value:2.083>.add(<item:minecraft:oak_sign>);
<tag:items:amc-value:2.083>.add(<item:minecraft:spruce_sign>);
<tag:items:amc-value:2.083>.add(<item:minecraft:birch_sign>);
<tag:items:amc-value:2.083>.add(<item:minecraft:jungle_sign>);
<tag:items:amc-value:2.083>.add(<item:minecraft:acacia_sign>);
<tag:items:amc-value:2.083>.add(<item:minecraft:dark_oak_sign>);

<tag:items:amc-value:5.333>.add(<item:minecraft:oak_wood>);
<tag:items:amc-value:5.333>.add(<item:minecraft:spruce_wood>);
<tag:items:amc-value:5.333>.add(<item:minecraft:birch_wood>);
<tag:items:amc-value:5.333>.add(<item:minecraft:jungle_wood>);
<tag:items:amc-value:5.333>.add(<item:minecraft:acacia_wood>);
<tag:items:amc-value:5.333>.add(<item:minecraft:dark_oak_wood>);

val carpet = <tag:items:minecraft:carpets>;
val amc10 = <tag:items:amc-value:10.666>;

for item in carpet.elements {
   amc10.add(carpet);
}

<tag:items:amc-value:10.666>.add(<item:minecraft:crimson_hyphae>);
<tag:items:amc-value:10.666>.add(<item:minecraft:stripped_crimson_hyphae>);
<tag:items:amc-value:10.666>.add(<item:minecraft:stripped_warped_hyphae>);
<tag:items:amc-value:10.666>.add(<item:minecraft:warped_hyphae>);







// 1 AMC
val stone = <tag:items:forge:stone>;
val sand = <tag:items:forge:sand>;
val glass = <tag:items:forge:stained_glass>;
val amc1 = <tag:items:amc-value:1>;

for item in stone.elements {
   amc1.add(stone);
}

for item in sand.elements {
   amc1.add(sand);
}

for item in glass.elements {
   amc1.add(glass);
}

<tag:items:amc-value:1>.add(<item:minecraft:scaffolding>); // Should be 0.916666667, but nah

<tag:items:amc-value:1>.add(<item:minecraft:glass>);
<tag:items:amc-value:1>.add(<item:minecraft:packed_ice>);
<tag:items:amc-value:1>.add(<item:minecraft:blue_ice>);
<tag:items:amc-value:1>.add(<item:minecraft:ice>);
<tag:items:amc-value:1>.add(<item:minecraft:snow_block>);

<tag:items:amc-value:1>.add(<item:minecraft:cobblestone_wall>);
<tag:items:amc-value:1>.add(<item:minecraft:cobblestone>);
<tag:items:amc-value:1>.add(<item:minecraft:smooth_stone>);
<tag:items:amc-value:1>.add(<item:minecraft:stone_bricks>);
<tag:items:amc-value:1>.add(<item:minecraft:stone_brick_wall>);
<tag:items:amc-value:1>.add(<item:minecraft:cracked_stone_bricks>);
<tag:items:amc-value:1>.add(<item:minecraft:stone_brick_slab>);

<tag:items:amc-value:1>.add(<item:minecraft:dirt>);
<tag:items:amc-value:1>.add(<item:minecraft:grass_path>);
<tag:items:amc-value:1>.add(<item:minecraft:grass_block>);
<tag:items:amc-value:1>.add(<item:minecraft:mycelium>);
<tag:items:amc-value:1>.add(<item:minecraft:podzol>);

<tag:items:amc-value:1>.add(<item:minecraft:oak_planks>);
<tag:items:amc-value:1>.add(<item:minecraft:spruce_planks>);
<tag:items:amc-value:1>.add(<item:minecraft:birch_planks>);
<tag:items:amc-value:1>.add(<item:minecraft:jungle_planks>);
<tag:items:amc-value:1>.add(<item:minecraft:acacia_planks>);
<tag:items:amc-value:1>.add(<item:minecraft:dark_oak_planks>);

<tag:items:amc-value:1>.add(<item:minecraft:stone_button>);
<tag:items:amc-value:1>.add(<item:minecraft:oak_button>);
<tag:items:amc-value:1>.add(<item:minecraft:spruce_button>);
<tag:items:amc-value:1>.add(<item:minecraft:birch_button>);
<tag:items:amc-value:1>.add(<item:minecraft:jungle_button>);
<tag:items:amc-value:1>.add(<item:minecraft:acacia_button>);
<tag:items:amc-value:1>.add(<item:minecraft:dark_oak_button>);

<tag:items:amc-value:1>.add(<item:minecraft:crimson_roots>);
<tag:items:amc-value:1>.add(<item:minecraft:warped_roots>);
<tag:items:amc-value:1>.add(<item:minecraft:nether_sprouts>);

<tag:items:amc-value:1>.add(<item:minecraft:crimson_slab>);
<tag:items:amc-value:1>.add(<item:minecraft:warped_slab>);

<tag:items:amc-value:1>.add(<item:minecraft:andesite_wall>);
<tag:items:amc-value:1>.add(<item:minecraft:granite_wall>);
<tag:items:amc-value:1>.add(<item:minecraft:diorite_wall>);

<tag:items:amc-value:1>.add(<item:minecraft:glass_bottle>);


// 2 AMC
# Todo: The rest of the nether brick stuff
<tag:items:amc-value:2>.add(<item:minecraft:warped_button>);
<tag:items:amc-value:2>.add(<item:minecraft:crimson_button>);
<tag:items:amc-value:2>.add(<item:minecraft:armor_stand>);

<tag:items:amc-value:2>.add(<item:minecraft:chiseled_stone_bricks>);
<tag:items:amc-value:2>.add(<item:minecraft:sandstone_slab>);
<tag:items:amc-value:2>.add(<item:minecraft:sandstone_wall>);
<tag:items:amc-value:2>.add(<item:minecraft:cut_sandstone_slab>);
<tag:items:amc-value:2>.add(<item:minecraft:smooth_sandstone_slab>);

<tag:items:amc-value:2>.add(<item:minecraft:red_sandstone_slab>);
<tag:items:amc-value:2>.add(<item:minecraft:red_sandstone_wall>);
<tag:items:amc-value:2>.add(<item:minecraft:cut_red_sandstone_slab>);
<tag:items:amc-value:2>.add(<item:minecraft:smooth_red_sandstone_slab>);

<tag:items:amc-value:2>.add(<item:oddwatermobs:deep_sandstone_wall>);
<tag:items:amc-value:2>.add(<item:oddwatermobs:deep_sandstone_slab>);
<tag:items:amc-value:2>.add(<item:oddwatermobs:cut_deep_sandstone_slab>);
<tag:items:amc-value:2>.add(<item:oddwatermobs:smooth_deep_sandstone_slab>);
<tag:items:amc-value:2>.add(<item:oddwatermobs:deep_sandstone_stairs>);
<tag:items:amc-value:2>.add(<item:oddwatermobs:smooth_deep_sandstone_stairs>);

<tag:items:amc-value:2>.add(<item:minecraft:netherrack>);
<tag:items:amc-value:2>.add(<item:minecraft:nether_brick>);

<tag:items:amc-value:2>.add(<item:minecraft:oak_sapling>);
<tag:items:amc-value:2>.add(<item:minecraft:spruce_sapling>);
<tag:items:amc-value:2>.add(<item:minecraft:birch_sapling>);
<tag:items:amc-value:2>.add(<item:minecraft:jungle_sapling>);
<tag:items:amc-value:2>.add(<item:minecraft:acacia_sapling>);
<tag:items:amc-value:2>.add(<item:minecraft:dark_oak_sapling>);
<tag:items:amc-value:2>.add(<item:minecraft:melon_slice>);
<tag:items:amc-value:2>.add(<item:minecraft:dead_bush>);
<tag:items:amc-value:2>.add(<item:minecraft:tall_grass>);
<tag:items:amc-value:2>.add(<item:minecraft:large_fern>);
<tag:items:amc-value:2>.add(<item:minecraft:grass>);
<tag:items:amc-value:2>.add(<item:minecraft:fern>);
<tag:items:amc-value:2>.add(<item:minecraft:weeping_vines>);
<tag:items:amc-value:2>.add(<item:minecraft:twisting_vines>);

<tag:items:amc-value:2>.add(<item:minecraft:crimson_planks>);
<tag:items:amc-value:2>.add(<item:minecraft:warped_planks>);

<tag:items:amc-value:2>.add(<item:minecraft:crimson_nylium>);
<tag:items:amc-value:2>.add(<item:minecraft:warped_nylium>);

<tag:items:amc-value:2>.add(<item:minecraft:blackstone_slab>);
<tag:items:amc-value:2>.add(<item:minecraft:end_stone_brick_slab>);
<tag:items:amc-value:2>.add(<item:minecraft:polished_blackstone_slab>);
<tag:items:amc-value:2>.add(<item:minecraft:polished_blackstone_brick_slab>);
<tag:items:amc-value:2>.add(<item:minecraft:cracked_polished_blackstone_bricks>);

<tag:items:amc-value:2>.add(<item:minecraft:stone_pressure_plate>);
<tag:items:amc-value:2>.add(<item:minecraft:oak_pressure_plate>);
<tag:items:amc-value:2>.add(<item:minecraft:spruce_pressure_plate>);
<tag:items:amc-value:2>.add(<item:minecraft:birch_pressure_plate>);
<tag:items:amc-value:2>.add(<item:minecraft:jungle_pressure_plate>);
<tag:items:amc-value:2>.add(<item:minecraft:acacia_pressure_plate>);
<tag:items:amc-value:2>.add(<item:minecraft:dark_oak_pressure_plate>);

<tag:items:amc-value:2>.add(<item:minecraft:oak_door>);
<tag:items:amc-value:2>.add(<item:minecraft:spruce_door>);
<tag:items:amc-value:2>.add(<item:minecraft:birch_door>);
<tag:items:amc-value:2>.add(<item:minecraft:jungle_door>);
<tag:items:amc-value:2>.add(<item:minecraft:acacia_door>);
<tag:items:amc-value:2>.add(<item:minecraft:dark_oak_door>);

<tag:items:amc-value:2.5>.add(<item:minecraft:crimson_fence>); // Should be 2.8, but.... nah
<tag:items:amc-value:2.5>.add(<item:minecraft:warped_fence>); // Should be 2.8, but.... nah
<tag:items:amc-value:2.5>.add(<item:dwarfcoal:dwarf_coal>);
<tag:items:amc-value:2.5>.add(<item:minecraft:coarse_dirt>);



// 3 AMC
val sflower = <tag:items:minecraft:small_flowers>;
val amc3 = <tag:items:amc-value:3>;

for item in sflower.elements {
   amc3.add(sflower);
}

<tag:items:amc-value:3>.add(<item:minecraft:oak_trapdoor>);
<tag:items:amc-value:3>.add(<item:minecraft:spruce_trapdoor>);
<tag:items:amc-value:3>.add(<item:minecraft:birch_trapdoor>);
<tag:items:amc-value:3>.add(<item:minecraft:jungle_trapdoor>);
<tag:items:amc-value:3>.add(<item:minecraft:acacia_trapdoor>);
<tag:items:amc-value:3>.add(<item:minecraft:dark_oak_trapdoor>);

<tag:items:amc-value:3>.add(<item:minecraft:oak_fence_gate>);
<tag:items:amc-value:3>.add(<item:minecraft:spruce_fence_gate>);
<tag:items:amc-value:3>.add(<item:minecraft:birch_fence_gate>);
<tag:items:amc-value:3>.add(<item:minecraft:jungle_fence_gate>);
<tag:items:amc-value:3>.add(<item:minecraft:acacia_fence_gate>);
<tag:items:amc-value:3>.add(<item:minecraft:dark_oak_fence_gate>);

<tag:items:amc-value:3>.add(<item:minecraft:stripped_oak_log>);
<tag:items:amc-value:3>.add(<item:minecraft:stripped_spruce_log>);
<tag:items:amc-value:3>.add(<item:minecraft:stripped_birch_log>);
<tag:items:amc-value:3>.add(<item:minecraft:stripped_jungle_log>);
<tag:items:amc-value:3>.add(<item:minecraft:stripped_acacia_log>);
<tag:items:amc-value:3>.add(<item:minecraft:stripped_dark_oak_log>);

<tag:items:amc-value:3>.add(<item:minecraft:red_mushroom>);
<tag:items:amc-value:3>.add(<item:minecraft:brown_mushroom>);
<tag:items:amc-value:3>.add(<item:minecraft:pumpkin_seeds>);

<tag:items:amc-value:3>.add(<item:minecraft:crimson_stairs>);
<tag:items:amc-value:3>.add(<item:minecraft:warped_stairs>);
<tag:items:amc-value:3>.add(<item:minecraft:torch>); // Should be 3.06 etc

<tag:items:amc-value:3>.add(<item:minecraft:mossy_cobblestone_slab>);

<tag:items:amc-value:3.5>.add(<item:minecraft:composter>);
<tag:items:amc-value:3.5>.add(<item:dwarfcoal:stone_rod>);
<tag:items:amc-value:3.5>.add(<item:minecraft:arrow>); // Should be 3.8125

// 4 AMC
val sandstone = <tag:items:forge:sandstone>;
val leaves = <tag:items:minecraft:leaves>;
// amc4 is defined at the top of the script

for item in sandstone.elements {
   amc4.add(sandstone);
}

for item in leaves.elements {
   amc4.add(leaves);
}

// These signs should be like 4.08333 etc.
<tag:items:amc-value:4>.add(<item:minecraft:crimson_sign>);
<tag:items:amc-value:4>.add(<item:minecraft:warped_sign>);

<tag:items:amc-value:4>.add(<item:minecraft:warped_pressure_plate>);
<tag:items:amc-value:4>.add(<item:minecraft:crimson_pressure_plate>);
<tag:items:amc-value:4>.add(<item:minecraft:polished_blackstone_button>);

<tag:items:amc-value:4>.add(<item:minecraft:warped_door>);
<tag:items:amc-value:4>.add(<item:minecraft:crimson_door>);

<tag:items:amc-value:4>.add(<item:dwarfcoal:stone_torch>); // Should be 3.875
<tag:items:amc-value:4>.add(<item:minecraft:charcoal>);

<tag:items:amc-value:4>.add(<item:minecraft:nether_brick_slab>);
<tag:items:amc-value:4>.add(<item:morevanillalib:clean_end_stone>);
<tag:items:amc-value:4>.add(<item:minecraft:end_stone_brick_wall>);
<tag:items:amc-value:4>.add(<item:minecraft:end_stone_bricks>);
<tag:items:amc-value:4>.add(<item:minecraft:end_stone>);
<tag:items:amc-value:4>.add(<item:minecraft:gravel>);

<tag:items:amc-value:4>.add(<item:minecraft:stripped_oak_wood>);
<tag:items:amc-value:4>.add(<item:minecraft:stripped_spruce_wood>);
<tag:items:amc-value:4>.add(<item:minecraft:stripped_birch_wood>);
<tag:items:amc-value:4>.add(<item:minecraft:stripped_jungle_wood>);
<tag:items:amc-value:4>.add(<item:minecraft:stripped_acacia_wood>);
<tag:items:amc-value:4>.add(<item:minecraft:stripped_jungle_wood>);
<tag:items:amc-value:4>.add(<item:minecraft:stripped_dark_oak_wood>);

<tag:items:amc-value:4>.add(<item:minecraft:oak_log>);
<tag:items:amc-value:4>.add(<item:minecraft:spruce_log>);
<tag:items:amc-value:4>.add(<item:minecraft:birch_log>);
<tag:items:amc-value:4>.add(<item:minecraft:jungle_log>);
<tag:items:amc-value:4>.add(<item:minecraft:acacia_log>);
<tag:items:amc-value:4>.add(<item:minecraft:dark_oak_log>);

<tag:items:amc-value:4>.add(<item:minecraft:wheat_seeds>);
<tag:items:amc-value:4>.add(<item:minecraft:melon_seeds>);
<tag:items:amc-value:4>.add(<item:minecraft:beetroot_seeds>);

val tflower = <tag:items:minecraft:tall_flowers>;
// amc4 is defined at the top of the script
for item in sflower.elements {
   amc4.add(tflower);
}

<tag:items:amc-value:4>.add(<item:minecraft:seagrass>);
<tag:items:amc-value:4>.add(<item:minecraft:sea_pickle>);

<tag:items:amc-value:4>.add(<item:minecraft:bone_meal>);
<tag:items:amc-value:4>.add(<item:minecraft:white_dye>);
<tag:items:amc-value:4>.add(<item:minecraft:string>);

<tag:items:amc-value:4>.add(<item:minecraft:soul_sand>);
<tag:items:amc-value:4>.add(<item:minecraft:soul_soil>);
<tag:items:amc-value:4>.add(<item:minecraft:polished_basalt>);
<tag:items:amc-value:4>.add(<item:minecraft:polished_blackstone>);
<tag:items:amc-value:4>.add(<item:minecraft:polished_blackstone_wall>);
<tag:items:amc-value:4>.add(<item:minecraft:polished_blackstone_bricks>);
<tag:items:amc-value:4>.add(<item:minecraft:polished_blackstone_brick_wall>);
<tag:items:amc-value:4>.add(<item:minecraft:chiseled_polished_blackstone>);
<tag:items:amc-value:4>.add(<item:minecraft:blackstone_wall>);
<tag:items:amc-value:4>.add(<item:minecraft:blackstone>);
<tag:items:amc-value:4>.add(<item:minecraft:basalt>);

<tag:items:amc-value:4>.add(<item:minecraft:crafting_table>);

<tag:items:amc-value:4>.add(<item:thermal:slag>);
<tag:items:amc-value:4>.add(<item:minecraft:soul_torch>); // Should be 4.06 etc


// 5 AMC
// Oops, all coral!
// Also the first section I worked on when starting this pack.
<tag:items:amc-value:5>.add(<item:minecraft:dead_tube_coral_block>);
<tag:items:amc-value:5>.add(<item:minecraft:dead_brain_coral_block>);
<tag:items:amc-value:5>.add(<item:minecraft:dead_bubble_coral_block>);
<tag:items:amc-value:5>.add(<item:minecraft:dead_fire_coral_block>);
<tag:items:amc-value:5>.add(<item:minecraft:dead_horn_coral_block>);
<tag:items:amc-value:5>.add(<item:minecraft:dead_tube_coral_block>);

<tag:items:amc-value:5>.add(<item:minecraft:dead_tube_coral>);
<tag:items:amc-value:5>.add(<item:minecraft:dead_brain_coral>);
<tag:items:amc-value:5>.add(<item:minecraft:dead_bubble_coral>);
<tag:items:amc-value:5>.add(<item:minecraft:dead_fire_coral>);
<tag:items:amc-value:5>.add(<item:minecraft:dead_horn_coral>);
<tag:items:amc-value:5>.add(<item:minecraft:dead_tube_coral>);

<tag:items:amc-value:5>.add(<item:minecraft:dead_tube_coral_fan>);
<tag:items:amc-value:5>.add(<item:minecraft:dead_brain_coral_fan>);
<tag:items:amc-value:5>.add(<item:minecraft:dead_bubble_coral_fan>);
<tag:items:amc-value:5>.add(<item:minecraft:dead_fire_coral_fan>);
<tag:items:amc-value:5>.add(<item:minecraft:dead_horn_coral_fan>);
<tag:items:amc-value:5>.add(<item:minecraft:dead_tube_coral_fan>);

<tag:items:amc-value:5>.add(<item:minecraft:tube_coral_block>);
<tag:items:amc-value:5>.add(<item:minecraft:brain_coral_block>);
<tag:items:amc-value:5>.add(<item:minecraft:bubble_coral_block>);
<tag:items:amc-value:5>.add(<item:minecraft:fire_coral_block>);
<tag:items:amc-value:5>.add(<item:minecraft:horn_coral_block>);
<tag:items:amc-value:5>.add(<item:minecraft:tube_coral_block>);

<tag:items:amc-value:5>.add(<item:minecraft:tube_coral>);
<tag:items:amc-value:5>.add(<item:minecraft:brain_coral>);
<tag:items:amc-value:5>.add(<item:minecraft:bubble_coral>);
<tag:items:amc-value:5>.add(<item:minecraft:fire_coral>);
<tag:items:amc-value:5>.add(<item:minecraft:horn_coral>);
<tag:items:amc-value:5>.add(<item:minecraft:tube_coral>);

<tag:items:amc-value:5>.add(<item:minecraft:tube_coral_fan>);
<tag:items:amc-value:5>.add(<item:minecraft:brain_coral_fan>);
<tag:items:amc-value:5>.add(<item:minecraft:bubble_coral_fan>);
<tag:items:amc-value:5>.add(<item:minecraft:fire_coral_fan>);
<tag:items:amc-value:5>.add(<item:minecraft:horn_coral_fan>);
<tag:items:amc-value:5>.add(<item:minecraft:tube_coral_fan>);
<tag:items:amc-value:5>.add(<item:minecraft:honey_bottle>);
<tag:items:amc-value:5>.add(<item:minecraft:vine>);

<tag:items:amc-value:5>.add(<item:minecraft:brick>);
<tag:items:amc-value:5>.add(<item:minecraft:clay_ball>);
<tag:items:amc-value:5>.add(<item:minecraft:warped_fence_gate>);
<tag:items:amc-value:5>.add(<item:minecraft:crimson_fence_gate>);

<tag:items:amc-value:5>.add(<item:minecraft:oak_boat>);
<tag:items:amc-value:5>.add(<item:minecraft:spruce_boat>);
<tag:items:amc-value:5>.add(<item:minecraft:birch_boat>);
<tag:items:amc-value:5>.add(<item:minecraft:jungle_boat>);
<tag:items:amc-value:5>.add(<item:minecraft:acacia_boat>);
<tag:items:amc-value:5>.add(<item:minecraft:dark_oak_boat>);

<tag:items:amc-value:5>.add(<item:minecraft:flint>);



// 6 AMC
<tag:items:amc-value:6>.add(<item:minecraft:nether_brick_fence>);

<tag:items:amc-value:6>.add(<item:minecraft:mossy_cobblestone>);
<tag:items:amc-value:6>.add(<item:minecraft:mossy_cobblestone_wall>);
<tag:items:amc-value:6>.add(<item:minecraft:mossy_stone_bricks>);
<tag:items:amc-value:6>.add(<item:minecraft:mossy_stone_brick_wall>);
<tag:items:amc-value:6>.add(<item:mowziesmobs:painted_acacia_slab>);

<tag:items:amc-value:6>.add(<item:minecraft:end_stone_brick_stairs>);
<tag:items:amc-value:6>.add(<item:minecraft:sandstone_stairs>);
<tag:items:amc-value:6>.add(<item:minecraft:smooth_sandstone_stairs>);
<tag:items:amc-value:6>.add(<item:minecraft:smooth_red_sandstone_stairs>);
<tag:items:amc-value:6>.add(<item:minecraft:red_sandstone_stairs>);
<tag:items:amc-value:6>.add(<item:minecraft:polished_blackstone_brick_stairs>);
<tag:items:amc-value:6>.add(<item:minecraft:polished_blackstone_stairs>);
<tag:items:amc-value:6>.add(<item:minecraft:blackstone_stairs>);

<tag:items:amc-value:6>.add(<item:mowziesmobs:foliaath_seed>);
<tag:items:amc-value:6>.add(<item:minecraft:wheat>);
<tag:items:amc-value:6>.add(<item:minecraft:carrot>);
<tag:items:amc-value:6>.add(<item:minecraft:potato>);
<tag:items:amc-value:6>.add(<item:minecraft:baked_potato>);
<tag:items:amc-value:6>.add(<item:minecraft:poisonous_potato>);
<tag:items:amc-value:6>.add(<item:minecraft:beetroot>);
<tag:items:amc-value:6>.add(<item:minecraft:warped_fungus>);
<tag:items:amc-value:6>.add(<item:minecraft:crimson_fungus>);
<tag:items:amc-value:6>.add(<item:minecraft:sweet_berries>);

<tag:items:amc-value:6>.add(<item:minecraft:white_concrete_powder>);
<tag:items:amc-value:6>.add(<item:minecraft:orange_concrete_powder>);
<tag:items:amc-value:6>.add(<item:minecraft:magenta_concrete_powder>);
<tag:items:amc-value:6>.add(<item:minecraft:light_blue_concrete_powder>);
<tag:items:amc-value:6>.add(<item:minecraft:yellow_concrete_powder>);
<tag:items:amc-value:6>.add(<item:minecraft:lime_concrete_powder>);
<tag:items:amc-value:6>.add(<item:minecraft:pink_concrete_powder>);
<tag:items:amc-value:6>.add(<item:minecraft:gray_concrete_powder>);
<tag:items:amc-value:6>.add(<item:minecraft:light_gray_concrete_powder>);
<tag:items:amc-value:6>.add(<item:minecraft:cyan_concrete_powder>);
<tag:items:amc-value:6>.add(<item:minecraft:purple_concrete_powder>);
<tag:items:amc-value:6>.add(<item:minecraft:blue_concrete_powder>);
<tag:items:amc-value:6>.add(<item:minecraft:brown_concrete_powder>);
<tag:items:amc-value:6>.add(<item:minecraft:green_concrete_powder>);
<tag:items:amc-value:6>.add(<item:minecraft:red_concrete_powder>);
<tag:items:amc-value:6>.add(<item:minecraft:black_concrete_powder>);

<tag:items:amc-value:6>.add(<item:minecraft:white_concrete>);
<tag:items:amc-value:6>.add(<item:minecraft:orange_concrete>);
<tag:items:amc-value:6>.add(<item:minecraft:magenta_concrete>);
<tag:items:amc-value:6>.add(<item:minecraft:light_blue_concrete>);
<tag:items:amc-value:6>.add(<item:minecraft:yellow_concrete>);
<tag:items:amc-value:6>.add(<item:minecraft:lime_concrete>);
<tag:items:amc-value:6>.add(<item:minecraft:pink_concrete>);
<tag:items:amc-value:6>.add(<item:minecraft:gray_concrete>);
<tag:items:amc-value:6>.add(<item:minecraft:light_gray_concrete>);
<tag:items:amc-value:6>.add(<item:minecraft:cyan_concrete>);
<tag:items:amc-value:6>.add(<item:minecraft:purple_concrete>);
<tag:items:amc-value:6>.add(<item:minecraft:blue_concrete>);
<tag:items:amc-value:6>.add(<item:minecraft:brown_concrete>);
<tag:items:amc-value:6>.add(<item:minecraft:green_concrete>);
<tag:items:amc-value:6>.add(<item:minecraft:red_concrete>);
<tag:items:amc-value:6>.add(<item:minecraft:black_concrete>);

<tag:items:amc-value:6>.add(<item:minecraft:barrel>);
<tag:items:amc-value:6>.add(<item:minecraft:warped_trapdoor>);
<tag:items:amc-value:6>.add(<item:minecraft:crimson_trapdoor>);

// 7 - 9 AMC
<tag:items:amc-value:7.75>.add(<item:minecraft:cookie>);

<tag:items:amc-value:8>.add(<item:minecraft:cactus>);
<tag:items:amc-value:8>.add(<item:minecraft:green_dye>);
<tag:items:amc-value:8>.add(<item:minecraft:warped_stem>);
<tag:items:amc-value:8>.add(<item:minecraft:crimson_stem>);
<tag:items:amc-value:8>.add(<item:minecraft:stripped_crimson_stem>);
<tag:items:amc-value:8>.add(<item:minecraft:stripped_warped_stem>);

<tag:items:amc-value:8>.add(<item:minecraft:chest>);
<tag:items:amc-value:8>.add(<item:minecraft:furnace>);
<tag:items:amc-value:8>.add(<item:watercan:watercan_stone>); // Should be 8.75

<tag:items:amc-value:8>.add(<item:minecraft:nether_bricks>);
<tag:items:amc-value:8>.add(<item:minecraft:nether_brick_wall>);
<tag:items:amc-value:8>.add(<item:minecraft:cracked_nether_bricks>);
<tag:items:amc-value:8>.add(<item:minecraft:chiseled_nether_bricks>);
<tag:items:amc-value:8>.add(<item:minecraft:polished_blackstone_pressure_plate>);
<tag:items:amc-value:8>.add(<item:minecraft:fishing_rod>); // Should be 8.75

<tag:items:amc-value:9>.add(<item:minecraft:mossy_stone_brick_stairs>);
<tag:items:amc-value:9>.add(<item:minecraft:mossy_cobblestone_stairs>);
<tag:items:amc-value:9>.add(<item:minecraft:rail>); // Should be 9.37500

// 10's AMC
<tag:items:amc-value:10>.add(<item:minecraft:lapis_lazuli>);
<tag:items:amc-value:10>.add(<item:minecraft:lapis_ore>);

<tag:items:amc-value:10>.add(<item:minecraft:lily_pad>);
<tag:items:amc-value:10>.add(<item:minecraft:nether_wart>);
<tag:items:amc-value:10>.add(<item:minecraft:sugar_cane>);
<tag:items:amc-value:10>.add(<item:minecraft:sugar>);
<tag:items:amc-value:10>.add(<item:minecraft:black_dye>);
<tag:items:amc-value:10>.add(<item:minecraft:feather>); // Maybe make it higher?
<tag:items:amc-value:10>.add(<item:minecraft:ink_sac>);
<tag:items:amc-value:10>.add(<item:minecraft:paper>);
<tag:items:amc-value:10>.add(<item:minecraft:dried_kelp>);
<tag:items:amc-value:10>.add(<item:minecraft:kelp>);
<tag:items:amc-value:10>.add(<item:minecraft:honeycomb>);
<tag:items:amc-value:10>.add(<item:minecraft:soul_campfire>); // Should be around 9.9165 (maybe?)

<tag:items:amc-value:12>.add(<item:minecraft:bone>);
<tag:items:amc-value:12>.add(<item:minecraft:cobweb>);
<tag:items:amc-value:12>.add(<item:minecraft:pumpkin>);
<tag:items:amc-value:12>.add(<item:minecraft:carved_pumpkin>);

<tag:items:amc-value:12>.add(<item:minecraft:nether_brick_stairs>);
<tag:items:amc-value:12>.add(<item:minecraft:red_nether_brick_slab>);
<tag:items:amc-value:12>.add(<item:mowziesmobs:painted_acacia>);
<tag:items:amc-value:12>.add(<item:minecraft:smoker>);

<tag:items:amc-value:12.5>.add(<item:minecraft:glowstone_dust>);
<tag:items:amc-value:12.5>.add(<item:minecraft:brick_slab>);
<tag:items:amc-value:12.5>.add(<item:minecraft:bow>); // Should be 12.75

<tag:items:amc-value:13>.add(<item:minecraft:fletching_table>);

<tag:items:amc-value:15>.add(<item:minecraft:carrot_on_a_stick>); // Should be 14.75
<tag:items:amc-value:15>.add(<item:minecraft:warped_fungus_on_a_stick>); // Should be 14.75
<tag:items:amc-value:15>.add(<item:minecraft:jack_o_lantern>);
<tag:items:amc-value:15>.add(<item:minecraft:flower_pot>);
<tag:items:amc-value:15>.add(<item:minecraft:apple>);
<tag:items:amc-value:15>.add(<item:minecraft:campfire>); // Should be around 17.3498
<tag:items:amc-value:15>.add(<item:minecraft:shroomlight>);

<tag:items:amc-value:16>.add(<item:minecraft:grindstone>);
<tag:items:amc-value:16.5>.add(<item:minecraft:loom>);

<tag:items:amc-value:18>.add(<item:minecraft:bread>);
<tag:items:amc-value:18>.add(<item:minecraft:melon>);
<tag:items:amc-value:18>.add(<item:minecraft:painting>);
<tag:items:amc-value:18>.add(<item:mowziesmobs:thatch_block>);


// 20's AMC
<tag:items:amc-value:20>.add(<item:minecraft:honey_block>);
<tag:items:amc-value:20>.add(<item:thermal:lead_ingot>);
<tag:items:amc-value:20>.add(<item:minecraft:coal_ore>);
<tag:items:amc-value:20>.add(<item:minecraft:coal>);

<tag:items:amc-value:24>.add(<item:minecraft:red_nether_bricks>);

// 25 AMC [End]
<tag:items:amc-value:25>.add(<item:minecraft:prismarine_shard>);
<tag:items:amc-value:25>.add(<item:minecraft:iron_ingot>);

<tag:items:amc-value:25>.add(<item:minecraft:iron_ore>);
<tag:items:amc-value:25>.add(<item:minecraft:brick_wall>);
<tag:items:amc-value:25>.add(<item:minecraft:bricks>);
<tag:items:amc-value:25>.add(<item:minecraft:clay>);

<tag:items:amc-value:25>.add(<item:minecraft:beef>);
<tag:items:amc-value:25>.add(<item:minecraft:scute>);
<tag:items:amc-value:25>.add(<item:minecraft:leather>);
<tag:items:amc-value:25>.add(<item:minecraft:chicken>);
<tag:items:amc-value:25>.add(<item:minecraft:mutton>);
<tag:items:amc-value:25>.add(<item:minecraft:porkchop>);
<tag:items:amc-value:25>.add(<item:minecraft:turtle_egg>);
<tag:items:amc-value:25>.add(<item:minecraft:rotten_flesh>);

<tag:items:amc-value:25>.add(<item:minecraft:cooked_beef>);
<tag:items:amc-value:25>.add(<item:minecraft:cooked_chicken>);
<tag:items:amc-value:25>.add(<item:minecraft:cooked_mutton>);
<tag:items:amc-value:25>.add(<item:minecraft:cooked_porkchop>);

<tag:items:amc-value:25>.add(<item:minecraft:white_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:orange_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:magenta_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:light_blue_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:yellow_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:lime_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:pink_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:gray_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:light_gray_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:cyan_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:purple_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:blue_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:brown_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:green_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:red_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:black_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:terracotta>);

<tag:items:amc-value:25>.add(<item:minecraft:white_glazed_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:orange_glazed_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:magenta_glazed_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:light_blue_glazed_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:yellow_glazed_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:lime_glazed_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:pink_glazed_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:gray_glazed_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:light_gray_glazed_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:cyan_glazed_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:purple_glazed_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:blue_glazed_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:brown_glazed_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:green_glazed_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:red_glazed_terracotta>);
<tag:items:amc-value:25>.add(<item:minecraft:black_glazed_terracotta>);

<tag:items:amc-value:25>.add(<item:minecraft:cartography_table>);

<tag:items:amc-value:25>.add(<item:minecraft:item_frame>); // Should be like 27-ish
<tag:items:amc-value:25>.add(<item:minecraft:lantern>); // Should be 25.216
<tag:items:amc-value:25>.add(<item:minecraft:egg>);

<tag:items:amc-value:25>.add(<item:wstweaks:fragment>);
<tag:items:amc-value:25>.add(<item:watercan:watercan_wood>); // Should be 24.75
<tag:items:amc-value:25.5>.add(<item:trashcans:item_trash_can>);

print("1-low_amc.zs loaded");