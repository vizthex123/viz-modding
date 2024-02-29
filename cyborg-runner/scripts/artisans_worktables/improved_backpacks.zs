# Changes recipes for Improved Backpacks

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.FTGU;

print("improved_backpacks.zs loading...");

var spider_string = <ore:string>;
var leather = <minecraft:leather>;
var bound_leather = <improvedbackpacks:bound_leather>;
var tanned_leather = <improvedbackpacks:tanned_leather>;

var cutters = <ore:artisansCutters>;
var knife = <ore:artisansKnife>;

var handsaw = <ore:artisansHandsaw>;
var file = <ore:artisansFile>;

// Bound Leather
recipes.remove(bound_leather);
RecipeBuilder.get("basic")
  .setShaped([
    [null, leather, null],
    [leather, spider_string, leather],
    [null, leather, null]])
  .addTool(cutters, 10)
  .addTool(knife, 20)
  .addOutput(bound_leather * 2)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:survival/backpacks"]))
  .setName("bound_leather")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<ore:leather>, <ore:leather>, <alchemistry:element:24>, spider_string])
  .setFluid(<liquid:water> * 500)
  .addTool(knife, 10)
  .addOutput(bound_leather * 4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:survival/backpacks"]))
  .setName("bound_leather_chromium")
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [null, <glacidus:merialces_hide>, null],
    [<glacidus:merialces_hide>, spider_string, <glacidus:merialces_hide>],
    [null, <glacidus:merialces_hide>, null]])
  .setFluid(<liquid:pyrotheum> * 50)
  .addTool(cutters, 20)
  .addTool(knife, 30)
  .addOutput(bound_leather * 16)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:survival/backpacks"]))
  .setName("bound_leather_merialces")
  .create();

// Backpack
recipes.remove(<improvedbackpacks:backpack>);
RecipeBuilder.get("basic")
  .setShaped([
    [spider_string, tanned_leather, spider_string],
    [tanned_leather, <ore:chestWood>, tanned_leather],
    [spider_string, tanned_leather, spider_string]])
  .addTool(cutters, 30)
  .addOutput(<improvedbackpacks:backpack>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:survival/backpacks"]))
  .setName("backpack")
  .create();


// Blank Upgrade (Backpacks)
recipes.remove(<improvedbackpacks:blank_upgrade>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:rodStone>, spider_string, <ore:rodStone>],
    [spider_string, <ore:logWood>, spider_string],
    [<ore:rodStone>, spider_string, <ore:rodStone>]])
  .addTool(handsaw, 4)
  .addOutput(<improvedbackpacks:blank_upgrade>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry", "cyborg:survival/backpacks"]))
  .setName("blank_upgrade")
  .create();

// Wooden Storage Upgrade (Backpacks)
recipes.remove(<improvedbackpacks:upgrade>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [tanned_leather, tanned_leather, tanned_leather],
    [<ore:logWood>, <improvedbackpacks:blank_upgrade>, <ore:logWood>],
    [null, <ore:logWood>, null]])
  .addTool(handsaw, 18)
  .addOutput(<improvedbackpacks:upgrade>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry", "cyborg:survival/backpacks"]))
  .setName("wooden_upgrade")
  .create();

// Stone Storage Upgrade (Backpacks)
recipes.remove(<improvedbackpacks:upgrade:1>);
RecipeBuilder.get("mason")
  .setShaped([
    [tanned_leather, tanned_leather, tanned_leather],
    [<ore:cobblestone>, <improvedbackpacks:upgrade>, <ore:cobblestone>],
    [null, <ore:cobblestone>, null]])
  .addTool(file, 36)
  .addOutput(<improvedbackpacks:upgrade:1>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry", "cyborg:survival/backpacks"]))
  .setName("stone_upgrade")
  .create();

print("improved_backpacks.zs loaded");