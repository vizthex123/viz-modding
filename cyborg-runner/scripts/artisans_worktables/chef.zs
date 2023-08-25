# Adds recipes to the Chef's Worktables

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.FTGU;
import mods.artisanintegrations.requirement.Reskillable;
import mods.artisanintegrations.requirement.GameStages;

print("chef.zs loading...");

/*
https://artisan-worktables.readthedocs.io/en/latest/recipes/gettingstarted/
https://artisan-worktables.readthedocs.io/en/latest/recipes/tools/
https://artisan-worktables.readthedocs.io/en/latest/recipes/basic/
*/

# Vanilla Foods
recipes.remove(<minecraft:cake>);
recipes.remove(<minecraft:beetroot_soup>);
recipes.remove(<minecraft:pumpkin_pie>);
recipes.remove(<minecraft:rabbit_stew>);

// Poisonous Potato > Baked Potato
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:poisonous_potato>])
  .addTool(<ore:artisansPan>, 3)
  .addOutput(<minecraft:baked_potato>)
  .addRequirement(GameStages.allOf(["cooking"]))
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("poisonous_to_potato")
  .create();

// Cake
RecipeBuilder.get("chef")
  .setShaped([
    [<minecraft:sugar>, <minecraft:egg>, <minecraft:sugar>],
    [<ore:listAllgrain>, <ore:listAllgrain>, <ore:listAllgrain>]])
  .setFluid(<liquid:milk> * 3000)
  .addTool(<ore:artisansKnife>, 7)
  .addOutput(<minecraft:cake>)
  .addRequirement(GameStages.allOf(["advanced_cooking"]))
  .addRequirement(FTGU.allOf(["cyborg:crafting/chef", "cyborg:survival/advanced_cooking"]))
  .setName("cake")
  .create();

// Beetroot Soup
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:beetroot>, <minecraft:beetroot>, <minecraft:beetroot>, <minecraft:bowl>])
  .addTool(<ore:artisansPan>, 3)
  .addOutput(<minecraft:beetroot_soup>)
  .addRequirement(GameStages.allOf(["cooking"]))
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("beetroot_soup")
  .create();

// Rabbit Stew
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:cooked_rabbit>, <minecraft:baked_potato>, <minecraft:bowl>, <minecraft:carrot>, <minecraft:brown_mushroom>|<minecraft:red_mushroom>])
  .addTool(<ore:artisansPan>, 5)
  .setFluid(<liquid:lava> * 100)
  .addOutput(<minecraft:rabbit_stew>)
  .addRequirement(GameStages.allOf(["cooking"]))
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("rabbit_stew")
  .create();

# Mushroom Stew
recipes.remove(<minecraft:mushroom_stew>);
recipes.remove(<natura:soups:*>);

	// Vanilla
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:bowl>, <ore:mushroom>, <ore:mushroom>])
  .addTool(<ore:artisansPan>, 5)
  .setFluid(<liquid:milk> * 25)
  .addOutput(<minecraft:mushroom_stew>)
  .addRequirement(GameStages.allOf(["cooking"]))
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("mushroom_stew")
  .create();

	// Natura
RecipeBuilder.get("chef")
  .setShapeless([<natura:empty_bowls>, <ore:mushroom>, <ore:mushroom>])
  .addTool(<ore:artisansPan>, 5)
  .setFluid(<liquid:milk> * 25)
  .addOutput(<natura:soups>)
  .addRequirement(GameStages.allOf(["cooking"]))
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("mushroom_stew_ghostwood")
  .create();

RecipeBuilder.get("chef")
  .setShapeless([<natura:empty_bowls:1>, <ore:mushroom>, <ore:mushroom>])
  .addTool(<ore:artisansPan>, 5)
  .setFluid(<liquid:milk> * 25)
  .addOutput(<natura:soups:1>)
  .addRequirement(GameStages.allOf(["cooking"]))
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("mushroom_stew_bloodwood")
  .create();

RecipeBuilder.get("chef")
  .setShapeless([<natura:empty_bowls:2>, <ore:mushroom>, <ore:mushroom>])
  .addTool(<ore:artisansPan>, 5)
  .setFluid(<liquid:milk> * 25)
  .addOutput(<natura:soups:2>)
  .addRequirement(GameStages.allOf(["cooking"]))
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("mushroom_stew_darkwood")
  .create();

RecipeBuilder.get("chef")
  .setShapeless([<natura:empty_bowls:2>, <ore:mushroom>, <ore:mushroom>])
  .addTool(<ore:artisansPan>, 5)
  .setFluid(<liquid:milk> * 25)
  .addOutput(<natura:soups:2>)
  .addRequirement(GameStages.allOf(["cooking"]))
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("mushroom_stew_fusewood")
  .create();


// Pumpkin Pie
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:pumpkin>, <minecraft:egg>, <minecraft:sugar>])
  .addTool(<ore:artisansKnife>, 3)
  .addOutput(<minecraft:pumpkin_pie>)
  .addRequirement(GameStages.allOf(["cooking"]))
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("pumpkin_pie")
  .create();
  

# Glowshroom Stew (Natura)
# Recipe removed in above section

RecipeBuilder.get("chef")
  .setShapeless([<minecraft:bowl>, <ore:glowshroom>, <ore:glowshroom>, <ore:glowshroom>])
  .addTool(<ore:artisansPan>, 7)
  .setFluid(<liquid:milk> * 25)
  .addOutput(<natura:soups:4>)
  .addRequirement(GameStages.allOf(["advanced_cooking"]))
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/advanced_cooking"]))
  .setName("glowshroom_stew")
  .create();

RecipeBuilder.get("chef")
  .setShapeless([<natura:empty_bowls>, <ore:glowshroom>, <ore:glowshroom>, <ore:glowshroom>])
  .addTool(<ore:artisansPan>, 7)
  .setFluid(<liquid:milk> * 25)
  .addOutput(<natura:soups:5>)
  .addRequirement(GameStages.allOf(["advanced_cooking"]))
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/advanced_cooking"]))
  .setName("glowshroom_stew_ghostwood")
  .create();

RecipeBuilder.get("chef")
  .setShapeless([<natura:empty_bowls:1>, <ore:glowshroom>, <ore:glowshroom>, <ore:glowshroom>])
  .addTool(<ore:artisansPan>, 7)
  .setFluid(<liquid:milk> * 25)
  .addOutput(<natura:soups:6>)
  .addRequirement(GameStages.allOf(["advanced_cooking"]))
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/advanced_cooking"]))
  .setName("glowshroom_stew_bloodwood")
  .create();

RecipeBuilder.get("chef")
  .setShapeless([<natura:empty_bowls:2>, <ore:glowshroom>, <ore:glowshroom>, <ore:glowshroom>])
  .addTool(<ore:artisansPan>, 7)
  .setFluid(<liquid:milk> * 25)
  .addOutput(<natura:soups:7>)
  .addRequirement(GameStages.allOf(["advanced_cooking"]))
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/advanced_cooking"]))
  .setName("glowshroom_stew_darkwood")
  .create();

RecipeBuilder.get("chef")
  .setShapeless([<natura:empty_bowls:3>, <ore:glowshroom>, <ore:glowshroom>, <ore:glowshroom>])
  .addTool(<ore:artisansPan>, 7)
  .setFluid(<liquid:milk> * 25)
  .addOutput(<natura:soups:8>)
  .addRequirement(GameStages.allOf(["advanced_cooking"]))
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/advanced_cooking"]))
  .setName("glowshroom_stew_fusewood")
  .create();


### Change recipes for BYG's food items
# Glowshroom Soups
recipes.remove(<byg:glowshroomsoupblue>);
recipes.remove(<byg:glowshroomsouppurple>);
recipes.remove(<byg:green_glowshroom_stew>);

// Blue
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:bowl>, <byg:blueglowshroomitem>, <byg:blueglowshroomitem>])
  .addTool(<ore:artisansPan>, 5)
  .setFluid(<liquid:milk> * 25)
  .addOutput(<byg:glowshroomsoupblue>)
  .addRequirement(GameStages.allOf(["advanced_cooking"]))
  .addRequirement(FTGU.allOf(["cyborg:crafting/chef", "cyborg:survival/advanced_cooking"]))
  .setName("blue_glowshroom_soup")
  .create();

// Green
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:bowl>, <byg:greenglowshroomitem>, <byg:greenglowshroomitem>])
  .addTool(<ore:artisansPan>, 5)
  .setFluid(<liquid:milk> * 25)
  .addOutput(<byg:green_glowshroom_stew>)
  .addRequirement(GameStages.allOf(["advanced_cooking"]))
  .addRequirement(FTGU.allOf(["cyborg:crafting/chef", "cyborg:survival/advanced_cooking"]))
  .setName("green_glowshroom_soup")
  .create();

// Purple
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:bowl>, <byg:purpleglowshroomitem>, <byg:purpleglowshroomitem>])
  .addTool(<ore:artisansPan>, 5)
  .setFluid(<liquid:milk> * 25)
  .addOutput(<byg:glowshroomsouppurple>)
  .addRequirement(GameStages.allOf(["advanced_cooking"]))
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
  .addRequirement(GameStages.allOf(["cooking"]))
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("blueberry_pie")
  .create();

// Strawberry
RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:pie_shell>, <ore:cropStrawberry>, <ore:cropStrawberry>, <minecraft:egg>, <minecraft:sugar>])
  .addOutput(<byg:strawberrypie>)
  .addRequirement(GameStages.allOf(["cooking"]))
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("strawberry_pie")
  .create();

// Green Apple
RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:pie_shell>, <byg:greenapple>, <byg:greenapple>, <minecraft:egg>, <minecraft:sugar>])
  .addOutput(<byg:greenapplepie>)
  .addRequirement(GameStages.allOf(["cooking"]))
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("green_apple_pie")
  .create();

# Pumpkin Mash
recipes.remove(<byg:pumpkinmash>);
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:pumpkin>, <minecraft:pumpkin>, <minecraft:bowl>])
  .setFluid(<liquid:water> * 50)
  .addOutput(<byg:pumpkinmash> * 3)
  .addRequirement(GameStages.allOf(["cooking"]))
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("pumpkin_mash")
  .create();

// Pumpkin Bread
recipes.remove(<byg:pumpkinbread>);
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:wheat>, <minecraft:wheat>, <minecraft:wheat>, <byg:pumpkinmash>])
  .addOutput(<byg:pumpkinbread> * 3)
  .addRequirement(GameStages.allOf(["cooking"]))
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("pumpkin_bread")
  .create();

# Other Soups
recipes.remove(<byg:carrotsoup>);
recipes.remove(<byg:tropicalfishsoup>);
recipes.remove(<byg:spidereyesoup>);

// Carrot
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:bowl>, <byg:cookedcarrot>, <byg:cookedcarrot>, <minecraft:sugar>])
  .setFluid(<liquid:water> * 100)
  .addTool(<ore:artisansKnife>, 2)
  .addOutput(<byg:carrotsoup>)
  .addRequirement(GameStages.allOf(["cooking"]))
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("carrot_soup")
  .create();

// Tropical Fish
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:bowl>, <byg:cookedpufferfish>|<byg:cookedtropicalfish>, <byg:cookedpufferfish>|<byg:cookedtropicalfish>, <ore:listAllvegetable>])
  .setFluid(<liquid:water> * 500)
  .addTool(<ore:artisansKnife>, 5)
  .addOutput(<byg:tropicalfishsoup>)
  .addRequirement(GameStages.allOf(["advanced_cooking"]))
  .addRequirement(FTGU.allOf(["cyborg:crafting/chef", "cyborg:survival/advanced_cooking"]))
  .setName("tropical_fish_soup")
  .create();

// Spider Eye
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:bowl>, <byg:cookedspidereye>, <byg:cookedspidereye>])
  .setFluid(<liquid:water> * 50)
  .addTool(<ore:artisansKnife>, 1)
  .addOutput(<byg:spidereyesoup>)
  .addRequirement(GameStages.allOf(["cooking"]))
  .addRequirement(FTGU.anyOf(["cyborg:crafting/chef", "cyborg:survival/basic_cooking"]))
  .setName("spider_eye_soup")
  .create();

print("chef.zs loaded");