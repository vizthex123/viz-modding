# Adds tags to items used to make dyes
# Dyes are in the minecraft order, item list is in alphabetical order (by mod first)
#priority 20

print("0-tags-dyes.zs loading...");

/*
<tag>.add(<item>);
<tag>.remove(<item>);
*/

# White
val white = <tag:items:vanilla:white_dye_materials>;

white.add(<item:minecraft:bone_meal>);
white.add(<item:minecraft:lily_of_the_valley>);
white.add(<item:betterend:hydralux_petal>);


# Orange
val orange = <tag:items:vanilla:orange_dye_materials>;

orange.add(<item:minecraft:glow_berries>);
orange.add(<item:minecraft:orange_tulip>);
orange.add(<item:betterend:charnia_orange>);


# Magenta
val magenta = <tag:items:vanilla:magenta_dye_materials>;
val big_magenta = <tag:items:vanilla:magenta_dye_materials_double>;

magenta.add(<item:minecraft:allium>);
magenta.add(<item:betterend:bushy_grass>);
magenta.add(<item:betterend:dense_vine>);

big_magenta.add(<item:minecraft:lilac>);


# Light Blue
val light_blue = <tag:items:vanilla:light_blue_dye_materials>;

light_blue.add(<item:minecraft:blue_orchid>);
light_blue.add(<item:betterend:charnia_light_blue>);
light_blue.add(<item:betterend:lumecorn_rod>);
light_blue.add(<item:betterend:neon_cactus>);


# Yellow
val yellow = <tag:items:vanilla:yellow_dye_materials>;
val big_yellow = <tag:items:vanilla:yellow_dye_materials_double>;
val huge_yellow = <tag:items:vanilla:yellow_dye_materials_quadruple>;

yellow.add(<item:minecraft:dandelion>);
yellow.add(<item:betterend:umbrella_moss>);
yellow.add(<item:friendsandfoes:buttercup>);

big_yellow.add(<item:minecraft:sunflower>);
big_yellow.add(<item:betterend:umbrella_moss_tall>);
big_yellow.add(<item:betternether:blooming_vine>);

huge_yellow.add(<item:magehand:hand_essence_item>);

# Lime doesn't have crafting recipes


# Pink
val pink = <tag:items:vanilla:pink_dye_materials>;
val big_pink = <tag:items:vanilla:pink_dye_materials_double>;

pink.add(<item:minecraft:pink_tulip>);
pink.add(<item:betterend:glowing_bulb>);
pink.add(<item:betterend:twisted_moss>);

big_pink.add(<item:minecraft:peony>);


# Gray
val gray = <tag:items:vanilla:gray_dye_materials>;

gray.add(<item:betterend:tail_moss>);
gray.add(<item:betternether:gray_mold>);


# Light Gray
val light_gray = <tag:items:vanilla:light_gray_dye_materials>;

light_gray.add(<item:minecraft:azure_bluet>);
light_gray.add(<item:minecraft:oxeye_daisy>);
light_gray.add(<item:minecraft:white_tulip>);


# Cyan
val cyan = <tag:items:vanilla:cyan_dye_materials>;

cyan.add(<item:minecraft:glow_ink_sac>);
cyan.add(<item:minecraft:twisting_vines>);
cyan.add(<item:minecraft:warped_roots>);
cyan.add(<item:betterend:charnia_cyan>);
cyan.add(<item:betterend:creeping_moss>);
cyan.add(<item:betterend:jungle_vine>);
cyan.add(<item:betterend:lumecorn_seed>);
cyan.add(<item:nears:soul_berries>);


# Purple (best colour)
val purple = <tag:items:vanilla:purple_dye_materials>;

purple.add(<item:betterend:bulb_vine>);
purple.add(<item:betterend:bulb_vine_seed>);
purple.add(<item:betterend:charnia_purple>);
purple.add(<item:betterend:purple_polypore>);
purple.add(<item:betterend:twisted_umbrella_moss>);
purple.add(<item:ends_delight:chorus_succulent>);


# Blue
val blue = <tag:items:vanilla:blue_dye_materials>;

blue.add(<item:minecraft:cornflower>);
blue.add(<item:minecraft:lapis_lazuli>);
blue.add(<item:betterend:blue_vine_seed>);


# Brown
val brown = <tag:items:vanilla:brown_dye_materials>;

brown.add(<item:minecraft:cocoa_beans>);
brown.add(<item:cinderscapes:bramble_berries>);


# Green
val green = <tag:items:vanilla:green_dye_materials>;

brown.add(<item:minecraft:vine>);
green.add(<item:betterend:charnia_green>);


# Red
val red = <tag:items:vanilla:red_dye_materials>;
val big_red = <tag:items:vanilla:red_dye_materials_double>; // Better make sure this doesn't spill out of the script...

red.add(<item:minecraft:beetroot>);
red.add(<item:minecraft:poppy>);
red.add(<item:minecraft:red_tulip>);
red.add(<item:minecraft:sweet_berries>);
red.add(<item:minecraft:weeping_vines>);
red.add(<item:betterend:charnia_red>);
red.add(<item:terrestria:indian_paintbrush>);

big_red.add(<item:minecraft:rose_bush>);
big_red.add(<item:betternether:red_mold>);


# Black
val black = <tag:items:vanilla:black_dye_materials>;
val huge_black = <tag:items:vanilla:black_dye_materials_quadruple>;

black.add(<item:minecraft:ink_sac>);
black.add(<item:minecraft:wither_rose>);
black.add(<item:betterend:shadow_plant>);
black.add(<item:betterend:twisted_vine>);
black.add(<item:betternether:black_vine>);

huge_black.add(<item:kubejs:disc_residue>);

print("0-tags-dyes.zs loaded");