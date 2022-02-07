# Adds recipes to machines from Industrial Foregoing
/*
BioReactor.add(<>);
ProteinReactor.add(<>);
*/

import mods.industrialforegoing.Extractor;
import mods.industrialforegoing.BioReactor;
import mods.industrialforegoing.ProteinReactor;

print("Loading industrial_foregoing.zs...");

# Bioreactor
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
BioReactor.add(<extrautils2:enderlilly>);

BioReactor.add(<forestry:fruits>);
BioReactor.add(<forestry:fruits:1>);
BioReactor.add(<forestry:fruits:2>);
BioReactor.add(<forestry:fruits:3>);
BioReactor.add(<forestry:fruits:4>);
BioReactor.add(<forestry:fruits:5>);
BioReactor.add(<forestry:fruits:6>);

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



# Protein Reactor
ProteinReactor.add(<natura:edibles>);
ProteinReactor.add(<forestry:beeswax>);
ProteinReactor.add(<forestry:honeydew>);
ProteinReactor.add(<forestry:honey_drop>);
ProteinReactor.add(<forestry:royal_jelly>);


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
Extractor.add(<natura:redwood_logs:2>, <fluid:latex>*2);


print("industrial_foregoing.zs loaded");