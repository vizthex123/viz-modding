# Adds recipes to the basic worktable/station/shop

import mods.artisanintegrations.requirement.FTGU;
import mods.artisanworktables.builder.RecipeBuilder;

print("basic.zs loading...");
/*
Regular table recipes & tooltips & such are in artisan_worktables.zs

https://artisan-worktables.readthedocs.io/en/latest/recipes/gettingstarted/
https://artisan-worktables.readthedocs.io/en/latest/recipes/tools/
https://artisan-worktables.readthedocs.io/en/latest/recipes/basic/
*/

// Filter Water to get Iron/Gold
RecipeBuilder.get("basic")
  .setShapeless([<claybucket:claybucket:1>])
  .addTool(<ore:strainer>, 10)
  .addOutput(<claybucket:claybucket>)
  .setExtraOutputOne(<minecraft:gold_nugget>, 0.05)
  .setExtraOutputTwo(<minecraft:iron_nugget>, 0.01)
  .setName("filter_water_clay")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<minecraft:water_bucket>])
  .addTool(<ore:strainer>, 10)
  .addOutput(<minecraft:bucket>)
  .setExtraOutputOne(<minecraft:gold_nugget>, 0.05)
  .setExtraOutputTwo(<minecraft:iron_nugget>, 0.01)
  .setName("filter_water")
  .create();


RecipeBuilder.get("basic")
  .setShapeless([<claybucket:claybucket:1>])
  .addTool(<ore:strainerDense>, 5)
  .addOutput(<claybucket:claybucket>)
  .setExtraOutputOne(<minecraft:gold_nugget>, 0.07)
  .setExtraOutputTwo(<minecraft:iron_nugget>, 0.03)
  .setName("filter_water_clay_dense")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<minecraft:water_bucket>])
  .addTool(<ore:strainerDense>, 5)
  .addOutput(<minecraft:bucket>)
  .setExtraOutputOne(<minecraft:gold_nugget>, 0.07)
  .setExtraOutputTwo(<minecraft:iron_nugget>, 0.03)
  .setName("filter_water_dense")
  .create();

// Better Wood > Planks recipes (double output)
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:log>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<minecraft:planks>*8)
  .setName("oak_to_planks")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<minecraft:log:1>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<minecraft:planks:1>*8)
  .setName("spruce_to_planks")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<minecraft:log:2>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<minecraft:planks:2>*8)
  .setName("birch_to_planks")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<minecraft:log:3>])
  .addTool(<ore:artisansHandsaw>, 5)
  .addOutput(<minecraft:planks:3>*8)
  .setName("jungle_to_planks")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<minecraft:log2>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<minecraft:planks:4>*8)
  .setName("acacia_to_planks")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<minecraft:log2:1>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<minecraft:planks:5>*8)
  .setName("dark_oak_to_planks")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<treasure2:wither_log>])
  .addTool(<ore:artisansHandsaw>, 6)
  .addOutput(<treasure2:wither_planks>*8)
  .setName("wither_to_planks")
  .create();

// Wool
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:string>, <ore:string>, <ore:string>],
    [<ore:string>, <ore:string>, <ore:string>],
    [<ore:string>, <ore:string>, <ore:string>]])
  .addTool(<ore:artisansNeedle>, 18)
  .addOutput(<minecraft:wool>)
  .setName("basic_wool")
  .create();

// Strainer Base
recipes.remove(<waterstrainer:strainer_base>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
    [<ore:plankWood>, null, <ore:plankWood>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
  .addTool(<ore:artisansHandsaw>, 10)
  .addOutput(<waterstrainer:strainer_base>)
  .addRequirement(FTGU.allOf(["adrift:survival/survival"]))
  .setName("strainer_base")
  .create();

// Floater
recipes.remove(<davincisvessels:floater>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:logWood>, <ore:wool>, null],
    [<ore:wool>, <ore:logWood>, null],
    [null, null, <ore:string>]])
  .addTool(<ore:artisansHandsaw>, 8)
  .addOutput(<davincisvessels:floater> * 4)
  .addRequirement(FTGU.allOf(["adrift:survival/survival"]))
  .setName("floater")
  .setMirrored()
  .create();

// Sandwich Station
recipes.remove(<culinaryconstruct:sandwich_station>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:artisansCuttingBoard>],
    [<ore:slabWood>],
    [<ore:craftingTableWood>]])
  .addTool(<ore:artisansHandsaw>, 20)
  .addOutput(<culinaryconstruct:sandwich_station>)
  .addRequirement(FTGU.allOf(["adrift:survival/cooking"]))
  .setName("sandwich_station")
  .create();

### From the Ground Up Content
# Idea Table is in misc.zs
recipes.remove(<ftgumod:research_table>);
recipes.remove(<ftgumod:parchment_empty>);
recipes.remove(<ftgumod:magnifying_glass>);

	// Parchment
RecipeBuilder.get("scribe")
  .setShaped([
    [<ore:paper>, <ore:paper>, <ore:paper>],
    [<ore:paper>, <ore:paper>, <ore:paper>],
    [<ore:paper>, <ore:paper>, <ore:paper>]])
  .setFluid(<liquid:water>*1000)
  .addTool(<ore:artisansQuill>, 18)
  .addOutput(<ftgumod:parchment_empty>*3)
  .addRequirement(FTGU.allOf(["adrift:survival/scribe"]))
  .setName("parchment")
  .create();

	// Research Table
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
    [<ore:cobblestone>, <ore:workbench>, <ore:cobblestone>],
    [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]])
  .addTool(<ore:artisansCarver>, 50)
  .addOutput(<ftgumod:research_table>)
  .setName("research_table")
  .create();

	// Magnifying Glass
RecipeBuilder.get("basic")
  .setShaped([
    [null, <ore:nuggetGold>, null],
    [<ore:nuggetGold>, <ore:blockGlass>, <ore:nuggetGold>],
    [<ore:stickWood>, <ore:nuggetGold>, null]])
  .addTool(<ore:artisansCarver>, 5)
  .addOutput(<ftgumod:magnifying_glass>)
  .addRequirement(FTGU.allOf(["adrift:survival/survival"]))
  .setName("magnifying_glass")
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [null, <ore:nuggetGold>, null],
    [<ore:nuggetGold>, <ore:paneGlass>, <ore:nuggetGold>],
    [<ore:stickWood>, <ore:nuggetGold>, null]])
  .addTool(<ore:artisansCarver>, 3)
  .addOutput(<ftgumod:magnifying_glass>)
  .addRequirement(FTGU.allOf(["adrift:survival/survival"]))
  .setName("magnifying_glass_pane")
  .create();

// Dense Net
recipes.remove(<waterstrainer:net:1>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:string>, <ore:string>, <ore:string>],
    [<ore:string>, <ore:string>, <ore:string>]])
  .addTool(<ore:artisansNeedle>, 6)
  .addOutput(<waterstrainer:net:1> * 2)
  .addRequirement(FTGU.allOf(["adrift:survival/tailor"]))
  .setName("dense_net")
  .create();

RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:string>, <ore:string>, <ore:string>],
    [<ore:string>, <ore:string>, <ore:string>]])
  .addTool(<ore:artisansNeedle>, 6)
  .addOutput(<waterstrainer:net:1> * 2)
  .addRequirement(FTGU.allOf(["adrift:survival/tailor"]))
  .setName("dense_net")
  .create();

// Alt Fisherman's Net recipe
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:string>, null, <ore:string>],
    [<waterstrainer:net:1>, <better_diving:fiber_mesh>, <waterstrainer:net:1>],
    [<ore:string>, null, <ore:string>]])
  .addTool(<ore:artisansNeedle>, 16)
  .addOutput(<waterstrainer:strainer_fisherman>)
  .addRequirement(FTGU.allOf(["adrift:survival/tailor"]))
  .setName("fishermans_net")
  .create();

// Empty Fuel Canister
recipes.remove(<fuelcanister:empty_fuel_canister>);
RecipeBuilder.get("basic")
  .setShaped([
    [null, <ore:slabWood>, <ore:nuggetIron>],
    [<ore:nuggetIron>, null, <contenttweaker:iron_rod>],
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]])
  .addTool(<ore:artisansCutters>, 16)
  .addOutput(<fuelcanister:empty_fuel_canister>)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("empty_fuel_canister")
  .create();

// Fibrous String
RecipeBuilder.get("basic")
  .setShapeless([<better_diving:creepvine>, <better_diving:creepvine>, <better_diving:creepvine>])
  .addTool(<ore:artisansKnife>, 6)
  .addOutput(<contenttweaker:fibrous_string>)
  .setName("fibrous_string")
  .create();


print("basic.zs loaded");