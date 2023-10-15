# Adds items to the Industrial Age
#priority 8

import mods.itemstages.ItemStages;

print("4-industrial_age.zs loading...");

/*
ItemStages.restrict(<item>, "industrial_age");

ItemStages.createModRestriction("mod", "industrial_age");

ItemStages.createModRestriction("mod", s => (<exemption> | <exemption2>), "industrial_age");
*/

ItemStages.restrict(<item:kubejs:science_information>, "industrial_age");

ItemStages.createModRestriction("createdieselgenerators", "industrial_age");
ItemStages.createModRestriction("createoreexcavation", "industrial_age");
ItemStages.createModRestriction("enderstorage", "industrial_age");
ItemStages.createModRestriction("experienceobelisk", "industrial_age");
ItemStages.createModRestriction("quarry", "industrial_age");
ItemStages.createModRestriction("xnet", "industrial_age");


# Blocks
ItemStages.restrict(<item:adminshop:buyer_1>, "industrial_age");
ItemStages.restrict(<item:adminshop:buyer_2>, "industrial_age");
ItemStages.restrict(<item:adminshop:buyer_3>, "industrial_age");


# Upgrades
ItemStages.restrict(<item:functionalstorage:netherite_upgrade>, "industrial_age");
ItemStages.restrict(<item:functionalstorage:void_upgrade>, "industrial_age");


# Diamond gear
ItemStages.restrict(<item:minecraft:diamond_sword>, "industrial_age");
ItemStages.restrict(<item:minecraft:diamond_pickaxe>, "industrial_age");
ItemStages.restrict(<item:minecraft:diamond_shovel>, "industrial_age");
ItemStages.restrict(<item:minecraft:diamond_hoe>, "industrial_age");
ItemStages.restrict(<item:minecraft:diamond_axe>, "industrial_age");

ItemStages.restrict(<item:minecraft:diamond_helmet>, "industrial_age");
ItemStages.restrict(<item:minecraft:diamond_chestplate>, "industrial_age");
ItemStages.restrict(<item:minecraft:diamond_leggings>, "industrial_age");
ItemStages.restrict(<item:minecraft:diamond_boots>, "industrial_age");
ItemStages.restrict(<item:bluepower:diamond_sickle>, "industrial_age");

ItemStages.restrict(<item:createoreexcavation:diamond_drill>, "industrial_age");

ItemStages.restrict(<item:quark:pickarang>, "industrial_age");
ItemStages.restrict(<item:quark:echorang>, "industrial_age");


# Bluepower Items
ItemStages.restrict(<item:bluepower:blue_doped_wafer>, "industrial_age");
ItemStages.restrict(<item:bluepower:red_alloy_ingot>, "industrial_age");
ItemStages.restrict(<item:bluepower:blue_alloy_ingot>, "industrial_age");
ItemStages.restrict(<item:bluepower:purple_alloy_ingot>, "industrial_age");
ItemStages.restrict(<item:bluepower:silicon_wafer>, "industrial_age");
ItemStages.restrict(<item:bluepower:motor>, "industrial_age");
ItemStages.restrict(<item:bluepower:battery>, "industrial_age");
ItemStages.restrict(<item:bluepower:battery_block>, "industrial_age");

ItemStages.restrict(<item:bluepower:tainted_silicon_chip_tile>, "industrial_age");
ItemStages.restrict(<item:bluepower:silicon_chip_tile>, "industrial_age");


# Blueletric Items
ItemStages.restrict(<item:bluepower:engine>, "industrial_age");
ItemStages.restrict(<item:bluepower:solar_panel>, "industrial_age");
ItemStages.restrict(<item:bluepower:battery_block>, "industrial_age");
ItemStages.restrict(<item:bluepower:blulectric_cable>, "industrial_age");
ItemStages.restrict(<item:bluepower:blulectric_furnace>, "industrial_age");
ItemStages.restrict(<item:bluepower:blulectric_alloyfurnace>, "industrial_age");


# Ender Magnet
ItemStages.restrict(<item:endermagnet:ender_magnet_tier3>, "industrial_age");
ItemStages.restrict(<item:endermagnet:ender_torch>, "industrial_age");

print("4-industrial_age.zs loading...");