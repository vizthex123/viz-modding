# Adds tags to the various modded woods for the Chest recipes
#priority 8

import crafttweaker.api.tag.MCTag;

print("1-tags_wood.zs loading...");

# TEoE Planks
# Used in my custom Chest recipe
val planks = <tag:items:teoe:planks>;
val logs =  <tag:items:teoe:logs>;

planks.add(<item:botania:livingwood_planks>);
planks.add(<item:botania:mossy_livingwood_planks>);
planks.add(<item:botania:framed_livingwood>);
planks.add(<item:botania:pattern_framed_livingwood>);
planks.add(<item:botania:livingwood_planks>);
planks.add(<item:botania:dreamwood_planks>);
planks.add(<item:botania:mossy_dreamwood_planks>);
planks.add(<item:botania:framed_dreamwood>);
planks.add(<item:botania:pattern_framed_dreamwood>);
planks.add(<item:botania:dreamwood_planks>);
planks.add(<item:botania:shimmerwood_planks>);

planks.add(<item:byg:aspen_planks>);
planks.add(<item:byg:baobab_planks>);
planks.add(<item:byg:blue_enchanted_planks>);
planks.add(<item:byg:bulbis_planks>);
planks.add(<item:byg:cherry_planks>);
planks.add(<item:byg:cika_planks>);
planks.add(<item:byg:cypress_planks>);
planks.add(<item:byg:ebony_planks>);
# planks.add(<item:byg:ether_planks>);
planks.add(<item:byg:fir_planks>);
planks.add(<item:byg:green_enchanted_planks>);
planks.add(<item:byg:holly_planks>);
# planks.add(<item:byg:imparius_planks>);
planks.add(<item:byg:jacaranda_planks>);
planks.add(<item:byg:lament_planks>);
planks.add(<item:byg:mahogany_planks>);
planks.add(<item:byg:mangrove_planks>);
planks.add(<item:byg:maple_planks>);
# planks.add(<item:byg:nightshade_planks>);
planks.add(<item:byg:palm_planks>);
planks.add(<item:byg:pine_planks>);
planks.add(<item:byg:rainbow_eucalyptus_planks>);
planks.add(<item:byg:redwood_planks>);
planks.add(<item:byg:skyris_planks>);
planks.add(<item:byg:willow_planks>);
planks.add(<item:byg:witch_hazel_planks>);
planks.add(<item:byg:zelkova_planks>);
planks.add(<item:byg:sythian_planks>);
planks.add(<item:byg:embur_planks>);

planks.add(<item:twilightforest:towerwood>);
planks.add(<item:twilightforest:twilight_oak_planks>);
planks.add(<item:twilightforest:canopy_planks>);
planks.add(<item:twilightforest:mangrove_planks>);
planks.add(<item:twilightforest:dark_planks>);
planks.add(<item:twilightforest:time_planks>);
planks.add(<item:twilightforest:transformation_planks>);
planks.add(<item:twilightforest:mining_planks>);
planks.add(<item:twilightforest:sorting_planks>);

planks.add(<item:tconstruct:nahuatl>);
planks.add(<item:tconstruct:greenheart_planks>);
planks.add(<item:tconstruct:skyroot_planks>);
planks.add(<item:tconstruct:bloodshroom_planks>);

planks.add(<item:naturesaura:ancient_planks>);


	// Logs
logs.add(<item:botania:livingwood_log>);
logs.add(<item:botania:dreamwood_log>);
logs.add(<item:botania:glimmering_livingwood_log>);
logs.add(<item:botania:glimmering_dreamwood_log>);

logs.add(<item:byg:aspen_log>);
logs.add(<item:byg:baobab_log>);
logs.add(<item:byg:blue_enchanted_log>);
logs.add(<item:byg:bulbis_stem>);
logs.add(<item:byg:cherry_log>);
logs.add(<item:byg:cika_log>);
logs.add(<item:byg:cypress_log>);
logs.add(<item:byg:ebony_log>);
# logs.add(<item:byg:ether_log>);
logs.add(<item:byg:fir_log>);
logs.add(<item:byg:green_enchanted_log>);
logs.add(<item:byg:holly_log>);
# logs.add(<item:byg:imparius_stem>);
# logs.add(<item:byg:fungal_imparius_stem>);
logs.add(<item:byg:jacaranda_log>);
logs.add(<item:byg:lament_log>);
logs.add(<item:byg:mahogany_log>);
logs.add(<item:byg:mangrove_log>);
logs.add(<item:byg:maple_log>);
# logs.add(<item:byg:imbued_nightshade_log>);
# logs.add(<item:byg:nightshade_log>);
logs.add(<item:byg:palm_log>);
logs.add(<item:byg:pine_log>);
logs.add(<item:byg:rainbow_eucalyptus_log>);
logs.add(<item:byg:redwood_log>);
logs.add(<item:byg:skyris_log>);
logs.add(<item:byg:willow_log>);
logs.add(<item:byg:witch_hazel_log>);
logs.add(<item:byg:zelkova_log>);
logs.add(<item:byg:sythian_stem>);
logs.add(<item:byg:embur_pedu>);

logs.add(<item:twilightforest:towerwood>);
logs.add(<item:twilightforest:twilight_oak_log>);
logs.add(<item:twilightforest:canopy_log>);
logs.add(<item:twilightforest:mangrove_log>);
logs.add(<item:twilightforest:dark_log>);
logs.add(<item:twilightforest:time_log>);
logs.add(<item:twilightforest:transformation_log>);
logs.add(<item:twilightforest:mining_log>);
logs.add(<item:twilightforest:sorting_log>);

logs.add(<item:tconstruct:greenheart_log>);
logs.add(<item:tconstruct:skyroot_log>);
logs.add(<item:tconstruct:bloodshroom_log>);

logs.add(<item:naturesaura:ancient_log>);

	// Stripped Logs
logs.add(<item:botania:stripped_livingwood_log>);
logs.add(<item:botania:stripped_dreamwood_log>);
logs.add(<item:botania:glimmering_stripped_livingwood_log>);
logs.add(<item:botania:glimmering_stripped_dreamwood_log>);

logs.add(<item:byg:stripped_aspen_log>);
logs.add(<item:byg:stripped_baobab_log>);
logs.add(<item:byg:stripped_blue_enchanted_log>);
logs.add(<item:byg:stripped_bulbis_stem>);
logs.add(<item:byg:stripped_cherry_log>);
logs.add(<item:byg:stripped_cika_log>);
logs.add(<item:byg:stripped_cypress_log>);
logs.add(<item:byg:stripped_ebony_log>);
# logs.add(<item:byg:stripped_ether_log>);
logs.add(<item:byg:stripped_fir_log>);
logs.add(<item:byg:stripped_green_enchanted_log>);
logs.add(<item:byg:stripped_holly_log>);
logs.add(<item:byg:stripped_jacaranda_log>);
logs.add(<item:byg:stripped_lament_log>);
logs.add(<item:byg:stripped_mahogany_log>);
logs.add(<item:byg:stripped_mangrove_log>);
logs.add(<item:byg:stripped_maple_log>);
# logs.add(<item:byg:stripped_nightshade_log>);
logs.add(<item:byg:stripped_palm_log>);
logs.add(<item:byg:stripped_pine_log>);
logs.add(<item:byg:stripped_rainbow_eucalyptus_log>);
logs.add(<item:byg:stripped_redwood_log>);
logs.add(<item:byg:stripped_skyris_log>);
logs.add(<item:byg:stripped_willow_log>);
logs.add(<item:byg:stripped_witch_hazel_log>);
logs.add(<item:byg:stripped_zelkova_log>);
logs.add(<item:byg:stripped_sythian_stem>);
logs.add(<item:byg:stripped_embur_pedu>);

logs.add(<item:twilightforest:stripped_twilight_oak_log>);
logs.add(<item:twilightforest:stripped_canopy_log>);
logs.add(<item:twilightforest:stripped_mangrove_log>);
logs.add(<item:twilightforest:stripped_dark_log>);
logs.add(<item:twilightforest:stripped_time_log>);
logs.add(<item:twilightforest:stripped_transformation_log>);
logs.add(<item:twilightforest:stripped_mining_log>);
logs.add(<item:twilightforest:stripped_sorting_log>);

logs.add(<item:tconstruct:stripped_greenheart_log>);
logs.add(<item:tconstruct:stripped_skyroot_log>);
logs.add(<item:tconstruct:stripped_bloodshroom_log>);

	// Wood (the solid blocks)
logs.add(<item:byg:aspen_wood>);
logs.add(<item:byg:baobab_wood>);
logs.add(<item:byg:blue_enchanted_wood>);
logs.add(<item:byg:bulbis_stem>);
logs.add(<item:byg:cherry_wood>);
logs.add(<item:byg:cika_wood>);
logs.add(<item:byg:cypress_wood>);
logs.add(<item:byg:ebony_wood>);
logs.add(<item:byg:ether_wood>);
logs.add(<item:byg:fir_wood>);
logs.add(<item:byg:green_enchanted_wood>);
logs.add(<item:byg:holly_wood>);
# logs.add(<item:byg:imparius_hyphae>);
# logs.add(<item:byg:fungal_imparius_hyphae>);
logs.add(<item:byg:jacaranda_wood>);
logs.add(<item:byg:lament_wood>);
logs.add(<item:byg:mahogany_wood>);
logs.add(<item:byg:mangrove_wood>);
logs.add(<item:byg:maple_wood>);
# logs.add(<item:byg:nightshade_wood>);
logs.add(<item:byg:palm_wood>);
logs.add(<item:byg:pine_wood>);
logs.add(<item:byg:rainbow_eucalyptus_wood>);
logs.add(<item:byg:redwood_wood>);
logs.add(<item:byg:skyris_wood>);
logs.add(<item:byg:willow_wood>);
logs.add(<item:byg:witch_hazel_wood>);
logs.add(<item:byg:zelkova_wood>);
logs.add(<item:byg:sythian_hyphae>);
logs.add(<item:byg:embur_hyphae>);

logs.add(<item:twilightforest:towerwood>);
logs.add(<item:twilightforest:twilight_oak_wood>);
logs.add(<item:twilightforest:canopy_wood>);
logs.add(<item:twilightforest:mangrove_wood>);
logs.add(<item:twilightforest:dark_wood>);
logs.add(<item:twilightforest:time_wood>);
logs.add(<item:twilightforest:transformation_wood>);
logs.add(<item:twilightforest:mining_wood>);
logs.add(<item:twilightforest:sorting_wood>);

logs.add(<item:tconstruct:greenheart_wood>);
logs.add(<item:tconstruct:skyroot_wood>);
logs.add(<item:tconstruct:bloodshroom_wood>);

logs.add(<item:naturesaura:ancient_bark>);

	// Stripped Wood
logs.add(<item:byg:stripped_aspen_wood>);
logs.add(<item:byg:stripped_baobab_wood>);
logs.add(<item:byg:stripped_blue_enchanted_wood>);
logs.add(<item:byg:stripped_bulbis_stem>);
logs.add(<item:byg:stripped_cherry_wood>);
logs.add(<item:byg:stripped_cika_wood>);
logs.add(<item:byg:stripped_cypress_wood>);
logs.add(<item:byg:stripped_ebony_wood>);
logs.add(<item:byg:stripped_ether_wood>);
logs.add(<item:byg:stripped_fir_wood>);
logs.add(<item:byg:stripped_green_enchanted_wood>);
logs.add(<item:byg:stripped_holly_wood>);
logs.add(<item:byg:stripped_jacaranda_wood>);
logs.add(<item:byg:stripped_lament_wood>);
logs.add(<item:byg:stripped_mahogany_wood>);
logs.add(<item:byg:stripped_mangrove_wood>);
logs.add(<item:byg:stripped_maple_wood>);
# logs.add(<item:byg:stripped_nightshade_wood>);
logs.add(<item:byg:stripped_palm_wood>);
logs.add(<item:byg:stripped_pine_wood>);
logs.add(<item:byg:stripped_rainbow_eucalyptus_wood>);
logs.add(<item:byg:stripped_redwood_wood>);
logs.add(<item:byg:stripped_skyris_wood>);
logs.add(<item:byg:stripped_willow_wood>);
logs.add(<item:byg:stripped_witch_hazel_wood>);
logs.add(<item:byg:stripped_zelkova_wood>);
logs.add(<item:byg:stripped_sythian_hyphae>);
logs.add(<item:byg:stripped_embur_hyphae>);

logs.add(<item:twilightforest:stripped_twilight_oak_wood>);
logs.add(<item:twilightforest:stripped_canopy_wood>);
logs.add(<item:twilightforest:stripped_mangrove_wood>);
logs.add(<item:twilightforest:stripped_dark_wood>);
logs.add(<item:twilightforest:stripped_time_wood>);
logs.add(<item:twilightforest:stripped_transformation_wood>);
logs.add(<item:twilightforest:stripped_mining_wood>);
logs.add(<item:twilightforest:stripped_sorting_wood>);

logs.add(<item:tconstruct:stripped_greenheart_wood>);
logs.add(<item:tconstruct:stripped_skyroot_wood>);
logs.add(<item:tconstruct:stripped_bloodshroom_wood>);

print("1-tags_wood.zs loaded");