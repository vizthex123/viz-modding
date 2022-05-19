# Adds high value (251 - 500) AMC tags to various items. Loads before everything else.
#priority 20

import crafttweaker.api.tag.MCTag;

print("4-high_amc.zs loading...");


// 200's AMC
<tag:items:amc-value:267>.add(<item:thermal:fluid_reservoir>);
<tag:items:amc-value:280>.add(<item:watercan:watercan_gold>); // Should be 279


// 300's AMC
<tag:items:amc-value:300>.add(<item:minecraft:smooth_quartz_stairs>);
<tag:items:amc-value:300>.add(<item:minecraft:purpur_stairs>);
<tag:items:amc-value:300>.add(<item:minecraft:quartz_stairs>);

<tag:items:amc-value:305>.add(<item:minecraft:tnt_minecart>);

<tag:items:amc-value:315>.add(<item:minecraft:dark_prismarine_stairs>);
<tag:items:amc-value:315>.add(<item:minecraft:redstone_block>);

<tag:items:amc-value:350>.add(<item:minecraft:sea_lantern>);

<tag:items:amc-value:350>.add(<item:minecraft:golden_horse_armor>);

<tag:items:amc-value:350>.add(<item:minecraft:cake>); // Should be 363, but uuhhhh the bucket stay so you can't count them or something?


// 400's AMC
<tag:items:amc-value:415>.add(<item:minecraft:golden_apple>);

<tag:items:amc-value:450>.add(<item:minecraft:slime_block>);
<tag:items:amc-value:450>.add(<item:minecraft:gold_block>);


// 500's AMC [End]
<tag:items:amc-value:500>.add(<item:minecraft:chipped_anvil>);
<tag:items:amc-value:500>.add(<item:minecraft:gilded_blackstone>);
<tag:items:amc-value:500>.add(<item:minecraft:crying_obsidian>);
<tag:items:amc-value:500>.add(<item:minecraft:netherite_scrap>);
<tag:items:amc-value:500>.add(<item:minecraft:ancient_debris>);

<tag:items:amc-value:500>.add(<item:minecraft:dragon_head>);
<tag:items:amc-value:500>.add(<item:minecraft:ender_pearl>);

<tag:items:amc-value:500>.add(<item:minecraft:globe_banner_pattern>);

<tag:items:amc-value:500>.add(<item:oddwatermobs:hydrothermal_vent>);

print("4-high_amc.zs loaded");