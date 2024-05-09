# Adds/removes tags from various items
#priority 25
print("0-tags.zs loading...");

/*
<tag>.add(<item>);
<tag>.remove(<item>);
*/


/*
# Bowls
<tag:items:modpack:bowls>.add(<item:minecraft:bowl>);
<tag:items:modpack:bowls>.add(<item:ecologics:coconut_husk>);


# Eggs
val egg = <tag:items:forge:eggs>;

egg.add(<item:minecraft:sniffer_egg>);
egg.add(<item:quark:egg_parrot_red_blue>);
egg.add(<item:quark:egg_parrot_blue>);
egg.add(<item:quark:egg_parrot_yellow_blue>);
egg.add(<item:quark:egg_parrot_green>);
egg.add(<item:quark:egg_parrot_grey>);

egg.add(<tag:items:minecraft:eggs>);
egg.add(<item:deep_aether:quail_egg>);


# Mushrooms
val fungus = <tag:items:modpack:fungus>;
val mushroom = <tag:items:modpack:mushrooms>;

fungus.add(<item:minecraft:crimson_fungus>);
fungus.add(<item:minecraft:warped_fungus>);
fungus.add(<item:voidscape:thunder_fungus>);


mushroom.add(<item:minecraft:brown_mushroom>);
mushroom.add(<item:minecraft:red_mushroom>);

mushroom.add(<item:biomesoplenty:toadstool>);
mushroom.add(<item:biomesoplenty:glowshroom>);

mushroom.add(<item:cavesanddepths:glittering_fungus_placeable>);
mushroom.add(<item:cavesanddepths:lichenfungusplaceable>);

mushroom.add(<item:deep_aether:lightcap_mushrooms>);

mushroom.add(<item:spelunkers_charm:cave_mushroom>);
mushroom.add(<item:spelunkers_charm:golden_mushroom>);

mushroom.add(<item:spelunkery:button_mushroom>);
mushroom.add(<item:spelunkery:milly_bubcap>);
mushroom.add(<item:spelunkery:phosphor_fungus>);
mushroom.add(<item:spelunkery:inkcap_mushroom>);
mushroom.add(<item:spelunkery:white_inkcap_mushroom>);

mushroom.add(<item:voidscape:thunder_fungus>);



# Green Minerals
# Used to convert Extra Large Coins into Emeralds because recipe conflicts are cringe
# Also used to make the Twilight Portal Catalyst
val green_minerals = <tag:items:modpack:green_minerals>;

green_minerals.add(<item:minecraft:prismarine_crystals>);
green_minerals.add(<item:minecraft:prismarine_shard>);
green_minerals.add(<item:outer_end:mint_crystal_shard>);
green_minerals.add(<item:quark:green_corundum_cluster>);
green_minerals.add(<item:spelunkery:nephrite_chunk>);
green_minerals.add(<item:voidscape:titanite_chunk>);
green_minerals.add(<item:voidscape:titanite_shard>);


# Fossils
# Used in the quest
val fossil = <tag:items:modpack:fossils>;

fossil.add(<item:betterarcheology:villager_fossil>);
fossil.add(<item:betterarcheology:villager_fossil_head>);
fossil.add(<item:betterarcheology:villager_fossil_body>);

fossil.add(<item:betterarcheology:creeper_fossil>);
fossil.add(<item:betterarcheology:creeper_fossil_head>);
fossil.add(<item:betterarcheology:creeper_fossil_body>);
fossil.add(<item:betterarcheology:guardian_fossil>);
fossil.add(<item:betterarcheology:guardian_fossil_head>);
fossil.add(<item:betterarcheology:guardian_fossil_body>);

fossil.add(<item:betterarcheology:chicken_fossil>);
fossil.add(<item:betterarcheology:chicken_fossil_head>);
fossil.add(<item:betterarcheology:chicken_fossil_body>);
fossil.add(<item:betterarcheology:ocelot_fossil>);
fossil.add(<item:betterarcheology:ocelot_fossil_head>);
fossil.add(<item:betterarcheology:ocelot_fossil_body>);
fossil.add(<item:betterarcheology:sheep_fossil>);
fossil.add(<item:betterarcheology:sheep_fossil_head>);
fossil.add(<item:betterarcheology:sheep_fossil_body>);
fossil.add(<item:betterarcheology:wolf_fossil>);
fossil.add(<item:betterarcheology:wolf_fossil_head>);
fossil.add(<item:betterarcheology:wolf_fossil_body>);

# Lightning Rods
# Mainly for the recycling recipe
val lightning = <tag:items:modpack:lightning_rods>;

lightning.add(<item:minecraft:lightning_rod>);
lightning.add(<item:friendsandfoes:exposed_lightning_rod>);
lightning.add(<item:friendsandfoes:weathered_lightning_rod>);
lightning.add(<item:friendsandfoes:oxidized_lightning_rod>);
lightning.add(<item:friendsandfoes:waxed_lightning_rod>);
lightning.add(<item:friendsandfoes:waxed_exposed_lightning_rod>);
lightning.add(<item:friendsandfoes:waxed_weathered_lightning_rod>);
lightning.add(<item:friendsandfoes:waxed_oxidized_lightning_rod>);




# Furnace tag to fix all the duplicate recipes from Quark
# Can't believe this I still have to manually fix this...
val furnace = <tag:items:modpack:furnace>;

furnace.add(<item:minecraft:furnace>);
furnace.add(<item:quark:deepslate_furnace>);
furnace.add(<item:quark:blackstone_furnace>);



# Geysers
# Gotta fix more recipes, lovely...
val geyser = <tag:items:modpack:geyser>;

geyser.add(<item:deeperdarker:gloomy_geyser>);
geyser.add(<item:spelunkers_charm:deepslate_geyser>);
geyser.add(<item:spelunkers_charm:deepslate_geyser_lava>);
geyser.add(<item:spelunkers_charm:deepslate_geyser_water>);



# Undergarden portal block changes
val portal_frame = <tag:items:undergarden:portal_frame_blocks>;

portal_frame.add(<item:minecraft:chiseled_deepslate>);

portal_frame.remove(<item:minecraft:stone_bricks>);
portal_frame.remove(<item:minecraft:mossy_stone_bricks>);



# Add tags to ores that are missing it
val ore = <tag:items:forge:ores>;

ore.add(<item:alexscaves:radrock_uranium_ore>);
ore.add(<item:deep_aether:skyjade_ore>);
ore.add(<item:voidscape:flesh_ore>);
ore.add(<item:voidscape:strange_ore>);
ore.add(<item:voidscape:titanite_ore>);
ore.add(<item:voidscape:voidic_crystal_ore>);


<tag:items:forge:ores/uranium>.add(<item:alexscaves:radrock_uranium_ore>);
<tag:items:forge:ores/ambrosium>.add(<item:aether:ambrosium_ore>);
<tag:items:forge:ores/gravitite>.add(<item:aether:gravitite_ore>);
<tag:items:forge:ores/zanite>.add(<item:aether:zanite_ore>);
<tag:items:forge:ores/skyjade>.add(<item:deep_aether:skyjade_ore>);
<tag:items:forge:ores/jade>.add(<item:deep_aether:skyjade_ore>);
<tag:items:forge:ores/flesh>.add(<item:voidscape:flesh_ore>);
<tag:items:forge:ores/strange>.add(<item:voidscape:strange_ore>);
<tag:items:forge:ores/titanite>.add(<item:voidscape:titanite_ore>);
<tag:items:forge:ores/voidic_crystal>.add(<item:voidscape:voidic_crystal_ore>);


val copper_ore = <tag:items:spelunkery:copper_ores>;
val iron_ore = <tag:items:spelunkery:iron_ores>;
val gold_ore = <tag:items:spelunkery:gold_ores>;
val diamond_ore = <tag:items:spelunkery:diamond_ores>;
val emerald_ore = <tag:items:spelunkery:emerald_ores>;

val coal_ore = <tag:items:spelunkery:coal_ores>;
val lapis_ore = <tag:items:spelunkery:lapis_ores>;
val redstone_ore = <tag:items:spelunkery:redstone_ores>;


copper_ore.add(<item:cavesanddepths:slate_copper_ore>);
copper_ore.add(<item:deeperdarker:gloomslate_copper_ore>);
copper_ore.add(<item:deeperdarker:sculk_stone_copper_ore>);

iron_ore.add(<item:alexscaves:galena_iron_ore>);
iron_ore.add(<item:cavesanddepths:slate_iron_ore>);
iron_ore.add(<item:deeperdarker:gloomslate_iron_ore>);
iron_ore.add(<item:deeperdarker:sculk_stone_iron_ore>);

gold_ore.add(<item:cavesanddepths:slate_gold_ore>);
gold_ore.add(<item:deeperdarker:gloomslate_gold_ore>);
gold_ore.add(<item:deeperdarker:sculk_stone_gold_ore>);

diamond_ore.add(<item:cavesanddepths:slate_diamond_ore>);
diamond_ore.add(<item:deeperdarker:gloomslate_diamond_ore>);
diamond_ore.add(<item:deeperdarker:sculk_stone_diamond_ore>);

emerald_ore.add(<item:cavesanddepths:slate_emerald_ore>);
emerald_ore.add(<item:deeperdarker:gloomslate_emerald_ore>);
emerald_ore.add(<item:deeperdarker:sculk_stone_emerald_ore>);

coal_ore.add(<item:alexscaves:coprolith_coal_ore>);
coal_ore.add(<item:cavesanddepths:slate_coal_ore>);
coal_ore.add(<item:deeperdarker:gloomslate_coal_ore>);
coal_ore.add(<item:deeperdarker:sculk_stone_coal_ore>);

lapis_ore.add(<item:cavesanddepths:slate_lapislazuli_ore>);
lapis_ore.add(<item:deeperdarker:gloomslate_lapis_ore>);
lapis_ore.add(<item:deeperdarker:sculk_stone_lapis_ore>);

redstone_ore.add(<item:cavesanddepths:slate_redstone_ore>);
redstone_ore.add(<item:alexscaves:guanostone_redstone_ore>);
redstone_ore.add(<item:deeperdarker:gloomslate_redstone_ore>);
redstone_ore.add(<item:deeperdarker:sculk_stone_redstone_ore>);



# Misc
<tag:items:forge:dusts/ash>.add(<item:nourished_nether:ash_lump>);
<tag:items:forge:dusts/ash>.add(<item:spelunkery:dust_bun>);

<tag:items:forge:nuggets/coal>.add(<item:spelunkery:charcoal_lump>);
<tag:items:forge:nuggets/coal>.add(<item:spelunkery:coal_lump>);

<tag:items:minecraft:rails>.add(<item:alexscaves:magnetic_levitation_rail>);
*/
print("0-tags.zs loaded");