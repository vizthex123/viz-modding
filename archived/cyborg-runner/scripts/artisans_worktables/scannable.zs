# Changes recipes for Scannable's items

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.FTGU;

print("scannable.zs  loading...");

recipes.remove(<scannable:scanner>);

recipes.remove(<scannable:module_blank>);
recipes.remove(<scannable:module_range>);
recipes.remove(<scannable:module_animal>);
recipes.remove(<scannable:module_monster>);
recipes.remove(<scannable:module_ore_common>);
recipes.remove(<scannable:module_ore_rare>);
recipes.remove(<scannable:module_block>);
recipes.remove(<scannable:module_structure>);
recipes.remove(<scannable:module_fluid>);
recipes.remove(<scannable:module_entity>);

var tin = <ore:ingotTin>;
var redstone = <minecraft:redstone>;
var electrotine = <projectred-core:resource_item:105>;

var blank_module = <scannable:module_blank>;
var porcelain = <ceramics:unfired_clay:5>;


var pliers = <ore:artisansPliers>;
var solderer = <ore:artisansSolderer>;


// Scanner
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <ore:circuitBasic>, null],
    [redstone, tin, redstone],
    [redstone, tin, redstone]])
  .addTool(pliers, 25)
  .addTool(solderer, 15)
  .addOutput(<scannable:scanner>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:survival/scanning"]))
  .setName("scanner")
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [null, <ore:circuitAdvanced>, null],
    [electrotine, tin, electrotine],
    [electrotine, tin, electrotine]])
  .addTool(pliers, 35)
  .addTool(solderer, 25)
  .addOutput(<scannable:scanner>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:survival/scanning"]))
  .setName("scanner_electrotine")
  .create();

// Blank Module
RecipeBuilder.get("engineer")
  .setShapeless([porcelain, porcelain, redstone|electrotine, redstone|electrotine])
  .addTool(pliers, 5)
  .addOutput(blank_module)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/engineering", "cyborg:survival/scanning"]))
  .setName("blank_module")
  .create();

// Range Module
RecipeBuilder.get("engineer")
  .setShapeless([blank_module, <ore:circuitBasic>])
  .addTool(solderer, 15)
  .addOutput(<scannable:module_range>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:survival/scanning"]))
  .setName("range_module")
  .create();

RecipeBuilder.get("engineer")
  .setShapeless([blank_module, <contenttweaker:melon_circuit>, <contenttweaker:melon_circuit>])
  .addTool(solderer, 30)
  .addOutput(<scannable:module_range>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:survival/scanning"]))
  .setName("range_module_diy")
  .create();

// Animal Module
RecipeBuilder.get("engineer")
  .setShapeless([blank_module, <ore:leather>, <ore:feather>])
  .addOutput(<scannable:module_animal>)
    .addTool(solderer, 5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:survival/scanning"]))
  .setName("animal_module")
  .create();

// Monster Module
RecipeBuilder.get("engineer")
  .setShapeless([blank_module, <contenttweaker:wrapped_bone>, <contenttweaker:wrapped_bone>, <contenttweaker:wrapped_bone>])
  .addOutput(<scannable:module_monster>)
    .addTool(solderer, 7)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:survival/scanning"]))
  .setName("monster_module")
  .create();

// Common Ore Module
RecipeBuilder.get("engineer")
  .setShapeless([blank_module, <minecraft:coal>|<cm:crimson_coal>|redstone])
  .addTool(solderer, 15)
  .addOutput(<scannable:module_ore_common>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:survival/scanning"]))
  .setName("common_ore_module")
  .create();

// Rare Ore Module
RecipeBuilder.get("engineer")
  .setShapeless([blank_module, <glacidus:glacidite_fragment>|<glacidus:small_crystal>|<ore:gemDamond>|<ore:gemRuby>|<ore:gemPeridot>|<ore:gemSapphire>|<contenttweaker:pulsaton_sliver>|electrotine])
  .addTool(solderer, 50)
  .addOutput(<scannable:module_ore_rare>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:survival/scanning"]))
  .setName("rare_ore_module")
  .create();

// Block Module
RecipeBuilder.get("engineer")
  .setShapeless([blank_module, <ore:stone>])
  .addTool(solderer, 5)
  .addOutput(<scannable:module_block>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:survival/scanning"]))
  .setName("block_module")
  .create();

// Fluid Module
RecipeBuilder.get("engineer")
  .setShapeless([blank_module, <minecraft:bucket>])
  .addTool(solderer, 3)
  .addOutput(<scannable:module_fluid>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:survival/scanning"]))
  .setName("fluid_module")
  .create();

RecipeBuilder.get("engineer")
  .setShapeless([blank_module, <ceramics:clay_bucket>|<glacidus:underground_bucket>, <ceramics:clay_bucket>|<glacidus:underground_bucket>, <ceramics:clay_bucket>|<glacidus:underground_bucket>])
  .addTool(solderer, 12)
  .addOutput(<scannable:module_fluid>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:survival/scanning"]))
  .setName("fluid_module_clay")
  .create();

// Structure Module
RecipeBuilder.get("engineer")
  .setShapeless([blank_module, <minecraft:book>])
  .addTool(solderer, 6)
  .addOutput(<scannable:module_structure>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:survival/scanning"]))
  .setName("structure_module")
  .create();

// Entity Module
RecipeBuilder.get("engineer")
  .setShapeless([blank_module, <glacidus:residuum>, <glacidus:residuum>])
  .addTool(solderer, 5)
  .addOutput(<scannable:module_entity>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:survival/scanning"]))
  .setName("entity_module")
  .create();

print("scannable.zs loaded");