/*
mods.ItemStages.addItemStage("atomic_age", <item>);
mods.ItemStages.addItemStage("atomic_age", <OreDictID>);

mods.recipestages.Recipes.setRecipeStage("atomic_age", <recipe-or-item_name>);

mods.ItemStages.stageModItems("stage_name", "ModID");

mods.ItemStages.setUnfamiliarName("Name", <item>);
*/

print("atomic_age.zs loading...");

# Atomic Age
mods.ItemStages.addItemStage("atomic_age", <bedrockores:bedrock_miner>);

mods.ItemStages.addItemStage("atomic_age", <mekanism:machineblock3>);
mods.ItemStages.addItemStage("atomic_age", <mekanism:controlcircuit:3>);

mods.ItemStages.addItemStage("atomic_age", <mekanism:atomicalloy>);

mods.ItemStages.addItemStage("atomic_age", <mekanism:teleportationcore>);
mods.ItemStages.addItemStage("atomic_age", <mekanism:machineblock:4>);
mods.ItemStages.addItemStage("atomic_age", <mekanism:machineblock:13>);
/*
mods.recipestages.Recipes.setRecipeStage("atomic_age", <mekanism:teleportationcore>);
mods.recipestages.Recipes.setRecipeStage("atomic_age", <mekanism:machineblock:4>);
mods.recipestages.Recipes.setRecipeStage("atomic_age", <mekanism:machineblock:13>);

mods.recipestages.Recipes.setRecipeStage("atomic_age", <extrautils2:quarry>);
mods.recipestages.Recipes.setRecipeStage("atomic_age", <extrautils2:quarryproxy>);
*/

mods.ItemStages.addItemStage("atomic_age", <extrautils2:quarry>);
mods.ItemStages.addItemStage("atomic_age", <extrautils2:quarryproxy>);

// Fusion Reactor
mods.ItemStages.addItemStage("atomic_age", <mekanismgenerators:reactor>);
mods.ItemStages.addItemStage("atomic_age", <mekanismgenerators:reactor:1>);
mods.ItemStages.addItemStage("atomic_age", <mekanismgenerators:reactor:2>);
mods.ItemStages.addItemStage("atomic_age", <mekanismgenerators:reactor:3>);
mods.ItemStages.addItemStage("atomic_age", <mekanismgenerators:reactorglass>);
mods.ItemStages.addItemStage("atomic_age", <mekanismgenerators:reactorglass:1>);

mods.ItemStages.addItemStage("atomic_age", <mekanismgenerators:hohlraum>);

print("atomic_age.zs loaded");