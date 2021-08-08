# Adds recipes to the Artisan Worktables mod

import mods.artisanintegrations.requirement.FTGU;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.Reskillable;

print("artisan_worktables.zs loading...");

/*
https://artisan-worktables.readthedocs.io/en/latest/recipes/gettingstarted/
https://artisan-worktables.readthedocs.io/en/latest/recipes/tools/
https://artisan-worktables.readthedocs.io/en/latest/recipes/basic/
*/

<artisanworktables:worktable:5>.addTooltip(format.aqua("Works as a normal crafting table"));
<artisanworktables:workstation:5>.addTooltip(format.aqua("Works as a normal crafting table"));
#	<artisanworktables:workshop:5>.addTooltip(format.aqua("Works as a normal crafting table"));
<artisanworktables:mechanical_toolbox>.addTooltip(format.aqua("Refills broken tools in Worktables/stations/shops"));
<artisanworktables:mechanical_toolbox>.addTooltip(format.aqua("Retains contents when broken"));
<artisanworktables:toolbox>.addTooltip(format.aqua("Retains contents when broken"));

# Blank Design Pattern
recipes.addShapeless(<artisanworktables:design_pattern>, [<minecraft:paper>, <ore:dyeBlue>]);

# New Research Book recipe
recipes.removeByRecipeName("ftgumod:research_book");
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:book>, <ftgumod:parchment_empty>, <ore:slimeball>, <ore:paper>])
  .addOutput(<ftgumod:research_book>)
  .create();

############################
#	Table Recipes	#
############################
// Toolbox
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ore:plankWood>, <ore:chestWood>, <ore:plankWood>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
  .addTool(<ore:artisansCutters>, 25)
  .addOutput(<artisanworktables:toolbox>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/toolbox"]))
  .setName("toolbox")
  .create();

// Mechanical Toolbox
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:redstone>, <ore:redstone>, <ore:redstone>],
    [<ore:ingotIron>, <artisanworktables:toolbox>, <ore:ingotIron>],
    [null, <ore:ingotIron>, null]])
  .addTool(<ore:artisansHammer>, 25)
  .addTool(<ore:artisansCutters>, 25)
  .addOutput(<artisanworktables:mechanical_toolbox>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/better_toolbox"]))
  .setName("mechanical_toolbox")
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [null, <ore:dustElectrotine>, null],
    [<ore:ingotIron>, <artisanworktables:toolbox>, <ore:ingotIron>],
    [null, <ore:ingotIron>, null]])
  .addTool(<ore:artisansHammer>, 25)
  .addTool(<ore:artisansCutters>, 25)
  .addOutput(<artisanworktables:mechanical_toolbox>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/better_toolbox"]))
  .setName("mechanical_toolbox_electrotine")
  .create();

// Basic Table
recipes.addShaped(<artisanworktables:worktable:5>, [[null, <ore:workbench>, null],
                                   				      [<ore:cobblestone>, <ore:logWood>, <ore:cobblestone>],
                                 			                          [<ore:cobblestone>, null, <ore:cobblestone>]]);
// T2 Basic Table
RecipeBuilder.get("basic")
  .setShapeless([<artisanworktables:worktable:5>, <ore:chest>])
  .addTool(<ore:artisansCutters>, 25)
  .addOutput(<artisanworktables:workstation:5>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .setName("basic_workstation")
  .create();


# Worktables/stations/shops
# (Usually) made in the basic one

// Mason's Worktable (T1)
RecipeBuilder.get("basic")
  .setShaped([
    [null, <minecraft:stone_slab>|<minecraft:stone_slab:5>, null],
    [<ore:stone>, <artisanworktables:worktable:5>, <ore:stone>],
    [<ore:logWood>, null, <ore:logWood>]])
  .addTool(<ore:artisansHammer>, 25)
  .addOutput(<artisanworktables:worktable:2>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("mason_worktable")
  .create();

// Mason's Workstation (T2)
RecipeBuilder.get("basic")
  .setShaped([
    [null, <minecraft:brick_block>|<minecraft:nether_brick>, null],
    [<minecraft:stonebrick:*>, <artisanworktables:worktable:2>, <minecraft:stonebrick:*>],
    [<minecraft:stonebrick:*>, null, <minecraft:stonebrick:*>]])
  .addTool(<ore:artisansHammer>, 25)
  .addOutput(<artisanworktables:workstation:2>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("mason_workstation")
  .create();

// Blacksmith's Worktable (T1)
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
    [<ore:stone>, <artisanworktables:worktable:5>, <ore:stone>],
    [<ore:stone>, null, <ore:stone>]])
  .addTool(<ore:artisansHammer>, 35)
  .addOutput(<artisanworktables:worktable:3>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing"]))
  .setName("blacksmith_worktable")
  .create();

// Blacksmith's Workstation (T2)
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
    [<ore:bricksStone>, <artisanworktables:worktable:3>, <ore:bricksStone>],
    [<ore:bricksStone>, null, <ore:bricksStone>]])
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansCutters>, 25)
  .addOutput(<artisanworktables:workstation:3>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing"]))
  .setName("blacksmith_workstation")
  .create();

// Engineer's Worktable (T1)
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
    [<ore:logWood>, <artisanworktables:worktable:3>, <ore:logWood>],
    [<ore:stone>, null, <ore:stone>]])
  .addTool(<ore:artisansHammer>, 50)
  .addOutput(<artisanworktables:worktable:6>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering"]))
  .setName("engineer_worktable")
  .create();

// Engineer's Workstation (T2)
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
    [<ore:stone>, <artisanworktables:worktable:6>, <ore:stone>],
    [<ore:stone>, null, <ore:stone>]])
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansCutters>, 25)
  .addOutput(<artisanworktables:workstation:6>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering"]))
  .setName("engineer_workstation")
  .create();

// Engineer's Workshop (T3)
RecipeBuilder.get("basic")
  .setShaped([
    [null, <minecraft:obsidian>, null],
    [<minecraft:iron_block>, <artisanworktables:workstation:6>, <minecraft:iron_block>],
    [<minecraft:iron_block>, null, <minecraft:iron_block>]])
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansCutters>, 50)
  .addOutput(<artisanworktables:workshop:6>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering"]))
  .setName("engineer_workshop")
  .create();

// Chef's Worktable (T1)
RecipeBuilder.get("mason")
  .setShaped([
    [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>],
    [<ore:logWood>, <artisanworktables:worktable:5>, <ore:logWood>],
    [<ore:stickWood>, null, <ore:stickWood>]])
  .addTool(<ore:artisansFile>, 50)
  .addOutput(<artisanworktables:worktable:11>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/chef"]))
  .setName("chef_worktable")
  .create();

// Chef's Workstation (T2)
RecipeBuilder.get("mason")
  .setShaped([
    [null, <minecraft:iron_block>, null],
    [<ore:logWood>, <artisanworktables:worktable:11>, <ore:logWood>],
    [<ore:logWood>, null, <ore:logWood>]])
  .addTool(<ore:artisansFile>, 30)
  .addTool(<ore:artisansCutters>, 25)
  .addOutput(<artisanworktables:workstation:11>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/chef"]))
  .setName("chef_workstation")
  .create();

// Designer's Worktable (T1)
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>],
    [<minecraft:stonebrick:*>, <artisanworktables:worktable:6>, <minecraft:stonebrick:*>],
    [<minecraft:stonebrick:*>, null, <minecraft:stonebrick:*>]])
  .setSecondaryIngredients([<ore:dyeBlue>*3])
  .addTool(<ore:artisansSpanner>, 25)
  .addOutput(<artisanworktables:worktable:12>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/designing"]))
  .setName("designer_worktable")
  .create();

// Designer's Workstation (T2)
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:paper>, <minecraft:book>, <minecraft:paper>],
    [<minecraft:brick_block>, <artisanworktables:worktable:12>, <minecraft:brick_block>],
    [<minecraft:brick_block>, null, <minecraft:brick_block>]])
  .setSecondaryIngredients([<ore:dyeBlue> * 3])
  .addTool(<ore:artisansSolderer>, 50)
  .addTool(<ore:artisansSpanner>, 50)
  .addOutput(<artisanworktables:workstation:12>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/designing"]))
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
  .addTool(<ore:artisansPliers>, 100)
  .addTool(<ore:artisansSolderer>, 100)
  .addTool(<ore:artisansSpanner>, 100)
  .addOutput(<artisanworktables:workshop:12>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/designing"]))
  .setName("designer_workshop")
  .create();

// Scientist's Worktable (T1) {Formerly Chemist}
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
    [<minecraft:nether_brick>, <artisanworktables:worktable:5>, <minecraft:nether_brick>],
    [<minecraft:nether_brick_fence>, null, <minecraft:nether_brick_fence>]])
  .addTool(<ore:artisansHammer>, 15)
  .addTool(<ore:artisansSpanner>, 10)
  .addOutput(<artisanworktables:worktable:9>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science"]))
  .setName("science_worktabble")
  .create();

// Scientist's Workstation (T2) {Formerly Chemist}
// Recipes are mostly in refined_storage.zs
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotSteel>, <ore:blockSteel>, <ore:ingotSteel>],
    [<minecraft:nether_brick>, <artisanworktables:worktable:9>, <minecraft:nether_brick>],
    [<minecraft:nether_brick_fence>, <openblocks:tank>, <minecraft:nether_brick_fence>]])
  .addTool(<ore:artisansHammer>, 30)
  .addTool(<ore:artisansSpanner>, 20)
  .addOutput(<artisanworktables:workstation:9>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science"]))
  .setName("science_workstation")
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotSteel>, <ore:blockSteel>, <ore:ingotSteel>],
    [<minecraft:nether_brick>, <artisanworktables:worktable:9>, <minecraft:nether_brick>],
    [<minecraft:nether_brick_fence>, <thermalexpansion:tank>, <minecraft:nether_brick_fence>]])
  .addTool(<ore:artisansHammer>, 35)
  .addTool(<ore:artisansSpanner>, 25)
  .setSecondaryIngredients([<thermalexpansion:tank>])
  .addOutput(<artisanworktables:workstation:9>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science"]))
  .setName("science_workstation_te")
  .create();


print("artisan_worktables.zs loaded");