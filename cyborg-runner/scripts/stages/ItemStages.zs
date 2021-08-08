# Adds Stages for various items & recipes
/*
mods.ItemStages.addItemStage("stage_name", <item>);
mods.ItemStages.addItemStage("stage_name", <OreDictID>);

mods.recipestages.Recipes.setRecipeStage("stage_name", <recipe-or-item_name>);

mods.ItemStages.stageModItems("stage_name", "ModID");

mods.ItemStages.setUnfamiliarName("Name", <item>);
*/

print("ItemStages.zs loading...");



# Coffe Cups & Empty Cans don't need Advanced Cooking
mods.ItemStages.addItemStage("cooking", <xlfoodmod:coffee_cup>);
mods.ItemStages.addItemStage("cooking", <xlfoodmod:empty_can>);


# Misc
mods.ItemStages.addItemStage("base_defense", <openmodularturrets:ammo_meta>);



print("ItemStages.zs loaded");