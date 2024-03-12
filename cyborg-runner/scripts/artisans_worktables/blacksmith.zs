# Adds recipes to the Blacksmith's Worktables

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.FTGU;

print("blacksmith.zs loading...");

/*
https://artisan-worktables.readthedocs.io/en/latest/recipes/gettingstarted/
https://artisan-worktables.readthedocs.io/en/latest/recipes/basic/
https://artisan-worktables.readthedocs.io/en/latest/recipes/tools/
*/

var iron = <minecraft:iron_ingot>;
var gold = <minecraft:gold_ingot>;
var silver = <thermalfoundation:material:130>;
var copper = <thermalfoundation:material:128>;
var tin = <thermalfoundation:material:129>;
var nickel = <thermalfoundation:material:133>;

var diamond = <minecraft:diamond>;
var glass = <ore:blockGlass>;


var lava = <liquid:lava>;
var pyrotheum = <liquid:pyrotheum>;

var hammer = <ore:artisansHammer>;
var cutters = <ore:artisansCutters>;


# Craft TE Alloys
// Bronze
RecipeBuilder.get("blacksmith")
  .setShapeless([copper, copper, copper, tin])
  .setFluid(lava * 250)
  .addTool(hammer, 6)
  .addOutput(<thermalfoundation:material:99> * 3)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/thermal_technology"]))
  .setName("bronze_lava")
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([copper, copper, copper, tin])
  .setFluid(pyrotheum * 50)
  .addTool(hammer, 3)
  .addOutput(<thermalfoundation:material:99> * 3)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/thermal_technology"]))
  .setName("bronze")
  .create();

// Electrum
RecipeBuilder.get("blacksmith")
  .setShapeless([silver, gold])
  .setFluid(lava * 1500)
  .addTool(hammer, 4)
  .addTool(cutters, 1)
  .addOutput(<thermalfoundation:material:97> * 2)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/thermal_technology"]))
  .setName("electrum_lava")
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([silver, gold])
  .setFluid(pyrotheum * 300)
  .addTool(hammer, 4)
  .addTool(cutters, 1)
  .addOutput(<thermalfoundation:material:97> * 2)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/thermal_technology"]))
  .setName("electrum")
  .create();

	// Pulsaton version
RecipeBuilder.get("blacksmith")
  .setShapeless([gold|silver, <contenttweaker:pulsaton_sliver>, <contenttweaker:pulsaton_sliver>, <contenttweaker:pulsaton_sliver>])
  .setFluid(pyrotheum * 300)
  .addTool(hammer, 4)
  .addTool(cutters, 1)
  .addOutput(<thermalfoundation:material:97> * 2)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/thermal_technology"]))
  .setName("electrum_pulsaton")
  .create();


// Invar
RecipeBuilder.get("blacksmith")
  .setShapeless([iron, iron, nickel])
  .setFluid(lava * 1000)
  .addTool(hammer, 8)
  .addTool(cutters, 4)
  .addOutput(<thermalfoundation:material:98> * 3)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/thermal_technology"]))
  .setName("invar_lava")
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([iron, iron, nickel])
  .setFluid(pyrotheum * 250)
  .addTool(hammer, 6)
  .addTool(cutters, 2)
  .addOutput(<thermalfoundation:material:98> * 3)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/thermal_technology"]))
  .setName("invar")
  .create();

// Constantan
RecipeBuilder.get("blacksmith")
  .setShapeless([copper, nickel])
  .setFluid(lava * 500)
  .addTool(hammer, 4)
  .addTool(cutters, 1)
  .addOutput(<thermalfoundation:material:100> * 2)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/thermal_technology"]))
  .setName("constantan_lava")
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([copper, nickel])
  .setFluid(pyrotheum * 100)
  .addTool(hammer, 4)
  .addTool(cutters, 1)
  .addOutput(<thermalfoundation:material:100> * 2)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/thermal_technology"]))
  .setName("constantan")
  .create();



// Steel
furnace.remove(<thermalfoundation:material:160>);
recipes.remove(<thermalfoundation:material:160>);

furnace.addRecipe(<thermalfoundation:material:160>, <thermalfoundation:material:96>, 0.0);

var carbon = <minecraft:coal>|<minecraft:coal:1>;
var carbon_e = <alchemistry:element:6>;

RecipeBuilder.get("blacksmith")
  .setShapeless([carbon, carbon, iron])
  .setFluid(lava * 1000)
  .addTool(hammer, 12)
  .addTool(cutters, 8)
  .addOutput(<thermalfoundation:material:96>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/thermal_technology"]))
  .setName("steel_lava")
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([carbon, carbon, iron])
  .setFluid(pyrotheum * 250)
  .addTool(hammer, 12)
  .addTool(cutters, 8)
  .addOutput(<thermalfoundation:material:96>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/thermal_technology"]))
  .setName("steel")
  .create();

	// Nibrock's Coal versions
RecipeBuilder.get("blacksmith")
  .setShapeless([<nibrockscoal:iron_coal>, iron])
  .setFluid(lava * 1000)
  .addTool(hammer, 8)
  .addTool(cutters, 8)
  .addOutput(<thermalfoundation:material:96>*2)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/thermal_technology"]))
  .setName("steel_nibrock_lava")
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([<nibrockscoal:iron_coal>, iron])
  .setFluid(pyrotheum * 125)
  .addTool(hammer, 8)
  .addTool(cutters, 8)
  .addOutput(<thermalfoundation:material:96>*2)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/thermal_technology"]))
  .setName("steel_nibrock")
  .create();

	// Alchemistry versions
RecipeBuilder.get("blacksmith")
  .setShapeless([iron])
  .setSecondaryIngredients([carbon_e*16])
  .setFluid(lava * 1000)
  .addTool(hammer, 16)
  .addTool(cutters, 12)
  .addOutput(<thermalfoundation:material:96>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/thermal_technology"]))
  .setName("steel_carbon_lava")
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([iron])
  .setSecondaryIngredients([carbon_e*16])
  .setFluid(pyrotheum * 250)
  .addTool(hammer, 16)
  .addTool(cutters, 12)
  .addOutput(<thermalfoundation:material:96>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/thermal_technology"]))
  .setName("steel_carbon")
  .create();



# New recipes for Pristeel items
# Durability is 5x the material cost
recipes.remove(<pristeel:pristeel_pickaxe>);
recipes.remove(<pristeel:pristeel_shovel>);
recipes.remove(<pristeel:pristeel_sword>);
recipes.remove(<pristeel:pristeel_hoe>);
recipes.remove(<pristeel:pristeel_axe>);

recipes.remove(<pristeel:pristeel_helmet>);
recipes.remove(<pristeel:pristeel_chestplate>);
recipes.remove(<pristeel:pristeel_legs>);
recipes.remove(<pristeel:pristeel_boots>);

var stick = <ore:stickWood>;
var pristeel = <pristeel:pristeel_ingot>;
var pris_shard = <minecraft:prismarine_shard>;
var pris_crystal = <minecraft:prismarine_crystals>;

// Pristeel Ingots
recipes.removeShapeless(pristeel);
recipes.addShapeless(pristeel*9, [<pristeel:pristeel_block>]);

RecipeBuilder.get("blacksmith")
  .setShapeless([iron, iron, iron, pris_shard, pris_shard, pris_shard])
  .addTool(hammer, 15)
  .addTool(cutters, 10)
  .addOutput(pristeel*6)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
  .setName("pristeel_ingot")
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([iron, pris_crystal])
  .addTool(hammer, 12)
  .addTool(cutters, 7)
  .addOutput(pristeel)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
  .setName("pristeel_ingot_crystals")
  .create();

// Sword
RecipeBuilder.get("blacksmith")
  .setShaped([
    [pristeel],
    [pristeel],
    [stick]])
  .addTool(hammer, 10)
  .addOutput(<pristeel:pristeel_sword>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
  .setName("pristeel_sword")
  .create();

// Pickaxe
RecipeBuilder.get("blacksmith")
  .setShaped([
    [pristeel, pristeel, pristeel],
    [null, stick, null],
    [null, stick, null]])
  .addTool(hammer, 15)
  .addOutput(<pristeel:pristeel_pickaxe>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
  .setName("pristeel_pickaxe")
  .create();

// Shovel
RecipeBuilder.get("blacksmith")
  .setShaped([
    [pristeel],
    [stick],
    [stick]])
  .addTool(cutters, 5)
  .addOutput(<pristeel:pristeel_shovel>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
  .setName("pristeel_shovel")
  .create();

// Hoe
// Backwards cuz the sprite is too lol
RecipeBuilder.get("blacksmith")
  .setShaped([
    [pristeel, pristeel],
    [stick, null],
    [stick, null]])
  .addTool(cutters, 10)
  .addOutput(<pristeel:pristeel_hoe>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
  .setName("pristeel_hoe")
  .setMirrored()
  .create();

// Axe
RecipeBuilder.get("blacksmith")
  .setShaped([
    [pristeel, pristeel],
    [stick, pristeel],
    [stick, null]])
  .addTool(hammer, 15)
  .addOutput(<pristeel:pristeel_axe>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
  .setName("pristeel_axe")
  .setMirrored()
  .create();

// Dagger
RecipeBuilder.get("blacksmith")
  .setShaped([
    [pristeel],
    [stick]])
  .addTool(cutters, 3)
  .addOutput(<pristeel:pristeel_dagger>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
  .setName("pristeel_dagger")
  .create();

		# Armour
		# Cutter cost is 5 less than the hammer's
// Helmet
RecipeBuilder.get("blacksmith")
  .setShaped([
    [pristeel, pristeel, pristeel],
    [pristeel, null, pristeel]])
  .addTool(hammer, 15)
  .addTool(cutters, 10)
  .addOutput(<pristeel:pristeel_helmet>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
  .setName("pristeel_helmet")
  .create();

// Chestplate
RecipeBuilder.get("blacksmith")
  .setShaped([
    [pristeel, null, pristeel],
    [pristeel, pristeel, pristeel],
    [pristeel, pristeel, pristeel]])
  .addTool(hammer, 40)
  .addTool(cutters, 35)
  .addOutput(<pristeel:pristeel_chestplate>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
  .setName("pristeel_chestplate")
  .create();

// Leggings
RecipeBuilder.get("blacksmith")
  .setShaped([
    [pristeel, pristeel, pristeel],
    [pristeel, null, pristeel],
    [pristeel, null, pristeel]])
  .addTool(hammer, 35)
  .addTool(cutters, 30)
  .addOutput(<pristeel:pristeel_legs>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
  .setName("pristeel_leggings")
  .create();

// Boots
RecipeBuilder.get("blacksmith")
  .setShaped([
    [pristeel, null, pristeel],
    [pristeel, null, pristeel]])
  .addTool(hammer, 20)
  .addTool(cutters, 15)
  .addOutput(<pristeel:pristeel_boots>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
  .setName("pristeel_boots")
  .create();

print("blacksmith.zs loaded");