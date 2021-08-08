# Changes recipes for all the Item Inputs & Outputs from Modular Machines

import mods.artisanintegrations.requirement.FTGU;
import mods.artisanworktables.builder.RecipeBuilder;

print("modular_machine_in_outs.zs loading...");

##### Item #####
# Inputs
recipes.remove(<modularmachinery:blockinputbus>);
recipes.remove(<modularmachinery:blockinputbus:1>);
recipes.remove(<modularmachinery:blockinputbus:2>);
recipes.remove(<modularmachinery:blockinputbus:3>);

// Tiny Item Input
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<faufil:hopperpipe>],
    [<modularmachinery:blockcasing>],
    [<ore:chest>]])
  .addTool(<ore:artisansHammer>, 5)
  .addOutput(<modularmachinery:blockinputbus>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("tiny_item_input")
  .create();

// Small Item Input
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<faufil:hopperpipe>, <ore:chest>, <faufil:hopperpipe>],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockinputbus>, <modularmachinery:itemmodularium>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<modularmachinery:blockinputbus:1>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("small_item_input")
  .create();

// Normal Item Input
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <ore:blockHopper>, null],
    [null, <ore:chest>, null],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockinputbus:1>, <modularmachinery:itemmodularium>]])
  .addTool(<ore:artisansPliers>, 15)
  .addTool(<ore:artisansHammer>, 20)
  .addOutput(<modularmachinery:blockinputbus:2>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("normal_item_input")
  .create();

// Reinforced Item input
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:blockHopper>],
    [<modularmachinery:blockinputbus:2>],
    [<ore:chest>]])
  .setSecondaryIngredients([<modularmachinery:blockcasing:4>])
  .addTool(<ore:artisansPliers>, 20)
  .addTool(<ore:artisansHammer>, 25)
  .addOutput(<modularmachinery:blockinputbus:3>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("reinforced_item_input")
  .create();


# Outputs
recipes.remove(<modularmachinery:blockoutputbus>);
recipes.remove(<modularmachinery:blockoutputbus:1>);
recipes.remove(<modularmachinery:blockoutputbus:2>);
recipes.remove(<modularmachinery:blockoutputbus:3>);

// Tiny Item Output
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:chest>],
    [<modularmachinery:blockcasing>],
    [<faufil:hopperpipe>]])
  .addTool(<ore:artisansHammer>, 5)
  .addOutput(<modularmachinery:blockoutputbus>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("tiny_item_output")
  .create();

// Small Item Output
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<modularmachinery:itemmodularium>, <modularmachinery:blockoutputbus>, <modularmachinery:itemmodularium>],
    [<faufil:hopperpipe>, <ore:chest>, <faufil:hopperpipe>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<modularmachinery:blockoutputbus:1>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("small_item_output")
  .create();

// Normal Item Output
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<modularmachinery:itemmodularium>, <modularmachinery:blockoutputbus:1>, <modularmachinery:itemmodularium>],
    [null, <ore:blockHopper>, null],
    [null, <ore:chest>, null]])
  .addTool(<ore:artisansPliers>, 15)
  .addTool(<ore:artisansHammer>, 20)
  .addOutput(<modularmachinery:blockoutputbus:2>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("normal_item_output")
  .create();

// Reinforced Item Output
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:chest>],
    [<modularmachinery:blockoutputbus:2>],
    [<ore:blockHopper>]])
  .setSecondaryIngredients([<modularmachinery:blockcasing:4>])
  .addTool(<ore:artisansPliers>, 20)
  .addTool(<ore:artisansHammer>, 25)
  .addOutput(<modularmachinery:blockoutputbus:3>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("reinforced_item_output")
  .create();


##### Fluid #####
# Inputs
recipes.remove(<modularmachinery:blockfluidinputhatch>);
recipes.remove(<modularmachinery:blockfluidinputhatch:1>);
recipes.remove(<modularmachinery:blockfluidinputhatch:2>);
recipes.remove(<modularmachinery:blockfluidinputhatch:3>);

// Tiny Fluid Input Hatch
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<fluidfunnel:tap>],
    [<modularmachinery:blockcasing>],
    [<minecraft:bucket>]])
  .addTool(<ore:artisansPliers>, 5)
  .addOutput(<modularmachinery:blockfluidinputhatch>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("tiny_fluid_input")
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <fluidfunnel:tap>, null],
    [<claybucket:claybucket>, <modularmachinery:blockcasing>, <claybucket:claybucket>]])
  .addTool(<ore:artisansPliers>, 10)
  .addOutput(<modularmachinery:blockfluidinputhatch>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("tiny_fluid_input_clay")
  .create();

// Small Fluid Input Hatch
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <minecraft:bucket>, null],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidinputhatch>, <modularmachinery:itemmodularium>]])
  .addTool(<ore:artisansPliers>, 5)
  .addOutput(<modularmachinery:blockfluidinputhatch:1>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("small_fluid_input")
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<claybucket:claybucket>, <claybucket:claybucket>, <claybucket:claybucket>],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidinputhatch>, <modularmachinery:itemmodularium>]])
  .addTool(<ore:artisansPliers>, 10)
  .addOutput(<modularmachinery:blockfluidinputhatch:1>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("small_fluid_input_clay")
  .create();

// Normal Fluid Input Hatch
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<minecraft:bucket>, <minecraft:bucket>, <minecraft:bucket>],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidinputhatch:1>, <modularmachinery:itemmodularium>]])
  .addTool(<ore:artisansPliers>, 20)
  .addTool(<ore:artisansSolderer>, 15)
  .addOutput(<modularmachinery:blockfluidinputhatch:2>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("normal_fluid_input")
  .create();

// Reinforced Fluid Input Hatch
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<minecraft:bucket>],
    [<ore:tank>],
    [<modularmachinery:blockfluidinputhatch:2>]])
  .setSecondaryIngredients([<modularmachinery:blockcasing:4>])
  .addTool(<ore:artisansPliers>, 25)
  .addTool(<ore:artisansSolderer>, 20)
  .addOutput(<modularmachinery:blockfluidinputhatch:3>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("reinforced_fluid_input")
  .create();


# Outputs
recipes.remove(<modularmachinery:blockfluidoutputhatch>);
recipes.remove(<modularmachinery:blockfluidoutputhatch:1>);
recipes.remove(<modularmachinery:blockfluidoutputhatch:2>);
recipes.remove(<modularmachinery:blockfluidoutputhatch:3>);

// Tiny Fluid Output Hatch
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<minecraft:bucket>],
    [<modularmachinery:blockcasing>],
    [<fluidfunnel:tap>]])
  .addTool(<ore:artisansPliers>, 5)
  .addOutput(<modularmachinery:blockfluidoutputhatch>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("tiny_fluid_output")
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<claybucket:claybucket>, <fluidfunnel:tap>, <claybucket:claybucket>],
    [null, <modularmachinery:blockcasing>, null]])
  .addTool(<ore:artisansPliers>, 10)
  .addOutput(<modularmachinery:blockfluidoutputhatch>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("tiny_fluid_output_clay")
  .create();

// Small Fluid Output Hatch
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <modularmachinery:blockfluidinputhatch>, null],
    [<modularmachinery:itemmodularium>, <minecraft:bucket>, <modularmachinery:itemmodularium>]])
  .addTool(<ore:artisansPliers>, 5)
  .addOutput(<modularmachinery:blockfluidoutputhatch:1>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("small_fluid_output")
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidinputhatch>, <modularmachinery:itemmodularium>],
    [<claybucket:claybucket>, <claybucket:claybucket>, <claybucket:claybucket>]])
  .addTool(<ore:artisansPliers>, 10)
  .addOutput(<modularmachinery:blockfluidoutputhatch:1>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("small_fluid_output_clay")
  .create();

// Normal Fluid Output Hatch
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidinputhatch:1>, <modularmachinery:itemmodularium>],
    [<minecraft:bucket>, <minecraft:bucket>, <minecraft:bucket>]])
  .addTool(<ore:artisansPliers>, 20)
  .addTool(<ore:artisansSpanner>, 15)
  .addOutput(<modularmachinery:blockfluidoutputhatch:2>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("normal_fluid_output")
  .create();

// Reinforced Fluid Output Hatch
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<modularmachinery:blockfluidoutputhatch:2>],
    [<ore:tank>],
    [<minecraft:bucket>]])
  .setSecondaryIngredients([<modularmachinery:blockcasing:4>])
  .addTool(<ore:artisansPliers>, 25)
  .addTool(<ore:artisansSpanner>, 20)
  .addOutput(<modularmachinery:blockfluidoutputhatch:3>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("reinforced_fluid_output")
  .create();



##### Energy #####
recipes.remove(<modularmachinery:blockenergyinputhatch>);
recipes.remove(<modularmachinery:blockenergyinputhatch:1>);
recipes.remove(<modularmachinery:blockenergyinputhatch:2>);
recipes.remove(<modularmachinery:blockenergyinputhatch:3>);

recipes.remove(<modularmachinery:blockenergyoutputhatch>);
recipes.remove(<modularmachinery:blockenergyoutputhatch:1>);
recipes.remove(<modularmachinery:blockenergyoutputhatch:2>);
recipes.remove(<modularmachinery:blockenergyoutputhatch:3>);

// Tiny Energy Input
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<better_diving:lubricant>],
    [<modularmachinery:blockcasing>],
    [<better_diving:wiring_kit>]])
  .addTool(<ore:artisansSolderer>, 5)
  .addOutput(<modularmachinery:blockenergyinputhatch>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("tiny_energy_input")
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <better_diving:lubricant>, null],
    [<minecraft:repeater>, <modularmachinery:blockcasing>, <minecraft:repeater>]])
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<modularmachinery:blockenergyinputhatch>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("tiny_energy_input_repeaters")
  .create();

// Small Energy Input
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <better_diving:wiring_kit>, null],
    [<better_diving:lubricant>, <modularmachinery:blockenergyinputhatch>, <better_diving:lubricant>]])
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<modularmachinery:blockenergyinputhatch:1>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("small_energy_input")
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<minecraft:repeater>, <minecraft:repeater>, <minecraft:repeater>],
    [<better_diving:lubricant>, <modularmachinery:blockenergyinputhatch>, <better_diving:lubricant>]])
  .addTool(<ore:artisansSolderer>, 15)
  .addOutput(<modularmachinery:blockenergyinputhatch:1>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("small_energy_input_repeaters")
  .create();

// Normal Energy Input
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <contenttweaker:advanced_wiring_kit>, null],
    [<better_diving:battery>, <modularmachinery:blockenergyinputhatch:1>, <better_diving:battery>]])
  .addTool(<ore:artisansPliers>, 15)
  .addTool(<ore:artisansSolderer>, 20)
  .addOutput(<modularmachinery:blockenergyinputhatch:2>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("normal_energy_input")
  .create();

// Reinforced Energy Input
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<better_diving:power_cell:*>],
    [<contenttweaker:advanced_wiring_kit>],
    [<modularmachinery:blockenergyinputhatch:2>]])
  .setSecondaryIngredients([<modularmachinery:blockcasing:4>])
  .addTool(<ore:artisansPliers>, 20)
  .addTool(<ore:artisansSolderer>, 25)
  .addOutput(<modularmachinery:blockenergyinputhatch:3>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("reinforced_energy_input")
  .create();

// Big Energy Input
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <contenttweaker:advanced_wiring_kit>, null],
    [<contenttweaker:circuit>, <modularmachinery:blockenergyinputhatch:3>, <contenttweaker:circuit>],
    [<modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>]])
  .addTool(<ore:artisansPliers>, 25)
  .addTool(<ore:artisansSolderer>, 30)
  .addOutput(<modularmachinery:blockenergyinputhatch:4>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("big_energy_input")
  .create();

// Huge Energy Input
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <contenttweaker:circuit>, null],
    [<contenttweaker:advanced_wiring_kit>, <modularmachinery:blockenergyinputhatch:4>, <contenttweaker:advanced_wiring_kit>],
    [<modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:5>, <modularmachinery:blockcasing:4>]])
  .addTool(<ore:artisansPliers>, 30)
  .addTool(<ore:artisansSolderer>, 35)
  .addOutput(<modularmachinery:blockenergyinputhatch:5>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("huge_energy_input")
  .create();

# Outputs
// Tiny Energy Output
RecipeBuilder.get("blacksmith")
  .setShapeless([<modularmachinery:blockenergyinputhatch>, <contenttweaker:circuit>])
  .addTool(<ore:artisansSolderer>, 3)
  .addOutput(<modularmachinery:blockenergyoutputhatch>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("tiny_energy_output")
  .create();

// Small Energy Output
RecipeBuilder.get("blacksmith")
  .setShapeless([<modularmachinery:blockenergyinputhatch:1>, <contenttweaker:circuit>|<better_diving:wiring_kit>])
  .addTool(<ore:artisansSolderer>, 5)
  .addOutput(<modularmachinery:blockenergyoutputhatch:1>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("small_energy_output")
  .create();

// Normal Energy Output
RecipeBuilder.get("blacksmith")
  .setShapeless([<modularmachinery:blockenergyinputhatch:2>, <contenttweaker:circuit>, <contenttweaker:circuit>])
  .addTool(<ore:artisansPliers>, 10)
  .addTool(<ore:artisansSolderer>, 15)
  .addOutput(<modularmachinery:blockenergyoutputhatch:2>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("normal_energy_output")
  .create();

// Reinforced Energy Output
RecipeBuilder.get("blacksmith")
  .setShapeless([<modularmachinery:blockenergyinputhatch:3>, <better_diving:wiring_kit>, <contenttweaker:circuit>])
  .addTool(<ore:artisansPliers>, 15)
  .addTool(<ore:artisansSolderer>, 20)
  .addOutput(<modularmachinery:blockenergyoutputhatch:3>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("reinforced_energy_output")
  .create();

// Big Energy Output
RecipeBuilder.get("blacksmith")
  .setShapeless([<modularmachinery:blockenergyinputhatch:4>, <better_diving:wiring_kit>, <better_diving:wiring_kit>])
  .addTool(<ore:artisansPliers>, 20)
  .addTool(<ore:artisansSolderer>, 25)
  .addOutput(<modularmachinery:blockenergyoutputhatch:4>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("big_energy_output")
  .create();

// Huge Energy Output
RecipeBuilder.get("blacksmith")
  .setShapeless([<modularmachinery:blockenergyinputhatch:5>, <contenttweaker:advanced_wiring_kit>])
  .addTool(<ore:artisansPliers>, 25)
  .addTool(<ore:artisansSolderer>, 30)
  .addOutput(<modularmachinery:blockenergyoutputhatch:5>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("huge_energy_output")
  .create();

print("modular_machine_in_outs.zs loaded");