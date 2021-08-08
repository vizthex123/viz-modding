# Adds recipes to the Jeweler's worktable/station/shop

import mods.artisanintegrations.requirement.FTGU;
import mods.artisanworktables.builder.RecipeBuilder;

print("jeweler.zs loading...");
/*
Regular table recipes & tooltips & such are in artisan_worktables.zs

https://artisan-worktables.readthedocs.io/en/latest/recipes/gettingstarted/
https://artisan-worktables.readthedocs.io/en/latest/recipes/tools/
https://artisan-worktables.readthedocs.io/en/latest/recipes/basic/
*/

### New recipes for diamond gear
# Durability use: 3x piece req
# Armour
recipes.remove(<minecraft:diamond_helmet>);
recipes.remove(<minecraft:diamond_chestplate>);
recipes.remove(<minecraft:diamond_leggings>);
recipes.remove(<minecraft:diamond_boots>);

// Helmet
RecipeBuilder.get("jeweler")
  .setShaped([
    [<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>],
    [<ore:gemDiamond>, null, <ore:gemDiamond>]])
  .addTool(<ore:artisansGemCutter>, 15)
  .addOutput(<minecraft:diamond_helmet>)
  .addRequirement(FTGU.allOf(["adrift:smithing/diamond_gear"]))
  .setName("diamond_")
  .create();

// Chestplate
RecipeBuilder.get("jeweler")
  .setShaped([
    [<ore:gemDiamond>, null, <ore:gemDiamond>],
    [<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>],
    [<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>]])
  .addTool(<ore:artisansGemCutter>, 24)
  .addOutput(<minecraft:diamond_chestplate>)
  .addRequirement(FTGU.allOf(["adrift:smithing/diamond_gear"]))
  .setName("diamond_chestplate")
  .create();

// Leggings
RecipeBuilder.get("jeweler")
  .setShaped([
    [<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>],
    [<ore:gemDiamond>, null, <ore:gemDiamond>],
    [<ore:gemDiamond>, null, <ore:gemDiamond>]])
  .addTool(<ore:artisansGemCutter>, 21)
  .addOutput(<minecraft:diamond_leggings>)
  .addRequirement(FTGU.allOf(["adrift:smithing/diamond_gear"]))
  .setName("diamond_leggings")
  .create();

// Boots
RecipeBuilder.get("jeweler")
  .setShaped([
    [<ore:gemDiamond>, null, <ore:gemDiamond>],
    [<ore:gemDiamond>, null, <ore:gemDiamond>]])
  .addTool(<ore:artisansGemCutter>, 12)
  .addOutput(<minecraft:diamond_boots>)
  .addRequirement(FTGU.allOf(["adrift:smithing/diamond_gear"]))
  .setName("diamond_boots")
  .create();

# Tools
# Durability use: 3x piece req
recipes.remove(<minecraft:diamond_sword>);
recipes.remove(<minecraft:diamond_pickaxe>);
recipes.remove(<minecraft:diamond_shovel>);
recipes.remove(<minecraft:diamond_hoe>);
recipes.remove(<minecraft:diamond_axe>);

// Sword
RecipeBuilder.get("jeweler")
  .setShaped([
    [<ore:gemDiamond>],
    [<ore:gemDiamond>],
    [<ore:stickWood>]])
  .addTool(<ore:artisansGemCutter>, 6)
  .addOutput(<minecraft:diamond_sword>)
  .addRequirement(FTGU.allOf(["adrift:smithing/diamond_gear"]))
  .setName("diamond_sword")
  .create();

// Pickaxe
RecipeBuilder.get("jeweler")
  .setShaped([
    [<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>],
    [null, <ore:stickWood>, null],
    [null, <ore:stickWood>, null]])
  .addTool(<ore:artisansGemCutter>, 9)
  .addOutput(<minecraft:diamond_pickaxe>)
  .addRequirement(FTGU.allOf(["adrift:smithing/diamond_gear"]))
  .setName("diamond_pickaxe")
  .create();
 
// Shovel
RecipeBuilder.get("jeweler")
  .setShaped([
    [<ore:gemDiamond>],
    [<ore:stickWood>],
    [<ore:stickWood>]])
  .addTool(<ore:artisansGemCutter>, 3)
  .addOutput(<minecraft:diamond_shovel>)
  .addRequirement(FTGU.allOf(["adrift:smithing/diamond_gear"]))
  .setName("diamond_spade")
  .create();

// Hoe
RecipeBuilder.get("jeweler")
  .setShaped([
    [<ore:gemDiamond>, <ore:gemDiamond>],
    [null, <ore:stickWood>],
    [null, <ore:stickWood>]])
  .addTool(<ore:artisansGemCutter>, 6)
  .addOutput(<minecraft:diamond_hoe>)
  .addRequirement(FTGU.allOf(["adrift:smithing/diamond_gear"]))
  .setName("diamond_hoe")
  .setMirrored()
  .create();

// Axe
RecipeBuilder.get("jeweler")
  .setShaped([
    [<ore:gemDiamond>, <ore:gemDiamond>],
    [<ore:gemDiamond>, <ore:stickWood>],
    [null, <ore:stickWood>]])
  .addTool(<ore:artisansGemCutter>, 9)
  .addOutput(<minecraft:diamond_axe>)
  .addRequirement(FTGU.allOf(["adrift:smithing/diamond_gear"]))
  .setName("diamond_axe")
  .setMirrored()
  .create();


print("jeweler.zs loaded");