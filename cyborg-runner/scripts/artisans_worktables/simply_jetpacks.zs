# Changes recipes from Simply Jetpacks
# Copied from my Aurora's Adventurer modpack

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.FTGU;

print("simply_jetpacks.zs loading...");

// Leather Strap uses OreDict
recipes.remove(<simplyjetpacks:metaitem:4>);
recipes.addShaped(<simplyjetpacks:metaitem:4>, [[<ore:leather>, <ore:ingotIron>, <ore:leather>],
																					   [<ore:leather>, <ore:ingotIron>, <ore:leather>]]);

# Thruster Recipes
# Makes all of them give 2 per craft (except Fluxed)
recipes.remove(<simplyjetpacks:metaitemmods:20>);
recipes.remove(<simplyjetpacks:metaitemmods:21>);
recipes.remove(<simplyjetpacks:metaitemmods:22>);
recipes.remove(<simplyjetpacks:metaitemmods:23>);
recipes.remove(<simplyjetpacks:metaitemmods:24>);

val tin = <ore:ingotTin>;
val lead = <ore:ingotLead>;
val invar = <ore:ingotInvar>;

val lumium = <ore:ingotLumium>;
val signalum = <ore:ingotSignalum>;
val enderium = <ore:ingotEnderium>;
val electrum = <ore:ingotElectrum>;
val flux = <ore:ingotElectrumFlux>;

val redstone = <minecraft:redstone>;
val electrotine = <projectred-core:resource_item:105>;

val coil = <thermalfoundation:material:513>;


var solderer = <ore:artisansSolderer>;
var spanner = <ore:artisansSpanner>;


// Leadstone
RecipeBuilder.get("engineer")
  .setShaped([
    [lead, coil, lead],
	[<thermaldynamics:duct_0>, <thermalexpansion:dynamo:3>, <thermaldynamics:duct_0>],
	[lead, redstone, lead]])
  .addTool(solderer, 20)
  .addTool(spanner, 20)
  .addOutput(<simplyjetpacks:metaitemmods:20>*2)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/thermal_technology"]))
  .setName("leadstone_thruster")
  .create();

// Hardened
RecipeBuilder.get("engineer")
  .setShaped([
    [invar, coil, invar],
	[<thermaldynamics:duct_0:1>, <thermalexpansion:dynamo:1>, <thermaldynamics:duct_0:1>],
	[invar, electrotine, invar]])
  .addTool(solderer, 50)
  .addTool(spanner, 50)
  .addOutput(<simplyjetpacks:metaitemmods:21>*2)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/thermal_technology"]))
  .setName("hardened_thruster")
  .create();

// Reinforced
RecipeBuilder.get("engineer")
  .setShaped([
    [electrum, coil, electrum],
	[<thermaldynamics:duct_0:2>, <thermalexpansion:dynamo:4>, <thermaldynamics:duct_0:2>],
	[electrum, electrotine, electrum]])
  .setFluid(<liquid:redstone> * 1000)
  .addTool(solderer, 100)
  .addTool(spanner, 100)
  .addOutput(<simplyjetpacks:metaitemmods:22>*2)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/thermal_technology"]))
  .setName("reinforced_thruster")
  .create();

// Resonant
RecipeBuilder.get("engineer")
  .setShaped([
    [enderium, coil, enderium],
	[<thermaldynamics:duct_0:3>, <thermalexpansion:dynamo:4>, <thermaldynamics:duct_0:3>],
	[enderium, electrotine, enderium]])
  .setFluid(<liquid:redstone> * 1000)
  .addTool(solderer, 100)
  .addTool(spanner, 100)
  .addOutput(<simplyjetpacks:metaitemmods:23>*2)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/thermal_technology"]))
  .setName("resonant_thruster")
  .create();

// Fluxed
RecipeBuilder.get("engineer")
  .setShaped([
    [signalum, <redstonearsenal:material:224>, signalum],
	[<simplyjetpacks:metaitemmods:28>, <simplyjetpacks:metaitemmods:23>, <simplyjetpacks:metaitemmods:28>]])
  .setFluid(<liquid:redstone> * 500)
  .addTool(solderer, 150)
  .addTool(spanner, 150)
  .addOutput(<simplyjetpacks:metaitemmods:24>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/thermal_technology"]))
  .setName("fluxed_thruster")
  .create();


// Change the recipe for the Glowstone Elevation Unit (Empty)
recipes.remove(<simplyjetpacks:metaitemmods:27>);
RecipeBuilder.get("engineer")
  .setShaped([
    [flux, lumium, flux],
	[lumium, <thermalfoundation:glass_alloy:5>, lumium],
	[flux, lumium, flux]])
  .addTool(solderer, 250)
  .addTool(spanner, 250)
  .addOutput(<simplyjetpacks:metaitemmods:27>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/thermal_technology"]))
  .setName("glowstone_elevation_unit")
  .create();


// Change the recipe for the Cryotheum Coolant Unit (Empty)
recipes.remove(<simplyjetpacks:metaitemmods:29>);
RecipeBuilder.get("engineer")
  .setShaped([
    [flux, tin, flux],
	[tin, <ore:blockGlassHardened>, tin],
	[flux, tin, flux]])
  .addTool(solderer, 250)
  .addTool(spanner, 250)
  .addOutput(<simplyjetpacks:metaitemmods:29>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/thermal_technology"]))
  .setName("cryotheum_coolant_unit")
  .create();

print("simply_jetpacks.zs loaded");