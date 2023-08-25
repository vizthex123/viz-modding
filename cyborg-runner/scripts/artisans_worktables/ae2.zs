# Changes recipes for Applied Energistics blocks/items

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.FTGU;
import mods.artisanintegrations.requirement.Reskillable;
import mods.artisanintegrations.requirement.GameStages;

print("ae2.zs loading...");

/*
recipes.remove(<>);
recipes.addShaped(<output>, [[<null>, <null>, <null>],
                                      [<null>, <null>, <null>],
                                      [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
furnace.addRecipe(<output>, <input>, XP[F]);
*/

var logic = <appliedenergistics2:material:22>;
var calculation = <appliedenergistics2:material:23>;
var engineering = <appliedenergistics2:material:24>;
var cable = <appliedenergistics2:part:16>;

var iron = <minecraft:iron_ingot>;
var redstone = <minecraft:redstone>;
var electrotine = <projectred-core:resource_item:105>;
var pulsaton = <contenttweaker:pulsaton_sliver>;
var residuum = <glacidus:residuum>;

var glass = <ore:blockGlass>;

# Change the recipes for processors
recipes.remove(<appliedenergistics2:material:16>);
recipes.remove(<appliedenergistics2:material:17>);
recipes.remove(<appliedenergistics2:material:18>);
recipes.remove(<appliedenergistics2:material:20>);

recipes.remove(<appliedenergistics2:material:22>);
recipes.remove(<appliedenergistics2:material:23>);
recipes.remove(<appliedenergistics2:material:24>);

var silicon_board = <appliedenergistics2:material:20>;
var logic_board = <appliedenergistics2:material:18>;
var calculation_board = <appliedenergistics2:material:16>;
var engineering_board = <appliedenergistics2:material:17>;

// Silicon Board
RecipeBuilder.get("engineer")
  .setShapeless([<ore:itemSilicon>])
  .addTool(<ore:artisansSolderer>, 1)
  .addOutput(silicon_board)
  .setName("silicon_board")
  .create();
  
RecipeBuilder.get("engineer")
  .setShapeless([residuum, residuum])
  .addTool(<ore:artisansSolderer>, 3)
  .addOutput(silicon_board)
  .setExtraOutputOne(silicon_board, 0.5)
  .setName("silicon_board_residuum")
  .create();

// Logic Board
RecipeBuilder.get("engineer")
  .setShapeless([<minecraft:gold_ingot>])
  .addTool(<ore:artisansSolderer>, 2)
  .addOutput(logic_board)
  .setName("logic_board")
  .create();

// Calculation Board
RecipeBuilder.get("engineer")
  .setShapeless([<appliedenergistics2:material:10>])
  .addTool(<ore:artisansSolderer>, 2)
  .addOutput(calculation_board)
  .setName("calculation_board")
  .create();

// Engineering Board
RecipeBuilder.get("engineer")
  .setShapeless([<minecraft:diamond>])
  .addTool(<ore:artisansSolderer>, 3)
  .addOutput(engineering_board)
  .setName("engineering_board")
  .create();
 
// Logic Processor
RecipeBuilder.get("engineer")
  .setShapeless([silicon_board, logic_board, electrotine|redstone])
  .addTool(<ore:artisansSolderer>, 5)
  .addOutput(logic)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("logic_processor")
  .create();

// Calculation Processor
RecipeBuilder.get("engineer")
  .setShapeless([silicon_board, calculation_board, electrotine])
  .addTool(<ore:artisansSolderer>, 6)
  .addOutput(calculation)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("calculation_processor")
  .create();

// Engineering Processor
RecipeBuilder.get("engineer")
  .setShapeless([silicon_board, engineering_board, electrotine])
  .addTool(<ore:artisansSolderer>, 7)
  .addOutput(engineering)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("engineering_processor")
  .create();



# Security Station (Terminal)
recipes.remove(<appliedenergistics2:security_station>);
RecipeBuilder.get("chemist")
  .setShaped([
    [iron, <ore:itemIlluminatedPanel>, iron],
    [cable, <appliedenergistics2:material:35>, cable],
    [iron, calculation, iron]])
  .addTool(<ore:artisansPliers>, 5)
  .addTool(<ore:artisansSolderer>, 10)
  .setSecondaryIngredients([pulsaton*2])
  .addOutput(<appliedenergistics2:security_station>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("security_station")
  .create();

############################
#		BLOCKS		 #
############################
var fcore = <appliedenergistics2:material:43>;
var acore = <appliedenergistics2:material:44>;

// Energy Acceptor
recipes.remove(<appliedenergistics2:energy_acceptor>);
RecipeBuilder.get("chemist")
  .setShaped([
    [iron, <appliedenergistics2:quartz_glass>, iron],
    [<appliedenergistics2:quartz_glass>, electrotine, <appliedenergistics2:quartz_glass>],
    [iron, <appliedenergistics2:quartz_glass>, iron]])
  .setSecondaryIngredients([residuum*2, pulsaton*4])
  .addTool(<ore:artisansSolderer>, 35)
  .addOutput(<appliedenergistics2:energy_acceptor>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("energy_acceptor")
  .create();

// Controller
recipes.remove(<appliedenergistics2:controller>);
RecipeBuilder.get("chemist")
  .setShaped([
    [<appliedenergistics2:smooth_sky_stone_block>, <appliedenergistics2:material:12>, <appliedenergistics2:smooth_sky_stone_block>],
    [<appliedenergistics2:material:12>, engineering, <appliedenergistics2:material:12>],
    [<appliedenergistics2:smooth_sky_stone_block>, <appliedenergistics2:material:12>, <appliedenergistics2:smooth_sky_stone_block>]])
  .setSecondaryIngredients([pulsaton*16])
  .addTool(<ore:artisansSolderer>, 500)
  .addOutput(<appliedenergistics2:controller>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("controller")
  .create();

RecipeBuilder.get("chemist")
  .setShaped([
    [<appliedenergistics2:smooth_sky_stone_block>, <appliedenergistics2:material:12>, <appliedenergistics2:smooth_sky_stone_block>],
    [<appliedenergistics2:material:12>, <appliedenergistics2:energy_acceptor>, <appliedenergistics2:material:12>],
    [<appliedenergistics2:smooth_sky_stone_block>, <appliedenergistics2:material:12>, <appliedenergistics2:smooth_sky_stone_block>]])
  .setSecondaryIngredients([engineering, residuum*4, pulsaton*8])
  .addTool(<ore:artisansSolderer>, 450)
  .addOutput(<appliedenergistics2:controller>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("acceptor_upgrade")
  .create();
 

// ME Chest
recipes.remove(<appliedenergistics2:chest>);
RecipeBuilder.get("chemist")
  .setShaped([
    [glass, <appliedenergistics2:part:380>, glass],
    [cable, null, cable],
    [iron, <appliedenergistics2:material:7>|<appliedenergistics2:material:12>, iron]])
  .addTool(<ore:artisansSolderer>, 35)
  .addOutput(<appliedenergistics2:chest>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("me_chest")
  .create();


// ME Drive
recipes.remove(<appliedenergistics2:drive>);
RecipeBuilder.get("chemist")
  .setShaped([
    [iron, logic, iron],
    [cable, residuum, cable],
    [iron, calculation, iron]])
  .addTool(<ore:artisansSolderer>, 75)
  .addOutput(<appliedenergistics2:drive>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("drive")
  .create();

RecipeBuilder.get("chemist")
  .setShaped([
    [iron, calculation, iron],
    [cable, <appliedenergistics2:chest>, cable],
    [residuum, residuum, residuum]])
  .addTool(<ore:artisansSolderer>, 50)
  .addOutput(<appliedenergistics2:drive>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("me_chest_upgrade")
  .create();
  

# Terminals
recipes.remove(<appliedenergistics2:part:340>);
recipes.remove(<appliedenergistics2:part:360>);
recipes.remove(<appliedenergistics2:part:380>);
recipes.remove(<appliedenergistics2:part:480>);
recipes.remove(<appliedenergistics2:part:520>);

// Regular
RecipeBuilder.get("chemist")
  .setShapeless([<ore:itemIlluminatedPanel>, logic, fcore, acore])
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<appliedenergistics2:part:380>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("terminal")
  .create();

// Crafting
RecipeBuilder.get("chemist")
  .setShapeless([<ore:workbench>, <appliedenergistics2:part:380>, calculation])
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<appliedenergistics2:part:360>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("crafting_terminal")
  .create();

// Pattern
RecipeBuilder.get("chemist")
  .setShapeless([<appliedenergistics2:part:360>, engineering])
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<appliedenergistics2:part:340>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("pattern_terminal")
  .create();

// Interface
RecipeBuilder.get("chemist")
  .setShapeless([<appliedenergistics2:interface>|<appliedenergistics2:part:440>, <ore:itemIlluminatedPanel>, engineering])
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<appliedenergistics2:part:480>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("interface_terminal")
  .create();

// Fluid
RecipeBuilder.get("chemist")
  .setShapeless([<appliedenergistics2:part:380>, <ore:gemLapis>, logic])
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<appliedenergistics2:part:520>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("fluid_terminal")
  .create();

print("ae2.zs loaded");