# Changes things from Advanced Rocketry

print("advRocketry.zs loading...");

// Change Carbon Brick recipes
recipes.remove(<advancedrocketry:misc:1>);
recipes.addShapeless(<advancedrocketry:misc:1>, [<minecraft:coal>, <minecraft:coal>]);
recipes.addShapeless(<advancedrocketry:misc:1>*2, [<minecraft:coal:1>, <minecraft:coal:1>]);

mods.thermalexpansion.Compactor.addPressRecipe(<advancedrocketry:misc:1>*4, <foundry:component:21>, 2000);
mods.thermalexpansion.Compactor.addPressRecipe(<advancedrocketry:misc:1>*4, <thermalfoundation:material:802>, 2000);

mods.thermalexpansion.Compactor.addPressRecipe(<advancedrocketry:misc:1>, <minecraft:coal>*2, 4000);
mods.thermalexpansion.Compactor.addPressRecipe(<advancedrocketry:misc:1>*2, <minecraft:coal:1>*2, 4000);

print("advRocketry.zs loaded");