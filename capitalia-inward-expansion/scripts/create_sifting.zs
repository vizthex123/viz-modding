# Adds sifting recipes to the eponymous mod

 import mods.createsifter.SiftingManager;
 
print("create_sifting.zs loading...");
/*
<recipetype:createsifter:sifting>.removeByName("name");

<recipetype:createsifter:sifting>.addRecipe("name", [output], [input, mesh], time, waterlogged*, minspeed*);

default time is 200

*waterlogged is a boolean
*minspeed is a float, and is 4 by default


addRecipe(String id, ProcessingOutput[] results, Ingredients[] input, int processingTime, boolean waterlogged, float minimumSpeed) ;

<recipetype:createsifter:sifting>.addRecipe("test_1", [<item:minecraft:glowstone_dust> % 10, <item:minecraft:gunpowder> % 50, <item:create:cinder_flour> % 75], [<item:minecraft:netherrack>, <item:createsifter:andesite_mesh>], 300, false, 1);

using an advanced brass mesh makes it require the Brass Sifter
*/

val dust = <item:createsifter:dust>;
val any = <tag:items:createsifter:meshes>;
val advanced = <item:createsifter:advanced_brass_mesh>;

val xp = <item:create:experience_nugget>;

val redstone = <item:minecraft:redstone>;
val certus = <item:ae2:certus_quartz_dust>;
val tesla = <item:bluepower:teslatite_dust>;

val copper = <item:create:crushed_raw_copper>;
val iron = <item:create:crushed_raw_iron>;
val gold = <item:create:crushed_raw_gold>;
val zinc = <item:create:crushed_raw_zinc>;
val silver = <item:create:crushed_raw_silver>;

# Remove the default recipes
<recipetype:createsifter:sifting>.removeAll();
/* Defaults:
Dirt (waterlogged, gives Coral)
Gravel
Sand
Soul Sand
*/

// Wet blocks
<recipetype:createsifter:sifting>.addRecipe("sift_wet", [<item:minecraft:sugar_cane> % 10, <item:minecraft:kelp> % 20, <item:minecraft:seagrass> % 30, <item:minecraft:clay_ball> % 50], [<tag:items:cie:wet_block>, any], 300, true, 4);

// Dirt
<recipetype:createsifter:sifting>.addRecipe("sift_dirt", [<item:minecraft:wheat_seeds> % 5, <item:minecraft:beetroot_seeds> % 3, <item:minecraft:potato> % 2, <item:minecraft:sweet_berries> % 1], [<tag:items:minecraft:dirt>, <item:createsifter:string_mesh>|<item:createsifter:andesite_mesh>|<item:createsifter:zinc_mesh>|<item:createsifter:brass_mesh>], 300, false, 2);

<recipetype:createsifter:sifting>.addRecipe("sift_dirt_boosted", [<item:minecraft:wheat_seeds> % 10, <item:minecraft:beetroot_seeds> % 5, <item:minecraft:potato> % 3, <item:minecraft:sweet_berries> % 2], [<tag:items:minecraft:dirt>, advanced], 300, false, 2);

// Dust
<recipetype:createsifter:sifting>.addRecipe("sift_dust", [redstone % 50, tesla % 25, certus % 13], [dust, any], 200, false, 1);

// Sand
<recipetype:createsifter:sifting>.addRecipe("sift_sand", [<item:minecraft:bone_meal> % 50, redstone % 25, certus % 10], [<tag:items:minecraft:sand>, any], 250, false, 1);

// Gravel
<recipetype:createsifter:sifting>.addRecipe("sift_gravel", [copper % 10, iron % 7, gold % 5, zinc % 10, <item:minecraft:flint> % 50, xp % 10], [<tag:items:forge:gravel>, any], 400, false, 4);

// Soul Sand
<recipetype:createsifter:sifting>.addRecipe("sift_soul_sand", [<item:minecraft:quartz> % 10, <item:biomemakeover:soul_embers> % 50, xp % 15], [<item:minecraft:soul_sand>, any], 300, false, 8);

<recipetype:createsifter:sifting>.addRecipe("sift_soul_sand_boosted", [<item:minecraft:quartz> % 15, <item:biomemakeover:soul_embers> % 50, <item:spirit:soul_powder> % 10, xp % 25], [<item:minecraft:soul_sand>, advanced], 300, false, 12);

<recipetype:createsifter:sifting>.addRecipe("sift_soul_sand_water", [<item:minecraft:quartz> % 25, <item:spirit:soul_powder> % 15, <item:minecraft:ghast_tear> % 5, xp % 50], [<item:minecraft:soul_sand>, advanced], 300, true, 16);

// Crushed End Stone
<recipetype:createsifter:sifting>.addRecipe("sift_crushed_end_stone", [<item:minecraft:chorus_fruit> % 25, <item:ae2:ender_dust> % 35, <item:ae2:sky_dust> % 85, certus % 75, xp % 50], [<item:createsifter:crushed_end_stone>, advanced], 600, false, 8);

print("create_sifting.zs loaded");