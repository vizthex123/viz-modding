# Stages mods & items
/*
mods.ItemStages.stageModItems("stage", "modID");

mods.ItemStages.removeItemStage(<>);

mods.ItemStages.addItemStage("stage_name", <item>);
mods.ItemStages.addItemStage("stage_name", <OreDictID>);

mods.ItemStages.setUnfamiliarName("name", <item>);
*/

print("GameStages.zs loading...");

# Stage mods
mods.ItemStages.stageModItems("ceramics", "ceramics");

mods.ItemStages.stageModItems("thermal_technology", "thermaldynamics");
mods.ItemStages.stageModItems("thermal_technology", "thermalexpansion");

mods.ItemStages.stageModItems("base_defense", "ompd");
mods.ItemStages.stageModItems("base_defense", "openmodularturrets");

mods.ItemStages.stageModItems("technological_tools", "thermalinnovation");
mods.ItemStages.stageModItems("technological_tools", "redstonearsenal");
mods.ItemStages.stageModItems("technological_tools", "simplyjetpacks");

mods.ItemStages.stageModItems("storage_compression", "refinedstorage");
mods.ItemStages.stageModItems("storage_compression", "refinedstorageaddons");
mods.ItemStages.stageModItems("storage_compression", "refinedstoragerequestify");
mods.ItemStages.stageModItems("storage_compression", "storagetech");

mods.ItemStages.removeItemStage(<refinedstorage:silicon>);


# Change item names if players don't have the stage unlocked
/* old AE2 stuff in case i ever wanna replace RS again lol
mods.ItemStages.stageModItems("storage_compression", "appliedenergistics2");
mods.ItemStages.setUnfamiliarName("Strange Crystal", <appliedenergistics2:material>);
mods.ItemStages.setUnfamiliarName("Electrically-Charged Crystal", <appliedenergistics2:material:1>);
*/
print("GameStages.zs loaded");