# Adds recipes to Create's machines
print("create.zs loading...");
/*
<recipetype:create:milling>.addRecipe("recipeName", [<outputs> % chance], <input>);

<recipetype:create:crushing>.addRecipe("recipeName", [<outputs> % chance], <input>);

<recipetype:create:mixing>.addRecipe("recipeName", "heat*", <output>, [<item_inputs>], [<fluid_inputs>], Duration**);
* none, heated, superheated
** optional

<recipetype:create:compacting>.addRecipe("recipeName", "heat*", <output>, [<item_inputs>], [<fluid_inputs>], Duration**);
* none, heated, superheated
** optional

<recipetype:create:filling>.addRecipe("recipeName", <output>, <input>, <fluid>);

<recipetype:create:pressing>.addRecipe(String name, MCWeightedItemStack[] output, IIngredientWithAmount input, @Optional(100) int duration)

<recipetype:create:mechanical_crafting>.addRecipe("recipeName", <output>,
[[<item>],
[<item>],
[<item>]]);

Can add more rows as needed. Can be any shape.

do item:minecraft:air for empty spaces
do fluid:minecraft:empty for empty fluids
*/

// Moved AE2's Ender Dust to the Crushing Wheels
blastFurnace.remove(<item:ae2:ender_dust>);
<recipetype:create:crushing>.addRecipe("ender_dust", [<item:ae2:ender_dust> % 100], <item:minecraft:ender_pearl>, 3);

// Raw Platinum > Platinum
<recipetype:create:crushing>.addRecipe("crush_raw_platinum", [<item:kubejs:crushed_platinum> % 100, <item:create:experience_nugget> % 85], <item:ob_core:platinum_raw>);

// Crying Obsidian > Powdered Obsidian
<recipetype:create:crushing>.addRecipe("crying_obsidian_to_dust", [<item:create:powdered_obsidian>*2, <item:create:powdered_obsidian> % 50, <item:create:powdered_obsidian> % 25, <item:minecraft:obsidian> % 50], <item:minecraft:crying_obsidian>);

// Crush Gilded Blackstone into Gold
<recipetype:create:crushing>.addRecipe("gilded_blackstone_crushing", [<item:create:crushed_gold_ore>, <item:minecraft:gold_nugget>*6 % 25, <item:minecraft:blackstone> % 85], <item:minecraft:gilded_blackstone>);

// Crushing recipe for Gold Rings
<recipetype:create:crushing>.addRecipe("crush_gold_ring", [<item:create:crushed_gold_ore>*2 % 50, <item:minecraft:gold_nugget>*6 % 50], <item:additionaladditions:gold_ring>);

// Convert debris scrap nuggets into scrap
<recipetype:create:mechanical_crafting>.addRecipe("nuggets_to_scrap", <item:minecraft:netherite_scrap>,
[[<tag:items:forge:nuggets/netherite_scrap>, <tag:items:forge:nuggets/netherite_scrap>, <tag:items:forge:nuggets/netherite_scrap>],
[<tag:items:forge:nuggets/netherite_scrap>, <tag:items:forge:nuggets/netherite_scrap>, <tag:items:forge:nuggets/netherite_scrap>],
[<tag:items:forge:nuggets/netherite_scrap>, <tag:items:forge:nuggets/netherite_scrap>, <tag:items:forge:nuggets/netherite_scrap>]]);


# Crush Corundum blocks into crystals
<recipetype:create:crushing>.addRecipe("crush_red_corundum", [<item:quark:red_corundum_cluster>*3 % 100, <item:quark:red_corundum_cluster> % 75], <item:quark:red_corundum>|<item:quark:waxed_red_corundum>, 10);

<recipetype:create:crushing>.addRecipe("crush_orange_corundum", [<item:quark:orange_corundum_cluster>*3 % 100, <item:quark:orange_corundum_cluster> % 75], <item:quark:orange_corundum>|<item:quark:waxed_orange_corundum>, 10);

<recipetype:create:crushing>.addRecipe("crush_yellow_corundum", [<item:quark:yellow_corundum_cluster>*3 % 100, <item:quark:yellow_corundum_cluster> % 75], <item:quark:yellow_corundum>|<item:quark:waxed_yellow_corundum>, 10);

<recipetype:create:crushing>.addRecipe("crush_green_corundum", [<item:quark:green_corundum_cluster>*3 % 100, <item:quark:green_corundum_cluster> % 75], <item:quark:green_corundum>|<item:quark:waxed_green_corundum>, 10);

<recipetype:create:crushing>.addRecipe("crush_blue_corundum", [<item:quark:blue_corundum_cluster>*3 % 100, <item:quark:blue_corundum_cluster> % 75], <item:quark:blue_corundum>|<item:quark:waxed_blue_corundum>, 10);

<recipetype:create:crushing>.addRecipe("crush_indigo_corundum", [<item:quark:indigo_corundum_cluster>*3 % 100, <item:quark:indigo_corundum_cluster> % 75], <item:quark:indigo_corundum>|<item:quark:waxed_indigo_corundum>, 10);

<recipetype:create:crushing>.addRecipe("crush_violet_corundum", [<item:quark:violet_corundum_cluster>*3 % 100, <item:quark:violet_corundum_cluster> % 75], <item:quark:violet_corundum>|<item:quark:waxed_violet_corundum>, 10);

<recipetype:create:crushing>.addRecipe("crush_white_corundum", [<item:quark:white_corundum_cluster>*3 % 100, <item:quark:white_corundum_cluster> % 75], <item:quark:white_corundum>|<item:quark:waxed_white_corundum>, 10);

<recipetype:create:crushing>.addRecipe("crush_black_corundum", [<item:quark:black_corundum_cluster>*3 % 100, <item:quark:black_corundum_cluster> % 75], <item:quark:black_corundum>|<item:quark:waxed_black_corundum>, 10);

print("create.zs loaded");