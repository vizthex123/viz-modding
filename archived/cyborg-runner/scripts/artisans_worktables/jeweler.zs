# Adds recipes to the Jeweler's Worktable(s)

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.FTGU;

print("jeweler.zs loading...");

/*
https://artisan-worktables.readthedocs.io/en/latest/recipes/gettingstarted/
https://artisan-worktables.readthedocs.io/en/latest/recipes/tools/
https://artisan-worktables.readthedocs.io/en/latest/recipes/basic/
*/

### New recipes for Gem Gear
// Gem Cutter durability use is 2x material count
// 3x for Diamonds

val ruby = <ore:gemRuby>;
val peridot = <ore:gemPeridot>;
val sapphire = <ore:gemSapphire>;
val diamond = <ore:gemDiamond>;

val electrotine = <projectred-core:resource_item:105>;

val stone_stick = <ore:rodStone>;
val stick = <ore:stickWood>;


var gemcutter = <ore:artisansGemCutter>;


# New recipes for Ruby items
recipes.remove(<projectred-exploration:ruby_pickaxe>);
recipes.remove(<projectred-exploration:ruby_shovel>);
recipes.remove(<projectred-exploration:ruby_sword>);
recipes.remove(<projectred-exploration:ruby_hoe>);
recipes.remove(<projectred-exploration:ruby_axe>);

recipes.remove(<projectred-exploration:ruby_saw>);
recipes.remove(<projectred-exploration:ruby_sickle>);

recipes.remove(<projectred-exploration:ruby_helmet>);
recipes.remove(<projectred-exploration:ruby_chestplate>);
recipes.remove(<projectred-exploration:ruby_leggings>);
recipes.remove(<projectred-exploration:ruby_boots>);

// Pickaxe
RecipeBuilder.get("jeweler")
  .setShaped([
    [ruby, ruby, ruby],
    [null, stick, null],
    [null, stick, null]])
  .addTool(gemcutter, 6)
  .addOutput(<projectred-exploration:ruby_pickaxe>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("ruby_pickaxe")
  .create();

// Axe
RecipeBuilder.get("jeweler")
  .setShaped([
    [ruby, ruby],
    [ruby, stick],
    [null, stick]])
  .addTool(gemcutter, 6)
  .addOutput(<projectred-exploration:ruby_axe>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("ruby_axe")
  .setMirrored()
  .create();

// Shovel
RecipeBuilder.get("jeweler")
  .setShaped([
    [ruby],
    [stick],
    [stick]])
  .addTool(gemcutter, 2)
  .addOutput(<projectred-exploration:ruby_shovel>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("ruby_shovel")
  .create();

// Hoe
RecipeBuilder.get("jeweler")
  .setShaped([
    [ruby, ruby],
    [null, stick],
    [null, stick]])
  .addTool(gemcutter, 4)
  .addOutput(<projectred-exploration:ruby_hoe>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("ruby_hoe")
  .setMirrored()
  .create();

// Sword
RecipeBuilder.get("jeweler")
  .setShaped([
    [ruby],
    [ruby],
    [stick]])
  .addTool(gemcutter, 4)
  .addOutput(<projectred-exploration:ruby_sword>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("ruby_sword")
  .create();

// Saw
RecipeBuilder.get("jeweler")
  .setShaped([
    [stick, stone_stick, stone_stick],
    [stick, ruby, ruby]])
  .addTool(gemcutter, 4)
  .addOutput(<projectred-exploration:ruby_saw>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("ruby_saw")
  .create();

// Sickle
RecipeBuilder.get("jeweler")
  .setShaped([
    [null, ruby, null],
    [null, null, ruby],
	[stick, ruby, null]])
  .addTool(gemcutter, 6)
  .addOutput(<projectred-exploration:ruby_sickle>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("ruby_sickle")
  .create();

	# Armour
// Helmet
RecipeBuilder.get("jeweler")
  .setShaped([
    [ruby, ruby, ruby],
    [ruby, null, ruby]])
  .addTool(gemcutter, 10)
  .addOutput(<projectred-exploration:ruby_helmet>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("ruby_helmet")
  .create();

// Chestplate
RecipeBuilder.get("jeweler")
  .setShaped([
    [ruby, null, ruby],
    [ruby, ruby, ruby],
    [ruby, ruby, ruby]])
  .addTool(gemcutter, 16)
  .addOutput(<projectred-exploration:ruby_chestplate>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("ruby_chestplate")
  .create();

// Leggings
RecipeBuilder.get("jeweler")
  .setShaped([
    [ruby, ruby, ruby],
    [ruby, null, ruby],
    [ruby, null, ruby]])
  .addTool(gemcutter, 14)
  .addOutput(<projectred-exploration:ruby_leggings>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("ruby_leggings")
  .create();

// Boots
RecipeBuilder.get("jeweler")
  .setShaped([
    [ruby, null, ruby],
    [ruby, null, ruby]])
  .addTool(gemcutter, 8)
  .addOutput(<projectred-exploration:ruby_boots>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("ruby_boots")
  .create();



# New recipes for Peridot items
recipes.remove(<projectred-exploration:peridot_pickaxe>);
recipes.remove(<projectred-exploration:peridot_shovel>);
recipes.remove(<projectred-exploration:peridot_sword>);
recipes.remove(<projectred-exploration:peridot_hoe>);
recipes.remove(<projectred-exploration:peridot_axe>);

recipes.remove(<projectred-exploration:peridot_saw>);
recipes.remove(<projectred-exploration:peridot_sickle>);

recipes.remove(<projectred-exploration:peridot_helmet>);
recipes.remove(<projectred-exploration:peridot_chestplate>);
recipes.remove(<projectred-exploration:peridot_leggings>);
recipes.remove(<projectred-exploration:peridot_boots>);

// Pickaxe
RecipeBuilder.get("jeweler")
  .setShaped([
    [peridot, peridot, peridot],
    [null, stick, null],
    [null, stick, null]])
  .addTool(gemcutter, 6)
  .addOutput(<projectred-exploration:peridot_pickaxe>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("peridot_pickaxe")
  .create();

// Axe
RecipeBuilder.get("jeweler")
  .setShaped([
    [peridot, peridot],
    [peridot, stick],
    [null, stick]])
  .addTool(gemcutter, 6)
  .addOutput(<projectred-exploration:peridot_axe>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("peridot_axe")
  .setMirrored()
  .create();

// Shovel
RecipeBuilder.get("jeweler")
  .setShaped([
    [peridot],
    [stick],
    [stick]])
  .addTool(gemcutter, 2)
  .addOutput(<projectred-exploration:peridot_shovel>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("peridot_shovel")
  .create();

// Hoe
RecipeBuilder.get("jeweler")
  .setShaped([
    [peridot, peridot],
    [null, stick],
    [null, stick]])
  .addTool(gemcutter, 4)
  .addOutput(<projectred-exploration:peridot_hoe>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("peridot_hoe")
  .setMirrored()
  .create();

// Sword
RecipeBuilder.get("jeweler")
  .setShaped([
    [peridot],
    [peridot],
    [stick]])
  .addTool(gemcutter, 4)
  .addOutput(<projectred-exploration:peridot_sword>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("peridot_sword")
  .create();

// Saw
RecipeBuilder.get("jeweler")
  .setShaped([
    [stick, stone_stick, stone_stick],
    [stick, peridot, peridot]])
  .addTool(gemcutter, 4)
  .addOutput(<projectred-exploration:peridot_saw>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("peridot_saw")
  .create();

// Sickle
RecipeBuilder.get("jeweler")
  .setShaped([
    [null, peridot, null],
    [null, null, peridot],
	[stick, peridot, null]])
  .addTool(gemcutter, 6)
  .addOutput(<projectred-exploration:peridot_sickle>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("peridot_sickle")
  .create();

	# Armour
// Helmet
RecipeBuilder.get("jeweler")
  .setShaped([
    [peridot, peridot, peridot],
    [peridot, null, peridot]])
  .addTool(gemcutter, 10)
  .addOutput(<projectred-exploration:peridot_helmet>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("peridot_helmet")
  .create();

// Chestplate
RecipeBuilder.get("jeweler")
  .setShaped([
    [peridot, null, peridot],
    [peridot, peridot, peridot],
    [peridot, peridot, peridot]])
  .addTool(gemcutter, 16)
  .addOutput(<projectred-exploration:peridot_chestplate>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("peridot_chestplate")
  .create();

// Leggings
RecipeBuilder.get("jeweler")
  .setShaped([
    [peridot, peridot, peridot],
    [peridot, null, peridot],
    [peridot, null, peridot]])
  .addTool(gemcutter, 14)
  .addOutput(<projectred-exploration:peridot_leggings>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("peridot_leggings")
  .create();

// Boots
RecipeBuilder.get("jeweler")
  .setShaped([
    [peridot, null, peridot],
    [peridot, null, peridot]])
  .addTool(gemcutter, 8)
  .addOutput(<projectred-exploration:peridot_boots>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("peridot_boots")
  .create();



# New recipes for Sapphire items
recipes.remove(<projectred-exploration:sapphire_pickaxe>);
recipes.remove(<projectred-exploration:sapphire_shovel>);
recipes.remove(<projectred-exploration:sapphire_sword>);
recipes.remove(<projectred-exploration:sapphire_hoe>);
recipes.remove(<projectred-exploration:sapphire_axe>);

recipes.remove(<projectred-exploration:sapphire_saw>);
recipes.remove(<projectred-exploration:sapphire_sickle>);

recipes.remove(<projectred-exploration:sapphire_helmet>);
recipes.remove(<projectred-exploration:sapphire_chestplate>);
recipes.remove(<projectred-exploration:sapphire_leggings>);
recipes.remove(<projectred-exploration:sapphire_boots>);

// Pickaxe
RecipeBuilder.get("jeweler")
  .setShaped([
    [sapphire, sapphire, sapphire],
    [null, stick, null],
    [null, stick, null]])
  .addTool(gemcutter, 6)
  .addOutput(<projectred-exploration:sapphire_pickaxe>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("sapphire_pickaxe")
  .create();

// Axe
RecipeBuilder.get("jeweler")
  .setShaped([
    [sapphire, sapphire],
    [sapphire, stick],
    [null, stick]])
  .addTool(gemcutter, 6)
  .addOutput(<projectred-exploration:sapphire_axe>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("sapphire_axe")
  .setMirrored()
  .create();

// Shovel
RecipeBuilder.get("jeweler")
  .setShaped([
    [sapphire],
    [stick],
    [stick]])
  .addTool(gemcutter, 2)
  .addOutput(<projectred-exploration:sapphire_shovel>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("sapphire_shovel")
  .create();

// Hoe
RecipeBuilder.get("jeweler")
  .setShaped([
    [sapphire, sapphire],
    [null, stick],
    [null, stick]])
  .addTool(gemcutter, 4)
  .addOutput(<projectred-exploration:sapphire_hoe>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("sapphire_hoe")
  .setMirrored()
  .create();

// Sword
RecipeBuilder.get("jeweler")
  .setShaped([
    [sapphire],
    [sapphire],
    [stick]])
  .addTool(gemcutter, 4)
  .addOutput(<projectred-exploration:sapphire_sword>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("sapphire_sword")
  .create();

// Saw
RecipeBuilder.get("jeweler")
  .setShaped([
    [stick, stone_stick, stone_stick],
    [stick, sapphire, sapphire]])
  .addTool(gemcutter, 4)
  .addOutput(<projectred-exploration:sapphire_saw>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("sapphire_saw")
  .create();

// Sickle
RecipeBuilder.get("jeweler")
  .setShaped([
    [null, sapphire, null],
    [null, null, sapphire],
	[stick, sapphire, null]])
  .addTool(gemcutter, 6)
  .addOutput(<projectred-exploration:sapphire_sickle>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("sapphire_sickle")
  .create();

	# Armour
// Helmet
RecipeBuilder.get("jeweler")
  .setShaped([
    [sapphire, sapphire, sapphire],
    [sapphire, null, sapphire]])
  .addTool(gemcutter, 10)
  .addOutput(<projectred-exploration:sapphire_helmet>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("sapphire_helmet")
  .create();

// Chestplate
RecipeBuilder.get("jeweler")
  .setShaped([
    [sapphire, null, sapphire],
    [sapphire, sapphire, sapphire],
    [sapphire, sapphire, sapphire]])
  .addTool(gemcutter, 16)
  .addOutput(<projectred-exploration:sapphire_chestplate>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("sapphire_chestplate")
  .create();

// Leggings
RecipeBuilder.get("jeweler")
  .setShaped([
    [sapphire, sapphire, sapphire],
    [sapphire, null, sapphire],
    [sapphire, null, sapphire]])
  .addTool(gemcutter, 14)
  .addOutput(<projectred-exploration:sapphire_leggings>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("sapphire_leggings")
  .create();

// Boots
RecipeBuilder.get("jeweler")
  .setShaped([
    [sapphire, null, sapphire],
    [sapphire, null, sapphire]])
  .addTool(gemcutter, 8)
  .addOutput(<projectred-exploration:sapphire_boots>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("sapphire_boots")
  .create();



# New recipes for Diamond items
recipes.remove(<minecraft:diamond_pickaxe>);
recipes.remove(<minecraft:diamond_shovel>);
recipes.remove(<minecraft:diamond_sword>);
recipes.remove(<minecraft:diamond_hoe>);
recipes.remove(<minecraft:diamond_axe>);

recipes.remove(<microblockcbe:saw_diamond>);
recipes.remove(<projectred-exploration:diamond_sickle>);

recipes.remove(<minecraft:diamond_helmet>);
recipes.remove(<minecraft:diamond_chestplate>);
recipes.remove(<minecraft:diamond_leggings>);
recipes.remove(<minecraft:diamond_boots>);

// Pickaxe
RecipeBuilder.get("jeweler")
  .setShaped([
    [diamond, diamond, diamond],
    [null, stick, null],
    [null, stick, null]])
  .addTool(gemcutter, 9)
  .addOutput(<minecraft:diamond_pickaxe>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("diamond_pickaxe")
  .create();

// Axe
RecipeBuilder.get("jeweler")
  .setShaped([
    [diamond, diamond],
    [diamond, stick],
    [null, stick]])
  .addTool(gemcutter, 9)
  .addOutput(<minecraft:diamond_axe>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("diamond_axe")
  .setMirrored()
  .create();

// Shovel
RecipeBuilder.get("jeweler")
  .setShaped([
    [diamond],
    [stick],
    [stick]])
  .addTool(gemcutter, 3)
  .addOutput(<minecraft:diamond_shovel>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("diamond_shovel")
  .create();

// Hoe
RecipeBuilder.get("jeweler")
  .setShaped([
    [diamond, diamond],
    [null, stick],
    [null, stick]])
  .addTool(gemcutter, 6)
  .addOutput(<minecraft:diamond_hoe>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("diamond_hoe")
  .setMirrored()
  .create();

// Sword
RecipeBuilder.get("jeweler")
  .setShaped([
    [diamond],
    [diamond],
    [stick]])
  .addTool(gemcutter, 6)
  .addOutput(<minecraft:diamond_sword>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("diamond_sword")
  .create();


// Saw
RecipeBuilder.get("jeweler")
  .setShaped([
    [stick, stone_stick, stone_stick],
    [stick, diamond, diamond]])
  .addTool(gemcutter, 6)
  .addOutput(<microblockcbe:saw_diamond>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("diamond_saw")
  .create();

// Sickle
RecipeBuilder.get("jeweler")
  .setShaped([
    [null, diamond, null],
    [null, null, diamond],
	[stick, diamond, null]])
  .addTool(gemcutter, 9)
  .addOutput(<projectred-exploration:diamond_sickle>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("diamond_sickle")
  .create();

	# Armour
// Helmet
RecipeBuilder.get("jeweler")
  .setShaped([
    [diamond, diamond, diamond],
    [diamond, null, diamond]])
  .addTool(gemcutter, 15)
  .addOutput(<minecraft:diamond_helmet>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("diamond_helmet")
  .create();

// Chestplate
RecipeBuilder.get("jeweler")
  .setShaped([
    [diamond, null, diamond],
    [diamond, diamond, diamond],
    [diamond, diamond, diamond]])
  .addTool(gemcutter, 24)
  .addOutput(<minecraft:diamond_chestplate>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("diamond_chestplate")
  .create();

// Leggings
RecipeBuilder.get("jeweler")
  .setShaped([
    [diamond, diamond, diamond],
    [diamond, null, diamond],
    [diamond, null, diamond]])
  .addTool(gemcutter, 21)
  .addOutput(<minecraft:diamond_leggings>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("diamond_leggings")
  .create();

// Boots
RecipeBuilder.get("jeweler")
  .setShaped([
    [diamond, null, diamond],
    [diamond, null, diamond]])
  .addTool(gemcutter, 15)
  .addOutput(<minecraft:diamond_boots>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/jeweler"]))
  .setName("diamond_boots")
  .create();

print("jeweler.zs loaded");