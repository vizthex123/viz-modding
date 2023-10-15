# Stages pieces of the Worldbreaker Drill

print("drill_stages.zs loading...");

import mods.itemstages.ItemStages;

/*
ItemStages.restrict(<item>, "stage");

ItemStages.createModRestriction("mod", "stage");
*/

ItemStages.restrict(<item:kubejs:shaft_segment>, "iron_age");
ItemStages.restrict(<item:kubejs:shaft>, "iron_age");

ItemStages.restrict(<item:kubejs:bits>, "industrial_age");
ItemStages.restrict(<item:kubejs:head>, "industrial_age");

ItemStages.restrict(<item:kubejs:foundation>, "information_age");
ItemStages.restrict(<item:kubejs:supports>, "information_age");

ItemStages.restrict(<item:kubejs:worldbreaker_drill>, "atomic_age");

print("drill_stages.zs loaded");