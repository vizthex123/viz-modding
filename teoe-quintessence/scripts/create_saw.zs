# Adds recipes to Create's mechanical saw
print("create_saw.zs loading...");
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

// Palm Wood > Planks
<recipetype:create:cutting>.addRecipe("palm_saw", <item:byg:stripped_palm_log>, <item:byg:palm_log>);
<recipetype:create:cutting>.addRecipe("palm_saw_planks", <item:byg:palm_planks>*6, <item:byg:stripped_palm_log>);
<recipetype:create:cutting>.addRecipe("palm_saw_planks_wood", <item:byg:palm_planks>*6, <item:byg:stripped_palm_wood>);

print("create_saw.zs loaded");