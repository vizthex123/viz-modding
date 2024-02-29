# Adds recipes to the Scientist's Worktable(s)
# Formerly chemist.zs

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.FTGU;

print("scientist.zs loading...");

/*
https://artisan-worktables.readthedocs.io/en/latest/recipes/gettingstarted/
https://artisan-worktables.readthedocs.io/en/latest/recipes/tools/
https://artisan-worktables.readthedocs.io/en/latest/recipes/basic/
*/

var beaker = <ore:artisansBeaker>;
var burner = <ore:artisansBurner>;

var hammer = <ore:artisansHammer>;
var cutters = <ore:artisansCutters>;

var spanner = <ore:artisansSpanner>;
var chisel = <ore:artisansChisel>;

# Fire Charge recipes
recipes.remove(<minecraft:fire_charge>);
recipes.addShapeless(<minecraft:fire_charge>*3, [<minecraft:coal:1>|<minecraft:coal>, <minecraft:gunpowder>, <minecraft:flint_and_steel:*>.transformDamage(3)|<natura:flint_and_blaze:*>.transformDamage(3)|<vulcanite:flint_and_vulcanite:*>.transformDamage(3)]);

RecipeBuilder.get("chemist")
  .setShapeless([<minecraft:blaze_powder>, <nibrockscoal:iron_coal>, <minecraft:gunpowder>])
  .addTool(beaker, 12)
  .addOutput(<minecraft:fire_charge>*6)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science"]))
  .setName("fire_charge")
  .create();

// Carbon Compressor (Diamond Machine)
recipes.remove(<coalprocessing:diamond_machine>);
RecipeBuilder.get("chemist")
  .setShaped([
    [<minecraft:piston>, <extrautils2:decorativeglass:5>, <minecraft:piston>],
    [<extrautils2:decorativeglass:5>, <minecraft:obsidian>, <extrautils2:decorativeglass:5>],
    [<thermalfoundation:storage_alloy>, <thermalfoundation:storage_alloy>, <thermalfoundation:storage_alloy>]])
  .addTool(hammer, 200)
  .addTool(cutters, 100)
  .addOutput(<coalprocessing:diamond_machine>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/carbon_compression"]))
  .setName("carbon_compressor")
  .create();

// Compressed Coal (Carbon Block)
recipes.remove(<coalprocessing:compressed_coal>);
RecipeBuilder.get("chemist")
  .setShapeless([<minecraft:coal_block>, <minecraft:coal_block>, <minecraft:coal_block>, <minecraft:coal_block>])
  .setFluid(<liquid:lava> * 2000)
  .addTool(hammer, 40)
  .addTool(chisel, 20)
  .addOutput(<coalprocessing:compressed_coal>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/carbon_compression"]))
  .setName("carbon_block")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<thermalfoundation:storage_resource>, <thermalfoundation:storage_resource>])
  .setFluid(<liquid:lava> * 1000)
  .addTool(hammer, 50)
  .addTool(chisel, 30)
  .addOutput(<coalprocessing:compressed_coal>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/carbon_compression"]))
  .setName("carbon_block_charcoal")
  .create();

	// Pyrotheum
RecipeBuilder.get("chemist")
  .setShapeless([<minecraft:coal_block>, <minecraft:coal_block>, <minecraft:coal_block>, <minecraft:coal_block>])
  .setFluid(<liquid:pyrotheum> * 500)
  .addTool(hammer, 30)
  .addTool(chisel, 10)
  .addOutput(<coalprocessing:compressed_coal>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/carbon_compression"]))
  .setName("carbon_block_pyrotheum")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<thermalfoundation:storage_resource>, <thermalfoundation:storage_resource>])
  .setFluid(<liquid:pyrotheum> * 250)
  .addTool(hammer, 40)
  .addTool(chisel, 20)
  .addOutput(<coalprocessing:compressed_coal>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/carbon_compression"]))
  .setName("carbon_block_charcoal_pyrotheum")
  .create();



# New recipes for Vulcanite items
# Durability cost is 20x the resource amount (Spanner is 1/2 of that)
recipes.remove(<vulcanite:vulcanite_pickaxe>);
recipes.remove(<vulcanite:vulcanite_shovel>);
recipes.remove(<vulcanite:vulcanite_sword>);
recipes.remove(<vulcanite:vulcanite_hoe>);
recipes.remove(<vulcanite:vulcanite_axe>);

recipes.remove(<vulcanite:flint_and_vulcanite>);

recipes.remove(<vulcanite:vulcanite_helmet>);
recipes.remove(<vulcanite:vulcanite_chestplate>);
recipes.remove(<vulcanite:vulcanite_leggings>);
recipes.remove(<vulcanite:vulcanite_boots>);

var stick = <ore:rodStone>;
var vulcanite = <vulcanite:vulcanite_ingot>;

// Sword
RecipeBuilder.get("chemist")
  .setShaped([
    [vulcanite],
    [vulcanite],
    [stick]])
  .addTool(beaker, 40)
  .addTool(spanner, 20)
  .addOutput(<vulcanite:vulcanite_sword>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science"]))
  .setName("vulcanite_sword")
  .create();

// Pickaxe
RecipeBuilder.get("chemist")
  .setShaped([
    [vulcanite, vulcanite, vulcanite],
    [null, stick, null],
    [null, stick, null]])
  .addTool(beaker, 60)
  .addTool(spanner, 30)
  .addOutput(<vulcanite:vulcanite_pickaxe>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science"]))
  .setName("vulcanite_pickaxe")
  .create();

// Shovel
RecipeBuilder.get("chemist")
  .setShaped([
    [vulcanite],
    [stick],
    [stick]])
  .addTool(beaker, 20)
  .addTool(spanner, 10)
  .addOutput(<vulcanite:vulcanite_shovel>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science"]))
  .setName("vulcanite_shovel")
  .create();

// Hoe
RecipeBuilder.get("chemist")
  .setShaped([
    [vulcanite, vulcanite],
    [null, stick],
    [null, stick]])
  .addTool(beaker, 40)
  .addTool(spanner, 20)
  .addOutput(<vulcanite:vulcanite_hoe>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science"]))
  .setName("vulcanite_hoe")
  .setMirrored()
  .create();

// Axe
RecipeBuilder.get("chemist")
  .setShaped([
    [vulcanite, vulcanite],
    [vulcanite, stick],
    [null, stick]])
  .addTool(beaker, 60)
  .addTool(spanner, 30)
  .addOutput(<vulcanite:vulcanite_axe>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science"]))
  .setName("vulcanite_axe")
  .setMirrored()
  .create();


// Flint & Vulcanite
RecipeBuilder.get("chemist")
  .setShapeless([vulcanite, <minecraft:flint>])
  .addTool(beaker, 30)
  .addOutput(<vulcanite:flint_and_vulcanite>)
  .create();



	# Armour
// Helmet
RecipeBuilder.get("chemist")
  .setShaped([
    [vulcanite, vulcanite, vulcanite],
    [vulcanite, null, vulcanite]])
  .addTool(beaker, 100)
  .addTool(spanner, 50)
  .addOutput(<vulcanite:vulcanite_helmet>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science"]))
  .setName("vulcanite_helmet")
  .create();

// Chestplate
RecipeBuilder.get("chemist")
  .setShaped([
    [vulcanite, null, vulcanite],
    [vulcanite, vulcanite, vulcanite],
    [vulcanite, vulcanite, vulcanite]])
  .addTool(beaker, 160)
  .addTool(spanner, 80)
  .addOutput(<vulcanite:vulcanite_chestplate>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science"]))
  .setName("vulcanite_chestplate")
  .create();

// Leggings
RecipeBuilder.get("chemist")
  .setShaped([
    [vulcanite, vulcanite, vulcanite],
    [vulcanite, null, vulcanite],
    [vulcanite, null, vulcanite]])
  .addTool(beaker, 140)
  .addTool(spanner, 70)
  .addOutput(<vulcanite:vulcanite_leggings>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science"]))
  .setName("vulcanite_leggings")
  .create();

// Boots
RecipeBuilder.get("chemist")
  .setShaped([
    [vulcanite, null, vulcanite],
    [vulcanite, null, vulcanite]])
  .addTool(beaker, 80)
  .addTool(spanner, 40)
  .addOutput(<vulcanite:vulcanite_boots>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science"]))
  .setName("vulcanite_boots")
  .create();

print("scientist.zs loaded");