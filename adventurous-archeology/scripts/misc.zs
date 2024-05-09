# Adds miscellaneous recipes
print("misc.zs loading...");

/*
craftingTable.remove(<item>);
craftingTable.removeByName("name");

craftingTable.addShapeless("recipeName", <output>, [<inputs>]);

craftingTable.addShaped("recipeName", <output>, 
    [[<input>, <input>, <input>],
    [<input>, <input>, <input>],
    [<input>, <input>, <input>]]);

blastFurnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);

furnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);
*/
/*
val empty = <item:minecraft:air>;

val stick = <tag:items:forge:rods/wooden>;

val copper = <item:minecraft:copper_ingot>;
val gold = <item:minecraft:gold_ingot>;
val silver = <item:galosphere:silver_ingot>;
val rose_gold = <item:cavesanddepths:rose_gold_ingot>;
val irradium = <item:enlightened_end:irradium_bar>;

val copper_nugget = <item:spelunkery:copper_nugget>;
val gold_nugget = <item:minecraft:gold_nugget>;

// Bundle recipe
val leather = <tag:items:forge:leather>;
val spider_string = <tag:items:forge:string>;
craftingTable.addShaped("bundle", <item:minecraft:bundle>, 
    [[spider_string, leather, spider_string],
    [leather, empty, leather],
    [leather, leather, leather]]);

// Leather from animal hides
craftingTable.removeByName("nourished_nether:hoglin_hide_to_leather");
craftingTable.addShapeless("leather_from_hide", leather*2, [<item:alexscaves:tough_hide>|<item:nourished_nether:hoglin_hide>|<item:quark:ravager_hide>]);

// Ash Bricks with Dust Buns
furnace.addRecipe("dust_bunny_brick", <item:supplementaries:ash_brick>, <item:spelunkery:dust_bun>, 0.3, 200);

// Change the Diamond Grindstone to use a Rough Diamond (or regular one)
craftingTable.remove(<item:spelunkery:diamond_grindstone>);
craftingTable.addShaped("diamond_grindstone", <item:spelunkery:diamond_grindstone>, 
    [[empty, <item:spelunkery:rough_diamond>|<item:minecraft:diamond>, empty],
    [stick, <item:minecraft:grindstone>, stick],
    [<tag:items:minecraft:planks>, <item:minecraft:polished_deepslate_slab>, <tag:items:minecraft:planks>]]);

// Make Rope Ladders with Ropes
val rope = <tag:items:supplementaries:ropes>;
craftingTable.addShaped("rope_ladder_with_rope", <item:spelunkery:rope_ladder>*4, 
    [[stick, empty, stick],
    [rope, rope, rope],
    [stick, empty, stick]]);

// Make Uranium Rods with Irradium
val blaze_rod = <item:minecraft:blaze_rod>;
craftingTable.addShaped("irradium_fuel_rod", <item:alexscaves:uranium_rod>, 
    [[irradium, silver, irradium],
    [irradium, blaze_rod, irradium],
    [irradium, silver, irradium]]);

// Change the Rose Gold Smithing Template recipe to use Copper Nuggets
craftingTable.remove(<item:cavesanddepths:rosegoldupgradesmithingtemplate>);
craftingTable.addShaped("rose_gold_smithing_template", <item:cavesanddepths:rosegoldupgradesmithingtemplate>, 
    [[gold_nugget, gold, gold_nugget],
    [copper_nugget, rose_gold, copper_nugget],
    [gold_nugget, copper_nugget, gold_nugget]]);

// Craft Raw Rose Gold with Ingots
// Also makes the recipe shapeless
val ferrouslime = <item:alexscaves:ferrouslime_ball>;
val raw_copper = <item:minecraft:raw_copper>;
val raw_gold = <item:minecraft:raw_gold>;

craftingTable.removeByName("cavesanddepths:rawrosegoldr");
craftingTable.addShapeless("raw_rose_gold", <item:cavesanddepths:raw_rose_gold>, [raw_gold, raw_gold, raw_gold, raw_gold, raw_copper, raw_copper, raw_copper, raw_copper]);

craftingTable.addShapeless("raw_rose_gold_with_ingots", <item:cavesanddepths:raw_rose_gold>*2, [gold, gold, gold, gold, copper, copper, copper, copper, ferrouslime]);



# Hollow Logs -> Planks
craftingTable.addShapeless("hollow_oak_planks", <item:minecraft:oak_planks>*2, [<item:quark:hollow_oak_log>|<item:twilightforest:hollow_oak_log>]);
craftingTable.addShapeless("hollow_spruce_planks", <item:minecraft:spruce_planks>*2, [<item:quark:hollow_spruce_log>|<item:twilightforest:hollow_spruce_log>]);
craftingTable.addShapeless("hollow_birch_planks", <item:minecraft:birch_planks>*2, [<item:quark:hollow_birch_log>|<item:twilightforest:hollow_birch_log>]);
craftingTable.addShapeless("hollow_jungle_planks", <item:minecraft:jungle_planks>*2, [<item:quark:hollow_jungle_log>|<item:twilightforest:hollow_jungle_log>]);
craftingTable.addShapeless("hollow_acacia_planks", <item:minecraft:acacia_planks>*2, [<item:quark:hollow_acacia_log>|<item:twilightforest:hollow_acacia_log>]);
craftingTable.addShapeless("hollow_dark_oak_planks", <item:minecraft:dark_oak_planks>*2, [<item:quark:hollow_dark_oak_log>|<item:twilightforest:hollow_dark_oak_log>]);
craftingTable.addShapeless("hollow_mangrove_planks", <item:minecraft:mangrove_planks>*2, [<item:quark:hollow_mangrove_log>
<twilightforest:hollow_vangrove_log>]);
craftingTable.addShapeless("hollow_cherry_planks", <item:minecraft:cherry_planks>*2, [<item:quark:hollow_cherry_log>|<item:twilightforest:hollow_cherry_log>]);

craftingTable.addShapeless("hollow_ancient_planks", <item:quark:ancient_planks>*2, [<item:quark:hollow_ancient_log>]);
craftingTable.addShapeless("hollow_azalea_planks", <item:quark:azalea_planks>*2, [<item:quark:hollow_azalea_log>]);

craftingTable.addShapeless("hollow_silver_birch_planks", <item:silverbirch:silver_birch_planks>*2, [<item:silverbirch:hollow_log>]);

craftingTable.addShapeless("hollow_twilight_oak_planks", <item:twilightforest:twilight_oak_planks>*2, [<item:twilightforest:hollow_twilight_oak_log>]);
craftingTable.addShapeless("hollow_canopy_planks", <item:twilightforest:canopy_planks>*2, [<item:twilightforest:hollow_canopy_log>]);
craftingTable.addShapeless("hollow_twilight_mangrove_planks", <item:twilightforest:mangrove_planks>*2, [<item:twilightforest:hollow_mangrove_log>]);
craftingTable.addShapeless("hollow_dark_planks", <item:twilightforest:dark_planks>*2, [<item:twilightforest:hollow_dark_log>]);
craftingTable.addShapeless("hollow_timewood_planks", <item:twilightforest:time_planks>*2, [<item:twilightforest:hollow_time_log>]);
craftingTable.addShapeless("hollow_transwood_planks", <item:twilightforest:transformation_planks>*2, [<item:twilightforest:hollow_transformation_log>]);
craftingTable.addShapeless("hollow_minewood_planks", <item:twilightforest:mining_planks>*2, [<item:twilightforest:hollow_mining_log>]);
craftingTable.addShapeless("hollow_sortingwood_planks", <item:twilightforest:sorting_planks>*2, [<item:twilightforest:hollow_sorting_log>]);
*/
print("misc.zs loaded");