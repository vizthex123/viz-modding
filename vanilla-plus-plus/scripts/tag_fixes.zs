# Like the Recipe Fixes section in qol.zs, but for modded items
print("tag_fixes.zs loading...");
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


# Add tag support to foods from Farmer's & Nether's Delight
var baked = <item:minecraft:baked_potato>;
var beet = <item:minecraft:beetroot>;
var berry = <item:minecraft:sweet_berries>;
var bowl = <tag:items:vanilla:bowl>;

var cabbage = <tag:items:c:salad_ingredients/cabbage>;
var onion = <item:farmersdelight:onion>;
var rice = <item:farmersdelight:cooked_rice>;
var tomato = <item:farmersdelight:tomato>;

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
craftingTable.addShapeless("nether_salad", <item:farmersdelight:nether_salad>, [<item:minecraft:crimson_fungus>, <item:minecraft:warped_fungus>, bowl]);

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

print("tag_fixes.zs loaded");