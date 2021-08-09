# Hides things from JEI, or adds info about them
print("JEI.zs loading...");

/*
mods.jei.JEI.hideItem(<item>);
mods.jei.JEI.hideFluid(<fluid:minecraft:lava>);

mods.jei.JEI.addInfo(<item>, ["line1", "line2"]);

mods.jei.JEI.hideRecipe("category", "recipeName");
*/

# Hide the Anvil category since it's kind of pointless
mods.jei.JEI.hideCategory("minecraft:anvil");

# Add JEI Info for various items
mods.jei.JEI.addInfo(<item:minecraft:carved_pumpkin>, ["Use shears on a pumpkin"]);
mods.jei.JEI.addInfo(<item:heartcanisters:heart>, ["Drops from enemies"]);


print("JEI.zs loaded");