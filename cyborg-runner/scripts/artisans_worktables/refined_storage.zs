# Changes recipes for Refined Storage blocks/items

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.FTGU;

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
var binding = <refinedstorage:processor_binding>;

var construction = <refinedstorage:core>;
var destruction = <refinedstorage:core:1>;

var iron = <minecraft:iron_ingot>;
var gold = <minecraft:gold_ingot>;
var diamond = <minecraft:diamond>;
var redstone = <minecraft:redstone>;
var quartz = <minecraft:quartz>;

var dust = <minecraft:redstone>|<projectred-core:resource_item:105>;
var residuum = <glacidus:residuum>;

var quartz_iron = <refinedstorage:quartz_enriched_iron>;
var electrotine = <projectred-core:resource_item:105>;
var pulsaton = <contenttweaker:pulsaton_sliver>;
var silicon = <ore:itemSilicon>;

var glass = <ore:blockGlass>;
var red_glass = <extrautils2:decorativeglass:5>;
var casing = <refinedstorage:machine_casing>;
var grid = <refinedstorage:grid>;



var beaker = <ore:artisansBeaker>;
var burner = <ore:artisansBurner>;

var pliers = <ore:artisansPliers>;
var spanner = <ore:artisansSpanner>;

var solderer = <ore:artisansSolderer>;
var cutters = <ore:artisansCutters>;





<refinedstorage:cutting_tool>.maxDamage = 32;
<refinedstorage:cutting_tool>.addTooltip(format.aqua("Combine with a block to make covers."));

<refinedstorage:quartz_enriched_iron>.displayName = "Quartz-Enriched Iron";
<refinedstorage:upgrade>.displayName = "Blank Upgrade";

// Induction Smelt Residuum into Silicon
mods.thermalexpansion.InductionSmelter.addRecipe(<refinedstorage:silicon>, <minecraft:sand>, residuum*2, 4000, <refinedstorage:silicon>, 25);

// Changes Quartz-Enriched Iron to use the Chemist's worktable or Induction Smelter
recipes.remove(quartz_iron);
RecipeBuilder.get("chemist")
  .setShapeless([iron, iron, quartz])
  .addTool(cutters, 16)
  .addOutput(quartz_iron * 2)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("quartz_iron")
  .create();

mods.thermalexpansion.InductionSmelter.addRecipe(quartz_iron*4, quartz*2, iron*4, 4000);

recipes.addShapeless(quartz_iron*9, [<refinedstorage:quartz_enriched_iron_block>]);

# Machine Casing
recipes.remove(casing);
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, quartz_iron, quartz_iron],
    [quartz_iron, <extrautils2:machine>, quartz_iron],
    [quartz_iron, quartz_iron, quartz_iron]])
  .addTool(cutters, 16)
  .addOutput(casing)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("machine_casing")
  .create();



// Change the recipe for Processor Binding
recipes.remove(binding);
RecipeBuilder.get("chemist")
  .setShaped([
    [<ore:string>, <ore:slimeball>, <ore:string>]])
  .addTool(beaker, 8)
  .addOutput(binding * 8)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("processor_binding")
  .create();

RecipeBuilder.get("chemist")
  .setShaped([
    [<ore:blockWool>, <minecraft:slime>, <ore:blockWool>]])
  .addTool(beaker, 64)
  .addOutput(binding * 64)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("mass_processing_binding")
  .create();

# Change the recipes for raw processors
recipes.remove(<refinedstorage:processor>);
recipes.remove(<refinedstorage:processor:1>);
recipes.remove(<refinedstorage:processor:2>);

// Basic
RecipeBuilder.get("chemist")
  .setShapeless([iron, binding, electrotine, silicon])
  .addTool(solderer, 4)
  .addOutput(<refinedstorage:processor>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("basic_processor")
  .create();

// Improved
RecipeBuilder.get("chemist")
  .setShapeless([gold, binding, redstone|electrotine, silicon])
  .addTool(solderer, 8)
  .addOutput(<refinedstorage:processor:1>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("improved_processor ")
  .create();


// Advanced
RecipeBuilder.get("chemist")
  .setShapeless([diamond, binding, redstone, silicon])
  .addTool(solderer, 16)
  .addOutput(<refinedstorage:processor:2>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("advanced_processor")
  .create();
  

# Network Card
recipes.remove(<refinedstorage:network_card>);
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, quartz_iron, quartz_iron],
    [<ore:paper>, basic, <ore:paper>],
    [quartz_iron, quartz_iron, quartz_iron]])
  .addTool(pliers, 12)
  .addTool(solderer, 4)
  .addOutput(<refinedstorage:network_card>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("network_card")
  .create();

# Security Card
recipes.remove(<refinedstorage:security_card>);
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, quartz_iron, quartz_iron],
    [advanced, <refinedstorage:network_card>, improved],
    [quartz_iron, quartz_iron, quartz_iron]])
  .addTool(pliers, 4)
  .addTool(solderer, 12)
  .addOutput(<refinedstorage:security_card>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("security_card")
  .create();





############################
#	 STORAGES	 #
############################
recipes.remove(<refinedstorage:storage_part:*>);
recipes.remove(<refinedstorage:storage_disk:*>);
recipes.remove(<refinedstorage:storage_housing>);


var part1k = <refinedstorage:storage_part>;
var part4k = <refinedstorage:storage_part:1>;
var part16k = <refinedstorage:storage_part:2>;
var part64k = <refinedstorage:storage_part:3>;

var housing = <refinedstorage:storage_housing>;

# Storage Housing
RecipeBuilder.get("chemist")
  .setShaped([
    [<extrautils2:decorativeglass:5>, redstone|electrotine, <extrautils2:decorativeglass:5>],
    [redstone|electrotine, null, redstone|electrotine],
    [quartz_iron, quartz_iron, quartz_iron]])
  .addTool(pliers, 16)
  .addTool(solderer, 8)
  .addOutput(housing)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("storage_housing")
  .create();



# Storage Parts
// 1k Storage Part
RecipeBuilder.get("chemist")
  .setShaped([
    [silicon, dust, silicon],
    [dust, basic, dust],
    [silicon, dust, silicon]])
  .addTool(solderer, 8)
  .addOutput(part1k)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("1k_storage_part")
  .create();

// 4k Storage Part
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, basic, quartz_iron],
    [part1k, dust, part1k],
    [quartz_iron, part1k, quartz_iron]])
  .addTool(solderer, 16)
  .addOutput(part4k)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("4k_storage_part")
  .create();

// 16k Storage Part
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, improved, quartz_iron],
    [part4k, dust, part4k],
    [quartz_iron, part4k, quartz_iron]])
  .addTool(solderer, 36)
  .addOutput(part16k)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("16k_storage_part")
  .create();

// 64k Storage Part
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, advanced, quartz_iron],
    [part16k, dust, part16k],
    [quartz_iron, part16k, quartz_iron]])
  .addTool(solderer, 108)
  .addOutput(part64k)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("64k_storage_part")
  .create();



# Storage Disks

// 1k Storage Disk
RecipeBuilder.get("chemist")
  .setShaped([
    [red_glass, residuum, red_glass],
    [residuum, part1k, residuum],
    [quartz_iron, quartz_iron, quartz_iron]])
  .addTool(solderer, 8)
  .addOutput(<refinedstorage:storage_disk>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("1k_disk")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([housing, part1k])
  .addTool(solderer, 8)
  .addOutput(<refinedstorage:storage_disk>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("1k_disk_housing")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:storage_disk>])
  .addTool(spanner, 16)
  .addOutput(housing)
  .setExtraOutputOne(part1k, 1.0)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:crafting/recycling", "cyborg:technology/storage_compression"]))
  .setName("1k_disk_salvage")
  .create();


// 4k Storage Disk
RecipeBuilder.get("chemist")
  .setShaped([
    [red_glass, residuum, red_glass],
    [residuum, part4k, residuum],
    [quartz_iron, quartz_iron, quartz_iron]])
  .addTool(solderer, 16)
  .addOutput(<refinedstorage:storage_disk:1>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("4k_disk")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([housing, part4k])
  .addTool(solderer, 16)
  .addOutput(<refinedstorage:storage_disk:1>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("4k_disk_housing")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:storage_disk:1>])
  .addTool(spanner, 32)
  .addOutput(housing)
  .setExtraOutputOne(part4k, 1.0)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:crafting/recycling", "cyborg:technology/storage_compression"]))
  .setName("4k_disk_salvage")
  .create();


// 16k Storage Disk
RecipeBuilder.get("chemist")
  .setShaped([
    [red_glass, residuum, red_glass],
    [residuum, part16k, residuum],
    [quartz_iron, quartz_iron, quartz_iron]])
  .addTool(solderer, 36)
  .addOutput(<refinedstorage:storage_disk:2>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("16k_disk")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([housing, part16k])
  .addTool(solderer, 36)
  .addOutput(<refinedstorage:storage_disk:2>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("16k_disk_housing")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:storage_disk:2>])
  .addTool(spanner, 72)
  .addOutput(housing)
  .setExtraOutputOne(part1k, 1.0)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:crafting/recycling", "cyborg:technology/storage_compression"]))
  .setName("16k_disk_salvage")
  .create();


// 64k Storage Disk
RecipeBuilder.get("chemist")
  .setShaped([
    [red_glass, residuum, red_glass],
    [residuum, part64k, residuum],
    [quartz_iron, quartz_iron, quartz_iron]])
  .addTool(solderer, 108)
  .addOutput(<refinedstorage:storage_disk:3>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("64k_disk")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([housing, part64k])
  .addTool(solderer, 108)
  .addOutput(<refinedstorage:storage_disk:3>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("64k_disk_housing")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:storage_disk:3>])
  .addTool(spanner, 216)
  .addOutput(housing)
  .setExtraOutputOne(part64k, 1.0)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:crafting/recycling", "cyborg:technology/storage_compression"]))
  .setName("64k_disk_salvage")
  .create();



# Fluid Storage Parts
recipes.remove(<refinedstorage:fluid_storage_part:*>);
recipes.remove(<refinedstorage:fluid_storage_disk:*>);

var fluidpart64k = <refinedstorage:fluid_storage_part>;
var fluidpart256k = <refinedstorage:fluid_storage_part:1>;
var fluidpart1024k = <refinedstorage:fluid_storage_part:2>;
var fluidpart4096k = <refinedstorage:fluid_storage_part:3>;

var prismarine = <minecraft:prismarine_shard>;
var prismarine_crystal = <minecraft:prismarine_crystals>;
var tank = <openblocks:tank>;

// 64k Fluid Storage Part
RecipeBuilder.get("chemist")
  .setShaped([
    [silicon, prismarine_crystal, silicon],
    [prismarine_crystal, tank, prismarine_crystal],
    [silicon, prismarine_crystal, silicon]])
  .addTool(solderer, 24)
  .addOutput(fluidpart64k)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("64k_fluid_storage_part")
  .create();

// 256k Fluid Storage Part
RecipeBuilder.get("chemist")
  .setShaped([
    [silicon, prismarine_crystal, silicon],
    [fluidpart64k, residuum, fluidpart64k],
    [silicon, fluidpart64k, silicon]])
  .addTool(solderer, 36)
  .addOutput(fluidpart256k)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("256k_fluid_storage_part")
  .create();

// 1024k Fluid Storage Part
RecipeBuilder.get("chemist")
  .setShaped([
    [silicon, prismarine_crystal, silicon],
    [fluidpart256k, residuum, fluidpart256k],
    [silicon, fluidpart256k, silicon]])
  .addTool(solderer, 48)
  .addOutput(fluidpart1024k)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("1024k_fluid_storage_part")
  .create();

// 4096k Fluid Storage Part
RecipeBuilder.get("chemist")
  .setShaped([
    [silicon, prismarine_crystal, silicon],
    [fluidpart256k, residuum, fluidpart256k],
    [silicon, fluidpart256k, silicon]])
  .addTool(solderer, 96)
  .addOutput(fluidpart4096k)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("4096k_fluid_storage_part")
  .create();



# Fluid Storage Disks
var thick_glass = <extrautils2:decorativeglass>;
// 64k Fluid Storage Disk
RecipeBuilder.get("chemist")
  .setShaped([
    [thick_glass, prismarine, thick_glass],
    [prismarine, fluidpart64k, prismarine],
    [quartz_iron, quartz_iron, quartz_iron]])
  .addTool(solderer, 24)
  .addOutput(<refinedstorage:fluid_storage_disk>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("64k_fluid_storage_disk")
  .create();

// 256k Fluid Storage Disk
RecipeBuilder.get("chemist")
  .setShaped([
    [thick_glass, prismarine, thick_glass],
    [prismarine, fluidpart256k, prismarine],
    [quartz_iron, quartz_iron, quartz_iron]])
  .addTool(solderer, 36)
  .addOutput(<refinedstorage:fluid_storage_disk:1>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("256k_fluid_storage_disk")
  .create();

// 1024k Fluid Storage Disk
RecipeBuilder.get("chemist")
  .setShaped([
    [thick_glass, prismarine, thick_glass],
    [prismarine, fluidpart1024k, prismarine],
    [quartz_iron, quartz_iron, quartz_iron]])
  .addTool(solderer, 48)
  .addOutput(<refinedstorage:fluid_storage_disk:2>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("1024k_fluid_storage_disk")
  .create();

// 4096k Fluid Storage Disk
RecipeBuilder.get("chemist")
  .setShaped([
    [thick_glass, prismarine, thick_glass],
    [prismarine, fluidpart4096k, prismarine],
    [quartz_iron, quartz_iron, quartz_iron]])
  .addTool(solderer, 96)
  .addOutput(<refinedstorage:fluid_storage_disk:3>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("4096k_fluid_storage_disk")
  .create();





# Storage Blocks
# Uses 2x durability compared to parts & disks
recipes.remove(<refinedstorage:storage:*>);
recipes.remove(<refinedstorage:fluid_storage:*>);

// 1k Storage Block
RecipeBuilder.get("chemist")
  .setShapeless([casing, part1k, residuum])
  .addTool(solderer, 16)
  .addOutput(<refinedstorage:storage>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("1k_storage_block")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:storage>])
  .addTool(spanner, 32)
  .addOutput(casing)
  .setExtraOutputOne(part1k, 1.0)
  .setExtraOutputTwo(residuum, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:crafting/recycling", "cyborg:technology/storage_compression"]))
  .setName("1k_storage_block_salvage")
  .create();


// 4k Storage Block
RecipeBuilder.get("chemist")
  .setShapeless([casing, part4k, residuum])
  .addTool(solderer, 32)
  .addOutput(<refinedstorage:storage:1>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("4k_storage_block")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:storage>, part1k, part1k, residuum])
  .addTool(solderer, 32)
  .addOutput(<refinedstorage:storage:1>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("4k_storage_block_upgrade")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:storage:1>])
  .addTool(spanner, 64)
  .addOutput(casing)
  .setExtraOutputOne(part4k, 1.0)
  .setExtraOutputTwo(residuum, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:crafting/recycling", "cyborg:technology/storage_compression"]))
  .setName("4k_storage_block_salvage")
  .create();


// 16k Storage Block
RecipeBuilder.get("chemist")
  .setShapeless([casing, part16k, residuum])
  .addTool(solderer, 64)
  .addOutput(<refinedstorage:storage:2>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("16k_storage_block")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:storage:1>, <refinedstorage:storage:1>|part4k, <refinedstorage:storage:1>|part4k, residuum])
  .addTool(solderer, 64)
  .addOutput(<refinedstorage:storage:2>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("16k_storage_block_upgrade")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:storage:2>])
  .addTool(spanner, 128)
  .addOutput(casing)
  .setExtraOutputOne(part16k, 1.0)
  .setExtraOutputTwo(residuum, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:crafting/recycling", "cyborg:technology/storage_compression"]))
  .setName("16k_storage_block_salvage")
  .create();


// 64k Storage Block
RecipeBuilder.get("chemist")
  .setShapeless([casing, part64k, residuum])
  .addTool(solderer, 128)
  .addOutput(<refinedstorage:storage:3>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("64k_storage_block")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:storage:2>, <refinedstorage:storage:2>|part16k, <refinedstorage:storage:2>|part16k, residuum])
  .addTool(solderer, 128)
  .addOutput(<refinedstorage:storage:3>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("64k_storage_block_upgrade")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:storage:3>])
  .addTool(spanner, 256)
  .addOutput(casing)
  .setExtraOutputOne(part64k, 1.0)
  .setExtraOutputTwo(residuum, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:crafting/recycling", "cyborg:technology/storage_compression"]))
  .setName("64k_storage_block_salvage")
  .create();



	# Fluid
	# Uses 2x durability compared to parts & disks

// 64k Fluid Storage Block
RecipeBuilder.get("chemist")
  .setShapeless([casing, fluidpart64k, prismarine])
  .addTool(solderer, 48)
  .addOutput(<refinedstorage:fluid_storage>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("64k_fluid_storage_block")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:fluid_storage>])
  .addTool(spanner, 96)
  .addOutput(casing)
  .setExtraOutputOne(fluidpart64k, 1.0)
  .setExtraOutputTwo(prismarine, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:crafting/recycling", "cyborg:technology/storage_compression"]))
  .setName("64k_fluid_storage_block_salvage")
  .create();


// 256k Fluid Storage Block
RecipeBuilder.get("chemist")
  .setShapeless([casing, fluidpart256k, prismarine])
  .addTool(solderer, 72)
  .addOutput(<refinedstorage:fluid_storage:1>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("256k_fluid_storage_block")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:fluid_storage>, <refinedstorage:fluid_storage>|fluidpart64k, <refinedstorage:fluid_storage>|fluidpart64k, residuum])
  .addTool(solderer, 72)
  .addOutput(<refinedstorage:fluid_storage:1>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("256k_fluid_storage_block_upgrade")
  .create();
  
RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:fluid_storage:1>])
  .addTool(spanner, 144)
  .addOutput(casing)
  .setExtraOutputOne(fluidpart256k, 1.0)
  .setExtraOutputTwo(prismarine, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:crafting/recycling", "cyborg:technology/storage_compression"]))
  .setName("256k_fluid_storage_block_salvage")
  .create();


// 1024k Fluid Storage Block
RecipeBuilder.get("chemist")
  .setShapeless([casing, fluidpart1024k, prismarine])
  .addTool(solderer, 96)
  .addOutput(<refinedstorage:fluid_storage:2>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("1024k_fluid_storage_block")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:fluid_storage:1>, <refinedstorage:fluid_storage:1>|fluidpart64k, <refinedstorage:fluid_storage:1>|fluidpart64k, residuum])
  .addTool(solderer, 72)
  .addOutput(<refinedstorage:fluid_storage:2>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("1024k_fluid_storage_block_upgrade")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:fluid_storage:2>])
  .addTool(spanner, 192)
  .addOutput(casing)
  .setExtraOutputOne(fluidpart1024k, 1.0)
  .setExtraOutputTwo(prismarine, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:crafting/recycling", "cyborg:technology/storage_compression"]))
  .setName("1024k_fluid_storage_block_salvage")
  .create();


// 4096k Fluid Storage Block
RecipeBuilder.get("chemist")
  .setShapeless([casing, fluidpart4096k, prismarine])
  .addTool(solderer, 192)
  .addOutput(<refinedstorage:fluid_storage:3>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("4096k_fluid_storage_block")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:fluid_storage:2>, <refinedstorage:fluid_storage:2>|fluidpart1024k, <refinedstorage:fluid_storage:2>|fluidpart1024k, residuum])
  .addTool(solderer, 192)
  .addOutput(<refinedstorage:fluid_storage:3>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("4096k_fluid_storage_block_upgrade")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:fluid_storage:3>])
  .addTool(spanner, 384)
  .addOutput(casing)
  .setExtraOutputOne(fluidpart4096k, 1.0)
  .setExtraOutputTwo(prismarine, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:crafting/recycling", "cyborg:technology/storage_compression"]))
  .setName("4096k_fluid_storage_block_salvage")
  .create();





############################
#		BLOCKS		 #
############################

// Controller
recipes.remove(<refinedstorage:controller>);
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, advanced, quartz_iron],
    [pulsaton, casing, pulsaton],
    [quartz_iron, silicon, quartz_iron]])
  .addTool(spanner, 250)
  .addOutput(<refinedstorage:controller>.withTag({Energy: 0}))
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("controller")
  .create();

RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, advanced, quartz_iron],
    [pulsaton, casing, pulsaton],
    [quartz_iron, silicon, quartz_iron]])
  .setFluid(<liquid:redstone> * 1000)
  .addTool(spanner, 500)
  .addOutput(<refinedstorage:controller>.withTag({Energy: 32000}))
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("controller_charged")
  .create();

// Disk Drive
recipes.remove(<refinedstorage:disk_drive>);
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, advanced, quartz_iron],
    [quartz_iron, casing, quartz_iron],
    [quartz_iron, <ore:chest>, quartz_iron]])
  .addTool(solderer, 16)
  .addTool(spanner, 32)
  .addOutput(<refinedstorage:disk_drive>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("disk_drive")
  .create();

// Crafting Monitor
recipes.remove(<refinedstorage:crafting_monitor>);
RecipeBuilder.get("chemist")
  .setShaped([
    [iron, <refinedstorage:pattern>, glass],
    [iron, casing, glass],
    [iron, <refinedstorage:pattern>, glass]])
	.setSecondaryIngredients([basic])
  .addTool(pliers, 4)
  .addTool(solderer, 8)
  .addOutput(<refinedstorage:crafting_monitor>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("crafting_monitor")
  .create();

// Grid
recipes.remove(grid);
RecipeBuilder.get("chemist")
  .setShaped([
    [improved, construction, glass],
    [quartz_iron, casing, glass],
    [improved, destruction, glass]])
  .addTool(solderer, 8)
  .addOutput(grid)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("grid")
  .create();

// Crafting Grid
recipes.remove(<refinedstorage:grid:1>);
RecipeBuilder.get("chemist")
  .setShapeless([grid, <ore:workbench>, advanced])
  .addTool(solderer, 16)
  .addOutput(<refinedstorage:grid:1>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("crafting_grid")
  .create();

// Pattern Grid
recipes.remove(<refinedstorage:grid:2>);
RecipeBuilder.get("chemist")
  .setShapeless([grid, <refinedstorage:pattern>, advanced])
  .addTool(solderer, 4)
  .addOutput(<refinedstorage:grid:2>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("pattern_grid")
  .create();

// Fluid Grid
recipes.remove(<refinedstorage:grid:3>);
RecipeBuilder.get("chemist")
  .setShapeless([grid, <minecraft:bucket>, advanced])
  .addTool(solderer, 12)
  .addOutput(<refinedstorage:grid:3>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("fluid_grid")
  .create();

// Security Manager
recipes.remove(<refinedstorage:security_manager>);
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, <minecraft:chest>, quartz_iron],
    [improved, casing, improved],
    [quartz_iron, <refinedstorage:security_card>, quartz_iron]])
  .addTool(spanner, 20)
  .addOutput(<refinedstorage:security_manager>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("security_manager")
  .create();

// Portable Grid
recipes.remove(<refinedstorage:portable_grid>);
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, quartz_iron, quartz_iron],
    [quartz_iron, grid, quartz_iron],
    [quartz_iron, quartz_iron, quartz_iron]])
  .setSecondaryIngredients([construction, improved, destruction])
  .addTool(spanner, 32)
  .addOutput(<refinedstorage:portable_grid>.withTag({Energy: 0}))
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("portable_grid")
  .create();

RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, quartz_iron, quartz_iron],
    [quartz_iron, grid, quartz_iron],
    [quartz_iron, quartz_iron, quartz_iron]])
  .setSecondaryIngredients([construction, improved, destruction])
  .setFluid(<liquid:redstone> * 250)
  .addTool(spanner, 48)
  .addOutput(<refinedstorage:portable_grid>.withTag({Energy: 4096}))
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
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
    [quartz_iron, construction, quartz_iron],
    [advanced, part64k, advanced],
    [quartz_iron, <artisanworktables:workstation:5>, quartz_iron]])
  .addTool(cutters, 24)
  .addTool(solderer, 16)
  .addOutput(<storagetech:diskworkbench>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/advanced_storage_compression"]))
  .setName("disk_workbench")
  .create();

// Fluid Disk Workbench
RecipeBuilder.get("chemist")
  .setShaped([
    [prismarine, construction, prismarine],
    [advanced, fluidpart4096k, advanced],
    [prismarine, <artisanworktables:workstation:5>, prismarine]])
  .addTool(cutters, 24)
  .addTool(solderer, 16)
  .addOutput(<storagetech:fluiddiskworkbench>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/advanced_storage_compression"]))
  .setName("fluid_storage_disk_workbench")
  .create();





############################
#	 UPGRADES	 #
############################

var upgrade = <refinedstorage:upgrade>;

// Blank Upgrade
recipes.remove(upgrade);
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, glass, quartz_iron],
    [quartz_iron, improved, quartz_iron],
    [quartz_iron, glass, quartz_iron]])
  .addTool(solderer, 4)
  .addOutput(upgrade)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("blank_upgrade")
  .create();

// Range Upgrade
recipes.remove(<refinedstorage:upgrade:1>);
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, basic, quartz_iron],
    [quartz_iron, upgrade, quartz_iron],
    [quartz_iron, <nhc:energypearl>, quartz_iron]])
  .addTool(solderer, 8)
  .addOutput(<refinedstorage:upgrade:1>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("range_upgrade")
  .create();

// Speed Upgrade
recipes.remove(<refinedstorage:upgrade:2>);
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, <minecraft:sugar>, quartz_iron],
    [quartz_iron, upgrade, quartz_iron],
    [quartz_iron, <minecraft:sugar>, quartz_iron]])
  .addTool(solderer, 16)
  .addOutput(<refinedstorage:upgrade:2>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("speed_upgrade")
  .create();

// Crafting Upgrade
recipes.remove(<refinedstorage:upgrade:3>);
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, construction, quartz_iron],
    [<ore:workbench>, upgrade, <ore:workbench>],
    [quartz_iron, quartz_iron, quartz_iron]])
  .addTool(solderer, 12)
  .addOutput(<refinedstorage:upgrade:3>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("crafting_upgrade")
  .create();

// Stack Upgrade
RecipeBuilder.get("chemist")
  .setShaped([
    [quartz_iron, <refinedstorage:upgrade:2>, quartz_iron],
    [<refinedstorage:upgrade:2>, advanced, <refinedstorage:upgrade:2>],
    [quartz_iron, <refinedstorage:upgrade:2>, quartz_iron]])
  .addTool(solderer, 16)
  .addOutput(<refinedstorage:upgrade:4>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("stack_upgrade")
  .create();



############################
#	Wireless Stuff	 #
############################
recipes.remove(<refinedstorage:wireless_grid>);
recipes.remove(<refinedstorage:wireless_fluid_grid>);
recipes.remove(<refinedstorage:wireless_crafting_monitor>);

recipes.remove(<refinedstorageaddons:wireless_crafting_grid>);

var ender_shard = <extrautils2:endershard>;

// Wireless Grid
RecipeBuilder.get("chemist")
  .setShapeless([grid, ender_shard, ender_shard, improved])
  .addTool(solderer, 16)
  .addOutput(<refinedstorage:wireless_grid>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("wireless_grid")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([grid, ender_shard, ender_shard, improved])
  .setFluid(<liquid:redstone> * 250)
  .addTool(solderer, 24)
  .addOutput(<refinedstorage:wireless_grid>.withTag({Energy: 3200}))
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("wireless_grid_charged")
  .create();

// Wireless Fluid Grid
RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:grid:3>, ender_shard, ender_shard, improved])
  .addTool(solderer, 24)
  .addOutput(<refinedstorage:wireless_fluid_grid>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("wireless_fluid_grid")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:grid:3>, ender_shard, ender_shard, improved])
  .setFluid(<liquid:redstone> * 250)
  .addTool(solderer, 32)
  .addOutput(<refinedstorage:wireless_fluid_grid>.withTag({Energy: 3200}))
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("wireless_fluid_grid_charged")
  .create();

// Wireless Crafting Grid
RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:grid:1>, ender_shard, ender_shard, advanced])
  .addTool(solderer, 32)
  .addOutput(<refinedstorageaddons:wireless_crafting_grid>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("wireless_crafting_grid")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:grid:1>, ender_shard, ender_shard, advanced])
  .setFluid(<liquid:redstone> * 250)
  .addTool(solderer, 48)
  .addOutput(<refinedstorageaddons:wireless_crafting_grid>.withTag({Energy: 3200}))
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("wireless_crafting_grid_charged")
  .create();

// Wireless Crafting Monitor
RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:crafting_monitor>, basic, ender_shard, ender_shard])
  .addTool(solderer, 8)
  .addOutput(<refinedstorage:wireless_crafting_monitor>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("wireless_crafting_monitor")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<refinedstorage:crafting_monitor>, basic, ender_shard, ender_shard])
  .setFluid(<liquid:redstone> * 250)
  .addTool(solderer, 8)
  .addOutput(<refinedstorage:wireless_crafting_monitor>.withTag({Energy: 3200}))
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/storage_compression"]))
  .setName("wireless_crafting_monitor_charged")
  .create();

print("refined_storage.zs loaded");