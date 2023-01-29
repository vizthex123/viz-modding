# Adds recipes to Create's mechanical saw
print("create_saw.zs loading...");
/*
<recipetype:create:cutting>.addRecipe(String name, IItemStack output, IIngredient input, @Optional(100) int duration);
*/

# Craft Cut Limestone with Quark's limestone
<recipetype:create:cutting>.addRecipe("cut_limestone", <item:create:cut_limestone>, <item:quark:limestone>);

# Saw Hollow Logs into Planks
<recipetype:create:cutting>.addRecipe("saw_hollow_oak_log", <item:minecraft:oak_planks>*4, <item:twilightforest:hollow_oak_log>);
<recipetype:create:cutting>.addRecipe("saw_hollow_spruce_log", <item:minecraft:spruce_planks>*4, <item:twilightforest:hollow_spruce_log>);
<recipetype:create:cutting>.addRecipe("saw_hollow_birch_log", <item:minecraft:birch_planks>*4, <item:twilightforest:hollow_birch_log>);
<recipetype:create:cutting>.addRecipe("saw_hollow_jungle_log", <item:minecraft:jungle_planks>*4, <item:twilightforest:hollow_jungle_log>);
<recipetype:create:cutting>.addRecipe("saw_hollow_acacia_log", <item:minecraft:acacia_planks>*4, <item:twilightforest:hollow_acacia_log>);
<recipetype:create:cutting>.addRecipe("saw_hollow_dark_oak_log", <item:minecraft:dark_oak_planks>*4, <item:twilightforest:hollow_dark_oak_log>);

<recipetype:create:cutting>.addRecipe("saw_hollow_crimson_stem", <item:minecraft:crimson_planks>*4, <item:twilightforest:hollow_crimson_stem>);
<recipetype:create:cutting>.addRecipe("saw_hollow_warped_stem", <item:minecraft:warped_planks>*4, <item:twilightforest:hollow_warped_stem>);

<recipetype:create:cutting>.addRecipe("saw_hollow_twilight_oak_log", <item:twilightforest:twilight_oak_planks>*4, <item:twilightforest:hollow_twilight_oak_log>);
<recipetype:create:cutting>.addRecipe("saw_hollow_canopy_log", <item:twilightforest:canopy_planks>*4, <item:twilightforest:hollow_canopy_log>);
<recipetype:create:cutting>.addRecipe("saw_hollow_mangrove_log", <item:twilightforest:mangrove_planks>*4, <item:twilightforest:hollow_mangrove_log>);
<recipetype:create:cutting>.addRecipe("saw_hollow_darkwood_log", <item:twilightforest:dark_planks>*4, <item:twilightforest:hollow_dark_log>);
<recipetype:create:cutting>.addRecipe("saw_hollow_timewood_log", <item:twilightforest:time_planks>*4, <item:twilightforest:hollow_time_log>);
<recipetype:create:cutting>.addRecipe("saw_hollow_transwood_log", <item:twilightforest:transformation_planks>*4, <item:twilightforest:hollow_transformation_log>);
<recipetype:create:cutting>.addRecipe("saw_hollow_minewood_log", <item:twilightforest:mining_planks>*4, <item:twilightforest:hollow_mining_log>);
<recipetype:create:cutting>.addRecipe("saw_hollow_sortingwood_log", <item:twilightforest:sorting_planks>*4, <item:twilightforest:hollow_sorting_log>);

print("create_saw.zs loaded");