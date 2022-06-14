# Adds custom loot drops to mobs

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

print("LootTweaker.zs loading...");

/*
val NAME = loottweaker.LootTweaker.getTable("minecraft:entities/ENTITY");
val NAME = ENTITYNAME.addPool("LOOTTABLENAME", 1, 2, 0, 0);
- Numbers, L -> R: Min Rolls, Max Rolls, Min/Max Bonus Rolls

NAME.addItemEntry(<item>, amount);
*/

val squid = loottweaker.LootTweaker.getTable("minecraft:entities/squid");

val squid_loot = squid.addPool("creepvine", 0, 2, 0, 0);
val squid_loot_seeds = squid.addPool("creepvine_seeds", 0, 3, 0, 0);

squid_loot.addItemEntry(<better_diving:creepvine>, 2);
squid_loot_seeds.addItemEntry(<better_diving:creepvine_seed_cluster>, 1);


print("LootTweaker.zs loaded");