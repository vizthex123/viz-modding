# Adds items to the Brass Age
# Should be Bronze, but there isn't any in the pack and I don't wanna add a whole-ass mod for it.

import mods.itemstages.ItemStages;

print("2-brass_age.zs loading...");

/*
ItemStages.remove(<item>);

ItemStages.restrict(<item>, "brass_age");

ItemStages.restrict("brass_age", "mod");
*/

ItemStages.restrict(<item:kubejs:science_iron>, "brass_age");

# Brass
ItemStages.restrict(<item:bluepower:brass_nugget>, "brass_age");
ItemStages.restrict(<item:bluepower:brass_ingot>, "brass_age");
ItemStages.restrict(<item:bluepower:brass_dust>, "brass_age");
ItemStages.restrict(<item:create:brass_ingot>, "brass_age");
ItemStages.restrict(<item:create:brass_nugget>, "brass_age");
ItemStages.restrict(<item:create:brass_sheet>, "brass_age");

ItemStages.restrict(<item:createdeco:brass_coin>, "brass_age");
ItemStages.restrict(<item:createdeco:brass_coinstack>, "brass_age");



# Basic Stuff
ItemStages.restrict(<item:bluepower:alloyfurnace>, "brass_age");
ItemStages.restrict(<item:minecraft:furnace>, "brass_age");

print("2-brass_age.zs loaded");