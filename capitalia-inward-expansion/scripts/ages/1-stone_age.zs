# Adds items to the Stone Age
#priority 5

import mods.itemstages.ItemStages;

print("1-stone_age.zs loading...");

/*
ItemStages.remove(<item>);

ItemStages.restrict(<item>, "stone_age");

ItemStages.createModRestriction("mod", "stone_age");
*/

ItemStages.restrict(<item:kubejs:science>, "stone_age");
ItemStages.restrict(<item:kubejs:science_brass>, "stone_age");

# Basic Stuff
ItemStages.restrict(<item:minecraft:furnace>, "stone_age");
ItemStages.restrict(<item:minecraft:stonecutter>, "stone_age");

	// Tools
ItemStages.restrict(<item:minecraft:stone_sword>, "stone_age");
ItemStages.restrict(<item:minecraft:stone_pickaxe>, "stone_age");
ItemStages.restrict(<item:minecraft:stone_shovel>, "stone_age");
ItemStages.restrict(<item:minecraft:stone_hoe>, "stone_age");
ItemStages.restrict(<item:minecraft:stone_axe>, "stone_age");

ItemStages.restrict(<item:bluepower:stone_sickle>, "stone_age");

# ItemStages.restrict(<item:easypaxellite:stone_paxel>, "stone_age");

// Copper Pipes
ItemStages.restrict(<item:quark:pipe>, "stone_age");
ItemStages.restrict(<item:quark:encased_pipe>, "stone_age");

// Upgrades
ItemStages.restrict(<item:functionalstorage:copper_upgrade>, "stone_age");

print("1-stone_age.zs loaded");