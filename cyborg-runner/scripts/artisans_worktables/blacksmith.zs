# Adds recipes to the Blacksmith's Worktable(s)

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

# New Furnace Overhaul upgrade recipes
recipes.remove(<furnaceoverhaul:liquid_fuel_upgrade>);
recipes.remove(<furnaceoverhaul:efficiency_upgrade>);
recipes.remove(<furnaceoverhaul:speed_upgrade>);

// Liquid Fuel Upgrade
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<minecraft:lava_bucket>|<ceramics:clay_bucket>.withTag({fluids: {FluidName: "lava", Amount: 1000}}), <ore:ingotGold>, <minecraft:lava_bucket>|<ceramics:clay_bucket>.withTag({fluids: {FluidName: "lava", Amount: 1000}})],
    [<ore:ingotGold>, <furnaceoverhaul:blank_upgrade>, <ore:ingotGold>],
    [<minecraft:lava_bucket>|<ceramics:clay_bucket>.withTag({fluids: {FluidName: "lava", Amount: 1000}}), <ore:ingotGold>, <minecraft:lava_bucket>|<ceramics:clay_bucket>.withTag({fluids: {FluidName: "lava", Amount: 1000}})]])
  .addTool(<ore:artisansHammer>, 25)
  .addOutput(<furnaceoverhaul:liquid_fuel_upgrade>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:crafting/basic_smelting_upgrades"]))
  .setName("liquid_fuel_upgrade")
  .create();

// Efficiency Upgrade
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>],
    [<ore:dustRedstone>, <furnaceoverhaul:blank_upgrade>, <ore:dustRedstone>],
    [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]])
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansCutters>, 35)
  .addOutput(<furnaceoverhaul:efficiency_upgrade>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:crafting/basic_smelting_upgrades"]))
  .setName("efficiency_upgrade")
  .create();

// Speed Upgrade
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:dustBlaze>, <ore:dustGlowstone>, <ore:dustBlaze>],
    [<ore:dustGlowstone>, <furnaceoverhaul:blank_upgrade>, <ore:dustGlowstone>],
    [<ore:dustBlaze>, <ore:dustGlowstone>, <ore:dustBlaze>]])
  .setSecondaryIngredients([<minecraft:sugar>])
  .addTool(<ore:artisansCutters>, 30)
  .addOutput(<furnaceoverhaul:speed_upgrade>)
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:crafting/basic_smelting_upgrades"]))
  .setName("speed_upgrade")
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
    [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>],
    [<minecraft:redstone>, <contenttweaker:ring>, <minecraft:redstone>],
    [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>]])
  .addTool(<ore:artisansFile>, 3)
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



# Toilary Recipes
// Copper
RecipeBuilder.get("blacksmith")
  .setShapeless([<contenttweaker:coin_mold>, <ore:ingotCopper>, <ore:ingotCopper>])
  .setFluid(<liquid:lava> * 1000)
  .addTool(<ore:artisansHammer>, 3)
  .addTool(<ore:artisansFile>, 5)
  .addOutput(<jjcoin:copper_coin> * 3)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing"]))
  .setName("copper_toilary")
  .create();

// Silver
RecipeBuilder.get("blacksmith")
  .setShapeless([<contenttweaker:coin_mold>, <ore:ingotSilver>, <ore:ingotSilver>])
  .setFluid(<liquid:lava> * 750)
  .addTool(<ore:artisansHammer>, 5)
  .addTool(<ore:artisansFile>, 7)
  .addOutput(<jjcoin:silver_coin> * 3)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing"]))
  .setName("silver_toilary")
  .create();

// Gold
RecipeBuilder.get("blacksmith")
  .setShapeless([<contenttweaker:coin_mold>, <minecraft:gold_ingot>, <minecraft:gold_ingot>])
  .setFluid(<liquid:lava> * 500)
  .addTool(<ore:artisansHammer>, 7)
  .addTool(<ore:artisansFile>, 10)
  .addOutput(<jjcoin:gold_coin> * 3)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing"]))
  .setName("gold_toilary")
  .create();

// Platinum
RecipeBuilder.get("blacksmith")
  .setShapeless([<contenttweaker:coin_mold>, <ore:ingotPlatinum>, <ore:ingotPlatinum>])
  .setFluid(<liquid:lava> * 2000)
  .addTool(<ore:artisansHammer>, 10)
  .addTool(<ore:artisansFile>, 15)
  .addOutput(<jjcoin:diamond_coin> * 3)
  .addRequirement(FTGU.allOf(["cyborg:crafting/smithing"]))
  .setName("platinum_toilary")
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
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
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
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
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
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
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
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
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
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
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
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
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
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
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
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
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
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
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
  .addRequirement(FTGU.anyOf(["cyborg:crafting/smithing", "cyborg:technology/pristeel"]))
  .setName("pristeel_boots")
  .create();

print("blacksmith.zs loaded");