# Adds recipes to the Blacksmith's Worktables

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.FTGU;
import mods.artisanintegrations.requirement.Reskillable;
import mods.artisanintegrations.requirement.GameStages;

print("blacksmith.zs loading...");

/*
https://artisan-worktables.readthedocs.io/en/latest/recipes/gettingstarted/
https://artisan-worktables.readthedocs.io/en/latest/recipes/tools/
https://artisan-worktables.readthedocs.io/en/latest/recipes/basic/
*/
/*
# Adds recipes to use the Toilary Mold to craft Coins
// Use for the Toilary Mold
mods.extendedcrafting.TableCrafting.addShapeless(0, <jjcoin:copper_coin>*3, [<contenttweaker:coin_mold>, <minecraft:lava_bucket>, <ore:ingotCopper>, <ore:ingotCopper>]);
mods.extendedcrafting.TableCrafting.addShapeless(0, <jjcoin:silver_coin>*3, [<contenttweaker:coin_mold>, <minecraft:lava_bucket>, <ore:ingotSilver>, <ore:ingotSilver>]);
mods.extendedcrafting.TableCrafting.addShapeless(0, <jjcoin:gold_coin>*2, [<contenttweaker:coin_mold>, <minecraft:lava_bucket>, <ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]);
mods.extendedcrafting.TableCrafting.addShapeless(0, <jjcoin:diamond_coin>*5, [<contenttweaker:coin_mold>, <minecraft:lava_bucket>, <ore:ingotPlatinum>]);


// Copper Coin
RecipeBuilder.get("blacksmith")
  .setShapeless([<contenttweaker:coin_mold>, <ore:ingotCopper>, <ore:ingotCopper>])
  .setFluid(<liquid:lava> * 500)
  .addOutput(<jjcoin:copper_coin>*3)
  .addTool(<ore:artisansBeaker>, 15)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing"]))
  .setName("copper_coin")
  .create();

// Silver Coin
RecipeBuilder.get("blacksmith")
  .setShapeless([<contenttweaker:coin_mold>, <ore:ingotSilver>, <ore:ingotSilver>])
  .setFluid(<liquid:lava> * 500)
  .addOutput(<jjcoin:silver_coin>*3)
  .addTool(<ore:artisansBeaker>, 25)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing"]))
  .setName("iron_coin")
  .create();

// Gold Coin
RecipeBuilder.get("blacksmith")
  .setShapeless([<contenttweaker:coin_mold>, <ore:ingotGold>, <ore:ingotGold>])
  .setFluid(<liquid:lava> * 500)
  .addOutput(<jjcoin:gold_coin>*3)
  .addTool(<ore:artisansBeaker>, 35)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing"]))
  .setName("gold_coin")
  .create();

// Platinum Coin
RecipeBuilder.get("blacksmith")
  .setShapeless([<contenttweaker:coin_mold>, <ore:ingotPlatinum>])
  .setFluid(<liquid:lava> * 1000)
  .addOutput(<jjcoin:diamond_coin>*3)
  .addTool(<ore:artisansBeaker>, 50)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing"]))
  .setName("platinum_coin")
  .create();
*/

# New Furnace recipes
# Iron Furnace is in basic.zs
recipes.remove(<furnaceoverhaul:gold_furnace>);
recipes.remove(<furnaceoverhaul:diamond_furnace>);
recipes.remove(<furnaceoverhaul:emerald_furnace>);
recipes.remove(<furnaceoverhaul:end_furnace>);

// Gold Furnace
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <furnaceoverhaul:iron_furnace>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]])
  .addOutput(<furnaceoverhaul:gold_furnace>)
  .addTool(<ore:artisansHammer>, 35)
  .addRequirement(FTGU.allOf(["cyborg:crafting/better_smelting"]))
  .setName("gold_furnace")
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([<furnaceoverhaul:iron_furnace>, <furnaceoverhaul:gold_kit>])
  .addTool(<ore:artisansChisel>, 15)
  .addOutput(<furnaceoverhaul:gold_furnace>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/better_smelting"]))
  .setName("gold_furnace_upgrade")
  .create();

	// Kit
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<minecraft:flint>, <minecraft:gold_ingot>, <minecraft:flint>],
    [<minecraft:gold_ingot>, <furnaceoverhaul:blank_kit>, <minecraft:gold_ingot>],
    [<minecraft:flint>, <minecraft:gold_ingot>, <minecraft:flint>]])
  .addOutput(<furnaceoverhaul:gold_kit>)
  .addTool(<ore:artisansHammer>, 35)
  .addTool(<ore:artisansCutters>, 20)
  .addRequirement(FTGU.allOf(["cyborg:crafting/better_smelting"]))
  .setName("gold_kit")
  .create();

// Diamond Furnace
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],
    [<minecraft:diamond>, <furnaceoverhaul:gold_furnace>, <minecraft:diamond>],
    [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]])
  .addOutput(<furnaceoverhaul:diamond_furnace>)
  .addTool(<ore:artisansHammer>, 25)
  .addRequirement(FTGU.allOf(["cyborg:crafting/improved_smelting"]))
  .setName("diamond_furnace")
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([<furnaceoverhaul:gold_furnace>, <furnaceoverhaul:diamond_kit>])
  .addTool(<ore:artisansChisel>, 15)
  .addOutput(<furnaceoverhaul:diamond_furnace>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/improved_smelting"]))
  .setName("diamond_furnace_upgrade")
  .create();

	// Kit
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<minecraft:prismarine_shard>, <minecraft:diamond>, <minecraft:prismarine_shard>],
    [<minecraft:diamond>, <furnaceoverhaul:blank_kit>, <minecraft:diamond>],
    [<minecraft:prismarine_shard>, <minecraft:diamond>, <minecraft:prismarine_shard>]])
  .addOutput(<furnaceoverhaul:diamond_kit>)
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansCutters>, 35)
  .addRequirement(FTGU.allOf(["cyborg:crafting/improved_smelting"]))
  .setName("diamond_kit")
  .create();

// Emerald Furnace
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<minecraft:emerald>, <minecraft:emerald>, <minecraft:emerald>],
    [<minecraft:emerald>, <furnaceoverhaul:diamond_furnace>, <minecraft:emerald>],
    [<minecraft:emerald>, <minecraft:emerald>, <minecraft:emerald>]])
  .addOutput(<furnaceoverhaul:emerald_furnace>)
  .addTool(<ore:artisansHammer>, 25)
  .addRequirement(FTGU.allOf(["cyborg:crafting/improved_smelting"]))
  .setName("emerald_furnace")
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([<furnaceoverhaul:diamond_furnace>, <furnaceoverhaul:emerald_kit>])
  .addTool(<ore:artisansChisel>, 15)
  .addOutput(<furnaceoverhaul:emerald_furnace>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/improved_smelting"]))
  .setName("emerald_furnace_upgrade")
  .create();

	// Kit
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<minecraft:prismarine_shard>, <minecraft:emerald>, <minecraft:prismarine_shard>],
    [<minecraft:emerald>, <furnaceoverhaul:blank_kit>, <minecraft:emerald>],
    [<minecraft:prismarine_shard>, <minecraft:emerald>, <minecraft:prismarine_shard>]])
  .addOutput(<furnaceoverhaul:emerald_kit>)
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansCutters>, 35)
  .addRequirement(FTGU.allOf(["cyborg:crafting/improved_smelting"]))
  .setName("emerald_kit")
  .create();

// End Furnace
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<alchemistry:ingot:90>|<alchemistry:ingot:101>, <ore:endstone>, <alchemistry:ingot:90>|<alchemistry:ingot:101>],
    [<ore:endstone>, <furnaceoverhaul:diamond_furnace>, <ore:endstone>],
    [<alchemistry:ingot:90>|<alchemistry:ingot:101>, <ore:endstone>, <alchemistry:ingot:90>|<alchemistry:ingot:101>]])
  .addOutput(<furnaceoverhaul:end_furnace>)
  .addTool(<ore:artisansHammer>, 100)
  .addRequirement(FTGU.allOf(["cyborg:crafting/ultimate_smelting"]))
  .setName("end_furnace")
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([<furnaceoverhaul:diamond_furnace>, <furnaceoverhaul:emerald_kit>])
  .addTool(<ore:artisansChisel>, 25)
  .addOutput(<furnaceoverhaul:emerald_furnace>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/ultimate_smelting"]))
  .setName("end_furnace_upgrade")
  .create();

	// Kit
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<alchemistry:element:60>, <minecraft:emerald>, <alchemistry:element:60>],
    [<minecraft:emerald>, <furnaceoverhaul:blank_kit>, <minecraft:emerald>],
    [<alchemistry:element:60>, <minecraft:emerald>, <alchemistry:element:60>]])
  .addOutput(<furnaceoverhaul:end_kit>)
  .addTool(<ore:artisansHammer>, 100)
  .addTool(<ore:artisansCutters>, 85)
  .addRequirement(FTGU.allOf(["cyborg:crafting/ultimate_smelting"]))
  .setName("end_kit")
  .create();

// Alternate OB Tank recipe
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:gemDiamond>, <ore:paneGlass>, <ore:gemDiamond>],
    [<ore:paneGlass>, <ore:obsidian>, <ore:paneGlass>],
    [<ore:gemDiamond>, <ore:paneGlass>, <ore:gemDiamond>]])
  .addTool(<ore:artisansHammer>, 32)
  .addOutput(<openblocks:tank>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing"]))
  .setName("ob_tank")
  .create();

// Miner's Ring
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <projectred-core:resource_item:105>, null],
    [<projectred-core:resource_item:105>, <contenttweaker:ring>, <projectred-core:resource_item:105>],
    [null, <projectred-core:resource_item:105>, null]])
  .addTool(<ore:artisansFile>, 10)
  .addOutput(<baubles:ring>)
  .addRequirement(Reskillable.add("reskillable:mining|3"))
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing"]))
  .setName("miners_ring")
  .create();

// Convert Bitumen to Mini (Char)coal
RecipeBuilder.get("blacksmith")
  .setShapeless([<thermalfoundation:material:892>])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<minicoal:minicoal> * 8)
  .setExtraOutputOne(<minicoal:minicharcoal> * 8, 1.0)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/thermal_technology"]))
  .setName("bitumen_to_mini_coal")
  .create();

# Craft TE Alloys
// Bronze
RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotTin>])
  .setFluid(<liquid:lava> * 250)
  .addTool(<ore:artisansHammer>, 6)
  .addOutput(<thermalfoundation:material:99> * 3)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/thermal_technology"]))
  .setName("bronze_lava")
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotTin>])
  .setFluid(<liquid:pyrotheum> * 50)
  .addTool(<ore:artisansHammer>, 3)
  .addOutput(<thermalfoundation:material:99> * 3)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/thermal_technology"]))
  .setName("bronze")
  .create();

// Steel
furnace.remove(<thermalfoundation:material:160>);
recipes.remove(<thermalfoundation:material:160>);
RecipeBuilder.get("blacksmith")
  .setShapeless([<minecraft:coal>|<minecraft:coal:1>, <minecraft:coal>|<minecraft:coal:1>, <minecraft:iron_ingot>])
  .setFluid(<liquid:lava> * 1000)
  .addTool(<ore:artisansHammer>, 12)
  .addTool(<ore:artisansCutters>, 8)
  .addOutput(<thermalfoundation:material:96>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/thermal_technology"]))
  .setName("steel_lava")
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([<minecraft:coal>|<minecraft:coal:1>, <minecraft:coal>|<minecraft:coal:1>, <minecraft:iron_ingot>])
  .setFluid(<liquid:pyrotheum> * 250)
  .addTool(<ore:artisansHammer>, 12)
  .addTool(<ore:artisansCutters>, 8)
  .addOutput(<thermalfoundation:material:96>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/thermal_technology"]))
  .setName("steel")
  .create();

// Nibrock's Coal version
RecipeBuilder.get("blacksmith")
  .setShapeless([<nibrockscoal:iron_coal>, <minecraft:iron_ingot>])
  .setFluid(<liquid:lava> * 1000)
  .addTool(<ore:artisansHammer>, 12)
  .addTool(<ore:artisansCutters>, 8)
  .addOutput(<thermalfoundation:material:96>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/thermal_technology"]))
  .setName("steel_nibrock_lava")
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([<nibrockscoal:iron_coal>, <minecraft:iron_ingot>])
  .setFluid(<liquid:pyrotheum> * 125)
  .addTool(<ore:artisansHammer>, 12)
  .addTool(<ore:artisansCutters>, 8)
  .addOutput(<thermalfoundation:material:96>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/thermal_technology"]))
  .setName("steel_nibrock")
  .create();

// Electrum
RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:ingotSilver>, <minecraft:gold_ingot>])
  .setFluid(<liquid:lava> * 1500)
  .addTool(<ore:artisansHammer>, 4)
  .addTool(<ore:artisansCutters>, 1)
  .addOutput(<thermalfoundation:material:97> * 2)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/thermal_technology"]))
  .setName("electrum_lava")
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:ingotSilver>, <minecraft:gold_ingot>])
  .setFluid(<liquid:pyrotheum> * 300)
  .addTool(<ore:artisansHammer>, 4)
  .addTool(<ore:artisansCutters>, 1)
  .addOutput(<thermalfoundation:material:97> * 2)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/thermal_technology"]))
  .setName("electrum")
  .create();

// Invar
RecipeBuilder.get("blacksmith")
  .setShapeless([<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:ingotNickel>])
  .setFluid(<liquid:lava> * 1250)
  .addTool(<ore:artisansHammer>, 6)
  .addTool(<ore:artisansCutters>, 2)
  .addOutput(<thermalfoundation:material:98> * 3)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/thermal_technology"]))
  .setName("invar_lava")
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:ingotNickel>])
  .setFluid(<liquid:pyrotheum> * 250)
  .addTool(<ore:artisansHammer>, 6)
  .addTool(<ore:artisansCutters>, 2)
  .addOutput(<thermalfoundation:material:98> * 3)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/thermal_technology"]))
  .setName("invar")
  .create();

// Constantan
RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:ingotCopper>, <ore:ingotNickel>])
  .setFluid(<liquid:lava> * 500)
  .addTool(<ore:artisansHammer>, 4)
  .addTool(<ore:artisansCutters>, 1)
  .addOutput(<thermalfoundation:material:100> * 2)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/thermal_technology"]))
  .setName("constantan_lava")
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:ingotCopper>, <ore:ingotNickel>])
  .setFluid(<liquid:pyrotheum> * 100)
  .addTool(<ore:artisansHammer>, 4)
  .addTool(<ore:artisansCutters>, 1)
  .addOutput(<thermalfoundation:material:100> * 2)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/thermal_technology"]))
  .setName("constantan")
  .create();


# New recipes for Pristeel items
recipes.remove(<pristeel:pristeel_pickaxe>);
recipes.remove(<pristeel:pristeel_shovel>);
recipes.remove(<pristeel:pristeel_sword>);
recipes.remove(<pristeel:pristeel_hoe>);
recipes.remove(<pristeel:pristeel_axe>);

recipes.remove(<pristeel:pristeel_helmet>);
recipes.remove(<pristeel:pristeel_chestplate>);
recipes.remove(<pristeel:pristeel_legs>);
recipes.remove(<pristeel:pristeel_boots>);

// Pristeel Ingots
recipes.removeShapeless(<pristeel:pristeel_ingot>);
recipes.addShapeless(<pristeel:pristeel_ingot>*9, [<pristeel:pristeel_block>]);

RecipeBuilder.get("blacksmith")
  .setShapeless([<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:prismarine_shard>])
  .addTool(<ore:artisansHammer>, 5)
  .addTool(<ore:artisansCutters>, 5)
  .addOutput(<pristeel:pristeel_ingot>*2)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
  .setName("pristeel_ingot")
  .create();

// Pickaxe
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<pristeel:pristeel_ingot>, <pristeel:pristeel_ingot>, <pristeel:pristeel_ingot>],
    [null, <ore:stickWood>, null],
    [null, <ore:stickWood>, null]])
  .addTool(<ore:artisansHammer>, 3)
  .addOutput(<pristeel:pristeel_pickaxe>)
  .addRequirement(Reskillable.addAll(["reskillable:mining|5", "reskillable:agility|5"]))
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
  .setName("pristeel_pickaxe")
  .create();

// Axe
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<pristeel:pristeel_ingot>, <pristeel:pristeel_ingot>],
    [<pristeel:pristeel_ingot>, <ore:stickWood>],
    [null, <ore:stickWood>]])
  .addTool(<ore:artisansHammer>, 3)
  .addOutput(<pristeel:pristeel_axe>)
  .addRequirement(Reskillable.addAll(["reskillable:mining|5", "reskillable:agility|5"]))
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
  .setMirrored()
  .setName("pristeel_axe")
  .create();

// Shovel
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<pristeel:pristeel_ingot>],
    [<ore:stickWood>],
    [<ore:stickWood>]])
  .addTool(<ore:artisansCutters>, 1)
  .addOutput(<pristeel:pristeel_shovel>)
  .addRequirement(Reskillable.addAll(["reskillable:mining|5", "reskillable:agility|5"]))
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
  .setName("pristeel_shovel")
  .create();

// Hoe
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<pristeel:pristeel_ingot>, <pristeel:pristeel_ingot>],
    [<minecraft:stick>, null],
    [<ore:stickWood>, null]])
  .addTool(<ore:artisansCutters>, 2)
  .addOutput(<pristeel:pristeel_hoe>)
  .addRequirement(Reskillable.addAll(["reskillable:farming|5", "reskillable:agility|5"]))
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
  .setMirrored()
  .setName("pristeel_hoe")
  .create();

// Sword
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<pristeel:pristeel_ingot>],
    [<pristeel:pristeel_ingot>],
    [<ore:stickWood>]])
  .addTool(<ore:artisansHammer>, 4)
  .addOutput(<pristeel:pristeel_sword>)
  .addRequirement(Reskillable.addAll(["reskillable:attack|5", "reskillable:agility|5"]))
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
  .setName("pristeel_sword")
  .create();

	# Armour
// Helmet
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<pristeel:pristeel_ingot>, <pristeel:pristeel_ingot>, <pristeel:pristeel_ingot>],
    [<pristeel:pristeel_ingot>, null, <pristeel:pristeel_ingot>]])
  .addTool(<ore:artisansHammer>, 5)
  .addTool(<ore:artisansCutters>, 5)
  .addOutput(<pristeel:pristeel_helmet>)
  .addRequirement(Reskillable.addAll(["reskillable:defense|6", "reskillable:agility|4"]))
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
  .setName("pristeel_helmet")
  .create();

// Chestplate
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<pristeel:pristeel_ingot>, null, <pristeel:pristeel_ingot>],
    [<pristeel:pristeel_ingot>, <pristeel:pristeel_ingot>, <pristeel:pristeel_ingot>],
    [<pristeel:pristeel_ingot>, <pristeel:pristeel_ingot>, <pristeel:pristeel_ingot>]])
  .addTool(<ore:artisansHammer>, 8)
  .addTool(<ore:artisansCutters>, 8)
  .addOutput(<pristeel:pristeel_chestplate>)
  .addRequirement(Reskillable.addAll(["reskillable:defense|6", "reskillable:agility|4"]))
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
  .setName("pristeel_chestplate")
  .create();

// Leggings
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<pristeel:pristeel_ingot>, <pristeel:pristeel_ingot>, <pristeel:pristeel_ingot>],
    [<pristeel:pristeel_ingot>, null, <pristeel:pristeel_ingot>],
    [<pristeel:pristeel_ingot>, null, <pristeel:pristeel_ingot>]])
  .addTool(<ore:artisansHammer>, 7)
  .addTool(<ore:artisansCutters>, 7)
  .addOutput(<pristeel:pristeel_legs>)
  .addRequirement(Reskillable.addAll(["reskillable:defense|6", "reskillable:agility|4"]))
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
  .setName("pristeel_leggings")
  .create();

// Boots
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<pristeel:pristeel_ingot>, null, <pristeel:pristeel_ingot>],
    [<pristeel:pristeel_ingot>, null, <pristeel:pristeel_ingot>]])
  .addTool(<ore:artisansHammer>, 4)
  .addTool(<ore:artisansCutters>, 4)
  .addOutput(<pristeel:pristeel_boots>)
  .addRequirement(Reskillable.addAll(["reskillable:defense|6", "reskillable:agility|4"]))
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
  .setName("pristeel_boots")
  .create();

print("blacksmith.zs loaded");