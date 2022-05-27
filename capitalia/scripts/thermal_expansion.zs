# Adds new items to TE Machines/Dynamos, or removes them

import mods.thermalexpansion.Refinery;
import mods.thermalexpansion.SteamDynamo;
import mods.thermalexpansion.NumisticDynamo;
import mods.thermalexpansion.MagmaticDynamo;
import mods.thermalexpansion.EnervationDynamo;
import mods.thermalexpansion.CompressionDynamo;

print("Loading thermal_expansion.zs...");

# Steam Dynamo
mods.thermalexpansion.SteamDynamo.removeFuel(<advancedrocketry:misc:1>);
mods.thermalexpansion.SteamDynamo.addFuel(<advancedrocketry:misc:1>, 50000);

# Numismatic Dynamo
// Gems
mods.thermalexpansion.NumisticDynamo.removeGemFuel(<forestry:apatite>);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<forestry:apatite>, 10000);

mods.thermalexpansion.NumisticDynamo.addGemFuel(<extrautils2:suncrystal>, 1500000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<biomesoplenty:crystal_shard>, 1000000);
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
mods.thermalexpansion.MagmaticDynamo.addFuel(<liquid:enrichedlava>, 250000);


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
mods.thermalexpansion.EnervationDynamo.addFuel(<techguns:itemshared:97>, 25000);
mods.thermalexpansion.EnervationDynamo.addFuel(<techguns:itemshared:98>, 1000000);

# Change the recipe for the Magmatic Dynamo
recipes.remove(<thermalexpansion:dynamo:1>);
mods.extendedcrafting.TableCrafting.addShaped(0, <thermalexpansion:dynamo:1>, 
	[[null, <thermalfoundation:material:514>, null], 
	[<mekanism:ingot:4>, <thermalfoundation:material:290>, <mekanism:ingot:4>], 
	[<thermalfoundation:material:354>, <projectred-core:resource_item:104>, <thermalfoundation:material:354>]]);

############################################################################################
#				MACHINE RECIPES					    #
############################################################################################
// Convert Universal Cables into Fluxducts
recipes.addShaped(<thermaldynamics:duct_0>*4, [[null, null, null],
                                      [<mekanism:transmitter>.withTag({tier: 0}), <thermalfoundation:material:131>, <mekanism:transmitter>.withTag({tier: 0})],
                                      [null, null, null]]);

recipes.addShaped(<thermaldynamics:duct_0:1>*4, [[null, null, null],
                                      [<mekanism:transmitter>.withTag({tier: 1}), <thermalfoundation:material:162>, <mekanism:transmitter>.withTag({tier: 1})],
                                      [null, null, null]]);

mods.thermalexpansion.Transposer.addFillRecipe(<thermaldynamics:duct_0:3>*2, <mekanism:transmitter>.withTag({tier: 2}), <liquid:redstone>*100, 1000);

mods.thermalexpansion.Transposer.addFillRecipe(<thermaldynamics:duct_0:4>*2, <mekanism:transmitter>.withTag({tier: 3}), <liquid:ender>*100, 1000);

// Fixes ores in the Pulverizer
mods.thermalexpansion.Pulverizer.removeRecipe(<libvulpes:ore0>);
#mods.thermalexpansion.Pulverizer.removeRecipe(<libvulpes:ore0:8>);
mods.thermalexpansion.Pulverizer.removeRecipe(<mekanism:oreblock>);
mods.thermalexpansion.Pulverizer.removeRecipe(<magneticraft:ores:3>);
#mods.thermalexpansion.Pulverizer.removeRecipe(<techguns:basicore:3>);
mods.thermalexpansion.Pulverizer.removeRecipe(<techguns:basicore:4>);

mods.thermalexpansion.Pulverizer.addRecipe(<mekanism:dust:2>*2, <mekanism:oreblock>, 4000);
mods.thermalexpansion.Pulverizer.addRecipe(<magneticraft:dusts:5>*2, <magneticraft:ores:3>, 4000, <minecraft:coal>, 15);
mods.thermalexpansion.Pulverizer.addRecipe(<libvulpes:productgem>, <libvulpes:ore0>, 4000, <libvulpes:productgem>, 50);
#mods.thermalexpansion.Pulverizer.addRecipe(<libvulpes:productdust:7>*2, <libvulpes:ore0:8>, 4000, <magneticraft:dusts:5>, 20);
mods.thermalexpansion.Pulverizer.addRecipe(<libvulpes:productdust:7>*2, <techguns:basicore:3>, 4000, <magneticraft:dusts:5>, 20);
mods.thermalexpansion.Pulverizer.addRecipe(<techguns:itemshared:97>*2, <techguns:basicore:4>, 4000, <techguns:itemshared:97>, 10);


// Upgrade Chargepads into Energetic Infusers
recipes.addShaped(<thermalexpansion:machine:9>, [[null, <thermalfoundation:material:515>, null], 
	[<projectred-core:resource_item:105>, <mekanism:machineblock:14>, <projectred-core:resource_item:105>], 
	[<thermalfoundation:material:261>, <thermalfoundation:material:161>, <thermalfoundation:material:261>]]);

 // Combine light plates into regular ones
mods.thermalexpansion.Compactor.addPressRecipe(<thermalfoundation:material:32>, <magneticraft:light_plates>*4, 4000);
mods.thermalexpansion.Compactor.addPressRecipe(<thermalfoundation:material:33>, <magneticraft:light_plates:1>*4, 4000);
mods.thermalexpansion.Compactor.addPressRecipe(<thermalfoundation:material:320>, <magneticraft:light_plates:2>*4, 4000);
mods.thermalexpansion.Compactor.addPressRecipe(<thermalfoundation:material:323>, <magneticraft:light_plates:3>*4, 4000);
# Tungsten skipped since there's no (useful) plate version
mods.thermalexpansion.Compactor.addPressRecipe(<thermalfoundation:material:352>, <magneticraft:light_plates:6>*4, 4000);

// Refractory Glass in the Induction Smelter
mods.thermalexpansion.InductionSmelter.addRecipe(<foundry:refractoryglass>, <ore:blockGlass>.firstItem, <minecraft:clay_ball>, 4000);
mods.thermalexpansion.InductionSmelter.addRecipe(<foundry:refractoryglass>, <ore:sand>.firstItem, <minecraft:clay_ball>*2, 8000);

// Convert Soul Sand into regular Sand
// Each number in the recipe is a reference to one considered "unlucky" (except for the sand result, that's for balance)
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:sand>*2, <minecraft:soul_sand>, 13666, <extrautils2:ingredients:10>, 4);

// Convert XP to Research
// Varies based on how easy it is to get that version of liquid XP
mods.thermalexpansion.Refinery.addRecipe(<fluid:research>*750, null, <liquid:experience>*4000, 12000);
mods.thermalexpansion.Refinery.addRecipe(<fluid:research>*250, null, <liquid:xpjuice>*3000, 10000);
mods.thermalexpansion.Refinery.addRecipe(<fluid:research>*500, null, <liquid:essence>*2000, 8000);
/*
// BoP Honey > Forestry Honey
mods.thermalexpansion.Refinery.addRecipe(<liquid:fluid.for.honey>*100, null, <liquid:honey>*100, 1000);
*/

// Process Nether Wasps into Honey (because reasons lol?)
mods.thermalexpansion.Centrifuge.addRecipeMob(<entity:biomesoplenty:wasp>, [<forestry:honeydew>%25, <forestry:honey_drop>%50], <liquid:honey>*100, 5000, 50);

// Fractionate Honey > Honey Drops
mods.thermalexpansion.Refinery.addRecipe(null, <forestry:honey_drop>%25, <liquid:honey>*500, 4000);

// Blood > Protein (1,000 > 250)
mods.thermalexpansion.Refinery.addRecipe(<liquid:if.protein>*250, null, <liquid:blood>*1000, 6000);


# Process workaround items into their fluids
mods.thermalexpansion.Crucible.addRecipe(<fluid:alien_goo>*1000, <contenttweaker:alien_goo_sample>, 4000);
mods.thermalexpansion.Crucible.addRecipe(<fluid:hell_goo>*1000, <contenttweaker:hell_goo_sample>, 4000);

### Alien & Hellish Goo Recipes ###
// Alien Goo > Liquified Research
mods.thermalexpansion.Refinery.addRecipe(<liquid:research>*250, null, <liquid:alien_goo>*500, 8000);

// Sky Stone > Alien Goo
mods.thermalexpansion.Crucible.addRecipe(<liquid:alien_goo>*50, <appliedenergistics2:sky_stone_block>, 3000);

mods.thermalexpansion.Crucible.addRecipe(<liquid:alien_goo>*50, <appliedenergistics2:smooth_sky_stone_block>, 1500);

// Sky Stone Dust > Alien Goo
mods.thermalexpansion.Crucible.addRecipe(<liquid:alien_goo>*100, <appliedenergistics2:material:45>, 2000);

// Sky Stone Chests > Alien Goo
mods.thermalexpansion.Crucible.addRecipe(<liquid:alien_goo>*500, <appliedenergistics2:sky_stone_chest>, 4000);

mods.thermalexpansion.Crucible.addRecipe(<liquid:alien_goo>*500, <appliedenergistics2:smooth_sky_stone_chest>, 2000);

// Alien Blaster > Alien Goo (rip alien goo blocks I guess?)
mods.thermalexpansion.Crucible.addRecipe(<fluid:alien_goo>*10000, <techguns:alienblaster:*>, 20000);

// Process Alien Bugs into Alien Goo
mods.thermalexpansion.Centrifuge.addRecipeMob(<entity:techguns:alienbug>, [<jjcoin:silver_coin>*2%100, <jjcoin:silver_coin>%50, <jjcoin:gold_coin>%10], <liquid:alien_goo>*2500, 8000, 75);
##########
// Hellish Viscera > Liquified Research
mods.thermalexpansion.Refinery.addRecipe(<liquid:research>*250, null, <liquid:hell_goo>*1000, 16000);

// Process Imp Leather into Hellish Viscera
mods.thermalexpansion.Crucible.addRecipe(<fluid:hell_goo>*500, <natura:materials:6>, 5000);

// Process Nether Armour into Hellish Viscera
mods.thermalexpansion.Crucible.addRecipe(<fluid:hell_goo>*5000, <techguns:t4_praetor_helmet:*>, 10000);
mods.thermalexpansion.Crucible.addRecipe(<fluid:hell_goo>*8000, <techguns:t4_praetor_chestplate:*>, 16000);
mods.thermalexpansion.Crucible.addRecipe(<fluid:hell_goo>*7000, <techguns:t4_praetor_leggings:*>, 14000);
mods.thermalexpansion.Crucible.addRecipe(<fluid:hell_goo>*4000, <techguns:t4_praetor_boots:*>, 8000);

// Process Nether Blasters into Hellish Viscera
mods.thermalexpansion.Crucible.addRecipe(<fluid:hell_goo>*10000, <techguns:netherblaster:*>, 16000);

// Process Nether Charges into Hellish Viscera
mods.thermalexpansion.Crucible.addRecipe(<fluid:hell_goo>*1000, <techguns:itemshared:76>, 8000);

// Process Cybernetic Parts into Hellish Viscera
mods.thermalexpansion.Crucible.addRecipe(<fluid:hell_goo>*2000, <techguns:itemshared:69>, 8000);

// Process Cyberdemons into Hellish Viscera
mods.thermalexpansion.Centrifuge.addRecipeMob(<entity:techguns:cyberdemon>, [<techguns:itemshared:69>*2%75, <jjcoin:diamond_coin>%10, <jjcoin:gold_coin>*2%100, <jjcoin:silver_coin>*5%100], <liquid:hell_goo>*10000, 16000, 100);

##################################################

### Research Disks
// Disk > Fluid
mods.thermalexpansion.Crucible.addRecipe(<fluid:research>*5, <contenttweaker:datadisk_stone>, 2000);
mods.thermalexpansion.Crucible.addRecipe(<fluid:research>*10, <contenttweaker:datadisk_military>, 4000);
mods.thermalexpansion.Crucible.addRecipe(<fluid:research>*15, <contenttweaker:datadisk_bronze>, 6000);
mods.thermalexpansion.Crucible.addRecipe(<fluid:research>*25, <contenttweaker:datadisk_iron>, 8000);
mods.thermalexpansion.Crucible.addRecipe(<fluid:research>*500, <contenttweaker:datadisk_industrial>, 16000);
mods.thermalexpansion.Crucible.addRecipe(<fluid:research>*1250, <contenttweaker:datadisk_machine>, 32000);
mods.thermalexpansion.Crucible.addRecipe(<fluid:research>*1500, <contenttweaker:datadisk_information>, 48000);
mods.thermalexpansion.Crucible.addRecipe(<fluid:research>*2000, <contenttweaker:datadisk_atomic>, 65536);

// Fluid > Disks
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:datadisk_industrial>, <contenttweaker:datadisk_industrial_unref>, <fluid:research>*750, 24000);
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:datadisk_machine>, <contenttweaker:datadisk_machine_unref>, <fluid:research>*2000, 48000);
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:datadisk_information>, <contenttweaker:datadisk_information_unref>, <fluid:research>*2500, 64000);

mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:datadisk_atomic>, <contenttweaker:neutron>, <fluid:research>*3000, 72000);
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:datadisk_atomic>, <contenttweaker:electron>, <fluid:research>*4000, 64000);
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:datadisk_atomic>, <contenttweaker:proton>, <fluid:research>*4000, 48000);

// Value Tooltips
<contenttweaker:datadisk_military>.addTooltip(format.gold("Can be melted into 10 mB of Liquified Research"));

<contenttweaker:datadisk_stone>.addTooltip(format.gold("Can be melted into 5 mB of Liquified Research"));
<contenttweaker:datadisk_bronze>.addTooltip(format.gold("Can be melted into 15 mB of Liquified Research"));
<contenttweaker:datadisk_iron>.addTooltip(format.gold("Can be melted into 25 mB of Liquified Research"));
<contenttweaker:datadisk_industrial>.addTooltip(format.gold("Can be melted into 500 mB of Liquified Research"));
<contenttweaker:datadisk_machine>.addTooltip(format.gold("Can be melted into 1,250 mB of Liquified Research"));
<contenttweaker:datadisk_information>.addTooltip(format.gold("Can be melted into 1,500 mB of Liquified Research"));
<contenttweaker:datadisk_atomic>.addTooltip(format.gold("Can be melted into 2,000 mB of Liquified Research"));

<techguns:alienblaster:*>.addTooltip(format.aqua("May contian remnants of the aliens who crafted this."));

# Change the recipes for the TE machines
// Pulverizer
recipes.addShaped(<thermalexpansion:machine:1>, [[null, <logisticalautomation:gold_motor_set>, null],
                                   			                      [<minecraft:flint>, <mekanism:machineblock>, <minecraft:flint>],
                                  				   [<ore:gearBronze>, <thermalfoundation:material:513>, <ore:gearBronze>]]);
// Redstone Furnace
recipes.addShaped(<thermalexpansion:machine>, [[null, <logisticalautomation:iron_motor_set>, null],
                                   				[<extrautils2:ingredients:1>, <mekanism:machineblock:10>, <extrautils2:ingredients:1>],
                                  				[<ore:gearBronze>, <thermalfoundation:material:513>, <ore:gearBronze>]]);
// Induction Smelter
recipes.remove(<thermalexpansion:machine:3>);
recipes.addShaped(<thermalexpansion:machine:3>, [[null, <logisticalautomation:diamond_motor_set>, null],
                                   				 [<extrautils2:decorativeglass:5>, <mekanism:machineblock:8>, <extrautils2:decorativeglass:5>],
                                  			 	 [<ore:gearInvar>, <foundry:alloyfurnace>, <ore:gearInvar>]]);
 
print("thermal_expansion.zs loaded");