# Adds items to the Industrial Age

import mods.itemstages.ItemStages;

print("4-industrial_age.zs loading...");

/*
ItemStages.remove(<item>);

ItemStages.restrict(<item>, "industrial_age");

ItemStages.restrict("mod", "industrial_age");
*/

#ItemStages.restrict(<item:kubejs:science_machine>, "industrial_age");

# Bluepower Items
ItemStages.restrict(<item:bluepower:blue_doped_wafer>, "industrial_age");
ItemStages.restrict(<item:bluepower:blue_alloy_ingot>, "industrial_age");
ItemStages.restrict(<item:bluepower:silicon_wafer>, "industrial_age");
ItemStages.restrict(<item:bluepower:motor>, "industrial_age");

ItemStages.restrict(<item:bluepower:tainted_silicon_chip_tile>, "industrial_age");
ItemStages.restrict(<item:bluepower:silicon_chip_tile>, "industrial_age");



# Blueletric Items
ItemStages.restrict(<item:bluepower:engine>, "industrial_age");
ItemStages.restrict(<item:bluepower:solar_panel>, "industrial_age");
ItemStages.restrict(<item:bluepower:battery_block>, "industrial_age");
ItemStages.restrict(<item:bluepower:blulectric_cable>, "industrial_age");
ItemStages.restrict(<item:bluepower:blulectric_furnace>, "industrial_age");
ItemStages.restrict(<item:bluepower:blulectric_alloyfurnace>, "industrial_age");

print("4-industrial_age.zs loading...");