# Adds items to the Information Age
#priority 9

import mods.itemstages.ItemStages;

print("5-information_age.zs loading...");

/*
ItemStages.remove(<item>);

ItemStages.restrict(<item>, "information_age");

ItemStages.createModRestriction("mod", "information_age");
*/

ItemStages.restrict(<item:kubejs:science_atomic>, "information_age");
ItemStages.createModRestriction("create_new_age", s => <item:create_new_age:thorium>.matches(s), "information_age");

// AE 2
ItemStages.createModRestriction("ae2", s => (<item:ae2:sky_stone_block> | <item:ae2:silicon_press> | <item:ae2:logic_processor_press> | <item:ae2:calculation_processor_press> | <item:ae2:engineering_processor_press> | <item:ae2:certus_quartz_crystal> | <item:ae2:certus_quartz_dust> | <item:ae2:ender_dust>).matches(s), "information_age");
ItemStages.createModRestriction("ae2wtlib", "information_age");
ItemStages.createModRestriction("ae2things", "information_age");

print("5-information_age.zs loaded");