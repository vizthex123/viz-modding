# Stages entire mods
/*
mods.ItemStages.stageModItems("stage", "modID");

mods.ItemStages.removeItemStage(<>);

mods.ItemStages.addItemStage("stage_name", <item>);
mods.ItemStages.addItemStage("stage_name", <OreDictID>);
*/

print("GameStages.zs loading...");

# Stage mods
mods.ItemStages.stageModItems("ceramics", "ceramics");
mods.ItemStages.stageModItems("automated_advanced_crafting", "artisanautomation");
mods.ItemStages.stageModItems("technology", "thermalexpansion");
mods.ItemStages.stageModItems("technology", "thermaldynamics");
mods.ItemStages.stageModItems("technological_tools", "thermalinnovation");

mods.ItemStages.stageModItems("base_defense", "openmodularturrets");
mods.ItemStages.stageModItems("base_defense", "ompd");

mods.ItemStages.stageModItems("storage_compression", "refinedstorage");
mods.ItemStages.stageModItems("advanced_storage_compression", "storagetech");

mods.ItemStages.addItemStage("advanced_storage_compression", <refinedstoragerequestify:requester>);
mods.ItemStages.addItemStage("storage_compression", <refinedstorageaddons:wireless_crafting_grid>);



# Re-stage items
mods.ItemStages.removeItemStage(<refinedstorage:silicon>);


# Misc stage removals
mods.ItemStages.removeItemStage(<openmodularturrets:ammo_meta>);


print("GameStages.zs loaded");