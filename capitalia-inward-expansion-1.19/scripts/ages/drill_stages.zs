# Stages pieces of the Worldbreaker Drill

print("drill_stages.zs loading...");

import mods.itemstages.ItemStages;

/*
ItemStages.restrict(<item>, "stage");

ItemStages.createModRestriction("mod", "stage");
*/

ItemStages.restrict(<item:kubejs:drill_shaft_segment>, "iron_age");
ItemStages.restrict(<item:kubejs:drill_shaft>, "iron_age");

ItemStages.restrict(<item:kubejs:drill_bit>, "industrial_age");
ItemStages.restrict(<item:kubejs:drill_head>, "industrial_age");

ItemStages.restrict(<item:kubejs:drill_foundation>, "information_age");
ItemStages.restrict(<item:kubejs:drill_support_frame>, "information_age");

ItemStages.restrict(<item:kubejs:worldbreaker_drill>, "atomic_age");

print("drill_stages.zs loaded");