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

var basic = <refinedstorage:processor:3>;
var improved = <refinedstorage:processor:4>;
var advanced = <refinedstorage:processor:5>;

var quartz_iron = <refinedstorage:quartz_enriched_iron>;
var electrotine = <projectred-core:resource_item:105>;
var pulsaton = <contenttweaker:pulsaton_sliver>;

// Tooltip about how to make covers
<refinedstorage:cutting_tool>.addTooltip(format.aqua("Combine with a block to make covers."));

// Wrench
RecipeBuilder.get("engineer")
  .setShaped([
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:processor:3>, <refinedstorage:quartz_enriched_iron>],
    [<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>],
    [null, <refinedstorage:quartz_enriched_iron>, null]])
  .addOutput(<refinedstorage:wrench>)
  .setName("rswrench")
  .create();
  
// Changes Quartz-Enriched Iron to use the Chemist's worktable
recipes.remove(quartz_iron);
RecipeBuilder.get("chemist")
  .setShapeless([<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:quartz>])
  .setFluid(<liquid:lava> * 500)
  .addTool(<ore:artisansBurner>, 40)
  .addOutput(quartz_iron * 4)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("quartz_iron")
  .create();

recipes.addShapeless(quartz_iron*9, [<refinedstorage:quartz_enriched_iron_block>]);

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
  .setShapeless([<minecraft:iron_ingot>, <refinedstorage:processor_binding>, electrotine, <ore:itemSilicon>])
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
  .setShapeless([<minecraft:gold_ingot>, <refinedstorage:processor_binding>, electrotine, <ore:itemSilicon>])
  .setFluid(<liquid:lava> * 125)
  .addTool(<ore:artisansSolderer>, 3)
  .addOutput(<refinedstorage:processor:1>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("improved_processor_electrotine")
  .create();


// Advanced
RecipeBuilder.get("chemist")
  .setShapeless([<minecraft:diamond>, <refinedstorage:processor_binding>, electrotine, <ore:itemSilicon>])
  .setFluid(<liquid:lava> * 500)
  .addTool(<ore:artisansSolderer>, 5)
  .addOutput(<refinedstorage:processor:2>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("advanced_processor")
  .create();
  

# Network Card
recipes.remove(<refinedstorage:network_card>);
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, quartz_iron, quartz_iron],
    [<ore:paper>, basic, <ore:paper>],
    [quartz_iron, quartz_iron, quartz_iron]])
  .addTool(<ore:artisansPliers>, 10)
  .addTool(<ore:artisansSolderer>, 5)
  .addOutput(<refinedstorage:network_card>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("network_card")
  .create();

# Security Card
recipes.remove(<refinedstorage:security_card>);
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, quartz_iron, quartz_iron],
    [advanced, <refinedstorage:network_card>, improved],
    [quartz_iron, quartz_iron, quartz_iron]])
  .addTool(<ore:artisansPliers>, 5)
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<refinedstorage:security_card>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("security_card")
  .create();

# Machine Casing
recipes.remove(<refinedstorage:machine_casing>);
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, quartz_iron, quartz_iron],
    [quartz_iron, <extrautils2:machine>, quartz_iron],
    [quartz_iron, quartz_iron, quartz_iron]])
  .addTool(<ore:artisansHammer>, 15)
  .addTool(<ore:artisansCutters>, 25)
  .addOutput(<refinedstorage:machine_casing>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("machine_casing")
  .create();

############################
#		BLOCKS		 #
############################

// Disk Drive
recipes.remove(<refinedstorage:disk_drive>);
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, quartz_iron, quartz_iron, quartz_iron, quartz_iron],
    [quartz_iron, <refinedstorage:core>, advanced, <refinedstorage:core:1>, quartz_iron],
    [quartz_iron, advanced, <refinedstorage:machine_casing>|<refinedstorage:storage:*>, advanced, quartz_iron],
    [quartz_iron, <refinedstorage:core:1>, advanced, <refinedstorage:core>, quartz_iron],
    [quartz_iron, quartz_iron, quartz_iron, quartz_iron, quartz_iron]])
  .setSecondaryIngredients([<glacidus:glacidite_fragment> * 16, <thermalexpansion:cache>.withTag({Facing: 3 as byte, Level: 0 as byte}), <ironchest:iron_chest>])
  .setFluid(<liquid:ender> * 4000)
  .addTool(<ore:artisansPliers>, 75)
  .addTool(<ore:artisansSolderer>, 250)
  .addTool(<ore:artisansSpanner>, 100)
  .addOutput(<refinedstorage:disk_drive>)
  .setMirrored()
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("rsdisk_drive")
  .create();

// Controller
recipes.remove(<refinedstorage:controller>);
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, advanced, quartz_iron],
    [<ore:itemSilicon>, <refinedstorage:machine_casing>, <ore:itemSilicon>],
    [quartz_iron, pulsaton, quartz_iron]])
  .addTool(<ore:artisansSpanner>, 500)
  .addOutput(<refinedstorage:controller>.withTag({Energy: 0}))
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("rscontroller")
  .create();

RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, advanced, quartz_iron],
    [pulsaton, <refinedstorage:machine_casing>, pulsaton],
    [quartz_iron, pulsaton, quartz_iron]])
  .setSecondaryIngredients([<forge:bucketfilled>.withTag({FluidName: "redstone", Amount: 1000}), <ore:itemSilicon>])
  .setFluid(<liquid:redstone> * 4000)
  .addTool(<ore:artisansSpanner>, 350)
  .addOutput(<refinedstorage:controller>.withTag({Energy: 10000}))
  .setExtraOutputOne(<minecraft:bucket>, 1.0)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("controller_charged")
  .create();

// Crafting Monitor
recipes.remove(<refinedstorage:crafting_monitor>);
RecipeBuilder.get("chemist")
  .setShaped([
    [<minecraft:iron_ingot>, basic, <ore:blockGlass>],
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
RecipeBuilder.get("chemist")
  .setShaped([
    [improved, <refinedstorage:core>, <ore:blockGlass>],
    [quartz_iron, <refinedstorage:machine_casing>, <ore:blockGlass>],
    [improved, <refinedstorage:core:1>, <ore:blockGlass>]])
  .addTool(<ore:artisansPliers>, 10)
  .addTool(<ore:artisansSpanner>, 10)
  .addOutput(<refinedstorage:grid>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("grid")
  .create();

// Crafting Grid
recipes.remove(<refinedstorage:grid:1>);
RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:grid>, <ore:workbench>, advanced])
  .addTool(<ore:artisansPliers>, 15)
  .addOutput(<refinedstorage:grid:1>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("crafting_grid")
  .create();

// Fluid Grid
recipes.remove(<refinedstorage:grid:3>);
RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:grid>, <minecraft:bucket>, advanced])
  .addTool(<ore:artisansSpanner>, 15)
  .addOutput(<refinedstorage:grid:3>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("fluid_grid")
  .create();

// Security Manager
recipes.remove(<refinedstorage:security_manager>);
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, <minecraft:chest>, quartz_iron],
    [improved, <refinedstorage:machine_casing>, improved],
    [quartz_iron, <refinedstorage:security_card>, quartz_iron]])
  .addTool(<ore:artisansSpanner>, 20)
  .addOutput(<refinedstorage:security_manager>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("security_manager")
  .create();

// Portable Grid
recipes.remove(<refinedstorage:portable_grid>);
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, quartz_iron, quartz_iron],
    [quartz_iron, <refinedstorage:grid>, quartz_iron],
    [quartz_iron, quartz_iron, quartz_iron]])
  .setSecondaryIngredients([<refinedstorage:core>, improved, <refinedstorage:core:1>])
  .addTool(<ore:artisansCutters>, 50)
  .addTool(<ore:artisansSpanner>, 30)
  .addOutput(<refinedstorage:portable_grid>.withTag({Energy: 0}))
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("portable_grid")
  .create();

RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, quartz_iron, quartz_iron],
    [quartz_iron, <refinedstorage:grid>, quartz_iron],
    [quartz_iron, quartz_iron, quartz_iron]])
  .setSecondaryIngredients([<refinedstorage:core>, improved, <refinedstorage:core:1>])
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
RecipeBuilder.get("chemist")
  .setShaped([
    [<extrautils2:ingredients:11>, <refinedstorage:core>, <extrautils2:ingredients:11>],
    [advanced, <refinedstorage:storage_part:3>, advanced],
    [<extrautils2:ingredients:11>, <artisanworktables:workstation:5>, <extrautils2:ingredients:11>]])
  .addTool(<ore:artisansHammer>, 25)
  .addTool(<ore:artisansChisel>, 15)
  .addOutput(<storagetech:diskworkbench>)
  .addRequirement(FTGU.allOf(["cyborg:technology/advanced_storage_compression"]))
  .setName("disk_workbench")
  .create();

// Fluid Disk Workbench
RecipeBuilder.get("chemist")
  .setShaped([
    [<extrautils2:ingredients:11>, <refinedstorage:core>, <extrautils2:ingredients:11>],
    [advanced, <refinedstorage:fluid_storage_part>, advanced],
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
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, <ore:blockGlass>, quartz_iron],
    [quartz_iron, improved, quartz_iron],
    [quartz_iron, <ore:blockGlass>, quartz_iron]])
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<refinedstorage:upgrade>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("rs_upgrade")
  .create();

// Range Upgrade
recipes.remove(<refinedstorage:upgrade:1>);
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, basic, quartz_iron],
    [quartz_iron, <refinedstorage:upgrade>, quartz_iron],
    [quartz_iron, <nhc:energypearl>, quartz_iron]])
  .addTool(<ore:artisansSolderer>, 5)
  .addOutput(<refinedstorage:upgrade:1>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("rs_range_upgrade")
  .create();

// Speed Upgrade
recipes.remove(<refinedstorage:upgrade:2>);
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, <minecraft:sugar>, quartz_iron],
    [quartz_iron, <refinedstorage:upgrade>, quartz_iron],
    [quartz_iron, <minecraft:sugar>, quartz_iron]])
  .addTool(<ore:artisansSolderer>, 5)
  .addOutput(<refinedstorage:upgrade:2>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("rs_speed_upgrade")
  .create();

// Crafting Upgrade
recipes.remove(<refinedstorage:upgrade:3>);
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, <refinedstorage:core>, quartz_iron],
    [<ore:workbench>, <refinedstorage:upgrade>, <ore:workbench>],
    [quartz_iron, quartz_iron, quartz_iron]])
  .addTool(<ore:artisansSolderer>, 5)
  .addOutput(<refinedstorage:upgrade:3>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("rs_crafting_upgrade")
  .create();

// Stack Upgrade
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, <refinedstorage:upgrade:2>, quartz_iron],
    [<refinedstorage:upgrade:2>, advanced, <refinedstorage:upgrade:2>],
    [quartz_iron, <refinedstorage:upgrade:2>, quartz_iron]])
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
RecipeBuilder.get("chemist")
  .setShaped([
    [<extrautils2:decorativeglass:5>, electrotine, <extrautils2:decorativeglass:5>],
    [electrotine, null, electrotine],
    [quartz_iron, quartz_iron, quartz_iron]])
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
    [quartz_iron, basic, quartz_iron],
    [<ore:itemSilicon>, quartz_iron, <ore:itemSilicon>]])
  .addTool(<ore:artisansSolderer>, 7)
  .addTool(<ore:artisansBurner>, 3)
  .addOutput(<refinedstorage:storage_part>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("1k_storage_part")
  .create();

// 4k Storage Part
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, improved, quartz_iron],
    [<refinedstorage:storage_part>, <minecraft:redstone>, <refinedstorage:storage_part>],
    [quartz_iron, <refinedstorage:storage_part>, quartz_iron]])
  .addTool(<ore:artisansSolderer>, 10)
  .addTool(<ore:artisansBurner>, 5)
  .addOutput(<refinedstorage:storage_part:1>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("4k_storage_part")
  .create();

// 16k Storage Part
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, improved, quartz_iron],
    [<refinedstorage:storage_part:1>, electrotine, <refinedstorage:storage_part:1>],
    [quartz_iron, <refinedstorage:storage_part:1>, quartz_iron]])
  .addTool(<ore:artisansSolderer>, 13)
  .addTool(<ore:artisansBurner>, 7)
  .addOutput(<refinedstorage:storage_part:2>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("16k_storage_part")
  .create();

// 64k Storage Part
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, advanced, quartz_iron],
    [<refinedstorage:storage_part:2>, <glacidus:glacidite_fragment>, <refinedstorage:storage_part:2>],
    [quartz_iron, <refinedstorage:storage_part:2>, quartz_iron]])
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
    [quartz_iron, quartz_iron, quartz_iron]])
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
    [quartz_iron, quartz_iron, quartz_iron]])
  .addTool(<ore:artisansPliers>, 8)
  .addTool(<ore:artisansSolderer>, 12)
  .addOutput(<refinedstorage:storage_disk:1>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("4k_storage_disk")
  .create();

// 16k Storage Disk
RecipeBuilder.get("chemist")
  .setShaped([
    [<extrautils2:decorativeglass>, electrotine, <extrautils2:decorativeglass>],
    [electrotine, <refinedstorage:storage_part:2>, electrotine],
    [quartz_iron, quartz_iron, quartz_iron]])
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
    [quartz_iron, quartz_iron, quartz_iron]])
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
    [<minecraft:prismarine_crystals>, basic, <minecraft:prismarine_crystals>],
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
    [<minecraft:prismarine_crystals>, basic, <minecraft:prismarine_crystals>],
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
    [<minecraft:prismarine_shard>, improved, <minecraft:prismarine_shard>],
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
    [<pristeel:pristeel_ingot>, advanced, <pristeel:pristeel_ingot>],
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
    [quartz_iron, quartz_iron, quartz_iron]])
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
    [quartz_iron, quartz_iron, quartz_iron]])
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
    [quartz_iron, quartz_iron, quartz_iron]])
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
    [quartz_iron, quartz_iron, quartz_iron]])
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
  .setShapeless([<refinedstorage:machine_casing>, <refinedstorage:storage_part>, electrotine])
  .addTool(<ore:artisansSolderer>, 25)
  .addOutput(<refinedstorage:storage>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("1k_storage_block")
  .create();

// 4k
RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:machine_casing>, <refinedstorage:storage_part:1>, ])
  .addTool(<ore:artisansSolderer>, 50)
  .addOutput(<refinedstorage:storage:1>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("4k_storage_block")
  .create();

// 16k
RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:machine_casing>, <refinedstorage:storage_part:2>, pulsaton])
  .addTool(<ore:artisansSolderer>, 75)
  .addOutput(<refinedstorage:storage:2>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("16k_storage_block")
  .create();

// 64k
RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:machine_casing>, <refinedstorage:storage_part:3>, electrotine])
  .addTool(<ore:artisansSolderer>, 100)
  .addOutput(<refinedstorage:storage:3>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("64k_storage_block")
  .create();

# Fluid
// 15 durability per tier
// 64k
RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:machine_casing>, <refinedstorage:fluid_storage_part>, electrotine])
  .addTool(<ore:artisansSolderer>, 15)
  .addOutput(<refinedstorage:fluid_storage>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("64k_fluid_storage_block")
  .create();

// 256k
RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:machine_casing>, <refinedstorage:fluid_storage_part:1>, electrotine])
  .addTool(<ore:artisansSolderer>, 30)
  .addOutput(<refinedstorage:fluid_storage:1>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("256k_fluid_storage_block")
  .create();

// 1024k
RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:machine_casing>, <refinedstorage:fluid_storage_part:2>, electrotine])
  .addTool(<ore:artisansSolderer>, 45)
  .addOutput(<refinedstorage:fluid_storage:2>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("1024k_fluid_storage_block")
  .create();

// 4096k
RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:machine_casing>, <refinedstorage:fluid_storage_part:3>, electrotine])
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
RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:grid>, <minecraft:ender_pearl>, improved])
  .addTool(<ore:artisansSolderer>, 15)
  .addOutput(<refinedstorage:wireless_grid>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("wireless_grid")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:grid>, <minecraft:ender_pearl>, improved])
  .setFluid(<liquid:redstone> * 500)
  .addTool(<ore:artisansSolderer>, 15)
  .addOutput(<refinedstorage:wireless_grid>.withTag({Energy: 1000}))
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("wireless_grid_charged")
  .create();

// Wireless Fluid Grid
RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:grid:3>, <minecraft:ender_pearl>, improved])
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<refinedstorage:wireless_fluid_grid>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("wireless_fluid_grid")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:grid:3>, <minecraft:ender_pearl>, improved])
  .setFluid(<liquid:redstone> * 1000)
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<refinedstorage:wireless_fluid_grid>.withTag({Energy: 1000}))
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("wireless_fluid_grid_charged")
  .create();

// Wireless Crafting Grid
RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:grid:1>, <minecraft:ender_pearl>, advanced])
  .addTool(<ore:artisansSolderer>, 20)
  .addOutput(<refinedstorageaddons:wireless_crafting_grid>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("wireless_crafting_grid")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:grid:1>, <minecraft:ender_pearl>, advanced])
  .setFluid(<liquid:redstone> * 500)
  .addTool(<ore:artisansSolderer>, 20)
  .addOutput(<refinedstorageaddons:wireless_crafting_grid>.withTag({Energy: 1000}))
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("wireless_crafting_grid_charged")
  .create();

// Wireless Crafting Monitor
RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:crafting_monitor>, basic, <extrautils2:endershard>, <extrautils2:endershard>])
  .addTool(<ore:artisansSolderer>, 5)
  .addOutput(<refinedstorage:wireless_crafting_monitor>)
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("wireless_crafting_monitor")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:crafting_monitor>, basic, <extrautils2:endershard>, <extrautils2:endershard>])
  .setFluid(<liquid:redstone> * 500)
  .addTool(<ore:artisansSolderer>, 5)
  .addOutput(<refinedstorage:wireless_crafting_monitor>.withTag({Energy: 1000}))
  .addRequirement(FTGU.allOf(["cyborg:technology/storage_compression"]))
  .setName("wireless_crafting_monitor_charged")
  .create();


print("refined_storage.zs loaded");