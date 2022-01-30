# Stages entire mods
/*
mods.ItemStages.stageModItems("stage", "modID");
mods.ItemStages.removeItemStage(<>);
*/

print("GameStages.zs loading...");

# Stage mods
mods.ItemStages.stageModItems("iron_age", "simplequarry");

mods.ItemStages.stageModItems("industrial_age", "industrialforegoing");

mods.ItemStages.stageModItems("machine_age", "thermalinnvoation");
mods.ItemStages.stageModItems("machine_age", "thermaldynamics");


mods.ItemStages.stageModItems("basic_reactor", "bigreactors");
mods.ItemStages.removeItemStage(<bigreactors:dustyellorium>);

mods.ItemStages.stageModItems("atomic_age", "compactmachines3");

mods.ItemStages.stageModItems("space_age", "advancedrocketry");

mods.ItemStages.stageModItems("ae2", "ae2fc");
mods.ItemStages.stageModItems("ae2", "ae2stuff");
mods.ItemStages.stageModItems("ae2", "appliedenergistics2");

mods.ItemStages.stageModItems("wireless_power", "fluxnetworks");



# Re-stage items
mods.ItemStages.removeItemStage(<advancedrocketry:misc:1>);
mods.ItemStages.removeItemStage(<foundry:refractoryglass>);
mods.ItemStages.removeItemStage(<advancedrocketry:ic:3>);
mods.ItemStages.addItemStage("iron_age", <advancedrocketry:ic:3>);

mods.ItemStages.addItemStage("iron_age", <libvulpes:structuremachine>);
mods.recipestages.Recipes.setRecipeStage("iron_age", <libvulpes:structuremachine>);

mods.ItemStages.removeItemStage(<libvulpes:motor>);
mods.ItemStages.removeItemStage(<libvulpes:advancedmotor>);
mods.ItemStages.addItemStage("industrial_age", <libvulpes:motor>);
mods.recipestages.Recipes.setRecipeStage("industrial_age", <libvulpes:motor>);
mods.ItemStages.addItemStage("industrial_age", <libvulpes:advancedmotor>);
mods.recipestages.Recipes.setRecipeStage("industrial_age", <libvulpes:advancedmotor>);


mods.ItemStages.removeItemStage(<advancedrocketry:sawblade>);
mods.ItemStages.addItemStage("iron_age", <advancedrocketry:sawblade>);
mods.recipestages.Recipes.setRecipeStage("iron_age", <advancedrocketry:sawblade>);

mods.ItemStages.removeItemStage(<advancedrocketry:sawbladeiron>);
mods.ItemStages.addItemStage("iron_age", <advancedrocketry:sawbladeiron>);
mods.recipestages.Recipes.setRecipeStage("iron_age", <advancedrocketry:sawbladeiron>);


mods.ItemStages.removeItemStage(<simplequarry:fuel_quarry>);
mods.ItemStages.addItemStage("bronze_age", <simplequarry:fuel_quarry>);

mods.ItemStages.removeItemStage(<industrialforegoing:protein_reactor>);
mods.ItemStages.addItemStage("machine_age", <industrialforegoing:protein_reactor>);

mods.ItemStages.removeItemStage(<industrialforegoing:protein_generator>);
mods.ItemStages.addItemStage("machine_age", <industrialforegoing:protein_generator>);



# Re-stage early-game things in late-game staged mods
mods.ItemStages.removeItemStage(<advancedrocketry:cuttingmachine>);
mods.ItemStages.addItemStage("industrial_age", <advancedrocketry:cuttingmachine>);

mods.ItemStages.removeItemStage(<advancedrocketry:precisionassemblingmachine>);
mods.ItemStages.addItemStage("industrial_age", <advancedrocketry:precisionassemblingmachine>);

mods.ItemStages.removeItemStage(<advancedrocketry:ic>);
mods.ItemStages.addItemStage("industrial_age", <advancedrocketry:ic>);

mods.ItemStages.removeItemStage(<thermaldynamics:duct_32:1>);
mods.ItemStages.addItemStage("industrial_age", <thermaldynamics:duct_32:1>);

mods.ItemStages.removeItemStage(<thermaldynamics:duct_16:1>);
mods.ItemStages.addItemStage("industrial_age", <thermaldynamics:duct_16:1>);

mods.ItemStages.removeItemStage(<appliedenergistics2:material:5>);
mods.ItemStages.addItemStage("information_age", <appliedenergistics2:material:5>);

mods.ItemStages.removeItemStage(<advancedrocketry:blastbrick>);
mods.ItemStages.addItemStage("industrial_age", <advancedrocketry:blastbrick>);

mods.ItemStages.removeItemStage(<advancedrocketry:arcfurnace>);
mods.ItemStages.addItemStage("atomic_age", <advancedrocketry:arcfurnace>);



// Sky Stone stuff
mods.ItemStages.removeItemStage(<appliedenergistics2:sky_stone_block>);
mods.ItemStages.removeItemStage(<appliedenergistics2:smooth_sky_stone_block>);
mods.ItemStages.removeItemStage(<appliedenergistics2:smooth_sky_stone_chest>);
mods.ItemStages.removeItemStage(<appliedenergistics2:sky_stone_chest>);
mods.ItemStages.removeItemStage(<appliedenergistics2:material:45>);


// Misc stage removals
mods.ItemStages.removeItemStage(<advancedrocketry:misc>);
mods.ItemStages.removeItemStage(<ae2stuff:encoder>);
mods.ItemStages.removeItemStage(<ae2stuff:inscriber>);
mods.ItemStages.removeItemStage(<advancedrocketry:wafer>);
mods.ItemStages.removeItemStage(<appliedenergistics2:material:49>);
mods.ItemStages.removeItemStage(<advancedrocketry:lens>);


print("GameStages.zs loaded");