# Changes things related to Thermal Expansion
// Mostly for Gems, but changes some Coins to maintain balance
/*
recipes.addShaped(<output>, [[<null>, <null>, <null>],
                                      [<null>, <null>, <null>],
                                      [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);

mods.thermalexpansion.NumisticDynamo.removeFuel(<item>);
mods.thermalexpansion.NumisticDynamo.removeGemFuel(<item>);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<item>, RF Amount);
mods.thermalexpansion.NumisticDynamo.addFuel(<item>, RF Amount);

Gem Fuel is for Lapidary Calibration augment

mods.thermalexpansion.Sawmill.addRecipe(<output>, <input>, RFCost, <OUTPUT>, OUTPUT2CHANCE*);
mods.thermalexpansion.InductionSmelter.addRecipe(<output>, <input1>, <input2>, RFCost, <OUTPUT2>, OUTPUT2CHANCE*);

* Number = % chance

mods.thermalexpansion.Refinery.addRecipe(<output>, <outputItem*>, <fluid_input>, energy)

* The item to output, can add % NUM to give exact % chance. Defaults to 100%
*/

import mods.thermalexpansion.NumisticDynamo;
import mods.thermalexpansion.MagmaticDynamo;
import mods.thermalexpansion.EnervationDynamo;
import mods.thermalexpansion.CompressionDynamo;

print("Loading thermal_expansion.zs...");

# Numismatic Dynamo
// Gems
mods.thermalexpansion.NumisticDynamo.removeGemFuel(<forestry:apatite>);
#	mods.thermalexpansion.NumisticDynamo.removeGemFuel(<mysticalworld:amethyst_gem>);
mods.thermalexpansion.NumisticDynamo.removeGemFuel(<redstonearsenal:material:160>);

mods.thermalexpansion.NumisticDynamo.addGemFuel(<forestry:apatite>, 5000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<ebwizardry:crystal_shard>, 2775);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<ebwizardry:magic_crystal>, 25000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<ebwizardry:magic_crystal:1>, 225000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<ebwizardry:magic_crystal:2>, 225000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<ebwizardry:magic_crystal:3>, 225000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<ebwizardry:magic_crystal:4>, 225000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<ebwizardry:magic_crystal:5>, 225000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<ebwizardry:magic_crystal:6>, 225000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<ebwizardry:magic_crystal:7>, 235000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<ebwizardry:grand_crystal>, 5000000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<netherex:amethyst_crystal>, 1500000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<netherex:rime_crystal>, 1250000);
#	mods.thermalexpansion.NumisticDynamo.addGemFuel(<mysticalworld:amethyst_gem>, 1350000);

mods.thermalexpansion.NumisticDynamo.addGemFuel(<aether_legacy:ambrosium_shard>, 100000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<aether_legacy:zanite_gemstone>, 200000);

mods.thermalexpansion.NumisticDynamo.addGemFuel(<extrautils2:suncrystal>.withTag({}), 1250000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<actuallyadditions:item_misc:5>, 20000);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<theaurorian:crystal>, 50000);

mods.thermalexpansion.NumisticDynamo.addFuel(<ebwizardry:astral_diamond>, 10000000);
mods.thermalexpansion.NumisticDynamo.addFuel(<ordinarycoins:coinsilver>, 5000);
mods.thermalexpansion.NumisticDynamo.addFuel(<ordinarycoins:coingold>, 10000);
mods.thermalexpansion.NumisticDynamo.addFuel(<ordinarycoins:coinplatinum>, 50000);



// TE Coins
print("Coin value tooltips are in thermal_expansion.zs");
mods.thermalexpansion.NumisticDynamo.removeFuel(<thermalfoundation:coin>);
mods.thermalexpansion.NumisticDynamo.removeFuel(<thermalfoundation:coin:1>);
mods.thermalexpansion.NumisticDynamo.removeFuel(<thermalfoundation:coin:64>);
mods.thermalexpansion.NumisticDynamo.removeFuel(<thermalfoundation:coin:65>);
mods.thermalexpansion.NumisticDynamo.removeFuel(<thermalfoundation:coin:66>);
mods.thermalexpansion.NumisticDynamo.removeFuel(<thermalfoundation:coin:67>);
mods.thermalexpansion.NumisticDynamo.removeFuel(<thermalfoundation:coin:68>);
mods.thermalexpansion.NumisticDynamo.removeFuel(<thermalfoundation:coin:69>);
mods.thermalexpansion.NumisticDynamo.removeFuel(<thermalfoundation:coin:70>);
mods.thermalexpansion.NumisticDynamo.removeFuel(<thermalfoundation:coin:71>);
mods.thermalexpansion.NumisticDynamo.removeFuel(<thermalfoundation:coin:72>);
mods.thermalexpansion.NumisticDynamo.removeFuel(<thermalfoundation:coin:96>);
mods.thermalexpansion.NumisticDynamo.removeFuel(<thermalfoundation:coin:97>);
mods.thermalexpansion.NumisticDynamo.removeFuel(<thermalfoundation:coin:98>);
mods.thermalexpansion.NumisticDynamo.removeFuel(<thermalfoundation:coin:99>);
mods.thermalexpansion.NumisticDynamo.removeFuel(<thermalfoundation:coin:100>);
mods.thermalexpansion.NumisticDynamo.removeFuel(<thermalfoundation:coin:101>);
mods.thermalexpansion.NumisticDynamo.removeFuel(<thermalfoundation:coin:102>);
mods.thermalexpansion.NumisticDynamo.removeFuel(<thermalfoundation:coin:103>);


mods.thermalexpansion.NumisticDynamo.addFuel(<thermalfoundation:coin>, 40000);
mods.thermalexpansion.NumisticDynamo.addFuel(<thermalfoundation:coin:1>, 50000);
mods.thermalexpansion.NumisticDynamo.addFuel(<thermalfoundation:coin:64>, 30000);
mods.thermalexpansion.NumisticDynamo.addFuel(<thermalfoundation:coin:65>, 30000);
mods.thermalexpansion.NumisticDynamo.addFuel(<thermalfoundation:coin:66>, 60000);
mods.thermalexpansion.NumisticDynamo.addFuel(<thermalfoundation:coin:67>, 60000);
mods.thermalexpansion.NumisticDynamo.addFuel(<thermalfoundation:coin:68>, 35000);
mods.thermalexpansion.NumisticDynamo.addFuel(<thermalfoundation:coin:69>, 60000);
mods.thermalexpansion.NumisticDynamo.addFuel(<thermalfoundation:coin:70>, 150000);
mods.thermalexpansion.NumisticDynamo.addFuel(<thermalfoundation:coin:71>, 150000);
mods.thermalexpansion.NumisticDynamo.addFuel(<thermalfoundation:coin:72>, 250000);
mods.thermalexpansion.NumisticDynamo.addFuel(<thermalfoundation:coin:96>, 95000);
mods.thermalexpansion.NumisticDynamo.addFuel(<thermalfoundation:coin:97>, 85000);
mods.thermalexpansion.NumisticDynamo.addFuel(<thermalfoundation:coin:98>, 70000);
mods.thermalexpansion.NumisticDynamo.addFuel(<thermalfoundation:coin:99>, 40000);
mods.thermalexpansion.NumisticDynamo.addFuel(<thermalfoundation:coin:100>, 75000);
mods.thermalexpansion.NumisticDynamo.addFuel(<thermalfoundation:coin:101>, 100000);
mods.thermalexpansion.NumisticDynamo.addFuel(<thermalfoundation:coin:102>, 125000);
mods.thermalexpansion.NumisticDynamo.addFuel(<thermalfoundation:coin:103>, 175000);


<thermalfoundation:coin>.addTooltip(format.green("Can be used to make 40k RF"));
<thermalfoundation:coin:1>.addTooltip(format.green("Can be used to make 50k RF"));
<thermalfoundation:coin:64>.addTooltip(format.green("Can be used to make 30k RF"));
<thermalfoundation:coin:65>.addTooltip(format.green("Can be used to make 30k RF"));
<thermalfoundation:coin:66>.addTooltip(format.green("Can be used to make 60k RF"));
<thermalfoundation:coin:67>.addTooltip(format.green("Can be used to make 60k RF"));
<thermalfoundation:coin:68>.addTooltip(format.green("Can be used to make 35k RF"));
<thermalfoundation:coin:69>.addTooltip(format.green("Can be used to make 60k RF"));
<thermalfoundation:coin:70>.addTooltip(format.green("Can be used to make 150k RF"));
<thermalfoundation:coin:71>.addTooltip(format.green("Can be used to make 150k RF"));
<thermalfoundation:coin:72>.addTooltip(format.green("Can be used to make 250k RF"));
<thermalfoundation:coin:96>.addTooltip(format.green("Can be used to make 95k RF"));
<thermalfoundation:coin:97>.addTooltip(format.green("Can be used to make 85k RF"));
<thermalfoundation:coin:98>.addTooltip(format.green("Can be used to make 70k RF"));
<thermalfoundation:coin:99>.addTooltip(format.green("Can be used to make 40k RF"));
<thermalfoundation:coin:100>.addTooltip(format.green("Can be used to make 75k RF"));
<thermalfoundation:coin:101>.addTooltip(format.green("Can be used to make 100k RF"));
<thermalfoundation:coin:102>.addTooltip(format.green("Can be used to make 125k RF"));
<thermalfoundation:coin:103>.addTooltip(format.green("Can be used to make 175k RF"));



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
mods.thermalexpansion.EnervationDynamo.addFuel(<aether_legacy:golden_amber>, 100000);
mods.thermalexpansion.EnervationDynamo.addFuel(<aether_legacy:enchanted_gravitite>, 500000);
mods.thermalexpansion.EnervationDynamo.addFuel(<projectred-core:resource_item:105>, 88000);
mods.thermalexpansion.EnervationDynamo.addFuel(<projectred-exploration:stone:11>, 880000);
mods.thermalexpansion.EnervationDynamo.addFuel(<theaurorian:trophykeeper>, 50000);
mods.thermalexpansion.EnervationDynamo.addFuel(<theaurorian:trophyspider>, 75000);
mods.thermalexpansion.EnervationDynamo.addFuel(<theaurorian:trophymoonqueen>, 100000);
mods.thermalexpansion.EnervationDynamo.addFuel(<twilightforest:trophy>, 50000);
mods.thermalexpansion.EnervationDynamo.addFuel(<twilightforest:trophy:1>, 75000);
mods.thermalexpansion.EnervationDynamo.addFuel(<twilightforest:trophy:2>, 100000);
mods.thermalexpansion.EnervationDynamo.addFuel(<twilightforest:trophy:3>, 150000);
mods.thermalexpansion.EnervationDynamo.addFuel(<twilightforest:trophy:5>, 250000);
mods.thermalexpansion.EnervationDynamo.addFuel(<twilightforest:trophy:4>, 25000);
mods.thermalexpansion.EnervationDynamo.addFuel(<twilightforest:trophy:6>, 25000);
mods.thermalexpansion.EnervationDynamo.addFuel(<twilightforest:trophy:8>, 12500);


// Chaos Essence recipes
mods.thermalexpansion.InductionSmelter.addRecipe(<elementaristics:essence:15>, <elementaristics:catalyst_entropizing>, <elementaristics:essence:9>, 15432);
mods.thermalexpansion.InductionSmelter.addRecipe(<elementaristics:essence:15>*2, <elementaristics:matter_chaotic>, <elementaristics:essence:9>, 26543);

// Change recipe for Mystical (Shiny Golden) Apples
// Might remove later, but it depends
recipes.remove(<minecraft:golden_apple:1>);
mods.thermalexpansion.InductionSmelter.addRecipe(<minecraft:golden_apple:1>, <minecraft:golden_apple>*16, <bhc:relic_apple>*8, 139264);
mods.thermalexpansion.InductionSmelter.addRecipe(<minecraft:golden_apple:1>, <extrautils2:magicapple>*32, <minecraft:golden_apple>*16, 466944);

// Convert Soul Sand into regular Sand
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:sand>*3, <minecraft:soul_sand>, 13666, <extrautils2:ingredients:10>, 4);

# Alternate recipes for empty Redstone Energy Fluxducts
// Convert a Hardened one into it, but it makes a less than the normal recipe
recipes.addShapeless(<thermaldynamics:duct_0:6>*3, [<thermaldynamics:duct_0:1>, <thermaldynamics:duct_0:1>, <thermaldynamics:duct_0:1>, <thermalfoundation:material:161>, <ore:dustRedstone>, <ore:dustRedstone>]);
recipes.addShapeless(<thermaldynamics:duct_0:6>, [<thermaldynamics:duct_0:1>, <thermalfoundation:material:161>, <ore:dustRedstone>]);

// Increase Golden Hammer durability
<thermalfoundation:tool.hammer_gold>.maxDamage = 184;

// Fixes how you get Uranium and Zinc sometimes by adding uses for them
mods.thermalexpansion.Pulverizer.addRecipe(<netherendingores:ore_nether_vanilla:2>*2, <netherendingores:ore_nether_modded_1:12>, 5000, <netherendingores:ore_nether_modded_2:3>, 100);
mods.thermalexpansion.Pulverizer.addRecipe(<netherendingores:ore_nether_modded_1:7>*2, <netherendingores:ore_nether_modded_2>, 5000, <netherendingores:ore_nether_modded_1>, 100);

// Induction Smelt Village Names' Codex into 2x Gold Ingot
print("TODO - Make Induction Smelter recipe for Village Names' Codex use OreDict");
mods.thermalexpansion.InductionSmelter.addRecipe(<minecraft:gold_ingot>*2, <villagenames:codex>, <minecraft:sand>, 6250, <minecraft:iron_ingot>, 50);
mods.thermalexpansion.InductionSmelter.addRecipe(<minecraft:gold_ingot>*2, <villagenames:codex>, <minecraft:sand:1>, 6250, <minecraft:iron_ingot>, 50);

// Pulverize Cobblestone Stairs into Cobblestone
// Might add other ones later
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:cobblestone>, <minecraft:stone_stairs>, 1200, <minecraft:cobblestone>, 50);

// Pulverizer Mana Essence into Blacker Lotuses
mods.thermalexpansion.Pulverizer.addRecipe(<botania:blacklotus:1>*2, <elementaristics:essence:17>, 4000);

// Pulverize Stone tools
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:cobblestone>*2, <minecraft:stone_pickaxe>, 1000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:cobblestone>, <minecraft:stone_sword>, 1000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:cobblestone>*2, <minecraft:stone_axe>, 1000);

// Pulverize Redstone Lamps
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:redstone>*2, <minecraft:redstone_lamp>, 3575, <minecraft:glowstone_dust>*2, 50);

// Pulverizer Antlers to Bones
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:bone>*3, <mysticalworld:antlers>, 2000, <minecraft:dye:15>*3, 50);

// Upgrade Gold Furnace to Redstone Furnace
recipes.addShaped(<thermalexpansion:machine>,  [[null, <ore:dustRedstone>, null],
                                   		 	                   [<minecraft:brick_block>, <ironfurnaces:gold_furnace_idle>, <minecraft:brick_block>],
               		                  		 	[<thermalfoundation:material:257>, <thermalfoundation:material:514>, <thermalfoundation:material:257>]]);
// Upgrade Extra Utils furnace to Redstone Furnace
recipes.addShaped(<thermalexpansion:machine>, [[null, <ore:dustRedstone>, null],
                                     			                  [<minecraft:nether_brick>, <extrautils2:machine>.withTag({Type: "extrautils2:furnace"}), <minecraft:nether_brick>],
                                    			                  [<thermalfoundation:material:24>, <thermalfoundation:material:515>, <thermalfoundation:material:24>]]);









// Saw item frames into sticks & leather (35%)
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:stick>*6, <minecraft:item_frame>, 1000, <minecraft:leather>, 35);

// Saw maps into paper
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:paper>*2, <minecraft:map>, 1000);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:paper>*2, <minecraft:filled_map>, 1000);

// Saw wizard items to Magical Silk (gives ~50% of the materials, with a ~50% chance to gain the rest)
// Basically only because I swapped them out with the special set and didn't want to keep them lol
// Will add every set if I remember
mods.thermalexpansion.Sawmill.addRecipe(<ebwizardry:magic_silk>*2, <ebwizardry:wizard_hat>, 1300, <ebwizardry:magic_silk>, 55);
mods.thermalexpansion.Sawmill.addRecipe(<ebwizardry:magic_silk>*4, <ebwizardry:wizard_robe>, 1500, <ebwizardry:magic_silk>*4, 50);
mods.thermalexpansion.Sawmill.addRecipe(<ebwizardry:magic_silk>*3, <ebwizardry:wizard_leggings>, 1400, <ebwizardry:magic_silk>*2, 55);
mods.thermalexpansion.Sawmill.addRecipe(<ebwizardry:magic_silk>*2, <ebwizardry:wizard_boots>, 1200, <ebwizardry:magic_silk>*2, 50);

// Saw chests & crafting tables into wood
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks>*4, <minecraft:chest>, 1500);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks>*2, <minecraft:crafting_table>, 1250);

// Saw Jukeboxes & Noteblocks into Wood + 1 Diamond/Redstone
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks>*6, <minecraft:jukebox>, 1200, <minecraft:diamond>, 100);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks>*6, <minecraft:noteblock>, 1100, <minecraft:redstone>, 100);

// Saw Spell Books into Paper and Magic Crystals (10%)
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:paper>*2, <ebwizardry:spell_book:*>, 1750, <ebwizardry:magic_crystal>, 10);

// Saw signs into sticks
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:stick>*4, <minecraft:sign>, 1500, <minecraft:stick>*2, 50);

// Saw (written) books (& quills)
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:paper>*2, <minecraft:book>, 1200, <minecraft:leather>, 25);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:paper>*2, <minecraft:writable_book>, 1225, <minecraft:feather>, 25);
#	mods.thermalexpansion.Sawmill.addRecipe(<minecraft:paper>*2, <minecraft:written_book:*>, 1225, <minecraft:leather>, 25);

// Saw Carpets into String
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:string>*2, <minecraft:carpet>, 1000, <minecraft:string>, 25);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:string>*2, <minecraft:carpet:1>, 1000, <minecraft:string>, 25);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:string>*2, <minecraft:carpet:2>, 1000, <minecraft:string>, 25);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:string>*2, <minecraft:carpet:3>, 1000, <minecraft:string>, 25);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:string>*2, <minecraft:carpet:4>, 1000, <minecraft:string>, 25);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:string>*2, <minecraft:carpet:5>, 1000, <minecraft:string>, 25);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:string>*2, <minecraft:carpet:6>, 1000, <minecraft:string>, 25);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:string>*2, <minecraft:carpet:7>, 1000, <minecraft:string>, 25);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:string>*2, <minecraft:carpet:8>, 1000, <minecraft:string>, 25);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:string>*2, <minecraft:carpet:9>, 1000, <minecraft:string>, 25);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:string>*2, <minecraft:carpet:10>, 1000, <minecraft:string>, 25);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:string>*2, <minecraft:carpet:11>, 1000, <minecraft:string>, 25);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:string>*2, <minecraft:carpet:12>, 1000, <minecraft:string>, 25);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:string>*2, <minecraft:carpet:13>, 1000, <minecraft:string>, 25);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:string>*2, <minecraft:carpet:14>, 1000, <minecraft:string>, 25);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:string>*2, <minecraft:carpet:15>, 1000, <minecraft:string>, 25);


// Saw beds into wood and wool
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks>*2, <minecraft:bed>, 1375, <minecraft:wool>, 50);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks>*2, <minecraft:bed:1>, 1375, <minecraft:wool:1>, 50);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks>*2, <minecraft:bed:2>, 1375, <minecraft:wool:2>, 50);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks>*2, <minecraft:bed:3>, 1375, <minecraft:wool:3>, 50);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks>*2, <minecraft:bed:4>, 1375, <minecraft:wool:4>, 50);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks>*2, <minecraft:bed:5>, 1375, <minecraft:wool:5>, 50);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks>*2, <minecraft:bed:6>, 1375, <minecraft:wool:6>, 50);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks>*2, <minecraft:bed:7>, 1375, <minecraft:wool:7>, 50);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks>*2, <minecraft:bed:8>, 1375, <minecraft:wool:8>, 50);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks>*2, <minecraft:bed:9>, 1375, <minecraft:wool:9>, 50);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks>*2, <minecraft:bed:10>, 1375, <minecraft:wool:10>, 50);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks>*2, <minecraft:bed:11>, 1375, <minecraft:wool:11>, 50);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks>*2, <minecraft:bed:12>, 1375, <minecraft:wool:12>, 50);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks>*2, <minecraft:bed:13>, 1375, <minecraft:wool:13>, 50);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks>*2, <minecraft:bed:14>, 1375, <minecraft:wool:14>, 50);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks>*2, <minecraft:bed:15>, 1375, <minecraft:wool:15>, 50);

print("thermal_expansion.zs loaded");