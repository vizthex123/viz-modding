# Adds recipes to Botania's blocks

print("botania.zs loading...");
/*
https://docs.blamejared.com/1.16/en/mods/Botania/ManaInfusion
ManaInfusion.addRecipe(name as string, output as IItemStack, input as IIngredient, mana as int, catalyst as StateIngredient, group as string, function as RecipeFunctionSingle);
*/

# Convert Blazing Quartz into Quartz using the Alchemy Catalyst
<recipetype:botania:mana_infusion>.addRecipe("blazing_quartz_alchemy", <item:minecraft:quartz>, <item:malum:blazing_quartz>, 500, <block:botania:alchemy_catalyst>);

craftingTable.addShapeless("blaze_quartz_blazing", <item:botania:quartz_blaze>, [<item:malum:blazing_quartz>, <item:malum:blazing_quartz>, <item:malum:blazing_quartz>, <item:malum:blazing_quartz>]);

print("botania.zs loaded");