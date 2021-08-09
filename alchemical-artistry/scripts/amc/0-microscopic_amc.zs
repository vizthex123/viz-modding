# Adds microscopic value (<1) AMC tags to various items. Loads before everything else.
#priority 20

import crafttweaker.api.tag.MCTag;

print("0-microscopic_amc.zs loading...");

/*
<tag:items:amc-value:>.add(<item:>);

Everything with less than 1 AMC goes here
*/

# Dyes
# I don't wanna flip through multiple scripts just to place these properly, so I'll just plop them here since it's empty.
# Too lazy to do math so I'm just gonna make them all 7 for now (except for white, brown, green, and black ones). Good enough. Also since they each have like, 3 recipes or so.
print("Dyes are in 0-microscopic_amc.zs!");

<tag:items:amc-value:7>.add(<item:minecraft:orange_dye>);
<tag:items:amc-value:7>.add(<item:minecraft:magenta_dye>);
<tag:items:amc-value:7>.add(<item:minecraft:light_blue_dye>);
<tag:items:amc-value:7>.add(<item:minecraft:yellow_dye>);
<tag:items:amc-value:7>.add(<item:minecraft:lime_dye>);
<tag:items:amc-value:7>.add(<item:minecraft:pink_dye>);
<tag:items:amc-value:7>.add(<item:minecraft:gray_dye>);
<tag:items:amc-value:7>.add(<item:minecraft:light_gray_dye>);
<tag:items:amc-value:7>.add(<item:minecraft:cyan_dye>);
<tag:items:amc-value:7>.add(<item:minecraft:purple_dye>);
<tag:items:amc-value:7>.add(<item:minecraft:blue_dye>);
<tag:items:amc-value:7>.add(<item:minecraft:red_dye>);


// <1 AMC
<tag:items:amc-value:0.75>.add(<item:minecraft:bowl>);
<tag:items:amc-value:0.75>.add(<item:dwarfcoal:stone_dwarf_torch>); // yeah idc enough to figure out the actual cost

<tag:items:amc-value:0.25>.add(<item:dwarfcoal:dwarf_torch>); // Should be like 0.43-ish
<tag:items:amc-value:0.25>.add(<item:minecraft:snowball>);
<tag:items:amc-value:0.25>.add(<item:minecraft:bamboo>);
<tag:items:amc-value:0.25>.add(<item:minecraft:stick>);


val pane = <tag:items:forge:glass_panes>;
val amc0 = <tag:items:amc-value:0.25>;

for item in pane.elements {
   amc0.add(pane);
}
// Panes should be 0.375, but I'm gonna round it down a tad instead.

<tag:items:amc-value:0.5>.add(<item:dwarfcoal:dwarf_charcoal>);
<tag:items:amc-value:0.5>.add(<item:minecraft:ladder>); // Should be like, 0.588 etc.... but I don't feel like it lol.
<tag:items:amc-value:0.5>.add(<item:minecraft:snow>);

<tag:items:amc-value:0.5>.add(<item:minecraft:oak_slab>);
<tag:items:amc-value:0.5>.add(<item:minecraft:spruce_slab>);
<tag:items:amc-value:0.5>.add(<item:minecraft:birch_slab>);
<tag:items:amc-value:0.5>.add(<item:minecraft:jungle_slab>);
<tag:items:amc-value:0.5>.add(<item:minecraft:acacia_slab>);
<tag:items:amc-value:0.5>.add(<item:minecraft:dark_oak_slab>);

<tag:items:amc-value:0.5>.add(<item:minecraft:stone_slab>);
<tag:items:amc-value:0.5>.add(<item:minecraft:cobblestone_slab>);
<tag:items:amc-value:0.5>.add(<item:minecraft:smooth_stone_slab>);

<tag:items:amc-value:0.5>.add(<item:minecraft:andesite_slab>);
<tag:items:amc-value:0.5>.add(<item:minecraft:granite_slab>);
<tag:items:amc-value:0.5>.add(<item:minecraft:diorite_slab>);

<tag:items:amc-value:0.5>.add(<item:minecraft:polished_andesite_slab>);
<tag:items:amc-value:0.5>.add(<item:minecraft:polished_granite_slab>);
<tag:items:amc-value:0.5>.add(<item:minecraft:polished_diorite_slab>);

print("0-microscopic_amc.zs loaded");