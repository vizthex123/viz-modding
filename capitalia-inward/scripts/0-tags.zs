# Adds tags to various items

import crafttweaker.api.tag.MCTag;

print("0-tags.zs loading...");
/*
<tag>.add(<item>);
<tag>.remove(<item>);
*/


# Books (recipes)
<tag:items:cie:book>.add(<item:minecraft:book>);
<tag:items:cie:book>.add(<item:minecraft:writable_book>);
<tag:items:cie:book>.add(<item:minecraft:written_book>);
<tag:items:cie:book>.add(<item:minecraft:enchanted_book>);
<tag:items:cie:book>.add(<item:patchouli:guide_book>);
<tag:items:cie:book>.add(<item:quark:ancient_tome>);


# Create Deco coins (recipes)
<tag:items:cie:coin>.add(<item:createdeco:copper_coinstack>);
<tag:items:cie:coin>.add(<item:createdeco:zinc_coinstack>);
<tag:items:cie:coin>.add(<item:createdeco:brass_coinstack>);
<tag:items:cie:coin>.add(<item:createdeco:iron_coinstack>);
<tag:items:cie:coin>.add(<item:createdeco:gold_coinstack>);
<tag:items:cie:coin>.add(<item:createdeco:netherite_coinstack>);
<tag:items:cie:coin>.add(<item:createdeco:cast_iron_coinstack>);


# Ropes (recipes)
<tag:items:cie:rope>.add(<item:quark:rope>);
<tag:items:cie:rope>.add(<item:additionaladditions:rope>);


# Music Discs
<tag:items:minecraft:music_discs>.add(<item:biomemakeover:button_mushrooms_music_disk>);
<tag:items:minecraft:music_discs>.add(<item:biomemakeover:ghost_town_music_disk>);
<tag:items:minecraft:music_discs>.add(<item:biomemakeover:swamp_jives_music_disk>);
<tag:items:minecraft:music_discs>.add(<item:biomemakeover:red_rose_music_disk>);
<tag:items:minecraft:music_discs>.add(<item:bygonenether:wither_waltz_music_disc>);


# Furnaces (quest + recipes)
<tag:items:cie:furnace>.add(<item:minecraft:furnace>);
<tag:items:cie:furnace>.add(<item:quark:blackstone_furnace>);
<tag:items:cie:furnace>.add(<item:quark:deepslate_furnace>);


# Sleepers (train track recipe)
<tag:items:create:sleepers>.add(<item:minecraft:polished_andesite_slab>);
<tag:items:create:sleepers>.add(<item:create:cut_andesite_slab>);
<tag:items:create:sleepers>.add(<item:create:polished_cut_andesite_slab>);
<tag:items:create:sleepers>.add(<item:nourished_nether:smooth_basalt_slab>);
<tag:items:create:sleepers>.add(<item:create:cut_tuff_slab>);
<tag:items:create:sleepers>.add(<item:quark:polished_tuff_slab>);
<tag:items:create:sleepers>.add(<item:quark:tuff_slab>);


// Planks (chest recipe)
<tag:items:cie:planks>.add(<item:byg:aspen_planks>);
<tag:items:cie:planks>.add(<item:byg:baobab_planks>);
<tag:items:cie:planks>.add(<item:byg:blue_enchanted_planks>);
<tag:items:cie:planks>.add(<item:byg:bulbis_planks>);
<tag:items:cie:planks>.add(<item:byg:cherry_planks>);
<tag:items:cie:planks>.add(<item:byg:cika_planks>);
<tag:items:cie:planks>.add(<item:byg:cypress_planks>);
<tag:items:cie:planks>.add(<item:byg:ebony_planks>);
<tag:items:cie:planks>.add(<item:byg:fir_planks>);
<tag:items:cie:planks>.add(<item:byg:green_enchanted_planks>);
<tag:items:cie:planks>.add(<item:byg:holly_planks>);
<tag:items:cie:planks>.add(<item:byg:imparius_planks>);
<tag:items:cie:planks>.add(<item:byg:jacaranda_planks>);
<tag:items:cie:planks>.add(<item:byg:lament_planks>);
<tag:items:cie:planks>.add(<item:byg:mahogany_planks>);
<tag:items:cie:planks>.add(<item:byg:maple_planks>);
<tag:items:cie:planks>.add(<item:byg:nightshade_planks>);
<tag:items:cie:planks>.add(<item:byg:palm_planks>);
<tag:items:cie:planks>.add(<item:byg:pine_planks>);
<tag:items:cie:planks>.add(<item:byg:rainbow_eucalyptus_planks>);
<tag:items:cie:planks>.add(<item:byg:redwood_planks>);
<tag:items:cie:planks>.add(<item:byg:skyris_planks>);
<tag:items:cie:planks>.add(<item:byg:willow_planks>);
<tag:items:cie:planks>.add(<item:byg:witch_hazel_planks>);
<tag:items:cie:planks>.add(<item:byg:zelkova_planks>);
<tag:items:cie:planks>.add(<item:byg:sythian_planks>);
<tag:items:cie:planks>.add(<item:byg:embur_planks>);

# Misc
<tag:items:forge:workbench>.add(<item:minecraft:crafting_table>);



/*
<tag:items:randomium:whitelist>.add(<item>);
mods are blacklisted in the config
*/

# Whitelisted Randomium drops
<tag:items:randomium:whitelist>.add(<item:minecraft:raw_copper>);
<tag:items:randomium:whitelist>.add(<item:minecraft:raw_iron>);
<tag:items:randomium:whitelist>.add(<item:minecraft:raw_gold>);
<tag:items:randomium:whitelist>.add(<item:bluepower:silver_raw>);
<tag:items:randomium:whitelist>.add(<item:bluepower:zinc_raw>);
<tag:items:randomium:whitelist>.add(<item:bluepower:tungsten_raw>);
<tag:items:randomium:whitelist>.add(<item:byg:raw_pendorite>);
<tag:items:randomium:whitelist>.add(<item:create:raw_zinc>);
<tag:items:randomium:whitelist>.add(<item:createoreexcavation:raw_redstone>);
<tag:items:randomium:whitelist>.add(<item:createoreexcavation:raw_emerald>);
<tag:items:randomium:whitelist>.add(<item:createoreexcavation:raw_diamond>);
<tag:items:randomium:whitelist>.add(<item:powah:uraninite_raw>);

<tag:items:randomium:whitelist>.add(<item:minecraft:redstone>);
<tag:items:randomium:whitelist>.add(<item:minecraft:emerald>);
<tag:items:randomium:whitelist>.add(<item:minecraft:diamond>);
<tag:items:randomium:whitelist>.add(<item:minecraft:lapis_lazuli>);
<tag:items:randomium:whitelist>.add(<item:minecraft:amethyst_shard>);
<tag:items:randomium:whitelist>.add(<item:ae2:certus_quartz_dust>);
<tag:items:randomium:whitelist>.add(<item:ae2:certus_quartz_crystal>);
<tag:items:randomium:whitelist>.add(<item:bluepower:amethyst_gem>);
<tag:items:randomium:whitelist>.add(<item:bluepower:sapphire_gem>);
<tag:items:randomium:whitelist>.add(<item:bluepower:green_sapphire_gem>);
<tag:items:randomium:whitelist>.add(<item:bluepower:ruby_gem>);

<tag:items:randomium:whitelist>.add(<item:lightmanscurrency:coin_copper>);
<tag:items:randomium:whitelist>.add(<item:lightmanscurrency:coinpile_copper>);
<tag:items:randomium:whitelist>.add(<item:lightmanscurrency:coinblock_copper>);
<tag:items:randomium:whitelist>.add(<item:lightmanscurrency:coin_iron>);
<tag:items:randomium:whitelist>.add(<item:lightmanscurrency:coinpile_iron>);
<tag:items:randomium:whitelist>.add(<item:lightmanscurrency:coin_gold>);
<tag:items:randomium:whitelist>.add(<item:lightmanscurrency:coin_emerald>);

print("0-tags.zs loaded");