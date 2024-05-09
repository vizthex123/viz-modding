/*
mods.ItemStages.addItemStage("stage_name", <item>);
mods.ItemStages.addItemStage("stage_name", <OreDictID>);

mods.recipestages.Recipes.setRecipeStage("stage_name", <recipe-or-item_name>);

mods.ItemStages.stageModItems("stage_name", "ModID");

mods.ItemStages.setUnfamiliarName("Name", <item>);
*/

print("space_age.zs loading...");

mods.ItemStages.addItemStage("space_age", <libvulpes:productplate:7>);

mods.ItemStages.addItemStage("space_age", <libvulpes:productsheet:7>);

mods.ItemStages.addItemStage("space_age", <libvulpes:productrod:7>);

mods.ItemStages.addItemStage("space_age", <libvulpes:productrod:10>);

mods.ItemStages.addItemStage("space_age", <libvulpes:productgear:7>);

mods.ItemStages.addItemStage("space_age", <libvulpes:enhancedmotor>);

mods.ItemStages.addItemStage("space_age", <libvulpes:elitemotor>);

print("space_age.zs loaded");