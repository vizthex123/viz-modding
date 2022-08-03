# Adds tags to items

import crafttweaker.api.tag.MCTag;

print("1-oredict.zs loading...");
/*
<tag>.add(<item>);
<tag>.remove(<item>);
*/

# Profession Tables (sawing)
<tag:items:low-power:profession_table>.add(<item:minecraft:cartography_table>);
<tag:items:low-power:profession_table>.add(<item:minecraft:fletching_table>);
<tag:items:low-power:profession_table>.add(<item:minecraft:smithing_table>);

/*
# Corundum (catalyst)
<tag:items:low-power:corundum>.add(<item:quark:red_corundum_cluster>);
<tag:items:low-power:corundum>.add(<item:quark:orange_corundum_cluster>);
<tag:items:low-power:corundum>.add(<item:quark:yellow_corundum_cluster>);
<tag:items:low-power:corundum>.add(<item:quark:green_corundum_cluster>);
<tag:items:low-power:corundum>.add(<item:quark:blue_corundum_cluster>);
<tag:items:low-power:corundum>.add(<item:quark:indigo_corundum_cluster>);
<tag:items:low-power:corundum>.add(<item:quark:violet_corundum_cluster>);
<tag:items:low-power:corundum>.add(<item:quark:white_corundum_cluster>);
<tag:items:low-power:corundum>.add(<item:quark:black_corundum_cluster>);
*/

# Ropes (quest)
<tag:items:low-power:rope>.add(<item:quark:rope>);
<tag:items:low-power:rope>.add(<item:additionaladditions:rope>);


/*
# Paxels (quest)
<tag:items:low-power:paxels>.add(<item:easypaxellite:wood_paxel>);
<tag:items:low-power:paxels>.add(<item:easypaxellite:stone_paxel>);
<tag:items:low-power:paxels>.add(<item:easypaxellite:iron_paxel>);
<tag:items:low-power:paxels>.add(<item:easypaxellite:golden_paxel>);
<tag:items:low-power:paxels>.add(<item:easypaxellite:diamond_paxel>);
<tag:items:low-power:paxels>.add(<item:easypaxellite:netherite_paxel>);
*/


# Furnaces (quest + recipes)
<tag:items:low-power:furnace>.add(<item:minecraft:furnace>);
<tag:items:low-power:furnace>.add(<item:quark:blackstone_furnace>);
<tag:items:low-power:furnace>.add(<item:quark:deepslate_furnace>);


# Signs
<tag:items:minecraft:signs>.add(<item:quark:blossom_sign>);
<tag:items:minecraft:signs>.add(<item:quark:azalea_sign>);

/*
# Misc
<tag:items:forge:nuggets>.add(<item:nourished_nether:netherite_nugget>);
<tag:items:forge:nuggets/netherite>.add(<item:nourished_nether:netherite_nugget>);
*/
<tag:items:forge:dyes/green>.add(<item:quark:moss_paste>);

print("1-oredict.zs loaded");