# Adds recipes to the Mason's Worktable(s)

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.FTGU;
import mods.artisanintegrations.requirement.Reskillable;
import mods.artisanintegrations.requirement.GameStages;

print("mason.zs loading...");

/*
https://artisan-worktables.readthedocs.io/en/latest/recipes/gettingstarted/
https://artisan-worktables.readthedocs.io/en/latest/recipes/tools/
https://artisan-worktables.readthedocs.io/en/latest/recipes/basic/
*/

// Change the recipe for the Wetstone
recipes.remove(<wetstone:wetstone>);
RecipeBuilder.get("mason")
  .setShaped([
    [<ore:bars>, <ore:bricksStone>, <ore:bars>],
    [<ore:bricksStone>, <ore:bars>, <ore:bricksStone>],
    [<ore:bars>, <ore:bricksStone>, <ore:bars>]])
  .setFluid(<liquid:water> * 4000)
  .addTool(<ore:artisansChisel>, 16)
  .addOutput(<wetstone:wetstone> * 4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("wetstone")
  .create();

// Craftable Ice
RecipeBuilder.get("mason")
  .setShapeless([<ore:sand>, <ore:sand>, <ore:sand>])
  .setFluid(<liquid:water> * 3000)
  .addTool(<ore:artisansSifter>, 30)
  .addOutput(<minecraft:ice> * 3)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("ice")
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<ore:sand>, <ore:sand>, <ore:sand>, <ore:sand>, <ore:sand>, <ore:sand>, <ore:sand>, <ore:sand>, <ore:sand>])
  .setFluid(<liquid:water> * 9000)
  .addTool(<ore:artisansSifter>, 150)
  .addOutput(<minecraft:ice> * 9)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("mass_ice")
  .create();

// Soapstone > Magnesium
RecipeBuilder.get("mason")
  .setShapeless([<byg:soapstone>])
  .setFluid(<liquid:water> * 500)
  .addTool(<ore:artisansFile>, 10)
  .addOutput(<alchemistry:element:12> * 3)
  .setExtraOutputOne(<alchemistry:element:12>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("crush_soapstone")
  .create();

// Scoria > Crystals
RecipeBuilder.get("mason")
  .setShapeless([<byg:scoria>])
  .setFluid(<liquid:water> * 500)
  .addTool(<ore:artisansFile>, 15)
  .addOutput(<minecraft:prismarine_crystals> * 2)
  .setExtraOutputOne(<byg:red_crystals>, 0.5)
  .setExtraOutputTwo(<byg:red_crystals>, 0.25)
  .setExtraOutputThree(<byg:red_crystals>, 0.15)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("crush_scoria")
  .create();

// Cobble > Gravel
RecipeBuilder.get("mason")
  .setShapeless([<minecraft:cobblestone>])
  .addTool(<ore:artisansFile>, 10)
  .addOutput(<minecraft:gravel>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("crush_cobblestone")
  .create();

// Gravel > Sand
RecipeBuilder.get("mason")
  .setShapeless([<minecraft:gravel>])
  .addTool(<ore:artisansFile>, 5)
  .addOutput(<minecraft:sand>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("crush_gravel")
  .create();

// Gravel > Flint
RecipeBuilder.get("mason")
  .setShapeless([<minecraft:gravel>, <minecraft:gravel>])
  .setFluid(<liquid:water> * 500)
  .addTool(<ore:artisansSifter>, 10)
  .addOutput(<minecraft:flint>*2)
  .setExtraOutputOne(<minecraft:flint>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("crush_gravel_flint")
  .create();

// Sandstone > Sand
RecipeBuilder.get("mason")
  .setShapeless([<minecraft:sandstone>|<minecraft:sandstone:1>|<minecraft:sandstone:2>])
  .setFluid(<liquid:water> * 250)
  .addTool(<ore:artisansHammer>, 8)
  .addTool(<ore:artisansFile>, 12)
  .addOutput(<minecraft:sand> * 4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("crush_sandstone")
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<minecraft:red_sandstone>|<minecraft:red_sandstone:1>|<minecraft:red_sandstone:2>])
  .setFluid(<liquid:water> * 250)
  .addTool(<ore:artisansHammer>, 8)
  .addTool(<ore:artisansFile>, 12)
  .addOutput(<minecraft:sand:1> * 4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("crush_red_sandstone")
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<byg:whitesandstone>|<byg:whitechiseledsandstone>|<byg:whitesmoothsandstone>])
  .setFluid(<liquid:water> * 250)
  .addTool(<ore:artisansHammer>, 8)
  .addTool(<ore:artisansFile>, 12)
  .addOutput(<byg:whitesand> * 4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("crush_white_sandstone")
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<byg:blacksandstone>|<byg:blackchiseledsandstone>|<byg:blacksmoothsandstone>])
  .setFluid(<liquid:water> * 250)
  .addTool(<ore:artisansHammer>, 8)
  .addTool(<ore:artisansFile>, 12)
  .addOutput(<byg:blacksand> * 4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("crush_black_sandstone")
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<byg:light_blue_sandstone>|<byg:light_blue_chiseled_sandstone>|<byg:light_blue_smooth_sandstone>])
  .setFluid(<liquid:water> * 250)
  .addTool(<ore:artisansHammer>, 8)
  .addTool(<ore:artisansFile>, 12)
  .addOutput(<byg:light_blue_sand> * 4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("crush_light_blue_sand")
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<byg:pink_sandstone>|<byg:pink_chiseled_sandstone>|<byg:pink_smooth_sandstone>])
  .setFluid(<liquid:water> * 250)
  .addTool(<ore:artisansHammer>, 8)
  .addTool(<ore:artisansFile>, 12)
  .addOutput(<byg:pink_sand> * 4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("crush_pink_sandstone")
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<byg:purple_sandstone>|<byg:purple_chiseled_sandstone>|<byg:purple_smooth_sandstone>])
  .setFluid(<liquid:water> * 250)
  .addTool(<ore:artisansHammer>, 8)
  .addTool(<ore:artisansFile>, 12)
  .addOutput(<byg:purple_sand> * 4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("crush_purple_sandstone")
  .create();

// Sift Sandy Dirt into Sand & Dirt
RecipeBuilder.get("mason")
  .setShapeless([<byg:sandydirt>])
  .setFluid(<liquid:water> * 100)
  .addTool(<ore:artisansSifter>, 15)
  .addOutput(<minecraft:sand>)
  .setExtraOutputOne(<minecraft:dirt>, 1.0)
  .setExtraOutputTwo(<minecraft:dirt:1>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("sift_sandy_dirt")
  .create();

# Sift Sand > Dusts (of various kinds)
// Regular
RecipeBuilder.get("mason")
  .setShapeless([<minecraft:sand>|<byg:cracked_sand>])
  .setFluid(<liquid:water> * 100)
  .addTool(<ore:artisansSifter>, 10)
  .addOutput(<xlfoodmod:salt>)
  .setExtraOutputOne(<minecraft:quartz>, 0.05)
  .setExtraOutputTwo(<thermalfoundation:material:1>, 0.07)
  .setExtraOutputThree(<thermalfoundation:material>, 0.1) // 10% chance
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("sift_sand")
  .create();

// Red Sand (better chance at iron, less quartz)
RecipeBuilder.get("mason")
  .setShapeless([<minecraft:sand:1>|<byg:red_cracked_sand>])
  .setFluid(<liquid:water> * 100)
  .addTool(<ore:artisansSifter>, 10)
  .addOutput(<xlfoodmod:salt>)
  .setExtraOutputOne(<minecraft:quartz>, 0.03)
  .setExtraOutputTwo(<thermalfoundation:material:1>, 0.1) // 10% chance
  .setExtraOutputThree(<thermalfoundation:material>, 0.2) // 20% chance
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("sift_red_sand")
  .create();

// White Sand
RecipeBuilder.get("mason")
  .setShapeless([<byg:whitesand>])
  .setFluid(<liquid:water> * 100)
  .addTool(<ore:artisansSifter>, 10)
  .addOutput(<xlfoodmod:salt> * 2)
  .setExtraOutputOne(<alchemistry:compound:13>, 1.0)
  .setExtraOutputTwo(<thermalfoundation:material>, 0.25)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("sift_white_sand")
  .create();

// Black Sand
RecipeBuilder.get("mason")
  .setShapeless([<byg:blacksand>])
  .setFluid(<liquid:water> * 100)
  .addTool(<ore:artisansSifter>, 15)
  .addOutput(<thermalfoundation:material:2053>*2)
  .setExtraOutputOne(<minecraft:coal:1>, 0.25)
  .setExtraOutputTwo(<thermalfoundation:material:2053>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("sift_black_sand")
  .create();

// Light Blue Sand
RecipeBuilder.get("mason")
  .setShapeless([<byg:light_blue_sand>])
  .setFluid(<liquid:water> * 100)
  .addTool(<ore:artisansSifter>, 20)
  .addOutput(<thermalfoundation:material:2049> * 2)
  .setExtraOutputOne(<thermalfoundation:material:2049>, 0.5)
  .setExtraOutputTwo(<minecraft:dye:4>, 0.25)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("sift_light_blue_sand")
  .create();

// Pink Sand
RecipeBuilder.get("mason")
  .setShapeless([<byg:pink_sand>])
  .setFluid(<liquid:water> * 100)
  .addTool(<ore:artisansSifter>, 10)
  .addOutput(<alchemistry:compound:13> * 3)
  .setExtraOutputOne(<alchemistry:compound:13>, 0.35)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("sift_pink_sand")
  .create();

// Purple Sand
RecipeBuilder.get("mason")
  .setShapeless([<byg:purple_sand>])
  .setFluid(<liquid:water> * 250)
  .addTool(<ore:artisansSifter>, 25)
  .addOutput(<thermalfoundation:material:770> * 2)
  .setExtraOutputOne(<alchemistry:compound:13> * 4, 0.75)
  .setExtraOutputTwo(<thermalfoundation:material:1> * 3, 0.5)
  .setExtraOutputThree(<thermalfoundation:material:64> * 3, 0.3) // 30% Chance
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("sift_purple_sand")
  .create();



# New recipe for Stone Bricks
recipes.remove(<minecraft:stonebrick>);
recipes.remove(<minecraft:stonebrick:1>);
recipes.remove(<minecraft:stonebrick:3>);
recipes.remove(<minecraft:brick_block>);
recipes.remove(<minecraft:nether_brick>);

// Stone
RecipeBuilder.get("mason")
  .setShaped([
    [<minecraft:stone>, <minecraft:stone>],
    [<minecraft:stone>, <minecraft:stone>]])
  .addTool(<ore:artisansChisel>, 2)
  .addOutput(<minecraft:stonebrick> * 4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("stone_bricks")
  .create();

// Mossy
RecipeBuilder.get("mason")
  .setShapeless([<minecraft:stonebrick>, <minecraft:vine>])
  .setFluid(<liquid:water> * 500)
  .addTool(<ore:artisansFile>, 3)
  .addOutput(<minecraft:stonebrick:1>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("mossy_bricks")
  .create();

// Chiseled
RecipeBuilder.get("mason")
  .setShapeless([<minecraft:stonebrick>, <minecraft:stonebrick>, <minecraft:stonebrick>, <minecraft:stonebrick>])
  .addTool(<ore:artisansChisel>, 4)
  .addOutput(<minecraft:stonebrick:3> * 4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("chiseled_bricks")
  .create();

// Regular (Clay)
RecipeBuilder.get("mason")
  .setShaped([
    [<minecraft:brick>, <minecraft:brick>],
    [<minecraft:brick>, <minecraft:brick>]])
  .addTool(<ore:artisansChisel>, 4)
  .addOutput(<minecraft:brick_block>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("bricks")
  .create();

	// Nether Bricks
RecipeBuilder.get("mason")
  .setShaped([
    [<minecraft:netherbrick>, <minecraft:netherbrick>],
    [<minecraft:netherbrick>, <minecraft:netherbrick>]])
  .setFluid(<liquid:lava> * 1000)
  .addTool(<ore:artisansChisel>, 8)
  .addOutput(<minecraft:nether_brick>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("nether_bricks")
  .create();

# Lunarian Bricks (Village Names)
// Iron
recipes.remove(<villagenames:lunarinironbrick>);
recipes.remove(<villagenames:lunaringoldbrick>);

RecipeBuilder.get("mason")
  .setShapeless([<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>])
  .setFluid(<liquid:lava> * 1000)
  .addTool(<ore:artisansChisel>, 16)
  .addOutput(<villagenames:lunarinironbrick>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("iron_bricks")
  .create();

// Gold
RecipeBuilder.get("mason")
  .setShapeless([<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>])
  .setFluid(<liquid:lava> * 500)
  .addTool(<ore:artisansChisel>, 12)
  .addOutput(<villagenames:lunaringoldbrick>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("gold_bricks")
  .create();

// Sea Lantern
recipes.remove(<minecraft:sea_lantern>);
RecipeBuilder.get("mason")
  .setShaped([
    [<minecraft:prismarine_shard>, <minecraft:prismarine_crystals>, <minecraft:prismarine_shard>],
    [<minecraft:prismarine_crystals>, <minecraft:prismarine_crystals>, <minecraft:prismarine_crystals>],
    [<minecraft:prismarine_shard>, <minecraft:prismarine_crystals>, <minecraft:prismarine_shard>]])
  .setFluid(<liquid:water> * 1000)
  .addTool(<ore:artisansChisel>, 5)
  .addOutput(<minecraft:sea_lantern>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("sea_lantern")
  .create();

// Smash Prismarine (any kind) into Shards/Crystals
RecipeBuilder.get("mason")
  .setShapeless([<minecraft:prismarine:*>])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<minecraft:prismarine_shard> * 3)
  .setExtraOutputOne(<minecraft:prismarine_shard>, 0.5)
  .setExtraOutputTwo(<minecraft:prismarine_crystals> * 2, 0.75)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("smash_prismarine")
  .create();


# Recycle Compact Machines
// Tiny
RecipeBuilder.get("mason")
  .setShapeless([<compactmachines3:machine>])
  .addTool(<ore:artisansFile>, 3)
  .addTool(<ore:artisansCutters>, 5)
  .addOutput(<compactmachines3:wallbreakable> * 26)
  .setExtraOutputOne(<extrautils2:ingredients:1>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("recycle_machine_tiny")
  .create();

// Small
RecipeBuilder.get("mason")
  .setShapeless([<compactmachines3:machine:1>])
  .addTool(<ore:artisansFile>, 6)
  .addTool(<ore:artisansCutters>, 10)
  .addOutput(<compactmachines3:wallbreakable> * 26)
  .setExtraOutputOne(<minecraft:iron_block>, 0.75)
  .setExtraOutputTwo(<contenttweaker:faulty_circuit>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("recycle_machine_small")
  .create();

// Normal
RecipeBuilder.get("mason")
  .setShapeless([<compactmachines3:machine:2>])
  .addTool(<ore:artisansFile>, 9)
  .addTool(<ore:artisansCutters>, 15)
  .addOutput(<compactmachines3:wallbreakable> * 26)
  .setExtraOutputOne(<minecraft:gold_block>, 0.75)
  .setExtraOutputTwo(<dse:components:10>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("recycle_machine_normal")
  .create();

// Large
RecipeBuilder.get("mason")
  .setShapeless([<compactmachines3:machine:3>])
  .addTool(<ore:artisansFile>, 12)
  .addTool(<ore:artisansCutters>, 20)
  .addOutput(<compactmachines3:wallbreakable> * 64)
  .setExtraOutputOne(<compactmachines3:wallbreakable> * 34, 1.0)
  .setExtraOutputTwo(<dse:components:11>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("recycle_machine_large")
  .create();

// Giant
RecipeBuilder.get("mason")
  .setShapeless([<compactmachines3:machine:4>])
  .addTool(<ore:artisansFile>, 15)
  .addTool(<ore:artisansCutters>, 25)
  .addOutput(<compactmachines3:wallbreakable> * 64)
  .setExtraOutputOne(<compactmachines3:wallbreakable> * 34, 1.0)
  .setExtraOutputTwo(<minecraft:diamond_block>, 0.75)
  .setExtraOutputThree(<dse:components:12>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("recycle_machine_giant")
  .create();

// Maximum
RecipeBuilder.get("mason")
  .setShapeless([<compactmachines3:machine:5>])
  .addTool(<ore:artisansFile>, 18)
  .addTool(<ore:artisansCutters>, 30)
  .addOutput(<compactmachines3:wallbreakable> * 64)
  .setExtraOutputOne(<compactmachines3:wallbreakable> * 34, 1.0)
  .setExtraOutputTwo(<minecraft:emerald_block>, 0.75)
  .setExtraOutputThree(<cyberware:component:3>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("recycle_machine_maximum")
  .create();



print("mason.zs loaded");