# Changes Simply Jetpacks 2 recipes
/*
recipes.remove(<>);
recipes.addShaped(<output>, [[<null>, <null>, <null>],
                                      [<null>, <null>, <null>],
                                      [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
furnace.addRecipe(<output>, <input>, XP[F]);
<item>.maxStackSize=NEW;
*/

print("SimplyJetpacks.zs loading...");

// Mekanism platings
recipes.remove(<simplyjetpacks:metaitemmods:32>);
recipes.remove(<simplyjetpacks:metaitemmods:33>);
recipes.remove(<simplyjetpacks:metaitemmods:34>);
recipes.addShapeless(<simplyjetpacks:metaitemmods:32>, [<simplyjetpacks:metaitemmods:31>, <ore:circuitAdvanced>, <ore:circuitAdvanced>]);
recipes.addShapeless(<simplyjetpacks:metaitemmods:33>, [<simplyjetpacks:metaitemmods:32>, <ore:circuitElite>, <ore:circuitElite>]);
recipes.addShapeless(<simplyjetpacks:metaitemmods:34>, [<simplyjetpacks:metaitemmods:33>, <ore:circuitUltimate>, <ore:circuitUltimate>]);

// Iron Thruster
recipes.remove(<simplyjetpacks:metaitemmods>);
recipes.addShaped(<simplyjetpacks:metaitemmods>, [[null, <minecraft:iron_ingot>, null],
                                 				     [<minecraft:iron_ingot>, <minecraft:furnace>, <minecraft:iron_ingot>],
                               				     [<minecraft:iron_ingot>, <minecraft:gunpowder>, <minecraft:iron_ingot>]]);

// Gold Thruster
recipes.remove(<simplyjetpacks:metaitemmods:1>);
recipes.addShaped(<simplyjetpacks:metaitemmods:1>, [[null, <minecraft:gold_ingot>, null],
                                 				         [<minecraft:gold_ingot>, <ironfurnaces:iron_furnace_idle>, <minecraft:gold_ingot>],
                               				         [<minecraft:gold_ingot>, <minecraft:gunpowder>, <minecraft:gold_ingot>]]);
// Diamond Thruster
recipes.remove(<simplyjetpacks:metaitemmods:2>);
recipes.addShaped(<simplyjetpacks:metaitemmods:2>, [[null, <minecraft:diamond>, null],
                                 				         [<minecraft:diamond>, <ironfurnaces:gold_furnace_idle>, <minecraft:diamond>],
                               				         [<minecraft:diamond>, <minecraft:blaze_powder>, <minecraft:diamond>]]);

// Basic Jetpack
recipes.removeShaped(<simplyjetpacks:itemjetpack:26>);
recipes.addShaped(<simplyjetpacks:itemjetpack:26>, [[<ore:ingotOsmium>, <mekanism:controlcircuit>, <ore:ingotOsmium>],
                                     				     [<ore:ingotOsmium>, <simplyjetpacks:itemjetpack:3>, <ore:ingotOsmium>],
                                  				      [<simplyjetpacks:metaitemmods:35>, null, <simplyjetpacks:metaitemmods:35>]]);

// Basic Thruster
recipes.remove(<simplyjetpacks:metaitemmods:35>);
recipes.addShaped(<simplyjetpacks:metaitemmods:35>*2, [[<ore:ingotOsmium>, <mekanism:controlcircuit>, <ore:ingotOsmium>],
                                     				                [<mekanism:transmitter>.withTag({tier: 0}), <magneticraft:battery_item_low>|<libvulpes:battery>, <mekanism:transmitter>.withTag({tier: 0})],
                                  				                [<ore:ingotOsmium>, <minecraft:redstone>, <ore:ingotOsmium>]]);
// Advanced Thruster
recipes.remove(<simplyjetpacks:metaitemmods:36>);
recipes.addShaped(<simplyjetpacks:metaitemmods:36>*2, [[<ore:ingotOsmium>, <mekanism:controlcircuit:1>, <ore:ingotOsmium>],
                                     				                [<mekanism:transmitter>.withTag({tier: 1}), <mekanism:energytablet>, <mekanism:transmitter>.withTag({tier: 1})],
                                  				                [<ore:ingotOsmium>, <mekanism:enrichedalloy>, <ore:ingotOsmium>]]);
// Elite Thruster
recipes.remove(<simplyjetpacks:metaitemmods:37>);
recipes.addShaped(<simplyjetpacks:metaitemmods:37>*2, [[<ore:ingotOsmium>, <mekanism:controlcircuit:2>, <ore:ingotOsmium>],
                                     				                [<mekanism:transmitter>.withTag({tier: 2}), <magneticraft:battery_item_medium>|<libvulpes:battery:1>, <mekanism:transmitter>.withTag({tier: 2})],
                                  				                [<ore:ingotOsmium>, <mekanism:reinforcedalloy>, <ore:ingotOsmium>]]);
// Ultimate Thruster
recipes.remove(<simplyjetpacks:metaitemmods:38>);
recipes.addShaped(<simplyjetpacks:metaitemmods:38>*2, [[<ore:ingotOsmium>, <mekanism:controlcircuit:3>, <ore:ingotOsmium>],
                                     				                [<mekanism:transmitter>.withTag({tier: 3}), <mekanism:energycube>.withTag({tier: 0}), <mekanism:transmitter>.withTag({tier: 3})],
                                  				                [<ore:ingotOsmium>, <mekanism:atomicalloy>, <ore:ingotOsmium>]]);

print("SimplyJetpacks.zs loaded");