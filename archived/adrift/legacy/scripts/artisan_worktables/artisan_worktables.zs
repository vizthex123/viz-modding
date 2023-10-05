# Changes stuff from the Artisan Worktables mod

import mods.artisanintegrations.requirement.FTGU;
import mods.artisanworktables.builder.RecipeBuilder;

print("artisan_worktables.zs loading...");

/*
https://artisan-worktables.readthedocs.io/en/latest/recipes/gettingstarted/
https://artisan-worktables.readthedocs.io/en/latest/recipes/tools/
https://artisan-worktables.readthedocs.io/en/latest/recipes/basic/
*/

<artisanworktables:worktable:5>.addTooltip(format.aqua("Works as a normal crafting table"));
<artisanworktables:workstation:5>.addTooltip(format.aqua("Works as a normal crafting table"));
<artisanworktables:mechanical_toolbox>.addTooltip(format.aqua("Refills broken tools in Worktables/stations"));
<artisanworktables:mechanical_toolbox>.addTooltip(format.aqua("Retains contents when broken"));

############################
#	Table Recipes	#
############################
// Toolbox
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ore:plankWood>, <ore:chestWood>, <ore:plankWood>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
  .addTool(<ore:artisansCutters>, 5)
  .addOutput(<artisanworktables:toolbox>)
  .setName("toolbox")
  .create();

// Mechanical Toolbox
RecipeBuilder.get("basic")
  .setShapeless([<artisanworktables:toolbox>, <ore:ingotGold>, <ore:ingotIron>])
  .addTool(<ore:artisansCutters>, 10)
  .addOutput(<artisanworktables:mechanical_toolbox>)
  .addRequirement(FTGU.allOf(["adrift:survival/smithing"]))
  .setName("mechanical_toolbox")
  .create();

// Basic Table
recipes.addShapeless(<artisanworktables:worktable:5>, [<ore:craftingTableWood>, <aquaculture:loot>, <aquaculture:loot>]);

// Scribe's
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
    [<ore:fenceWood>, <ore:craftingTableWood>, <ore:fenceWood>],
    [<ore:fenceWood>, null, <ore:fenceWood>]])
  .addTool(<ore:artisansHandsaw>, 5)
  .addOutput(<artisanworktables:worktable:8>)
  .addRequirement(FTGU.allOf(["adrift:survival/scribe"]))
  .setName("scribe")
  .create();

// Tailor's
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:wool>, <ore:wool>, <ore:wool>],
    [<ore:plankWood>, <ore:workbench>, <ore:plankWood>],
    [<ore:fenceWood>, null, <ore:fenceWood>]])
  .addTool(<ore:artisansHandsaw>, 25)
  .addOutput(<artisanworktables:worktable>)
  .addRequirement(FTGU.allOf(["adrift:survival/tailor"]))
  .setName("tailor")
  .create();

// Blacksmith's
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
    [<ore:fenceWood>, <ore:workbench>, <ore:fenceWood>],
    [<ore:fenceWood>, null, <ore:fenceWood>]])
  .addTool(<ore:artisansCarver>, 25)
  .addOutput(<artisanworktables:worktable:3>)
  .addRequirement(FTGU.allOf(["adrift:smithing/blacksmith"]))
  .setName("blacksmith")
  .create();

	// Station
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:ingotIron>, <better_diving:titanium_ingot>, <ore:ingotIron>],
    [<contenttweaker:iron_rod>, <artisanworktables:worktable:3>, <contenttweaker:iron_rod>],
    [<contenttweaker:iron_rod>, null, <contenttweaker:iron_rod>]])
  .addTool(<ore:artisansCarver>, 100)
  .addOutput(<artisanworktables:workstation:3>)
  .setName("blacksmith_station")
  .create();

// Engineer's Table
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
    [<ore:ingotBrick>, <ore:workbench>, <ore:ingotBrick>],
    [<contenttweaker:iron_rod>, <minecraft:brick_block>, <contenttweaker:iron_rod>]])
  .addTool(<ore:artisansHammer>, 50)
  .addOutput(<artisanworktables:worktable:6>)
  .addRequirement(FTGU.allOf(["adrift:smithing/engineering"]))
  .setName("engineer")
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
    [<ore:ingotBrick>, <minecraft:anvil:*>, <ore:ingotBrick>],
    [<contenttweaker:iron_rod>, <minecraft:brick_block>, <contenttweaker:iron_rod>]])
  .addTool(<ore:artisansHammer>, 15)
  .addOutput(<artisanworktables:worktable:6>)
  .addRequirement(FTGU.allOf(["adrift:smithing/engineering"]))
  .setName("engineer_anvil")
  .create();

	// Station
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<contenttweaker:iron_rod>, <contenttweaker:iron_rod>, <contenttweaker:iron_rod>],
    [<minecraft:brick_block>, <artisanworktables:worktable:6>, <minecraft:brick_block>],
    [<ore:titanium>, null, <ore:titanium>]])
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansSpanner>, 25)
  .addOutput(<artisanworktables:workstation:6>)
  .addRequirement(FTGU.allOf(["adrift:smithing/engineering"]))
  .setName("engineer_station")
  .create();

// Jeweler's
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:gemDiamond>, <ore:obsidian>, <ore:gemDiamond>],
    [<minecraft:nether_brick>, <ore:workbench>, <minecraft:nether_brick>],
    [<minecraft:nether_brick_fence>, null, <minecraft:nether_brick_fence>]])
  .addTool(<ore:artisansCarver>, 75)
  .addOutput(<artisanworktables:worktable:4>)
  .addRequirement(FTGU.allOf(["adrift:smithing/jeweler"]))
  .setName("jewler")
  .create();

// Chef's
RecipeBuilder.get("basic")
  .setShaped([
    [<better_diving:fiber_mesh>, <ore:ingotIron>, <better_diving:fiber_mesh>],
    [<ore:fenceWood>, <ore:workbench>, <ore:fenceWood>],
    [<ore:fenceWood>, null, <ore:fenceWood>]])
  .addTool(<ore:artisansHandsaw>, 50)
  .addOutput(<artisanworktables:worktable:11>)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("chef")
  .create();
print("artisan_worktables.zs loaded");