# Adds tags to items
#priority 9

import crafttweaker.api.tag.MCTag;

print("1-tags.zs loading...");
/*
<tag>.add(<item>);
<tag>.remove(<item>);
*/

val auction = <tag:items:lightmanscurrency:auction_stand>;

# Auction Stands (recipe)
auction.add(<item:lightmanscurrency:auction_stand_oak>);
<tag:items:lightmanscurrency:auction_stand>.add(<item:lightmanscurrency:auction_stand_spruce>);
<tag:items:lightmanscurrency:auction_stand>.add(<item:lightmanscurrency:auction_stand_birch>);
<tag:items:lightmanscurrency:auction_stand>.add(<item:lightmanscurrency:auction_stand_jungle>);
<tag:items:lightmanscurrency:auction_stand>.add(<item:lightmanscurrency:auction_stand_acacia>);
<tag:items:lightmanscurrency:auction_stand>.add(<item:lightmanscurrency:auction_stand_dark_oak>);
<tag:items:lightmanscurrency:auction_stand>.add(<item:lightmanscurrency:auction_stand_crimson>);
<tag:items:lightmanscurrency:auction_stand>.add(<item:lightmanscurrency:auction_stand_warped>);


# Dynamics duct (quest)
<tag:items:teoe:duct>.add(<item:thermal:energy_duct>);
<tag:items:teoe:duct>.add(<item:thermal:fluid_duct>);
<tag:items:teoe:duct>.add(<item:thermal:fluid_duct_windowed>);
<tag:items:teoe:fluiduct>.add(<item:thermal:fluid_duct>);
<tag:items:teoe:fluiduct>.add(<item:thermal:fluid_duct_windowed>);


# Torches (recipes)
<tag:items:teoe:torch>.add(<item:minecraft:torch>);
<tag:items:teoe:torch>.add(<item:minecraft:soul_torch>);
<tag:items:teoe:torch>.add(<item:minecraft:redstone_torch>);
<tag:items:teoe:torch>.add(<item:aquatictorches:aquatic_torch>);
<tag:items:teoe:torch>.add(<item:botania:animated_torch>);
<tag:items:teoe:torch>.add(<item:malum:blazing_torch>);
<tag:items:teoe:torch>.add(<item:malum:ether_torch>);
<tag:items:teoe:torch>.add(<item:malum:iridescent_ether_torch>);


# Wooden tools (recipe)
<tag:items:teoe:wooden_tool>.add(<item:minecraft:wooden_sword>);
<tag:items:teoe:wooden_tool>.add(<item:minecraft:wooden_pickaxe>);
<tag:items:teoe:wooden_tool>.add(<item:minecraft:wooden_shovel>);
<tag:items:teoe:wooden_tool>.add(<item:minecraft:wooden_hoe>);
<tag:items:teoe:wooden_tool>.add(<item:minecraft:wooden_axe>);


# Leather armour (recipe)
<tag:items:teoe:leather_armour>.add(<item:minecraft:leather_horse_armor>);
<tag:items:teoe:leather_armour>.add(<item:minecraft:leather_helmet>);
<tag:items:teoe:leather_armour>.add(<item:minecraft:leather_chestplate>);
<tag:items:teoe:leather_armour>.add(<item:minecraft:leather_leggings>);
<tag:items:teoe:leather_armour>.add(<item:minecraft:leather_boots>);


# Egg (recipe)
<tag:items:teoe:egg>.add(<item:minecraft:egg>);
<tag:items:teoe:egg>.add(<item:minecraft:turtle_egg>);
<tag:items:teoe:egg>.add(<item:additionaladditions:fried_egg>);
<tag:items:teoe:egg>.add(<item:quark:egg_parrot_red_blue>);
<tag:items:teoe:egg>.add(<item:quark:egg_parrot_blue>);
<tag:items:teoe:egg>.add(<item:quark:egg_parrot_green>);
<tag:items:teoe:egg>.add(<item:quark:egg_parrot_yellow_blue>);
<tag:items:teoe:egg>.add(<item:quark:egg_parrot_grey>);


# Dragon Scales (recipe)
<tag:items:teoe:dragon_scale>.add(<item:tconstruct:dragon_scale>);
<tag:items:teoe:dragon_scale>.add(<item:quark:dragon_scale>);


# Presses (recipe)
<tag:items:teoe:ae2_press>.add(<item:ae2:silicon_press>);
<tag:items:teoe:ae2_press>.add(<item:ae2:logic_processor_press>);
<tag:items:teoe:ae2_press>.add(<item:ae2:calculation_processor_press>);
<tag:items:teoe:ae2_press>.add(<item:ae2:engineering_processor_press>);



# Belts (quest)
<tag:items:teoe:belt>.add(<item:malum:belt_of_the_starved>);
<tag:items:teoe:belt>.add(<item:malum:belt_of_the_prospector>);
<tag:items:teoe:belt>.add(<item:malum:belt_of_the_magebane>);



# Tape Measures (quest)
<tag:items:teoe:tape_measure>.add(<item:measurements:tape_measure>);
<tag:items:teoe:tape_measure>.add(<item:quark:abacus>);



# Magic Dust (recipes)
<tag:items:teoe:magic_dust>.add(<item:apotheosis:gem_dust>);
<tag:items:teoe:magic_dust>.add(<item:enigmaticlegacy:astral_dust>);
<tag:items:teoe:magic_dust>.add(<item:obscure_api:astral_dust>);
<tag:items:teoe:magic_dust>.add(<item:ob_core:magic_dust>);



# Shards (recipes)
<tag:items:teoe:shard>.add(<item:minecraft:amethyst_shard>);
<tag:items:teoe:shard>.add(<item:apotheosis:rare_material>);
<tag:items:teoe:shard>.add(<item:byg:subzero_crystal_shard>);
<tag:items:teoe:shard>.add(<item:byg:therium_shard>);
<tag:items:teoe:shard>.add(<item:geode:wrappist_shard>);



# Scrolls (quest)
<tag:items:teoe:scrolls>.add(<item:waystones:warp_scroll>);
<tag:items:teoe:scrolls>.add(<item:waystones:bound_scroll>);
<tag:items:teoe:scrolls>.add(<item:waystones:return_scroll>);



# RF Coils (quest)
<tag:items:teoe:coil>.add(<item:thermal:rf_coil_augment>);
<tag:items:teoe:coil>.add(<item:thermal:rf_coil_storage_augment>);
<tag:items:teoe:coil>.add(<item:thermal:rf_coil_xfer_augment>);


# Soul Sand (recipe)
<tag:items:teoe:soul_sand>.add(<item:minecraft:soul_sand>);
<tag:items:teoe:soul_sand>.add(<item:minecraft:soul_soil>);
<tag:items:teoe:soul_sand>.add(<item:byg:warped_soul_sand>);
<tag:items:teoe:soul_sand>.add(<item:byg:warped_soul_soil>);


# Cooking for Blockheads' items (quests)
<tag:items:teoe:upgrade>.add(<item:cookingforblockheads:heating_unit>);
<tag:items:teoe:upgrade>.add(<item:cookingforblockheads:ice_unit>);
<tag:items:teoe:upgrade>.add(<item:cookingforblockheads:preservation_chamber>);

<tag:items:teoe:storage>.add(<item:cookingforblockheads:counter>);
<tag:items:teoe:storage>.add(<item:cookingforblockheads:cabinet>);

<tag:items:teoe:decor>.add(<item:cookingforblockheads:corner>);
<tag:items:teoe:decor>.add(<item:cookingforblockheads:hanging_corner>);



# Malum's pedestals & totem bases (quests)
<tag:items:teoe:pedestal>.add(<item:malum:tainted_rock_item_pedestal>);
<tag:items:teoe:pedestal>.add(<item:malum:twisted_rock_item_pedestal>);
<tag:items:teoe:pedestal>.add(<item:malum:runewood_item_pedestal>);
<tag:items:teoe:pedestal>.add(<item:malum:soulwood_item_pedestal>);

<tag:items:teoe:pedestal>.add(<item:malum:tainted_rock_item_stand>);
<tag:items:teoe:pedestal>.add(<item:malum:twisted_rock_item_stand>);
<tag:items:teoe:pedestal>.add(<item:malum:runewood_item_stand>);
<tag:items:teoe:pedestal>.add(<item:malum:soulwood_item_stand>);

<tag:items:teoe:base>.add(<item:malum:runewood_totem_base>);
<tag:items:teoe:base>.add(<item:malum:soulwood_totem_base>);



# Boats (quest & recipe)
<tag:items:minecraft:boats>.add(<item:byg:aspen_boat>);
<tag:items:minecraft:boats>.add(<item:byg:baobab_boat>);
<tag:items:minecraft:boats>.add(<item:byg:blue_enchanted_boat>);
<tag:items:minecraft:boats>.add(<item:byg:cherry_boat>);
<tag:items:minecraft:boats>.add(<item:byg:cika_boat>);
<tag:items:minecraft:boats>.add(<item:byg:cypress_boat>);
<tag:items:minecraft:boats>.add(<item:byg:ebony_boat>);
<tag:items:minecraft:boats>.add(<item:byg:fir_boat>);
<tag:items:minecraft:boats>.add(<item:byg:green_enchanted_boat>);
<tag:items:minecraft:boats>.add(<item:byg:holly_boat>);
<tag:items:minecraft:boats>.add(<item:byg:jacaranda_boat>);
<tag:items:minecraft:boats>.add(<item:byg:mahogany_boat>);
<tag:items:minecraft:boats>.add(<item:byg:mangrove_boat>);
<tag:items:minecraft:boats>.add(<item:byg:maple_boat>);
<tag:items:minecraft:boats>.add(<item:byg:palm_boat>);
<tag:items:minecraft:boats>.add(<item:byg:pine_boat>);
<tag:items:minecraft:boats>.add(<item:byg:rainbow_eucalyptus_boat>);
<tag:items:minecraft:boats>.add(<item:byg:redwood_boat>);
<tag:items:minecraft:boats>.add(<item:byg:skyris_boat>);
<tag:items:minecraft:boats>.add(<item:byg:willow_boat>);
<tag:items:minecraft:boats>.add(<item:byg:witch_hazel_boat>);
<tag:items:minecraft:boats>.add(<item:byg:zelkova_boat>);

<tag:items:minecraft:boats>.add(<item:quark:blossom_boat>);
<tag:items:minecraft:boats>.add(<item:quark:azalea_boat>);



# Sleepers (train track recipe)
<tag:items:create:sleepers>.add(<item:minecraft:polished_andesite_slab>);
<tag:items:create:sleepers>.add(<item:create:cut_andesite_slab>);
<tag:items:create:sleepers>.add(<item:create:polished_cut_andesite_slab>);
<tag:items:create:sleepers>.add(<item:nourished_nether:smooth_basalt_slab>);
<tag:items:create:sleepers>.add(<item:create:cut_tuff_slab>);
<tag:items:create:sleepers>.add(<item:quark:polished_tuff_slab>);
<tag:items:create:sleepers>.add(<item:quark:tuff_slab>);



# Vines (recipe)
<tag:items:teoe:vines>.add(<item:minecraft:vine>);
<tag:items:teoe:vines>.add(<item:minecraft:weeping_vines>);
<tag:items:teoe:vines>.add(<item:minecraft:twisting_vines>);
<tag:items:teoe:vines>.add(<item:byg:imparius_vine>);
<tag:items:teoe:vines>.add(<item:byg:lament_vine>);
<tag:items:teoe:vines>.add(<item:byg:skyris_vine>);
<tag:items:teoe:vines>.add(<item:byg:embur_gel_vines>);
<tag:items:teoe:vines>.add(<item:byg:wailing_vine>);
<tag:items:teoe:vines>.add(<item:byg:shulkren_vine>);

<tag:items:teoe:slimy_vines>.add(<item:tconstruct:sky_slime_vine>);
<tag:items:teoe:slimy_vines>.add(<item:tconstruct:ender_slime_vine>);



# Music Discs (recipe)
<tag:items:minecraft:music_discs>.add(<item:aquamirae:music_disc_horizon>);
<tag:items:minecraft:music_discs>.add(<item:aquamirae:music_disc_forsaken_drownage>);
<tag:items:minecraft:music_discs>.add(<item:conjurer_illager:music_disc_delve_deeper>);
<tag:items:minecraft:music_discs>.add(<item:the_bumblezone:music_disc_honey_bee_rat_faced_boy>);
<tag:items:minecraft:music_discs>.add(<item:the_bumblezone:music_disc_flight_of_the_bumblebee_rimsky_korsakov>);

/*
# Portal Modules (quest)
<tag:items:teoe:portal_modules>.add(<item:portality:module_energy>);
<tag:items:teoe:portal_modules>.add(<item:portality:module_fluids>);
<tag:items:teoe:portal_modules>.add(<item:portality:module_items>);
<tag:items:teoe:portal_modules>.add(<item:portality:module_interdimensional>);
*/

# Corundum (quest & catalyst)
<tag:items:teoe:corundum>.add(<item:quark:red_corundum_cluster>);
<tag:items:teoe:corundum>.add(<item:quark:orange_corundum_cluster>);
<tag:items:teoe:corundum>.add(<item:quark:yellow_corundum_cluster>);
<tag:items:teoe:corundum>.add(<item:quark:green_corundum_cluster>);
<tag:items:teoe:corundum>.add(<item:quark:blue_corundum_cluster>);
<tag:items:teoe:corundum>.add(<item:quark:indigo_corundum_cluster>);
<tag:items:teoe:corundum>.add(<item:quark:violet_corundum_cluster>);
<tag:items:teoe:corundum>.add(<item:quark:white_corundum_cluster>);
<tag:items:teoe:corundum>.add(<item:quark:black_corundum_cluster>);



# Ropes (quest)
<tag:items:teoe:rope>.add(<item:quark:rope>);
<tag:items:teoe:rope>.add(<item:additionaladditions:rope>);



# Waystones (quest)
<tag:items:teoe:waystones>.add(<item:waystones:waystone>);
<tag:items:teoe:waystones>.add(<item:waystones:mossy_waystone>);
<tag:items:teoe:waystones>.add(<item:waystones:sandy_waystone>);



# Diving Gear (quest)
<tag:items:teoe:diving_helmet>.add(<item:aquamirae:three_bolt_helmet>);
<tag:items:teoe:diving_helmet>.add(<item:thermal:diving_helmet>);
<tag:items:teoe:diving_helmet>.add(<item:create:diving_helmet>);

<tag:items:teoe:diving_chestplate>.add(<item:aquamirae:three_bolt_suit>);
<tag:items:teoe:diving_chestplate>.add(<item:thermal:diving_chestplate>);
<tag:items:teoe:diving_chestplate>.add(<item:create:copper_backtank>);

<tag:items:teoe:diving_leggings>.add(<item:aquamirae:three_bolt_leggings>);
<tag:items:teoe:diving_leggings>.add(<item:thermal:diving_leggings>);

<tag:items:teoe:diving_boots>.add(<item:aquamirae:three_bolt_boots>);
<tag:items:teoe:diving_boots>.add(<item:thermal:diving_boots>);
<tag:items:teoe:diving_boots>.add(<item:create:diving_boots>);



# Quartz (portal frame recipe)
<tag:items:teoe:quartz_blocks>.add(<item:minecraft:smooth_quartz>);
<tag:items:teoe:quartz_blocks>.add(<item:minecraft:chiseled_quartz_block>);
<tag:items:teoe:quartz_blocks>.add(<item:minecraft:quartz_block>);
<tag:items:teoe:quartz_blocks>.add(<item:minecraft:quartz_bricks>);
<tag:items:teoe:quartz_blocks>.add(<item:minecraft:quartz_pillar>);



# Paxels (quest)
<tag:items:teoe:paxels>.add(<item:easypaxellite:wood_paxel>);
<tag:items:teoe:paxels>.add(<item:easypaxellite:stone_paxel>);
<tag:items:teoe:paxels>.add(<item:easypaxellite:iron_paxel>);
<tag:items:teoe:paxels>.add(<item:easypaxellite:golden_paxel>);
<tag:items:teoe:paxels>.add(<item:easypaxellite:diamond_paxel>);
<tag:items:teoe:paxels>.add(<item:easypaxellite:netherite_paxel>);



# Furnaces (quest + recipes)
<tag:items:teoe:furnace>.add(<item:minecraft:furnace>);
<tag:items:teoe:furnace>.add(<item:quark:blackstone_furnace>);
<tag:items:teoe:furnace>.add(<item:quark:deepslate_furnace>);



# Crafting Storage (quest)
<tag:items:teoe:crafting_storage>.add(<item:ae2:1k_crafting_storage>);
<tag:items:teoe:crafting_storage>.add(<item:ae2:4k_crafting_storage>);
<tag:items:teoe:crafting_storage>.add(<item:ae2:16k_crafting_storage>);
<tag:items:teoe:crafting_storage>.add(<item:ae2:64k_crafting_storage>);



# Chest Upgrades (quest)
<tag:items:teoe:better_chest>.add(<item:ironchest:copper_chest>);
<tag:items:teoe:better_chest>.add(<item:ironchest:iron_chest>);
<tag:items:teoe:better_chest>.add(<item:ironchest:wood_to_copper_chest_upgrade>);
<tag:items:teoe:better_chest>.add(<item:ironchest:wood_to_iron_chest_upgrade>);
<tag:items:teoe:better_chest>.add(<item:ironchest:copper_to_iron_chest_upgrade>);


# Beacon Base
# Mainly for the Gaia quest, but can be used to find them easier
<tag:items:teoe:beacon_base>.add(<item:minecraft:iron_block>);
<tag:items:teoe:beacon_base>.add(<item:minecraft:gold_block>);
<tag:items:teoe:beacon_base>.add(<item:minecraft:diamond_block>);
<tag:items:teoe:beacon_base>.add(<item:minecraft:netherite_block>);
<tag:items:teoe:beacon_base>.add(<item:tconstruct:cobalt_block>);
<tag:items:teoe:beacon_base>.add(<item:tconstruct:queens_slime_block>);
<tag:items:teoe:beacon_base>.add(<item:tconstruct:manyullyn_block>);
<tag:items:teoe:beacon_base>.add(<item:tconstruct:hepatizon_block>);



# Signs
<tag:items:minecraft:signs>.add(<item:quark:blossom_sign>);
<tag:items:minecraft:signs>.add(<item:quark:azalea_sign>);
<tag:items:minecraft:signs>.add(<item:malum:runewood_sign>);
<tag:items:minecraft:signs>.add(<item:malum:soulwood_sign>);



# Apothecaries (quest)
<tag:items:teoe:apothecary>.add(<item:botania:apothecary_mossy>);
<tag:items:teoe:apothecary>.add(<item:botania:apothecary_default>);


# Spellstones (recipe)
<tag:items:teoe:spellstone>.add(<item:enigmaticlegacy:enigmatic_item>);
<tag:items:teoe:spellstone>.add(<item:enigmaticlegacy:golem_heart>);
<tag:items:teoe:spellstone>.add(<item:enigmaticlegacy:angel_blessing>);
<tag:items:teoe:spellstone>.add(<item:enigmaticlegacy:ocean_stone>);
<tag:items:teoe:spellstone>.add(<item:enigmaticlegacy:magma_heart>);
<tag:items:teoe:spellstone>.add(<item:enigmaticlegacy:eye_of_nebula>);
<tag:items:teoe:spellstone>.add(<item:enigmaticlegacy:void_pearl>);


# TEoE Planks
# Used in my custom Chest recipe
<tag:items:teoe:planks>.add(<item:botania:livingwood_planks>);
<tag:items:teoe:planks>.add(<item:botania:mossy_livingwood_planks>);
<tag:items:teoe:planks>.add(<item:botania:framed_livingwood>);
<tag:items:teoe:planks>.add(<item:botania:pattern_framed_livingwood>);
<tag:items:teoe:planks>.add(<item:botania:livingwood_planks>);
<tag:items:teoe:planks>.add(<item:botania:dreamwood_planks>);
<tag:items:teoe:planks>.add(<item:botania:mossy_dreamwood_planks>);
<tag:items:teoe:planks>.add(<item:botania:framed_dreamwood>);
<tag:items:teoe:planks>.add(<item:botania:pattern_framed_dreamwood>);
<tag:items:teoe:planks>.add(<item:botania:dreamwood_planks>);
<tag:items:teoe:planks>.add(<item:botania:shimmerwood_planks>);

<tag:items:teoe:planks>.add(<item:byg:aspen_planks>);
<tag:items:teoe:planks>.add(<item:byg:baobab_planks>);
<tag:items:teoe:planks>.add(<item:byg:blue_enchanted_planks>);
<tag:items:teoe:planks>.add(<item:byg:bulbis_planks>);
<tag:items:teoe:planks>.add(<item:byg:cherry_planks>);
<tag:items:teoe:planks>.add(<item:byg:cika_planks>);
<tag:items:teoe:planks>.add(<item:byg:cypress_planks>);
<tag:items:teoe:planks>.add(<item:byg:ebony_planks>);
<tag:items:teoe:planks>.add(<item:byg:fir_planks>);
<tag:items:teoe:planks>.add(<item:byg:green_enchanted_planks>);
<tag:items:teoe:planks>.add(<item:byg:holly_planks>);
<tag:items:teoe:planks>.add(<item:byg:imparius_planks>);
<tag:items:teoe:planks>.add(<item:byg:jacaranda_planks>);
<tag:items:teoe:planks>.add(<item:byg:lament_planks>);
<tag:items:teoe:planks>.add(<item:byg:mahogany_planks>);
<tag:items:teoe:planks>.add(<item:byg:mangrove_planks>);
<tag:items:teoe:planks>.add(<item:byg:maple_planks>);
<tag:items:teoe:planks>.add(<item:byg:nightshade_planks>);
<tag:items:teoe:planks>.add(<item:byg:palm_planks>);
<tag:items:teoe:planks>.add(<item:byg:pine_planks>);
<tag:items:teoe:planks>.add(<item:byg:rainbow_eucalyptus_planks>);
<tag:items:teoe:planks>.add(<item:byg:redwood_planks>);
<tag:items:teoe:planks>.add(<item:byg:skyris_planks>);
<tag:items:teoe:planks>.add(<item:byg:willow_planks>);
<tag:items:teoe:planks>.add(<item:byg:witch_hazel_planks>);
<tag:items:teoe:planks>.add(<item:byg:zelkova_planks>);
<tag:items:teoe:planks>.add(<item:byg:sythian_planks>);
<tag:items:teoe:planks>.add(<item:byg:embur_planks>);

<tag:items:teoe:planks>.add(<item:twilightforest:towerwood>);
<tag:items:teoe:planks>.add(<item:twilightforest:twilight_oak_planks>);
<tag:items:teoe:planks>.add(<item:twilightforest:canopy_planks>);
<tag:items:teoe:planks>.add(<item:twilightforest:mangrove_planks>);
<tag:items:teoe:planks>.add(<item:twilightforest:dark_planks>);
<tag:items:teoe:planks>.add(<item:twilightforest:time_planks>);
<tag:items:teoe:planks>.add(<item:twilightforest:transformation_planks>);
<tag:items:teoe:planks>.add(<item:twilightforest:mining_planks>);
<tag:items:teoe:planks>.add(<item:twilightforest:sorting_planks>);

<tag:items:teoe:planks>.add(<item:tconstruct:nahuatl>);
<tag:items:teoe:planks>.add(<item:tconstruct:greenheart_planks>);
<tag:items:teoe:planks>.add(<item:tconstruct:skyroot_planks>);
<tag:items:teoe:planks>.add(<item:tconstruct:bloodshroom_planks>);

<tag:items:teoe:planks>.add(<item:naturesaura:ancient_planks>);


# Flowers
<tag:items:minecraft:tall_flowers>.add(<item:byg:delphinium>);
<tag:items:minecraft:tall_flowers>.add(<item:byg:tall_allium>);
<tag:items:minecraft:tall_flowers>.add(<item:byg:tall_pink_allium>);




# Misc
<tag:items:forge:ingots>.add(<item:byg:pendorite_ingot>);
<tag:items:forge:ingots>.add(<item:industrialforegoing:pink_slime_ingot>);

<tag:items:forge:ingots>.add(<item:ob_core:platinum_ingot>);
<tag:items:forge:ingots/platinum>.add(<item:ob_core:platinum_ingot>);

<tag:items:forge:nuggets>.add(<item:ob_core:platinum_nugget>);
<tag:items:forge:nuggets/platinum>.add(<item:ob_core:platinum_nugget>);
<tag:items:forge:nuggets>.add(<item:nourished_nether:netherite_nugget>);
<tag:items:forge:nuggets/netherite>.add(<item:nourished_nether:netherite_nugget>);

<tag:items:forge:dusts>.add(<item:thermal:ender_pearl_dust>);

<tag:items:forge:end_stones>.add(<item:geode:smooth_endstone>);

<tag:items:forge:chests>.add(<item:ae2:sky_stone_chest>);
<tag:items:forge:chests>.add(<item:ae2:smooth_sky_stone_chest>);

<tag:items:ae2:all_quartz_dust>.add(<item:thermal:quartz_dust>);

<tag:items:ae2:p2p_attunements/light_p2p_tunnel>.add(<item:malum:blazing_torch>);

<tag:items:ae2:p2p_attunements/redstone_p2p_tunnel>.add(<item:botania:animated_torch>);

<tag:items:forge:limestone>.add(<item:quark:limestone>);
<tag:items:forge:limestone>.add(<item:create:limestone>);

<tag:items:create:crushed_ores>.add(<item:malum:crushed_brilliance>);
<tag:items:create:crushed_ores>.add(<item:malum:crushed_soulstone>);

<tag:items:forge:dyes/green>.add(<item:quark:moss_paste>);

<tag:items:byg:pink_dye>.remove(<item:byg:firecracker_flower_bush>);
<tag:items:byg:orange_dye>.add(<item:byg:firecracker_flower_bush>);
<tag:items:byg:green_dye>.add(<item:byg:shrub>);

<tag:items:forge:slimeballs>.add(<item:byg:embur_gel_ball>);

<tag:items:forge:mushrooms>.add(<item:minecraft:crimson_fungus>);
<tag:items:forge:mushrooms>.add(<item:minecraft:warped_fungus>);
<tag:items:forge:mushrooms>.add(<item:naturesaura:aura_mushroom>);
<tag:items:forge:mushrooms>.add(<item:naturesaura:crimson_aura_mushroom>);
<tag:items:forge:mushrooms>.add(<item:naturesaura:warped_aura_mushroom>);

<tag:items:malum:gross_foods>.add(<item:minecraft:spider_eye>);
<tag:items:malum:gross_foods>.add(<item:minecraft:poisonous_potato>);


/*
<tag:items:randomium:whitelist>.add(<item>);
mods are blacklisted in the config
*/

# Whitelisted Randomium drops
<tag:items:randomium:whitelist>.add(<item:minecraft:raw_copper>);
<tag:items:randomium:whitelist>.add(<item:minecraft:raw_iron>);
<tag:items:randomium:whitelist>.add(<item:minecraft:raw_gold>);
<tag:items:randomium:whitelist>.add(<item:create:raw_zinc>);
<tag:items:randomium:whitelist>.add(<item:thermal:raw_tin>);
<tag:items:randomium:whitelist>.add(<item:thermal:raw_lead>);
<tag:items:randomium:whitelist>.add(<item:thermal:raw_silver>);
<tag:items:randomium:whitelist>.add(<item:thermal:raw_nickel>);
<tag:items:randomium:whitelist>.add(<item:byg:raw_pendorite>);
<tag:items:randomium:whitelist>.add(<item:tconstruct:raw_cobalt>);
<tag:items:randomium:whitelist>.add(<item:malum:raw_soulstone>);
<tag:items:randomium:whitelist>.add(<item:ob_core:platinum_raw>);
<tag:items:randomium:whitelist>.add(<item:ob_core:magic_dust>);

<tag:items:randomium:whitelist>.add(<item:deepresonance:resonating_ore_stone>);
<tag:items:randomium:whitelist>.add(<item:deepresonance:resonating_ore_deepslate>);
<tag:items:randomium:whitelist>.add(<item:deepresonance:resonating_ore_nether>);
<tag:items:randomium:whitelist>.add(<item:deepresonance:resonating_ore_end>);

<tag:items:randomium:whitelist>.add(<item:lightmanscurrency:coin_copper>);
<tag:items:randomium:whitelist>.add(<item:lightmanscurrency:coinpile_copper>);
<tag:items:randomium:whitelist>.add(<item:lightmanscurrency:coinblock_copper>);
<tag:items:randomium:whitelist>.add(<item:lightmanscurrency:coin_iron>);
<tag:items:randomium:whitelist>.add(<item:lightmanscurrency:coinpile_iron>);
<tag:items:randomium:whitelist>.add(<item:lightmanscurrency:coin_gold>);
<tag:items:randomium:whitelist>.add(<item:lightmanscurrency:coin_emerald>);



# Tag Removal
<tag:items:forge:ingots>.remove(<item:thermal:rose_gold_ingot>);
<tag:items:forge:ingots/rose_gold>.remove(<item:thermal:rose_gold_ingot>);

<tag:items:forge:nuggets>.remove(<item:thermal:rose_gold_nugget>);
<tag:items:forge:nuggets/rose_gold>.remove(<item:thermal:rose_gold_nugget>);

<tag:items:forge:gears>.remove(<item:industrialforegoing:iron_gear>);
<tag:items:forge:gears>.remove(<item:industrialforegoing:gold_gear>);
<tag:items:forge:gears>.remove(<item:industrialforegoing:diamond_gear>);

<tag:items:forge:gears/iron>.remove(<item:industrialforegoing:iron_gear>);
<tag:items:forge:gears/gold>.remove(<item:industrialforegoing:gold_gear>);
<tag:items:forge:gears/diamond>.remove(<item:industrialforegoing:diamond_gear>);

<tag:items:byg:purple_dye>.remove(<item:byg:tall_allium>);
<tag:items:byg:pink_dye>.remove(<item:byg:tall_pink_allium>);
<tag:items:byg:pink_dye>.remove(<item:byg:japanese_orchid>);

<tag:items:twilightforest:portal/activator>.remove(<item:minecraft:diamond>);

<tag:items:minecraft:tall_flowers>.remove(<tag:items:minecraft:small_flowers>);

<tag:items:forge:mushrooms>.remove(<item:byg:white_puffball_cap>);

print("1-tags.zs loaded");