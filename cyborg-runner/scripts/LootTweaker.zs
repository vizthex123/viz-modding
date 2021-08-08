/* Adds custom loot drops to mobs

val NAME = LootTables.getTable("minecraft:entities/ENTITY");
val NAME = ENTITYNAME.addPool("LOOTTABLENAME", 1, 2, 0, 0);
- Numbers, L -> R: Min Rolls, Max Rolls, Min/Max Bonus Rolls
NAME.addItemEntry(<item>, amount);

COIN VALUES:

Copper Toilary - 1
Silver Toilary - 5
Gold Toilary - 10
Platinum Toilary - 50
*/

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

print("LootTweaker.zs loading...");

// Progression
// Stuff that drops Bones
val pig = loottweaker.LootTweaker.getTable("minecraft:entities/pig");
val cow = loottweaker.LootTweaker.getTable("minecraft:entities/cow");
val sheep = loottweaker.LootTweaker.getTable("minecraft:entities/sheep");
val chicken = loottweaker.LootTweaker.getTable("minecraft:entities/chicken");
val parrot = loottweaker.LootTweaker.getTable("minecraft:entities/parrot");
val zombie1 = loottweaker.LootTweaker.getTable("minecraft:entities/zombie");

val pig_loot = pig.addPool("pig_bones", 1, 1, 0, 0);
val cow_loot = cow.addPool("cow_bones", 1, 1, 0, 1);
val sheep_loot = sheep.addPool("sheep_bones", 0, 1, 0, 0);
val chicken_loot = chicken.addPool("chicken_bones", 0, 1, 0, 0);
val parrot_loot = parrot.addPool("chicken_bones", 0, 1, 0, 0);
val zombie1_loot = zombie1.addPool("zombie_bones", 0, 1, 0, 1);

pig_loot.addItemEntry(<minecraft:bone>, 1);
cow_loot.addItemEntry(<minecraft:bone>, 1);
sheep_loot.addItemEntry(<minecraft:bone>, 1);
chicken_loot.addItemEntry(<minecraft:bone>, 1);
parrot_loot.addItemEntry(<minecraft:bone>, 1);
zombie1_loot.addItemEntry(<minecraft:bone>, 2);



// Overworld Enemies
val zombie = loottweaker.LootTweaker.getTable("minecraft:entities/zombie");
val skeleton = loottweaker.LootTweaker.getTable("minecraft:entities/skeleton");
val creeper = loottweaker.LootTweaker.getTable("minecraft:entities/creeper");
val spider = loottweaker.LootTweaker.getTable("minecraft:entities/spider");
val cave_spider = loottweaker.LootTweaker.getTable("minecraft:entities/cave_spider");
val slime = loottweaker.LootTweaker.getTable("minecraft:entities/slime");

val husk = loottweaker.LootTweaker.getTable("minecraft:entities/husk");
val zombie_villager = loottweaker.LootTweaker.getTable("minecraft:entities/zombie_villager");
val stray = loottweaker.LootTweaker.getTable("minecraft:entities/stray");

val vindicator = loottweaker.LootTweaker.getTable("minecraft:entities/vindication_illager");
val evoker = loottweaker.LootTweaker.getTable("minecraft:entities/evocation_illager");

val guardian = loottweaker.LootTweaker.getTable("minecraft:entities/guardian");
val elder_guardian =  loottweaker.LootTweaker.getTable("minecraft:entities/elder_guardian");

val silverfish =  loottweaker.LootTweaker.getTable("minecraft:entities/silverfish");
val vex =  loottweaker.LootTweaker.getTable("minecraft:entities/vex");

val zloot = zombie.addPool("zombie_loot", 1, 2, 0, 0);
val sloot = skeleton.addPool("skeleton_loot", 0, 2, 0, 0);
val cloot = creeper.addPool("creeper_loot", 1, 2, 0, 0);
val sploot = spider.addPool("spier_loot", 1, 3, 0, 0);
val csploot = cave_spider.addPool("cave_spider_loot", 1, 4, 0, 0);
val slloot = slime.addPool("slime_loot", 0, 1, 0, 0);

val hloot = husk.addPool("husk_loot", 0, 1, 0, 1);
val zvillager = zombie_villager.addPool("zombie_villager_loot", 0, 1, 0, 2);
val zvillager2 = zombie_villager.addPool("zombie_villager_loot_2", 0, 3, 0, 1);
val stray_loot = stray.addPool("stray_loot", 1, 1, 0, 1);

val vindicator_loot = vindicator.addPool("vindicator_loot", 0, 1, 0, 2);
val evoker_loot = evoker.addPool("evoker_loot", 1, 1, 0, 1);

val gloot = guardian.addPool("guardian_loot", 1, 2, 0, 0);
val egloot = elder_guardian.addPool("elder_guardian_loot", 1, 1, 0, 2);

val silv_loot = silverfish.addPool("silverfish_loot", 0, 4, 0, 0);
val vex_loot = vex.addPool("vex_loot", 0, 1, 0, 0);


zloot.addItemEntry(<jjcoin:copper_coin>, 3);
sloot.addItemEntry(<jjcoin:copper_coin>, 3);
cloot.addItemEntry(<jjcoin:silver_coin>, 2);

slloot.addItemEntry(<jjcoin:copper_coin>, 1);
sploot.addItemEntry(<jjcoin:copper_coin>, 1);
csploot.addItemEntry(<jjcoin:silver_coin>, 1);

hloot.addItemEntry(<jjcoin:copper_coin>, 3);
zvillager.addItemEntry(<jjcoin:copper_coin>, 2);
zvillager2.addItemEntry(<jjcoin:silver_coin>, 1);
stray_loot.addItemEntry(<jjcoin:silver_coin>, 3);

vindicator_loot.addItemEntry(<jjcoin:gold_coin>, 1);
evoker_loot.addItemEntry(<jjcoin:diamond_coin>, 3);

gloot.addItemEntry(<jjcoin:silver_coin>, 1);
egloot.addItemEntry(<jjcoin:gold_coin>, 1);

silv_loot.addItemEntry(<jjcoin:copper_coin>, 1);
vex_loot.addItemEntry(<jjcoin:copper_coin>, 3);


// Nether Enemies
// Modded ones included
val blaze = loottweaker.LootTweaker.getTable("minecraft:entities/blaze");
val ghast = loottweaker.LootTweaker.getTable("minecraft:entities/ghast");
val zombie_pigman = loottweaker.LootTweaker.getTable("minecraft:entities/zombie_pigman");
val wither_skeleton = loottweaker.LootTweaker.getTable("minecraft:entities/wither_skeleton");
val magma_cube = loottweaker.LootTweaker.getTable("minecraft:entities/magma_cube");


val imp = loottweaker.LootTweaker.getTable("natura:entities/imp");
#	val nitro_creeper = loottweaker.LootTweaker.getTable("natura:entities/nitrocreeper");
val heatscar_spider = loottweaker.LootTweaker.getTable("natura:entities/heatscarspider");

val blaze_loot = blaze.addPool("blaze_loot", 1, 2, 0, 2);
val blaze_loot2 = blaze.addPool("blaze_loot_2", 1, 2, 0, 2);
val ghast_loot = ghast.addPool("ghast_loot", 1, 1, 0, 0);
val zombie_pigman_loot = zombie_pigman.addPool("zombie_pigman_loot", 0, 3, 0, 5);
val wither_skeleton_loot = wither_skeleton.addPool("wither_skeleton_loot", 1, 1, 1, 2);
val magma_loot = magma_cube.addPool("magma_cube_loot", 0, 1, 0, 2);

val imp_loot = imp.addPool("imp_loot", 0, 1, 0, 1);
#	val nitro_creeper_loot = nitro_creeper.addPool("nitro_creeper_loot", 1, 1, 0, 5);
val heatscar_spider_loot = heatscar_spider.addPool("heatscar_spider_loot", 0, 1, 0, 3);

blaze_loot.addItemEntry(<jjcoin:silver_coin>, 1);
blaze_loot2.addItemEntry(<jjcoin:gold_coin>, 1);
ghast_loot.addItemEntry(<jjcoin:gold_coin>, 3);
zombie_pigman_loot.addItemEntry(<jjcoin:gold_coin>, 1);
wither_skeleton_loot.addItemEntry(<jjcoin:diamond_coin>, 1);
magma_loot.addItemEntry(<jjcoin:gold_coin>, 2);


imp_loot.addItemEntry(<jjcoin:copper_coin>, 3);
#	nitro_creeper_loot.addItemEntry(<jjcoin:diamond_coin>, 1);
heatscar_spider_loot.addItemEntry(<jjcoin:gold_coin>, 1);


// End Enemies
// I know Endermen can spawn in the overworld, but consistency
val enderman = loottweaker.LootTweaker.getTable("minecraft:entities/enderman");
val shulker = loottweaker.LootTweaker.getTable("minecraft:entities/shulker");
val endermite = loottweaker.LootTweaker.getTable("minecraft:entities/endermite");

val eloot = enderman.addPool("enderman_loot", 1, 1, 0, 1);
val eloot2 = enderman.addPool("enderman_loot_2", 1, 1, 0, 1);

val shulkerloot = shulker.addPool("shulker_loot", 0, 3, 0, 1);
val shulkerloot2 = shulker.addPool("shulker_loot_2", 1, 1, 0, 0);
val shulkerloot3 = shulker.addPool("shulker_loot_3", 1, 1, 0, 2);

val endermiteloot = endermite.addPool("endermite_loot", 0, 3, 0, 0);

eloot.addItemEntry(<jjcoin:silver_coin>, 2);
eloot2.addItemEntry(<jjcoin:copper_coin>, 1);

shulkerloot.addItemEntry(<jjcoin:diamond_coin>, 1);
shulkerloot2.addItemEntry(<jjcoin:gold_coin>, 2);
shulkerloot3.addItemEntry(<jjcoin:silver_coin>, 1);

endermiteloot.addItemEntry(<jjcoin:copper_coin>, 3);

/*
// Modded Enemies
// TE and Cyberware/ReWIRED below this because they're too dummy thicc

val pslime = loottweaker.LootTweaker.getTable("industrialforegoing:entities/pink_slime");
#	val glitch = loottweaker.LootTweaker.getTable("deepmoblearning:glitch_heart");

val pslime_loot = pslime.addPool("pink_slime_loot", 1, 1, 0, 2);
#	val glitch_loot = pslime.addPool("glitch_loot", 1, 1, 0, 3);

pslime_loot.addItemEntry(<justcoins:silver_coin>, 4);
#	glitch_loot.addItemEntry(<justcoins:gold_coin>, 2);



DISABLED - LootTweaker hates me
// Thermal Expansion (15 Ourum [1 Silver + 1 Copper]), Cyberware & ReWIRED Enemies
// TE Mobs have 1 - 2 w/ 0 - 3 max rerolls

val basalz = loottweaker.LootTweaker.getTable("thermalfoundation:entities/basalz");
val blitz = loottweaker.LootTweaker.getTable("thermalfoundation:entities/blitz");
val blizz = loottweaker.LootTweaker.getTable("thermalfoundation:entities/blizz");

val basalz_loot = basalz.addPool("basalz_loot", 1, 2, 0, 3);
val basalz_loot2 = basalz.addPool("basalz_loot_2", 1, 2, 0, 3);

val blitz_loot = blitz.addPool("blitz_loot", 1, 2, 0, 3);
val blitz_loot2 = blitz.addPool("blitz_loot_2", 1, 2, 0, 3);

val blizz_loot = blizz.addPool("blizz_loot", 1, 2, 0, 3);
val blizz_loot2 = blizz.addPool("blizz_loot_2", 1, 2, 0, 3);

basalz_loot.addItemEntry(<justcoins:silver_coin>, 1);
basalz_loot2.addItemEntry(<justcoins:copper_coin>, 1);

blitz_loot.addItemEntry(<justcoins:silver_coin>, 1);
blitz_loot2.addItemEntry(<justcoins:copper_coin>, 1);

blizz_loot.addItemEntry(<justcoins:silver_coin>, 1);
blizz_loot2.addItemEntry(<justcoins:copper_coin>, 1);


val cyberzombie = loottweaker.LootTweaker.getTable("cyberware:cyberzombie");
val cyberskeleton = loottweaker.LootTweaker.getTable("rewired:cyberskeleton");

val cyberzombie_loot = cyberzombie.addPool("cyberzombie_loot", 0, 1, 0, 0);
val cyberzombie_loot2 = cyberzombie.addPool("cyberzombie_loot_2", 0, 1, 0, 0);
val cyberskeleton_loot = cyberskeleton.addPool("cyberskeleton_loot", 0, 1, 0, 0);
val cyberskeleton_loot2 = cyberskeleton.addPool("cyberskeleton_loot_2", 0, 1, 0, 0);

cyberzombie_loot.addItemEntry(<justcoins:silver_coin>, 1);
cyberzombie_loot2.addItemEntry(<justcoins:copper_coin>, 1);
cyberskeleton_loot.addItemEntry(<justcoins:silver_coin>, 1);
cyberskeleton_loot2.addItemEntry(<justcoins:copper_coin>, 1);
*/

print("LootTweaker.zs loaded");