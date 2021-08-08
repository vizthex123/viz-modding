# Adds recipes to the scribe's worktable/station/shop

import mods.artisanintegrations.requirement.FTGU;
import mods.artisanworktables.builder.RecipeBuilder;

print("scribe.zs loading...");
/*
Regular table recipes & tooltips & such are in artisan_worktables.zs

https://artisan-worktables.readthedocs.io/en/latest/recipes/gettingstarted/
https://artisan-worktables.readthedocs.io/en/latest/recipes/tools/
https://artisan-worktables.readthedocs.io/en/latest/recipes/basic/
*/


// Quest Book
recipes.remove(<ftbquests:book>);
RecipeBuilder.get("scribe")
  .setShapeless([<minecraft:book>])
  .addTool(<ore:artisansQuill>, 3)
  .addOutput(<ftbquests:book>)
  .addRequirement(FTGU.allOf(["adrift:survival/scribe"]))
  .setName("quest_book")
  .create();

// Cooking for Blockheads I
furnace.remove(<cookingforblockheads:recipe_book:1>);
RecipeBuilder.get("scribe")
  .setShapeless([<cookingforblockheads:recipe_book>|<minecraft:book>, <ore:listAllfishraw>])
  .addTool(<ore:artisansQuill>, 5)
  .setFluid(<liquid:water>*1000)
  .addOutput(<cookingforblockheads:recipe_book:1>)
  .addRequirement(FTGU.allOf(["adrift:survival/cooking"]))
  .setName("blockheads_1")
  .create();

// Cooking for Blockheads II
recipes.remove(<cookingforblockheads:recipe_book:2>);
RecipeBuilder.get("scribe")
  .setShaped([
    [null, <cookingforblockheads:recipe_book:1>, null],
    [<ore:ingotIron>, <cookingforblockheads:counter>|<cookingforblockheads:corner>, <ore:ingotIron>]])
  .addTool(<ore:artisansQuill>, 10)
  .setFluid(<liquid:lava>*1000)
  .addOutput(<cookingforblockheads:recipe_book:2>)
  .addRequirement(FTGU.allOf(["adrift:survival/advanced_cooking"]))
  .setName("blockheads_2")
  .create();

// Research Book
recipes.removeByRecipeName("ftgumod:research_book");
RecipeBuilder.get("scribe")
  .setShaped([
    [<ftgumod:parchment_empty>, <minecraft:book>, <ftgumod:parchment_empty>]])
  .addTool(<ore:artisansQuill>, 7)
  .addOutput(<ftgumod:research_book>)
  .addRequirement(FTGU.allOf(["adrift:survival/scribe"]))
  .setName("research_book")
  .create();

// Akashic Tome
recipes.remove(<akashictome:tome>);
RecipeBuilder.get("scribe")
  .setShapeless([<minecraft:book>, <minecraft:book>])
  .addTool(<ore:artisansQuill>, 12)
  .addOutput(<akashictome:tome>)
  .addRequirement(FTGU.allOf(["adrift:survival/scribe"]))
  .setName("akashic_tome")
  .create();

// Map
recipes.removeByRecipeName("minecraft:map");
RecipeBuilder.get("scribe")
  .setShaped([
    [<ftgumod:parchment_empty>, <ftgumod:parchment_empty>, <ftgumod:parchment_empty>],
    [<ftgumod:parchment_empty>, <minecraft:compass>, <ftgumod:parchment_empty>],
    [<ftgumod:parchment_empty>, <ftgumod:parchment_empty>, <ftgumod:parchment_empty>]])
  .addTool(<ore:artisansCompass>, 5)
  .addOutput(<minecraft:map>)
  .addRequirement(FTGU.allOf(["adrift:survival/scribe"]))
  .setName("map")
  .create();

# Paper Recipes
recipes.removeShaped(<minecraft:paper>);
// Regular
RecipeBuilder.get("scribe")
  .setShaped([
    [<ore:sugarcane>, <ore:sugarcane>, <ore:sugarcane>]])
  .addTool(<ore:artisansQuill>, 3)
  .addOutput(<minecraft:paper> * 3)
  .addRequirement(FTGU.allOf(["adrift:survival/scribe"]))
  .setName("paper")
  .create();

// Paper from Creepvines
RecipeBuilder.get("scribe")
  .setShaped([
    [<better_diving:creepvine>, <better_diving:creepvine>, <better_diving:creepvine>],
    [<better_diving:creepvine>, <better_diving:creepvine>, <better_diving:creepvine>]])
  .addTool(<ore:artisansKnife>, 12)
  .addOutput(<minecraft:paper> * 2)
  .addRequirement(FTGU.allOf(["adrift:survival/survival"]))
  .setName("creepvine_paper")
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [<better_diving:creepvine>, <better_diving:creepvine>, <better_diving:creepvine>],
    [<better_diving:creepvine>, <better_diving:creepvine>, <better_diving:creepvine>]])
  .addTool(<ore:artisansKnife>, 12)
  .addOutput(<minecraft:paper> * 2)
  .addRequirement(FTGU.allOf(["adrift:survival/survival"]))
  .setName("creepvine_paper")
  .create();

# Books
recipes.remove(<minecraft:book>);
recipes.remove(<minecraft:writable_book>);
// Regular
RecipeBuilder.get("scribe")
  .setShapeless([<ore:paper>, <ore:paper>, <ore:paper>, <ore:leather>])
  .addTool(<ore:artisansQuill>, 6)
  .addOutput(<minecraft:book>)
  .addRequirement(FTGU.allOf(["adrift:survival/scribe"]))
  .setName("book")
  .create();

// Writable
RecipeBuilder.get("scribe")
  .setShapeless([<minecraft:book>, <ore:feather>, <ore:dyeBlack>])
  .addTool(<ore:artisansQuill>, 8)
  .addOutput(<minecraft:writable_book>)
  .create();

# Scrolls
recipes.remove(<waystones:return_scroll>);
recipes.remove(<waystones:bound_scroll>);
recipes.remove(<waystones:warp_scroll>);

// Return Scroll
RecipeBuilder.get("scribe")
  .setShaped([
    [<ore:nuggetGold>, <ore:enderpearl>, <ore:nuggetGold>],
    [<ftgumod:parchment_empty>, <ftgumod:parchment_empty>, <ftgumod:parchment_empty>]])
  .addTool(<ore:artisansCompass>, 5)
  .addOutput(<waystones:return_scroll> * 5)
#  .addRequirement(FTGU.allOf(["adrift:survival/scrolls"]))
  .setName("return_scroll")
  .create();

// Bound Scroll
RecipeBuilder.get("scribe")
  .setShaped([
    [<ftgumod:parchment_empty>, <ftgumod:parchment_empty>, <ftgumod:parchment_empty>],
    [<ore:nuggetGold>, <ore:enderpearl>, <ore:nuggetGold>],
    [<ftgumod:parchment_empty>, <ftgumod:parchment_empty>, <ftgumod:parchment_empty>]])
  .addTool(<ore:artisansCompass>, 10)
  .addOutput(<waystones:bound_scroll> * 5)
#  .addRequirement(FTGU.allOf(["adrift:survival/scrolls"]))
  .setName("bound_scroll")
  .create();

// Warp Scroll
RecipeBuilder.get("scribe")
  .setShaped([
    [<ore:nuggetGold>, <waystones:warp_stone>.transformDamage(5), <ore:nuggetGold>],
    [<ftgumod:parchment_empty>, <ftgumod:parchment_empty>, <ftgumod:parchment_empty>]])
  .addTool(<ore:artisansCompass>, 20)
  .addOutput(<waystones:warp_scroll> * 5)
#  .addRequirement(FTGU.allOf(["adrift:survival/scrolls"]))
  .setName("warp_scroll")
  .create();

print("scribe.zs loaded");