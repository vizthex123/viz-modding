# Adds recipes to my custom items

import mods.artisanintegrations.requirement.FTGU;
import mods.artisanworktables.builder.RecipeBuilder;

print("recipes.zs loading...");

# Molecular Rearranger recipe
RecipeBuilder.get("engineer")
  .setShaped([
    [<alchemistry:element:15>, null, <alchemistry:element:4>],
    [null, <contenttweaker:chip50>, null],
    [<alchemistry:element:34>, null, <alchemistry:element:32>]])
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<contenttweaker:molecular_rearranger> * 2)
  .setExtraOutputOne(<contenttweaker:molecular_rearranger>, 0.5)
  .setName("molecular_rearranger")
  .create();

# Iron Ring recipe
recipes.addShaped(<contenttweaker:ring>, [[null, <minecraft:iron_ingot>, null],
                                		 	      [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],
                                  			      [null, <minecraft:iron_ingot>, null]]);

# Wrapped Bone
recipes.addShapeless(<contenttweaker:wrapped_bone>, [<ore:string>, <minecraft:bone>]);

# DIY Melon Circuit
# I don't even know...
recipes.addShapedMirrored(<contenttweaker:melon_circuit>, [[null, null, <xlfoodmod:salt>|<alchemistry:mineral_salt>],
                                     					 [<minecraft:glowstone_dust>|<minecraft:redstone>|<projectred-core:resource_item:105>, <minecraft:melon_block>, <minecraft:glowstone_dust>|<minecraft:redstone>|<projectred-core:resource_item:105>],
                                 					     [<xlfoodmod:salt>|<alchemistry:mineral_salt>, null, null]]);

# MDF Board
recipes.addShaped(<contenttweaker:mdf>*4, [[<thermalfoundation:material:801>, <ore:slimeball>, <thermalfoundation:material:801>],
                                  			      [<thermalfoundation:material:801>, <ore:slimeball>, <thermalfoundation:material:801>]]);

recipes.addShapeless(<contenttweaker:mdf>, [<ore:slimeball>, <thermalfoundation:material:801>]);

# Bottled foods
recipes.addShapeless(<contenttweaker:bottled_pepper>, [<minecraft:glass_bottle>, <xlfoodmod:pepper>]);
recipes.addShapeless(<contenttweaker:bottled_tomato>, [<minecraft:glass_bottle>, <ore:cropTomato>]);
recipes.addShapeless(<contenttweaker:bottled_cocoa>, [<minecraft:glass_bottle>, <minecraft:dye:3>]);

# Slime Green recipe
recipes.addShapeless(<contenttweaker:slime_green>, [<minecraft:slime_ball>]);

# Credit Chips
var damaged_chip = <contenttweaker:damaged_chip>;
var empty_chip = <contenttweaker:empty_chip>;

var chip1 = <contenttweaker:chip1>;
var chip5 = <contenttweaker:chip5>;
var chip10 = <contenttweaker:chip10>;
var chip50 = <contenttweaker:chip50>;
var chip100 = <contenttweaker:chip100>;

recipes.addShapeless("chip5", chip5, [chip1, chip1, chip1, chip1, chip1]);
recipes.addShapeless("chip10", chip10, [chip5, chip5]);
recipes.addShapeless("chip50", chip50, [chip10, chip10]);
recipes.addShapeless("chip100", chip100, [chip50, chip50]);

// Downgrade
recipes.addShapeless("chip100_downgrade", chip50*2, [chip100]);
recipes.addShapeless("chip50_downgrade", chip10*5, [chip50]);
recipes.addShapeless("chip10_downgrade", chip5*2, [chip10]);
recipes.addShapeless("chip5_downgrade", chip1*5, [chip5]);

// Repair damaged chip
recipes.addShapeless("empty_chip", empty_chip, [damaged_chip, <ore:artisansSolderer>.transformDamage(10)]);

RecipeBuilder.get("basic")
  .setShapeless([damaged_chip, chip1])
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput( chip1*2)
  .setName("chip1_repair")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([damaged_chip, chip5])
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput( chip5*2)
  .setName("chip5_repair")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([damaged_chip, chip10])
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput( chip10*2)
  .setName("chip10_repair")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([damaged_chip, chip50])
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput( chip50)
  .setName("chip50_repair")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([damaged_chip, chip100])
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput( chip100*2)
  .setName("chip100_repair")
  .create();

// Convert empty chips into credit chips
recipes.addShapeless("chip1", chip1*2, [empty_chip, chip1]);
recipes.addShapeless("chip5_empty", chip5*2, [empty_chip, chip5]);
recipes.addShapeless("chip10_empty", chip10*2, [empty_chip, chip10]);
recipes.addShapeless("chip50_empty", chip50*2, [empty_chip, chip50]);
recipes.addShapeless("chip100_empty", chip100*2, [empty_chip, chip100]);


print("recipes.zs loaded");