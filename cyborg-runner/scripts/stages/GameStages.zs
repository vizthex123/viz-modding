# Stages mods & items
/*
mods.ItemStages.stageModItems("stage", "modID");

mods.ItemStages.removeItemStage(<>);

mods.ItemStages.addItemStage("stage_name", <item>);
mods.ItemStages.addItemStage("stage_name", <OreDictID>);
*/

print("GameStages.zs loading...");

# Stage mods
mods.ItemStages.stageModItems("ceramics", "ceramics");
mods.ItemStages.stageModItems("technology", "thermalexpansion");
mods.ItemStages.stageModItems("technology", "thermaldynamics");
mods.ItemStages.stageModItems("technological_tools", "thermalinnovation");

mods.ItemStages.stageModItems("base_defense", "ompd");
mods.ItemStages.stageModItems("base_defense", "openmodularturrets");

mods.ItemStages.stageModItems("storage_compression", "appliedenergistics2");


# Make Coffee Cups & Empty Cans not need Advanced Cooking
mods.ItemStages.addItemStage("cooking", <xlfoodmod:coffee_cup>);
mods.ItemStages.addItemStage("cooking", <xlfoodmod:empty_can>);

/*
# Re-stage items
mods.ItemStages.removeItemStage(<openmodularturrets:ammo_meta>);
mods.ItemStages.addItemStage("base_defense", <openmodularturrets:ammo_meta>);
*/

print("GameStages.zs loaded");