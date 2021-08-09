# Adds insane value (5,000+) AMC tags to various items. Loads before everything else.
#priority 20

import crafttweaker.api.tag.MCTag;

print("7-insane_amc.zs loading...");

val black = "\u00A70";
val gold = "\u00A76";
val gray = "\u00A77";
val dark_gray = "\u00A78";
val blue = "\u00A79";
val dark_blue = "\u00A71";
val green = "\u00A7a";
val dark_green = "\u00A72";
val aqua = "\u00A7b";
val dark_aqua = "\u00A73";
val red = "\u00A7c";
val dark_red = "\u00A74";
val purple = "\u00A7d";
val dark_purple = "\u00A75";
val yellow = "\u00A7e";
val white = "\u00A7f";

// 5,000's AMC
<tag:items:amc-value:5000>.add(<item:minecraft:enchanted_golden_apple>);
<tag:items:amc-value:5000>.add(<item:minecraft:heart_of_the_sea>);
<tag:items:amc-value:5000>.add(<item:minecraft:nether_star>);
<tag:items:amc-value:5000>.add(<item:minecraft:elytra>);

<tag:items:amc-value:5305>.add(<item:minecraft:beacon>);

// 6,000's AMC
<tag:items:amc-value:6000>.add(<item:minecraft:conduit>);

// 7,000's AMC
<tag:items:amc-value:7000>.add(<item:minecraft:diamond_horse_armor>);

// 9,000's AMC
<tag:items:amc-value:9000>.add(<item:minecraft:diamond_block>);
<tag:items:amc-value:9000>.add(<item:minecraft:emerald_block>);


/// 10,000's AMC
<tag:items:amc-value:10000>.add(<item:minecraft:totem_of_undying>);

<tag:items:amc-value:19800>.add(<item:minecraft:netherite_block>);

// Way too high AMC's
<tag:items:amc-value:45000>.add(<item:extendedcrafting:nether_star_block>);

print("7-insane_amc.zs loaded");