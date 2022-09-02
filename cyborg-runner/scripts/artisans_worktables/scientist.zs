# Adds recipes to the Scientist's Worktable(s)
# Formerly chemist.zs

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.FTGU;
import mods.artisanintegrations.requirement.Reskillable;
import mods.artisanintegrations.requirement.GameStages;

print("scientist.zs loading...");

/*
https://artisan-worktables.readthedocs.io/en/latest/recipes/gettingstarted/
https://artisan-worktables.readthedocs.io/en/latest/recipes/tools/
https://artisan-worktables.readthedocs.io/en/latest/recipes/basic/
*/

// Compressed Coal (Carbon Block)
recipes.remove(<coalprocessing:compressed_coal>);
RecipeBuilder.get("chemist")
  .setShapeless([<minecraft:coal_block>, <minecraft:coal_block>, <minecraft:coal_block>, <minecraft:coal_block>])
  .setFluid(<liquid:lava> * 2000)
  .addTool(<ore:artisansHammer>, 40)
  .addTool(<ore:artisansChisel>, 20)
  .addOutput(<coalprocessing:compressed_coal>)
  .addRequirement(FTGU.allOf(["cyborg:technology/coal_compression"]))
  .setName("carbon_block")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<thermalfoundation:storage_resource>, <thermalfoundation:storage_resource>])
  .setFluid(<liquid:lava> * 1000)
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansChisel>, 30)
  .addOutput(<coalprocessing:compressed_coal>)
  .addRequirement(FTGU.allOf(["cyborg:technology/coal_compression"]))
  .setName("carbon_block_charcoal")
  .create();

	// Pyrotheum
RecipeBuilder.get("chemist")
  .setShapeless([<minecraft:coal_block>, <minecraft:coal_block>, <minecraft:coal_block>, <minecraft:coal_block>])
  .setFluid(<liquid:pyrotheum> * 500)
  .addTool(<ore:artisansHammer>, 30)
  .addTool(<ore:artisansChisel>, 10)
  .addOutput(<coalprocessing:compressed_coal>)
  .addRequirement(FTGU.allOf(["cyborg:technology/coal_compression"]))
  .setName("carbon_block_pyrotheum")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<thermalfoundation:storage_resource>, <thermalfoundation:storage_resource>])
  .setFluid(<liquid:pyrotheum> * 250)
  .addTool(<ore:artisansHammer>, 40)
  .addTool(<ore:artisansChisel>, 20)
  .addOutput(<coalprocessing:compressed_coal>)
  .addRequirement(FTGU.allOf(["cyborg:technology/coal_compression"]))
  .setName("carbon_block_pyrotheum_charcoal")
  .create();

// Wheat
RecipeBuilder.get("chemist")
  .setShapeless([<alchemistry:compound:19>, <alchemistry:compound>])
  .addTool(<ore:artisansBeaker>, 5)
  .addTool(<ore:artisansBurner>, 10)
  .addOutput(<minecraft:wheat>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science"]))
  .setName("wheat")
  .create();

// Fluxed Electrum Blend
recipes.remove(<redstonearsenal:material>);
RecipeBuilder.get("chemist")
  .setShapeless([<ore:ingotSilver>, <minecraft:gold_ingot>])
  .setFluid(<liquid:redstone> * 1000)
  .addTool(<ore:artisansBeaker>, 5)
  .addTool(<ore:artisansBurner>, 15)
  .addOutput(<redstonearsenal:material> * 2)
  .addRequirement(FTGU.allOf(["cyborg:technology/thermal_technology"]))
  .setName("fluxed_electrum_blend")
  .create();

// Flux Crystal
recipes.remove(<redstonearsenal:material:160>);
RecipeBuilder.get("chemist")
  .setShapeless([<minecraft:diamond>|<minecraft:emerald>|<byg:tamrelitegem>|<byg:pendoritegem>|<byg:lathariumgem>, <minecraft:diamond>|<minecraft:emerald>|<byg:tamrelitegem>|<byg:pendoritegem>|<byg:lathariumgem>])
  .setFluid(<liquid:redstone> * 1000)
  .addTool(<ore:artisansBeaker>, 7)
  .addTool(<ore:artisansBurner>, 20)
  .addOutput(<redstonearsenal:material:160> * 2)
  .addRequirement(FTGU.allOf(["cyborg:technology/thermal_technology"]))
  .setName("flux_crystal")
  .create();

// Fluxed Armor Plating
recipes.remove(<redstonearsenal:material:224>);
RecipeBuilder.get("chemist")
  .setShaped([
    [null, <redstonearsenal:material:128>, null],
    [<redstonearsenal:material:128>, <redstonearsenal:material:160>, <redstonearsenal:material:128>],
    [null, <redstonearsenal:material:128>, null]])
  .setFluid(<liquid:cryotheum> * 250)
  .addTool(<ore:artisansHammer>, 40)
  .addTool(<ore:artisansCutters>, 40)
  .addOutput(<redstonearsenal:material:224>)
  .setExtraOutputOne(<minecraft:ice> * 3, 0.15)
  .setExtraOutputTwo(<minecraft:packed_ice>, 0.05)
  .addRequirement(FTGU.allOf(["cyborg:technology/thermal_technology"]))
  .setName("fluxed_plating")
  .create();


print("scientist.zs loaded");