# Adds recipes to machines from Thermal Expansion
print("thermal_expansion.zs loading...");
/*
mods.thermalexpansion.Pulverizer.addRecipe(IItemStack output, IItemStack input, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance);

mods.thermalexpansion.Refinery.addRecipe(<fluid_output>, <item_output> % *, <fluid_input>, RF);
* % chance from 1 - 100 (item outputs are optional)
*/

// Make Coal Coke out of Red Coal
mods.thermalexpansion.RedstoneFurnace.addPyrolysisRecipe(<thermalfoundation:material:802>, <extrautils2:ingredients:4>, 2500, 300);

// Process entities TE missed
mods.thermalexpansion.Centrifuge.addRecipeMob(<entity:natura:imp>, [<natura:edibles>*2 % 100, <natura:materials:6>*2 % 50, <natura:materials:6>*2 % 25], null, 4000, 3);

mods.thermalexpansion.Centrifuge.addRecipeMob(<entity:natura:nitrocreeper>, [<minecraft:gunpowder> * 2 % 100, <natura:materials:4> % 50, <natura:materials:4> % 25], null, 4000, 10);

mods.thermalexpansion.Centrifuge.addRecipeMob(<entity:industrialforegoing:pink_slime>, [<industrialforegoing:pink_slime> * 2 % 100, <industrialforegoing:pink_slime> % 50], null, 2000, 5);

print("thermal_expansion.zs loaded");