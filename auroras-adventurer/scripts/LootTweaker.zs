# Adds custom loot drops to mobs
/*
val NAME = loottweaker.LootTweaker.getTable("minecraft:entities/ENTITY");
val NAME = ENTITYNAME.addPool("LOOTTABLENAME", 1, 2, 0, 0);
- Numbers, L -> R: Min Rolls, Max Rolls, Min/Max Bonus Rolls
NAME.addItemEntry(<item>, amount);

COIN VALUES:

Copper (Bronze) Coin - 1
Silver Coin - 5
Gold Coin - 10
Platinum Coin - 50
*/

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

print("Loading LootTweaker.zs...");

// Bosses

val wither_boss = loottweaker.LootTweaker.getTable("minecraft:entities/boss/wither");

val nether_star = wither_boss.addPool("nether_star", 1, 1, 0, 0);
val wither_boss_loot = wither_boss.addPool("wither_loot", 1, 1, 0, 3);

nether_star.addItemEntry(<minecraft:nether_star>, 1);
wither_boss_loot.addItemEntry(<ordinarycoins:coinplatinum>, 7);
# 350 aurum total ^

val ender_dragon = loottweaker.LootTweaker.getTable("minecraft:entities/ender_dragon");
val dragonboss = ender_dragon.addPool("ender_dragon_loot", 1, 1, 0, 7);
dragonboss.addItemEntry(<ordinarycoins:coinplatinum>, 20);
# 1,000 Aurum total ^

val runestone_guardian = loottweaker.LootTweaker.getTable("theaurorian:entities/runestonedungeonkeeper");
val runestone_guardian_loot = runestone_guardian.addPool("runestone_guardian_loot", 1, 1, 0, 1);
runestone_guardian_loot.addItemEntry(<ordinarycoins:coinsilver>, 25);
# 125 Aurum total ^

val spider_mother = loottweaker.LootTweaker.getTable("theaurorian:entities/spider");
val spider_mother_loot = spider_mother.addPool("spider_mother_loot", 1, 1, 0, 2);
spider_mother_loot.addItemEntry(<ordinarycoins:coinsilver>, 33);
# 165 Aurum total^

val moon_queen = loottweaker.LootTweaker.getTable("theaurorian:entities/moonqueen");
val moon_queen_loot = moon_queen.addPool("moon_queen_loot", 1, 1, 0, 3);
moon_queen_loot.addItemEntry(<ordinarycoins:coinsilver>, 45);
# 225 Aurum total ^


// Overworld enemies
val zombie = loottweaker.LootTweaker.getTable("minecraft:entities/zombie");
val zombie_villager = loottweaker.LootTweaker.getTable("minecraft:entities/zombie_villager");
val skeleton = loottweaker.LootTweaker.getTable("minecraft:entities/skeleton");
val creeper = loottweaker.LootTweaker.getTable("minecraft:entities/skeleton");
val spider = loottweaker.LootTweaker.getTable("minecraft:entities/spider");
val cave_spider = loottweaker.LootTweaker.getTable("minecraft:entities/cave_spider");

val husk = loottweaker.LootTweaker.getTable("minecraft:entities/husk");
val stray = loottweaker.LootTweaker.getTable("minecraft:entities/stray");
val slime = loottweaker.LootTweaker.getTable("minecraft:entities/slime");

val vex = loottweaker.LootTweaker.getTable("minecraft:entities/vex");
val vindicator = loottweaker.LootTweaker.getTable("minecraft:entities/vindication_illager");
val evoker = loottweaker.LootTweaker.getTable("minecraft:entities/evocation_illager");

val witch = loottweaker.LootTweaker.getTable("minecraft:entities/witch");
val guardian = loottweaker.LootTweaker.getTable("minecraft:entities/guardian");
val elder_guardian = loottweaker.LootTweaker.getTable("minecraft:entities/elder_guardian");


val zombie_loot = zombie.addPool("zombie_loot", 0, 1, 0, 0);
val zombie_villager_loot = zombie_villager.addPool("zombie_villager_loot", 0, 1, 0, 1);
val skeleton_loot = skeleton.addPool("skeleton_loot", 0, 1, 0, 0);
val creeper_loot = creeper.addPool("creeper_loot", 1, 1, 0, 0);
val spider_loot = spider.addPool("spider_loot", 0, 1, 0, 3);
val cave_spider_loot = cave_spider.addPool("cave_spider_loot", 1, 1, 0, 0);

val husk_loot = husk.addPool("husk_loot", 1, 1, 0, 0);
val stray_loot = stray.addPool("stray_loot", 1, 1, 0, 7);
val stray_loot2 = stray.addPool("stray_loot2", 1, 1, 0, 7);
val slime_loot = slime.addPool("slime_loot", 1, 1, 0, 0);

val vex_loot = vex.addPool("vex_loot", 1, 1, 0, 2);
val vindicator_loot = vindicator.addPool("vindicator_loot", 1, 1, 0, 3);
val evoker_loot = evoker.addPool("evoker_loot", 1, 1, 1, 5);

val witch_loot = witch.addPool("witch_loot", 0, 1, 1, 3);

val guardian_loot = guardian.addPool("guardian_loot", 1, 1, 0, 0);
val elder_guardian_loot = elder_guardian.addPool("elder_guardian_loot", 1, 1, 0, 2);



zombie_loot.addItemEntry(<ordinarycoins:coinbronze>, 3);
zombie_villager_loot.addItemEntry(<ordinarycoins:coinsilver>, 1);
skeleton_loot.addItemEntry(<ordinarycoins:coinbronze>, 4);
creeper_loot.addItemEntry(<ordinarycoins:coinsilver>, 1);
spider_loot.addItemEntry(<ordinarycoins:coinbronze>, 3);
cave_spider_loot.addItemEntry(<ordinarycoins:coinsilver>, 1);
cave_spider_loot.addItemEntry(<ordinarycoins:coinbronze>, 3);
husk_loot.addItemEntry(<ordinarycoins:coinsilver>, 1);

stray_loot.addItemEntry(<ordinarycoins:coinsilver>, 1);
stray_loot2.addItemEntry(<ordinarycoins:coingold>, 2);
slime_loot.addItemEntry(<ordinarycoins:coingold>, 1);

vex_loot.addItemEntry(<ordinarycoins:coinbronze>, 1);
vindicator_loot.addItemEntry(<ordinarycoins:coingold>, 2);
evoker_loot.addItemEntry(<ordinarycoins:coinplatinum>, 1);

witch_loot.addItemEntry(<ordinarycoins:coinbronze>, 8);
witch_loot.addItemEntry(<ordinarycoins:coinsilver>, 6);
witch_loot.addItemEntry(<ordinarycoins:coingold>, 4);
witch_loot.addItemEntry(<ordinarycoins:coinplatinum>, 2);

guardian_loot.addItemEntry(<ordinarycoins:coingold>, 1);
elder_guardian_loot.addItemEntry(<ordinarycoins:coinplatinum>, 1);



// Nether enemies
val zombie_pigman = loottweaker.LootTweaker.getTable("minecraft:entities/zombie_pigman");
val blaze = loottweaker.LootTweaker.getTable("minecraft:entities/blaze");
val wither_skeleton = loottweaker.LootTweaker.getTable("minecraft:entities/wither_skeleton");
val ghast = loottweaker.LootTweaker.getTable("minecraft:entities/ghast");
val magma_cube = loottweaker.LootTweaker.getTable("minecraft:entities/magma_cube");


val zombie_pigman_loot = zombie_pigman.addPool("zombie_pigman_loot", 0, 1, 0, 4);
val blaze_loot = blaze.addPool("blaze_loot", 0, 1, 0, 0);
val wither_skeleton_loot = wither_skeleton.addPool("wither_skeleton_loot", 1, 1, 1, 3);
val ghast_loot = ghast.addPool("ghast_loot", 1, 1, 1, 3);
val ghast_loot2 = ghast.addPool("ghast_loot2", 1, 1, 1, 2);
val magma_cube_loot = magma_cube.addPool("magma_cube_loot", 1, 1, 0, 0);


zombie_pigman_loot.addItemEntry(<ordinarycoins:coingold>, 1);
blaze_loot.addItemEntry(<ordinarycoins:coinsilver>, 2);
wither_skeleton_loot.addItemEntry(<ordinarycoins:coingold>, 2);
ghast_loot.addItemEntry(<ordinarycoins:coinsilver>, 1);
ghast_loot2.addItemEntry(<ordinarycoins:coingold>, 2);
magma_cube_loot.addItemEntry(<ordinarycoins:coingold>, 2);



// End enemies
// I know Endermen can spawn in the overworld, but consistency
val enderman = loottweaker.LootTweaker.getTable("minecraft:entities/enderman");
val endermite = loottweaker.LootTweaker.getTable("minecraft:entities/endermite");
val shulker = loottweaker.LootTweaker.getTable("minecraft:entities/shulker");

val enderman_loot = enderman.addPool("enderman_loot", 1, 1, 0, 1);
val enderman_loot2 = enderman.addPool("enderman_loot_shards", 0, 2, 0, 2);
val endermite_loot = endermite.addPool("endermite_loot", 1, 1, 1, 10);
val endermite_loot2 = endermite.addPool("endermite_loot_shards", 1, 1, 0, 2);
val shulker_loot = enderman.addPool("shulker_loot", 1, 1, 0, 3);

enderman_loot.addItemEntry(<ordinarycoins:coingold>, 2);
enderman_loot2.addItemEntry(<extrautils2:endershard>, 4);
endermite_loot.addItemEntry(<ordinarycoins:coinbronze>, 2);
endermite_loot2.addItemEntry(<extrautils2:endershard>, 1);
shulker_loot.addItemEntry(<ordinarycoins:coinsilver>, 5);


// Aurorian Enemies
// Add Spiderling loot when it gets added
// Bosses are at the top of this script
val hollow = loottweaker.LootTweaker.getTable("theaurorian:entities/disturbedhollow");
val aurorian_slime = loottweaker.LootTweaker.getTable("theaurorian:entities/aurorianslime");
val sprite = loottweaker.LootTweaker.getTable("theaurorian:entities/crystallinesprite");
val acolyte = loottweaker.LootTweaker.getTable("theaurorian:entities/moonacolyte");
val spiderling = loottweaker.LootTweaker.getTable("theaurorian:entities/spiderling");

val hollow_loot = hollow.addPool("hollow_loot", 1, 1, 0, 0);
val aurorian_slime_loot = aurorian_slime.addPool("aurorian_slime_loot", 0, 1, 0, 0);
val sprite_loot = sprite.addPool("sprite_loot", 1, 1, 0, 1);
val spiderling_loot = spiderling.addPool("spiderling_loot", 0, 1, 1, 2);
val acolyte_loot = acolyte.addPool("acolyte_loot", 1, 1, 0, 2);

hollow_loot.addItemEntry(<ordinarycoins:coinbronze>, 7);
aurorian_slime_loot.addItemEntry(<ordinarycoins:coinsilver>, 1);
sprite_loot.addItemEntry(<ordinarycoins:coinbronze>, 18);
spiderling_loot.addItemEntry(<ordinarycoins:coinbronze>, 4);
acolyte_loot.addItemEntry(<ordinarycoins:coinsilver>, 6);






// Misc modded enemies
val pslime = loottweaker.LootTweaker.getTable("industrialforegoing:entities/pink_slime");

val pslime_loot = pslime.addPool("pink_slime_loot", 1, 1, 0, 3);

pslime_loot.addItemEntry(<ordinarycoins:coingold>, 2);

/*
// Tower Golem (Battle Towers)
val tower_golem = loottweaker.LootTweaker.getTable("battletowers:golem");

val tower_golem_loot = tower_golem.addPool("tower_golem_loot", 1, 1, 0, 3);
val tower_golem_loot_gems = tower_golem.addPool("tower_golem_loot_gems", 0, 1, 0, 4);

tower_golem_loot.addItemEntry(<ordinarycoins:coinplatinum>, 3);
tower_golem_loot.addItemEntry(<minecraft:enchanted_book>, 1);


tower_golem_loot_gems.addItemEntry(<minecraft:diamond>, 3);
tower_golem_loot_gems.addItemEntry(<mysticalworld:amethyst_gem>, 3);
*/

print("LootTweaker.zs loaded");