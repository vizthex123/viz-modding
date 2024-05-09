# Adds medium value (26 - 99) AMC tags to various items. Loads before everything else.
#priority 20

import crafttweaker.api.tag.MCTag;

print("2-average_amc.zs loading...");

/*
<tag:items:amc-value:>.add(<item:>);

Average is 26 - 99 AMC
*/

// 20's AMC
<tag:items:amc-value:26>.add(<item:minecraft:soul_lantern>); // Should be 26.216
<tag:items:amc-value:26>.add(<item:minecraft:spectral_arrow>); // Should be 26.75

<tag:items:amc-value:28>.add(<item:minecraft:stonecutter>);


// 30's AMC
<tag:items:amc-value:30>.add(<item:minecraft:spider_eye>);

<tag:items:amc-value:30>.add(<item:minecraft:cod>);
<tag:items:amc-value:30>.add(<item:minecraft:salmon>);
<tag:items:amc-value:30>.add(<item:minecraft:pufferfish>);
<tag:items:amc-value:30>.add(<item:minecraft:tropical_fish>);
<tag:items:amc-value:30>.add(<item:minecraft:cooked_salmon>);
<tag:items:amc-value:30>.add(<item:minecraft:cooked_cod>);

<tag:items:amc-value:30>.add(<item:minecraft:chain>); // Should be 30.554

<tag:items:amc-value:30>.add(<item:minecraft:detector_rail>); // Should be 31.166 etc.
<tag:items:amc-value:30>.add(<item:minecraft:activator_rail>); // Should be 30.958 etc

<tag:items:amc-value:30>.add(<item:minecraft:trapped_chest>); //Should be 38.25
<tag:items:amc-value:30>.add(<item:minecraft:tripwire_hook>); //Should be 30.25
<tag:items:amc-value:30>.add(<item:minecraft:beehive>); //Should be 32.5
<tag:items:amc-value:30>.add(<item:minecraft:rabbit_hide>);
<tag:items:amc-value:30>.add(<item:minecraft:flint_and_steel>);
<tag:items:amc-value:30>.add(<item:minecraft:redstone_ore>);

<tag:items:amc-value:30>.add(<item:minecraft:fire_charge>); // Should be 32.333

<tag:items:amc-value:35>.add(<item:minecraft:cooked_rabbit>);
<tag:items:amc-value:35>.add(<item:minecraft:rabbit>);

<tag:items:amc-value:35>.add(<item:minecraft:redstone>);
<tag:items:amc-value:35>.add(<item:minecraft:gunpowder>);
<tag:items:amc-value:35>.add(<item:minecraft:redstone_torch>); // Should be 35.25

<tag:items:amc-value:36>.add(<item:minecraft:red_nether_brick_stairs>);
<tag:items:amc-value:36>.add(<item:minecraft:bone_block>);



// 40's AMC
<tag:items:amc-value:40>.add(<item:minecraft:honeycomb_block>);
<tag:items:amc-value:40>.add(<item:trashcans:energy_trash_can>); // Should be 41.5
<tag:items:amc-value:40>.add(<item:minecraft:dropper>); // Should be 38.5

<tag:items:amc-value:45>.add(<item:minecraft:fermented_spider_eye>); // Should be like 46-ish(?)
<tag:items:amc-value:45>.add(<item:minecraft:glistering_melon_slice>); // Should be 46.44
<tag:items:amc-value:45>.add(<item:minecraft:experience_bottle>);
<tag:items:amc-value:45>.add(<item:minecraft:pumpkin_pie>); // Should be 47
<tag:items:amc-value:45>.add(<item:extendedcrafting:luminessence>); // Should be 47.5


// 50's AMC
val bed = <tag:items:minecraft:beds>;
val amc50 = <tag:items:amc-value:50>;
// Beds should be like 53-ish

for item in bed.elements {
   amc50.add(bed);
}

<tag:items:amc-value:50>.add(<item:minecraft:heavy_weighted_pressure_plate>);
<tag:items:amc-value:50>.add(<item:minecraft:iron_door>);

<tag:items:amc-value:50>.add(<item:minecraft:name_tag>);
<tag:items:amc-value:50>.add(<item:minecraft:glowstone>);
<tag:items:amc-value:50>.add(<item:rftoolsbase:dimensionalshard>);

<tag:items:amc-value:50>.add(<item:minecraft:prismarine_slab>);
<tag:items:amc-value:50>.add(<item:minecraft:prismarine_crystals>);

<tag:items:amc-value:50>.add(<item:minecraft:rabbit_foot>);

<tag:items:amc-value:50>.add(<item:minecraft:gold_ore>);
<tag:items:amc-value:50>.add(<item:minecraft:gold_ingot>);
<tag:items:amc-value:50>.add(<item:minecraft:magma_block>);
<tag:items:amc-value:50>.add(<item:minecraft:nether_quartz_ore>);
<tag:items:amc-value:50>.add(<item:minecraft:quartz>);

<tag:items:amc-value:50>.add(<item:minecraft:note_block>);

<tag:items:amc-value:50>.add(<item:minecraft:zombie_head>);
<tag:items:amc-value:50>.add(<item:minecraft:skeleton_skull>);
<tag:items:amc-value:50>.add(<item:minecraft:blaze_powder>);
<tag:items:amc-value:50>.add(<item:mowziesmobs:glowing_jelly>);
<tag:items:amc-value:50>.add(<item:minecraft:slime_ball>);

<tag:items:amc-value:50>.add(<item:minecraft:cocoa_beans>);
<tag:items:amc-value:50>.add(<item:minecraft:brown_dye>);
<tag:items:amc-value:50>.add(<item:minecraft:golden_carrot>); // Should be 50.44

<tag:items:amc-value:54>.add(<item:minecraft:hay_block>);
<tag:items:amc-value:55>.add(<item:minecraft:powered_rail>);
<tag:items:amc-value:55>.add(<item:minecraft:book>);
<tag:items:amc-value:55>.add(<item:ftbquests:book>); // Should be 56




// 60's AMC
<tag:items:amc-value:65>.add(<item:minecraft:smithing_table>);
<tag:items:amc-value:65>.add(<item:minecraft:crossbow>); // Should be 63.75



// 70's AMC
<tag:items:amc-value:72>.add(<item:minecraft:dispenser>);

<tag:items:amc-value:75>.add(<item:minecraft:bucket>);
<tag:items:amc-value:75>.add(<item:minecraft:lava_bucket>);
<tag:items:amc-value:75>.add(<item:minecraft:water_bucket>);

<tag:items:amc-value:75>.add(<item:minecraft:end_rod>);
<tag:items:amc-value:75>.add(<item:minecraft:shulker_shell>);
<tag:items:amc-value:75>.add(<item:minecraft:creeper_head>);
<tag:items:amc-value:75>.add(<item:minecraft:writable_book>);

<tag:items:amc-value:75>.add(<item:trashcans:liquid_trash_can>); // Should be 78


// 80's AMC
<tag:items:amc-value:80>.add(<item:craftingautomat:autocrafter>); // Should be like, 79. But nah. Let's hope no one exploits it lol.
<tag:items:amc-value:80>.add(<item:minecraft:piston>); // Should be like, 79. But nah. Let's hope no one exploits it lol.

<tag:items:amc-value:85>.add(<item:minecraft:creeper_banner_pattern>);


// 90's AMC [End]
<tag:items:amc-value:90>.add(<item:minecraft:nether_wart_block>);
<tag:items:amc-value:90>.add(<item:minecraft:dried_kelp_block>);
<tag:items:amc-value:90>.add(<item:minecraft:lapis_block>);

val banner = <tag:items:minecraft:banners>;
val amc96 = <tag:items:amc-value:96.25>;

for item in banner.elements {
   amc96.add(banner);
}

print("2-average_amc.zs loaded");