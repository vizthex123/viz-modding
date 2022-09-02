# Adds recipes to the Basic Worktables

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.FTGU;
import mods.artisanintegrations.requirement.Reskillable;
import mods.artisanintegrations.requirement.GameStages;

print("basic.zs loading...");

/*
https://artisan-worktables.readthedocs.io/en/latest/recipes/gettingstarted/
https://artisan-worktables.readthedocs.io/en/latest/recipes/tools/
https://artisan-worktables.readthedocs.io/en/latest/recipes/basic/
*/

// Bounty Board
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:logWood>, <ore:logWood>, <ore:logWood>],
    [<ore:logWood>, <ore:chestWood>, <ore:logWood>],
    [<ore:logWood>, <ore:logWood>, <ore:logWood>]])
  .setSecondaryIngredients([<jjcoin:gold_coin>*2, <jjcoin:silver_coin>])
  .addTool(<ore:artisansHammer>, 4)
  .addTool(<ore:artisansChisel>, 16)
  .addOutput(<bountiful:bountyboarditem>)
  .addRequirement(FTGU.allOf(["cyborg:survival/bounties"]))
  .setName("bounty_board")
  .create();

// Blank Kit
recipes.remove(<furnaceoverhaul:blank_kit>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:stone>, <ore:stone>, <ore:stone>],
    [<ore:stone>, <minecraft:flint>, <ore:stone>],
    [<ore:stone>, <ore:stone>, <ore:stone>]])
  .addOutput(<furnaceoverhaul:blank_kit>)
  .addTool(<ore:artisansCutters>, 30)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .setName("blank_kit")
  .create();

// Iron Furnace
recipes.remove(<furnaceoverhaul:iron_furnace>);
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <minecraft:furnace>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]])
  .addOutput(<furnaceoverhaul:iron_furnace>)
  .addTool(<ore:artisansHammer>, 25)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smelting"]))
  .setName("iron_furnace")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<minecraft:furnace>, <furnaceoverhaul:iron_kit>])
  .addTool(<ore:artisansChisel>, 15)
  .addOutput(<furnaceoverhaul:iron_furnace>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smelting"]))
  .setName("iron_furnace_upgrade")
  .create();

	// Kit
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<minecraft:bone>, <minecraft:iron_ingot>, <minecraft:bone>],
    [<minecraft:iron_ingot>, <furnaceoverhaul:blank_kit>, <minecraft:iron_ingot>],
    [<minecraft:bone>, <minecraft:iron_ingot>, <minecraft:bone>]])
  .addOutput(<furnaceoverhaul:iron_kit>)
  .addTool(<ore:artisansHammer>, 15)
  .addTool(<ore:artisansCutters>, 10)
  .addRequirement(FTGU.allOf(["cyborg:survival/better_smelting"]))
  .setName("iron_kit")
  .create();
  
// Compactor
recipes.removeByRecipeName("compacter:recipe1");
RecipeBuilder.get("basic")
  .setShapeless([<extrautils2:analogcrafter>, <ore:chest>, <minecraft:redstone>])
  .addTool(<ore:artisansHandsaw>, 50)
  .addOutput(<compacter:compacter>)
  .setName("compactor")
  .create();

// Fix the unfired faucet conflict
recipes.remove(<ceramics:unfired_clay:6>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ceramics:unfired_clay:4>, null, <ceramics:unfired_clay:4>],
    [null, <ceramics:unfired_clay:4>, null]])
  .addTool(<ore:artisansChisel>, 4)
  .addOutput(<ceramics:unfired_clay:6>)
  .setName("unfired_faucet_fix")
  .create();

// Change Respawn Obelisk recipe
recipes.remove(<natura:respawn_obelisk>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:logWood>, <ore:logWood>, <ore:logWood>],
    [<ore:logWood>, <minecraft:redstone>, <ore:logWood>],
    [<ore:stone>, <ore:stone>, <ore:stone>]])
  .addTool(<ore:artisansChisel>, 15)
  .addOutput(<natura:respawn_obelisk>)
  .setName("respawn_obelisk")
  .create();

# New recipes for Nether Quartz tools
recipes.remove(<natura:netherquartz_sword>);
recipes.remove(<natura:netherquartz_pickaxe>);
recipes.remove(<natura:netherquartz_shovel>);
recipes.remove(<natura:netherquartz_kama>);
recipes.remove(<natura:netherquartz_axe>);

// Sword
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:gemQuartz>],
    [<ore:gemQuartz>],
    [<ore:stickWood>]])
  .addTool(<ore:artisansHammer>, 15)
  .setSecondaryIngredients([<ore:dyeWhite>*5])
  .addOutput(<natura:netherquartz_sword>)
  .setName("nether_quartz_sword")
  .create();

// Pickaxe
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>],
    [null, <ore:stickWood>, null],
    [null, <ore:stickWood>, null]])
  .addTool(<ore:artisansHammer>, 15)
  .setSecondaryIngredients([<ore:dyeWhite>*5])
  .addOutput(<natura:netherquartz_pickaxe>)
  .setName("nether_quartz_pickaxe")
  .create();

// Shovel
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:gemQuartz>],
    [<ore:stickWood>],
    [<ore:stickWood>]])
  .addTool(<ore:artisansHammer>, 15)
  .setSecondaryIngredients([<ore:dyeWhite>*5])
  .addOutput(<natura:netherquartz_shovel>)
  .setName("nether_quartz_shovel")
  .create();

// Kama (wha...?)
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:gemQuartz>, <ore:gemQuartz>],
    [null, <ore:stickWood>],
    [null, <ore:stickWood>]])
  .addTool(<ore:artisansHammer>, 15)
  .setSecondaryIngredients([<ore:dyeWhite>*5])
  .addOutput(<natura:netherquartz_kama>)
  .setMirrored()
  .setName("nether_quartz_kama")
  .create();

// Axe
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:gemQuartz>, <ore:gemQuartz>],
    [<ore:gemQuartz>, <ore:stickWood>],
    [null, <ore:stickWood>]])
  .addTool(<ore:artisansHammer>, 15)
  .setSecondaryIngredients([<ore:dyeWhite>*5])
  .addOutput(<natura:netherquartz_axe>)
  .setMirrored()
  .setName("nether_quartz_axe")
  .create();

#########################################################
#		Recycling Recipes			      #
#########################################################
// Decraft Books
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:book>])
  .addTool(<ore:artisansCutters>, 7)
  .addOutput(<minecraft:paper> * 3)
  .setExtraOutputOne(<minecraft:leather>, 1.0)
  .setName("recycle_book")
  .create();

// Decraft Name Tags
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:name_tag>])
  .addTool(<ore:artisansCutters>, 3)
  .addOutput(<minecraft:paper> * 2)
  .setExtraOutputOne(<minecraft:string> * 2, 0.5)
  .setName("recycle_name_tag")
  .create();

// Decraft Saddles
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:saddle>])
  .addTool(<ore:artisansCutters>, 6)
  .addOutput(<minecraft:leather> * 3)
  .setExtraOutputOne(<minecraft:iron_ingot> * 2, 0.65)
  .setName("recycle_saddle")
  .create();

# Decraft Bonecraft items
// Armour
RecipeBuilder.get("basic")
  .setShapeless([<bonecraft:bonehelmitem:*>])
  .addTool(<ore:artisansHammer>, 3)
  .addOutput(<minecraft:bone> * 5)
  .setExtraOutputOne(<minecraft:bone>, 0.35)
  .setExtraOutputTwo(<minecraft:bone>, 0.20)
  .setName("recycle_bone_helmet")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<bonecraft:bonechestitem:*>])
  .addTool(<ore:artisansHammer>, 8)
  .addOutput(<minecraft:bone> * 4)
  .setExtraOutputOne(<minecraft:bone>, 0.35)
  .setExtraOutputTwo(<minecraft:bone>, 0.20)
  .setName("recycle_bone_chestplate")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<bonecraft:bonelegsitem:*>])
  .addTool(<ore:artisansHammer>, 7)
  .addOutput(<minecraft:bone> * 3)
  .setExtraOutputOne(<minecraft:bone>, 0.35)
  .setExtraOutputTwo(<minecraft:bone>, 0.20)
  .setName("recycle_bone_leggings")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<bonecraft:bonebootsitem:*>])
  .addTool(<ore:artisansHammer>, 4)
  .addOutput(<minecraft:bone> * 2)
  .setExtraOutputOne(<minecraft:bone>, 0.35)
  .setExtraOutputTwo(<minecraft:bone>, 0.20)
  .setName("recycle_bone_boots")
  .create();


// Tools
RecipeBuilder.get("basic")
  .setShapeless([<bonecraft:bonesworditem:*>])
  .addTool(<ore:artisansHammer>, 2)
  .addOutput(<minecraft:bone>)
  .setExtraOutputOne(<minecraft:bone>, 0.5)
  .setName("recycle_bone_sword")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<bonecraft:bonepickaxeitem:*>])
  .addTool(<ore:artisansHammer>, 3)
  .addOutput(<minecraft:bone>*2)
  .setExtraOutputOne(<minecraft:bone>, 0.5)
  .setName("recycle_bone_pickaxe")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<bonecraft:boneshovelitem:*>])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<minecraft:bone>)
  .setName("recycle_bone_shovel")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<bonecraft:bonehoeitem:*>])
  .addTool(<ore:artisansHammer>, 2)
  .addOutput(<minecraft:bone>)
  .setExtraOutputOne(<minecraft:bone>, 0.5)
  .setName("recycle_bone_hoe")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<bonecraft:boneaxeitem:*>])
  .addTool(<ore:artisansHammer>, 3)
  .addOutput(<minecraft:bone> * 3)
  .setExtraOutputOne(<minecraft:bone>, 0.5)
  .setName("recycle_bone_axe")
  .create();


# Decraft Leather Armour
// Helmet
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:leather_helmet:*>])
  .addTool(<ore:artisansCutters>, 2)
  .addOutput(<minecraft:leather> * 2)
  .setExtraOutputOne(<minecraft:leather>, 0.5)
  .setExtraOutputTwo(<minecraft:leather>, 0.25)
  .setExtraOutputThree(<minecraft:leather>, 0.15)
  .setName("recycle_leather_helmet")
  .create();

// Chestplate
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:leather_chestplate:*>])
  .addTool(<ore:artisansCutters>, 4)
  .addOutput(<minecraft:leather> * 4)
  .setExtraOutputOne(<minecraft:leather> * 2, 1.0)
  .setExtraOutputTwo(<minecraft:leather> * 2, 1.0)
  .setName("recycle_leather_chestplate")
  .create();

// Leggings
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:leather_leggings:*>])
  .addTool(<ore:artisansCutters>, 3)
  .addOutput(<minecraft:leather> * 3)
  .setExtraOutputOne(<minecraft:leather> * 2, 0.5)
  .setExtraOutputTwo(<minecraft:leather>, 0.25)
  .setExtraOutputThree(<minecraft:leather>, 0.15)
  .setName("recycle_leather_leggings")
  .create();

// Boots
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:leather_boots:*>])
  .addTool(<ore:artisansCutters>, 2)
  .addOutput(<minecraft:leather> * 2)
  .setExtraOutputOne(<minecraft:leather>, 0.5)
  .setExtraOutputTwo(<minecraft:leather>, 0.25)
  .setName("recycle_leather_boots")
  .create();

print("basic.zs loaded");