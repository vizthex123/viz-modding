# Recycling recipes for Create's Mechanical Saw
print("crate_sawing.zs loading...");
/*
<recipetype:create:cutting>.addRecipe(String name, IItemStack output, IIngredient input, @Optional(100) int duration);
*/

val fiber = <item:kubejs:fibers>;
val hide = <item:kubejs:shredded_hide>;

val sawdust = <item:kubejs:sawdust>;

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

<recipetype:create:cutting>.addRecipe("cut_rubber_log", <item:myrtrees:rubberwood_planks>*6, <item:myrtrees:rubberwood_log>);



# Hollow Logs
# Only gives 4 due to most of the log being absent
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