# Adds recipes to the Engineer's worktable/station/shop

import mods.artisanintegrations.requirement.FTGU;
import mods.artisanworktables.builder.RecipeBuilder;

print("engineer.zs loading...");
/*
Regular table recipes & tooltips & such are in artisan_worktables.zs

https://artisan-worktables.readthedocs.io/en/latest/recipes/gettingstarted/
https://artisan-worktables.readthedocs.io/en/latest/recipes/tools/
https://artisan-worktables.readthedocs.io/en/latest/recipes/basic/
*/

// Heat Exchanger
RecipeBuilder.get("engineer")
  .setShaped([
    [<contenttweaker:iron_rod>, <ore:ingotConstructionAlloy>, <contenttweaker:iron_rod>]])
  .addTool(<ore:artisansSolderer>, 4)
  .addOutput(<contenttweaker:heat_exchanger>)
  .addRequirement(FTGU.allOf(["adrift:technology/technology", "adrift:smithing/blacksmith"]))
  .setName("heat_exchanger_solderer")
  .create();

// Groundwater Pump
recipes.remove(<waterworks:groundwater_pump>);
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <waterworks:water_pipe>, null],
    [<waterworks:materials:1>, <rangedpumps:pump>, <waterworks:materials:1>],
    [<modularmachinery:blockcasing:4>, <enderio:block_reinforced_obsidian>, <modularmachinery:blockcasing:4>]])
  .setSecondaryIngredients([<waterworks:materials>])
  .addTool(<ore:artisansSolderer>, 250)
  .addTool(<ore:artisansSpanner>, 125)
  .addOutput(<waterworks:groundwater_pump>)
  .addRequirement(FTGU.allOf(["adrift:technology/pumping"]))
  .setName("groundwater_pump")
  .create();

// Repair Broken Solar Panel
recipes.remove(<worsesolars:worse_solar_panel>);
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <worsesolars:solar_cell>, null],
    [<ore:ingotIron>, <worsesolars:worse_solar_panel:2>, <ore:dustRedstone>]])
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<worsesolars:worse_solar_panel>)
  .addRequirement(FTGU.allOf(["adrift:technology/solar_power"]))
  .setName("repair_broken_panel")
  .create();

// Machine Vent
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:iron_bars>, <contenttweaker:heat_exchanger>, <minecraft:iron_bars>],
    [<minecraft:iron_bars>, null, <minecraft:iron_bars>],
    [<minecraft:iron_bars>, <modularmachinery:blockcasing:2>, <minecraft:iron_bars>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<modularmachinery:blockcasing:1>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("machine_vent")
  .create();

// Machine Circuitry
RecipeBuilder.get("engineer")
  .setShapeless([<modularmachinery:blockcasing>, <contenttweaker:advanced_wiring_kit>|<better_diving:wiring_kit>, <contenttweaker:circuit>])
  .addTool(<ore:artisansSolderer>, 20)
  .addOutput(<modularmachinery:blockcasing:5>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("machine_circuitry")
  .create();

// Carbon Compressor (Diamond Machine)
recipes.remove(<coalprocessing:diamond_machine>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:piston>, <ore:blockGlass>, <minecraft:piston>],
    [<ore:blockGlass>, <minecraft:obsidian>, <ore:blockGlass>],
    [<minecraft:iron_block>, <minecraft:prismarine:*>, <minecraft:iron_block>]])
  .addTool(<ore:artisansCarver>, 50)
  .addOutput(<coalprocessing:diamond_machine>)
  .addRequirement(FTGU.allOf(["adrift:smithing/engineering"]))
  .setName("carbon_compressor")
  .create();

// SAG Mill
recipes.remove(<enderio:block_sag_mill>);
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <ore:dustRedstone>, null],
    [<ore:barsIron>, <modularmachinery:blockcontroller>, <ore:barsIron>],
    [<modularmachinery:blockcasing>, <modularmachinery:blockcasing:1>, <modularmachinery:blockcasing>]])
  .addTool(<ore:artisansSolderer>, 100)
  .addTool(<ore:artisansSpanner>, 50)
  .addOutput(<enderio:block_sag_mill>)
  .addRequirement(FTGU.allOf(["adrift:technology/compact_pulverizing"]))
  .setName("sag_mill")
  .create();

// Alloy Smelter
recipes.remove(<enderio:block_alloy_smelter>);
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <modularmachinery:blockcasing>, null],
    [<modularmachinery:blockcasing:4>, <modularmachinery:blockcontroller>, <modularmachinery:blockcasing:4>],
    [<modularmachinery:blockcasing:4>, <modularmachinery:blockcasing>, <modularmachinery:blockcasing:4>]])
  .setSecondaryIngredients([<modularmachinery:blockcasing:2> * 4])
  .addTool(<ore:artisansSolderer>, 100)
  .addTool(<ore:artisansSpanner>, 50)
  .addOutput(<enderio:block_alloy_smelter>)
  .addRequirement(FTGU.allOf(["adrift:technology/compact_alloying"]))
  .setName("alloy_smelter")
  .create();

// Strengthened Solar Panel
recipes.remove(<worsesolars:infinite_solar_panel>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<contenttweaker:advanced_wiring_kit>, <minecraft:emerald>, <contenttweaker:advanced_wiring_kit>],
    [<minecraft:diamond>, <worsesolars:worse_solar_panel>, <minecraft:diamond>],
    [<minecraft:diamond>, <better_diving:power_cell>.withTag({"better_diving:energy_storage": 2000000}), <minecraft:diamond>]])
  .addTool(<ore:artisansSolderer>, 100)
  .addOutput(<worsesolars:infinite_solar_panel>)
  .setName("strong_solar_panel")
  .create();


### Cooking for Blockheads Content
recipes.remove(<cookingforblockheads:oven>);
recipes.remove(<cookingforblockheads:fridge>);

// Oven
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:dyeBlack>, <ore:blockGlass>, <ore:dyeBlack>],
    [<ore:ingotIron>, <minecraft:furnace>, <ore:ingotIron>],
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<cookingforblockheads:oven>)
  .addRequirement(FTGU.allOf(["adrift:survival/advanced_cooking"]))
  .setName("oven")
  .create();

// Fridge
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <minecraft:iron_door>, null],
    [<ore:ingotIron>, <ore:chest>, <ore:ingotIron>],
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]])
  .setFluid(<liquid:water> * 2000)
  .addTool(<ore:artisansHammer>, 20)
  .addOutput(<cookingforblockheads:fridge> * 2)
  .addRequirement(FTGU.allOf(["adrift:survival/advanced_cooking"]))
  .setName("fridge")
  .create();

# Upgrades
recipes.remove(<cookingforblockheads:preservation_chamber>);
recipes.remove(<cookingforblockheads:heating_unit>);
recipes.remove(<cookingforblockheads:ice_unit>);

// Preservation
RecipeBuilder.get("engineer")
  .setShapeless([<ore:chest>, <ore:chest>, <ore:ingotIron>, <ore:dustRedstone>])
  .addTool(<ore:artisansSpanner>, 20)
  .addOutput(<cookingforblockheads:preservation_chamber>)
  .addRequirement(FTGU.allOf(["adrift:survival/advanced_cooking"]))
  .setName("preservation_upgrade")
  .create();

// Heating
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>],
    [<ore:ingotIron>, <fuelcanister:fuel_canister:*>, <ore:ingotIron>]])
  .addTool(<ore:artisansSolderer>, 10)
  .addTool(<ore:artisansSpanner>, 5)
  .addOutput(<cookingforblockheads:heating_unit>)
  .addRequirement(FTGU.allOf(["adrift:survival/advanced_cooking"]))
  .setName("heating_upgrade")
  .create();

// Ice
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <minecraft:redstone>, null],
    [<minecraft:iron_ingot>, <minecraft:snow>, <minecraft:iron_ingot>]])
  .setFluid(<liquid:water> * 3000)
  .addTool(<ore:artisansSpanner>, 10)
  .addOutput(<cookingforblockheads:ice_unit>)
  .addRequirement(FTGU.allOf(["adrift:survival/advanced_cooking"]))
  .setName("ice_upgrade")
  .create();


print("engineer.zs loaded");