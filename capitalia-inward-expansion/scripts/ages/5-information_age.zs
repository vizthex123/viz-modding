# Adds items to the Information Age
#priority 9

import mods.itemstages.ItemStages;

print("5-information_age.zs loading...");

/*
ItemStages.restrict(<item>, "information_age");

ItemStages.createModRestriction("mod", "information_age");

ItemStages.createModRestriction("mod", s => (<exemption> | <exemption2>), "information_age");
*/

ItemStages.restrict(<item:kubejs:science_atomic>, "information_age");

ItemStages.createModRestriction("ae2", s => (<item:ae2:sky_stone_block> | <item:ae2:silicon_press> | <item:ae2:logic_processor_press> | <item:ae2:calculation_processor_press> | <item:ae2:engineering_processor_press> | <item:ae2:certus_quartz_crystal> | <item:ae2:certus_quartz_dust> | <item:ae2:ender_dust>).matches(s), "information_age");
ItemStages.createModRestriction("ae2wtlib", "information_age");
ItemStages.createModRestriction("ae2things", "information_age");

ItemStages.createModRestriction("create_new_age", s => (<item:create_new_age:thorium> | <item:create_new_age:magnetite_block>).matches(s), "information_age");

# Upgrades
ItemStages.restrict(<item:solarflux:blank_upgrade>, "information_age");
ItemStages.restrict(<item:solarflux:ae2/energy_upgrade>, "information_age");

# Netherite gear
ItemStages.restrict(<item:minecraft:netherite_sword>, "information_age");
ItemStages.restrict(<item:minecraft:netherite_pickaxe>, "information_age");
ItemStages.restrict(<item:minecraft:netherite_shovel>, "information_age");
ItemStages.restrict(<item:minecraft:netherite_hoe>, "information_age");
ItemStages.restrict(<item:minecraft:netherite_axe>, "information_age");

ItemStages.restrict(<item:minecraft:netherite_helmet>, "information_age");
ItemStages.restrict(<item:minecraft:netherite_chestplate>, "information_age");
ItemStages.restrict(<item:minecraft:netherite_leggings>, "information_age");
ItemStages.restrict(<item:minecraft:netherite_boots>, "information_age");

ItemStages.restrict(<item:additionaladditions:gilded_netherite_sword>, "information_age");
ItemStages.restrict(<item:additionaladditions:gilded_netherite_pickaxe>, "information_age");
ItemStages.restrict(<item:additionaladditions:gilded_netherite_shovel>, "information_age");
ItemStages.restrict(<item:additionaladditions:gilded_netherite_hoe>, "information_age");
ItemStages.restrict(<item:additionaladditions:gilded_netherite_axe>, "information_age");

ItemStages.restrict(<item:additionaladditions:gilded_netherite_helmet>, "information_age");
ItemStages.restrict(<item:additionaladditions:gilded_netherite_chestplate>, "information_age");
ItemStages.restrict(<item:additionaladditions:gilded_netherite_leggings>, "information_age");
ItemStages.restrict(<item:additionaladditions:gilded_netherite_boots>, "information_age");

ItemStages.restrict(<item:bygonenether:gilded_netherite_helmet>, "information_age");
ItemStages.restrict(<item:bygonenether:gilded_netherite_chestplate>, "information_age");
ItemStages.restrict(<item:bygonenether:gilded_netherite_leggings>, "information_age");
ItemStages.restrict(<item:bygonenether:gilded_netherite_boots>, "information_age");

ItemStages.restrict(<item:create:netherite_diving_helmet>, "information_age");
ItemStages.restrict(<item:create:netherite_backtank>, "information_age");
ItemStages.restrict(<item:create:netherite_diving_boots>, "information_age");

ItemStages.restrict(<item:quark:flamerang>, "industrial_age");

print("5-information_age.zs loaded");