# Changes recipes for Furnace Overhaul's items

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.FTGU;

print("furnace_overhaul.zs loading...");

var iron = <minecraft:iron_ingot>;
var diamond = <minecraft:diamond>;
var pris_shard = <minecraft:prismarine_shard>;

var stone = <ore:cobblestone>;
var glass = <ore:blockGlass>;


var cutters = <ore:artisansCutters>;
var gemcutter = <ore:artisansGemCutter>;
var spanner = <ore:artisansSpanner>;

// Blank Kit
recipes.remove(<furnaceoverhaul:blank_kit>);
RecipeBuilder.get("basic")
  .setShaped([
    [stone, stone, stone],
    [stone, <minecraft:flint>, stone],
    [stone, stone, stone]])
  .addOutput(<furnaceoverhaul:blank_kit>)
  .addTool(cutters, 30)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .setName("blank_kit")
  .create();



# New Furnace recipes
recipes.remove(<furnaceoverhaul:gold_furnace>);
recipes.remove(<furnaceoverhaul:diamond_furnace>);
recipes.remove(<furnaceoverhaul:emerald_furnace>);
recipes.remove(<furnaceoverhaul:end_furnace>);

recipes.remove(<furnaceoverhaul:iron_kit>);
recipes.remove(<furnaceoverhaul:gold_kit>);
recipes.remove(<furnaceoverhaul:diamond_kit>);
recipes.remove(<furnaceoverhaul:emerald_kit>);
recipes.remove(<furnaceoverhaul:end_kit>);

// Iron Furnace
recipes.remove(<furnaceoverhaul:iron_furnace>);
RecipeBuilder.get("basic")
  .setShaped([
    [iron, iron, iron],
    [iron, <minecraft:furnace>, iron],
    [iron, iron, iron]])
  .addOutput(<furnaceoverhaul:iron_furnace>)
  .addTool(cutters, 25)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/improved_smelting"]))
  .setName("iron_furnace")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<minecraft:furnace>, <furnaceoverhaul:iron_kit>])
  .addTool(cutters, 10)
  .addOutput(<furnaceoverhaul:iron_furnace>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/improved_smelting"]))
  .setName("iron_furnace_upgrade")
  .create();

	// Kit
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:bone>, iron, <minecraft:bone>],
    [iron, <furnaceoverhaul:blank_kit>, iron],
    [<minecraft:bone>, iron, <minecraft:bone>]])
  .addOutput(<furnaceoverhaul:iron_kit>)
  .addTool(cutters, 10)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/improved_smelting"]))
  .setName("iron_kit")
  .create();

// Gold Furnace
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <furnaceoverhaul:iron_furnace>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]])
  .addOutput(<furnaceoverhaul:gold_furnace>)
  .addTool(cutters, 35)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:crafting/better_smelting"]))
  .setName("gold_furnace")
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([<furnaceoverhaul:iron_furnace>, <furnaceoverhaul:gold_kit>])
  .addTool(cutters, 15)
  .addOutput(<furnaceoverhaul:gold_furnace>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:crafting/better_smelting"]))
  .setName("gold_furnace_upgrade")
  .create();

	// Kit
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<minecraft:flint>, <minecraft:gold_ingot>, <minecraft:flint>],
    [<minecraft:gold_ingot>, <furnaceoverhaul:blank_kit>, <minecraft:gold_ingot>],
    [<minecraft:flint>, <minecraft:gold_ingot>, <minecraft:flint>]])
  .addOutput(<furnaceoverhaul:gold_kit>)
  .addTool(cutters, 20)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:crafting/better_smelting"]))
  .setName("gold_kit")
  .create();



// Diamond Furnace
RecipeBuilder.get("jeweler")
  .setShaped([
    [diamond, glass, diamond],
    [glass, <furnaceoverhaul:gold_furnace>, glass],
    [diamond, glass, diamond]])
  .addOutput(<furnaceoverhaul:diamond_furnace>)
  .addTool(gemcutter, 50)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler", "cyborg:crafting/enhanced_smelting"]))
  .setName("diamond_furnace")
  .create();

RecipeBuilder.get("jeweler")
  .setShapeless([<furnaceoverhaul:gold_furnace>, <furnaceoverhaul:diamond_kit>])
  .addTool(gemcutter, 20)
  .addOutput(<furnaceoverhaul:diamond_furnace>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler", "cyborg:crafting/enhanced_smelting"]))
  .setName("diamond_furnace_upgrade")
  .create();

	// Kit
RecipeBuilder.get("jeweler")
  .setShaped([
    [pris_shard, diamond, pris_shard],
    [diamond, <furnaceoverhaul:blank_kit>, diamond],
    [pris_shard, diamond, pris_shard]])
  .addOutput(<furnaceoverhaul:diamond_kit>)
  .addTool(gemcutter, 35)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler", "cyborg:crafting/enhanced_smelting"]))
  .setName("diamond_kit")
  .create();



// Emerald Furnace
RecipeBuilder.get("jeweler")
  .setShaped([
    [<minecraft:emerald>, <minecraft:emerald>, <minecraft:emerald>],
    [<minecraft:emerald>, <furnaceoverhaul:diamond_furnace>, <minecraft:emerald>],
    [<minecraft:emerald>, <minecraft:emerald>, <minecraft:emerald>]])
  .addOutput(<furnaceoverhaul:emerald_furnace>)
  .addTool(gemcutter, 75)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler", "cyborg:crafting/enhanced_smelting"]))
  .setName("emerald_furnace")
  .create();

RecipeBuilder.get("jeweler")
  .setShapeless([<furnaceoverhaul:diamond_furnace>, <furnaceoverhaul:emerald_kit>])
  .addTool(gemcutter, 30)
  .addOutput(<furnaceoverhaul:emerald_furnace>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler", "cyborg:crafting/enhanced_smelting"]))
  .setName("emerald_furnace_upgrade")
  .create();

	// Kit
RecipeBuilder.get("jeweler")
  .setShaped([
    [pris_shard, <minecraft:emerald>, pris_shard],
    [<minecraft:emerald>, <furnaceoverhaul:blank_kit>, <minecraft:emerald>],
    [pris_shard, <minecraft:emerald>, pris_shard]])
  .addOutput(<furnaceoverhaul:emerald_kit>)
  .addTool(gemcutter, 50)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler", "cyborg:crafting/enhanced_smelting"]))
  .setName("emerald_kit")
  .create();


// End Furnace
RecipeBuilder.get("chemist")
  .setShaped([
    [<alchemistry:ingot:90>|<alchemistry:ingot:101>, <ore:endstone>, <alchemistry:ingot:90>|<alchemistry:ingot:101>],
    [<ore:endstone>, <furnaceoverhaul:emerald_furnace>, <ore:endstone>],
    [<alchemistry:ingot:90>|<alchemistry:ingot:101>, <ore:endstone>, <alchemistry:ingot:90>|<alchemistry:ingot:101>]])
  .addOutput(<furnaceoverhaul:end_furnace>)
  .addTool(spanner, 100)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:crafting/ultimate_smelting"]))
  .setName("end_furnace")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<furnaceoverhaul:emerald_furnace>, <furnaceoverhaul:end_kit>])
  .addTool(spanner, 50)
  .addOutput(<furnaceoverhaul:end_furnace>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:crafting/ultimate_smelting"]))
  .setName("end_furnace_upgrade")
  .create();

	// Kit
RecipeBuilder.get("chemist")
  .setShaped([
    [<alchemistry:element:60>, <minecraft:emerald>, <alchemistry:element:60>],
    [<minecraft:emerald>, <furnaceoverhaul:blank_kit>, <minecraft:emerald>],
    [<alchemistry:element:60>, <minecraft:emerald>, <alchemistry:element:60>]])
  .addOutput(<furnaceoverhaul:end_kit>)
  .addTool(spanner, 75)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:crafting/ultimate_smelting"]))
  .setName("end_kit")
  .create();

print("furnace_overhaul.zs loaded");