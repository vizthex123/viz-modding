# Adds items to the Atomic Age
#priority 10

import mods.itemstages.ItemStages;

print("6-atomic_age.zs loading...");

/*
ItemStages.restrict(<item>, "atomic_age");

ItemStages.createModRestriction("mod", "atomic_age");

ItemStages.createModRestriction("mod", s => (<exemption> | <exemption2>), "atomic_age");
*/

ItemStages.createModRestriction("hostilenetworks", "atomic_age");
ItemStages.createModRestriction("powah", s => (<item:powah:uraninite_raw> | <item:powah:dry_ice>).matches(s), "atomic_age");

# Enlightend gear
ItemStages.restrict(<item:enlightened_end:adamantite_sword>, "information_age");
ItemStages.restrict(<item:enlightened_end:adamantite_pickaxe>, "information_age");
ItemStages.restrict(<item:enlightened_end:adamantite_shovel>, "information_age");
ItemStages.restrict(<item:enlightened_end:adamantite_hoe>, "information_age");
ItemStages.restrict(<item:enlightened_end:adamantite_axe>, "information_age");

ItemStages.restrict(<item:enlightened_end:adamantite_armor_helmet>, "information_age");
ItemStages.restrict(<item:enlightened_end:adamantite_armor_chestplate>, "information_age");
ItemStages.restrict(<item:enlightened_end:adamantite_armor_leggings>, "information_age");
ItemStages.restrict(<item:enlightened_end:adamantite_armor_boots>, "information_age");

ItemStages.restrict(<item:enlightened_end:dashing_leggings_leggings>, "information_age");
ItemStages.restrict(<item:enlightened_end:boost_boots_boots>, "information_age");

print("6-atomic_age.zs loading...");