# Adds recipes to Botania's blocks

print("botania.zs loading...");
/*
https://docs.blamejared.com/1.16/en/mods/Botania/ManaInfusion
ManaInfusion.addRecipe(name as string, output as IItemStack, input as IIngredient, mana as int, catalyst as StateIngredient, group as string, function as RecipeFunctionSingle);
*/

# Convert Ectoplasm into Skyslime by using the Alchemy Catalyst
<recipetype:botania:mana_infusion>.addRecipe("ectoplasm_alchemy", <item:tconstruct:sky_slime_ball>, <item:nourished_nether:ectoplasm>, 750, <block:botania:alchemy_catalyst>);

# Convert Blazing Quartz into Quartz using the Alchemy Catalyst
val blazing_quartz = <item:malum:blazing_quartz>;

<recipetype:botania:mana_infusion>.addRecipe("blazing_quartz_alchemy", <item:minecraft:quartz>, blazing_quartz, 500, <block:botania:alchemy_catalyst>);

craftingTable.addShapeless("blaze_quartz", <item:botania:quartz_blaze>, [blazing_quartz, blazing_quartz, blazing_quartz, blazing_quartz]);

print("botania.zs loaded");