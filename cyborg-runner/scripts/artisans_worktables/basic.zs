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
  .addOutput(<minecraft:paper>*3)
  .setExtraOutputOne(<minecraft:leather>, 1.0)
  .setName("recycle_book")
  .create();

// Decraft Name Tags
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:name_tag>])
  .addTool(<ore:artisansCutters>, 3)
  .addOutput(<minecraft:paper>*2)
  .setExtraOutputOne(<minecraft:string>*2, 0.5)
  .setName("recycle_name_tag")
  .create();

// Decraft Saddles
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:saddle>])
  .addTool(<ore:artisansCutters>, 6)
  .addOutput(<minecraft:leather>*3)
  .setExtraOutputOne(<minecraft:iron_ingot>*2, 0.65)
  .setName("recycle_saddle")
  .create();

# Decraft Bonecraft items
// Armour
RecipeBuilder.get("basic")
  .setShapeless([<bonecraft:bonehelmitem:*>])
  .addTool(<ore:artisansHammer>, 3)
  .addOutput(<minecraft:bone>*5)
  .setExtraOutputOne(<minecraft:bone>, 0.35)
  .setExtraOutputTwo(<minecraft:bone>, 0.20)
  .setName("recycle_bone_helmet")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<bonecraft:bonechestitem:*>])
  .addTool(<ore:artisansHammer>, 8)
  .addOutput(<minecraft:bone>*4)
  .setExtraOutputOne(<minecraft:bone>, 0.35)
  .setExtraOutputTwo(<minecraft:bone>, 0.20)
  .setName("recycle_bone_chestplate")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<bonecraft:bonelegsitem:*>])
  .addTool(<ore:artisansHammer>, 7)
  .addOutput(<minecraft:bone>*3)
  .setExtraOutputOne(<minecraft:bone>, 0.35)
  .setExtraOutputTwo(<minecraft:bone>, 0.20)
  .setName("recycle_bone_leggings")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<bonecraft:bonebootsitem:*>])
  .addTool(<ore:artisansHammer>, 4)
  .addOutput(<minecraft:bone>*2)
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
  .addOutput(<minecraft:bone>*3)
  .setExtraOutputOne(<minecraft:bone>, 0.5)
  .setName("recycle_bone_axe")
  .create();


# Decraft Leather Armour
// Helmet
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:leather_helmet:*>])
  .addTool(<ore:artisansCutters>, 2)
  .addOutput(<minecraft:leather>*2)
  .setExtraOutputOne(<minecraft:leather>, 0.5)
  .setExtraOutputTwo(<minecraft:leather>, 0.25)
  .setExtraOutputThree(<minecraft:leather>, 0.15)
  .setName("recycle_leather_helmet")
  .create();

// Chestplate
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:leather_chestplate:*>])
  .addTool(<ore:artisansCutters>, 4)
  .addOutput(<minecraft:leather>*4)
  .setExtraOutputOne(<minecraft:leather>*2, 1.0)
  .setExtraOutputTwo(<minecraft:leather>*2, 1.0)
  .setName("recycle_leather_chestplate")
  .create();

// Leggings
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:leather_leggings:*>])
  .addTool(<ore:artisansCutters>, 3)
  .addOutput(<minecraft:leather>*3)
  .setExtraOutputOne(<minecraft:leather>*2, 0.5)
  .setExtraOutputTwo(<minecraft:leather>, 0.25)
  .setExtraOutputThree(<minecraft:leather>, 0.15)
  .setName("recycle_leather_leggings")
  .create();

// Boots
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:leather_boots:*>])
  .addTool(<ore:artisansCutters>, 2)
  .addOutput(<minecraft:leather>*2)
  .setExtraOutputOne(<minecraft:leather>, 0.5)
  .setExtraOutputTwo(<minecraft:leather>, 0.25)
  .setName("recycle_leather_boots")
  .create();

# Scannable items
recipes.remove(<scannable:scanner>);

recipes.remove(<scannable:module_blank>);
recipes.remove(<scannable:module_range>);
recipes.remove(<scannable:module_monster>);
recipes.remove(<scannable:module_ore_common>);
recipes.remove(<scannable:module_ore_rare>);


// Scanner
RecipeBuilder.get("basic")
  .setShaped([
    [null, <ore:circuitBasic>, null],
    [<minecraft:redstone>, <ore:ingotTin>, <minecraft:redstone>],
    [<minecraft:redstone>, <ore:ingotTin>, <minecraft:redstone>]])
  .addTool(<ore:artisansCutters>, 15)
  .addOutput(<scannable:scanner>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .setName("scanner")
  .create();

// Blank Module
RecipeBuilder.get("basic")
  .setShaped([
    [null, <ore:circuitBasic>, null],
    [<minecraft:clay_ball>, <minecraft:redstone>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:redstone>, <minecraft:clay_ball>]])
  .addTool(<ore:artisansCutters>, 5)
  .addOutput(<scannable:module_blank>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:survival/scanning"]))
  .setName("blank_module")
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [null, <ore:circuitBasic>, null],
    [<minecraft:clay_ball>, <projectred-core:resource_item:105>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, null, <minecraft:clay_ball>]])
  .addTool(<ore:artisansPliers>, 3)
  .addOutput(<scannable:module_blank>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/engineering", "cyborg:survival/scanning"]))
  .setName("blank_module_alt")
  .create();

// Range Module
RecipeBuilder.get("basic")
  .setShapeless([<scannable:module_blank>, <ore:circuitBasic>])
  .addTool(<ore:artisansSolderer>, 15)
  .addOutput(<scannable:module_range>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:survival/scanning"]))
  .setName("range_module")
  .create();

// Monster Module
RecipeBuilder.get("basic")
  .setShapeless([<scannable:module_blank>, <contenttweaker:wrapped_bone>, <contenttweaker:wrapped_bone>, <contenttweaker:wrapped_bone>])
  .addOutput(<scannable:module_monster>)
    .addTool(<ore:artisansSolderer>, 5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:survival/scanning"]))
  .setName("monster_module")
  .create();

// Common Ore Module
RecipeBuilder.get("basic")
  .setShapeless([<scannable:module_blank>, <minecraft:coal>|<cm:crimson_coal>|<nibrockscoal:iron_coal>|<nibrockscoal:gold_coal>|<nibrockscoal:diamond_coal>|<projectred-core:resource_item:103>])
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<scannable:module_ore_common>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:survival/scanning"]))
  .setName("common_ore_module")
  .create();

// Rare Ore Module
RecipeBuilder.get("basic")
  .setShapeless([<scannable:module_blank>, <projectred-core:resource_item:200>|<projectred-core:resource_item:201>|<projectred-core:resource_item:202>|<minecraft:diamond>|<projectred-core:resource_item:104>])
  .addTool(<ore:artisansCutters>, 50)
  .addOutput(<scannable:module_ore_rare>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:survival/scanning"]))
  .setName("rare_ore_module")
  .create();



# Change Backpack recipes
recipes.remove(<improvedbackpacks:bound_leather>);

// Bound Leather
RecipeBuilder.get("basic")
  .setShaped([
    [null, <minecraft:leather>, null],
    [<minecraft:leather>, <ore:string>, <minecraft:leather>],
    [null, <minecraft:leather>, null]])
  .setFluid(<liquid:water>*1000)
  .addTool(<ore:artisansCutters>, 10)
  .addTool(<ore:artisansKnife>, 20)
  .addOutput(<improvedbackpacks:bound_leather>*2)
  .addRequirement(FTGU.allOf(["cyborg:survival/backpacks"]))
  .setName("bound_leather")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<minecraft:leather>, <alchemistry:element:24>, <ore:string>])
  .setFluid(<liquid:water>*500)
  .addTool(<ore:artisansKnife>, 10)
  .addOutput(<improvedbackpacks:bound_leather>*2)
  .addRequirement(FTGU.allOf(["cyborg:survival/backpacks"]))
  .setName("chromium_bound_leather")
  .create();
  
RecipeBuilder.get("basic")
  .setShaped([
    [null, <glacidus:merialces_hide>, null],
    [<glacidus:merialces_hide>, <ore:string>, <glacidus:merialces_hide>],
    [null, <glacidus:merialces_hide>, null]])
  .setFluid(<liquid:cryotheum>*250)
  .addTool(<ore:artisansCutters>, 20)
  .addTool(<ore:artisansKnife>, 30)
  .addOutput(<improvedbackpacks:bound_leather>*4)
  .addRequirement(FTGU.allOf(["cyborg:survival/backpacks"]))
  .setName("merialces_bound_leather")
  .create();

// Backpack
recipes.remove(<improvedbackpacks:backpack>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:string>, <improvedbackpacks:tanned_leather>, <ore:string>],
    [<improvedbackpacks:tanned_leather>, <ore:chestWood>, <improvedbackpacks:tanned_leather>],
    [<ore:string>, <improvedbackpacks:tanned_leather>, <ore:string>]])
  .addTool(<ore:artisansCutters>, 30)
  .addOutput(<improvedbackpacks:backpack>)
  .addRequirement(FTGU.allOf(["cyborg:survival/backpacks"]))
  .setName("backpack")
  .create();

# Upgrades are in the carpenter and mason scripts

# Recycle Compact Machines
// Tiny
RecipeBuilder.get("basic")
  .setShapeless([<compactmachines3:machine>])
  .addTool(<ore:artisansFile>, 3)
  .addTool(<ore:artisansCutters>, 5)
  .addOutput(<compactmachines3:wallbreakable>*26)
  .setExtraOutputOne(<extrautils2:ingredients:1>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .setName("recycle_machine_tiny")
  .create();

// Small
RecipeBuilder.get("basic")
  .setShapeless([<compactmachines3:machine:1>])
  .addTool(<ore:artisansFile>, 6)
  .addTool(<ore:artisansCutters>, 10)
  .addOutput(<compactmachines3:wallbreakable>*26)
  .setExtraOutputOne(<minecraft:iron_block>, 0.75)
  .setExtraOutputTwo(<contenttweaker:melon_circuit>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .setName("recycle_machine_small")
  .create();

// Normal
RecipeBuilder.get("basic")
  .setShapeless([<compactmachines3:machine:2>])
  .addTool(<ore:artisansFile>, 9)
  .addTool(<ore:artisansCutters>, 15)
  .addOutput(<compactmachines3:wallbreakable>*26)
  .setExtraOutputOne(<minecraft:gold_block>, 0.75)
  .setExtraOutputTwo(<dse:components:10>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .setName("recycle_machine_normal")
  .create();

// Large
RecipeBuilder.get("basic")
  .setShapeless([<compactmachines3:machine:3>])
  .addTool(<ore:artisansFile>, 12)
  .addTool(<ore:artisansCutters>, 20)
  .addOutput(<compactmachines3:wallbreakable>*64)
  .setExtraOutputOne(<compactmachines3:wallbreakable>*34, 1.0)
  .setExtraOutputTwo(<dse:components:11>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .setName("recycle_machine_large")
  .create();

// Giant
RecipeBuilder.get("basic")
  .setShapeless([<compactmachines3:machine:4>])
  .addTool(<ore:artisansFile>, 15)
  .addTool(<ore:artisansCutters>, 25)
  .addOutput(<compactmachines3:wallbreakable>*64)
  .setExtraOutputOne(<compactmachines3:wallbreakable>*34, 1.0)
  .setExtraOutputTwo(<minecraft:diamond_block>, 0.75)
  .setExtraOutputThree(<dse:components:12>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .setName("recycle_machine_giant")
  .create();

// Maximum
RecipeBuilder.get("basic")
  .setShapeless([<compactmachines3:machine:5>])
  .addTool(<ore:artisansFile>, 18)
  .addTool(<ore:artisansCutters>, 30)
  .addOutput(<compactmachines3:wallbreakable>*64)
  .setExtraOutputOne(<compactmachines3:wallbreakable>*34, 1.0)
  .setExtraOutputTwo(<minecraft:emerald_block>, 0.75)
  .setExtraOutputThree(<cyberware:component:3>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .setName("recycle_machine_maximum")
  .create();

print("basic.zs loaded");