# Adds items to the Atomic Age
#priority 10

import mods.itemstages.ItemStages;

print("6-atomic_age.zs loading...");

/*
ItemStages.remove(<item>);

ItemStages.restrict(<item>, "atomic_age");

ItemStages.createModRestriction("mod", "atomic_age");
*/

ItemStages.restrict(<item:kubejs:worldbreaker_drill>, "atomic_age");

ItemStages.createModRestriction("powah", s => (<item:powah:uraninite_raw> | <item:powah:dry_ice>).matches(s), "atomic_age");

print("6-atomic_age.zs loading...");