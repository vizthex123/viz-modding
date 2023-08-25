# Adds recipes to the Engineer's Worktables
# Most of them are in OpenModularTurrets.zs

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.GameStages;
import mods.artisanintegrations.requirement.FTGU;

print("engineer.zs loading...");

/*
https://artisan-worktables.readthedocs.io/en/latest/recipes/gettingstarted/
https://artisan-worktables.readthedocs.io/en/latest/recipes/tools/
https://artisan-worktables.readthedocs.io/en/latest/recipes/basic/
*/

var iron = <minecraft:iron_ingot>;
var gold = <minecraft:gold_ingot>;
var diamond = <minecraft:diamond>;

// Fix up your Solarskin
RecipeBuilder.get("engineer")
  .setShapeless([<contenttweaker:damaged_solarskin>, iron, <minecraft:glowstone_dust>, <projectred-core:resource_item:105>|<minecraft:redstone>])
  .addTool(<ore:artisansSolderer>, 3)
  .addOutput(<cyberware:skin_upgrades>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}))
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering"]))
  .setName("solarskin")
  .create();

// Long Fall Boots
recipes.remove(<longfallboots:longfallboots>);
RecipeBuilder.get("engineer")
  .setShaped([
    [iron, null, iron],
    [<minecraft:obsidian>, <cyberware:leg_upgrades:1>, <minecraft:obsidian>],
    [diamond, null, diamond]])
  .addTool(<ore:artisansCutters>, 15)
  .addTool(<ore:artisansSpanner>, 50)
  .addOutput(<longfallboots:longfallboots>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering"]))
  .setName("long_fall_boots")
  .create();

// Cybernetics Scanner
recipes.remove(<cyberware:scanner>);
RecipeBuilder.get("engineer")
  .setShaped([
    [iron, <cyberware:body_part>, iron],
    [iron, diamond, iron],
    [iron, gold, iron]])
  .addTool(<ore:artisansPliers>, 50)
  .addOutput(<cyberware:scanner>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/technology"]))
  .setName("scanner")
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [iron, <scannable:scanner:*>, iron],
    [iron, diamond, iron],
    [iron, gold, iron]])
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansPliers>, 35)
  .addOutput(<cyberware:scanner>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:survival/scanning", "cyborg:technology/technology"]))
  .setName("scanner_alt")
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



# New Furnace Overhaul upgrade recipes
// Blank Upgrade
recipes.remove(<furnaceoverhaul:blank_upgrade>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:iron_nugget>, iron, <minecraft:iron_nugget>],
    [iron, <minecraft:quartz>, iron],
    [<minecraft:iron_nugget>, iron, <minecraft:iron_nugget>]])
  .addTool(<ore:artisansSpanner>, 15)
  .addOutput(<furnaceoverhaul:blank_upgrade>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:crafting/smelting_upgrades"]))
  .setName("blank_upgrade")
  .create();

recipes.remove(<furnaceoverhaul:speed_upgrade>);
recipes.remove(<furnaceoverhaul:efficiency_upgrade>);
recipes.remove(<furnaceoverhaul:liquid_fuel_upgrade>);

// Speed Upgrade
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:blaze_powder>, <minecraft:glowstone_dust>, <minecraft:blaze_powder>],
    [<minecraft:glowstone_dust>, <furnaceoverhaul:blank_upgrade>, <minecraft:glowstone_dust>],
    [<minecraft:blaze_powder>, <minecraft:glowstone_dust>, <minecraft:blaze_powder>]])
  .setSecondaryIngredients([<minecraft:sugar>])
  .addTool(<ore:artisansSolderer>, 30)
  .addOutput(<furnaceoverhaul:speed_upgrade>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:crafting/smelting_upgrades"]))
  .setName("speed_upgrade")
  .create();

// Efficiency Upgrade
RecipeBuilder.get("engineer")
  .setShaped([
    [iron, <minecraft:redstone>, iron],
    [<minecraft:redstone>, <furnaceoverhaul:blank_upgrade>, <minecraft:redstone>],
    [iron, <minecraft:redstone>, iron]])
  .addTool(<ore:artisansSolderer>, 50)
  .addTool(<ore:artisansSpanner>, 35)
  .addOutput(<furnaceoverhaul:efficiency_upgrade>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:crafting/smelting_upgrades"]))
  .setName("efficiency_upgrade")
  .create();

// Liquid Fuel Upgrade
RecipeBuilder.get("engineer")
  .setShaped([
    [null, gold, null],
    [gold, <furnaceoverhaul:blank_upgrade>, gold],
    [null, gold, null]])
  .setFluid(<liquid:lava> * 4000)
  .addTool(<ore:artisansSolderer>, 25)
  .addOutput(<furnaceoverhaul:liquid_fuel_upgrade>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:crafting/smelting_upgrades"]))
  .setName("liquid_fuel_upgrade")
  .create();

recipes.remove(<furnaceoverhaul:electric_fuel_upgrade>);
recipes.remove(<furnaceoverhaul:ore_processing_upgrade>);
recipes.remove(<furnaceoverhaul:processing_upgrade>);
/*
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
*/

print("engineer.zs loaded");