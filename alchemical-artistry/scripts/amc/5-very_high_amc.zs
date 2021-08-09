# Adds very high value (501 - 1,000) AMC tags to various items. Loads before everything else.
#priority 20

import crafttweaker.api.tag.MCTag;

print("5-very_high_amc.zs loading...");

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

// 500's AMC
<tag:items:amc-value:550>.add(<item:minecraft:ender_eye>);


// 600's AMC
val lift = <tag:items:elevatorid:elevators>;
val amc628 = <tag:items:amc-value:628>;

for item in lift.elements {
   amc628.add(lift);
}

// 700's AMC
<tag:items:amc-value:707>.add(<item:minecraft:end_crystal>);
<tag:items:amc-value:750>.add(<item:minecraft:anvil>);


// 900's AMC
<tag:items:amc-value:900>.add(<item:rftoolsbase:infused_enderpearl>);


// 1000's AMC [End]
<tag:items:amc-value:1000>.add(<item:minecraft:diamond_ore>);
<tag:items:amc-value:1000>.add(<item:minecraft:diamond>);

<tag:items:amc-value:1000>.add(<item:minecraft:emerald_ore>);
<tag:items:amc-value:1000>.add(<item:minecraft:emerald>);

<tag:items:amc-value:1000>.add(<item:minecraft:trident>);


print("5-very_high_amc.zs loaded");