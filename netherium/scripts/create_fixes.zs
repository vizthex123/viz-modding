# Fixes things that should have recipes in Create's machines
print("create_fixes.zs loading...");
/*
<recipetype:create:milling>.addRecipe("recipeName", [<outputs> % chance], <input>);

<recipetype:create:crushing>.addRecipe("recipeName", [<outputs> % chance], <input>);

<recipetype:create:mixing>.addRecipe("recipeName", "heat*", <output>, [<item_inputs>], [<fluid_inputs>], Duration**);
* none, heated, superheated
** optional

<recipetype:create:mechanical_crafting>.addRecipe("recipeName", <output>,
[[<item>],
[<item>],
[<item>]]);

Can add more rows as needed. Can be any shape.

<recipetype:create:splashing>.addRecipe("recipeName", [<outputs>], <input>);


furnace.addRecipe("recipeName", <output>, <input>, xp, cooktime-10s default);
blastFurnace.addRecipe("recipeName", <output>, <input>, xp, cooktime-10s default);

do item:minecraft:air for empty spaces
do fluid:minecraft:empty for empty fluids
*/

// Convert debris scrap nuggets into scrap
<recipetype:create:mechanical_crafting>.addRecipe("nuggets_to_scrap", <item:minecraft:netherite_scrap>,
[[<tag:items:forge:nuggets/netherite_scrap>, <tag:items:forge:nuggets/netherite_scrap>, <tag:items:forge:nuggets/netherite_scrap>],
[<tag:items:forge:nuggets/netherite_scrap>, <tag:items:forge:nuggets/netherite_scrap>, <tag:items:forge:nuggets/netherite_scrap>],
[<tag:items:forge:nuggets/netherite_scrap>, <tag:items:forge:nuggets/netherite_scrap>, <tag:items:forge:nuggets/netherite_scrap>]]);

# Fixes how various crushed ores don't have recipes
#Why is it broken?! >:{
# Each one has blasting (also create's one), smelting, and washing
// Tin
blastFurnace.addRecipe("blast_crushed_tin", <item:electrodynamics:ingottin>, <item:create:crushed_tin_ore>, 0.3, 100);
furnace.addRecipe("smelt_crushed_tin", <item:electrodynamics:ingottin>, <item:create:crushed_tin_ore>, 0.3, 200);

<recipetype:create:splashing>.addRecipe("wash_tin", [<item:bno:tin_nugget>*10, <item:bno:tin_nugget>*5 % 50], <item:create:crushed_tin_ore>);

// Lead
blastFurnace.addRecipe("blast_crushed_lead", <item:electrodynamics:ingotlead>, <item:create:crushed_lead_ore>, 0.3, 100);
furnace.addRecipe("smelt_crushed_lead", <item:electrodynamics:ingotlead>, <item:create:crushed_lead_ore>, 0.3, 200);

<recipetype:create:splashing>.addRecipe("wash_lead", [<item:bno:lead_nugget>*10, <item:bno:lead_nugget>*5 % 50], <item:create:crushed_lead_ore>);

// Silver
blastFurnace.addRecipe("blast_crushed_silver", <item:electrodynamics:ingotsilver>, <item:create:crushed_silver_ore>, 0.3, 100);
furnace.addRecipe("smelt_crushed_silver", <item:electrodynamics:ingotsilver>, <item:create:crushed_silver_ore>, 0.3, 200);

<recipetype:create:splashing>.addRecipe("wash_silver", [<item:bno:silver_nugget>*10, <item:bno:silver_nugget>*5 % 50], <item:create:crushed_silver_ore>);


print("create_fixes.zs loaded");