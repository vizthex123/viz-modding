# Adds custom loot drops to mobs
# Only humanoid enemies can drop money due to them being human before the plague lore-wise (like in Resident Evil 4)
# Money drops are managed by Scaling Wealth

import loottweaker.LootTweaker.getTable;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

print("LootTweaker.zs loading...");
/*
val NAME = loottweaker.LootTweaker.getTable("minecraft:entities/ENTITY");
val NAME = ENTITYNAME.addPool("LOOTTABLENAME", 1, 2, 0, 0);
- Numbers, L -> R: Min Rolls, Max Rolls, Min/Max Bonus Rolls
NAME.addItemEntry(<item>, amount);
*/


# Progression
// Stuff that drops Bones
val pig = loottweaker.LootTweaker.getTable("minecraft:entities/pig");
val cow = loottweaker.LootTweaker.getTable("minecraft:entities/cow");
val sheep = loottweaker.LootTweaker.getTable("minecraft:entities/sheep");
val chicken = loottweaker.LootTweaker.getTable("minecraft:entities/chicken");
val parrot = loottweaker.LootTweaker.getTable("minecraft:entities/parrot");
val zombie1 = loottweaker.LootTweaker.getTable("minecraft:entities/zombie");
val zombie2 = loottweaker.LootTweaker.getTable("minecraft:entities/zombie_villager");

val pig_loot = pig.addPool("pig_bones", 1, 1, 0, 0);
val cow_loot = cow.addPool("cow_bones", 1, 1, 0, 2);
val sheep_loot = sheep.addPool("sheep_bones", 1, 1, 0, 0);
val chicken_loot = chicken.addPool("chicken_bones", 0, 1, 0, 0);
val parrot_loot = parrot.addPool("parrot_bones", 0, 1, 0, 0);
val zombie1_loot = zombie1.addPool("zombie_bones", 0, 1, 0, 0);
val zombie2_loot = zombie2.addPool("zombie_villager_bones", 0, 1, 0, 1);

pig_loot.addItemEntry(<minecraft:bone>, 1);
cow_loot.addItemEntry(<minecraft:bone>, 1);
sheep_loot.addItemEntry(<minecraft:bone>, 1);
chicken_loot.addItemEntry(<minecraft:bone>, 1);
parrot_loot.addItemEntry(<minecraft:bone>, 1);
zombie1_loot.addItemEntry(<minecraft:bone>, 2);
zombie2_loot.addItemEntry(<minecraft:bone>, 2);

// Slimeballs
val zombie_horse = loottweaker.LootTweaker.getTable("minecraft:entities/zombie_horse");

val zombie_horse_loot = zombie_horse.addPool("zombie_horse_slimeballs", 0, 2, 0, 0);

zombie_horse_loot.addItemEntry(<minecraft:slime_ball>, 1);

# Money drops are managed by Scaling Wealth

print("LootTweaker.zs loaded");