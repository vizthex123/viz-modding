/*
mods.ItemStages.addItemStage("stage_name", <item>);
*/

print("DataDisks.zs loading...");

mods.ItemStages.addItemStage("stone_age", <contenttweaker:datadisk_stone>);
mods.ItemStages.addItemStage("bronze_age", <contenttweaker:datadisk_bronze>);
mods.ItemStages.addItemStage("iron_age", <contenttweaker:datadisk_iron>);

mods.ItemStages.addItemStage("industrial_age", <contenttweaker:datadisk_industrial>);
mods.ItemStages.addItemStage("industrial_age", <contenttweaker:datadisk_industrial_unref>);

mods.ItemStages.addItemStage("machine_age", <contenttweaker:datadisk_machine>);
mods.ItemStages.addItemStage("machine_age", <contenttweaker:datadisk_machine_unref>);
mods.ItemStages.addItemStage("machine_age", <contenttweaker:dataunit_empty>);
mods.ItemStages.addItemStage("machine_age", <contenttweaker:dataunit>);

mods.ItemStages.addItemStage("information_age", <contenttweaker:datadisk_information>);
mods.ItemStages.addItemStage("information_age", <contenttweaker:datadisk_information_unref>);

mods.ItemStages.addItemStage("atomic_age", <contenttweaker:proton>);
mods.ItemStages.addItemStage("atomic_age", <contenttweaker:neutron>);
mods.ItemStages.addItemStage("atomic_age", <contenttweaker:electron>);
mods.ItemStages.addItemStage("atomic_age", <contenttweaker:datadisk_atomic>);

print("Data Disk recipes are in recipes.zs!");
print("DataDisks.zs loaded");