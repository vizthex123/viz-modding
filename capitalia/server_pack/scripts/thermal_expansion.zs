# Adds new items to TE Machines/Dynamos, or removes them

import mods.thermalexpansion.Refinery;
import mods.thermalexpansion.NumisticDynamo;
import mods.thermalexpansion.MagmaticDynamo;
import mods.thermalexpansion.EnervationDynamo;
import mods.thermalexpansion.CompressionDynamo;

print("Loading thermal_expansion.zs...");

# Numismatic Dynamo
// Gems
mods.thermalexpansion.NumisticDynamo.removeGemFuel(<forestry:apatite>);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<forestry:apatite>, 10000);

mods.thermalexpansion.NumisticDynamo.addGemFuel(<extrautils2:suncrystal>.withTag({}), 1500000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<biomesoplenty:crystal_shard>, 500000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<projectred-core:resource_item:200>, 200000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<projectred-core:resource_item:201>, 200000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<projectred-core:resource_item:202>, 200000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<libvulpes:productgem>, 100000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<appliedenergistics2:material>, 25000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<appliedenergistics2:material:1>, 35000);



// Coins
// Value * 500 = RF Value
// Anything below 5k doesn't work in the dynamo
mods.thermalexpansion.NumisticDynamo.addFuel(<jjcoin:silver_coin>, 5000);
mods.thermalexpansion.NumisticDynamo.addFuel(<jjcoin:gold_coin>, 50000);
mods.thermalexpansion.NumisticDynamo.addFuel(<jjcoin:diamond_coin>, 500000);



# Magmatic Dynamo
// Searing Fuels
mods.thermalexpansion.MagmaticDynamo.addFuel(<liquid:oil_residue>, 50000);
mods.thermalexpansion.MagmaticDynamo.addFuel(<liquid:oil_heat_1>, 350000);
mods.thermalexpansion.MagmaticDynamo.addFuel(<liquid:oil_residue_heat_1>, 30000);
mods.thermalexpansion.MagmaticDynamo.addFuel(<liquid:oil_dense_heat_1>, 1200000);
mods.thermalexpansion.MagmaticDynamo.addFuel(<liquid:oil_distilled_heat_1>, 350000);
mods.thermalexpansion.MagmaticDynamo.addFuel(<liquid:fuel_dense_heat_1>, 2000000);
mods.thermalexpansion.MagmaticDynamo.addFuel(<liquid:fuel_mixed_heavy_heat_1>, 550000);
mods.thermalexpansion.MagmaticDynamo.addFuel(<liquid:fuel_light_heat_1>, 700000);
mods.thermalexpansion.MagmaticDynamo.addFuel(<liquid:fuel_mixed_light_heat_1>, 260000);
mods.thermalexpansion.MagmaticDynamo.addFuel(<liquid:fuel_gaseous_heat_1>, 150000);


# Compression Dynamo
// Hot Fuels
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:oil_residue_heat_2>, 15000);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:oil_heat_2>, 300000);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:oil_dense_heat_2>, 1000000);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:fuel_dense_heat_2>, 1600000);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:oil_distilled_heat_2>, 300000);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:fuel_dense_heat_2>, 2000000);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:fuel_mixed_heavy_heat_2>, 400000);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:fuel_light_heat_2>, 600000);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:fuel_mixed_light_heat_2>, 135000);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:fuel_gaseous_heat_2>, 125000);



# Enervation Dynamo
mods.thermalexpansion.EnervationDynamo.addFuel(<projectred-core:resource_item:105>, 88000);
mods.thermalexpansion.EnervationDynamo.addFuel(<projectred-exploration:stone:11>, 880000);




############################################################################################
#				MACHINE RECIPES					    #
############################################################################################
// Refractory Glass in the Induction Smelter
mods.thermalexpansion.InductionSmelter.addRecipe(<foundry:refractoryglass>, <ore:blockGlass>.firstItem, <minecraft:clay_ball>, 8000);
mods.thermalexpansion.InductionSmelter.addRecipe(<foundry:refractoryglass>, <ore:sand>.firstItem, <minecraft:clay_ball>*2, 6000);

// Convert Soul Sand into regular Sand
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:sand>*3, <minecraft:soul_sand>, 13666, <extrautils2:ingredients:10>, 4);

// Convert XP to Research
// Varies based on how easy it is to get that version of liquid XP
mods.thermalexpansion.Refinery.addRecipe(<fluid:liquid_research>*750, null, <liquid:experience>*4000, 12000);
mods.thermalexpansion.Refinery.addRecipe(<fluid:liquid_research>*250, null, <liquid:xpjuice>*3000, 10000);
mods.thermalexpansion.Refinery.addRecipe(<fluid:liquid_research>*500, null, <liquid:essence>*2000, 8000);
/*
// BoP Honey > Forestry Honey
mods.thermalexpansion.Refinery.addRecipe(<liquid:fluid.for.honey>*100, null, <liquid:honey>*100, 1000);
*/
// Blood > Protein (1,000 > 250)
mods.thermalexpansion.Refinery.addRecipe(<liquid:if.protein>*250, null, <liquid:blood>*1000, 6000);

// Alien Goo > Liquified Research
mods.thermalexpansion.Refinery.addRecipe(<liquid:liquid_research>*250, null, <liquid:alien_goo>*500, 8000);

// Sky Stone Dust > Alien Goo
mods.thermalexpansion.Crucible.addRecipe(<fluid:alien_goo>*100, <appliedenergistics2:material:45>, 2000);

// Alien Blaster > Alien Goo (rip alien goo blocks I guess?)
mods.thermalexpansion.Crucible.addRecipe(<fluid:alien_goo>*10000, <techguns:alienblaster:*>, 20000);

// Process Alien Bugs into Alien Goo
mods.thermalexpansion.Centrifuge.addRecipeMob(<entity:techguns:alienbug>, [<jjcoin:silver_coin>*2%100, <jjcoin:silver_coin>%50, <jjcoin:gold_coin>%10], <liquid:alien_goo>*2500, 8000, 75);

// Process Nether Wasps into Honey (because reasons lol?)
mods.thermalexpansion.Centrifuge.addRecipeMob(<entity:biomesoplenty:wasp>, [<forestry:honeydew>%25, <forestry:honey_drop>%50], <liquid:honey>*100, 5000, 50);

// Fractionate Honey > Honey Drops
mods.thermalexpansion.Refinery.addRecipe(null, <forestry:honey_drop>%25, <liquid:honey>*500, 4000);



### Research Disks
// Disk > Fluid
mods.thermalexpansion.Crucible.addRecipe(<fluid:liquid_research>*5, <contenttweaker:datadisk_stone>, 2000);
mods.thermalexpansion.Crucible.addRecipe(<fluid:liquid_research>*10, <contenttweaker:datadisk_military>, 4000);
mods.thermalexpansion.Crucible.addRecipe(<fluid:liquid_research>*15, <contenttweaker:datadisk_bronze>, 6000);
mods.thermalexpansion.Crucible.addRecipe(<fluid:liquid_research>*25, <contenttweaker:datadisk_iron>, 8000);
mods.thermalexpansion.Crucible.addRecipe(<fluid:liquid_research>*500, <contenttweaker:datadisk_industrial>, 16000);
mods.thermalexpansion.Crucible.addRecipe(<fluid:liquid_research>*1250, <contenttweaker:datadisk_machine>, 32000);
mods.thermalexpansion.Crucible.addRecipe(<fluid:liquid_research>*1500, <contenttweaker:datadisk_information>, 48000);
mods.thermalexpansion.Crucible.addRecipe(<fluid:liquid_research>*2000, <contenttweaker:datadisk_atomic>, 65536);

// Fluid > Disks
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:datadisk_industrial>, <contenttweaker:datadisk_industrial_unref>, <fluid:liquid_research>*750, 24000);
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:datadisk_machine>, <contenttweaker:datadisk_machine_unref>, <fluid:liquid_research>*1875, 48000);
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:datadisk_information>, <contenttweaker:datadisk_information_unref>, <fluid:liquid_research>*2250, 64000);

mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:datadisk_atomic>, <contenttweaker:neutron>, <fluid:liquid_research>*3000, 72000);

// Value Tooltips
<contenttweaker:datadisk_military>.addTooltip(format.gold("Can be melted into 10 mB of Liquified Research"));

<contenttweaker:datadisk_stone>.addTooltip(format.gold("Can be melted into 5 mB of Liquified Research"));
<contenttweaker:datadisk_bronze>.addTooltip(format.gold("Can be melted into 15 mB of Liquified Research"));
<contenttweaker:datadisk_iron>.addTooltip(format.gold("Can be melted into 25 mB of Liquified Research"));
<contenttweaker:datadisk_industrial>.addTooltip(format.gold("Can be melted into 500 mB of Liquified Research"));
<contenttweaker:datadisk_machine>.addTooltip(format.gold("Can be melted into 1,250 mB of Liquified Research"));
<contenttweaker:datadisk_information>.addTooltip(format.gold("Can be melted into 1,500 mB of Liquified Research"));
<contenttweaker:datadisk_atomic>.addTooltip(format.gold("Can be melted into 2,000 mB of Liquified Research"));

<techguns:alienblaster:*>.addTooltip(format.aqua("May contian remnents of the aliens who crafted this."));

# Change the recipes for the TE machines
// Pulverizer
recipes.remove(<thermalexpansion:machine>);
recipes.addShaped(<thermalexpansion:machine:1>, [[null, <logisticalautomation:gold_motor_set>, null],
                                   			                      [<minecraft:flint>, <mekanism:machineblock>, <minecraft:flint>],
                                  				   [<ore:gearBronze>, <thermalfoundation:material:513>, <ore:gearBronze>]]);
// Redstone Furnace
recipes.remove(<thermalexpansion:machine>);
recipes.addShaped(<thermalexpansion:machine>, [[null, <logisticalautomation:iron_motor_set>, null],
                                   				[<extrautils2:ingredients:1>, <mekanism:machineblock:10>, <extrautils2:ingredients:1>],
                                  				[<ore:gearBronze>, <thermalfoundation:material:513>, <ore:gearBronze>]]);
// Induction Smelter
recipes.remove(<thermalexpansion:machine:3>);
recipes.addShaped(<thermalexpansion:machine:3>, [[null, <logisticalautomation:diamond_motor_set>, null],
                                   				 [<extrautils2:decorativeglass:5>, <mekanism:machineblock:8>, <extrautils2:decorativeglass:5>],
                                  			 	 [<ore:gearInvar>, <foundry:alloyfurnace>, <ore:gearInvar>]]);
 
print("thermal_expansion.zs loaded");