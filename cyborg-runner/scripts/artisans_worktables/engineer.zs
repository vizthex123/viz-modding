# Adds recipes to the Engineer's Worktables
# Most of them are in OpenModularTurrets.zs

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.FTGU;
import mods.artisanintegrations.requirement.Reskillable;
import mods.artisanintegrations.requirement.GameStages;

print("engineer.zs loading...");

/*
https://artisan-worktables.readthedocs.io/en/latest/recipes/gettingstarted/
https://artisan-worktables.readthedocs.io/en/latest/recipes/tools/
https://artisan-worktables.readthedocs.io/en/latest/recipes/basic/
*/

// Fix up your Solarskin
RecipeBuilder.get("engineer")
  .setShapeless([<contenttweaker:damaged_solarskin>, <minecraft:iron_ingot>, <minecraft:glowstone_dust>, <projectred-core:resource_item:105>|<minecraft:redstone>])
  .addTool(<ore:artisansSolderer>, 3)
  .addOutput(<cyberware:skin_upgrades>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}))
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering"]))
  .setName("fix_solarskin")
  .create();


# New Furnace Overhaul upgrade recipes
// Blank Upgrade
recipes.remove(<furnaceoverhaul:blank_upgrade>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:iron_nugget>, <minecraft:iron_ingot>, <minecraft:iron_nugget>],
    [<minecraft:iron_ingot>, <minecraft:quartz>, <minecraft:iron_ingot>],
    [<minecraft:iron_nugget>, <minecraft:iron_ingot>, <minecraft:iron_nugget>]])
  .addTool(<ore:artisansSolderer>, 15)
  .addOutput(<furnaceoverhaul:blank_upgrade>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:crafting/smelting_upgrades"]))
  .setName("blank_upgrade")
  .create();

recipes.remove(<furnaceoverhaul:liquid_fuel_upgrade>);
recipes.remove(<furnaceoverhaul:efficiency_upgrade>);
recipes.remove(<furnaceoverhaul:speed_upgrade>);

// Liquid Fuel Upgrade
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <minecraft:gold_ingot>, null],
    [<minecraft:gold_ingot>, <furnaceoverhaul:blank_upgrade>, <minecraft:gold_ingot>],
    [null, <minecraft:gold_ingot>, null]])
  .setFluid(<liquid:lava> * 4000)
  .addTool(<ore:artisansHammer>, 25)
  .addOutput(<furnaceoverhaul:liquid_fuel_upgrade>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:crafting/basic_smelting_upgrades"]))
  .setName("liquid_fuel_upgrade")
  .create();

// Efficiency Upgrade
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:iron_ingot>, <ore:dustRedstone>, <minecraft:iron_ingot>],
    [<ore:dustRedstone>, <furnaceoverhaul:blank_upgrade>, <ore:dustRedstone>],
    [<minecraft:iron_ingot>, <ore:dustRedstone>, <minecraft:iron_ingot>]])
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansCutters>, 35)
  .addOutput(<furnaceoverhaul:efficiency_upgrade>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:crafting/basic_smelting_upgrades"]))
  .setName("efficiency_upgrade")
  .create();

// Speed Upgrade
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:blaze_powder>, <minecraft:glowstone_dust>, <minecraft:blaze_powder>],
    [<minecraft:glowstone_dust>, <furnaceoverhaul:blank_upgrade>, <minecraft:glowstone_dust>],
    [<minecraft:blaze_powder>, <minecraft:glowstone_dust>, <minecraft:blaze_powder>]])
  .setSecondaryIngredients([<minecraft:sugar>])
  .addTool(<ore:artisansCutters>, 30)
  .addOutput(<furnaceoverhaul:speed_upgrade>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:crafting/basic_smelting_upgrades"]))
  .setName("speed_upgrade")
  .create();

recipes.remove(<furnaceoverhaul:electric_fuel_upgrade>);
recipes.remove(<furnaceoverhaul:ore_processing_upgrade>);
recipes.remove(<furnaceoverhaul:processing_upgrade>);

// Electric Fuel
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:blaze_powder>, <thermaldynamics:duct_0>, <minecraft:blaze_powder>],
    [<thermaldynamics:duct_0>, <furnaceoverhaul:liquid_fuel_upgrade>, <thermaldynamics:duct_0>],
    [<minecraft:blaze_powder>, <thermaldynamics:duct_0>, <minecraft:blaze_powder>]])
  .addTool(<ore:artisansSolderer>, 50)
  .addTool(<ore:artisansSpanner>, 5)
  .addOutput(<furnaceoverhaul:electric_fuel_upgrade>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:crafting/smelting_upgrades", "cyborg:technology/thermal_technology"]))
  .setName("electric_fuel_upgrade")
  .create();

// Ore Processing
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotSteel>, <ore:dustElectrotine>, <ore:ingotSteel>],
    [<ore:dustElectrotine>, <furnaceoverhaul:blank_upgrade>, <ore:dustElectrotine>],
    [<ore:ingotSteel>, <ore:dustElectrotine>, <ore:ingotSteel>]])
  .setSecondaryIngredients([<furnaceoverhaul:liquid_fuel_upgrade>, <furnaceoverhaul:efficiency_upgrade>, <furnaceoverhaul:speed_upgrade>])
  .setFluid(<liquid:redstone> * 1000)
  .addTool(<ore:artisansSolderer>, 75)
  .addTool(<ore:artisansSpanner>, 20)
  .addOutput(<furnaceoverhaul:ore_processing_upgrade>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:crafting/smelting_upgrades"]))
  .setName("ore_processing_upgrade")
  .create();

// Processing
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotSteel>, null, <minecraft:ghast_tear>, null, <ore:ingotSteel>],
    [null, <ore:ingotSteel>, <ore:dustLunar>, <ore:ingotSteel>, null],
    [<minecraft:ghast_tear>, <ore:dustLunar>, <furnaceoverhaul:ore_processing_upgrade>, <ore:dustLunar>, <minecraft:ghast_tear>],
    [null, <ore:ingotSteel>, <ore:dustLunar>, <ore:ingotSteel>, null],
    [<ore:ingotSteel>, null, <minecraft:ghast_tear>, null, <ore:ingotSteel>]])
  .setSecondaryIngredients([<furnaceoverhaul:efficiency_upgrade>, <furnaceoverhaul:speed_upgrade>, <minecraft:nether_star>])
  .setFluid(<liquid:redstone> * 4000)
  .addTool(<ore:artisansSolderer>, 100)
  .addTool(<ore:artisansCutters>, 35)
  .addTool(<ore:artisansSpanner>, 10)
  .addOutput(<furnaceoverhaul:processing_upgrade>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:crafting/smelting_upgrades", "cyborg:technology/thermal_technology"]))
  .setName("processing_upgrade")
  .create();



// Scanner
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:iron_ingot>, <cyberware:body_part>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <minecraft:diamond>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <cyberware:body_part>, <minecraft:iron_ingot>]])
  .setSecondaryIngredients([<minecraft:gold_ingot>, <minecraft:iron_ingot>])
  .addTool(<ore:artisansPliers>, 65)
  .addTool(<ore:artisansCutters>, 15)
  .addOutput(<cyberware:scanner>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/technology"]))
  .setName("scanner")
  .create();

// Pulverizer
recipes.remove(<thermalexpansion:machine:1>);
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <minecraft:piston>, null],
    [<minecraft:flint>, <thermalexpansion:frame>, <minecraft:flint>],
    [<thermalfoundation:material:256>, <thermalfoundation:material:513>, <thermalfoundation:material:256>]])
  .addTool(<ore:artisansPliers>, 40)
  .addTool(<ore:artisansSolderer>, 25)
  .addOutput(<thermalexpansion:machine:1>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/thermal_technology"]))
  .setName("pulverizer")
  .create();

// Redstone Furnace
recipes.remove(<thermalexpansion:machine>);
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <projectred-core:resource_item:105>, null],
    [<extrautils2:decorativeglass:5>, <furnaceoverhaul:diamond_furnace>|<furnaceoverhaul:emerald_furnace>|<furnaceoverhaul:end_furnace>, <extrautils2:decorativeglass:5>],
    [<thermalfoundation:material:256>, <thermalfoundation:material:513>, <thermalfoundation:material:256>]])
  .addTool(<ore:artisansPliers>, 30)
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<thermalexpansion:machine>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/thermal_technology"]))
  .setName("redstone_furnace")
  .create();

// Carbon Compressor (Diamond Machine)
recipes.remove(<coalprocessing:diamond_machine>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:piston>, <extrautils2:decorativeglass:5>, <minecraft:piston>],
    [<extrautils2:decorativeglass:5>, <minecraft:obsidian>, <extrautils2:decorativeglass:5>],
    [<thermalfoundation:storage_alloy>, <thermalfoundation:storage_alloy>, <thermalfoundation:storage_alloy>]])
  .addTool(<ore:artisansHammer>, 200)
  .addTool(<ore:artisansCutters>, 100)
  .addOutput(<coalprocessing:diamond_machine>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/coal_compression"]))
  .setName("carbon_compressor")
  .create();

print("engineer.zs loaded");