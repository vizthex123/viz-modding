# Adds tags to various items

import crafttweaker.api.tag.MCTag;

print("0-tags.zs loading...");
/*
<tag>.add(<item>);
<tag>.remove(<item>);
*/


# Wooled Boots (quest)
<tag:items:etd:wooled_boots>.add(<item:wooledboots:wooled_leather_boots>);
<tag:items:etd:wooled_boots>.add(<item:wooledboots:wooled_chainmail_boots>);
<tag:items:etd:wooled_boots>.add(<item:wooledboots:wooled_gold_boots>);
<tag:items:etd:wooled_boots>.add(<item:wooledboots:wooled_iron_boots>);
<tag:items:etd:wooled_boots>.add(<item:wooledboots:wooled_diamond_boots>);
<tag:items:etd:wooled_boots>.add(<item:wooledboots:wooled_netherite_boots>);

print("0-tags.zs loaded");