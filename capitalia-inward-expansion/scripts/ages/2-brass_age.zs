# Adds items to the Brass Age
# Should be Bronze, but there isn't any in the pack and I don't wanna add a whole-ass mod to get it
#priority 6

import mods.itemstages.ItemStages;

print("2-brass_age.zs loading...");

/*
ItemStages.remove(<item>);

ItemStages.restrict(<item>, "brass_age");

ItemStages.createModRestriction("mod", "brass_age");

ItemStages.createModRestriction("mod", s => <exemption>, "brass_age");
*/

ItemStages.restrict(<item:kubejs:science_iron>, "brass_age");

ItemStages.createModRestriction("create", s => <item:create:raw_zinc>.matches(s), "brass_age");
ItemStages.createModRestriction("create_enchantment_industry", "brass_age");
ItemStages.createModRestriction("createdeco", "brass_age");
ItemStages.createModRestriction("mechanicalmachinery", "brass_age");

ItemStages.restrict(<item:adminshop:seller>, "brass_age");

# Blocks

print("2-brass_age.zs loaded");