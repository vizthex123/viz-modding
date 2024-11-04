# Removes recipes but leaves items in JEI
/*
recipes.remove(<>);
recipes.removeByRecipeName("modid:recipename");
*/
print("Loading removed.zs...");

recipes.remove(<projectred-core:resource_item:100>);
recipes.remove(<bloodmagic:sigil_claw>);
recipes.removeShapeless(<industrialforegoing:black_hole_controller_reworked>);


/*
mods.thermalexpansion.Insolator.removeRecipe(<appliedenergistics2:crystal_seed>.withTag({progress: 0}), <minecraft:glowstone>);
mods.thermalexpansion.Insolator.removeRecipe(<appliedenergistics2:crystal_seed:600>.withTag({progress: 600}), <minecraft:glowstone>);
mods.thermalexpansion.Insolator.removeRecipe(<appliedenergistics2:crystal_seed:1200>.withTag({progress: 1200}), <minecraft:glowstone>);
*/

print("removed.zs loaded");