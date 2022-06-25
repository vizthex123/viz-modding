# Adds recipes to Create
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

<recipetype:create:mechanical_crafting>.addRecipe("recipeName", <output>,
[[<item>],
[<item>],
[<item>]]);

Can add more rows as needed. Can be any shape.

do item:minecraft:air for empty spaces
do fluid:minecraft:empty for empty fluids
*/

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