# Adds tags to items used to make Biomass and Meaty Clumps
#priority 20

print("0-tags-biomass.zs loaded");


# Crops
val crops = <tag:items:c:crops>;

crops.add(<item:minecraft:beetroot>);
crops.add(<item:minecraft:carrot>);
crops.add(<item:minecraft:melon>);
crops.add(<item:minecraft:melon_slice>);
crops.add(<item:minecraft:pumpkin>);
crops.add(<item:minecraft:potato>);
crops.add(<item:minecraft:wheat>);


<tag:items:c:crops/beetroot>.add(<item:minecraft:beetroot>);
<tag:items:c:crops/carrot>.add(<item:minecraft:carrot>);
<tag:items:c:crops/melon>.add(<item:minecraft:melon>);
<tag:items:c:crops/melon>.add(<item:minecraft:melon_slice>);
<tag:items:c:crops/pumpkin>.add(<item:minecraft:pumpkin>);
<tag:items:c:crops/pumpkin>.add(<item:minecraft:carved_pumpkin>);
<tag:items:c:crops/potato>.add(<item:minecraft:potato>);
<tag:items:c:crops/potato>.add(<item:minecraft:poisonous_potato>);
<tag:items:c:crops/poisonous_potato>.add(<item:minecraft:poisonous_potato>);
<tag:items:c:crops/wheat>.add(<item:minecraft:wheat>);
<tag:items:c:crops/wheat>.add(<item:skylorlib:golden_wheat_item>);

crops.add(<item:farmersdelight:pumpkin_slice>);
<tag:items:c:crops/pumpkin>.add(<item:farmersdelight:pumpkin_slice>);

crops.add(<item:nethersdelight:propelpearl>);
<tag:items:c:crops/propelpearl>.add(<item:nethersdelight:propelpearl>);

crops.add(<item:nears:near>);
crops.add(<item:nears:faar>);
crops.add(<item:nears:soul_berries>);

<tag:items:c:crops/near>.add(<item:nears:near>);
<tag:items:c:crops/faar>.add(<item:nears:faar>);
<tag:items:c:crops/soul_berry>.add(<item:nears:soul_berries>);





# Seeds
val seeds = <tag:items:c:seeds>;

seeds.add(<item:minecraft:beetroot_seeds>);
seeds.add(<item:minecraft:melon_seeds>);
seeds.add(<item:minecraft:pumpkin_seeds>);
seeds.add(<item:minecraft:wheat_seeds>);

<tag:items:c:seeds/beetroot>.add(<item:minecraft:beetroot_seeds>);
<tag:items:c:seeds/melon>.add(<item:minecraft:melon_seeds>);
<tag:items:c:seeds/pumpkin>.add(<item:minecraft:pumpkin_seeds>);
<tag:items:c:seeds/wheat>.add(<item:minecraft:wheat_seeds>);


seeds.add(<item:betterend:amber_root_seed>);
seeds.add(<item:betterend:blossom_berry_seed>);
seeds.add(<item:betterend:blue_vine_seed>);
seeds.add(<item:betterend:bulb_vine_seed>);
seeds.add(<item:betterend:cave_pumpkin_seed>);
seeds.add(<item:betterend:chorus_mushroom_seed>);
seeds.add(<item:betterend:end_lily_seed>);
seeds.add(<item:betterend:end_lotus_seed>);
seeds.add(<item:betterend:glowing_pillar_seed>);
seeds.add(<item:betterend:lanceleaf_seed>);
seeds.add(<item:betterend:lumecorn_seed>);
seeds.add(<item:betterend:shadow_berry>);


seeds.add(<item:betternether:agave>);
seeds.add(<item:betternether:black_apple_seed>);
seeds.add(<item:betternether:eye_seed>);
seeds.add(<item:betternether:golden_lumabus_seed>);
seeds.add(<item:betternether:ink_bush_seed>);
seeds.add(<item:betternether:lumabus_seed>);
seeds.add(<item:betternether:magma_flower>);
seeds.add(<item:betternether:whispering_gourd_vine>);


seeds.add(<item:nears:faar_seeds>);
seeds.add(<item:nears:near_seeds>);
seeds.add(<item:nears:soul_seeds>);

seeds.add(<item:supplementaries:flax_seeds>);


seeds.add(<item:skylorlib:golden_seeds_item>);
<tag:items:c:seeds/wheat>.add(<item:skylorlib:golden_seeds_item>);
<tag:items:c:seeds/golden_wheat>.add(<item:skylorlib:golden_seeds_item>);





# Raw Meats
val meat = <tag:items:vanilla:raw_meat>;
val fish = <tag:items:c:raw_fishes>;

meat.add(<item:minecraft:beef>);
meat.add(<item:minecraft:chicken>);
meat.add(<item:minecraft:mutton>);
meat.add(<item:minecraft:porkchop>);
meat.add(<item:minecraft:rabbit>);

meat.add(<item:culturaldelights:glow_squid>);
meat.add(<item:culturaldelights:squid>);

meat.add(<item:farmersdelight:bacon>);
meat.add(<item:farmersdelight:chicken_cuts>);
meat.add(<item:farmersdelight:mutton_chops>);
meat.add(<item:farmersdelight:ham>);

meat.add(<item:ecologics:crab_meat>);

meat.add(<item:ends_delight:shulker_meat>);
meat.add(<item:ends_delight:shulker_meat_slice>);
meat.add(<item:ends_delight:raw_dragon_meat>);
meat.add(<item:ends_delight:raw_dragon_meat_cuts>);
meat.add(<item:ends_delight:raw_ender_mite_meat>);

meat.add(<item:nethersdelight:hoglin_loin>);

meat.add(fish);



fish.add(<item:culturaldelights:glow_squid>);
fish.add(<item:culturaldelights:squid>);

fish.add(<item:ecologics:crab_meat>);

fish.add(<item:hybrid-aquatic:raw_crab_meat>);
fish.add(<item:hybrid-aquatic:raw_fish_meat>);
fish.add(<item:hybrid-aquatic:raw_tentacle>);


<tag:items:c:raw_squid>.add(<item:hybrid-aquatic:raw_tentacle>);
<tag:items:c:raw_crab>.add(<item:ecologics:crab_meat>);
<tag:items:c:raw_crab>.add(<item:hybrid-aquatic:raw_crab_meat>);





# Biomass Materials
val biomass = <tag:items:vanilla:biomass_materials>;

biomass.add(<item:minecraft:apple>);
biomass.add(<item:minecraft:bamboo>);
biomass.add(<item:minecraft:carved_pumpkin>);
biomass.add(<item:minecraft:chorus_fruit>);
biomass.add(<item:minecraft:dried_kelp>);
biomass.add(<item:minecraft:egg>);
biomass.add(<item:minecraft:glow_berries>);
biomass.add(<item:minecraft:honey_bottle>);
biomass.add(<item:minecraft:honeycomb>);
biomass.add(<item:minecraft:kelp>);
biomass.add(<item:minecraft:poisonous_potato>);
biomass.add(<item:minecraft:sea_pickle>);
biomass.add(<item:minecraft:seagrass>);
biomass.add(<item:minecraft:shulker_shell>);
biomass.add(<item:minecraft:sugar_cane>);
biomass.add(<item:minecraft:sweet_berries>);
biomass.add(<item:minecraft:twisting_vines>);
biomass.add(<item:minecraft:vine>);
biomass.add(<item:minecraft:weeping_vines>);

biomass.add(<item:betterend:lumecorn_rod>);
biomass.add(<item:betternether:black_apple>);

biomass.add(<item:ecologics:seashell>);
biomass.add(<item:ecologics:walnut>);
biomass.add(<item:ends_delight:chorus_fruit_grain>);

biomass.add(<item:farmersdelight:rotten_tomato>);
biomass.add(<item:farmersdelight:straw>);
biomass.add(<item:farmersdelight:tree_bark>);


biomass.add(crops);
biomass.add(seeds);
biomass.add(<tag:items:c:dyes>);
biomass.add(<tag:items:minecraft:flowers>);
biomass.add(<tag:items:minecraft:saplings>);
biomass.add(<tag:items:vanilla:mushroom>);
biomass.add(<tag:items:vanilla:fungus>);





# Meaty Clump Materials
val clump = <tag:items:vanilla:meaty_clump_materials>;

clump.add(meat);

clump.add(<item:minecraft:rabbit_foot>);
clump.add(<item:minecraft:rotten_flesh>);
clump.add(<item:magehand:flesh_hand_item>);

print("0-tags-biomass.zs loaded");