# Adds recycling recipes for various things to various Worktables

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.FTGU;

print("recycling.zs loading...");

### All recipes give back 50% of the source items, rounded down
### Tool durability is equal to the materials used to make the item
### All Wood becomes Sawdust with the following ratios:
### Plank - 1
### Stick - 0.5



##############################
#		BASIC		#
##############################

var iron = <minecraft:iron_ingot>;

var bone = <minecraft:bone>;
var leather = <minecraft:leather>;
var spider_string = <minecraft:string>;

var sawdust = <thermalfoundation:material:800>;
var cobblestone = <minecraft:cobblestone>;

var hammer = <ore:artisansHammer>;
var spanner = <ore:artisansSpanner>;
var cutters = <ore:artisansCutters>;

// Recycle Bows
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:bow:*>])
  .addTool(cutters, 6)
  .addOutput(spider_string*2)
  .setExtraOutputOne(spider_string, 0.5)
  .setExtraOutputTwo(sawdust, 1.0)
  .setExtraOutputThree(sawdust, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/recycling"]))
  .setName("recycle_bow")
  .create();

// Recycle Books
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:book>|<minecraft:writable_book:*>|<minecraft:written_book:*>])
  .addTool(cutters, 7)
  .addOutput(<minecraft:paper>)
  .setExtraOutputOne(leather, 0.5)
  .setExtraOutputTwo(<minecraft:paper>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/recycling"]))
  .setName("recycle_books")
  .create();

// Recycle Name Tags
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:name_tag>])
  .addTool(cutters, 4)
  .addOutput(<minecraft:paper>*2)
  .setExtraOutputOne(spider_string*2, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/recycling"]))
  .setName("recycle_name_tag")
  .create();

// Recycle Saddles
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:saddle>])
  .addTool(cutters, 10)
  .addOutput(leather*3)
  .setExtraOutputOne(iron*2, 0.65)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/recycling"]))
  .setName("recycle_saddle")
  .create();

// Recycle Collation Folders
RecipeBuilder.get("basic")
  .setShapeless([<mystcraft:folder:*>])
  .addTool(cutters, 5)
  .addOutput(leather)
  .setExtraOutputOne(spider_string, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/recycling"]))
  .setName("recycle_collation_folders")
  .create();



# Recycle Stone gear
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:stone_sword:*>])
  .addTool(hammer, 2)
  .addOutput(cobblestone)
  .setExtraOutputOne(sawdust, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/recycling"]))
  .setName("recycle_stone_sword")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<minecraft:stone_pickaxe:*>])
  .addTool(hammer, 3)
  .addOutput(cobblestone)
  .setExtraOutputOne(cobblestone, 0.5)
  .setExtraOutputTwo(sawdust, 1.0)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/recycling"]))
  .setName("recycle_stone_pickaxe")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<minecraft:stone_axe:*>])
  .addTool(hammer, 3)
  .addOutput(cobblestone)
  .setExtraOutputOne(cobblestone, 0.5)
  .setExtraOutputTwo(sawdust, 1.0)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/recycling"]))
  .setName("recycle_stone_axe")
  .create();



# Recycle Bonecraft's items
# Armour
RecipeBuilder.get("basic")
  .setShapeless([<bonecraft:bonehelmitem:*>])
  .addTool(hammer, 5)
  .addOutput(bone*2)
  .setExtraOutputOne(bone, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/recycling"]))
  .setName("recycle_bone_helmet")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<bonecraft:bonechestitem:*>])
  .addTool(hammer, 8)
  .addOutput(bone*4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/recycling"]))
  .setName("recycle_bone_chestplate")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<bonecraft:bonelegsitem:*>])
  .addTool(hammer, 7)
  .addOutput(bone*3)
  .setExtraOutputOne(bone, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/recycling"]))
  .setName("recycle_bone_leggings")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<bonecraft:bonebootsitem:*>])
  .addTool(hammer, 4)
  .addOutput(bone*2)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/recycling"]))
  .setName("recycle_bone_boots")
  .create();


	# Tools
RecipeBuilder.get("basic")
  .setShapeless([<bonecraft:bonesworditem:*>])
  .addTool(hammer, 2)
  .addOutput(bone)
  .setExtraOutputOne(sawdust, 1.0)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/recycling"]))
  .setName("recycle_bone_sword")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<bonecraft:bonepickaxeitem:*>])
  .addTool(hammer, 3)
  .addOutput(bone)
  .setExtraOutputOne(bone, 0.5)
  .setExtraOutputTwo(sawdust, 1.0)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/recycling"]))
  .setName("recycle_bone_pickaxe")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<bonecraft:boneshovelitem:*>])
  .addTool(hammer, 1)
  .addOutput(sawdust)
  .setExtraOutputOne(bone, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/recycling"]))
  .setName("recycle_bone_shovel")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<bonecraft:bonehoeitem:*>])
  .addTool(hammer, 2)
  .addOutput(bone)
  .setExtraOutputOne(sawdust, 1.0)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/recycling"]))
  .setName("recycle_bone_hoe")
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<bonecraft:boneaxeitem:*>])
  .addTool(hammer, 3)
  .addOutput(bone)
  .setExtraOutputOne(bone, 0.5)
  .setExtraOutputTwo(sawdust, 1.0)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/recycling"]))
  .setName("recycle_bone_axe")
  .create();



# Recycle Leather Armour
// Helmet
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:leather_helmet:*>])
  .addTool(cutters, 5)
  .addOutput(leather*2)
  .setExtraOutputOne(leather, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/recycling"]))
  .setName("recycle_leather_helmet")
  .create();

// Chestplate
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:leather_chestplate:*>])
  .addTool(cutters, 8)
  .addOutput(leather*4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/recycling"]))
  .setName("recycle_leather_chestplate")
  .create();

// Leggings
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:leather_leggings:*>])
  .addTool(cutters, 7)
  .addOutput(leather*3)
  .setExtraOutputOne(leather, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/recycling"]))
  .setName("recycle_leather_leggings")
  .create();

// Boots
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:leather_boots:*>])
  .addTool(cutters, 4)
  .addOutput(leather*2)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/recycling"]))
  .setName("recycle_leather_boots")
  .create();



# Recycle Compact Machines
# Cutters use half the Spanner cost
# Spanner cost is equal to the amount of Machine Walls required (50% chance to get back catalyst, 75% for extra blocks)

// Tiny
RecipeBuilder.get("basic")
  .setShapeless([<compactmachines3:machine>])
  .addTool(cutters, 13)
  .addTool(spanner, 26)
  .addOutput(<compactmachines3:wallbreakable>*13)
  .setExtraOutputOne(<extrautils2:ingredients:1>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/recycling"]))
  .setName("recycle_machine_tiny")
  .create();

// Small
// Iron adds 5 cutter and 10 spanner cost
RecipeBuilder.get("basic")
  .setShapeless([<compactmachines3:machine:1>])
  .addTool(cutters, 18)
  .addTool(spanner, 36)
  .addOutput(<compactmachines3:wallbreakable>*13)
  .setExtraOutputOne(<minecraft:iron_block>, 0.75)
  .setExtraOutputTwo(<contenttweaker:melon_circuit>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/recycling"]))
  .setName("recycle_machine_small")
  .create();

// Normal
// Gold adds 7 cutter and 12 spanner cost
RecipeBuilder.get("basic")
  .setShapeless([<compactmachines3:machine:2>])
  .addTool(cutters, 20)
  .addTool(spanner, 38)
  .addOutput(<compactmachines3:wallbreakable>*13)
  .setExtraOutputOne(<minecraft:gold_block>, 0.75)
  .setExtraOutputTwo(<dse:components:10>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/recycling"]))
  .setName("recycle_machine_normal")
  .create();

// Large
RecipeBuilder.get("basic")
  .setShapeless([<compactmachines3:machine:3>])
  .addTool(cutters, 49)
  .addTool(spanner, 98)
  .addOutput(<compactmachines3:wallbreakable>*49)
  .setExtraOutputOne(<dse:components:11>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/recycling"]))
  .setName("recycle_machine_large")
  .create();

// Giant
// Diamond adds 15 cutter and 25 spanner cost
RecipeBuilder.get("basic")
  .setShapeless([<compactmachines3:machine:4>])
  .addTool(cutters, 64)
  .addTool(spanner, 118)
  .addOutput(<compactmachines3:wallbreakable>*49)
  .setExtraOutputOne(<minecraft:diamond_block>, 0.75)
  .setExtraOutputTwo(<dse:components:12>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/recycling"]))
  .setName("recycle_machine_giant")
  .create();

// Huge (Maximum)
// Emerald adds 20 cutter and 35 spanner cost
RecipeBuilder.get("basic")
  .setShapeless([<compactmachines3:machine:5>])
  .addTool(cutters, 69) // hehe, *nice*
  .addTool(spanner, 124)
  .addOutput(<compactmachines3:wallbreakable>*49)
  .setExtraOutputOne(<minecraft:emerald_block>, 0.75)
  .setExtraOutputTwo(<cyberware:component:3>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic", "cyborg:crafting/recycling"]))
  .setName("recycle_machine_huge")
  .create();



##############################
#		BLACKSMITH		#
##############################

// Recycle the Pouch of Unknown
RecipeBuilder.get("blacksmith")
  .setShapeless([<pouchofunknown:pouch:*>])
  .addTool(cutters, 30)
  .addOutput(leather)
  .setExtraOutputOne(leather, 0.5)
  .setExtraOutputTwo(<minecraft:gold_ingot>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:crafting/recycling"]))
  .setName("recycle_pouch_of_unknown")
  .create();

// Recycle Copper Chests
RecipeBuilder.get("blacksmith")
  .setShapeless([<ironchest:iron_chest:3>|<ironchest:wood_copper_chest_upgrade>])
  .addTool(hammer, 20)
  .addTool(cutters, 30)
  .addOutput(<thermalfoundation:material:64>*4)
  .setExtraOutputOne(sawdust*8, 1.0)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:crafting/recycling"]))
  .setName("recycle_copper_chest")
  .create();

// Recycle Iron Chests
RecipeBuilder.get("blacksmith")
  .setShapeless([<ironchest:iron_chest>|<ironchest:wood_iron_chest_upgrade>])
  .addTool(hammer, 35)
  .addTool(cutters, 50)
  .addOutput(<thermalfoundation:material>*4)
  .setExtraOutputOne(sawdust*8, 1.0)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:crafting/recycling"]))
  .setName("recycle_iron_chest")
  .create();

// Recycle Copper to Iron Chest Upgrade
RecipeBuilder.get("blacksmith")
  .setShapeless([<ironchest:copper_iron_chest_upgrade>])
  .addTool(hammer, 20)
  .addTool(cutters, 30)
  .addOutput(sawdust*8)
  .setExtraOutputOne(<minecraft:sand>*4, 0.5)
  .setExtraOutputTwo(<thermalfoundation:material:64>, 0.5)
  .setExtraOutputThree(<thermalfoundation:material>*4, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:crafting/recycling"]))
  .setName("recycle_copper_chest_upgrade")
  .create();

print("recycling.zs loaded");