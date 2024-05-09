# Changes fuel values in Thermal Expansion's dynamos

import mods.thermalexpansion.NumisticDynamo;
import mods.thermalexpansion.EnervationDynamo;

print("te_dynamos.zs loading...");

// Mostly for the coins, but changes some Gems to maintain balance
/*
mods.thermalexpansion.NumisticDynamo.removeFuel(<item>);
mods.thermalexpansion.NumisticDynamo.addFuel(<item>, RF Amount);


mods.thermalexpansion.NumisticDynamo.removeGemFuel(<item>);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<item>, RF Amount);

Gem Fuel is for Lapidary Calibration augment

mods.thermalexpansion.EnervationDynamo.addFuel(<item>, RF);
*/


# Enervation Dynamo
mods.thermalexpansion.EnervationDynamo.addFuel(<projectred-core:resource_item:105>, 88000);
mods.thermalexpansion.EnervationDynamo.addFuel(<projectred-exploration:stone:11>, 880000);

mods.thermalexpansion.EnervationDynamo.addFuel(<minecraft:dragon_egg>, 50000000);
mods.thermalexpansion.EnervationDynamo.addFuel(<minecraft:totem_of_undying>, 25000000);
mods.thermalexpansion.EnervationDynamo.addFuel(<minecraft:golden_apple:1>, 10000000);
mods.thermalexpansion.EnervationDynamo.addFuel(<scalinghealth:heartcontainer>, 250000);
mods.thermalexpansion.EnervationDynamo.addFuel(<scalinghealth:heartdust>, 6000);
mods.thermalexpansion.EnervationDynamo.addFuel(<glacidus:residuum>, 15000);



# Numismatic Dynamo
mods.thermalexpansion.NumisticDynamo.addFuel(<contenttweaker:chip50>, 5000);
mods.thermalexpansion.NumisticDynamo.addFuel(<contenttweaker:chip100>, 10000);
mods.thermalexpansion.NumisticDynamo.addFuel(<contenttweaker:sol_chip>, 250000);

// Lapidary Calibration
mods.thermalexpansion.NumisticDynamo.removeGemFuel(<redstonearsenal:material:160>);

mods.thermalexpansion.NumisticDynamo.addGemFuel(<contenttweaker:pulsaton_sliver>, 50000);

mods.thermalexpansion.NumisticDynamo.addGemFuel(<byg:light_blue_crystals>, 30000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<byg:white_crystals>, 30000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<byg:purple_crystals>, 30000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<byg:red_crystals>, 30000);

mods.thermalexpansion.NumisticDynamo.addGemFuel(<glacidus:glacidite_fragment>, 1500000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<glacidus:small_crystal>, 100000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<glacidus:opesium>, 75000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<glacidus:eukeite>, 25000);

mods.thermalexpansion.NumisticDynamo.addGemFuel(<mystcraft:blockcrystal>, 100000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<rftools:dimensional_shard>, 200000);

print("te_dynamos.zs loaded");