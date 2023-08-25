# Fixes/changes recipes for XL Food's content

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.FTGU;

print("XLFood.zs loading...");

# Change the recipe for Tomato & Hot Sauce because balancing
furnace.remove(<xlfoodmod:hot_sauce>);
furnace.remove(<xlfoodmod:tomato_sauce>);

furnace.addRecipe(<xlfoodmod:hot_sauce>, <contenttweaker:bottled_pepper>, 0.5);
furnace.addRecipe(<xlfoodmod:tomato_sauce>, <contenttweaker:bottled_tomato>, 0.5);

// Also Chocolate Syrup
furnace.remove(<xlfoodmod:chocolate_syrup>);
furnace.addRecipe(<xlfoodmod:chocolate_syrup>, <contenttweaker:bottled_cocoa>, 0.5);

# Bottled stuff is in recipes.zs

### New recipes for XL Food items

// Alternate Cooked Dough recipe
RecipeBuilder.get("chef")
  .setShaped([
    [<xlfoodmod:dough>, <xlfoodmod:dough>, <xlfoodmod:dough>],
    [<xlfoodmod:dough>, null, <xlfoodmod:dough>],
    [<xlfoodmod:dough>, <xlfoodmod:dough>, <xlfoodmod:dough>]])
  .setFluid(<liquid:lava> * 1000)
  .addOutput(<xlfoodmod:cooked_dough> * 8)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("cooked_dough_lava")
  .create();

RecipeBuilder.get("chef")
  .setShaped([
    [<xlfoodmod:dough>, <xlfoodmod:dough>, <xlfoodmod:dough>],
    [<xlfoodmod:dough>, null, <xlfoodmod:dough>],
    [<xlfoodmod:dough>, <xlfoodmod:dough>, <xlfoodmod:dough>]])
  .setFluid(<liquid:pyrotheum> * 250)
  .addOutput(<xlfoodmod:cooked_dough> * 8)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("cooked_dough_pyrotheum")
  .create();

// Bacon
recipes.remove(<xlfoodmod:bacon>);
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:porkchop>])
  .addTool(<ore:artisansKnife>, 4)
  .addOutput(<xlfoodmod:bacon> * 4)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("bacon")
  .create();

RecipeBuilder.get("chef")
  .setShapeless([<minecraft:cooked_porkchop>])
  .addTool(<ore:artisansKnife>, 8)
  .addOutput(<xlfoodmod:bacon> * 2)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("bacon_cooked")
  .create();

// Chicken Sandwich
recipes.remove(<xlfoodmod:chicken_sandwich>);
RecipeBuilder.get("chef")
  .setShaped([
    [<xlfoodmod:cooked_dough>, <xlfoodmod:cooked_dough>, <xlfoodmod:cooked_dough>],
    [<xlfoodmod:lettuce>, <minecraft:cooked_chicken>, <xlfoodmod:lettuce>],
    [<xlfoodmod:cooked_dough>, <xlfoodmod:cooked_dough>, <xlfoodmod:cooked_dough>]])
  .addTool(<ore:artisansKnife>, 5)
  .addOutput(<xlfoodmod:chicken_sandwich>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("chicken_sandwich")
  .create();

// BLT Sandwich
recipes.remove(<xlfoodmod:blt_sandwich>);
RecipeBuilder.get("chef")
  .setShaped([
    [<xlfoodmod:cooked_dough>, <xlfoodmod:cooked_dough>, <xlfoodmod:cooked_dough>],
    [<xlfoodmod:lettuce>, <xlfoodmod:bacon>, <xlfoodmod:tomato>],
    [<xlfoodmod:cooked_dough>, <xlfoodmod:cooked_dough>, <xlfoodmod:cooked_dough>]])
  .addTool(<ore:artisansKnife>, 3)
  .addOutput(<xlfoodmod:blt_sandwich>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("blt")
  .create();

// Breakfast Sandwich
recipes.remove(<xlfoodmod:breakfast_sandwich>);
RecipeBuilder.get("chef")
  .setShaped([
    [<xlfoodmod:cooked_dough>, <xlfoodmod:cooked_dough>, <xlfoodmod:cooked_dough>],
    [<xlfoodmod:cheese>, <xlfoodmod:bacon>, <xlfoodmod:fried_egg>],
    [<xlfoodmod:cooked_dough>, <xlfoodmod:cooked_dough>, <xlfoodmod:cooked_dough>]])
  .addTool(<ore:artisansKnife>, 3)
  .addOutput(<xlfoodmod:breakfast_sandwich>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("breakfast_sandwich")
  .create();


// Tortilla
recipes.remove(<xlfoodmod:tortilla>);
RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:cooked_dough>, <xlfoodmod:cooked_dough>, <xlfoodmod:corn>])
  .addTool(<ore:artisansPan>, 2)
  .addOutput(<xlfoodmod:tortilla>*2)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("tortilla")
  .create();

// Dough
recipes.remove(<xlfoodmod:dough>);
RecipeBuilder.get("chef")
  .setShapeless([<ore:listAllgrain>, <ore:listAllgrain>, <ore:listAllgrain>, <ore:listAllgrain>])
  .setFluid(<liquid:water> * 1000)
  .addTool(<ore:artisansCuttingBoard>, 4)
  .addOutput(<xlfoodmod:dough> * 8)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("dough")
  .create();

// Croutons
recipes.remove(<xlfoodmod:crouton>);
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:bread>, <xlfoodmod:butter>])
  .addTool(<ore:artisansKnife>, 1)
  .addOutput(<xlfoodmod:crouton> * 4)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("crouton")
  .create();

// Butter
recipes.remove(<xlfoodmod:butter>);
RecipeBuilder.get("chef")
  .setShapeless([<ore:dustSalt>])
  .setFluid(<liquid:milk> * 2000)
  .addTool(<ore:artisansBeaker>, 4)
  .addOutput(<xlfoodmod:butter> * 2)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("butter")
  .create();

// Cheese
recipes.remove(<xlfoodmod:cheese>);
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:fire_charge>, <minecraft:fire_charge>, <minecraft:fire_charge>])
  .setFluid(<liquid:milk> * 3000)
  .addTool(<ore:artisansPan>, 12)
  .addOutput(<xlfoodmod:cheese> * 3)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("cheese_fire_charge")
  .create();

RecipeBuilder.get("chef")
  .setShapeless([<minecraft:lava_bucket>])
  .setFluid(<liquid:milk> * 6000)
  .addTool(<ore:artisansPan>, 6)
  .addOutput(<xlfoodmod:cheese> * 6)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("cheese_lava")
  .create();

RecipeBuilder.get("chef")
  .setShapeless([<forge:bucketfilled>.withTag({FluidName: "pyrotheum", Amount: 1000})])
  .setFluid(<liquid:milk> * 4000)
  .addTool(<ore:artisansPan>, 16)
  .addOutput(<xlfoodmod:cheese> * 12)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("cheese_pyrotheum")
  .create();

// Baguette
recipes.remove(<xlfoodmod:baguette>);
RecipeBuilder.get("chef")
  .setShaped([
    [null, null, <minecraft:wheat>],
    [null, <xlfoodmod:cooked_dough>, null],
    [<minecraft:wheat>, null, null]])
  .addTool(<ore:artisansCuttingBoard>, 4)
  .addOutput(<xlfoodmod:baguette>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("baguette")
  .setMirrored()
  .create();

// Pancake
recipes.remove(<xlfoodmod:pancake>);
RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:cooked_dough>, <xlfoodmod:cooked_dough>, <xlfoodmod:cooked_dough>])
  .addTool(<ore:artisansPan>, 3)
  .addOutput(<xlfoodmod:pancake>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("pancake")
  .create();

// Waffle
recipes.remove(<xlfoodmod:waffle>);
RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:cooked_dough>])
  .addTool(<ore:artisansPan>, 1)
  .setFluid(<liquid:lava> * 100)
  .addOutput(<xlfoodmod:waffle>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("waffle")
  .create();

// Mac & Cheese
recipes.remove(<xlfoodmod:macaroni_and_cheese>);
RecipeBuilder.get("chef")
  .setShaped([
    [null, null, null],
    [<xlfoodmod:cooked_dough>, <xlfoodmod:cheese>, <xlfoodmod:cooked_dough>],
    [null, <xlfoodmod:bowl>, null]])
  .addTool(<ore:artisansKnife>, 7)
  .addOutput(<xlfoodmod:macaroni_and_cheese>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("mac_and_cheese")
  .create();

// Spaghetti
recipes.remove(<xlfoodmod:spaghetti>);
RecipeBuilder.get("chef")
  .setShaped([
    [null, <xlfoodmod:tomato_sauce>, null],
    [<xlfoodmod:cooked_dough>, <xlfoodmod:ground_beef>, <xlfoodmod:cooked_dough>],
    [null, <xlfoodmod:bowl>, null]])
  .addOutput(<xlfoodmod:spaghetti>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("spaghetti")
  .create();

// Enchilada
recipes.remove(<xlfoodmod:enchilada>);
RecipeBuilder.get("chef")
  .setShaped([
    [<xlfoodmod:cheese>, <xlfoodmod:tortilla>, <xlfoodmod:rice>],
    [<xlfoodmod:onion>, <xlfoodmod:ground_beef>, <xlfoodmod:tomato_sauce>],
    [null, <xlfoodmod:tortilla>, null]])
  .addOutput(<xlfoodmod:enchilada>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("enchilada")
  .create();

// Lasagna
recipes.remove(<xlfoodmod:lasagne>);
RecipeBuilder.get("chef")
  .setShaped([
    [<xlfoodmod:cooked_dough>, <xlfoodmod:cooked_dough>, <xlfoodmod:cooked_dough>],
    [<xlfoodmod:cheese>, <xlfoodmod:tomato_sauce>, <xlfoodmod:ground_beef>],
    [<xlfoodmod:cooked_dough>, <xlfoodmod:cooked_dough>, <xlfoodmod:cooked_dough>]])
  .addOutput(<xlfoodmod:lasagne>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("lasagna")
  .create();

// Jambon-Beurre
recipes.remove(<xlfoodmod:jambon_beurre>);
RecipeBuilder.get("chef")
  .setShaped([
    [<xlfoodmod:baguette>, <xlfoodmod:baguette>, <xlfoodmod:baguette>],
    [<xlfoodmod:butter>, <xlfoodmod:butter>, <xlfoodmod:butter>],
    [<minecraft:cooked_porkchop>, <minecraft:cooked_porkchop>, <minecraft:cooked_porkchop>]])
  .addTool(<ore:artisansCuttingBoard>, 12)
  .addOutput(<xlfoodmod:jambon_beurre>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("jambon-beurre")
  .create();

// Ham
recipes.remove(<xlfoodmod:ham>);
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:porkchop>, <ore:dustSalt>])
  .addTool(<ore:artisansCuttingBoard>, 5)
  .addOutput(<xlfoodmod:ham>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("ham")
  .create();

// Sausage
recipes.remove(<xlfoodmod:sausage>);
RecipeBuilder.get("chef")
  .setShaped([
    [null, null, <minecraft:cooked_porkchop>],
    [null, <minecraft:cooked_porkchop>, null],
    [<minecraft:cooked_porkchop>, null, null]])
  .addTool(<ore:artisansCuttingBoard>, 5)
  .addOutput(<xlfoodmod:sausage> * 3)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("sausage")
  .setMirrored()
  .create();

// Beef Jerky
recipes.remove(<xlfoodmod:beef_jerky>);
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:cooked_beef>, <ore:dustSalt>, <ore:dustSalt>])
  .addTool(<ore:artisansCuttingBoard>, 5)
  .addOutput(<xlfoodmod:beef_jerky> * 4)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("beef_jerky")
  .create();

// Ground Beef
recipes.remove(<xlfoodmod:ground_beef>);
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:beef>])
  .addTool(<ore:artisansCuttingBoard>, 6)
  .addOutput(<xlfoodmod:ground_beef> * 4)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("ground_beef")
  .create();

RecipeBuilder.get("chef")
  .setShapeless([<minecraft:cooked_beef>])
  .addTool(<ore:artisansCuttingBoard>, 9)
  .addOutput(<xlfoodmod:ground_beef> * 2)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("ground_beef_cooked")
  .create();

// Raw Chicken Wings
recipes.remove(<xlfoodmod:raw_chicken_wing>);
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:chicken>])
  .addTool(<ore:artisansCuttingBoard>, 3)
  .addOutput(<xlfoodmod:raw_chicken_wing> * 2)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("raw_chicken_wing")
  .create();

# Buns
recipes.remove(<xlfoodmod:top_bun>);
recipes.remove(<xlfoodmod:bottom_bun>);

RecipeBuilder.get("chef")
  .setShapeless([<minecraft:bread>])
  .addTool(<ore:artisansCuttingBoard>, 5)
  .addOutput(<xlfoodmod:top_bun>)
  .setExtraOutputOne(<xlfoodmod:bottom_bun>, 1.0)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("buns")
  .create();

	// Top
RecipeBuilder.get("chef")
  .setShapeless([<ore:listAllgrain>, <ore:listAllgrain>])
  .setFluid(<liquid:water> * 125)
  .addTool(<ore:artisansPan>, 1)
  .addOutput(<xlfoodmod:top_bun>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("top_bun")
  .create();

	// Bottom
RecipeBuilder.get("chef")
  .setShapeless([<ore:listAllgrain>, <ore:listAllgrain>, <ore:listAllgrain>, <ore:listAllgrain>])
  .setFluid(<liquid:water> * 125)
  .addTool(<ore:artisansPan>, 2)
  .addOutput(<xlfoodmod:bottom_bun>*2)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("bottom_bun")
  .create();

# Burgers
recipes.remove(<xlfoodmod:hamburger>);
recipes.remove(<xlfoodmod:cheeseburger>);
recipes.remove(<xlfoodmod:chickenburger>);

// Hamburger (well it's technically beef; but whatever)
RecipeBuilder.get("chef")
  .setShaped([
    [null, <xlfoodmod:top_bun>, null],
    [<xlfoodmod:lettuce>|<xlfoodmod:cucumber>, <xlfoodmod:ground_beef>, <xlfoodmod:tomato>],
    [null, <xlfoodmod:bottom_bun>, null]])
  .addTool(<ore:artisansKnife>, 5)
  .addOutput(<xlfoodmod:hamburger>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("hamburger")
  .create();

// Cheeseburger
RecipeBuilder.get("chef")
  .setShaped([
    [null, <xlfoodmod:top_bun>, null],
    [<xlfoodmod:cheese>, <xlfoodmod:ground_beef>, <xlfoodmod:lettuce>|<xlfoodmod:cucumber>],
    [null, <xlfoodmod:bottom_bun>, null]])
  .addTool(<ore:artisansKnife>, 4)
  .addOutput(<xlfoodmod:cheeseburger>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("cheeseburger")
  .create();

RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:hamburger>, <xlfoodmod:cheese>])
  .addTool(<ore:artisansKnife>, 2)
  .addOutput(<xlfoodmod:cheeseburger>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("cheeseburger_stuffer")
  .create();

// Chickenburger
RecipeBuilder.get("chef")
  .setShaped([
    [null, <xlfoodmod:top_bun>, null],
    [<xlfoodmod:lettuce>|<xlfoodmod:cucumber>, <minecraft:cooked_chicken>, <xlfoodmod:hot_sauce>],
    [null, <xlfoodmod:bottom_bun>, null]])
  .addTool(<ore:artisansKnife>, 6)
  .addOutput(<xlfoodmod:chickenburger>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("chickenburger")
  .create();

// Taco
recipes.remove(<xlfoodmod:taco>);
RecipeBuilder.get("chef")
  .setShaped([
    [<xlfoodmod:lettuce>, null, <xlfoodmod:onion>],
    [<xlfoodmod:cheese>, <xlfoodmod:ground_beef>, <xlfoodmod:tomato>],
    [null, <xlfoodmod:tortilla>, null]])
  .addTool(<ore:artisansKnife>, 3)
  .addOutput(<xlfoodmod:taco>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("taco")
  .create();

// Burrito
recipes.remove(<xlfoodmod:burrito>);
RecipeBuilder.get("chef")
  .setShaped([
    [null, <xlfoodmod:tortilla>, null],
    [<xlfoodmod:cheese>, <xlfoodmod:ground_beef>, <xlfoodmod:tomato>],
    [null, <xlfoodmod:tortilla>, null]])
  .addTool(<ore:artisansCuttingBoard>, 3)
  .addOutput(<xlfoodmod:burrito>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("burrito")
  .create();

// Kebab
recipes.remove(<xlfoodmod:kebab>);
RecipeBuilder.get("chef")
  .setShaped([
    [null, <xlfoodmod:tomato>, null],
    [<xlfoodmod:lettuce>, <xlfoodmod:ground_beef>, <xlfoodmod:onion>],
    [null, <xlfoodmod:tortilla>, null]])
  .addOutput(<xlfoodmod:kebab>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("kebab")
  .create();

// Grilled Cheese Sandwich
recipes.remove(<xlfoodmod:grilled_cheese_sandwich>);
RecipeBuilder.get("chef")
  .setShaped([
    [<xlfoodmod:cooked_dough>, <xlfoodmod:cooked_dough>, <xlfoodmod:cooked_dough>],
    [<xlfoodmod:cheese>, <xlfoodmod:cheese>, <xlfoodmod:cheese>],
    [<xlfoodmod:cooked_dough>, <xlfoodmod:cooked_dough>, <xlfoodmod:cooked_dough>]])
  .setFluid(<liquid:lava> * 100)
  .addTool(<ore:artisansKnife>, 7)
  .addOutput(<xlfoodmod:grilled_cheese_sandwich>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("grilled_cheese_sandwich")
  .create();

RecipeBuilder.get("chef")
  .setShaped([
    [<xlfoodmod:cooked_dough>, <xlfoodmod:cooked_dough>, <xlfoodmod:cooked_dough>],
    [<xlfoodmod:cheese>, <xlfoodmod:cheese>, <xlfoodmod:cheese>],
    [<xlfoodmod:cooked_dough>, <xlfoodmod:cooked_dough>, <xlfoodmod:cooked_dough>]])
  .setFluid(<liquid:pyrotheum> * 50)
  .addTool(<ore:artisansKnife>, 5)
  .addOutput(<xlfoodmod:grilled_cheese_sandwich>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("grilled_cheese_sandwich_pyrotheum")
  .create();

// Ice Cream Sandwich
recipes.remove(<xlfoodmod:icecream_sandwich>);
RecipeBuilder.get("chef")
  .setShaped([
    [<xlfoodmod:chocolate_syrup>, <minecraft:cookie>, <xlfoodmod:chocolate_syrup>],
    [<xlfoodmod:vanilla_icecream_ball>, <xlfoodmod:vanilla_icecream_ball>, <xlfoodmod:vanilla_icecream_ball>],
    [<xlfoodmod:chocolate_syrup>, <minecraft:cookie>, <xlfoodmod:chocolate_syrup>]])
  .setSecondaryIngredients([<minecraft:ice>*4])
  .setFluid(<liquid:water> * 4000)
  .addOutput(<xlfoodmod:icecream_sandwich>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("ice_cream_sandwich_ice")
  .create();

RecipeBuilder.get("chef")
  .setShaped([
    [<xlfoodmod:chocolate_syrup>, <minecraft:cookie>, <xlfoodmod:chocolate_syrup>],
    [<xlfoodmod:vanilla_icecream_ball>, <xlfoodmod:vanilla_icecream_ball>, <xlfoodmod:vanilla_icecream_ball>],
    [<xlfoodmod:chocolate_syrup>, <minecraft:cookie>, <xlfoodmod:chocolate_syrup>]])
  .setSecondaryIngredients([<minecraft:packed_ice>])
  .addOutput(<xlfoodmod:icecream_sandwich>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("ice_cream_sandwich_packed_ice")
  .create();

RecipeBuilder.get("chef")
  .setShaped([
    [<xlfoodmod:chocolate_syrup>, <minecraft:cookie>, <xlfoodmod:chocolate_syrup>],
    [<xlfoodmod:vanilla_icecream_ball>, <xlfoodmod:vanilla_icecream_ball>, <xlfoodmod:vanilla_icecream_ball>],
    [<xlfoodmod:chocolate_syrup>, <minecraft:cookie>, <xlfoodmod:chocolate_syrup>]])
  .setFluid(<liquid:cryotheum> * 100)
  .addOutput(<xlfoodmod:icecream_sandwich>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("ice_cream_sandwich_cryotheum")
  .create();

// Caramel Apple
recipes.remove(<xlfoodmod:caramel_apple>);

// 1
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:apple>, <minecraft:sugar>])
  .setFluid(<liquid:lava> * 125)
  .addTool(<ore:artisansBeaker>, 3)
  .addOutput(<xlfoodmod:caramel_apple>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("1-caramel_apple")
  .create();

// 4
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:apple>, <minecraft:apple>, <minecraft:apple>, <minecraft:apple>, <minecraft:sugar>, <minecraft:sugar>, <minecraft:sugar>])
  .setFluid(<liquid:lava> * 250)
  .addTool(<ore:artisansBeaker>, 6)
  .addOutput(<xlfoodmod:caramel_apple>*4)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("4-caramel_apples")
  .create();

// 8
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:sugar>, <minecraft:sugar>, <minecraft:sugar>, <minecraft:sugar>, <minecraft:sugar>, <minecraft:sugar>])
  .setSecondaryIngredients([<minecraft:apple>*8])
  .setFluid(<liquid:lava> * 500)
  .addTool(<ore:artisansBeaker>, 12)
  .addOutput(<xlfoodmod:caramel_apple>*8)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("8-caramel_apples")
  .create();

// Brownie
recipes.remove(<xlfoodmod:brownie>);
RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:chocolate>, <xlfoodmod:chocolate_syrup>])
  .addTool(<ore:artisansPan>, 1)
  .setFluid(<liquid:lava> * 25)
  .addOutput(<xlfoodmod:brownie>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("brownie")
  .create();

// Chocolate
recipes.remove(<xlfoodmod:chocolate>);
RecipeBuilder.get("chef")
  .setShaped([
    [<xlfoodmod:chocolate_syrup>, <xlfoodmod:chocolate_syrup>, <xlfoodmod:chocolate_syrup>],
    [<xlfoodmod:chocolate_syrup>, <minecraft:milk_bucket>, <xlfoodmod:chocolate_syrup>],
    [<xlfoodmod:chocolate_syrup>, <xlfoodmod:chocolate_syrup>, <xlfoodmod:chocolate_syrup>]])
  .setFluid(<liquid:lava> * 250)
  .addTool(<ore:artisansBeaker>, 8)
  .addOutput(<xlfoodmod:chocolate>*6)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("chocolate")
  .create();

RecipeBuilder.get("chef")
  .setShaped([
    [<xlfoodmod:chocolate_syrup>, <xlfoodmod:chocolate_syrup>, <xlfoodmod:chocolate_syrup>],
    [<xlfoodmod:chocolate_syrup>, <minecraft:milk_bucket>, <xlfoodmod:chocolate_syrup>],
    [<xlfoodmod:chocolate_syrup>, <xlfoodmod:chocolate_syrup>, <xlfoodmod:chocolate_syrup>]])
  .setFluid(<liquid:pyrotheum> * 125)
  .addTool(<ore:artisansBeaker>, 6)
  .addOutput(<xlfoodmod:chocolate>*6)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("chocolate_pyrotheum")
  .create();

# Various Pies
// Pie Shell
recipes.remove(<xlfoodmod:pie_shell>);
RecipeBuilder.get("chef")
  .setShaped([
    [<xlfoodmod:cooked_dough>, null, <xlfoodmod:cooked_dough>],
    [null, <xlfoodmod:cooked_dough>, null]])
  .addTool(<ore:artisansCuttingBoard>, 6)
  .addOutput(<xlfoodmod:pie_shell>*3)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("pie_shell")
  .create();

// Apple Pie
recipes.remove(<xlfoodmod:apple_pie>);
RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:pie_shell>, <minecraft:apple>, <minecraft:sugar>])
  .addTool(<ore:artisansKnife>, 4)
  .addOutput(<xlfoodmod:apple_pie>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("apple_pie")
  .create();

// Golden Apple Pie
recipes.remove(<xlfoodmod:golden_apple_pie>);
RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:pie_shell>, <xlfoodmod:pie_shell>, <xlfoodmod:pie_shell>, <minecraft:golden_apple>, <minecraft:sugar>])
  .addTool(<ore:artisansKnife>, 3)
  .addOutput(<xlfoodmod:golden_apple_pie>*3)
  .addRequirement(FTGU.anyOf(["cyborg:survival/special_cooking", "cyborg:crafting/chef"]))
  .setName("golden_apple_pie_regular")
  .create();

RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:pie_shell>, <xlfoodmod:pie_shell>, <xlfoodmod:pie_shell>, <xlfoodmod:pie_shell>, <minecraft:golden_apple:1>, <xlfoodmod:pie_shell>, <xlfoodmod:pie_shell>, <xlfoodmod:pie_shell>, <xlfoodmod:pie_shell>])
  .setSecondaryIngredients([<minecraft:golden_apple:1>, <xlfoodmod:pie_shell>*8, <minecraft:sugar>*4])
  .addTool(<ore:artisansKnife>, 16)
  .addOutput(<xlfoodmod:golden_apple_pie> * 16)
  .addRequirement(FTGU.anyOf(["cyborg:survival/special_cooking", "cyborg:crafting/chef"]))
  .setName("golden_apple_pie_enchanted")
  .create();

// Cheese Pie (ew)
recipes.remove(<xlfoodmod:cheese_pie>);
RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:pie_shell>, <xlfoodmod:cheese>])
  .addTool(<ore:artisansKnife>, 4)
  .addOutput(<xlfoodmod:cheese_pie>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("cheese_pie")
  .create();

// Chicken Pot Pie
recipes.remove(<xlfoodmod:chicken_pot_pie>);
RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:pie_shell>, <minecraft:cooked_chicken>, <xlfoodmod:onion>, <xlfoodmod:tomato>])
  .addTool(<ore:artisansKnife>, 4)
  .addOutput(<xlfoodmod:chicken_pot_pie>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("chicken_pot_pie")
  .create();

// Chocolate Pie
recipes.remove(<xlfoodmod:chocolate_pie>);
RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:pie_shell>, <xlfoodmod:chocolate>, <xlfoodmod:chocolate_syrup>])
  .addTool(<ore:artisansKnife>, 5)
  .addOutput(<xlfoodmod:chocolate_pie>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("chocolate_pie")
  .create();

// Bacon Pie (noice)
recipes.remove(<xlfoodmod:bacon_pie>);
RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:pie_shell>, <xlfoodmod:bacon>])
  .addTool(<ore:artisansKnife>, 4)
  .addOutput(<xlfoodmod:bacon_pie>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("bacon_pie")
  .create();

//  Fish Pie (D E S G U S T I N G!)
recipes.remove(<xlfoodmod:fish_pie>);
RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:pie_shell>, <byg:cookedpufferfish>|<byg:cookedtropicalfish>|<minecraft:cooked_fish>|<minecraft:cooked_fish:1>])
  .addTool(<ore:artisansKnife>, 6)
  .addOutput(<xlfoodmod:fish_pie>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("fish_pie")
  .create();


# Cakes (Vanilla's is in artisans_worktables.zs)

// Chocolate
recipes.remove(<xlfoodmod:chocolate_cake>);
RecipeBuilder.get("chef")
  .setShaped([
    [<minecraft:sugar>, <xlfoodmod:chocolate_syrup>, <minecraft:sugar>],
    [<ore:listAllgrain>, <ore:listAllgrain>, <ore:listAllgrain>]])
  .setFluid(<liquid:milk> * 3000)
  .addTool(<ore:artisansKnife>, 7)
  .addOutput(<xlfoodmod:chocolate_cake>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("chocolate_cake")
  .create();

// Oreo
recipes.remove(<xlfoodmod:oreo_cake>);
RecipeBuilder.get("chef")
  .setShaped([
    [<minecraft:sugar>, <xlfoodmod:oreo_cookie>, <minecraft:sugar>],
    [<ore:listAllgrain>, <ore:listAllgrain>, <ore:listAllgrain>]])
  .setFluid(<liquid:milk> * 3000)
  .addTool(<ore:artisansKnife>, 7)
  .addOutput(<xlfoodmod:oreo_cake>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("oreo_cake")
  .create();

// Cheese Cake (but not *actually* a cheesecake :c)
recipes.remove(<xlfoodmod:cheese_cake>);
RecipeBuilder.get("chef")
  .setShaped([
    [<minecraft:sugar>, <xlfoodmod:cheese>, <minecraft:sugar>],
    [<ore:listAllgrain>, <ore:listAllgrain>, <ore:listAllgrain>]])
  .setFluid(<liquid:milk> * 3000)
  .addTool(<ore:artisansKnife>, 7)
  .addOutput(<xlfoodmod:cheese_cake>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("cheese_cake")
  .create();

// Nether
recipes.remove(<xlfoodmod:nether_cake>);
RecipeBuilder.get("chef")
  .setShaped([
    [<minecraft:nether_wart>, <minecraft:nether_wart>, <minecraft:nether_wart>],
    [<minecraft:sugar>, <minecraft:blaze_powder>, <minecraft:sugar>],
    [<ore:listAllgrain>, <ore:listAllgrain>, <ore:listAllgrain>]])
  .setFluid(<liquid:milk> * 3000)
  .addTool(<ore:artisansKnife>, 10)
  .addOutput(<xlfoodmod:nether_cake>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/special_cooking", "cyborg:crafting/chef"]))
  .setName("nether_cake")
  .create();

// Strawberry
recipes.remove(<xlfoodmod:strawberry_cake>);
RecipeBuilder.get("chef")
  .setShaped([
    [<minecraft:sugar>, <ore:cropStrawberry>, <minecraft:sugar>],
    [<ore:listAllgrain>, <ore:listAllgrain>, <ore:listAllgrain>]])
  .setFluid(<liquid:milk> * 3000)
  .addTool(<ore:artisansKnife>, 7)
  .addOutput(<xlfoodmod:strawberry_cake>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("strawberry_cake")
  .create();

// Pumpkin
recipes.remove(<xlfoodmod:pumpkin_cake>);
RecipeBuilder.get("chef")
  .setShaped([
    [<minecraft:sugar>, <minecraft:pumpkin>, <minecraft:sugar>],
    [<ore:listAllgrain>, <ore:listAllgrain>, <ore:listAllgrain>]])
  .setFluid(<liquid:milk> * 3000)
  .addTool(<ore:artisansKnife>, 7)
  .addOutput(<xlfoodmod:pumpkin_cake>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("pumpkin_cake")
  .create();

// Pizza (is pog my guys)
recipes.remove(<xlfoodmod:pizza>);
RecipeBuilder.get("chef")
  .setShaped([
    [<xlfoodmod:cooked_dough>, <xlfoodmod:pepper>, <xlfoodmod:cooked_dough>],
    [<xlfoodmod:cooked_dough>, <xlfoodmod:cheese>, <xlfoodmod:cooked_dough>],
    [<xlfoodmod:cooked_dough>, <xlfoodmod:tomato_sauce>, <xlfoodmod:cooked_dough>]])
  .addTool(<ore:artisansKnife>, 7)
  .addOutput(<xlfoodmod:pizza>)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("pizza")
  .create();

recipes.remove(<xlfoodmod:slice_of_pizza>);
recipes.addShapeless(<xlfoodmod:slice_of_pizza>*6, [<xlfoodmod:pizza>]);

/*
NOT CHANGED:

Cheesy Bread
Potato Bread
Corn Bread
Rice Bread
All Chips
Cooked Chicken Wing
Spicy Chicken Wings
Slice of Pizza
Oreo Cookie
Twinkie
Bourbon Biscuit
All Ice Cream
All Donuts
All Cupcakes
*/

// Make Hot Dogs & Sausage Rolls a tad cheaper
recipes.remove(<xlfoodmod:hot_dog>);
recipes.addShapedMirrored(<xlfoodmod:hot_dog>, [[null, <xlfoodmod:cooked_dough>, null],
                            				  [null, <xlfoodmod:sausage>, null],
                                     				  [null, <xlfoodmod:cooked_dough>, null]]);
recipes.remove(<xlfoodmod:sausage_roll>);
recipes.addShapeless(<xlfoodmod:sausage_roll>, [<xlfoodmod:cooked_dough>, <xlfoodmod:sausage>]);

// Change the recipe for XL Food's bowls
recipes.remove(<xlfoodmod:bowl>);
recipes.addShaped(<xlfoodmod:bowl>*3, [[null, null, null],
                            			  [<ceramics:unfired_clay:4>, null, <ceramics:unfired_clay:4>],
                                     			  [null, <ceramics:unfired_clay:4>, null]]);

// Fix the Cappuccino not having a recipe (despite having one that they registered wrong lol)
recipes.remove(<xlfoodmod:coffee>);
RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:coffee_cup>, <minecraft:dye:3>, <minecraft:sugar>])
  .setFluid(<liquid:milk> * 10)
  .addOutput(<xlfoodmod:coffee>)
  .create();

RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:coffee>])
  .setFluid(<liquid:milk> * 25)
  .addOutput(<xlfoodmod:cappuccino>)
  .create();

// Make the coffee cup cheaper
recipes.remove(<xlfoodmod:coffee_cup>);
recipes.addShapedMirrored(<xlfoodmod:coffee_cup>, [[null, null, null],
                                     			         	       [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],
                                 			  	       [null, <minecraft:iron_ingot>, <ore:stickWood>]]);

# Salads/soups/stews
recipes.remove(<xlfoodmod:garden_salad>);
recipes.remove(<xlfoodmod:chicken_salad>);
recipes.remove(<xlfoodmod:caesar_salad>);
recipes.remove(<xlfoodmod:onion_salad>);
recipes.remove(<xlfoodmod:taco_salad>);
recipes.remove(<xlfoodmod:cucumber_soup>);
recipes.remove(<xlfoodmod:tomato_soup>);
recipes.remove(<xlfoodmod:vegetable_soup>);
recipes.remove(<xlfoodmod:chicken_soup>);
recipes.remove(<xlfoodmod:beef_stew>);
recipes.remove(<xlfoodmod:pumpkin_stew>);

// Garden
RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:bowl>, <xlfoodmod:lettuce>, <xlfoodmod:cheese>, <xlfoodmod:cucumber>, <xlfoodmod:tomato>])
  .addOutput(<xlfoodmod:garden_salad>)
  .addTool(<ore:artisansKnife>, 3)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("garden_salad")
  .create();

// Chicken
RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:bowl>, <minecraft:cooked_chicken>, <minecraft:egg>, <xlfoodmod:cucumber>, <xlfoodmod:onion>, <xlfoodmod:pepper>])
  .addOutput(<xlfoodmod:chicken_salad>)
  .addTool(<ore:artisansKnife>, 3)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("chicken_salad")
  .create();

// Caesar
RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:bowl>, <xlfoodmod:lettuce>, <xlfoodmod:cheese>, <minecraft:egg>, <xlfoodmod:pepper_seeds>, <xlfoodmod:crouton>])
  .addOutput(<xlfoodmod:caesar_salad>)
  .addTool(<ore:artisansKnife>, 3)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("caesar_salad")
  .create();

// Onion
RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:bowl>, <xlfoodmod:lettuce>, <xlfoodmod:onion>, <xlfoodmod:tomato>])
  .addOutput(<xlfoodmod:onion_salad>)
  .addTool(<ore:artisansKnife>, 3)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("onion_salad")
  .create();

// Taco Salad
RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:bowl>, <xlfoodmod:tortilla>, <xlfoodmod:lettuce>, <xlfoodmod:cheese>, <xlfoodmod:tomato>])
  .addOutput(<xlfoodmod:taco_salad>)
  .addTool(<ore:artisansKnife>, 3)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("taco_salad")
  .create();

// Cucumber Soup
RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:bowl>, <xlfoodmod:cucumber>, <xlfoodmod:cucumber>])
  .setFluid(<liquid:water> * 100)
  .addOutput(<xlfoodmod:cucumber_soup>)
  .addTool(<ore:artisansPan>, 3)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("cucumber_soup")
  .create();

// Tomato Soup
RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:bowl>, <xlfoodmod:tomato>, <xlfoodmod:tomato>, <ore:dustSalt>])
  .setFluid(<liquid:milk> * 50)
  .addOutput(<xlfoodmod:tomato_soup>)
  .addTool(<ore:artisansPan>, 3)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("tomato_soup_milk")
  .create();

RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:bowl>, <xlfoodmod:tomato>, <xlfoodmod:tomato>, <ore:dustSalt>])
  .setFluid(<liquid:water> * 500)
  .addOutput(<xlfoodmod:tomato_soup>)
  .addTool(<ore:artisansPan>, 3)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("tomato_soup_water")
  .create();

// Vegetable Soup
RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:bowl>, <xlfoodmod:cucumber>, <xlfoodmod:onion>, <minecraft:carrot>, <minecraft:potato>, <xlfoodmod:tomato>, <xlfoodmod:pepper>])
  .setFluid(<liquid:milk> * 50)
  .addOutput(<xlfoodmod:vegetable_soup>)
  .addTool(<ore:artisansPan>, 3)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("vegetable_soup_milk")
  .create();

RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:bowl>, <xlfoodmod:cucumber>, <xlfoodmod:onion>, <minecraft:carrot>, <minecraft:potato>, <xlfoodmod:tomato>, <xlfoodmod:pepper>])
  .setFluid(<liquid:water> * 500)
  .addOutput(<xlfoodmod:vegetable_soup>)
  .addTool(<ore:artisansPan>, 3)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("vegetable_soup_water")
  .create();

// Chicken Soup
RecipeBuilder.get("chef")
  .setShapeless([<xlfoodmod:bowl>, <minecraft:cooked_chicken>, <minecraft:carrot>])
  .addOutput(<xlfoodmod:chicken_soup>)
  .addTool(<ore:artisansPan>, 3)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("chicken_soup")
  .create();

// Beef Stew
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:bowl>, <minecraft:cooked_beef>, <xlfoodmod:onion>, <minecraft:carrot>])
  .addOutput(<xlfoodmod:beef_stew>)
  .addTool(<ore:artisansPan>, 5)
  .addRequirement(FTGU.anyOf(["cyborg:survival/advanced_cooking", "cyborg:crafting/chef"]))
  .setName("beef_stew")
  .create();

// Pumpkin Stew
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:pumpkin>, <minecraft:carrot>, <xlfoodmod:ground_beef>, <minecraft:potato>, <xlfoodmod:pepper>])
  .addOutput(<xlfoodmod:pumpkin_stew>)
  .addTool(<ore:artisansPan>, 5)
  .addRequirement(FTGU.anyOf(["cyborg:survival/basic_cooking", "cyborg:crafting/chef"]))
  .setName("pumpkin_stew")
  .create();

print("XLFood.zs loaded");