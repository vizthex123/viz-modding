# Adds tags to various items
#priority 100

import crafttweaker.api.tag.MCTag;

print("0-tags.zs loading...");
/*
<tag>.add(<item>);
<tag>.remove(<item>);
*/


# Hazmat Suit
# Protects you from New Age reactors
val suit = <tag:items:create_new_age:nuclear/hazmat_suit>;

suit.add(<item:biomemakeover:cladded_helmet>);
suit.add(<item:biomemakeover:cladded_chestplate>);
suit.add(<item:biomemakeover:cladded_leggings>);
suit.add(<item:biomemakeover:cladded_boots>);

suit.add(<item:deep_dark_regrowth:ancient_helmet>);
suit.add(<item:deep_dark_regrowth:ancient_chestplate>);
suit.add(<item:deep_dark_regrowth:ancient_leggings>);
suit.add(<item:deep_dark_regrowth:ancient_boots>);

suit.add(<item:enlightened_end:adamantite_armor_helmet>);
suit.add(<item:enlightened_end:adamantite_armor_chestplate>);
suit.add(<item:enlightened_end:adamantite_armor_leggings>);
suit.add(<item:enlightened_end:adamantite_armor_boots>);


suit.remove(<item:minecraft:leather_helmet>);
suit.remove(<item:minecraft:leather_chestplate>);
suit.remove(<item:minecraft:leather_leggings>);
suit.remove(<item:minecraft:leather_boots>);
suit.remove(<item:create:goggles>);


# Fibrous Foiliage (recipe)
val fiber = <tag:items:cie:fibrous_foiliage>;

fiber.add(<item:minecraft:beetroot>);
fiber.add(<item:minecraft:chorus_fruit>);
fiber.add(<item:minecraft:glow_berries>);
fiber.add(<item:minecraft:sugar_cane>);
fiber.add(<item:food_enhancements:pumpkin_slice>);



# Mushrooms
val mushroom = <tag:items:forge:mushrooms>;

mushroom.add(<item:biomemakeover:purple_glowshroom>);
mushroom.add(<item:biomemakeover:green_glowshroom>);
mushroom.add(<item:biomemakeover:orange_glowshroom>);
mushroom.add(<item:deep_dark_regrowth:short_infected_mushroom>);
mushroom.add(<item:deep_dark_regrowth:infected_mushroom>);
mushroom.add(<item:deep_dark_regrowth:large_infected_mushroom>);
mushroom.add(<item:food_enhancements:cooked_mushroom>);
mushroom.add(<item:quark:glow_shroom>);
mushroom.add(<item:quark:glow_shroom_ring>);


# Fermentable
// Used to make Ethanol
val ethanol = <tag:items:forge:fermentable>;

ethanol.add(<tag:items:forge:crops>);
ethanol.add(<item:minecraft:glow_berries>);
ethanol.add(<item:minecraft:sweet_berries>);
ethanol.add(<item:food_enhancements:green_apple>);


# Binding & paper (recipes)
val binding = <tag:items:cie:binding>;
val paper = <tag:items:cie:paper>;

binding.add(<item:minecraft:rabbit_hide>);
binding.add(<item:minecraft:leather>);
binding.add(<item:nourished_nether:hoglin_hide>);
binding.add(<item:quark:ravager_hide>);
binding.add(<item:kubejs:sheepskin>);
binding.add(<item:kubejs:pig_hide>);

paper.add(<item:minecraft:paper>);
paper.add(<item:kubejs:parchment>);


# Ores
# Damn mod devs can't add standard tags themselves >:{

<tag:items:forge:ores>.add(<item:create_new_age:thorium_ore>);
<tag:items:forge:ores/thorium>.add(<item:create_new_age:thorium_ore>);
<tag:items:forge:raw_materials/thorium>.add(<item:create_new_age:thorium>);

<tag:items:forge:ores>.add(<item:deep_dark_regrowth:enlightened_deepslate>);
<tag:items:forge:ores/etherium>.add(<item:deep_dark_regrowth:enlightened_deepslate>);

<tag:items:forge:ores>.add(<item:enlightened_end:malachite_ore>);
<tag:items:forge:ores/malachite>.add(<item:enlightened_end:malachite_ore>);

<tag:items:forge:ores>.add(<item:enlightened_end:irradium_ore>);
<tag:items:forge:ores/irradium>.add(<item:enlightened_end:irradium_ore>);

<tag:items:forge:ores>.add(<item:enlightened_end:bismuth_ore>);
<tag:items:forge:ores/bismuth>.add(<item:enlightened_end:bismuth_ore>);


# Corundum (item value)
val corundum = <tag:items:cie:corundum>;

corundum.add(<item:quark:red_corundum_cluster>);
corundum.add(<item:quark:orange_corundum_cluster>);
corundum.add(<item:quark:yellow_corundum_cluster>);
corundum.add(<item:quark:green_corundum_cluster>);
corundum.add(<item:quark:blue_corundum_cluster>);
corundum.add(<item:quark:indigo_corundum_cluster>);
corundum.add(<item:quark:violet_corundum_cluster>);
corundum.add(<item:quark:white_corundum_cluster>);
corundum.add(<item:quark:black_corundum_cluster>);


# Stones
<tag:items:forge:cobblestone>.add(<item:bluepower:basalt_cobble>);
<tag:items:quark:stone_tool_materials>.add(<item:bluepower:basalt_cobble>);


# Create Deco coins (recipes)
val coin = <tag:items:cie:coin>;

coin.add(<item:createdeco:copper_coinstack>);
coin.add(<item:createdeco:zinc_coinstack>);
coin.add(<item:createdeco:brass_coinstack>);
coin.add(<item:createdeco:iron_coinstack>);
coin.add(<item:createdeco:gold_coinstack>);
coin.add(<item:createdeco:netherite_coinstack>);
coin.add(<item:createdeco:cast_iron_coinstack>);


# Ingots
# Mostly show they show up in JEI search
<tag:items:forge:ingots/tungsten_carbide>.add(<item:bluepower:tungsten_ingot>);
<tag:items:forge:ingots/red_alloy>.add(<item:bluepower:red_alloy_ingot>);
<tag:items:forge:ingots/blue_alloy>.add(<item:bluepower:blue_alloy_ingot>);
<tag:items:forge:ingots/purple_alloy>.add(<item:bluepower:purple_alloy_ingot>);
<tag:items:forge:ingots/netherite_scrap>.add(<item:bygonenether:netherite_scrap_ingot>);
<tag:items:forge:ingots/necronium>.add(<item:nourished_nether:necronium_ingot>);
<tag:items:forge:ingots/soul_steel>.add(<item:spirit:soul_steel_ingot>);


# Obsidian (recipes)
<tag:items:cie:obsidian>.add(<item:minecraft:obsidian>);
<tag:items:cie:obsidian>.add(<item:minecraft:crying_obsidian>);
<tag:items:cie:obsidian>.add( <item:create:powdered_obsidian>);


# Netherite Scrap (recipes)
<tag:items:cie:netherite_scrap>.add(<item:minecraft:netherite_scrap>);
<tag:items:cie:netherite_scrap>.add(<item:bygonenether:netherite_scrap_ingot>);


# Ropes (recipes)
<tag:items:cie:rope>.add(<item:quark:rope>);
<tag:items:cie:rope>.add(<item:additionaladditions:rope>);


# Pickaxes (quest)
val pickaxe = <tag:items:cie:iron_pickaxe>;

pickaxe.add(<item:minecraft:iron_pickaxe>);
pickaxe.add(<item:bluepower:ruby_pickaxe>);
pickaxe.add(<item:bluepower:sapphire_pickaxe>);
pickaxe.add(<item:bluepower:green_sapphire_pickaxe>);
pickaxe.add(<item:bluepower:amethyst_pickaxe>);
pickaxe.add(<item:bluepower:tungcarb_pickaxe>);


# Axes (recipe)
val axe = <tag:items:forge:tools/axes>;

axe.add(<tag:items:ae2:quartz_axe>);
axe.add(<item:ae2:fluix_axe>);
axe.add(<item:additionaladditions:rose_gold_axe>);
axe.add(<item:additionaladditions:gilded_netherite_axe>);
axe.add(<item:bluepower:ruby_axe>);
axe.add(<item:bluepower:sapphire_axe>);
axe.add(<item:bluepower:green_sapphire_axe>);
axe.add(<item:bluepower:amethyst_axe>);
axe.add(<item:bluepower:tungcarb_axe>);
axe.add(<item:bluepower:tungcarb_axe>);
axe.add(<item:enlightened_end:starsteel_axe>);
axe.add(<item:enlightened_end:tenebrium_axe>);
axe.add(<item:enlightened_end:adamantite_axe>);
axe.add(<item:nourished_nether:necronium_axe>);
axe.add(<item:spirit:soul_steel_axe>);


# Music Discs
val music_disc = <tag:items:minecraft:music_discs>;

music_disc.add(<item:upgrade_aquatic:music_disc_atlantis>);
music_disc.add(<item:biomemakeover:button_mushrooms_music_disk>);
music_disc.add(<item:biomemakeover:ghost_town_music_disk>);
music_disc.add(<item:biomemakeover:swamp_jives_music_disk>);
music_disc.add(<item:biomemakeover:red_rose_music_disk>);
music_disc.add(<item:deep_dark_regrowth:cerebrawl>);


# Furnaces (quest + recipes)
<tag:items:cie:furnace>.add(<item:minecraft:furnace>);
<tag:items:cie:furnace>.add(<item:quark:blackstone_furnace>);
<tag:items:cie:furnace>.add(<item:quark:deepslate_furnace>);


# Sleepers (train track recipe)
val sleeper = <tag:items:create:sleepers>;

sleeper.add(<item:minecraft:polished_andesite_slab>);
sleeper.add(<item:create:cut_andesite_slab>);
sleeper.add(<item:create:polished_cut_andesite_slab>);
sleeper.add(<item:create:cut_tuff_slab>);
sleeper.add(<item:nourished_nether:smooth_basalt_slab>);
sleeper.add(<item:quark:polished_tuff_slab>);
sleeper.add(<item:quark:tuff_slab>);


# Misc
<tag:items:create:stone_types/limestone>.add(<item:quark:limestone>);
<tag:items:forge:limestone>.add(<item:create:limestone>);
<tag:items:forge:limestone>.add(<item:quark:limestone>);

<tag:items:forge:ender_pearls>.add(<item:bygonenether:warped_ender_pearl>);
<tag:items:forge:plates/zinc>.add(<item:bluepower:zincplate>);

print("0-tags.zs loaded");