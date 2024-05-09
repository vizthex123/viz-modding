# Adds tags to various items
#priority 25

print("0-tags.zs loading...");
/*
<tag>.add(<item>);
<tag>.remove(<item>);
*/


# Raw Meat and Seeds are in 0-tags-biomass.zs


# Eggs
<tag:items:vanilla:eggs>.add(<item:minecraft:egg>);
<tag:items:vanilla:eggs>.add(<item:minecraft:turtle_egg>);


# Ash
# Used to make Soap
<tag:items:vanilla:ash>.add(<item:supplementaries:ash>);
<tag:items:vanilla:ash>.add(<item:cinderscapes:ash_pile>);


# Bark
# Used to make Sticks
val bark = <tag:items:vanilla:bark>;

bark.add(<item:farmersdelight:tree_bark>);
bark.add(<item:treebark:oak_bark>);
bark.add(<item:treebark:spruce_bark>);
bark.add(<item:treebark:birch_bark>);
bark.add(<item:treebark:jungle_bark>);
bark.add(<item:treebark:acacia_bark>);
bark.add(<item:treebark:dark_oak_bark>);
bark.add(<item:treebark:mangrove_bark>);
bark.add(<item:treebark:crimson_bark>);
bark.add(<item:treebark:warped_bark>);


# Adds Raw Ores to the Ores tag so smelting can be unified
<tag:items:minecraft:copper_ores>.add(<item:minecraft:raw_copper>);
<tag:items:minecraft:iron_ores>.add(<item:minecraft:raw_iron>);
<tag:items:minecraft:gold_ores>.add(<item:minecraft:raw_gold>);


# Bowls
<tag:items:vanilla:bowl>.add(<item:minecraft:bowl>);
<tag:items:vanilla:bowl>.add(<item:ecologics:coconut_husk>);



# Mushrooms
<tag:items:vanilla:mushroom>.add(<item:minecraft:brown_mushroom>);
<tag:items:vanilla:mushroom>.add(<item:minecraft:red_mushroom>);
<tag:items:vanilla:mushroom>.add(<item:betterend:bolux_mushroom>);
<tag:items:vanilla:mushroom>.add(<item:betterend:chorus_mushroom_raw>);
<tag:items:vanilla:mushroom>.add(<item:betterend:small_amaranita_mushroom>);
<tag:items:vanilla:mushroom>.add(<item:betternether:hook_mushroom>);
<tag:items:vanilla:mushroom>.add(<item:betternether:orange_mushroom>);
<tag:items:vanilla:mushroom>.add(<item:betternether:wall_mushroom_brown>);
<tag:items:vanilla:mushroom>.add(<item:betternether:wall_mushroom_red>);

<tag:items:vanilla:fungus>.add(<item:minecraft:crimson_fungus>);
<tag:items:vanilla:fungus>.add(<item:minecraft:warped_fungus>);
<tag:items:vanilla:fungus>.add(<item:betterend:bolux_mushroom>);
<tag:items:vanilla:fungus>.add(<item:betterend:chorus_mushroom_raw>);
<tag:items:vanilla:fungus>.add(<item:betterend:small_amaranita_mushroom>);
<tag:items:vanilla:fungus>.add(<item:cinderscapes:umbral_fungus>);



# Pottery shards
val shard = <tag:items:vanilla:shards>;

shard.add(<item:archeology:ender_dragon_shard>);
shard.add(<item:archeology:creeper_shard>);
shard.add(<item:archeology:shovel_shard>);
shard.add(<item:archeology:temple_shard>);
shard.add(<item:archeology:hoe_shard>);
shard.add(<item:archeology:propagule_shard>);
shard.add(<item:archeology:slime_shard>);
shard.add(<item:archeology:diamond_shard>);
shard.add(<item:archeology:sun_shard>);
shard.add(<item:archeology:sword_shard>);
shard.add(<item:archeology:axe_shard>);
shard.add(<item:archeology:emerald_shard>);
shard.add(<item:archeology:snowflake_shard>);



# Lightning Rods
# Mainly for the recycling recipe
val lightning = <tag:items:vanilla:lightning_rods>;

lightning.add(<item:minecraft:lightning_rod>);
lightning.add(<item:friendsandfoes:exposed_lightning_rod>);
lightning.add(<item:friendsandfoes:weathered_lightning_rod>);
lightning.add(<item:friendsandfoes:oxidized_lightning_rod>);
lightning.add(<item:friendsandfoes:waxed_lightning_rod>);
lightning.add(<item:friendsandfoes:waxed_exposed_lightning_rod>);
lightning.add(<item:friendsandfoes:waxed_weathered_lightning_rod>);
lightning.add(<item:friendsandfoes:waxed_oxidized_lightning_rod>);


# Doors
# Mainly for the recycling recipe
val door = <tag:items:vanilla:copper_doors>;
val trapdoor = <tag:items:vanilla:copper_trapdoors>;

door.add(<item:copperandtuffbackport:copper_door>);
door.add(<item:copperandtuffbackport:exposed_copper_door>);
door.add(<item:copperandtuffbackport:oxidized_copper_door>);
door.add(<item:copperandtuffbackport:weathered_copper_door>);
door.add(<item:copperandtuffbackport:waxed_copper_door>);
door.add(<item:copperandtuffbackport:waxed_exposed_copper_door>);
door.add(<item:copperandtuffbackport:waxed_oxidized_copper_door>);
door.add(<item:copperandtuffbackport:waxed_weathered_copper_door>);

trapdoor.add(<item:copperandtuffbackport:copper_trapdoor>);
trapdoor.add(<item:copperandtuffbackport:exposed_copper_trapdoor>);
trapdoor.add(<item:copperandtuffbackport:oxidized_copper_trapdoor>);
trapdoor.add(<item:copperandtuffbackport:weathered_copper_trapdoor>);
trapdoor.add(<item:copperandtuffbackport:waxed_copper_trapdoor>);
trapdoor.add(<item:copperandtuffbackport:waxed_exposed_copper_trapdoor>);
trapdoor.add(<item:copperandtuffbackport:waxed_oxidized_copper_trapdoor>);
trapdoor.add(<item:copperandtuffbackport:waxed_weathered_copper_trapdoor>);


# Copper Pipes
# Mainly for the recycling recipe
val pipe = <tag:items:vanilla:copper_pipes>;

pipe.add(<item:lunade:copper_pipe>);
pipe.add(<item:lunade:exposed_copper_pipe>);
pipe.add(<item:lunade:weathered_copper_pipe>);
pipe.add(<item:lunade:oxidized_copper_pipe>);
pipe.add(<item:lunade:waxed_copper_pipe>);
pipe.add(<item:lunade:waxed_exposed_copper_pipe>);
pipe.add(<item:lunade:waxed_weathered_copper_pipe>);
pipe.add(<item:lunade:waxed_oxidized_copper_pipe>);
pipe.add(<item:lunade:corroded_pipe>);

pipe.add(<item:lunade:black_pipe>);
pipe.add(<item:lunade:red_pipe>);
pipe.add(<item:lunade:green_pipe>);
pipe.add(<item:lunade:brown_pipe>);
pipe.add(<item:lunade:blue_pipe>);
pipe.add(<item:lunade:purple_pipe>);
pipe.add(<item:lunade:cyan_pipe>);
pipe.add(<item:lunade:light_gray_pipe>);
pipe.add(<item:lunade:gray_pipe>);
pipe.add(<item:lunade:pink_pipe>);
pipe.add(<item:lunade:lime_pipe>);
pipe.add(<item:lunade:yellow_pipe>);
pipe.add(<item:lunade:light_blue_pipe>);
pipe.add(<item:lunade:magenta_pipe>);
pipe.add(<item:lunade:orange_pipe>);
pipe.add(<item:lunade:white_pipe>);

pipe.add(<item:lunade:glowing_black_pipe>);
pipe.add(<item:lunade:glowing_red_pipe>);
pipe.add(<item:lunade:glowing_green_pipe>);
pipe.add(<item:lunade:glowing_brown_pipe>);
pipe.add(<item:lunade:glowing_blue_pipe>);
pipe.add(<item:lunade:glowing_purple_pipe>);
pipe.add(<item:lunade:glowing_cyan_pipe>);
pipe.add(<item:lunade:glowing_light_gray_pipe>);
pipe.add(<item:lunade:glowing_gray_pipe>);
pipe.add(<item:lunade:glowing_pink_pipe>);
pipe.add(<item:lunade:glowing_lime_pipe>);
pipe.add(<item:lunade:glowing_yellow_pipe>);
pipe.add(<item:lunade:glowing_light_blue_pipe>);
pipe.add(<item:lunade:glowing_magenta_pipe>);
pipe.add(<item:lunade:glowing_orange_pipe>);
pipe.add(<item:lunade:glowing_white_pipe>);



# Copper Fittings
# Mainly for the recycling recipe
val fitting = <tag:items:vanilla:copper_fittings>;

fitting.add(<item:lunade:copper_fitting>);
fitting.add(<item:lunade:exposed_copper_fitting>);
fitting.add(<item:lunade:weathered_copper_fitting>);
fitting.add(<item:lunade:oxidized_copper_fitting>);
fitting.add(<item:lunade:corroded_fitting>);

fitting.add(<item:lunade:black_fitting>);
fitting.add(<item:lunade:red_fitting>);
fitting.add(<item:lunade:green_fitting>);
fitting.add(<item:lunade:brown_fitting>);
fitting.add(<item:lunade:blue_fitting>);
fitting.add(<item:lunade:purple_fitting>);
fitting.add(<item:lunade:cyan_fitting>);
fitting.add(<item:lunade:light_gray_fitting>);
fitting.add(<item:lunade:gray_fitting>);
fitting.add(<item:lunade:pink_fitting>);
fitting.add(<item:lunade:lime_fitting>);
fitting.add(<item:lunade:yellow_fitting>);
fitting.add(<item:lunade:light_blue_fitting>);
fitting.add(<item:lunade:magenta_fitting>);
fitting.add(<item:lunade:orange_fitting>);
fitting.add(<item:lunade:white_fitting>);

fitting.add(<item:lunade:glowing_black_fitting>);
fitting.add(<item:lunade:glowing_red_fitting>);
fitting.add(<item:lunade:glowing_green_fitting>);
fitting.add(<item:lunade:glowing_brown_fitting>);
fitting.add(<item:lunade:glowing_blue_fitting>);
fitting.add(<item:lunade:glowing_purple_fitting>);
fitting.add(<item:lunade:glowing_cyan_fitting>);
fitting.add(<item:lunade:glowing_light_gray_fitting>);
fitting.add(<item:lunade:glowing_gray_fitting>);
fitting.add(<item:lunade:glowing_pink_fitting>);
fitting.add(<item:lunade:glowing_lime_fitting>);
fitting.add(<item:lunade:glowing_yellow_fitting>);
fitting.add(<item:lunade:glowing_light_blue_fitting>);
fitting.add(<item:lunade:glowing_magenta_fitting>);
fitting.add(<item:lunade:glowing_orange_fitting>);
fitting.add(<item:lunade:glowing_white_fitting>);



# End discs
# Converts into Ender Shards
val end_disc = <tag:items:vanilla:end_discs>;

end_disc.add(<item:betterend:music_disc_endseeker>);
end_disc.add(<item:betterend:music_disc_eo_dracona>);
end_disc.add(<item:betterend:music_disc_grasping_at_stars>);
end_disc.add(<item:betterend:music_disc_strange_and_alien>);



# Misc
<tag:items:c:grain>.add(<item:skylorlib:golden_wheat_item>);
<tag:items:c:grain/wheat>.add(<item:skylorlib:golden_wheat_item>);
<tag:items:c:grain/golden_wheat>.add(<item:skylorlib:golden_wheat_item>);

<tag:items:c:bread>.add(<item:skylorlib:golden_bread_item>);
<tag:items:c:bread/golden>.add(<item:skylorlib:golden_bread_item>);

<tag:items:c:slimeballs>.add(<item:hybrid-aquatic:glow_slime>);
<tag:items:c:slime_balls>.add(<item:hybrid-aquatic:glow_slime>);

<tag:items:c:furnaces>.add(<item:betterend:end_stone_furnace>);
<tag:items:c:furnaces>.add(<item:betternether:basalt_furnace>);
<tag:items:c:furnaces>.add(<item:betternether:blackstone_furnace>);
<tag:items:c:furnaces>.add(<item:betternether:netherrack_furnace>);

print("0-tags.zs loaded");