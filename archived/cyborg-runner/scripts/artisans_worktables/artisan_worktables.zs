# Adds recipes to the Artisan Worktables mod

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.FTGU;

print("artisan_worktables.zs loading...");

/*
https://artisan-worktables.readthedocs.io/en/latest/recipes/gettingstarted/
https://artisan-worktables.readthedocs.io/en/latest/recipes/tools/
https://artisan-worktables.readthedocs.io/en/latest/recipes/basic/
*/

var iron = <minecraft:iron_ingot>;
var steel = <thermalfoundation:material:160>;
var redstone = <minecraft:redstone>;
var electrotine = <projectred-core:resource_item:105>;

var log = <ore:logWood>;
var plank = <ore:plankWood>;


var basic = <artisanworktables:worktable:5>;
var stone_brick = <ore:bricksStone>;
var stone = <ore:stone>;

var hammer = <ore:artisansHammer>;
var cutters = <ore:artisansCutters>;

var handsaw = <ore:artisansHandsaw>;
var chisel = <ore:artisansChisel>;
var file = <ore:artisansFile>;

var solderer = <ore:artisansSolderer>;
var spanner = <ore:artisansSpanner>;
var pliers = <ore:artisansPliers>;

# Blank Design Pattern
recipes.addShapeless(<artisanworktables:design_pattern>, [<minecraft:paper>, <ore:dyeBlue>]);

# New Research Book recipe
recipes.removeByRecipeName("ftgumod:research_book");
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:book>, <ftgumod:parchment_empty>, <ore:slimeball>, <ore:paper>])
  .addOutput(<ftgumod:research_book>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .setName("research_book")
  .create();

basic.addTooltip(format.aqua("Works as a normal crafting table"));
<artisanworktables:workstation:5>.addTooltip(format.aqua("Works as a normal crafting table"));
<artisanworktables:mechanical_toolbox>.addTooltip(format.aqua("Auto-refills broken tools in Worktables/stations/shops"));
<artisanworktables:mechanical_toolbox>.addTooltip(format.aqua("Retains contents when broken"));
<artisanworktables:toolbox>.addTooltip(format.aqua("Retains contents when broken"));

############################
#	Table Recipes	#
############################
// Basic Table
recipes.addShaped(basic, [[null, <ore:workbench>, null],
											 [<ore:cobblestone>, log, <ore:cobblestone>],
											 [<ore:cobblestone>, null, <ore:cobblestone>]]);

// T2 Basic Table
RecipeBuilder.get("carpenter")
  .setShapeless([basic, <ore:chestWood>])
  .addTool(handsaw, 25)
  .addOutput(<artisanworktables:workstation:5>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry"]))
  .setName("basic_workstation")
  .create();

// Toolbox
RecipeBuilder.get("basic")
  .setShaped([
    [plank, plank, plank],
    [plank, <ore:chestWood>, plank],
    [plank, plank, plank]])
  .addTool(handsaw, 16)
  .addOutput(<artisanworktables:toolbox>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/toolbox"]))
  .setName("toolbox")
  .create();

// Mechanical Toolbox
RecipeBuilder.get("basic")
  .setShaped([
    [redstone|electrotine, redstone|electrotine, redstone|electrotine],
    [iron, <artisanworktables:toolbox>, iron],
    [null, iron, null]])
  .addTool(handsaw, 32)
  .addTool(spanner, 16)
  .addOutput(<artisanworktables:mechanical_toolbox>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/toolbox_auto"]))
  .setName("mechanical_toolbox")
  .create();



### Worktables/stations/shops

// Carpenter's Worktable (T1)
RecipeBuilder.get("basic")
  .setShaped([
    [null, log, null],
    [plank, basic, plank],
    [<minecraft:brick>, null, <minecraft:brick>]])
  .addTool(handsaw, 15)
  .addOutput(<artisanworktables:worktable:1>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/carpentry"]))
  .setName("carpenter_worktable")
  .create();

// Mason's Worktable (T1)
RecipeBuilder.get("basic")
  .setShaped([
    [null, <minecraft:stone_slab>|<minecraft:stone_slab:5>, null],
    [log, basic, log],
    [stone, null, stone]])
  .setFluid(<liquid:water> * 1000)
  .addTool(hammer, 20)
  .addOutput(<artisanworktables:worktable:2>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/masonry"]))
  .setName("mason_worktable")
  .create();

// Mason's Workstation (T2)
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <minecraft:brick_block>|<minecraft:nether_brick>, null],
    [stone_brick, <artisanworktables:worktable:2>, stone_brick],
    [stone_brick, null, stone_brick]])
  .setFluid(<liquid:water> * 2000)
  .addTool(hammer, 25)
  .addTool(chisel, 10)
  .addOutput(<artisanworktables:workstation:2>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:crafting/masonry"]))
  .setName("mason_workstation")
  .create();

// Jeweler's Worktable (T1)
RecipeBuilder.get("basic")
  .setShaped([
    [null, <minecraft:quartz>|<minecraft:prismarine_shard>, null],
    [<minecraft:quartz>|<minecraft:prismarine_shard>, <artisanworktables:worktable:3>, <minecraft:quartz>|<minecraft:prismarine_shard>],
    [<ore:fenceWood>, null, <ore:fenceWood>]])
  .addTool(cutters, 35)
  .addOutput(<artisanworktables:worktable:4>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/jeweler"]))
  .setName("jeweler_worktable")
  .create();

// Blacksmith's Worktable (T1)
RecipeBuilder.get("basic")
  .setShaped([
    [iron, iron, iron],
    [stone, basic, stone],
    [stone, null, stone]])
  .setFluid(<liquid:lava> * 1000)
  .addTool(hammer, 35)
  .addOutput(<artisanworktables:worktable:3>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/smithing"]))
  .setName("blacksmith_worktable")
  .create();

// Blacksmith's Workstation (T2)
RecipeBuilder.get("mason")
  .setShaped([
    [iron, iron, iron],
    [stone_brick, <artisanworktables:worktable:3>, stone_brick],
    [stone_brick, null, stone_brick]])
  .setFluid(<liquid:lava> * 2000)
  .addTool(hammer, 50)
  .addTool(cutters, 25)
  .addOutput(<artisanworktables:workstation:3>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry", "cyborg:crafting/smithing"]))
  .setName("blacksmith_workstation")
  .create();

// Engineer's Worktable (T1)
RecipeBuilder.get("basic")
  .setShaped([
    [iron, iron, iron],
    [stone, <artisanworktables:worktable:3>, stone],
    [log, null, log]])
  .addTool(hammer, 50)
  .addOutput(<artisanworktables:worktable:6>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/engineering"]))
  .setName("engineer_worktable")
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [steel, steel, steel],
    [<mystcraft:blockcrystal>, basic, <mystcraft:blockcrystal>],
    [<minecraft:nether_brick_fence>, null, <minecraft:nether_brick_fence>]])
  .setFluid(<liquid:redstone> * 1000)
  .addTool(hammer, 150)
  .addTool(cutters, 75)
  .addOutput(<artisanworktables:worktable:6>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:crafting/engineering", "cyborg:technology/thermal_technology"]))
  .setName("engineer_worktable_thermal")
  .create();

// Engineer's Workstation (T2)
RecipeBuilder.get("blacksmith")
  .setShaped([
    [iron, iron, iron],
    [stone, <artisanworktables:worktable:6>, stone],
    [stone, null, stone]])
  .addTool(hammer, 50)
  .addTool(cutters, 25)
  .addOutput(<artisanworktables:workstation:6>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:crafting/engineering"]))
  .setName("engineer_workstation")
  .create();

// Engineer's Workshop (T3)
RecipeBuilder.get("designer")
  .setShaped([
    [null, <minecraft:obsidian>, null],
    [<minecraft:iron_block>, <artisanworktables:workstation:6>, <minecraft:iron_block>],
    [<minecraft:iron_block>, null, <minecraft:iron_block>]])
  .addTool(solderer, 75)
  .addTool(cutters, 50)
  .addOutput(<artisanworktables:workshop:6>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/designing", "cyborg:crafting/engineering"]))
  .setName("engineer_workshop")
  .create();

// Chef's Worktable (T1)
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>],
    [log, <artisanworktables:worktable:2>, log],
    [<ore:stickWood>, null, <ore:stickWood>]])
  .addTool(handsaw, 50)
  .addOutput(<artisanworktables:worktable:11>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/chef"]))
  .setName("chef_worktable")
  .create();

// Chef's Workstation (T2)
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <minecraft:iron_block>, null],
    [log, <artisanworktables:worktable:11>, log],
    [log, null, log]])
  .addTool(hammer, 30)
  .addTool(handsaw, 25)
  .addOutput(<artisanworktables:workstation:11>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:crafting/chef"]))
  .setName("chef_workstation")
  .create();

// Designer's Worktable (T1)
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:paper>, <ore:paper>, <ore:paper>],
    [stone_brick, basic, stone_brick],
    [stone_brick, null, stone_brick]])
  .setSecondaryIngredients([<ore:dyeBlue>*3])
  .setFluid(<liquid:water> * 1000)
  .addTool(spanner, 25)
  .addOutput(<artisanworktables:worktable:12>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/designing"]))
  .setName("designer_worktable")
  .create();

// Designer's Workstation (T2)
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<minecraft:paper>, <minecraft:book>, <minecraft:paper>],
    [<minecraft:brick_block>, <artisanworktables:worktable:12>, <minecraft:brick_block>],
    [<minecraft:brick_block>, null, <minecraft:brick_block>]])
  .setSecondaryIngredients([<ore:dyeBlue> * 3])
  .setFluid(<liquid:water> * 2000)
  .addTool(hammer, 50)
  .addTool(spanner, 35)
  .addOutput(<artisanworktables:workstation:12>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:crafting/designing"]))
  .setName("designer_workstation")
  .create();

// Designer's Workshop (T3)
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <minecraft:paper>, <minecraft:paper>, <minecraft:paper>, null],
    [<minecraft:paper>, <minecraft:book>, <minecraft:writable_book>, <minecraft:book>, <minecraft:paper>],
    [<minecraft:stonebrick:*>, <minecraft:nether_brick>, <artisanworktables:workstation:12>, <minecraft:nether_brick>, <minecraft:stonebrick:*>],
    [<minecraft:stonebrick:*>, <minecraft:nether_brick>, null, <minecraft:nether_brick>, <minecraft:stonebrick:*>],
    [<minecraft:stonebrick:*>, <minecraft:brick_block>, null, <minecraft:brick_block>, <minecraft:stonebrick:*>]])
  .setSecondaryIngredients([<ore:dyeBlue> * 3])
  .setFluid(<liquid:water> * 4000)
  .addTool(pliers, 35)
  .addTool(spanner, 75)
  .addTool(cutters, 150)
  .addOutput(<artisanworktables:workshop:12>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:crafting/designing"]))
  .setName("designer_workshop")
  .create();

// Scientist's Worktable (T1) {Formerly Chemist}
RecipeBuilder.get("basic")
  .setShaped([
    [steel, steel, steel],
    [<minecraft:nether_brick>,  <artisanworktables:worktable:6>, <minecraft:nether_brick>],
    [<minecraft:nether_brick_fence>, null, <minecraft:nether_brick_fence>]])
  .addTool(pliers, 25)
  .addTool(spanner, 15)
  .addOutput(<artisanworktables:worktable:9>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/science"]))
  .setName("science_worktable")
  .create();

// Scientist's Workstation (T2) {Formerly Chemist}
// Recipes are mostly in refined_storage.zs
RecipeBuilder.get("blacksmith")
  .setShaped([
    [steel, <ore:blockSteel>, steel],
    [<minecraft:nether_brick>, <artisanworktables:worktable:9>, <minecraft:nether_brick>],
    [<minecraft:nether_brick_fence>, null, <minecraft:nether_brick_fence>]])
  .addTool(pliers, 35)
  .addTool(spanner, 25)
  .addOutput(<artisanworktables:workstation:9>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:crafting/science"]))
  .setName("science_workstation")
  .create();

print("artisan_worktables.zs loaded");