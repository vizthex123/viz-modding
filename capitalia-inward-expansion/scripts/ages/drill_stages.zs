# Stages pieces of the Worldbreaker Drill

print("drill_stages.zs loading...");

import mods.itemstages.ItemStages;

/*
ItemStages.remove(<item>);

ItemStages.restrict(<item>, "stage");

ItemStages.createModRestriction("mod", "stage");
*/

/*
build order:

base
supports
shaft
head

*/

/*
Progression order:

Shaft
- Segments first
Head
- Bits first
Supports/Base

The Drill™
*/

// ItemStages.restrict(<item:kubejs:drill_support_scaffold>, "industrial_age");

ItemStages.restrict(<item:kubejs:worldbreaker_drill>, "atomic_age");

print("drill_stages.zs loaded");
