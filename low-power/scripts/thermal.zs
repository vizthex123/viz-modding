# Adds recipes to Thermal Series stuff

import crafttweaker.api.tag.MCTag;

print("thermal.zs loading...");
/*
craftingTable.addShaped("name", <item:output>,
    [[<item>, <item>, <item>],
    [<item>, <item>, <item>],
    [<item>, <item>, <item>]]);
craftingTable.remove(<item>);
craftingTable.removeByName("name");
*/


# Pulverizer
<recipetype:thermal:pulverizer_catalyst>.addCatalyst("prismarine_shard", <item:minecraft:prismarine_shard>, 1.45, 1.65, 1.3, 0.4, 0.4);
<recipetype:thermal:pulverizer_catalyst>.addCatalyst("prismarine_crystal", <item:minecraft:prismarine_crystals>, 1.35, 2.0, 1.5, 0.5, 0.25);
<recipetype:thermal:pulverizer_catalyst>.addCatalyst("amethyst_catalyst", <item:minecraft:amethyst_shard>, 1.0, 1.0, 0.25, 0.75, 0.85);

<recipetype:thermal:pulverizer_catalyst>.addCatalyst("quartz_dust", <item:thermal:quartz_dust>, 1.5, 1.75, 1.35, 0.35, 0.3);
/*
<recipetype:thermal:pulverizer_catalyst>.addCatalyst("wrappist", <item:geode:wrappist_shard>, 2.0, 1.5, 0.9, 0.5, 0.7);
*/
// Idk the min chance for Cinnabar, so let's hope this is close enough
<recipetype:thermal:pulverizer_catalyst>.addCatalyst("cinnabar_dust", <item:thermal:cinnabar_dust>, 3.0, 3.5, 2.75, 0.5, 0.8);

<recipetype:thermal:pulverizer_catalyst>.addCatalyst("corundum", <item:quark:red_corundum_cluster>|<item:quark:orange_corundum_cluster>|<item:quark:yellow_corundum_cluster>|<item:quark:green_corundum_cluster>|<item:quark:blue_corundum_cluster>|<item:quark:indigo_corundum_cluster>|<item:quark:violet_corundum_cluster>|<item:quark:white_corundum_cluster>|<item:quark:black_corundum_cluster>, 1.25, 1.0, 0.85, 0.5, 0.65);


# Induction Smelter


# Phytogenic Insolator
<recipetype:thermal:insolator_catalyst>.addCatalyst("sawdust", <item:kubejs:sawdust_clump>, 1.1, 1.15, 0.85, 0.5, 0.75);

print("thermal.zs loaded");