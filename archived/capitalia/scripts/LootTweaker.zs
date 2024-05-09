# Adds custom loot drops to mobs
/*
val NAME = loottweaker.LootTweaker.getTable("minecraft:entities/ENTITY");
val NAME = ENTITYNAME.addPool("LOOTTABLENAME", 0, 1, 0, 0);
- Numbers, L -> R: Min Rolls, Max Rolls, Min/Max Bonus Rolls
NAME.addItemEntry(<item>, amount*);
* Even if it's 1, it has to be specified

Coin Values:
Copper - 1
Silver - 10
Gold - 100
Diamond (Platinum) - 1,000
*/

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

# Bosses
val wither_boss = loottweaker.LootTweaker.getTable("minecraft:entities/boss/wither");

val nether_star = wither_boss.addPool("nether_star", 1, 1, 0, 0);
val wither_boss_loot = wither_boss.addPool("wither_coins", 1, 1, 0, 3);

nether_star.addItemEntry(<minecraft:nether_star>, 1);
wither_boss_loot.addItemEntry(<jjcoin:diamond_coin>, 5);
# $5,000^

val dragon_boss = loottweaker.LootTweaker.getTable("minecraft:entities/ender_dragon");

val dragon_boss_loot = wither_boss.addPool("dragon_coins", 1, 1, 1, 3);

dragon_boss_loot.addItemEntry(<jjcoin:diamond_coin>, 10);
# $10,000^

# Overworld Enemies
// Vanilla
val zombie = loottweaker.LootTweaker.getTable("minecraft:entities/zombie");
val vzombie = loottweaker.LootTweaker.getTable("minecraft:entities/zombie_villager");
val skeleton = loottweaker.LootTweaker.getTable("minecraft:entities/skeleton");
val creeper = loottweaker.LootTweaker.getTable("minecraft:entities/creeper");
val spider = loottweaker.LootTweaker.getTable("minecraft:entities/spider");
val cave_spider = loottweaker.LootTweaker.getTable("minecraft:entities/cave_spider");

val husk = loottweaker.LootTweaker.getTable("minecraft:entities/husk");
val stray = loottweaker.LootTweaker.getTable("minecraft:entities/stray");

val guardian = loottweaker.LootTweaker.getTable("minecraft:entities/guardian");
val elder_guardian = loottweaker.LootTweaker.getTable("minecraft:entities/elder_guardian");


val zombie_loot = zombie.addPool("zombie_coins", 1, 1, 0, 0);
val vzombie_loot = vzombie.addPool("zombie_villager_coins", 1, 1, 0, 0);
val skeleton_loot = skeleton.addPool("skeleton_coins", 1, 1, 0, 0);
val creeper_loot = creeper.addPool("creeper_coins", 1, 1, 0, 1);
val spider_loot = spider.addPool("spider_coins", 1, 1, 0, 0);
val cave_spider_loot = cave_spider.addPool("cave_spider_coins", 1, 1, 0, 0);

val husk_loot = husk.addPool("husk_coins", 1, 1, 0, 0);
val stray_loot = stray.addPool("stray_coins", 1, 1, 0, 0);

val guardian_loot = guardian.addPool("guardian_coins", 1, 1, 0, 0);
val elder_guardian_loot = elder_guardian.addPool("elder_guardian_coins", 1, 1, 0, 2);


zombie_loot.addItemEntry(<jjcoin:copper_coin>, 3);
vzombie_loot.addItemEntry(<jjcoin:copper_coin>, 2);
skeleton_loot.addItemEntry(<jjcoin:copper_coin>, 7);
creeper_loot.addItemEntry(<jjcoin:copper_coin>, 5);
spider_loot.addItemEntry(<jjcoin:copper_coin>, 5);
cave_spider_loot.addItemEntry(<jjcoin:copper_coin>, 5);

husk_loot.addItemEntry(<jjcoin:silver_coin>, 1);
stray_loot.addItemEntry(<jjcoin:silver_coin>, 2);

guardian_loot.addItemEntry(<jjcoin:silver_coin>, 1);
elder_guardian_loot.addItemEntry(<jjcoin:silver_coin>, 5);


val slime = loottweaker.LootTweaker.getTable("minecraft:entities/slime");
val witch = loottweaker.LootTweaker.getTable("minecraft:entities/witch");

val witch_loot = witch.addPool("witch_coins", 1, 1, 0, 3);

witch_loot.addItemEntry(<jjcoin:gold_coin>, 5);


val evocation_illager = loottweaker.LootTweaker.getTable("minecraft:entities/evocation_illager");
val vindication_illager = loottweaker.LootTweaker.getTable("minecraft:entities/vindication_illager");

val evocation_illager_loot = evocation_illager.addPool("evoker_coins", 1, 1, 0, 2);
val vindication_illager_loot = vindication_illager.addPool("vindicator_coins", 1, 1, 0, 0);

evocation_illager_loot.addItemEntry(<jjcoin:gold_coin>, 1);
vindication_illager_loot.addItemEntry(<jjcoin:silver_coin>, 5);


// Horses
val zombie_horse = loottweaker.LootTweaker.getTable("minecraft:entities/zombie_horse");
val skeleton_horse = loottweaker.LootTweaker.getTable("minecraft:entities/skeleton_horse");

val zombie_horse_loot = zombie_horse.addPool("zombie_horse_coins", 1, 1, 0, 5);
val skeleton_horse_loot = skeleton_horse.addPool("skeleton_horse_coins", 1, 1, 0, 10);

zombie_horse_loot.addItemEntry(<jjcoin:silver_coin>, 1);
skeleton_horse_loot.addItemEntry(<jjcoin:silver_coin>, 2);


# Nether Enemies
// Vanilla
val zombie_pigman = loottweaker.LootTweaker.getTable("minecraft:entities/zombie_pigman");
val blaze = loottweaker.LootTweaker.getTable("minecraft:entities/blaze");
val ghast = loottweaker.LootTweaker.getTable("minecraft:entities/ghast");
val magma_cube = loottweaker.LootTweaker.getTable("minecraft:entities/magma_cube");

val zombie_pigman_loot = zombie_pigman.addPool("zombie_pigman_coins", 0, 1, 0, 0);
val blaze_loot = blaze.addPool("blaze_coins", 1, 1, 0, 0);
val ghast_loot = blaze.addPool("ghast_coins", 1, 1, 0, 0);
val magma_cube_loot = blaze.addPool("magma_cube_coins", 1, 1, 0, 0);

zombie_pigman_loot.addItemEntry(<jjcoin:copper_coin>, 5);
blaze_loot.addItemEntry(<jjcoin:copper_coin>, 10);
ghast_loot.addItemEntry(<jjcoin:silver_coin>, 5);
magma_cube_loot.addItemEntry(<jjcoin:silver_coin>, 1);



# End Enemies
// Vanilla
val enderman = loottweaker.LootTweaker.getTable("minecraft:entities/enderman");
val endermite = loottweaker.LootTweaker.getTable("minecraft:entities/endermite");
val shulker = loottweaker.LootTweaker.getTable("minecraft:entities/shulker");


val enderman_loot = enderman.addPool("enderman_coins", 1, 1, 0, 1);
val enderman_loot2 = enderman.addPool("enderman_shards", 0, 2, 0, 2);
val endermite_loot = endermite.addPool("endermite_coins", 1, 1, 1, 10);
val endermite_loot2 = endermite.addPool("endermite_shards", 1, 1, 0, 2);
val shulker_loot = shulker.addPool("shulker_coins", 1, 1, 0, 1);


enderman_loot.addItemEntry(<jjcoin:silver_coin>, 1);
enderman_loot2.addItemEntry(<extrautils2:endershard>, 4);
endermite_loot.addItemEntry(<jjcoin:copper_coin>, 5);
endermite_loot2.addItemEntry(<extrautils2:endershard>, 1);
shulker_loot.addItemEntry(<jjcoin:copper_coin>, 15);


/*
# Tech Guns Enemies
// This is gonna take forever...
val alien_bug = loottweaker.LootTweaker.getTable("techguns:alienbug");
val farmer = loottweaker.LootTweaker.getTable("techguns:farmerzombie");

val alien_bug_loot = alien_bug.addPool("alien_bug_coins", 0, 1, 0, 1);
val farmer_loot = farmer.addPool("farmer_coins", 1, 1, 0, 0);

alien_bug_loot.addItemEntry(<jjcoin:copper_coin>, 25);
farmer_loot.addItemEntry(<jjcoin:copper_coin>, 3);
*/