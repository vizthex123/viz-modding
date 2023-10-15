# Adds tags to various items
#priority 100

import crafttweaker.api.tag.MCTag;

print("0-tags.zs loading...");
/*
<tag>.add(<item>);
<tag>.remove(<item>);
*/

# Change the mining levels of various ores
<tag:blocks:minecraft:needs_iron_tool>.remove(<block:create:zinc_ore>);
<tag:blocks:minecraft:needs_iron_tool>.remove(<block:create:deepslate_zinc_ore>);

<tag:blocks:minecraft:needs_stone_tool>.add(<block:create:zinc_ore>);
<tag:blocks:minecraft:needs_stone_tool>.add(<block:create:deepslate_zinc_ore>);

<tag:blocks:minecraft:needs_iron_tool>.add(<block:bluepower:silver_ore>);
<tag:blocks:minecraft:needs_iron_tool>.add(<block:bluepower:silver_deepslate>);

<tag:blocks:minecraft:needs_iron_tool>.add(<block:bluepower:tungsten_ore>);
<tag:blocks:minecraft:needs_iron_tool>.add(<block:bluepower:tungsten_deepslate>);

<tag:blocks:minecraft:needs_iron_tool>.add(<block:bluepower:ruby_ore>);
<tag:blocks:minecraft:needs_iron_tool>.add(<block:bluepower:sapphire_ore>);
<tag:blocks:minecraft:needs_iron_tool>.add(<block:bluepower:green_sapphire_ore>);
<tag:blocks:minecraft:needs_iron_tool>.add(<block:bluepower:amethyst_ore>);

<tag:blocks:minecraft:needs_iron_tool>.add(<block:bluepower:ruby_deepslate>);
<tag:blocks:minecraft:needs_iron_tool>.add(<block:bluepower:sapphire_deepslate>);
<tag:blocks:minecraft:needs_iron_tool>.add(<block:bluepower:green_sapphire_deepslate>);
<tag:blocks:minecraft:needs_iron_tool>.add(<block:bluepower:amethyst_deepslate>);

<tag:blocks:minecraft:needs_diamond_tool>.add(<block:enlightened_end:bismuth_ore>);
<tag:blocks:minecraft:needs_diamond_tool>.add(<block:enlightened_end:irradium_ore>);
<tag:blocks:minecraft:needs_diamond_tool>.add(<block:enlightened_end:malachite_ore>);

# <tag:blocks:minecraft:needs_netherite_tool>.add(<block:deep_dark_regrowth:enlightened_deepslate>);


# Swords (quest)
<tag:items:cie:sword>.add(<item:minecraft:wooden_sword>);
<tag:items:cie:sword>.add(<item:minecraft:stone_sword>);
<tag:items:cie:sword>.add(<item:minecraft:iron_sword>);


# Drawers (quest)
val drawer = <tag:items:functionalstorage:drawer>;

drawer.add(<item:functionalstorage:quark_ancient_1>);
drawer.add(<item:functionalstorage:quark_ancient_2>);
drawer.add(<item:functionalstorage:quark_ancient_4>);
drawer.add(<item:functionalstorage:quark_azalea_1>);
drawer.add(<item:functionalstorage:quark_azalea_2>);
drawer.add(<item:functionalstorage:quark_azalea_4>);
drawer.add(<item:functionalstorage:quark_blossom_1>);
drawer.add(<item:functionalstorage:quark_blossom_2>);
drawer.add(<item:functionalstorage:quark_blossom_4>);

drawer.add(<item:functionalstorage:biomemakeover_ancient_oak_1>);
drawer.add(<item:functionalstorage:biomemakeover_ancient_oak_2>);
drawer.add(<item:functionalstorage:biomemakeover_ancient_oak_4>);
drawer.add(<item:functionalstorage:biomemakeover_blighted_balsa_1>);
drawer.add(<item:functionalstorage:biomemakeover_blighted_balsa_2>);
drawer.add(<item:functionalstorage:biomemakeover_blighted_balsa_4>);
drawer.add(<item:functionalstorage:biomemakeover_swamp_cypress_1>);
drawer.add(<item:functionalstorage:biomemakeover_swamp_cypress_2>);
drawer.add(<item:functionalstorage:biomemakeover_swamp_cypress_4>);
drawer.add(<item:functionalstorage:biomemakeover_willow_1>);
drawer.add(<item:functionalstorage:biomemakeover_willow_2>);
drawer.add(<item:functionalstorage:biomemakeover_willow_4>);


# Concrete (recipe)
val concrete = <tag:items:minecraft:concrete>;

concrete.add(<item:minecraft:white_concrete>);
concrete.add(<item:minecraft:orange_concrete>);
concrete.add(<item:minecraft:magenta_concrete>);
concrete.add(<item:minecraft:light_blue_concrete>);
concrete.add(<item:minecraft:yellow_concrete>);
concrete.add(<item:minecraft:lime_concrete>);
concrete.add(<item:minecraft:pink_concrete>);
concrete.add(<item:minecraft:gray_concrete>);
concrete.add(<item:minecraft:light_gray_concrete>);
concrete.add(<item:minecraft:cyan_concrete>);
concrete.add(<item:minecraft:purple_concrete>);
concrete.add(<item:minecraft:blue_concrete>);
concrete.add(<item:minecraft:brown_concrete>);
concrete.add(<item:minecraft:green_concrete>);
concrete.add(<item:minecraft:red_concrete>);
concrete.add(<item:minecraft:black_concrete>);


# Glazed Terracotta (recipe)
val terracotta = <tag:items:minecraft:glazed_terracotta>;

terracotta.add(<item:minecraft:white_glazed_terracotta>);
terracotta.add(<item:minecraft:orange_glazed_terracotta>);
terracotta.add(<item:minecraft:magenta_glazed_terracotta>);
terracotta.add(<item:minecraft:light_blue_glazed_terracotta>);
terracotta.add(<item:minecraft:yellow_glazed_terracotta>);
terracotta.add(<item:minecraft:lime_glazed_terracotta>);
terracotta.add(<item:minecraft:pink_glazed_terracotta>);
terracotta.add(<item:minecraft:gray_glazed_terracotta>);
terracotta.add(<item:minecraft:light_gray_glazed_terracotta>);
terracotta.add(<item:minecraft:cyan_glazed_terracotta>);
terracotta.add(<item:minecraft:purple_glazed_terracotta>);
terracotta.add(<item:minecraft:blue_glazed_terracotta>);
terracotta.add(<item:minecraft:brown_glazed_terracotta>);
terracotta.add(<item:minecraft:green_glazed_terracotta>);
terracotta.add(<item:minecraft:red_glazed_terracotta>);
terracotta.add(<item:minecraft:black_glazed_terracotta>);



# Ectoplasm
# Used to make Ectoplasm Blocks and Polterpork
# Also adds the Slimeballs OreDict entry to them
<tag:items:cie:ectoplasm>.add(<item:biomemakeover:ectoplasm>);
<tag:items:cie:ectoplasm>.add(<item:nourished_nether:ectoplasm>);

<tag:items:forge:slimeballs>.add(<item:biomemakeover:ectoplasm>);
<tag:items:forge:slimeballs>.add(<item:nourished_nether:ectoplasm>);



# Freeze-Immune Wearables
# Protects you from Powdered Snow
val freeze = <tag:items:minecraft:freeze_immune_wearables>;

freeze.add(<item:aquamirae:abyssal_boots>);
freeze.add(<item:aquamirae:three_bolt_boots>);
freeze.add(<item:biomemakeover:cladded_boots>);
freeze.add(<item:create:copper_diving_boots>);



# Hazmat Suit
# Protects you from New Age reactors
val suit = <tag:items:create_new_age:nuclear/hazmat_suit>;

suit.add(<item:aquamirae:abyssal_tiara>);
suit.add(<item:aquamirae:abyssal_heaume>);
suit.add(<item:aquamirae:abyssal_brigantine>);
suit.add(<item:aquamirae:abyssal_leggings>);
suit.add(<item:aquamirae:abyssal_boots>);

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


# Fish Fillet tag
val fillet = <tag:items:food_enhancements:raw_fish>;

fillet.add(<item:minecraft:tropical_fish>);
fillet.add(<item:aquamirae:spinefish>);


# Tall Flowers
// Used to make Ethanol
val tall = <tag:items:cie:tall_flowers>;

tall.add(<item:minecraft:lilac>);
tall.add(<item:minecraft:rose_bush>);
tall.add(<item:minecraft:peony>);
tall.add(<item:biomemakeover:swamp_azalea>);
tall.add(<item:biomemakeover:marigold>);
tall.add(<item:upgrade_aquatic:flowering_rush>);


# Fibrous Foiliage
// Used to make Fibers
val fiber = <tag:items:cie:fibrous_foiliage>;

fiber.add(<item:minecraft:apple>);
fiber.add(<item:minecraft:beetroot>);
fiber.add(<item:minecraft:chorus_fruit>);
fiber.add(<item:minecraft:glow_berries>);
fiber.add(<item:minecraft:potato>);
fiber.add(<item:minecraft:poisonous_potato>);
fiber.add(<item:minecraft:sugar_cane>);
fiber.add(<item:minecraft:sweet_berries>);
fiber.add(<item:food_enhancements:green_apple>);
fiber.add(<item:food_enhancements:pumpkin_slice>);
fiber.add(<item:enlightened_end:elevibloom>);
fiber.add(<item:enlightened_end:frost_fruit>);
fiber.add(<item:enlightened_end:glow_gourd_slice>);


# Fermentable
// Used to make Ethanol
val ethanol = <tag:items:forge:fermentable>;

ethanol.add(<tag:items:forge:crops>);
ethanol.add(<item:minecraft:glow_berries>);
ethanol.add(<item:minecraft:sweet_berries>);
ethanol.add(<item:minecraft:chorus_fruit>);
ethanol.add(<item:minecraft:crimson_roots>);
ethanol.add(<item:minecraft:warped_roots>);
ethanol.add(<item:minecraft:crimson_fungus>);
ethanol.add(<item:minecraft:warped_fungus>);
ethanol.add(<item:minecraft:weeping_vines>);
ethanol.add(<item:minecraft:twisting_vines>);
ethanol.add(<item:minecraft:shroomlight>);
ethanol.add(<item:biomemakeover:bulbus_root>);
ethanol.add(<item:biomemakeover:mycelium_roots>);
ethanol.add(<item:food_enhancements:green_apple>);
ethanol.add(<item:enlightened_end:indigo_roots>);
ethanol.add(<item:enlightened_end:closed_odd_roots>);
ethanol.add(<item:enlightened_end:open_odd_roots>);
ethanol.add(<item:enlightened_end:cerulean_vine>);
ethanol.add(<item:enlightened_end:elevibloom>);
ethanol.add(<item:enlightened_end:frost_fruit>);
ethanol.add(<item:enlightened_end:glow_gourd_slice>);
ethanol.add(<item:nourished_nether:ash_lump>);
ethanol.add(<item:nourished_nether:soul_weeds>);
ethanol.add(<item:quark:chorus_weeds>);
ethanol.add(<item:quark:chorus_twist>);
ethanol.add(<item:upgrade_aquatic:blue_pickerelweed>);
ethanol.add(<item:upgrade_aquatic:purple_pickerelweed>);


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
mushroom.add(<item:silverbirch:shelf_fungus>);


# Binding & paper (recipes)
val binding = <tag:items:cie:binding>;
val paper = <tag:items:cie:paper>;

binding.add(<item:minecraft:rabbit_hide>);
binding.add(<item:minecraft:leather>);
binding.add(<item:minecraft:phantom_membrane>);
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


# Create Deco Coinstacks (recipes)
val coin = <tag:items:cie:coin_stack>;

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


# Fences and Gates (sawdust recipe)
val fence = <tag:items:forge:fences/wooden>;
val gate = <tag:items:forge:fence_gates/wooden>;

fence.add(<item:enlightened_end:indigo_fence>);
fence.add(<item:enlightened_end:cerulean_fence>);

gate.add(<item:biomemakeover:blighted_balsa_fence_gate>);
gate.add(<item:biomemakeover:willow_fence_gate>);
gate.add(<item:biomemakeover:swamp_cypress_fence_gate>);
gate.add(<item:biomemakeover:ancient_oak_fence_gate>);

gate.add(<item:enlightened_end:indigo_fence_gate>);
gate.add(<item:enlightened_end:cerulean_fence_gate>);

gate.add(<item:silverbirch:silver_birch_fence_gate>);



# Misc
<tag:items:minecraft:saplings>.add(<item:silverbirch:silver_birch_sapling>);

<tag:items:forge:seeds>.add(<item:biomemakeover:rootling_seeds>);

<tag:items:forge:plates/zinc>.add(<item:bluepower:zincplate>);
<tag:items:forge:ender_pearls>.add(<item:bygonenether:warped_ender_pearl>);

<tag:items:forge:workbenches>.add(<item:minecraft:crafting_table>);
<tag:items:forge:workbenches>.add(<item:bluepower:project_table>);

<tag:items:create:stone_types/limestone>.add(<item:quark:limestone>);
<tag:items:forge:limestone>.add(<item:create:limestone>);
<tag:items:forge:limestone>.add(<item:quark:limestone>);

print("0-tags.zs loaded");