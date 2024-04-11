# Fixes various recipes by using tags instead of items

print("recipe-tag-fixes.zs loading...");

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

val iron = <tag:items:balm:iron_ingots>;
val empty = <item:minecraft:air>;

# Make Soap with any Ash and Meat
val ash = <tag:items:vanilla:ash>;

craftingTable.remove(<item:supplementaries:soap>);
craftingTable.addShapeless("soap", <item:supplementaries:soap>*6, [<item:minecraft:water_bucket>, ash, ash, ash, ash, <tag:items:vanilla:raw_meat>]);

# Make the Woodcutter with any iron
craftingTable.remove(<item:charm:woodcutter>);
craftingTable.addShaped("woodcutter", <item:charm:woodcutter>, 
    [[empty, iron, empty],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]]);


# Condense both Copper Block Uncrafting recipes into a single one
craftingTable.remove(<item:minecraft:copper_ingot>);
craftingTable.addShapeless("uncraft_copper_blocks", <item:minecraft:copper_ingot>*9, [<item:minecraft:waxed_copper_block>|<item:minecraft:copper_block>]);


# Make the Cincinnasite Soul Fire Bowl use the Soul Fire Base Blocks tag
craftingTable.remove(<item:betternether:cincinnasite_fire_bowl_soul>);
craftingTable.addShaped("cincinnasite_soul_fire_bowl", <item:betternether:cincinnasite_fire_bowl_soul>, 
    [[<item:betternether:cincinnasite_forged>, <tag:items:minecraft:soul_fire_base_blocks>, <item:betternether:cincinnasite_forged>],
    [empty, <item:betternether:cincinnasite_forged>, empty],
    [<item:betternether:cincinnasite_ingot>, empty, <item:betternether:cincinnasite_ingot>]]);


# Make Activator and Detector Rails use tags
craftingTable.remove(<item:minecraft:activator_rail>);
craftingTable.remove(<item:minecraft:detector_rail>);

craftingTable.addShaped("activator_rail", <item:minecraft:activator_rail>*6, 
    [[iron, <tag:items:balm:wooden_rods>, iron],
    [iron, <item:minecraft:redstone_torch>, iron],
    [iron, <tag:items:balm:wooden_rods>, iron]]);

craftingTable.addShaped("detector_rail", <item:minecraft:detector_rail>*6, 
    [[iron, empty, iron],
    [iron, <item:minecraft:stone_pressure_plate>, iron],
    [iron, <item:minecraft:redstone>, iron]]);


# Add tag support to foods from the Delight mods
# Also changes some minecraft foods
var baked = <item:minecraft:baked_potato>;
var beet = <item:minecraft:beetroot>;
var berry = <item:minecraft:sweet_berries>;
var bowl = <tag:items:vanilla:bowl>;

var cabbage = <tag:items:c:salad_ingredients/cabbage>;
var onion = <item:farmersdelight:onion>;
var rice = <item:farmersdelight:cooked_rice>;
var tomato = <item:farmersdelight:tomato>;

var mushroom = <tag:items:vanilla:mushroom>;
var fungus = <tag:items:vanilla:fungus>;


craftingTable.remove(<item:minecraft:rabbit_stew>);
craftingTable.remove(<item:minecraft:mushroom_stew>);
craftingTable.remove(<item:minecraft:beetroot_soup>);
craftingTable.remove(<item:nears:soul_sundae>);
craftingTable.remove(<item:nears:glowy_snack>);

// Rabbit Stew
craftingTable.addShapeless("rabbit_stew", <item:minecraft:rabbit_stew>, [<item:minecraft:baked_potato>, <item:minecraft:cooked_rabbit>, bowl, <item:minecraft:carrot>, mushroom]);

// Mushroom Stew
craftingTable.addShapeless("mushroom_stew", <item:minecraft:mushroom_stew>, [bowl, mushroom, mushroom]);

// Beetroot Soup
craftingTable.addShapeless("beetroot_soup", <item:minecraft:beetroot_soup>, [bowl, <item:minecraft:beetroot>, <item:minecraft:beetroot>, <item:minecraft:beetroot>]);

// Soul Sundae
craftingTable.addShapeless("soul_sundae", <item:nears:soul_sundae>, [<tag:items:nears:sundae_soils>, <item:nears:faar>, <item:nears:soul_juice>, bowl]);

// Glowy Snack
craftingTable.addShapeless("glowy_snack", <item:nears:glowy_snack>, [<item:minecraft:glow_berries>, <item:nears:near>, bowl]);

// Seagrass Salad
craftingTable.remove(<item:oceansdelight:seagrass_salad>);
craftingTable.addShapeless("seagrass_salad", <item:oceansdelight:seagrass_salad>, [<item:minecraft:seagrass>, bowl]);

// Roasted Dragon Steak
craftingTable.remove(<item:ends_delight:roasted_dragon_steak>);
craftingTable.addShapeless("roasted_dragon_steak", <item:ends_delight:roasted_dragon_steak>, [<item:ends_delight:ender_sauce>, <tag:items:c:roasted_dragon_meat>, <item:minecraft:chorus_fruit>, <tag:items:c:crops/tomato>, fungus, fungus, bowl]);

// End Mixed Salad
craftingTable.remove(<item:ends_delight:end_mixed_salad>);
craftingTable.addShapeless("end_mixed_salad", <item:ends_delight:end_mixed_salad>, [<item:minecraft:chorus_fruit>, <item:ends_delight:chorus_succulent>, <item:ends_delight:chorus_succulent>, <tag:items:c:crops/tomato>, <tag:items:c:crops/cabbage>, bowl]);

// Steak & Potatoes
craftingTable.removeByName("farmersdelight:steak_and_potatoes");
craftingTable.addShapeless("steak_and_potatoes", <item:farmersdelight:steak_and_potatoes>, [baked, <item:minecraft:cooked_beef>, onion, rice, bowl]);

// Shepherd's Pie
craftingTable.removeByName("farmersdelight:shepherds_pie_block");
craftingTable.addShaped("shepherds_pie", <item:farmersdelight:shepherds_pie_block>, 
    [[baked, <tag:items:c:milk>,  baked],
    [<tag:items:c:cooked_mutton>, <tag:items:c:cooked_mutton>, <tag:items:c:cooked_mutton>],
    [onion, bowl, onion]]);

// Roasted Mutton Chops
craftingTable.removeByName("farmersdelight:roasted_mutton_chops");
craftingTable.addShapeless("roasted_mutton_chops", <item:farmersdelight:roasted_mutton_chops>, [<item:farmersdelight:cooked_mutton_chops>, tomato, beet, rice, bowl]);

// Roast Chicken
craftingTable.removeByName("farmersdelight:roast_chicken_block");
craftingTable.addShaped("roast_chicken", <item:farmersdelight:roast_chicken_block>, 
    [[<item:minecraft:bread>, <item:minecraft:egg>, onion],
    [baked, <item:minecraft:cooked_chicken>, <item:minecraft:carrot>],
    [baked, bowl, <item:minecraft:carrot>]]);

// Rice Roll Medley
craftingTable.removeByName("farmersdelight:rice_roll_medley_block");
craftingTable.addShaped("rice_roll_medley", <item:farmersdelight:rice_roll_medley_block>, 
    [[<item:farmersdelight:kelp_roll_slice>, <item:farmersdelight:kelp_roll_slice>, <item:farmersdelight:kelp_roll_slice>],
    [<item:farmersdelight:salmon_roll>, <item:farmersdelight:salmon_roll>, <item:farmersdelight:salmon_roll>],
    [<item:farmersdelight:cod_roll>, bowl, <item:farmersdelight:cod_roll>]]);

// Nether Salad
craftingTable.removeByName("farmersdelight:nether_salad");
craftingTable.addShapeless("nether_salad", <item:farmersdelight:nether_salad>, [<tag:items:vanilla:fungus>, <tag:items:vanilla:fungus>, bowl]);

// Mixed Salad
craftingTable.removeByName("farmersdelight:mixed_salad");
craftingTable.addShapeless("mixed_salad", <item:farmersdelight:mixed_salad>, [cabbage, tomato, beet, bowl]);

// Honey Glazed Ham
craftingTable.removeByName("farmersdelight:honey_glazed_ham_block");
craftingTable.addShaped("honey_glazed_ham", <item:farmersdelight:honey_glazed_ham_block>, 
    [[berry, <item:minecraft:honey_bottle>, berry],
    [berry, <item:farmersdelight:smoked_ham>, berry],
    [rice, bowl, rice]]);

// Grilled Salmon
craftingTable.removeByName("farmersdelight:grilled_salmon");
craftingTable.addShapeless("grilled_salmon", <item:farmersdelight:grilled_salmon>, [<tag:items:c:cooked_fishes/salmon>, berry, bowl, cabbage, onion]);

// Fruit Salad
craftingTable.removeByName("farmersdelight:fruit_salad");
craftingTable.addShapeless("fruit_salad", <item:farmersdelight:fruit_salad>, [<item:minecraft:apple>, <item:minecraft:melon_slice>, <item:minecraft:melon_slice>, <tag:items:minecraft:fox_food>, <tag:items:minecraft:fox_food>, <item:farmersdelight:pumpkin_slice>, bowl]);

// Bacon & Eggs
// An eggcellent dish
craftingTable.removeByName("farmersdelight:bacon_and_eggs");
craftingTable.addShapeless("bacon_and_eggs", <item:farmersdelight:bacon_and_eggs>, [<item:farmersdelight:cooked_bacon>, <item:farmersdelight:cooked_bacon>, bowl, <item:farmersdelight:fried_egg>, <item:farmersdelight:fried_egg>]);


### Cultural Delights
// Hearty Salad
craftingTable.removeByName("culturaldelights:hearty_salad");
craftingTable.addShapeless("hearty_salad", <item:culturaldelights:hearty_salad>, [tomato, <tag:items:culturaldelights:avocados>, <item:culturaldelights:corn_cob>, <item:culturaldelights:cucumber>, bowl]);

// Exotic Roll Medley
craftingTable.removeByName("culturaldelights:exotic_roll_medley");
craftingTable.addShaped("exotic_roll_medley", <item:culturaldelights:exotic_roll_medley>, 
    [[<item:culturaldelights:chicken_roll_slice>, <item:culturaldelights:chicken_roll_slice>, <item:culturaldelights:chicken_roll_slice>],
    [<item:culturaldelights:tropical_roll>, <item:culturaldelights:tropical_roll>, <item:culturaldelights:tropical_roll>],
    [<item:culturaldelights:pufferfish_roll>, bowl, <item:culturaldelights:pufferfish_roll>]]);


### Nether's Delight
// Warped Moldy Meat
craftingTable.removeByName("nethersdelight:warped_moldy_meat");
craftingTable.addShapeless("warped_moldy_meat", <item:nethersdelight:warped_moldy_meat>, [<item:nethersdelight:hoglin_sirloin>, <item:minecraft:warped_roots>, <item:minecraft:warped_roots>, bowl]);



# Make all ore smelting use tags
val copper_ore = <tag:items:minecraft:copper_ores>;
val iron_ore = <tag:items:minecraft:iron_ores>;
val gold_ore = <tag:items:minecraft:gold_ores>;
val diamond_ore = <tag:items:minecraft:diamond_ores>;
val emerald_ore = <tag:items:minecraft:emerald_ores>;

# Removals are in 1-kubejs.zs to prevent conflicts with the scrap recipes

furnace.addRecipe("copper_ingot", <item:minecraft:copper_ingot>, copper_ore, 0.5, 200);
blastFurnace.addRecipe("blast_copper_ingot", <item:minecraft:copper_ingot>, copper_ore, 0.5, 100);

furnace.addRecipe("iron_ingot", <item:minecraft:iron_ingot>, iron_ore, 0.7, 200);
blastFurnace.addRecipe("blast_iron_ingot", <item:minecraft:iron_ingot>, iron_ore, 0.7, 100);

furnace.addRecipe("gold_ingot", <item:minecraft:gold_ingot>, gold_ore, 1.5, 200);
blastFurnace.addRecipe("blast_gold_ingot", <item:minecraft:gold_ingot>, gold_ore, 1.5, 100);

furnace.addRecipe("diamond", <item:minecraft:diamond>, diamond_ore, 2.0, 200);
blastFurnace.addRecipe("blast_diamond", <item:minecraft:diamond>, diamond_ore, 2.0, 100);

furnace.addRecipe("emerald", <item:minecraft:emerald>, emerald_ore, 3.0, 200);
blastFurnace.addRecipe("blast_emerald", <item:minecraft:emerald>, emerald_ore, 3.0, 100);



# Ores no sane person would smelt but I'll fix them anyway to be consistent

val coal_ore = <tag:items:minecraft:coal_ores>;
val lapis_ore = <tag:items:minecraft:lapis_ores>;
val redstone_ore = <tag:items:minecraft:redstone_ores>;
val quartz_ore = <tag:items:c:quartz_ores>;

furnace.addRecipe("coal", <item:minecraft:coal>, coal_ore, 0.1, 200);
blastFurnace.addRecipe("blast_coal", <item:minecraft:coal>, coal_ore, 0.1, 100);

furnace.addRecipe("lapis", <item:minecraft:lapis_lazuli>, lapis_ore, 0.35, 200);
blastFurnace.addRecipe("blast_lapis", <item:minecraft:lapis_lazuli>, lapis_ore, 0.35, 100);

furnace.addRecipe("redstone", <item:minecraft:redstone>, redstone_ore, 0.65, 200);
blastFurnace.addRecipe("blast_redstone", <item:minecraft:redstone>, redstone_ore, 0.65, 100);

furnace.addRecipe("quartz", <item:minecraft:quartz>, quartz_ore, 0.25, 200);
blastFurnace.addRecipe("blast_quartz", <item:minecraft:quartz>, quartz_ore, 0.25, 100);

print("recipe-tag-fixes.zs loaded");