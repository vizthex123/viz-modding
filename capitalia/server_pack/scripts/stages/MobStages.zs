# Adds Game Stages support to various mobs
/*
mods.MobStages.addStage("stage", "entity");
mods.MobStages.addReplacement("entity", "replacement");
^ Will replace a staged mob with this one if it can't spawn. Must have the "entity" field be staged.
*/

print("MobStages.zs loading...");

# Tech Guns' mobs
mods.MobStages.addStage("stone_age", "techguns:zombiefarmer");
mods.MobStages.addStage("bronze_age", "techguns:zombieminer");
mods.MobStages.addStage("iron_age", "techguns:zombiepoliceman");
mods.MobStages.addStage("industrial_age", "techguns:zombiesoldier");
mods.MobStages.addStage("industrial_age", "techguns:skeletonsoldier");

# Better Slimes' mobs
mods.MobStages.addStage("stone_age", "null:blue_slime");
mods.MobStages.addStage("stone_age", "null:black_slime");
mods.MobStages.addStage("stone_age", "null:knight_slime");

mods.MobStages.addStage("bronze_age", "null:yellow_slime");
mods.MobStages.addStage("bronze_age", "null:red_slime");
mods.MobStages.addStage("bronze_age", "null:iron_slime");

mods.MobStages.addStage("iron_age", "null:purple_slime");
mods.MobStages.addStage("iron_age", "null:gold_slime");

print("MobStages.zs loaded");