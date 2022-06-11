# Changes recipes for Refined Storage blocks/items

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.FTGU;
import mods.artisanintegrations.requirement.Reskillable;
import mods.artisanintegrations.requirement.GameStages;

print("refined_storage.zs loading...");

/*
recipes.remove(<>);
recipes.addShaped(<output>, [[<null>, <null>, <null>],
                                      [<null>, <null>, <null>],
                                      [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
furnace.addRecipe(<output>, <input>, XP[F]);
*/

# Recipes are in a combination of the Chemist's & Engineer's workstations
// Tooltip about how to make covers
<refinedstorage:cutting_tool>.addTooltip(format.aqua("Combine with a block to make covers."));

// Changes Quartz-Enriched Iron to use the Chemist's worktable
recipes.remove(<refinedstorage:quartz_enriched_iron>);
RecipeBuilder.get("chemist")
  .setShapeless([<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:quartz>, <minecraft:quartz>])
  .setFluid(<liquid:lava> * 500)
  .addTool(<ore:artisansBurner>, 40)
  .addOutput(<refinedstorage:quartz_enriched_iron> * 4)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("quartz_iron")
  .create();

recipes.addShapeless(<refinedstorage:quartz_enriched_iron>*9, [<refinedstorage:quartz_enriched_iron_block>]);

// Change the recipe for Processor Binding
recipes.remove(<refinedstorage:processor_binding>);
RecipeBuilder.get("chemist")
  .setShaped([
    [<ore:string>, <ore:slimeball>, <ore:string>]])
  .addTool(<ore:artisansBeaker>, 8)
  .addOutput(<refinedstorage:processor_binding> * 8)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("processor_binding")
  .create();

RecipeBuilder.get("chemist")
  .setShaped([
    [<ore:blockWool>, <minecraft:slime>, <ore:blockWool>]])
  .addTool(<ore:artisansBeaker>, 64)
  .addOutput(<refinedstorage:processor_binding> * 64)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("mass_processing_binding")
  .create();

# Change the recipes for raw processors
recipes.remove(<refinedstorage:processor>);
recipes.remove(<refinedstorage:processor:1>);
recipes.remove(<refinedstorage:processor:2>);

// Basic
RecipeBuilder.get("chemist")
  .setShapeless([<minecraft:iron_ingot>, <refinedstorage:processor_binding>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>, <ore:itemSilicon>])
  .setFluid(<liquid:lava> * 500)
  .addTool(<ore:artisansSolderer>, 5)
  .addOutput(<refinedstorage:processor>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("basic_processor")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<minecraft:iron_ingot>, <refinedstorage:processor_binding>, <projectred-core:resource_item:105>, <ore:itemSilicon>])
  .setFluid(<liquid:lava> * 250)
  .addTool(<ore:artisansSolderer>, 3)
  .addOutput(<refinedstorage:processor>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("basic_processor_electrotine")
  .create();

// Improved
RecipeBuilder.get("chemist")
  .setShapeless([<minecraft:gold_ingot>, <refinedstorage:processor_binding>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>, <ore:itemSilicon>])
  .setFluid(<liquid:lava> * 250)
  .addTool(<ore:artisansSolderer>, 5)
  .addOutput(<refinedstorage:processor:1>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("improved_processor")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<minecraft:gold_ingot>, <refinedstorage:processor_binding>, <projectred-core:resource_item:105>, <ore:itemSilicon>])
  .setFluid(<liquid:lava> * 125)
  .addTool(<ore:artisansSolderer>, 3)
  .addOutput(<refinedstorage:processor:1>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("improved_processor_electrotine")
  .create();


// Advanced
RecipeBuilder.get("chemist")
  .setShapeless([<minecraft:diamond>, <refinedstorage:processor_binding>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>, <ore:itemSilicon>])
  .setFluid(<liquid:lava> * 1000)
  .addTool(<ore:artisansSolderer>, 7)
  .addOutput(<refinedstorage:processor:2>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("advanced_processor")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<minecraft:diamond>, <refinedstorage:processor_binding>, <projectred-core:resource_item:105>, <ore:itemSilicon>])
  .setFluid(<liquid:lava> * 500)
  .addTool(<ore:artisansSolderer>, 5)
  .addOutput(<refinedstorage:processor:2>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("advanced_processor_electrotine")
  .create();

# Network Card
recipes.remove(<refinedstorage:network_card>);
RecipeBuilder.get("designer")
  .setShaped([
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>],
    [<ore:paper>, <refinedstorage:processor:3>, <ore:paper>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]])
  .addTool(<ore:artisansPliers>, 10)
  .addTool(<ore:artisansSolderer>, 5)
  .addOutput(<refinedstorage:network_card>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("network_card")
  .create();

# Security Card
recipes.remove(<refinedstorage:security_card>);
RecipeBuilder.get("designer")
  .setShaped([
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>],
    [<refinedstorage:processor:5>, <refinedstorage:network_card>, <refinedstorage:processor:4>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]])
  .addTool(<ore:artisansPliers>, 5)
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<refinedstorage:security_card>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("security_card")
  .create();

# Machine Casing
recipes.remove(<refinedstorage:machine_casing>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>],
    [<refinedstorage:quartz_enriched_iron>, <extrautils2:machine>, <refinedstorage:quartz_enriched_iron>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]])
  .addTool(<ore:artisansHammer>, 15)
  .addTool(<ore:artisansCutters>, 25)
  .addOutput(<refinedstorage:machine_casing>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("machine_casing")
  .create();

############################
#	 BLOCKS		 #
############################

// Disk Drive
recipes.remove(<refinedstorage:disk_drive>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:core>, <refinedstorage:processor:5>, <refinedstorage:core:1>, <refinedstorage:quartz_enriched_iron>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:processor:5>, <refinedstorage:machine_casing>|<refinedstorage:storage:*>, <refinedstorage:processor:5>, <refinedstorage:quartz_enriched_iron>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:core:1>, <refinedstorage:processor:5>, <refinedstorage:core>, <refinedstorage:quartz_enriched_iron>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]])
  .setSecondaryIngredients([<glacidus:glacidite_fragment> * 16, <thermalexpansion:cache>.withTag({Facing: 3 as byte, Level: 0 as byte}), <ironchest:iron_chest>])
  .setFluid(<liquid:ender> * 4000)
  .addTool(<ore:artisansPliers>, 75)
  .addTool(<ore:artisansSolderer>, 250)
  .addTool(<ore:artisansSpanner>, 100)
  .addOutput(<refinedstorage:disk_drive>)
  .setMirrored()
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("disk_drive")
  .create();

// Controller
recipes.remove(<refinedstorage:controller>);
RecipeBuilder.get("designer")
  .setShaped([
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:processor:5>, <refinedstorage:quartz_enriched_iron>],
    [<ore:itemSilicon>, <refinedstorage:machine_casing>, <ore:itemSilicon>],
    [<refinedstorage:quartz_enriched_iron>, <ore:itemSilicon>, <refinedstorage:quartz_enriched_iron>]])
  .addTool(<ore:artisansSpanner>, 500)
  .addOutput(<refinedstorage:controller>.withTag({Energy: 0}))
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("controller")
  .create();

RecipeBuilder.get("designer")
  .setShaped([
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:processor:5>, <refinedstorage:quartz_enriched_iron>],
    [<ore:itemSilicon>, <refinedstorage:machine_casing>, <ore:itemSilicon>],
    [<refinedstorage:quartz_enriched_iron>, <ore:itemSilicon>, <refinedstorage:quartz_enriched_iron>]])
  .setFluid(<liquid:redstone> * 5000)
  .addTool(<ore:artisansSpanner>, 350)
  .addOutput(<refinedstorage:controller>.withTag({Energy: 10000}))
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("controller_charged")
  .create();

// Crafting Monitor
recipes.remove(<refinedstorage:crafting_monitor>);
RecipeBuilder.get("designer")
  .setShaped([
    [<minecraft:iron_ingot>, <refinedstorage:processor:3>, <ore:blockGlass>],
    [<minecraft:iron_ingot>, <refinedstorage:machine_casing>, <ore:blockGlass>],
    [<minecraft:iron_ingot>, <refinedstorage:pattern>, <ore:blockGlass>]])
  .addTool(<ore:artisansPliers>, 5)
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<refinedstorage:crafting_monitor>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("crafting_monitor")
  .create();

// Grid
recipes.remove(<refinedstorage:grid>);
RecipeBuilder.get("designer")
  .setShaped([
    [<refinedstorage:processor:4>, <refinedstorage:core>, <ore:blockGlass>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:machine_casing>, <ore:blockGlass>],
    [<refinedstorage:processor:4>, <refinedstorage:core:1>, <ore:blockGlass>]])
  .addTool(<ore:artisansPliers>, 10)
  .addTool(<ore:artisansSpanner>, 10)
  .addOutput(<refinedstorage:grid>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("grid")
  .create();

// Crafting Grid
recipes.remove(<refinedstorage:grid:1>);
RecipeBuilder.get("designer")
  .setShapeless([<refinedstorage:grid>, <ore:workbench>, <refinedstorage:processor:5>])
  .addTool(<ore:artisansPliers>, 15)
  .addOutput(<refinedstorage:grid:1>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("crafting_grid")
  .create();

// Fluid Grid
recipes.remove(<refinedstorage:grid:3>);
RecipeBuilder.get("designer")
  .setShapeless([<refinedstorage:grid>, <minecraft:bucket>, <refinedstorage:processor:5>])
  .addTool(<ore:artisansSpanner>, 15)
  .addOutput(<refinedstorage:grid:3>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("fluid_grid")
  .create();

// Security Manager
recipes.remove(<refinedstorage:security_manager>);
RecipeBuilder.get("designer")
  .setShaped([
    [<refinedstorage:quartz_enriched_iron>, <minecraft:chest>, <refinedstorage:quartz_enriched_iron>],
    [<refinedstorage:processor:4>, <refinedstorage:machine_casing>, <refinedstorage:processor:4>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:security_card>, <refinedstorage:quartz_enriched_iron>]])
  .addTool(<ore:artisansSpanner>, 20)
  .addOutput(<refinedstorage:security_manager>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("security_manager")
  .create();

// Portable Grid
recipes.remove(<refinedstorage:portable_grid>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:grid>, <refinedstorage:quartz_enriched_iron>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]])
  .setSecondaryIngredients([<refinedstorage:core>, <refinedstorage:processor:4>, <refinedstorage:core:1>])
  .addTool(<ore:artisansCutters>, 50)
  .addTool(<ore:artisansSpanner>, 30)
  .addOutput(<refinedstorage:portable_grid>.withTag({Energy: 0}))
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("portable_grid")
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:grid>, <refinedstorage:quartz_enriched_iron>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]])
  .setSecondaryIngredients([<refinedstorage:core>, <refinedstorage:processor:4>, <refinedstorage:core:1>])
  .setFluid(<liquid:redstone> * 1250)
  .addTool(<ore:artisansCutters>, 35)
  .addTool(<ore:artisansSpanner>, 20)
  .addOutput(<refinedstorage:portable_grid>.withTag({Energy: 2500}))
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("portable_grid_charged")
  .create();


############################
#	Storage Tech	#
############################
recipes.remove(<storagetech:diskworkbench>);
recipes.remove(<storagetech:fluiddiskworkbench>);

// Disk Workbench
RecipeBuilder.get("engineer")
  .setShaped([
    [<extrautils2:ingredients:11>, <refinedstorage:core>, <extrautils2:ingredients:11>],
    [<refinedstorage:processor:5>, <refinedstorage:storage_part:3>, <refinedstorage:processor:5>],
    [<extrautils2:ingredients:11>, <artisanworktables:workstation:5>, <extrautils2:ingredients:11>]])
  .addTool(<ore:artisansHammer>, 25)
  .addTool(<ore:artisansChisel>, 15)
  .addOutput(<storagetech:diskworkbench>)
  .addRequirement(FTGU.allOf(["cyborg:technology/advanced_storage_compression"]))
  .setName("disk_workbench")
  .create();

// Fluid Disk Workbench
RecipeBuilder.get("engineer")
  .setShaped([
    [<extrautils2:ingredients:11>, <refinedstorage:core>, <extrautils2:ingredients:11>],
    [<refinedstorage:processor:5>, <refinedstorage:fluid_storage_part>, <refinedstorage:processor:5>],
    [<extrautils2:ingredients:11>, <artisanworktables:workstation:5>, <extrautils2:ingredients:11>]])
  .addTool(<ore:artisansHammer>, 25)
  .addTool(<ore:artisansChisel>, 15)
  .addOutput(<storagetech:fluiddiskworkbench>)
  .addRequirement(FTGU.allOf(["cyborg:technology/advanced_storage_compression"]))
  .setName("fluid_disk_workbench")
  .create();

############################
#	 UPGRADES	 #
############################

// (Blank) Upgrade
recipes.remove(<refinedstorage:upgrade>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<refinedstorage:quartz_enriched_iron>, <ore:blockGlass>, <refinedstorage:quartz_enriched_iron>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:processor:4>, <refinedstorage:quartz_enriched_iron>],
    [<refinedstorage:quartz_enriched_iron>, <ore:blockGlass>, <refinedstorage:quartz_enriched_iron>]])
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<refinedstorage:upgrade>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("rs_upgrade")
  .create();

// Range Upgrade
recipes.remove(<refinedstorage:upgrade:1>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:processor:3>, <refinedstorage:quartz_enriched_iron>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:upgrade>, <refinedstorage:quartz_enriched_iron>],
    [<refinedstorage:quartz_enriched_iron>, <nhc:energypearl>, <refinedstorage:quartz_enriched_iron>]])
  .addTool(<ore:artisansSolderer>, 5)
  .addOutput(<refinedstorage:upgrade:1>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("rs_range_upgrade")
  .create();

// Speed Upgrade
recipes.remove(<refinedstorage:upgrade:2>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<refinedstorage:quartz_enriched_iron>, <minecraft:sugar>, <refinedstorage:quartz_enriched_iron>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:upgrade>, <refinedstorage:quartz_enriched_iron>],
    [<refinedstorage:quartz_enriched_iron>, <minecraft:sugar>, <refinedstorage:quartz_enriched_iron>]])
  .addTool(<ore:artisansSolderer>, 5)
  .addOutput(<refinedstorage:upgrade:2>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("rs_speed_upgrade")
  .create();

// Crafting Upgrade
recipes.remove(<refinedstorage:upgrade:3>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:core>, <refinedstorage:quartz_enriched_iron>],
    [<ore:workbench>, <refinedstorage:upgrade>, <ore:workbench>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]])
  .addTool(<ore:artisansSolderer>, 5)
  .addOutput(<refinedstorage:upgrade:3>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("rs_crafting_upgrade")
  .create();

// Stack Upgrade
RecipeBuilder.get("engineer")
  .setShaped([
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:upgrade:2>, <refinedstorage:quartz_enriched_iron>],
    [<refinedstorage:upgrade:2>, <refinedstorage:processor:5>, <refinedstorage:upgrade:2>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:upgrade:2>, <refinedstorage:quartz_enriched_iron>]])
  .addTool(<ore:artisansSolderer>, 5)
  .addTool(<ore:artisansSpanner>, 7)
  .addOutput(<refinedstorage:upgrade:4>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("rs_stack_upgrade")
  .create();

############################
#	 STORAGES	 #
############################
recipes.remove(<refinedstorage:storage_part:*>);
recipes.remove(<refinedstorage:storage_disk:*>);
recipes.remove(<refinedstorage:storage_housing>);

# Storage Housing
RecipeBuilder.get("engineer")
  .setShaped([
    [<extrautils2:decorativeglass:5>, <projectred-core:resource_item:105>, <extrautils2:decorativeglass:5>],
    [<projectred-core:resource_item:105>, null, <projectred-core:resource_item:105>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]])
  .addTool(<ore:artisansSolderer>, 24)
  .addTool(<ore:artisansFile>, 12)
  .addOutput(<refinedstorage:storage_housing>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("storage_housing")
  .create();

# Storage Parts
// 1k Storage Part
RecipeBuilder.get("chemist")
  .setShaped([
    [<ore:itemSilicon>, <minecraft:redstone>, <ore:itemSilicon>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:processor:3>, <refinedstorage:quartz_enriched_iron>],
    [<ore:itemSilicon>, <refinedstorage:quartz_enriched_iron>, <ore:itemSilicon>]])
  .addTool(<ore:artisansSolderer>, 7)
  .addTool(<ore:artisansBurner>, 3)
  .addOutput(<refinedstorage:storage_part>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("1k_storage_part")
  .create();

// 4k Storage Part
RecipeBuilder.get("chemist")
  .setShaped([
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:processor:4>, <refinedstorage:quartz_enriched_iron>],
    [<refinedstorage:storage_part>, <minecraft:redstone>, <refinedstorage:storage_part>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:storage_part>, <refinedstorage:quartz_enriched_iron>]])
  .addTool(<ore:artisansSolderer>, 10)
  .addTool(<ore:artisansBurner>, 5)
  .addOutput(<refinedstorage:storage_part:1>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("4k_storage_part")
  .create();

// 16k Storage Part
RecipeBuilder.get("chemist")
  .setShaped([
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:processor:4>, <refinedstorage:quartz_enriched_iron>],
    [<refinedstorage:storage_part:1>, <projectred-core:resource_item:105>, <refinedstorage:storage_part:1>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:storage_part:1>, <refinedstorage:quartz_enriched_iron>]])
  .addTool(<ore:artisansSolderer>, 13)
  .addTool(<ore:artisansBurner>, 7)
  .addOutput(<refinedstorage:storage_part:2>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("16k_storage_part")
  .create();

// 64k Storage Part
RecipeBuilder.get("chemist")
  .setShaped([
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:processor:5>, <refinedstorage:quartz_enriched_iron>],
    [<refinedstorage:storage_part:2>, <glacidus:glacidite_fragment>, <refinedstorage:storage_part:2>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:storage_part:2>, <refinedstorage:quartz_enriched_iron>]])
  .addTool(<ore:artisansSolderer>, 15)
  .addTool(<ore:artisansBurner>, 9)
  .addOutput(<refinedstorage:storage_part:3>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("64k_storage_part")
  .create();

# Storage Disks
// 1k Storage Disk
RecipeBuilder.get("chemist")
  .setShaped([
    [<ore:blockGlass>, <minecraft:redstone>, <ore:blockGlass>],
    [<minecraft:redstone>, <refinedstorage:storage_part>, <minecraft:redstone>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]])
  .addTool(<ore:artisansPliers>, 5)
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<refinedstorage:storage_disk>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("1k_storage_disk")
  .create();

// 4k Storage Disk
RecipeBuilder.get("chemist")
  .setShaped([
    [<ore:blockGlass>, <minecraft:redstone>, <ore:blockGlass>],
    [<minecraft:redstone>, <refinedstorage:storage_part:1>, <minecraft:redstone>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]])
  .addTool(<ore:artisansPliers>, 8)
  .addTool(<ore:artisansSolderer>, 12)
  .addOutput(<refinedstorage:storage_disk:1>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("4k_storage_disk")
  .create();

// 16k Storage Disk
RecipeBuilder.get("chemist")
  .setShaped([
    [<extrautils2:decorativeglass>, <projectred-core:resource_item:105>, <extrautils2:decorativeglass>],
    [<projectred-core:resource_item:105>, <refinedstorage:storage_part:2>, <projectred-core:resource_item:105>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]])
  .addTool(<ore:artisansPliers>, 11)
  .addTool(<ore:artisansSolderer>, 14)
  .addOutput(<refinedstorage:storage_disk:2>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("16k_storage_disk")
  .create();

// 64k Storage Disk
RecipeBuilder.get("chemist")
  .setShaped([
    [<extrautils2:decorativeglass:4>, <glacidus:glacidite_fragment>, <extrautils2:decorativeglass:4>],
    [<glacidus:glacidite_fragment>, <refinedstorage:storage_part:3>, <glacidus:glacidite_fragment>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]])
  .addTool(<ore:artisansPliers>, 14)
  .addTool(<ore:artisansSolderer>, 16)
  .addOutput(<refinedstorage:storage_disk:3>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("64k_storage_disk")
  .create();


# Fluid Storage Parts
recipes.remove(<refinedstorage:fluid_storage_part:*>);
recipes.remove(<refinedstorage:fluid_storage_disk:*>);

// 64k Fluid Storage Part
RecipeBuilder.get("chemist")
  .setShaped([
    [<minecraft:prismarine_crystals>, <refinedstorage:processor:3>, <minecraft:prismarine_crystals>],
    [<extrautils2:decorativeglass>, <thermalexpansion:tank>, <extrautils2:decorativeglass>],
    [<minecraft:prismarine_crystals>, <extrautils2:decorativeglass>, <minecraft:prismarine_crystals>]])
  .addTool(<ore:artisansPliers>, 10)
  .addTool(<ore:artisansSolderer>, 7)
  .addOutput(<refinedstorage:fluid_storage_part>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("64k_fluid_storage_part")
  .create();

// 256k Fluid Storage Part
RecipeBuilder.get("chemist")
  .setShaped([
    [<minecraft:prismarine_crystals>, <refinedstorage:processor:3>, <minecraft:prismarine_crystals>],
    [<refinedstorage:fluid_storage_part>, <thermalexpansion:tank>, <refinedstorage:fluid_storage_part>],
    [<minecraft:prismarine_crystals>, <refinedstorage:fluid_storage_part>, <minecraft:prismarine_crystals>]])
  .addTool(<ore:artisansPliers>, 12)
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<refinedstorage:fluid_storage_part:1>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("256k_fluid_storage_part")
  .create();

// 1024k Fluid Storage Part
RecipeBuilder.get("chemist")
  .setShaped([
    [<minecraft:prismarine_shard>, <refinedstorage:processor:4>, <minecraft:prismarine_shard>],
    [<refinedstorage:fluid_storage_part:1>, <openblocks:tank>, <refinedstorage:fluid_storage_part:1>],
    [<minecraft:prismarine_shard>, <refinedstorage:fluid_storage_part:1>, <minecraft:prismarine_shard>]])
  .setFluid(<liquid:redstone> * 1000)
  .addTool(<ore:artisansPliers>, 14)
  .addTool(<ore:artisansSolderer>, 13)
  .addOutput(<refinedstorage:fluid_storage_part:2>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("1024k_fluid_storage_part")
  .create();

// 4096k Fluid Storage Part
RecipeBuilder.get("chemist")
  .setShaped([
    [<pristeel:pristeel_ingot>, <refinedstorage:processor:5>, <pristeel:pristeel_ingot>],
    [<refinedstorage:fluid_storage_part:2>, <openblocks:tank>, <refinedstorage:fluid_storage_part:2>],
    [<pristeel:pristeel_ingot>, <refinedstorage:fluid_storage_part:2>, <pristeel:pristeel_ingot>]])
  .setFluid(<liquid:ender> * 1000)
  .addTool(<ore:artisansPliers>, 16)
  .addTool(<ore:artisansSolderer>, 16)
  .addOutput(<refinedstorage:fluid_storage_part:3>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("4096k_fluid_storage_part")
  .create();


# Fluid Storage Disks
// 64k Fluid Storage Disk
RecipeBuilder.get("chemist")
  .setShaped([
    [<extrautils2:decorativeglass>, <minecraft:prismarine_crystals>, <extrautils2:decorativeglass>],
    [<minecraft:prismarine_crystals>, <refinedstorage:fluid_storage_part>, <minecraft:prismarine_crystals>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]])
  .addTool(<ore:artisansSolderer>, 7)
  .addTool(<ore:artisansSpanner>, 12)
  .addOutput(<refinedstorage:fluid_storage_disk>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("64k_fluid_storage_disk")
  .create();

// 256k Fluid Storage Disk
RecipeBuilder.get("chemist")
  .setShaped([
    [<extrautils2:decorativeglass>, <minecraft:prismarine_crystals>, <extrautils2:decorativeglass>],
    [<minecraft:prismarine_crystals>, <refinedstorage:fluid_storage_part:1>, <minecraft:prismarine_crystals>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]])
  .addTool(<ore:artisansSolderer>, 10)
  .addTool(<ore:artisansSpanner>, 14)
  .addOutput(<refinedstorage:fluid_storage_disk:1>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("256k_fluid_storage_disk")
  .create();

// 1024k Fluid Storage Disk
RecipeBuilder.get("chemist")
  .setShaped([
    [<extrautils2:decorativeglass:5>, <minecraft:prismarine_shard>, <extrautils2:decorativeglass:5>],
    [<minecraft:prismarine_shard>, <refinedstorage:fluid_storage_part:2>, <minecraft:prismarine_shard>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]])
  .addTool(<ore:artisansSolderer>, 13)
  .addTool(<ore:artisansSpanner>, 16)
  .addOutput(<refinedstorage:fluid_storage_disk:2>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("1024k_fluid_storage_disk")
  .create();

// 4096k Fluid Storage Disk
RecipeBuilder.get("chemist")
  .setShaped([
    [<extrautils2:decorativeglass:4>, <pristeel:pristeel_ingot>, <extrautils2:decorativeglass:4>],
    [<pristeel:pristeel_ingot>, <refinedstorage:fluid_storage_part:3>, <pristeel:pristeel_ingot>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]])
  .addTool(<ore:artisansSolderer>, 15)
  .addTool(<ore:artisansSpanner>, 18)
  .addOutput(<refinedstorage:fluid_storage_disk:3>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("4096k_fluid_storage_disk")
  .create();

############################
#	Storage Blocks	 #
############################
recipes.remove(<refinedstorage:storage:*>);
recipes.remove(<refinedstorage:fluid_storage:*>);

// 1k
RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:machine_casing>, <refinedstorage:storage_part>, <projectred-core:resource_item:105>])
  .addTool(<ore:artisansSolderer>, 25)
  .addOutput(<refinedstorage:storage>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("1k_storage_block")
  .create();

// 4k
RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:machine_casing>, <refinedstorage:storage_part:1>, <projectred-core:resource_item:105>])
  .addTool(<ore:artisansSolderer>, 50)
  .addOutput(<refinedstorage:storage:1>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("4k_storage_block")
  .create();

// 16k
RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:machine_casing>, <refinedstorage:storage_part:2>, <projectred-core:resource_item:105>])
  .addTool(<ore:artisansSolderer>, 75)
  .addOutput(<refinedstorage:storage:2>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("16k_storage_block")
  .create();

// 64k
RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:machine_casing>, <refinedstorage:storage_part:3>, <projectred-core:resource_item:105>])
  .addTool(<ore:artisansSolderer>, 100)
  .addOutput(<refinedstorage:storage:3>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("64k_storage_block")
  .create();

# Fluid
// 15 durability per tier
// 64k
RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:machine_casing>, <refinedstorage:fluid_storage_part>, <projectred-core:resource_item:105>])
  .addTool(<ore:artisansSolderer>, 15)
  .addOutput(<refinedstorage:fluid_storage>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("64k_fluid_storage_block")
  .create();

// 256k
RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:machine_casing>, <refinedstorage:fluid_storage_part:1>, <projectred-core:resource_item:105>])
  .addTool(<ore:artisansSolderer>, 30)
  .addOutput(<refinedstorage:fluid_storage:1>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("256k_fluid_storage_block")
  .create();

// 1024k
RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:machine_casing>, <refinedstorage:fluid_storage_part:2>, <projectred-core:resource_item:105>])
  .addTool(<ore:artisansSolderer>, 45)
  .addOutput(<refinedstorage:fluid_storage:2>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("1024k_fluid_storage_block")
  .create();

// 4096k
RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:machine_casing>, <refinedstorage:fluid_storage_part:3>, <projectred-core:resource_item:105>])
  .addTool(<ore:artisansSolderer>, 60)
  .addOutput(<refinedstorage:fluid_storage:3>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("4096k_fluid_storage_block")
  .create();

############################
#	Wireless Stuff	 #
############################
recipes.remove(<refinedstorage:wireless_grid>);
recipes.remove(<refinedstorage:wireless_fluid_grid>);
recipes.remove(<refinedstorage:wireless_crafting_monitor>);

recipes.remove(<refinedstorageaddons:wireless_crafting_grid>);

// Wireless Grid
RecipeBuilder.get("engineer")
  .setShapeless([<refinedstorage:grid>, <minecraft:ender_pearl>, <refinedstorage:processor:4>])
  .addTool(<ore:artisansSolderer>, 15)
  .addOutput(<refinedstorage:wireless_grid>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("wireless_grid")
  .create();

RecipeBuilder.get("engineer")
  .setShapeless([<refinedstorage:grid>, <minecraft:ender_pearl>, <refinedstorage:processor:4>])
  .setFluid(<liquid:redstone> * 500)
  .addTool(<ore:artisansSolderer>, 15)
  .addOutput(<refinedstorage:wireless_grid>.withTag({Energy: 1000}))
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("wireless_grid_charged")
  .create();

// Wireless Fluid Grid
RecipeBuilder.get("engineer")
  .setShapeless([<refinedstorage:grid:3>, <minecraft:ender_pearl>, <refinedstorage:processor:4>])
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<refinedstorage:wireless_fluid_grid>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("wireless_fluid_grid")
  .create();

RecipeBuilder.get("engineer")
  .setShapeless([<refinedstorage:grid:3>, <minecraft:ender_pearl>, <refinedstorage:processor:4>])
  .setFluid(<liquid:redstone> * 1000)
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<refinedstorage:wireless_fluid_grid>.withTag({Energy: 1000}))
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("wireless_fluid_grid_charged")
  .create();

// Wireless Crafting Grid
RecipeBuilder.get("engineer")
  .setShapeless([<refinedstorage:grid:1>, <minecraft:ender_pearl>, <refinedstorage:processor:5>])
  .addTool(<ore:artisansSolderer>, 20)
  .addOutput(<refinedstorageaddons:wireless_crafting_grid>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("wireless_crafting_grid")
  .create();

RecipeBuilder.get("engineer")
  .setShapeless([<refinedstorage:grid:1>, <minecraft:ender_pearl>, <refinedstorage:processor:5>])
  .setFluid(<liquid:redstone> * 500)
  .addTool(<ore:artisansSolderer>, 20)
  .addOutput(<refinedstorageaddons:wireless_crafting_grid>.withTag({Energy: 1000}))
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("wireless_crafting_grid_charged")
  .create();

// Wireless Crafting Monitor
RecipeBuilder.get("engineer")
  .setShapeless([<refinedstorage:crafting_monitor>, <refinedstorage:processor:3>, <extrautils2:endershard>, <extrautils2:endershard>])
  .addTool(<ore:artisansSolderer>, 5)
  .addOutput(<refinedstorage:wireless_crafting_monitor>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("wireless_crafting_monitor")
  .create();

RecipeBuilder.get("engineer")
  .setShapeless([<refinedstorage:crafting_monitor>, <refinedstorage:processor:3>, <extrautils2:endershard>, <extrautils2:endershard>])
  .setFluid(<liquid:redstone> * 500)
  .addTool(<ore:artisansSolderer>, 5)
  .addOutput(<refinedstorage:wireless_crafting_monitor>.withTag({Energy: 1000}))
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("wireless_crafting_monitor_charged")
  .create();


print("refined_storage.zs loaded");