# Adds higher than medium (but not quite high) value (100 - 250) AMC tags to various items. Loads before everything else.
#priority 20

import crafttweaker.api.tag.MCTag;

print("3-above_average_amc.zs loading...");

// 100's AMC
<tag:items:amc-value:100>.add(<item:minecraft:milk_bucket>);
<tag:items:amc-value:100>.add(<item:minecraft:phantom_membrane>);

<tag:items:amc-value:100>.add(<item:minecraft:saddle>);
<tag:items:amc-value:100>.add(<item:minecraft:light_weighted_pressure_plate>);
<tag:items:amc-value:100>.add(<item:minecraft:wither_skeleton_skull>);

<tag:items:amc-value:100>.add(<item:minecraft:blaze_rod>);

<tag:items:amc-value:100>.add(<item:minecraft:obsidian>);

<tag:items:amc-value:100>.add(<item:minecraft:smooth_quartz_slab>);
<tag:items:amc-value:100>.add(<item:minecraft:purpur_slab>);
<tag:items:amc-value:100>.add(<item:minecraft:quartz_slab>);

<tag:items:amc-value:100>.add(<item:minecraft:nether_gold_ore>);

<tag:items:amc-value:100>.add(<item:minecraft:magma_cream>);
<tag:items:amc-value:100>.add(<item:minecraft:warped_wart_block>);

<tag:items:amc-value:100>.add(<item:minecraft:prismarine>);
<tag:items:amc-value:100>.add(<item:minecraft:prismarine_wall>);
<tag:items:amc-value:100>.add(<item:minecraft:wet_sponge>);
<tag:items:amc-value:100>.add(<item:minecraft:sponge>);
<tag:items:amc-value:100>.add(<item:minecraft:bell>);
<tag:items:amc-value:100>.add(<item:minecraft:iron_trapdoor>);

<tag:items:amc-value:105>.add(<item:minecraft:brewing_stand>); // Should be 102.5
<tag:items:amc-value:105>.add(<item:minecraft:dark_prismarine_slab>);
<tag:items:amc-value:105>.add(<item:minecraft:repeater>); // Should be 108

<tag:items:amc-value:105>.add(<item:measurements:tape_measure>);
<tag:items:amc-value:105>.add(<item:minecraft:pufferfish_bucket>);
<tag:items:amc-value:105>.add(<item:minecraft:salmon_bucket>);
<tag:items:amc-value:105>.add(<item:minecraft:cod_bucket>);
<tag:items:amc-value:105>.add(<item:minecraft:tropical_fish_bucket>);

<tag:items:amc-value:125>.add(<item:extendedcrafting:pedestal>);
<tag:items:amc-value:125>.add(<item:minecraft:nautilus_shell>);
<tag:items:amc-value:125>.add(<item:minecraft:turtle_helmet>);
<tag:items:amc-value:125>.add(<item:minecraft:minecart>);

<tag:items:amc-value:130>.add(<item:minecraft:sticky_piston>);
<tag:items:amc-value:130>.add(<item:minecraft:furnace_minecart>); // Should be 133
<tag:items:amc-value:130>.add(<item:minecraft:hopper>); // Should be 133
<tag:items:amc-value:130>.add(<item:akashictome:tome>);
<tag:items:amc-value:130>.add(<item:uppers:upper>);

<tag:items:amc-value:135>.add(<item:minecraft:compass>);
<tag:items:amc-value:135>.add(<item:minecraft:blast_furnace>); // Should be 136

<tag:items:amc-value:140>.add(<item:minecraft:observer>); // Should be 141
<tag:items:amc-value:140>.add(<item:minecraft:chest_minecart>); // Should be 144
<tag:items:amc-value:140>.add(<item:trashcans:ultimate_trash_can>); // Should be 140.5

<tag:items:amc-value:150>.add(<item:minecraft:prismarine_stairs>);
<tag:items:amc-value:150>.add(<item:minecraft:chorus_plant>);
<tag:items:amc-value:150>.add(<item:minecraft:ghast_tear>);

<tag:items:amc-value:155>.add(<item:minecraft:daylight_detector>); // Should be 155.5

// Dye value gets lost I guess, I dunno... I just don't wanna make a million tags tbh
<tag:items:amc-value:158>.add(<item:minecraft:shulker_box>);
<tag:items:amc-value:158>.add(<item:minecraft:white_shulker_box>);
<tag:items:amc-value:158>.add(<item:minecraft:orange_shulker_box>);
<tag:items:amc-value:158>.add(<item:minecraft:magenta_shulker_box>);
<tag:items:amc-value:158>.add(<item:minecraft:light_blue_shulker_box>);
<tag:items:amc-value:158>.add(<item:minecraft:yellow_shulker_box>);
<tag:items:amc-value:158>.add(<item:minecraft:lime_shulker_box>);
<tag:items:amc-value:158>.add(<item:minecraft:pink_shulker_box>);
<tag:items:amc-value:158>.add(<item:minecraft:gray_shulker_box>);
<tag:items:amc-value:158>.add(<item:minecraft:light_gray_shulker_box>);
<tag:items:amc-value:158>.add(<item:minecraft:cyan_shulker_box>);
<tag:items:amc-value:158>.add(<item:minecraft:purple_shulker_box>);
<tag:items:amc-value:158>.add(<item:minecraft:blue_shulker_box>);
<tag:items:amc-value:158>.add(<item:minecraft:brown_shulker_box>);
<tag:items:amc-value:158>.add(<item:minecraft:green_shulker_box>);
<tag:items:amc-value:158>.add(<item:minecraft:red_shulker_box>);
<tag:items:amc-value:158>.add(<item:minecraft:black_shulker_box>);
<tag:items:amc-value:158>.add(<item:minecraft:comparator>);

<tag:items:amc-value:170>.add(<item:minecraft:bookshelf>);

<tag:items:amc-value:175>.add(<item:minecraft:leather_horse_armor>);
<tag:items:amc-value:175>.add(<item:minecraft:iron_horse_armor>);
<tag:items:amc-value:175>.add(<item:minecraft:cauldron>);

<tag:items:amc-value:180>.add(<item:minecraft:coal_block>);
<tag:items:amc-value:180>.add(<item:thermal:lead_block>);
<tag:items:amc-value:180>.add(<item:minecraft:lectern>);

<tag:items:amc-value:180>.add(<item:watercan:watercan_iron>); // Should be 179
<tag:items:amc-value:180>.add(<item:minecraft:tnt>); // Should be 179

<tag:items:amc-value:190>.add(<item:minecraft:redstone_lamp>);
<tag:items:amc-value:190>.add(<item:minecraft:target>); // Should be 194


// 200's AMC
<tag:items:amc-value:200>.add(<item:minecraft:chiseled_quartz_block>);
<tag:items:amc-value:200>.add(<item:minecraft:smooth_quartz>);
<tag:items:amc-value:200>.add(<item:minecraft:quartz_bricks>);
<tag:items:amc-value:200>.add(<item:minecraft:quartz_block>);
<tag:items:amc-value:200>.add(<item:minecraft:quartz_pillar>);

<tag:items:amc-value:200>.add(<item:minecraft:chorus_fruit>);
<tag:items:amc-value:200>.add(<item:minecraft:chorus_flower>);
<tag:items:amc-value:200>.add(<item:minecraft:popped_chorus_fruit>);
<tag:items:amc-value:200>.add(<item:minecraft:purpur_block>);
<tag:items:amc-value:200>.add(<item:minecraft:purpur_pillar>);

<tag:items:amc-value:210>.add(<item:minecraft:dark_prismarine>);

<tag:items:amc-value:215>.add(<item:extendedcrafting:frame>);
<tag:items:amc-value:215>.add(<item:minecraft:map>);

<tag:items:amc-value:225>.add(<item:minecraft:prismarine_bricks>);
<tag:items:amc-value:225>.add(<item:minecraft:iron_block>);

<tag:items:amc-value:235>.add(<item:minecraft:clock>);

<tag:items:amc-value:291>.add(<item:enderstorage:ender_pouch>);

// 250 AMC [End]
val disc = <tag:items:minecraft:music_discs>;
val amc250 = <tag:items:amc-value:250>;

for item in disc.elements {
   amc250.add(disc);
}
<tag:items:amc-value:250>.add(<item:minecraft:damaged_anvil>);
<tag:items:amc-value:250>.add(<item:heartcanisters:cut_diamond>);
<tag:items:amc-value:250>.add(<item:minecraft:hopper_minecart>); // Should be 255
<tag:items:amc-value:250>.add(<item:heartcanisters:heart>);

print("3-above_average_amc.zs loaded");