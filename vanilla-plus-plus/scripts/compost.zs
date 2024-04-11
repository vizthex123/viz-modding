# Adds items to the Compostor
print("compost.zs loading...");
/*
composter.setValue(<item>, chance);

"chance" being the chance for it to fill a layer
*/

# Biomass & Clump
composter.setValue(<item:kubejs:biomass>, 0.75);
composter.setValue(<item:kubejs:meaty_clump>, 0.7);


# Crops
composter.setValue(<item:minecraft:chorus_fruit>, 0.5);
composter.setValue(<item:minecraft:poisonous_potato>, 0.5);


# Crates
composter.setValue(<item:culturaldelights:avocado_crate>, 0.85);
composter.setValue(<item:culturaldelights:corn_cob_crate>, 0.85);
composter.setValue(<item:culturaldelights:cucumber_crate>, 0.85);
composter.setValue(<item:culturaldelights:eggplant_crate>, 0.85);
composter.setValue(<item:culturaldelights:pickle_crate>, 0.85);
composter.setValue(<item:farmersdelight:beetroot_crate>, 0.85);
composter.setValue(<item:farmersdelight:cabbage_crate>, 0.85);
composter.setValue(<item:farmersdelight:carrot_crate>, 0.85);
composter.setValue(<item:farmersdelight:onion_crate>, 0.85);
composter.setValue(<item:farmersdelight:potato_crate>, 0.85);
composter.setValue(<item:farmersdelight:tomato_crate>, 0.85);



# Raw Meats
	// Fish
composter.setValue(<item:minecraft:cod>, 0.45);
composter.setValue(<item:minecraft:pufferfish>, 0.45);
composter.setValue(<item:minecraft:salmon>, 0.45);
composter.setValue(<item:minecraft:tropical_fish>, 0.45);
composter.setValue(<item:culturaldelights:glow_squid>, 0.45);
composter.setValue(<item:culturaldelights:squid>, 0.45);
composter.setValue(<item:ecologics:crab_meat>, 0.45);
composter.setValue(<item:farmersdelight:ham>, 0.45);
composter.setValue(<item:nethersdelight:hoglin_loin>, 0.45);

	// Regular
composter.setValue(<item:minecraft:beef>, 0.35);
composter.setValue(<item:minecraft:chicken>, 0.35);
composter.setValue(<item:minecraft:mutton>, 0.35);
composter.setValue(<item:minecraft:porkchop>, 0.35);
composter.setValue(<item:minecraft:rabbit>, 0.35);

	 // Cut
composter.setValue(<item:farmersdelight:cod_slice>, 0.35);
composter.setValue(<item:farmersdelight:salmon_slice>, 0.35);
composter.setValue(<item:culturaldelights:raw_calamari>, 0.35);

composter.setValue(<item:farmersdelight:bacon>, 0.3);
composter.setValue(<item:farmersdelight:chicken_cuts>, 0.3);
composter.setValue(<item:farmersdelight:mutton_chops>, 0.3);


# Misc
composter.setValue(<item:minecraft:phantom_membrane>, 0.15);
composter.setValue(<item:minecraft:rotten_flesh>, 0.25);
composter.setValue(<item:minecraft:spider_eye>, 0.2);
composter.setValue(<item:minecraft:rabbit_foot>, 0.25);
composter.setValue(<item:minecraft:shulker_shell>, 0.4);
composter.setValue(<item:ecologics:seashell>, 0.35);
composter.setValue(<item:ecologics:walnut>, 0.30);

print("compost.zs loaded");