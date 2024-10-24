# Stages stuff I might change later
#priority 5

import mods.itemstages.ItemStages;

print("misc_unlocks.zs loading...");

/*
ItemStages.restrict(<item>, "iron_age");

ItemStages.createModRestriction("mod", "iron_age");

ItemStages.createModRestriction("mod", s => (<exemption> | <exemption2>), "iron_age");
*/

ItemStages.restrict(<item:bluepower:alloyfurnace>, "brass_age");
ItemStages.restrict(<item:bluepower:tungsten_carbide>, "iron_age");

print("misc_unlocks.zs loaded");