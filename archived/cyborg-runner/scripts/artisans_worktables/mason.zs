# Adds recipes to the Mason's Worktables

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.FTGU;

print("mason.zs loading...");

/*
https://artisan-worktables.readthedocs.io/en/latest/recipes/gettingstarted/
https://artisan-worktables.readthedocs.io/en/latest/recipes/tools/
https://artisan-worktables.readthedocs.io/en/latest/recipes/basic/
*/

var cobblestone = <minecraft:cobblestone>;

var hammer = <ore:artisansHammer>;
var sifter = <ore:artisansSifter>;

var chisel = <ore:artisansChisel>;
var file = <ore:artisansFile>;

# New Research Table recipe
recipes.remove(<ftgumod:research_table>);
RecipeBuilder.get("mason")
  .setShaped([
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
    [cobblestone, <ore:workbench>, cobblestone],
    [cobblestone, cobblestone, cobblestone]])
  .addTool(chisel, 20)
  .addOutput(<ftgumod:research_table>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("research_table")
  .create();



// Change the recipe for the Wetstone
recipes.remove(<wetstone:wetstone>);
RecipeBuilder.get("mason")
  .setShaped([
    [<ore:bars>, <minecraft:stonebrick>, <ore:bars>],
    [<minecraft:stonebrick>, <ore:bars>, <minecraft:stonebrick>],
    [<ore:bars>, <minecraft:stonebrick>, <ore:bars>]])
  .setFluid(<liquid:water> * 4000)
  .addTool(chisel, 16)
  .addOutput(<wetstone:wetstone> * 4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("wetstone")
  .create();

// Craftable Ice
RecipeBuilder.get("mason")
  .setShapeless([<ore:sand>, <ore:sand>, <ore:sand>])
  .setFluid(<liquid:water> * 1000)
  .addTool(sifter, 30)
  .addOutput(<minecraft:ice> * 3)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("ice")
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<ore:sand>, <ore:sand>, <ore:sand>, <ore:sand>, <ore:sand>, <ore:sand>, <ore:sand>, <ore:sand>, <ore:sand>])
  .setFluid(<liquid:water> * 3000)
  .addTool(sifter, 90)
  .addOutput(<minecraft:ice> * 9)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("mass_ice")
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<minecraft:snow>, <minecraft:snow>],
    [<minecraft:snow>, <minecraft:snow>]])
  .setFluid(<liquid:water> * 4000)
  .addTool(sifter, 60)
  .addOutput(<minecraft:ice> * 4)
  .setExtraOutputOne(<minecraft:ice> * 2, 0.75)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("snow_ice")
  .create();

// Soapstone > Magnesium
RecipeBuilder.get("mason")
  .setShapeless([<byg:soapstone>])
  .setFluid(<liquid:water> * 500)
  .addTool(file, 10)
  .addOutput(<alchemistry:element:12> * 3)
  .setExtraOutputOne(<alchemistry:element:12>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("crush_soapstone")
  .create();

// Scoria > Crystals
RecipeBuilder.get("mason")
  .setShapeless([<byg:scoria>])
  .setFluid(<liquid:water> * 500)
  .addTool(file, 15)
  .addOutput(<minecraft:prismarine_crystals> * 2)
  .setExtraOutputOne(<byg:red_crystals>, 0.5)
  .setExtraOutputTwo(<byg:red_crystals>, 0.25)
  .setExtraOutputThree(<byg:red_crystals>, 0.15)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("crush_scoria")
  .create();

// Cobble > Gravel
RecipeBuilder.get("mason")
  .setShapeless([cobblestone])
  .addTool(file, 10)
  .addOutput(<minecraft:gravel>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("crush_cobblestone")
  .create();

// Gravel > Sand
RecipeBuilder.get("mason")
  .setShapeless([<minecraft:gravel>])
  .addTool(file, 5)
  .addOutput(<minecraft:sand>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("crush_gravel")
  .create();

// Gravel > Flint
RecipeBuilder.get("mason")
  .setShapeless([<minecraft:gravel>, <minecraft:gravel>])
  .setFluid(<liquid:water> * 500)
  .addTool(sifter, 10)
  .addOutput(<minecraft:flint> * 2)
  .setExtraOutputOne(<minecraft:flint>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("crush_gravel_flint")
  .create();

// Sandstone > Sand
RecipeBuilder.get("mason")
  .setShapeless([<minecraft:sandstone>|<minecraft:sandstone:1>|<minecraft:sandstone:2>])
  .setFluid(<liquid:water> * 250)
  .addTool(hammer, 8)
  .addTool(file, 12)
  .addOutput(<minecraft:sand> * 4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("crush_sandstone")
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<minecraft:red_sandstone>|<minecraft:red_sandstone:1>|<minecraft:red_sandstone:2>])
  .setFluid(<liquid:water> * 250)
  .addTool(hammer, 8)
  .addTool(file, 12)
  .addOutput(<minecraft:sand:1> * 4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("crush_red_sandstone")
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<byg:whitesandstone>|<byg:whitechiseledsandstone>|<byg:whitesmoothsandstone>])
  .setFluid(<liquid:water> * 250)
  .addTool(hammer, 8)
  .addTool(file, 12)
  .addOutput(<byg:whitesand> * 4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("crush_white_sandstone")
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<byg:blacksandstone>|<byg:blackchiseledsandstone>|<byg:blacksmoothsandstone>])
  .setFluid(<liquid:water> * 250)
  .addTool(hammer, 8)
  .addTool(file, 12)
  .addOutput(<byg:blacksand> * 4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("crush_black_sandstone")
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<byg:light_blue_sandstone>|<byg:light_blue_chiseled_sandstone>|<byg:light_blue_smooth_sandstone>])
  .setFluid(<liquid:water> * 250)
  .addTool(hammer, 8)
  .addTool(file, 12)
  .addOutput(<byg:light_blue_sand> * 4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("crush_light_blue_sand")
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<byg:pink_sandstone>|<byg:pink_chiseled_sandstone>|<byg:pink_smooth_sandstone>])
  .setFluid(<liquid:water> * 250)
  .addTool(hammer, 8)
  .addTool(file, 12)
  .addOutput(<byg:pink_sand> * 4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("crush_pink_sandstone")
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<byg:purple_sandstone>|<byg:purple_chiseled_sandstone>|<byg:purple_smooth_sandstone>])
  .setFluid(<liquid:water> * 250)
  .addTool(hammer, 8)
  .addTool(file, 12)
  .addOutput(<byg:purple_sand> * 4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("crush_purple_sandstone")
  .create();



### New recipes for Bricks
recipes.remove(<minecraft:stonebrick>);
recipes.remove(<minecraft:stonebrick:1>);
recipes.remove(<minecraft:stonebrick:3>);

// Stone Bricks
RecipeBuilder.get("mason")
  .setShaped([
    [<minecraft:stone>, <minecraft:stone>],
    [<minecraft:stone>, <minecraft:stone>]])
  .addTool(chisel, 4)
  .addOutput(<minecraft:stonebrick> * 4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("stone_bricks")
  .create();

// Stone Brick Stairs
recipes.remove(<minecraft:stone_brick_stairs>);
RecipeBuilder.get("mason")
  .setShaped([
    [<ore:bricksStone>, null, null],
    [<ore:bricksStone>, <ore:bricksStone>, null],
    [<ore:bricksStone>, <ore:bricksStone>, <ore:bricksStone>]])
  .addTool(chisel, 12)
  .addOutput(<minecraft:stone_brick_stairs>*6)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("stone_brick_stairs")
  .setMirrored()
  .create();

// Stone Slab
recipes.remove(<minecraft:stone_slab:5>);
RecipeBuilder.get("mason")
  .setShaped([
    [<ore:bricksStone>, <ore:bricksStone>, <ore:bricksStone>]])
  .addTool(chisel, 6)
  .addOutput(<minecraft:stone_slab:5>*6)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("stone_brick_slab")
  .setMirrored()
  .create();
 
// Border Stone
recipes.remove(<extrautils2:decorativesolid>);
RecipeBuilder.get("mason")
  .setShapeless([<ore:bricksStone>, <ore:bricksStone>, <ore:stone>, <ore:stone>])
  .addTool(file, 8)
  .addTool(chisel, 4)
  .addOutput(<extrautils2:decorativesolid>*4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("border_stone")
  .create();
 
// Polished Stone
recipes.remove(<extrautils2:decorativesolid:2>);
RecipeBuilder.get("mason")
  .setShaped([
    [<ore:bricksStone>, <ore:bricksStone>],
    [<ore:bricksStone>, <ore:bricksStone>]])
  .addTool(chisel, 8)
  .addOutput(<extrautils2:decorativesolid:2>*4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("polished_stone")
  .create();

# Mossy
RecipeBuilder.get("mason")
  .setShapeless([<minecraft:stonebrick>, <minecraft:vine>])
  .addTool(file, 3)
  .addOutput(<minecraft:stonebrick:1>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("mossy_bricks")
  .create();

# Chiseled
RecipeBuilder.get("mason")
  .setShapeless([<minecraft:stonebrick>, <minecraft:stonebrick>, <minecraft:stonebrick>, <minecraft:stonebrick>])
  .addTool(chisel, 4)
  .addOutput(<minecraft:stonebrick:3> * 4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("chiseled_bricks")
  .create();

### Bricks
recipes.remove(<minecraft:brick_block>);
recipes.remove(<minecraft:brick_stairs>);
recipes.remove(<minecraft:stone_slab:4>);

# Regular (Clay)
// Bricks
RecipeBuilder.get("mason")
  .setShaped([
    [<minecraft:brick>, <minecraft:brick>],
    [<minecraft:brick>, <minecraft:brick>]])
  .addTool(chisel, 4)
  .addOutput(<minecraft:brick_block>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("bricks")
  .create();

// Stairs
RecipeBuilder.get("mason")
  .setShaped([
    [<minecraft:brick_block>, null, null],
    [<minecraft:brick_block>, <minecraft:brick_block>, null],
    [<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>]])
  .addTool(chisel, 12)
  .addOutput(<minecraft:brick_stairs>*6)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("brick_stairs")
  .setMirrored()
  .create();

// Slab
RecipeBuilder.get("mason")
  .setShaped([
    [<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>]])
  .addTool(chisel, 6)
  .addOutput(<minecraft:stone_slab:4>*6)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("brick_slab")
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<minecraft:brick>, <minecraft:brick>]])
  .addTool(chisel, 2)
  .addOutput(<minecraft:stone_slab:4>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("brick_slab_ingot")
  .setMirrored()
  .create();

# Nether Bricks
recipes.remove(<minecraft:nether_brick>);
recipes.remove(<minecraft:red_nether_brick>);
recipes.remove(<minecraft:nether_brick_stairs>);
recipes.remove(<minecraft:stone_slab:6>);
recipes.remove(<minecraft:nether_brick_fence>);

// Brick
RecipeBuilder.get("mason")
  .setShaped([
    [<minecraft:netherbrick>, <minecraft:netherbrick>],
    [<minecraft:netherbrick>, <minecraft:netherbrick>]])
  .addTool(chisel, 8)
  .addOutput(<minecraft:nether_brick>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("nether_bricks")
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<minecraft:netherbrick>, <minecraft:nether_wart>],
    [<minecraft:nether_wart>, <minecraft:netherbrick>]])
  .addTool(chisel, 6)
  .addOutput(<minecraft:red_nether_brick>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("red_nether_brick")
  .create();

// Stairs
RecipeBuilder.get("mason")
  .setShaped([
    [<minecraft:nether_brick>, null, null],
    [<minecraft:nether_brick>, <minecraft:nether_brick>, null],
    [<minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>]])
  .addTool(chisel, 12)
  .addOutput(<minecraft:nether_brick_stairs>*6)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("nether_brick_stairs")
  .setMirrored()
  .create();

// Slab
RecipeBuilder.get("mason")
  .setShaped([
    [<minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>]])
  .addTool(chisel, 6)
  .addOutput(<minecraft:stone_slab:6>*6)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("nether_brick_slab")
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<minecraft:netherbrick>, <minecraft:netherbrick>]])
  .addTool(chisel, 2)
  .addOutput(<minecraft:stone_slab:6>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("nether_brick_slab_brick")
  .setMirrored()
  .create();

// Fence
RecipeBuilder.get("mason")
  .setShaped([
    [<minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>],
    [<minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>]])
  .addTool(chisel, 24)
  .addOutput(<minecraft:nether_brick_fence>*6)
  .setName("nether_brick_fence")
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<minecraft:netherbrick>, <minecraft:netherbrick>, <minecraft:netherbrick>],
    [<minecraft:netherbrick>, <minecraft:netherbrick>, <minecraft:netherbrick>]])
  .addTool(chisel, 12)
  .addOutput(<minecraft:nether_brick_fence>)
  .setName("nether_brick_fence_bricks")
  .create();



# Lunarian Bricks (Village Names)
// Iron
recipes.remove(<villagenames:lunarinironbrick>);
recipes.remove(<villagenames:lunaringoldbrick>);

RecipeBuilder.get("mason")
  .setShapeless([<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>])
  .setFluid(<liquid:lava> * 1000)
  .addTool(chisel, 16)
  .addOutput(<villagenames:lunarinironbrick>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("iron_bricks")
  .create();

// Gold
RecipeBuilder.get("mason")
  .setShapeless([<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>])
  .setFluid(<liquid:lava> * 500)
  .addTool(chisel, 12)
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
  .addTool(chisel, 5)
  .addOutput(<minecraft:sea_lantern>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("sea_lantern")
  .create();

// Smash Prismarine (any kind) into Shards/Crystals
RecipeBuilder.get("mason")
  .setShapeless([<minecraft:prismarine:*>])
  .addTool(hammer, 10)
  .addOutput(<minecraft:prismarine_shard> * 3)
  .setExtraOutputOne(<minecraft:prismarine_shard>, 0.5)
  .setExtraOutputTwo(<minecraft:prismarine_crystals> * 2, 0.75)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("smash_prismarine")
  .create();





### Dirt Sifting
var dirt = <minecraft:dirt>;
var coarse_dirt = <minecraft:dirt:1>;
var gravel = <minecraft:gravel>;

var water = <alchemistry:compound:7>;

// Sift Mud Balls into Clay and Water
RecipeBuilder.get("mason")
  .setShapeless([<byg:mudballs>])
  .addTool(sifter, 5)
  .addOutput(<minecraft:clay_ball>)
  .setExtraOutputOne(water, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("sift_mud_ball")
  .create();


// Sift Coarse Dirt into Dirt & Gravel
RecipeBuilder.get("mason")
  .setShapeless([coarse_dirt])
  .setFluid(<liquid:water> * 500)
  .addTool(sifter, 10)
  .addOutput(dirt)
  .setExtraOutputOne(gravel, 1.0)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("sift_coarse_dirt")
  .create();

// Sift Lumicia Dirt
RecipeBuilder.get("mason")
  .setShapeless([<glacidus:lumicia_dirt>])
  .setFluid(<liquid:water> * 250)
  .addTool(sifter, 15)
  .addOutput(dirt)
  .setExtraOutputOne(water, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("sift_lumicia_dirt")
  .create();



# Sift BYG dirts

// Sift Meadow Dirt into Dirt
RecipeBuilder.get("mason")
  .setShapeless([<byg:meadowdirt>])
  .setFluid(<liquid:water> * 200)
  .addTool(sifter, 20)
  .addOutput(dirt)
  .setExtraOutputOne(dirt*2, 0.5)
  .setExtraOutputTwo(coarse_dirt, 0.6)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("sift_meadow_dirt")
  .create();

// Sift Pasture Dirt into Nitrogen and Dirt
var nitrogen = <alchemistry:element:7>;

RecipeBuilder.get("mason")
  .setShapeless([<byg:pasturdirt>])
  .setFluid(<liquid:water> * 200)
  .addTool(sifter, 15)
  .addOutput(nitrogen*4)
  .setExtraOutputOne(dirt, 1.0)
  .setExtraOutputTwo(coarse_dirt, 0.45)
  .setExtraOutputThree(nitrogen*4, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("sift_pasture_dirt")
  .create();

// Sift Sandy Dirt into Sand & Dirt
RecipeBuilder.get("mason")
  .setShapeless([<byg:sandydirt>])
  .setFluid(<liquid:water> * 100)
  .addTool(sifter, 10)
  .addOutput(<minecraft:sand>)
  .setExtraOutputOne(dirt, 1.0)
  .setExtraOutputTwo(coarse_dirt, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("sift_sandy_dirt")
  .create();

// Sift Peat Dirt into Dirt
var cellulose = <alchemistry:compound>;

RecipeBuilder.get("mason")
  .setShapeless([<byg:peatdirt>])
  .setFluid(<liquid:water> * 250)
  .addTool(sifter, 25)
  .addOutput(cellulose*2)
  .setExtraOutputOne(dirt, 1.0)
  .setExtraOutputTwo(coarse_dirt, 0.35)
  .setExtraOutputThree(cellulose*2, 0.45)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("sift_peat_dirt")
  .create();

// Sift Hardened Dirt into Cobblestone & Dirt
RecipeBuilder.get("mason")
  .setShapeless([<byg:hardeneddirt>])
  .setFluid(<liquid:water> * 500)
  .addTool(sifter, 35)
  .addOutput(cobblestone)
  .setExtraOutputOne(dirt, 1.0)
  .setExtraOutputTwo(dirt, 0.75)
  .setExtraOutputThree(cobblestone, 0.75)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("sift_hardened_dirt")
  .create();



# Sift Sand into Dusts (of various kinds)
var silicon_dioxide = <alchemistry:compound:1>;
var calcium_carbonate = <alchemistry:compound:13>;

var iron_dust = <thermalfoundation:material>;
var gold_dust = <thermalfoundation:material:1>;
var copper_dust = <thermalfoundation:material:64>;
var obsidian_dust = <thermalfoundation:material:770>;
var blizz_powder = <thermalfoundation:material:2049>;
var bazalz_powder = <thermalfoundation:material:2053>;

// Regular
RecipeBuilder.get("mason")
  .setShapeless([<minecraft:sand>|<byg:cracked_sand>])
  .addTool(sifter, 10)
  .addOutput(<xlfoodmod:salt>)
  .setExtraOutputOne(silicon_dioxide, 0.05)
  .setExtraOutputTwo(gold_dust, 0.07)
  .setExtraOutputThree(iron_dust, 0.1)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("sift_sand")
  .create();

// Red Sand (better chance at iron, less silicon dioxide)
RecipeBuilder.get("mason")
  .setShapeless([<minecraft:sand:1>|<byg:red_cracked_sand>])
  .addTool(sifter, 10)
  .addOutput(<xlfoodmod:salt>)
  .setExtraOutputOne(silicon_dioxide, 0.03)
  .setExtraOutputTwo(gold_dust, 0.1)
  .setExtraOutputThree(iron_dust, 0.2)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("sift_red_sand")
  .create();

// White Sand
RecipeBuilder.get("mason")
  .setShapeless([<byg:whitesand>])
  .addTool(sifter, 10)
  .addOutput(<xlfoodmod:salt> * 2)
  .setExtraOutputOne(calcium_carbonate, 1.0)
  .setExtraOutputTwo(iron_dust, 0.25)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("sift_white_sand")
  .create();

// Black Sand
RecipeBuilder.get("mason")
  .setShapeless([<byg:blacksand>])
  .addTool(sifter, 15)
  .addOutput(bazalz_powder*2)
  .setExtraOutputOne(<minecraft:coal:1>, 0.25)
  .setExtraOutputTwo(bazalz_powder, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("sift_black_sand")
  .create();

// Light Blue Sand
RecipeBuilder.get("mason")
  .setShapeless([<byg:light_blue_sand>])
  .addTool(sifter, 20)
  .addOutput(blizz_powder * 2)
  .setExtraOutputOne(blizz_powder, 0.5)
  .setExtraOutputTwo(<minecraft:dye:4>, 0.25)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("sift_light_blue_sand")
  .create();

// Pink Sand
RecipeBuilder.get("mason")
  .setShapeless([<byg:pink_sand>])
  .addTool(sifter, 10)
  .addOutput(calcium_carbonate * 3)
  .setExtraOutputOne(calcium_carbonate, 0.35)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("sift_pink_sand")
  .create();

// Purple Sand
RecipeBuilder.get("mason")
  .setShapeless([<byg:purple_sand>])
  .addTool(sifter, 25)
  .addOutput(obsidian_dust * 2)
  .setExtraOutputOne(calcium_carbonate * 4, 0.75)
  .setExtraOutputTwo(gold_dust * 3, 0.5)
  .setExtraOutputThree(copper_dust * 3, 0.3)
  .addRequirement(FTGU.allOf(["cyborg:crafting/masonry"]))
  .setName("sift_purple_sand")
  .create();

print("mason.zs loaded");