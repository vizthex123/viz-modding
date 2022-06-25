# Adds recipes to Tinker's Construct
print("tinker.zs loading...");
/*
<recipetype:tconstruct:melting>.addMeltingRecipe(name as string, input as IIngredient, output as IFluidStack, temperature as int, time as int, @Optional byproduct as IFluidStack[])
*/
/*
// Melt Gold Rings into Gold
<recipetype:tconstruct:melting>.addMeltingRecipe("melt_gold_ring", <item:additionaladditions:gold_ring>, <fluid:tconstruct:molten_gold>*400, 700, 5);
*/
print("tinker.zs loaded");