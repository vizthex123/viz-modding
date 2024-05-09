# Adds recipes to machines from Industrial Foregoing
/*
ProteinReactor.add(<item>);
*/

import mods.industrialforegoing.Extractor;
import mods.industrialforegoing.BioReactor;
import mods.industrialforegoing.ProteinReactor;

print("Loading industrial_foregoing.zs...");



# BioReactor
BioReactor.add(<minecraft:wheat>);
BioReactor.add(<natura:materials>);
BioReactor.add(<mysticalworld:gall_apple>);
BioReactor.add(<mysticalworld:aubergine>);
BioReactor.add(<mysticalworld:aubergine_seed>);
BioReactor.add(<actuallyadditions:item_coffee_beans>);
BioReactor.add(<xlfoodmod:rice_seeds>);
BioReactor.add(<xlfoodmod:tomato_seeds>);
BioReactor.add(<xlfoodmod:strawberry_seeds>);
BioReactor.add(<xlfoodmod:cucumber_seeds>);
BioReactor.add(<xlfoodmod:lettuce_seeds>);
BioReactor.add(<xlfoodmod:corn_seeds>);
BioReactor.add(<xlfoodmod:pepper_seeds>);
BioReactor.add(<xlfoodmod:vanilla_flower>);
BioReactor.add(<theaurorian:lavenderseeds>);
BioReactor.add(<theaurorian:lavender>);
BioReactor.add(<theaurorian:silkberry>);
BioReactor.add(<theaurorian:weepingwillowsap>);

BioReactor.add(<theaurorian:weepingwillowsapling>);
BioReactor.add(<theaurorian:silentwoodsapling>);
BioReactor.add(<stygian:endcanopysapling>);
BioReactor.add(<aether_legacy:skyroot_sapling>);
BioReactor.add(<aether_legacy:golden_oak_sapling>);
BioReactor.add(<twilightforest:twilight_sapling>);
BioReactor.add(<twilightforest:twilight_sapling:1>);
BioReactor.add(<twilightforest:twilight_sapling:2>);
BioReactor.add(<twilightforest:twilight_sapling:3>);
BioReactor.add(<twilightforest:twilight_sapling:4>);
BioReactor.add(<twilightforest:twilight_sapling:5>);
BioReactor.add(<twilightforest:twilight_sapling:6>);
BioReactor.add(<twilightforest:twilight_sapling:7>);
BioReactor.add(<twilightforest:twilight_sapling:8>);
BioReactor.add(<twilightforest:twilight_sapling:9>);

BioReactor.add(<traverse:red_autumnal_sapling>);
BioReactor.add(<traverse:brown_autumnal_sapling>);
BioReactor.add(<traverse:orange_autumnal_sapling>);
BioReactor.add(<traverse:yellow_autumnal_sapling>);
BioReactor.add(<traverse:fir_sapling>);


# Protein Reactor
ProteinReactor.add(<mysticalworld:raw_squid>);
ProteinReactor.add(<mysticalworld:venison>);
ProteinReactor.add(<theaurorian:strangemeat>);
ProteinReactor.add(<theaurorian:aurorianpork>);
ProteinReactor.add(<theaurorian:aurorianbacon>);
ProteinReactor.add(<netherex:ghast_meat_raw>);
ProteinReactor.add(<twilightforest:raw_meef>);
ProteinReactor.add(<twilightforest:raw_venison>);
ProteinReactor.add(<twilightforest:hydra_chop>);



# Tree Fluid Extractor
/*
Note: Input must be a block (any kind)

Extractor.remove(<input>);

Extractor.add(<input>, <fluid_output*>);
* output is X mB/5 ticks

1 mB = ~1600
2 mB = ~3200
3 mB = ~4800
4 mB = ~6400
5 mB = ~8000
*/

Extractor.add(<theaurorian:silentwoodlog>, <fluid:latex>*1);
Extractor.add(<theaurorian:weepingwillowlog>, <fluid:latex>*1);
Extractor.add(<traverse:fir_log>, <fluid:latex>*1);
Extractor.add(<aether_legacy:aether_log>, <fluid:latex>*1);
Extractor.add(<aether_legacy:aether_log:1>, <fluid:latex>*2);

Extractor.add(<twilightforest:twilight_log>, <fluid:latex>*1);
Extractor.add(<twilightforest:twilight_log:1>, <fluid:latex>*1);
Extractor.add(<twilightforest:twilight_log:2>, <fluid:latex>*3);
Extractor.add(<twilightforest:twilight_log:3>, <fluid:latex>*2);

Extractor.add(<twilightforest:magic_log>, <fluid:latex>*4);
Extractor.add(<twilightforest:magic_log:1>, <fluid:latex>*4);
Extractor.add(<twilightforest:magic_log:2>, <fluid:latex>*4);
Extractor.add(<twilightforest:magic_log:3>, <fluid:latex>*4);


Extractor.remove(<stygian:endlog>);
Extractor.remove(<natura:redwood_logs:2>);
Extractor.add(<stygian:endlog>, <fluid:latex>*5);
Extractor.add(<natura:redwood_logs:2>, <fluid:latex>*2);

/*
recipes.addShaped(<output>, [[<null>, <null>, <null>],
                                    	                    [<null>, <null>, <null>],
                                   	                    [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
recipes.remove(<item>);
recipes.removeShaped(<item>);
recipes.removeShapeless(<item>);
*/


# Change the recipes for Black Hole blocks
recipes.remove(<industrialforegoing:black_hole_controller_reworked>);
recipes.remove(<industrialforegoing:black_hole_tank>);
recipes.remove(<industrialforegoing:black_hole_unit>);

// Controller
recipes.addShaped(<industrialforegoing:black_hole_controller_reworked>, [[<industrialforegoing:plastic>, <ore:gemBlockValuable>, <industrialforegoing:plastic>],
                                    	       				                          [<bloodmagic:slate:2>, <storagedrawers:controller>, <bloodmagic:slate:2>],
                                   	            				    	      [<botania:manaresource:7>, <thermalexpansion:frame>, <botania:manaresource:7>]]);
// Tank
recipes.addShaped(<industrialforegoing:black_hole_tank>, [[<industrialforegoing:plastic>, <industrialforegoing:plastic>, <industrialforegoing:plastic>],
                                    	          			               [<botania:manaresource:7>, <enderstorage:ender_storage:1>, <botania:manaresource:7>],
                                   	                			               [<theaurorian:ceruleanbucket>, <thermalexpansion:frame>, <theaurorian:ceruleanbucket>]]);
// Unit (Chest)
recipes.addShaped(<industrialforegoing:black_hole_unit>, [[<industrialforegoing:plastic>, <industrialforegoing:plastic>, <industrialforegoing:plastic>],
                                    	                  			              [<bloodmagic:slate:3>, <enderstorage:ender_storage>, <bloodmagic:slate:3>],
                                   	             			              [<ore:advancedChest>, <thermalexpansion:frame>, <ore:advancedChest>]]);

// Should fix recipe order
recipes.removeShapeless(<industrialforegoing:black_hole_unit>);
recipes.addShapeless(<industrialforegoing:black_hole_unit>, [<industrialforegoing:black_hole_unit>]);

// Should fix recipe order
recipes.removeShapeless(<industrialforegoing:black_hole_tank>);
recipes.addShapeless(<industrialforegoing:black_hole_tank>, [<industrialforegoing:black_hole_tank>]);

print("industrial_foregoing.zs loaded");