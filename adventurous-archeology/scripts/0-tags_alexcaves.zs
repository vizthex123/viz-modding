# Adds Alex's Caves tags to various blocks & items
print("0-tags_alexcaves.zs loading...");
/*
<tag>.add(<item>);
<tag>.remove(<item>);
*/

# Ferromagnetic items
# Iron, Cobalt, and Magnetite
val magnetic = <tag:items:alexscaves:ferromagnetic_items>;
val magnetic_block = <tag:blocks:alexscaves:ferromagnetic_blocks>;

magnetic.add(<item:minecraft:iron_horse_armor>);

magnetic.add(<item:aether:iron_ring>);
magnetic.add(<item:aether:iron_pendant>);
magnetic.add(<item:aether:iron_gloves>);
magnetic.add(<item:aether:iron_bubble>);

magnetic.add(<item:betterarcheology:iron_brush>);

magnetic.add(<item:outer_end:cobalt_crystal_helmet>);
magnetic.add(<item:outer_end:cobalt_crystal_chestplate>);
magnetic.add(<item:outer_end:cobalt_crystal_leggings>);
magnetic.add(<item:outer_end:cobalt_crystal_boots>);
magnetic.add(<item:outer_end:cobalt_crystal_arrow>);
magnetic.add(<item:outer_end:cobalt_crystal_shard>);

magnetic.add(<item:outer_end:cobalt_crystal>);
magnetic.add(<item:outer_end:cobalt_crystal_bud>);
magnetic.add(<item:outer_end:cobalt_crystal_lamp>);
magnetic.add(<item:outer_end:cobalt_tangled_violite>);
magnetic_block.add(<block:outer_end:cobalt_crystal>);
magnetic_block.add(<block:outer_end:cobalt_crystal_bud>);
magnetic_block.add(<block:outer_end:cobalt_crystal_lamp>);
magnetic_block.add(<block:outer_end:cobalt_tangled_violite>);



magnetic.add(<item:spelunkery:handheld_compactor>);
magnetic.add(<item:spelunkery:item_magnet>);
magnetic.add(<item:spelunkery:magnetic_compass>);

magnetic.add(<item:spelunkery:raw_magnetite>);
magnetic.add(<item:spelunkery:raw_magnetite_nugget>);
magnetic.add(<item:spelunkery:raw_magnetite_block>);
magnetic_block.add(<block:spelunkery:raw_magnetite_block>);


magnetic.add(<item:supplementaries:dispenser_minecart>);
magnetic.add(<item:supplementaries:iron_gate>);
magnetic_block.add(<block:supplementaries:iron_gate>);



# Light sources for Gloomoths and Underzealots
val gloomoth = <tag:blocks:alexscaves:gloomoth_light_sources>;
val underzealot = <tag:blocks:alexscaves:underzealot_light_sources>;

gloomoth.add(<block:minecraft:jack_o_lantern>);
gloomoth.add(<block:minecraft:sea_lantern>);

gloomoth.add(<block:aether:ambrosium_torch>);

gloomoth.add(<block:alexscaves:carmine_froglight>);
gloomoth.add(<block:alexscaves:magnetic_light>);

gloomoth.add(<block:cavesanddepths:copper_lamp>);
gloomoth.add(<block:cavesanddepths:copper_lantern>);
gloomoth.add(<block:cavesanddepths:copper_lantern_hanging>);
gloomoth.add(<block:cavesanddepths:soul_copper_lantern>);
gloomoth.add(<block:cavesanddepths:soul_copper_lantern_hanging>);
gloomoth.add(<block:cavesanddepths:tuff_glittering_lamp>);

gloomoth.add(<block:enlightened_end:bismuth_lamp>);
gloomoth.add(<block:enlightened_end:dazzling_bismuth_lamp>);
gloomoth.add(<block:enlightened_end:ethereal_bismuth_lamp>);
gloomoth.add(<block:enlightened_end:helium_lantern>);
gloomoth.add(<block:enlightened_end:iridescent_bismuth_lamp>);
gloomoth.add(<block:enlightened_end:irradium_lamp>);
gloomoth.add(<block:enlightened_end:poise_bismuth_lamp>);
gloomoth.add(<block:enlightened_end:serene_bismuth_lamp>);
gloomoth.add(<block:enlightened_end:verdant_bismuth_lamp>);
gloomoth.add(<block:enlightened_end:waxed_bismuth_lamp>);
gloomoth.add(<block:enlightened_end:xenon_lantern>);

gloomoth.add(<block:galosphere:allurite_lamp>);
gloomoth.add(<block:galosphere:amethyst_lamp>);
gloomoth.add(<block:galosphere:lumiere_lamp>);
gloomoth.add(<block:galosphere:pink_salt_lamp>);

gloomoth.add(<block:mobcompack:lightened_glass>);

gloomoth.add(<block:outer_end:cobalt_crystal_lamp>);
gloomoth.add(<block:outer_end:mint_crystal_lamp>);
gloomoth.add(<block:outer_end:rose_crystal_lamp>);

gloomoth.add(<block:philipsruins:frozen_sea_lantern>);

gloomoth.add(<block:quark:blaze_lantern>);
gloomoth.add(<block:quark:duskbound_lantern>);
gloomoth.add(<block:quark:paper_lantern>);
gloomoth.add(<block:quark:paper_lantern_sakura>);
gloomoth.add(<block:quark:stone_brick_lamp>);
gloomoth.add(<block:quark:stone_lamp>);
gloomoth.add(<tag:blocks:quark:corundum>);
gloomoth.add(<tag:blocks:quark:crystal_lamp>);
/*
gloomoth.add(<block:quark:red_crystal_lamp>);
gloomoth.add(<block:quark:orange_crystal_lamp>);
*/

gloomoth.add(<block:undergarden:cloggrum_lantern>);
gloomoth.add(<block:undergarden:gloom_o_lantern>);
gloomoth.add(<block:undergarden:shard_torch>);

gloomoth.add(<block:supplementaries:blackstone_lamp>);
gloomoth.add(<block:supplementaries:deepslate_lamp>);
gloomoth.add(<block:supplementaries:end_stone_lamp>);
gloomoth.add(<block:supplementaries:stone_lamp>);



underzealot.add(<block:aether:ambrosium_torch>);

print("0-tags_alexcaves.zs loaded");