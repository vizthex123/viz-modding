# Adds tags to items

import crafttweaker.api.tag.MCTag;
print("1-tags.zs loading...");
/*
<tag>.add(<item>);
<tag>.remove(<item>);
*/

# Pure Crystal
<tag:items:infinite:pure_quartz>.add(<item:crossroads:pure_quartz>);
<tag:items:infinite:pure_quartz>.add(<item:appliedenergistics2:purified_certus_quartz_crystal>);
<tag:items:infinite:pure_quartz>.add(<item:appliedenergistics2:purified_nether_quartz_crystal>);

print("1-tags.zs loaded");