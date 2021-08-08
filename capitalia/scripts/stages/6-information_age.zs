print("information_age is mainly in GameStage.zs, since it's only items from RS & its addons");
# This script is mostly here so I remember this stage exists. (since Refined Storage is near-exclusive to this stage)
# But, it's kind of used.

print("information_age.zs loading...");

// RS items that remain
/*
mods.recipestages.Recipes.setRecipeStage("information_age", <refinedstorage:controller>);

mods.recipestages.Recipes.setRecipeStage("information_age", <refinedstorage:controller>);
mods.recipestages.Recipes.setRecipeStage("information_age", <refinedstorage:grid>);
mods.recipestages.Recipes.setRecipeStage("information_age", <refinedstorage:portable_grid>);
mods.recipestages.Recipes.setRecipeStage("information_age", <refinedstorage:storage>);
mods.recipestages.Recipes.setRecipeStage("information_age", <refinedstorage:storage:1>);
mods.recipestages.Recipes.setRecipeStage("information_age", <refinedstorage:storage_part>);
mods.recipestages.Recipes.setRecipeStage("information_age", <refinedstorage:storage_part:1>);

mods.recipestages.Recipes.setRecipeStage("information_age", <refinedstorage:security_manager>);
mods.recipestages.Recipes.setRecipeStage("information_age", <refinedstorage:security_card>);
mods.recipestages.Recipes.setRecipeStage("information_age", <refinedstorage:network_card>);
*/
mods.ItemStages.addItemStage("information_age", <refinedstorage:controller>);
mods.ItemStages.addItemStage("information_age", <refinedstorage:grid>);
mods.ItemStages.addItemStage("information_age", <refinedstorage:portable_grid>);
mods.ItemStages.addItemStage("information_age", <refinedstorage:storage>);
mods.ItemStages.addItemStage("information_age", <refinedstorage:storage:1>);
mods.ItemStages.addItemStage("information_age", <refinedstorage:storage_part>);
mods.ItemStages.addItemStage("information_age", <refinedstorage:storage_part:1>);

mods.ItemStages.addItemStage("information_age", <refinedstorage:security_manager>);
mods.ItemStages.addItemStage("information_age", <refinedstorage:security_card>);
mods.ItemStages.addItemStage("information_age", <refinedstorage:network_card>);

mods.ItemStages.addItemStage("information_age", <refinedstorage:processor>);
mods.ItemStages.addItemStage("information_age", <refinedstorage:processor:1>);
mods.ItemStages.addItemStage("information_age", <refinedstorage:processor:2>);
mods.ItemStages.addItemStage("information_age", <refinedstorage:processor:3>);
mods.ItemStages.addItemStage("information_age", <refinedstorage:processor:4>);
mods.ItemStages.addItemStage("information_age", <refinedstorage:processor:5>);

mods.ItemStages.addItemStage("information_age", <refinedstorage:core>);
mods.ItemStages.addItemStage("information_age", <refinedstorage:core:1>);

mods.ItemStages.addItemStage("information_age", <refinedstorage:quartz_enriched_iron>);
mods.ItemStages.addItemStage("information_age", <refinedstorage:quartz_enriched_iron_block>);
mods.ItemStages.addItemStage("information_age", <refinedstorage:machine_casing>);

mods.ItemStages.addItemStage("information_age", <refinedstorage:silicon>);
#mods.recipestages.Recipes.setRecipeStage("information_age", <refinedstorage:silicon>);


mods.ItemStages.addItemStage("information_age", <refinedstorage:disk_manipulator>);
#mods.recipestages.Recipes.setRecipeStage("information_age", <refinedstorage:disk_manipulator>);

mods.ItemStages.addItemStage("information_age", <refinedstorage:interface>);
#mods.recipestages.Recipes.setRecipeStage("information_age", <refinedstorage:interface>);

mods.ItemStages.addItemStage("information_age", <refinedstorage:storage_disk:1>);
#mods.recipestages.Recipes.setRecipeStage("information_age", <refinedstorage:storage_disk:1>);

mods.ItemStages.addItemStage("information_age", <refinedstorage:storage_monitor>);
#mods.recipestages.Recipes.setRecipeStage("information_age", <refinedstorage:storage_monitor>);

mods.ItemStages.addItemStage("information_age", <refinedstorage:filter>);
#mods.recipestages.Recipes.setRecipeStage("information_age", <refinedstorage:filter>);

mods.ItemStages.addItemStage("information_age", <refinedstorage:cutting_tool>);
#mods.recipestages.Recipes.setRecipeStage("information_age", <refinedstorage:cutting_tool>);

print("information_age.zs loaded");