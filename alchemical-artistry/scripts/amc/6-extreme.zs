# Adds extreme value (1,001 - 4,999) AMC tags to various items. Loads before everything else.
#priority 20

import crafttweaker.api.tag.MCTag;

print("6-extreme.zs loading...");

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

// 1000's AMC
<tag:items:amc-value:1008>.add(<item:minecraft:jukebox>);

<tag:items:amc-value:1291>.add(<item:enderstorage:ender_tank>);

<tag:items:amc-value:1035>.add(<item:enderstorage:ender_chest>);
<tag:items:amc-value:1035>.add(<item:bountiful:bountyboard>); // Should be 1032

<tag:items:amc-value:1350>.add(<item:minecraft:ender_chest>);

<tag:items:amc-value:1400>.add(<item:rftoolsbase:infused_diamond>);

<tag:items:amc-value:1512>.add(<item:heartcanisters:canister_base>);


// 2000's AMC
<tag:items:amc-value:2200>.add(<item:minecraft:netherite_ingot>);

<tag:items:amc-value:2216>.add(<item:minecraft:lodestone>);

<tag:items:amc-value:2455>.add(<item:minecraft:enchanting_table>);

<tag:items:amc-value:2500>.add(<item:minecraft:enchanted_book>);
<tag:items:amc-value:2500>.add(<item:minecraft:dragon_breath>);


// 3,000's AMC
<tag:items:amc-value:3049>.add(<item:heartcanisters:empty_canister>);
<tag:items:amc-value:3150>.add(<item:minecraft:respawn_anchor>);
<tag:items:amc-value:3299>.add(<item:heartcanisters:heart_canister>);

<tag:items:amc-value:3605>.add(<item:disenchanting:disenchanter>);


// 4,000's AMC [End]
<tag:items:amc-value:4080>.add(<item:watercan:watercan_diamond>); // Should be 4,079


print("6-extreme.zs loaded");