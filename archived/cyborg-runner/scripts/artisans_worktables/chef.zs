# Adds recipes to the Chef's Worktables

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.FTGU;

print("chef.zs loading...");

/*
https://artisan-worktables.readthedocs.io/en/latest/recipes/gettingstarted/
https://artisan-worktables.readthedocs.io/en/latest/recipes/tools/
https://artisan-worktables.readthedocs.io/en/latest/recipes/basic/
*/

var pumpkin = <minecraft:pumpkin>|<byg:pumpkinmash>;

var pan = <ore:artisansPan>;
var knife =<ore:artisansKnife>;
var board = <ore:artisansCuttingBoard>;

# Vanilla Foods
recipes.remove(<minecraft:cake>);
recipes.remove(<minecraft:beetroot_soup>);
recipes.remove(<minecraft:pumpkin_pie>);
recipes.remove(<minecraft:rabbit_stew>);

// Poisonous Potato -> Baked Potato
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:poisonous_potato>])
  .addTool(pan, 3)
  .addOutput(<minecraft:baked_potato>)
  .setExtraOutputOne(<alchemistry:element:8>*4, 1.0)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("poisonous_to_potato")
  .create();

// Cake
RecipeBuilder.get("chef")
  .setShaped([
    [<minecraft:sugar>, <minecraft:egg>, <minecraft:sugar>],
    [<ore:listAllgrain>, <ore:listAllgrain>, <ore:listAllgrain>]])
  .setFluid(<liquid:milk> * 3000)
  .addTool(knife, 7)
  .addOutput(<minecraft:cake>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/chef", "cyborg:survival/advanced_cooking"]))
  .setName("cake")
  .create();

// Beetroot Soup
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:beetroot>, <minecraft:beetroot>, <minecraft:beetroot>, <minecraft:bowl>])
  .addTool(pan, 3)
  .addOutput(<minecraft:beetroot_soup>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("beetroot_soup")
  .create();

// Rabbit Stew
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:cooked_rabbit>, <minecraft:baked_potato>, <minecraft:bowl>, <minecraft:carrot>, <minecraft:brown_mushroom>|<minecraft:red_mushroom>])
  .addTool(pan, 5)
  .addOutput(<minecraft:rabbit_stew>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("rabbit_stew")
  .create();

# Mushroom Stew
recipes.remove(<minecraft:mushroom_stew>);
recipes.remove(<natura:soups:*>);

	// Vanilla
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:bowl>, <ore:mushroom>, <ore:mushroom>])
  .addTool(pan, 5)
  .setFluid(<liquid:milk> * 25)
  .addOutput(<minecraft:mushroom_stew>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("mushroom_stew")
  .create();

	// Natura
RecipeBuilder.get("chef")
  .setShapeless([<natura:empty_bowls>, <ore:mushroom>, <ore:mushroom>])
  .addTool(pan, 5)
  .setFluid(<liquid:milk> * 25)
  .addOutput(<natura:soups>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("mushroom_stew_ghostwood")
  .create();

RecipeBuilder.get("chef")
  .setShapeless([<natura:empty_bowls:1>, <ore:mushroom>, <ore:mushroom>])
  .addTool(pan, 5)
  .setFluid(<liquid:milk> * 25)
  .addOutput(<natura:soups:1>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("mushroom_stew_bloodwood")
  .create();

RecipeBuilder.get("chef")
  .setShapeless([<natura:empty_bowls:2>, <ore:mushroom>, <ore:mushroom>])
  .addTool(pan, 5)
  .setFluid(<liquid:milk> * 25)
  .addOutput(<natura:soups:2>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("mushroom_stew_darkwood")
  .create();

RecipeBuilder.get("chef")
  .setShapeless([<natura:empty_bowls:3>, <ore:mushroom>, <ore:mushroom>])
  .addTool(pan, 5)
  .setFluid(<liquid:milk> * 25)
  .addOutput(<natura:soups:3>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("mushroom_stew_fusewood")
  .create();


// Pumpkin Pie
RecipeBuilder.get("chef")
  .setShapeless([pumpkin, <minecraft:egg>, <minecraft:sugar>])
  .addTool(knife, 3)
  .addOutput(<minecraft:pumpkin_pie>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("pumpkin_pie")
  .create();
  

# Glowshroom Stew (Natura)
# Recipe removed in above section

RecipeBuilder.get("chef")
  .setShapeless([<minecraft:bowl>, <ore:glowshroom>, <ore:glowshroom>, <ore:glowshroom>])
  .addTool(pan, 7)
  .setFluid(<liquid:milk> * 25)
  .addOutput(<natura:soups:4>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/advanced_cooking"]))
  .setName("glowshroom_stew")
  .create();

RecipeBuilder.get("chef")
  .setShapeless([<natura:empty_bowls>, <ore:glowshroom>, <ore:glowshroom>, <ore:glowshroom>])
  .addTool(pan, 7)
  .setFluid(<liquid:milk> * 25)
  .addOutput(<natura:soups:5>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/advanced_cooking"]))
  .setName("glowshroom_stew_ghostwood")
  .create();

RecipeBuilder.get("chef")
  .setShapeless([<natura:empty_bowls:1>, <ore:glowshroom>, <ore:glowshroom>, <ore:glowshroom>])
  .addTool(pan, 7)
  .setFluid(<liquid:milk> * 25)
  .addOutput(<natura:soups:6>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/advanced_cooking"]))
  .setName("glowshroom_stew_bloodwood")
  .create();

RecipeBuilder.get("chef")
  .setShapeless([<natura:empty_bowls:2>, <ore:glowshroom>, <ore:glowshroom>, <ore:glowshroom>])
  .addTool(pan, 7)
  .setFluid(<liquid:milk> * 25)
  .addOutput(<natura:soups:7>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/advanced_cooking"]))
  .setName("glowshroom_stew_darkwood")
  .create();

RecipeBuilder.get("chef")
  .setShapeless([<natura:empty_bowls:3>, <ore:glowshroom>, <ore:glowshroom>, <ore:glowshroom>])
  .addTool(pan, 7)
  .setFluid(<liquid:milk> * 25)
  .addOutput(<natura:soups:8>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/advanced_cooking"]))
  .setName("glowshroom_stew_fusewood")
  .create();

// Berry Medley
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:bowl>, <ore:listAllberries>, <ore:listAllberries>, <ore:listAllberries>])
  .addTool(knife, 4)
  .addOutput(<natura:soups:9>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/advanced_cooking"]))
  .setName("berry_medley")
  .create();



### Change recipes for BYG's food items
# Glowshroom Soups
recipes.remove(<byg:glowshroomsoupblue>);
recipes.remove(<byg:glowshroomsouppurple>);
recipes.remove(<byg:green_glowshroom_stew>);

// Blue
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:bowl>, <byg:blueglowshroomitem>, <byg:blueglowshroomitem>])
  .addTool(pan, 5)
  .setFluid(<liquid:milk> * 25)
  .addOutput(<byg:glowshroomsoupblue>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/chef", "cyborg:survival/advanced_cooking"]))
  .setName("blue_glowshroom_soup")
  .create();

// Green
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:bowl>, <byg:greenglowshroomitem>, <byg:greenglowshroomitem>])
  .addTool(pan, 5)
  .setFluid(<liquid:milk> * 25)
  .addOutput(<byg:green_glowshroom_stew>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/chef", "cyborg:survival/advanced_cooking"]))
  .setName("green_glowshroom_soup")
  .create();

// Purple
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:bowl>, <byg:purpleglowshroomitem>, <byg:purpleglowshroomitem>])
  .addTool(pan, 5)
  .setFluid(<liquid:milk> * 25)
  .addOutput(<byg:glowshroomsouppurple>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/chef", "cyborg:survival/advanced_cooking"]))
  .setName("purple_glowshroom_soup")
  .create();

# Pies
recipes.remove(<byg:blueberrypie>);
recipes.remove(<byg:strawberrypie>);
recipes.remove(<byg:greenapplepie>);

// Blueberry
RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:pie_shell>, <byg:blueberry>, <byg:blueberry>, <minecraft:egg>, <minecraft:sugar>])
  .addOutput(<byg:blueberrypie>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("blueberry_pie")
  .create();

// Strawberry
RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:pie_shell>, <ore:cropStrawberry>, <ore:cropStrawberry>, <minecraft:egg>, <minecraft:sugar>])
  .addOutput(<byg:strawberrypie>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("strawberry_pie")
  .create();

// Green Apple
RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:pie_shell>, <byg:greenapple>, <byg:greenapple>, <minecraft:egg>, <minecraft:sugar>])
  .addOutput(<byg:greenapplepie>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("green_apple_pie")
  .create();

# Pumpkin Mash
recipes.remove(<byg:pumpkinmash>);
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:pumpkin>, <minecraft:pumpkin>, <minecraft:bowl>])
  .setFluid(<liquid:water> * 100)
  .addOutput(<byg:pumpkinmash> * 4)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("pumpkin_mash")
  .create();

// Pumpkin Bread
recipes.remove(<byg:pumpkinbread>);
RecipeBuilder.get("chef")
  .setShapeless([<ore:listAllgrain>, <ore:listAllgrain>, <ore:listAllgrain>, pumpkin])
  .addTool(board, 3)
  .addOutput(<byg:pumpkinbread>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("pumpkin_bread")
  .create();

RecipeBuilder.get("chef")
  .setShapeless([pumpkin, <minecraft:bread>])
  .addTool(board, 6)
  .addOutput(<byg:pumpkinbread>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("pumpkin_bread_combine")
  .create();

# Other Soups
recipes.remove(<byg:carrotsoup>);
recipes.remove(<byg:tropicalfishsoup>);
recipes.remove(<byg:spidereyesoup>);

// Carrot
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:bowl>, <byg:cookedcarrot>, <byg:cookedcarrot>, <minecraft:sugar>])
  .setFluid(<liquid:water> * 100)
  .addTool(knife, 2)
  .addOutput(<byg:carrotsoup>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("carrot_soup")
  .create();

// Tropical Fish
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:bowl>, <byg:cookedpufferfish>|<byg:cookedtropicalfish>, <byg:cookedpufferfish>|<byg:cookedtropicalfish>, <ore:listAllvegetable>])
  .setFluid(<liquid:water> * 500)
  .addTool(knife, 5)
  .addOutput(<byg:tropicalfishsoup>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/chef", "cyborg:survival/advanced_cooking"]))
  .setName("tropical_fish_soup")
  .create();

// Spider Eye
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:bowl>, <byg:cookedspidereye>, <byg:cookedspidereye>])
  .setFluid(<liquid:water> * 50)
  .addTool(knife, 1)
  .addOutput(<byg:spidereyesoup>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("spider_eye_soup")
  .create();

print("chef.zs loaded");