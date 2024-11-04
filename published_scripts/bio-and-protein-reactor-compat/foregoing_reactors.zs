# Adds recipes to machines from Industrial Foregoing
# Script by vizthex
# https://www.curseforge.com/members/vizthex/projects

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

# To enable Extra Utilities support, remove the slash and asterisk from the top and bottom of the 2 lines below these comments. (Comments are marked with a # at the beginning)
# You can also delete these comments if you want
# - vizthex
# (And if you need help, ask me on Discord Link on every project page - click the "wiki" button at the top near the project title]. I might also just upload a seperate version later on)
/*
BioReactor.add(<extrautils2:redorchid>);
BioReactor.add(<extrautils2:enderlilly>);
*/

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


# Tree Fluid Extractor

Extractor.remove(<natura:redwood_logs:2>);
Extractor.add(<natura:redwood_logs:2>, <fluid:latex>*2);


print("industrial_foregoing.zs loaded");