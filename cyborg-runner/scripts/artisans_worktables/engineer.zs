# Adds recipes to the Engineer's Worktable(s)
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

# New Furnace Overhaul upgrade recipes
recipes.remove(<furnaceoverhaul:electric_fuel_upgrade>);
recipes.remove(<furnaceoverhaul:ore_processing_upgrade>);
recipes.remove(<furnaceoverhaul:processing_upgrade>);

// Electric Fuel
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:dustBlaze>, <thermaldynamics:duct_0>, <ore:dustBlaze>],
    [<thermaldynamics:duct_0>, <furnaceoverhaul:liquid_fuel_upgrade>, <thermaldynamics:duct_0>],
    [<ore:dustBlaze>, <thermaldynamics:duct_0>, <ore:dustBlaze>]])
  .addTool(<ore:artisansSolderer>, 50)
  .addTool(<ore:artisansSpanner>, 5)
  .addOutput(<furnaceoverhaul:electric_fuel_upgrade>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/engineering", "cyborg:crafting/smelting_upgrades", "cyborg:technology/thermal_technology"]))
  .setName("electric_fuel_upgrade")
  .create();

// Ore Processing
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotLead>, <ore:dustElectrotine>, <ore:ingotLead>],
    [<ore:dustElectrotine>, <furnaceoverhaul:blank_upgrade>, <ore:dustElectrotine>],
    [<ore:ingotLead>, <ore:dustElectrotine>, <ore:ingotLead>]])
  .setSecondaryIngredients([<furnaceoverhaul:liquid_fuel_upgrade>, <furnaceoverhaul:efficiency_upgrade>, <furnaceoverhaul:speed_upgrade>])
  .setFluid(<liquid:redstone> * 1000)
  .addTool(<ore:artisansSolderer>, 75)
  .addTool(<ore:artisansSpanner>, 10)
  .addOutput(<furnaceoverhaul:ore_processing_upgrade>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/engineering", "cyborg:crafting/smelting_upgrades"]))
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
  .addRequirement(FTGU.anyOf(["cyborg:crafting/engineering", "cyborg:crafting/smelting_upgrades", "cyborg:technology/thermal_technology"]))
  .setName("processing_upgrade")
  .create();


// Fix up your Solarskin
RecipeBuilder.get("engineer")
  .setShapeless([<contenttweaker:damaged_solarskin>, <minecraft:iron_ingot>, <minecraft:glowstone_dust>, <minecraft:redstone>])
  .addTool(<ore:artisansSolderer>, 3)
  .addOutput(<cyberware:skin_upgrades>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}))
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering"]))
  .setName("fix_solarskin")
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
  .addRequirement(FTGU.allOf(["cyborg:technology/coal_compression"]))
  .setName("carbon_compressor")
  .create();


print("engineer.zs loaded");