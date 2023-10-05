# Removes item recipes, but leaves them in JEI
print("4_removed.zs loading...");
/*
recipes.remove(<>);
recipes.removeByRecipeName("");
*/

// Pam's recipes
recipes.removeByRecipeName("bonecraft:stick");
recipes.removeByRecipeName("harvestcraft:fish_0");
recipes.removeByRecipeName("harvestcraft:saltitem");


// Ender IO machines
// To force players to use the multi-blocks I designed
recipes.remove(<enderio:block_simple_furnace>);
recipes.remove(<enderio:block_simple_sag_mill>);
recipes.remove(<enderio:block_simple_alloy_smelter>);
recipes.removeByRecipeName("enderio:enhanced_alloy_smelter");
recipes.removeByRecipeName("enderio:enhanced_s_a_g_mill");

print("4_removed.zs loaded");