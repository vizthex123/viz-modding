# Adds recipes to my custom items

import mods.artisanintegrations.requirement.FTGU;
import mods.artisanworktables.builder.RecipeBuilder;

print("recipes.zs loading...");

var redstone = <minecraft:redstone>;
var glowstone = <minecraft:glowstone_dust>;
var electrotine = <projectred-core:resource_item:105>;
var salt = <xlfoodmod:salt>|<alchemistry:mineral_salt>|<alchemistry:compound:6>;

# Wrapped Bone
recipes.addShapeless(<contenttweaker:wrapped_bone>, [<ore:string>, <minecraft:bone>]);

# DIY Melon Circuit
# I don't even know how I came up with this...
recipes.addShapedMirrored(<contenttweaker:melon_circuit>, [[null, null, salt],
                                     					 [redstone|electrotine, <minecraft:melon_block>, redstone|electrotine],
                                 					     [salt, null, null]]);

	// Glowstone version
RecipeBuilder.get("basic")
  .setShaped([
    [glowstone, glowstone, salt],
    [glowstone, <minecraft:melon_block>, glowstone],
    [salt, glowstone, glowstone]])
  .addOutput(<contenttweaker:melon_circuit>)
  .addTool(<ore:artisansCutters>, 25)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .setName("melon_circuit")
  .create();

# MDF Board
recipes.addShaped(<contenttweaker:mdf>*4, [[<thermalfoundation:material:801>, <ore:slimeball>, <thermalfoundation:material:801>],
                                  			      [<thermalfoundation:material:801>, <ore:slimeball>, <thermalfoundation:material:801>]]);

recipes.addShapeless(<contenttweaker:mdf>, [<ore:slimeball>, <thermalfoundation:material:801>]);

# Bottled foods
recipes.addShapeless(<contenttweaker:bottled_pepper>, [<minecraft:glass_bottle>, <xlfoodmod:pepper>]);
recipes.addShapeless(<contenttweaker:bottled_tomato>, [<minecraft:glass_bottle>, <ore:cropTomato>]);
recipes.addShapeless(<contenttweaker:bottled_cocoa>, [<minecraft:glass_bottle>, <minecraft:dye:3>]);

# Slime Dye recipes
// Black
recipes.addShapeless(<contenttweaker:slime_black>, [<betterslimes:black_slime>]);

// Blue
recipes.addShapeless(<contenttweaker:slime_blue>, [<betterslimes:blue_slime>]);

// Green
recipes.addShapeless(<contenttweaker:slime_green>, [<minecraft:slime_ball>]);

// Pink
recipes.addShapeless(<contenttweaker:slime_pink>, [<industrialforegoing:pink_slime>]);

// Purple
recipes.addShapeless(<contenttweaker:slime_purple>, [<betterslimes:purple_slime>]);

// Red
recipes.addShapeless(<contenttweaker:slime_red>, [<betterslimes:red_slime>]);

// Yellow
recipes.addShapeless(<contenttweaker:slime_yellow>, [<betterslimes:yellow_slime>]);

// Rosin
recipes.addShapeless(<industrialforegoing:artificial_dye:1>, [<thermalfoundation:material:832>]);

// Tar
recipes.addShapeless(<industrialforegoing:artificial_dye:15>, [<thermalfoundation:material:833>]);

/*
# Iron Ring recipe
RecipeBuilder.get("basic")
  .setShaped([
    [null, <minecraft:iron_ingot>, null],
	[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],
	[null, <minecraft:iron_ingot>, null]])
  .addOutput(<contenttweaker:ring>)
  .addTool(<ore:artisansHammer>, 20)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .setName("ring")
  .create();

// Iron Ring -> Chain Plating
// Gives a bit more than crafting the plating itself
recipes.addShapeless("ring_to_plating", <byg:chainplating>*20, [<contenttweaker:ring>]);
*/



### Credit Chips
var solderer = <ore:artisansSolderer>;

var damaged_chip = <contenttweaker:damaged_chip>;
var empty_chip = <contenttweaker:empty_chip>;

var chip1 = <contenttweaker:chip1>;
var chip5 = <contenttweaker:chip5>;
var chip10 = <contenttweaker:chip10>;
var chip50 = <contenttweaker:chip50>;
var chip100 = <contenttweaker:chip100>;

recipes.addShapeless("chip5", chip5, [chip1, chip1, chip1, chip1, chip1]);
recipes.addShapeless("chip10", chip10, [chip5, chip5]);
recipes.addShapeless("chip50", chip50, [chip10, chip10, chip10, chip10, chip10]);
recipes.addShapeless("chip100", chip100, [chip50, chip50]);

// Downgrade
recipes.addShapeless("chip100_downgrade", chip50*2, [chip100]);
recipes.addShapeless("chip50_downgrade", chip10*5, [chip50]);
recipes.addShapeless("chip10_downgrade", chip5*2, [chip10]);
recipes.addShapeless("chip5_downgrade", chip1*5, [chip5]);

# Repair damaged chips
# +5 durability cost over empty chips

val pulsaton = <contenttweaker:pulsaton_sliver>;

RecipeBuilder.get("basic")
  .setShapeless([damaged_chip])
  .addTool(solderer, 3)
  .addOutput(empty_chip)
  .setName("empty_chip")
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .create();

RecipeBuilder.get("basic")
  .setShapeless([damaged_chip, chip1])
  .addTool(solderer, 6)
  .addOutput( chip1*2)
  .setName("chip1_repair")
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .create();

RecipeBuilder.get("basic")
  .setShapeless([damaged_chip, chip5])
  .addTool(solderer, 10)
  .addOutput( chip5*2)
  .setName("chip5_repair")
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .create();

RecipeBuilder.get("basic")
  .setShapeless([damaged_chip, chip10])
  .addTool(solderer, 15)
  .addOutput( chip10*2)
  .setName("chip10_repair")
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .create();

RecipeBuilder.get("basic")
  .setShapeless([damaged_chip, chip50, electrotine])
  .addTool(solderer, 20)
  .addOutput( chip50*2)
  .setName("chip50_repair")
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .create();

RecipeBuilder.get("basic")
  .setShapeless([damaged_chip, chip100, pulsaton])
  .addTool(solderer, 30)
  .addOutput( chip100*2)
  .setName("chip100_repair")
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .create();



# Convert empty chips into credit chips
RecipeBuilder.get("basic")
  .setShapeless([empty_chip, chip1])
  .addTool(solderer, 1)
  .addOutput( chip1*2)
  .setName("chip1_duplication")
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .create();

RecipeBuilder.get("basic")
  .setShapeless([empty_chip, chip5])
  .addTool(solderer, 5)
  .addOutput( chip5*2)
  .setName("chip5_duplication")
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .create();

RecipeBuilder.get("basic")
  .setShapeless([empty_chip, chip10])
  .addTool(solderer, 10)
  .addOutput( chip10*2)
  .setName("chip10_duplication")
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .create();

RecipeBuilder.get("basic")
  .setShapeless([empty_chip, chip50, electrotine])
  .addTool(solderer, 15)
  .addOutput( chip50*2)
  .setName("chip50_duplication")
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .create();

RecipeBuilder.get("basic")
  .setShapeless([empty_chip, chip100, pulsaton])
  .addTool(solderer, 25)
  .addOutput( chip100*2)
  .setName("chip100_duplication")
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .create();



# Convert Sol Credit Chips into Credits
# Makes 150 credits each time, with a 10% chance to get 100 extra
RecipeBuilder.get("basic")
  .setShapeless([<contenttweaker:sol_chip>, empty_chip, chip10, pulsaton])
  .addTool(solderer, 75)
  .addOutput(chip100)
  .setExtraOutputOne(chip50, 1.0)
  .setExtraOutputTwo(chip100, 0.1)
  .setName("convert_sol_credit")
  .addRequirement(FTGU.allOf(["cyborg:crafting/credits"]))
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<contenttweaker:sol_chip>, damaged_chip, damaged_chip, chip10, chip5, pulsaton])
  .addTool(solderer, 125)
  .addOutput(chip100)
  .setExtraOutputOne(chip50, 1.0)
  .setExtraOutputTwo(chip100, 0.1)
  .setName("convert_sol_credit_damaged")
  .addRequirement(FTGU.allOf(["cyborg:crafting/credits"]))
  .create();

print("recipes.zs loaded");