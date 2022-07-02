# Adds recipes to crusher-type blocks
# Crusher = Millstone, Crushing Wheels, Macerator, Crushing Upgrade (Pedestals), Grinding (ElementalCraft)

print("crusher_recipes.zs loading...");
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

Recipes for the repair chests are in misc.zs!
*/

# Flint -> Gunpowder
<recipetype:create:milling>.addRecipe("mill_flint", [<item:minecraft:gunpowder> % 25], <item:minecraft:flint>);

<recipetype:create:crushing>.addRecipe("crush_flint", [<item:minecraft:gunpowder> % 50], <item:minecraft:flint>);

# Pure Quartz -> Crystalline Dust
<recipetype:create:milling>.addRecipe("mill_pure_quartz", [<item:kubejs:crystalline_dust> % 25], <tag:items:infinite:pure_quartz>);

<recipetype:create:crushing>.addRecipe("crush_pure_quartz", [<item:kubejs:crystalline_dust> % 50], <tag:items:infinite:pure_quartz>);


print("crusher_recipes.zs loading...");