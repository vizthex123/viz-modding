# Adds recipes to machines from Industrial Foregoing
/*
BioReactor.add(<>);
ProteinReactor.add(<>);
*/

import mods.industrialforegoing.Extractor;
import mods.industrialforegoing.BioReactor;
import mods.industrialforegoing.ProteinReactor;

print("Loading industrial_foregoing.zs...");

# BioReactor
BioReactor.remove(<minecraft:dye:4>);

BioReactor.add(<minecraft:apple>);
BioReactor.add(<minecraft:reeds>);
BioReactor.add(<minecraft:melon>);
BioReactor.add(<minecraft:wheat>);
BioReactor.add(<minecraft:beetroot>);
BioReactor.add(<minecraft:pumpkin>);
BioReactor.add(<minecraft:poisonous_potato>);
BioReactor.add(<minecraft:chorus_fruit>);
BioReactor.add(<minecraft:waterlily>);
BioReactor.add(<extrautils2:redorchid>);

BioReactor.add(<natura:materials>);
BioReactor.add(<natura:materials:8>);
BioReactor.add(<natura:nether_sapling2>);
BioReactor.add(<natura:overworld_seeds>);
BioReactor.add(<natura:overworld_seeds:1>);
BioReactor.add(<natura:nether_glowshroom:*>);
BioReactor.add(<natura:edibles:2>);
BioReactor.add(<natura:edibles:3>);
BioReactor.add(<natura:edibles:4>);
BioReactor.add(<natura:edibles:5>);
BioReactor.add(<natura:edibles:6>);
BioReactor.add(<natura:edibles:7>);
BioReactor.add(<natura:edibles:8>);
BioReactor.add(<natura:edibles:9>);
BioReactor.add(<natura:edibles:10>);
BioReactor.add(<natura:edibles:11>);
BioReactor.add(<natura:saguaro_fruit_item>);
BioReactor.add(<natura:bluebells_flower>);
BioReactor.add(<natura:overworld_seeds>);
BioReactor.add(<natura:overworld_seeds:1>);
BioReactor.add(<natura:overworld_sapling>);
BioReactor.add(<natura:overworld_sapling:1>);
BioReactor.add(<natura:overworld_sapling:2>);
BioReactor.add(<natura:overworld_sapling:3>);
BioReactor.add(<natura:overworld_sapling2>);
BioReactor.add(<natura:overworld_sapling2:1>);
BioReactor.add(<natura:overworld_sapling2:2>);
BioReactor.add(<natura:overworld_sapling2:3>);
BioReactor.add(<natura:redwood_sapling>);
BioReactor.add(<natura:nether_sapling>);
BioReactor.add(<natura:nether_sapling:1>);
BioReactor.add(<natura:nether_sapling:2>);
BioReactor.add(<natura:nether_sapling2>);
BioReactor.add(<natura:nether_glowshroom>);
BioReactor.add(<natura:nether_glowshroom:1>);
BioReactor.add(<natura:nether_glowshroom:2>);

BioReactor.add(<biomesoplenty:honeycomb>);
BioReactor.add(<biomesoplenty:filled_honeycomb>);
BioReactor.add(<biomesoplenty:jar_filled>);
BioReactor.add(<biomesoplenty:honey_block>);

BioReactor.add(<biomesoplenty:bamboo>);
BioReactor.add(<biomesoplenty:sapling_0:2>);
BioReactor.add(<biomesoplenty:plant_1:6>);
BioReactor.add(<biomesoplenty:shroompowder>);
BioReactor.add(<biomesoplenty:berries>);
BioReactor.add(<biomesoplenty:pear>);
BioReactor.add(<biomesoplenty:peach>);
BioReactor.add(<biomesoplenty:persimmon>);
BioReactor.add(<biomesoplenty:bramble_plant>);
BioReactor.add(<biomesoplenty:plant_1:3>);
BioReactor.add(<biomesoplenty:plant_1:8>);
BioReactor.add(<biomesoplenty:plant_1:9>);

BioReactor.add(<biomesoplenty:coral>);
BioReactor.add(<biomesoplenty:coral:1>);
BioReactor.add(<biomesoplenty:coral:2>);
BioReactor.add(<biomesoplenty:coral:3>);
BioReactor.add(<biomesoplenty:coral:4>);
BioReactor.add(<biomesoplenty:seaweed>);
BioReactor.add(<biomesoplenty:waterlily>);
BioReactor.add(<biomesoplenty:waterlily:1>);
BioReactor.add(<biomesoplenty:waterlily:2>);
BioReactor.add(<biomesoplenty:waterlily:3>);

/*
BioReactor.add(<biomesoplenty:sapling_0:*>);
BioReactor.add(<biomesoplenty:sapling_1:*>);
BioReactor.add(<biomesoplenty:sapling_2:*>);
*/
BioReactor.add(<biomesoplenty:blue_dye>);
BioReactor.add(<biomesoplenty:brown_dye>);
BioReactor.add(<biomesoplenty:green_dye>);
BioReactor.add(<biomesoplenty:white_dye>);
BioReactor.add(<biomesoplenty:black_dye>);

BioReactor.add(<advancedrocketry:aliensapling>);
BioReactor.add(<advancedrocketry:electricmushroom>);



# Protein Reactor
ProteinReactor.add(<minecraft:dye>);
ProteinReactor.add(<minecraft:rabbit_foot>);
ProteinReactor.add(<natura:edibles>);
ProteinReactor.add(<biomesoplenty:fleshchunk>);
ProteinReactor.add(<biomesoplenty:double_plant:2>);



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

Extractor.remove(<natura:redwood_logs:2>);
Extractor.add(<natura:redwood_logs:2>, <fluid:latex>*1);
Extractor.add(<natura:redwood_logs:1>, <fluid:latex>*1);
Extractor.add(<natura:redwood_logs>, <fluid:latex>*1);

Extractor.add(<natura:overworld_logs>, <fluid:latex>*2);
Extractor.add(<natura:overworld_logs:1>, <fluid:latex>*2);
Extractor.add(<natura:overworld_logs:2>, <fluid:latex>*2);
Extractor.add(<natura:overworld_logs:3>, <fluid:latex>*2);

Extractor.add(<natura:overworld_logs2>, <fluid:latex>*2);
Extractor.add(<natura:overworld_logs2:1>, <fluid:latex>*2);
Extractor.add(<natura:overworld_logs2:2>, <fluid:latex>*2);
Extractor.add(<natura:overworld_logs2:3>, <fluid:latex>*2);

Extractor.remove(<biomesoplenty:log_0:4>);
Extractor.add(<biomesoplenty:log_0:4>, <fluid:latex>*5);
Extractor.add(<biomesoplenty:log_0:5>, <fluid:latex>*1);
Extractor.add(<biomesoplenty:log_0:6>, <fluid:latex>*1);
Extractor.add(<biomesoplenty:log_0:7>, <fluid:latex>*1);
Extractor.add(<biomesoplenty:log_1:4>, <fluid:latex>*3);
Extractor.add(<biomesoplenty:log_1:5>, <fluid:latex>*3);
Extractor.add(<biomesoplenty:log_1:6>, <fluid:latex>*1);
Extractor.add(<biomesoplenty:log_1:7>, <fluid:latex>*1);
Extractor.add(<biomesoplenty:log_2:4>, <fluid:latex>*2);
Extractor.add(<biomesoplenty:log_2:5>, <fluid:latex>*1);
Extractor.add(<biomesoplenty:log_2:6>, <fluid:latex>*1);
Extractor.add(<biomesoplenty:log_2:7>, <fluid:latex>*1);

Extractor.add(<biomesoplenty:log_3:4>, <fluid:latex>*1);
Extractor.add(<biomesoplenty:log_3:5>, <fluid:latex>*1);
Extractor.add(<biomesoplenty:log_3:6>, <fluid:latex>*1);
Extractor.add(<biomesoplenty:log_3:7>, <fluid:latex>*2);


/*
recipes.addShaped(<output>, [[<null>, <null>, <null>],
                                    	                    [<null>, <null>, <null>],
                                   	                    [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
recipes.remove(<item>);
recipes.removeShaped(<item>);
recipes.removeShapeless(<item>);
*/

// Should fix recipe order
recipes.removeShapeless(<industrialforegoing:black_hole_unit>);
recipes.addShapeless(<industrialforegoing:black_hole_unit>, [<industrialforegoing:black_hole_unit>]);

// Should fix recipe order
recipes.removeShapeless(<industrialforegoing:black_hole_tank>);
recipes.addShapeless(<industrialforegoing:black_hole_tank>, [<industrialforegoing:black_hole_tank>]);


print("industrial_foregoing.zs loaded");