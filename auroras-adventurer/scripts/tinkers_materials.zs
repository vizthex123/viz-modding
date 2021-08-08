# Changes the stats of various Tinker's materials
/*
val VALUE = <ticmat:MATERIAL>;


VALUE.durabilityHead = 2000;

* Valid replaces for durabilityHead: 
https://docs.blamejared.com/1.12/en/Mods/Modtweaker/TConstruct/Materials/ITICMaterial/

Not on docs:
bowRange
bonusDamage
bowDrawSpeed
bowStringModifier

Harvest Levels: (best guess)

0 - Stone
1 - Iron
2 - Diamond (Iron pickaxe)
3 - Obsidian
4 - Cobalt
*/

import modtweaker.tconstruct.ITICMaterial;

print("Loading tinkers_materials.zs...");

val rfeather = <ticmat:raven_feather>;

rfeather.fletchingModifier = 2.0;
rfeather.fletchingAccuracy = 0.90;

val fluix = <ticmat:fluix>;

fluix.durabilityHead = 190;
fluix.harvestLevelHead = 1;
fluix.miningSpeedHead = 5;
fluix.attackHead = 4.25;
fluix.bowDrawSpeed = 1.75;
fluix.bowRange = 1;
fluix.bonusDamage = 3;

val certus = <ticmat:certus>;

certus.durabilityHead = 200;
certus.harvestLevelHead = 0;
certus.miningSpeedHead = 4.5;
certus.attackHead = 3.5;
certus.bowDrawSpeed = 1.95;
certus.bowRange = 3;
certus.bonusDamage = 0;

val manyullyn = <ticmat:manyullyn>;

manyullyn.attackHead = 8.85;

val iridium = <ticmat:iridium>;

iridium.attackHead = 12;
iridium.durabilityHead = 1803;
# Reference to discovery date^

val obsidian = <ticmat:obsidian>;

obsidian.durabilityHead = 140;





# Will be removed if Elise implements my suggested changes

val swood = <ticmat:silentwood>;

swood.durabilityHead = 25;
swood.bowDrawSpeed = 0.7;

val astone = <ticmat:aurorianstone>;

astone.durabilityHead = 95;
astone.bowDrawSpeed = 4.7;

val cerulean = <ticmat:cerulean>;

cerulean.bowRange = 1.5;
cerulean.bowDrawSpeed = 4.5;
cerulean.bonusDamage = 0;

val moonstone = <ticmat:moonstone>;

moonstone.bowRange = 0.75;
moonstone.bowDrawSpeed = 4.0;
moonstone.bonusDamage = 3;

val asteel = <ticmat:auroriansteel>;

asteel.attackHead = 8.5;
asteel.bowDrawSpeed = 0.5;
asteel.bowRange = 1.25;
asteel.bonusDamage = 2;

print("tinkers_materials.zs loaded");