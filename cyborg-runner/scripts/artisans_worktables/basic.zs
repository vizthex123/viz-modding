# Adds recipes to the Basic Worktables

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.FTGU;

print("basic.zs loading...");

/*
https://artisan-worktables.readthedocs.io/en/latest/recipes/gettingstarted/
https://artisan-worktables.readthedocs.io/en/latest/recipes/tools/
https://artisan-worktables.readthedocs.io/en/latest/recipes/basic/
*/

val stone = <ore:stone>;
val cobblestone = <ore:cobblestone>;
var wood = <ore:plankWood>;
val stick = <ore:stickWood>;

val iron = <minecraft:iron_ingot>;
val redstone = <minecraft:redstone>;
val electrotine = <projectred-core:resource_item:105>;
var basic_circuit = <ore:circuitBasic>;


var hammer = <ore:artisansHammer>;
var cutters = <ore:artisansCutters>;

var handsaw = <ore:artisansHandsaw>;
var chisel = <ore:artisansChisel>;

var solderer = <ore:artisansSolderer>;

# Replacement Robosurgeons and Surgery Chambers
recipes.remove(<cyberware:surgery_chamber>);

RecipeBuilder.get("basic")
  .setShaped([
    [basic_circuit, iron, basic_circuit],
    [iron, <ore:blockElectrotine>, iron],
    [basic_circuit, iron, basic_circuit]])
  .addTool(solderer, 25)
  .addOutput(<cyberware:surgery>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:technology/technology"]))
  .setName("robosurgeon")
  .create();
  
RecipeBuilder.get("basic")
  .setShapeless([<cyberware:surgery>])
  .addTool(cutters, 35)
  .addOutput(iron*4)
  .setExtraOutputOne(<dse:components:10>*4, 1.0)
  .setExtraOutputTwo(electrotine*9, 1.0)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/recycling", "cyborg:technology/technology"]))
  .setName("robosurgeon_recycle")
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [iron, basic_circuit, iron],
    [iron, <extrautils2:compressedcobblestone:1>, iron],
    [iron, iron, iron]])
  .addTool(cutters, 25)
  .addOutput(<cyberware:surgery_chamber>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:technology/technology"]))
  .setName("surgery_chamber")
  .create();


// Miner's Ring
RecipeBuilder.get("basic")
  .setShaped([
    [<byg:chainplating>, <byg:chainplating>, <byg:chainplating>],
    [<byg:chainplating>, redstone|electrotine, <byg:chainplating>],
    [<byg:chainplating>, <byg:chainplating>, <byg:chainplating>]])
  .addTool(cutters, 16)
  .addOutput(<baubles:ring>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .setName("miners_ring")
  .create();


// Piston with Electrotine
RecipeBuilder.get("basic")
  .setShaped([
    [wood, wood, wood],
    [cobblestone, iron, cobblestone],
    [cobblestone, electrotine, cobblestone]])
  .addTool(chisel, 8)
  .addOutput(<minecraft:piston>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:technology/technology"]))
  .setName("piston_electrotine")
  .create();

// Machine Blocks with Electrotine
RecipeBuilder.get("basic")
  .setShaped([
    [iron, electrotine, iron],
    [electrotine, <ore:chestWood>, electrotine],
    [iron, electrotine, iron]])
  .addTool(chisel, 16)
  .addOutput(<extrautils2:machine>*4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:technology/technology"]))
  .setName("machine_block_electrotine")
  .create();

// Redstone Gear with Electrotine
RecipeBuilder.get("basic")
  .setShaped([
    [stick, electrotine, stick],
    [electrotine, null, electrotine],
    [stick, electrotine, stick]])
  .addTool(handsaw, 4)
  .addOutput(<extrautils2:ingredients:1>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:technology/technology"]))
  .setName("redstone_gear_electrotine")
  .create();

// Redstone Servo with Electrotine
RecipeBuilder.get("basic")
  .setShaped([
    [null, electrotine, null],
    [electrotine, iron, electrotine],
    [null, electrotine, null]])
  .addTool(solderer, 6)
  .addOutput(<thermalfoundation:material:512>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:technology/thermal_technology"]))
  .setName("redstone_servo_electrotine")
  .create();

// Prismarine Shard & Crystal Conversions
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:prismarine_crystals>, <minecraft:prismarine_crystals>],
    [<minecraft:prismarine_crystals>, <minecraft:prismarine_crystals>]])
  .addTool(chisel, 8)
  .addOutput(<minecraft:prismarine_shard>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .setName("prismarine_shard")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<minecraft:prismarine_shard>])
  .addTool(chisel, 2)
  .addOutput(<minecraft:prismarine_crystals>*4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .setName("prismarine_crystals")
  .create();

// Make Translocators the second form of item/fluid transport (after hoppers)
recipes.remove(<translocators:translocator_part>);
recipes.remove(<translocators:translocator_part:1>);

RecipeBuilder.get("basic")
  .setShapeless([basic_circuit, <minecraft:hopper>, redstone|electrotine])
  .addTool(solderer, 50)
  .addOutput(<translocators:translocator_part>*2)
  .setName("translocator")
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:technology/technology"]))
  .create();

RecipeBuilder.get("basic")
  .setShapeless([basic_circuit, <wopper:wopper>, <wopper:wopper>, <wopper:wopper>, redstone|electrotine])
  .addTool(solderer, 50)
  .addOutput(<translocators:translocator_part>*2)
  .setName("translocator_wooden")
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:technology/technology"]))
  .create();

RecipeBuilder.get("basic")
  .setShapeless([basic_circuit, <minecraft:bucket>, <ore:gemLapis>, redstone|electrotine])
  .addTool(solderer, 50)
  .addOutput(<translocators:translocator_part:1>*2)
  .setName("fluid_translocator")
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:technology/technology"]))
  .create();

RecipeBuilder.get("basic")
  .setShapeless([basic_circuit, <ceramics:clay_bucket>|<glacidus:underground_bucket>, <ceramics:clay_bucket>|<glacidus:underground_bucket>, <ceramics:clay_bucket>|<glacidus:underground_bucket>, <ore:gemLapis>, redstone|electrotine])
  .addTool(solderer, 50)
  .addOutput(<translocators:translocator_part:1>*2)
  .setName("fluid_translocator_clay")
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:technology/technology"]))
  .create();

// Compactor
recipes.remove(<compacter:compacter>);
RecipeBuilder.get("basic")
  .setShapeless([<extrautils2:analogcrafter>, <ore:chest>, redstone|electrotine, redstone|electrotine, redstone|electrotine])
  .addTool(handsaw, 50)
  .addOutput(<compacter:compacter>)
  .setName("compactor")
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:technology/technology"]))
  .create();

// Convert Bitumen to Mini (Char)coal
RecipeBuilder.get("basic")
  .setShapeless([<thermalfoundation:material:892>])
  .addTool(hammer, 2)
  .addOutput(<minicoal:minicoal> * 8)
  .setExtraOutputOne(<minicoal:minicharcoal> * 8, 1.0)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/basic", "cyborg:technology/thermal_technology"]))
  .setName("bitumen_to_mini_coal")
  .create();

// Fix the unfired faucet conflict with Clay Buckets
recipes.remove(<ceramics:unfired_clay:6>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ceramics:unfired_clay:4>, null, <ceramics:unfired_clay:4>],
    [null, <ceramics:unfired_clay:4>, null]])
  .addTool(chisel, 3)
  .addOutput(<ceramics:unfired_clay:6>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:technology/ceramics"]))
  .setName("unfired_faucet_fix")
  .create();

// Change Respawn Obelisk recipe
recipes.remove(<natura:respawn_obelisk>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:logWood>, <ore:logWood>, <ore:logWood>],
    [<ore:logWood>, electrotine, <ore:logWood>],
    [stone, stone, stone]])
  .addTool(chisel, 15)
  .addOutput(<natura:respawn_obelisk>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .setName("respawn_obelisk")
  .create();



# New recipes for Nether Quartz tools
recipes.remove(<natura:netherquartz_sword>);
recipes.remove(<natura:netherquartz_pickaxe>);
recipes.remove(<natura:netherquartz_shovel>);
recipes.remove(<natura:netherquartz_kama>);
recipes.remove(<natura:netherquartz_axe>);

val quartz = <ore:gemQuartz>;

// Sword
RecipeBuilder.get("basic")
  .setShaped([
    [quartz],
    [quartz],
    [stick]])
  .addTool(cutters, 15)
  .addOutput(<natura:netherquartz_sword>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .setName("nether_quartz_sword")
  .create();

// Pickaxe
RecipeBuilder.get("basic")
  .setShaped([
    [quartz, quartz, quartz],
    [null, stick, null],
    [null, stick, null]])
  .addTool(cutters, 15)
  .addOutput(<natura:netherquartz_pickaxe>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .setName("nether_quartz_pickaxe")
  .create();

// Shovel
RecipeBuilder.get("basic")
  .setShaped([
    [quartz],
    [stick],
    [stick]])
  .addTool(cutters, 15)
  .addOutput(<natura:netherquartz_shovel>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .setName("nether_quartz_shovel")
  .create();

// Kama
RecipeBuilder.get("basic")
  .setShaped([
    [quartz, quartz],
    [null, stick],
    [null, stick]])
  .addTool(cutters, 15)
  .addOutput(<natura:netherquartz_kama>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .setName("nether_quartz_kama")
  .setMirrored()
  .create();

// Axe
RecipeBuilder.get("basic")
  .setShaped([
    [quartz, quartz],
    [quartz, stick],
    [null, stick]])
  .addTool(cutters, 15)
  .addOutput(<natura:netherquartz_axe>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .setName("nether_quartz_axe")
  .setMirrored()
  .create();

print("basic.zs loaded");