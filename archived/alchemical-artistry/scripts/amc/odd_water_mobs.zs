# Adds AMC & recipes to Odd Water Mobs's items because I am tired of spamming my other scripts
#priority 20

import crafttweaker.api.tag.MCTag;

print("odd_water_mobs_amc.zs loading...");
/*
Tiers:
italicized dark gray: <1 (microscopic)
dark gray: 1 - 25 (minimal)
gray: 26 - 100 (average)
dark blue: 101 - 250 (above average)
dark aqua: 251 - 500 (high)
aqua: 501 - 1,000 (very high)
green: 1,001 - 4,999 (extreme)

purple: 5,000+ (insane)

<tag:items:amc-value:0>.add(<item:>);
*/

# Deep Sand stuff is in the minimal AMC script!

<tag:items:amc-value:20>.add(<item:oddwatermobs:bio_scales_floor>);
<tag:items:amc-value:180>.add(<item:oddwatermobs:bioluminescent_block>);
<tag:items:amc-value:180>.add(<item:oddwatermobs:bioluminescent_block>);

<tag:items:amc-value:25>.add(<item:oddwatermobs:crab_eggs>);
<tag:items:amc-value:50>.add(<item:oddwatermobs:chimaera_sting>);

<tag:items:amc-value:35>.add(<item:oddwatermobs:raw_isopod>);
<tag:items:amc-value:35>.add(<item:oddwatermobs:cooked_isopod>);
<tag:items:amc-value:50>.add(<item:oddwatermobs:crab_leg>);
<tag:items:amc-value:50>.add(<item:oddwatermobs:cooked_crab_leg>);

<tag:items:amc-value:60>.add(<item:oddwatermobs:raw_anglerfish>);
<tag:items:amc-value:50>.add(<item:oddwatermobs:raw_coelacanth>);
<tag:items:amc-value:60>.add(<item:oddwatermobs:raw_ghost_shark>);
<tag:items:amc-value:25>.add(<item:oddwatermobs:raw_mudskipper>);
<tag:items:amc-value:25>.add(<item:oddwatermobs:cooked_mudskipper>);
<tag:items:amc-value:25>.add(<item:oddwatermobs:horseshoe_crab_thorax>);
<tag:items:amc-value:50>.add(<item:oddwatermobs:mudskipper_fin>);
<tag:items:amc-value:75>.add(<item:oddwatermobs:deep_sea_fish>);


<tag:items:amc-value:135>.add(<item:oddwatermobs:angler_bucket_block>);
<tag:items:amc-value:110>.add(<item:oddwatermobs:isopod_bucket_block>);
<tag:items:amc-value:100>.add(<item:oddwatermobs:horseshoe_bucket_block>);
<tag:items:amc-value:125>.add(<item:oddwatermobs:coelacanth_bucket_block>);
<tag:items:amc-value:100>.add(<item:oddwatermobs:baby_crab_bucket_block>);
<tag:items:amc-value:135>.add(<item:oddwatermobs:ghost_shark_bucket_block>);
<tag:items:amc-value:100>.add(<item:oddwatermobs:mudskipper_bucket_block>);
<tag:items:amc-value:150>.add(<item:oddwatermobs:deep_sea_variants_bucket_block>);


print("odd_water_mobs_amc.zs loaded");