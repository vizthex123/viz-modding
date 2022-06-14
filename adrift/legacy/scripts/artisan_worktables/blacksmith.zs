# Adds recipes to the Blacksmith's worktable/station/shop

import mods.artisanintegrations.requirement.FTGU;
import mods.artisanworktables.builder.RecipeBuilder;

print("blacksmith.zs loading...");
/*
Regular table recipes & tooltips & such are in artisan_worktables.zs

https://artisan-worktables.readthedocs.io/en/latest/recipes/gettingstarted/
https://artisan-worktables.readthedocs.io/en/latest/recipes/tools/
https://artisan-worktables.readthedocs.io/en/latest/recipes/basic/
*/

// Efficiency Meter
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <ore:gold>, null],
    [<ore:gold>, <contenttweaker:circuit>, <ore:gold>],
    [null, <ore:gold>, null]])
  .addTool(<ore:artisansHammer>, 5)
  .addOutput(<waterstrainer:efficiency_meter>)
  .addRequirement(FTGU.anyOf(["adrift:smithing/blacksmith", "adrift:technology/technology"]))
  .setName("efficiency_meter")
  .create();

// Pump
recipes.remove(<rangedpumps:pump>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<waterworks:water_pipe>, null, <waterworks:water_pipe>],
    [<waterworks:water_pipe>, <ore:tank>, <waterworks:water_pipe>],
    [<ore:stone>, <waterworks:materials>, <ore:stone>]])
  .addTool(<ore:artisansHammer>, 50)
  .addOutput(<rangedpumps:pump>)
  .addRequirement(FTGU.allOf(["adrift:technology/pumping"]))
  .setName("pump")
  .create();

// Waterworks Controller
recipes.remove(<waterworks:materials:1>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <ore:nuggetGold>, null],
    [<ore:nuggetGold>, <better_diving:wiring_kit>, <ore:nuggetGold>],
    [null, <ore:nuggetGold>, null]])
  .addTool(<ore:artisansSolderer>, 15)
  .addOutput(<waterworks:materials:1>)
  .addRequirement(FTGU.allOf(["adrift:technology/technology", "adrift:smithing/engineering"]))
  .setName("controller")
  .create();

// Waterworks Energy Adapter
recipes.remove(<waterworks:materials>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <ore:nuggetGold>, null],
    [<ore:nuggetGold>, <ore:ingotRedstoneAlloy>, <ore:nuggetGold>],
    [null, <ore:nuggetGold>, null]])
  .addTool(<ore:artisansSolderer>, 20)
  .addOutput(<waterworks:materials>)
  .addRequirement(FTGU.allOf(["adrift:technology/technology", "adrift:smithing/engineering"]))
  .setName("energy_adapter")
  .create();

// Heat Exchanger
// Another one is in engineer.zs
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <contenttweaker:iron_rod>, null],
    [<contenttweaker:iron_rod>, <ore:ingotIron>, <contenttweaker:iron_rod>],
    [null, <contenttweaker:iron_rod>, null]])
  .addTool(<ore:artisansPliers>, 8)
  .addOutput(<contenttweaker:heat_exchanger>)
  .addRequirement(FTGU.allOf(["adrift:technology/technology", "adrift:smithing/blacksmith"]))
  .setName("heat_exchanger")
  .create();

// Cheaper recipe for Iron Bars
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<contenttweaker:iron_rod>, <ore:nuggetIron>, <contenttweaker:iron_rod>],
    [<contenttweaker:iron_rod>, <ore:nuggetIron>, <contenttweaker:iron_rod>]])
  .addTool(<ore:artisansHammer>, 8)
  .addOutput(<minecraft:iron_bars> * 2)
  .setExtraOutputOne(<minecraft:iron_bars>, 0.5)
  .setExtraOutputTwo(<minecraft:iron_bars>, 0.25)
  .addRequirement(FTGU.anyOf(["adrift:technology/technology", "adrift:smithing/blacksmith"]))
  .setName("cheap_iron_bars")
  .create();

// Compressed Coal (Carbon Block)
recipes.remove(<coalprocessing:compressed_coal>);
RecipeBuilder.get("blacksmith")
  .setShapeless([<minecraft:coal_block>, <minecraft:coal_block>, <minecraft:coal_block>, <minecraft:coal_block>])
  .addTool(<ore:artisansHammer>, 96)
  .addOutput(<coalprocessing:compressed_coal>)
  .setFluid(<liquid:lava>*1000)
  .addRequirement(FTGU.allOf(["adrift:technology/diamond_crafting"]))
  .setName("carbon_block")
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([<charcoalblock:charcoal_block>, <charcoalblock:charcoal_block>])
  .addTool(<ore:artisansHammer>, 64)
  .addOutput(<coalprocessing:compressed_coal>)
  .setFluid(<liquid:lava>*2000)
  .addRequirement(FTGU.allOf(["adrift:technology/diamond_crafting"]))
  .setName("carbon_block_charcoal")
  .create();

// Proto-Emerald (Oredust) recipe
recipes.remove(<er:oredust>);
RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:blockLapis>, <ore:blockLapis>])
  .addTool(<ore:artisansHammer>, 128)
  .addOutput(<er:oredust>)
  .setExtraOutputOne(<minecraft:dye:4> * 2, 0.5)
  .addRequirement(FTGU.allOf(["adrift:technology/emerald_crafting"]))
  .setName("proto-emerald_dust")
  .create();

// Solar Heater recipe
recipes.remove(<solarfurnace:solarpack>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
    [<ore:ingotIron>, <ore:gemLapis>, <ore:ingotIron>]])
  .addTool(<ore:artisansSolderer>, 5)
  .addOutput(<solarfurnace:solarpack>)
  .addRequirement(FTGU.allOf(["adrift:technology/solar_furnace"]))
  .setName("solar_heater")
  .create();

// Solar Furnace recipe
recipes.remove(<solarfurnace:solarfurnace>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <ore:paneGlass>, null],
    [<ore:nuggetIron>, <solarfurnace:solarpack>, <ore:nuggetIron>],
    [<ore:ingotIron>, <minecraft:furnace>, <ore:ingotIron>]])
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<solarfurnace:solarfurnace>)
  .addRequirement(FTGU.allOf(["adrift:technology/solar_furnace"]))
  .setName("solar_furnace")
  .create();


// Solar Cell recipes
recipes.remove(<worsesolars:solar_cell>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:gemLapis>, <ore:paneGlass>, <ore:gemLapis>],
    [<ore:nuggetGold>, <ore:gold>, <ore:nuggetGold>]])
  .addTool(<ore:artisansSolderer>, 5)
  .addOutput(<worsesolars:solar_cell>)
  .addRequirement(FTGU.allOf(["adrift:technology/solar_power"]))
  .setName("solar_cell_pane")
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:gemLapis>, <ore:blockGlass>, <ore:gemLapis>],
    [<ore:nuggetGold>, <ore:gold>, <ore:nuggetGold>]])
  .addTool(<ore:artisansSolderer>, 12)
  .addOutput(<worsesolars:solar_cell>)
  .addRequirement(FTGU.allOf(["adrift:technology/solar_power"]))
  .setName("solar_cell_block")
  .create();

// Crude Solar Panel
# Repair recipe is in engineer.zs
recipes.remove(<worsesolars:worse_solar_panel>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <worsesolars:solar_cell>, null],
    [<worsesolars:solar_cell>, <better_diving:wiring_kit>, <worsesolars:solar_cell>],
    [<ore:dustRedstone>, <ore:blockIron>, <ore:dustRedstone>]])
  .addTool(<ore:artisansSolderer>, 20)
  .addOutput(<worsesolars:worse_solar_panel>)
  .addRequirement(FTGU.allOf(["adrift:technology/solar_power"]))
  .setName("crude_solar_panel")
  .create();

// Blaze Powder alt recipe
RecipeBuilder.get("blacksmith")
  .setShapeless([<minecraft:blaze_rod>])
  .addTool(<ore:artisansHammer>, 6)
  .addOutput(<minecraft:blaze_powder> * 4)
  .addRequirement(FTGU.allOf(["adrift:smithing/powder"]))
  .setName("powder")
  .create();


############################################
### New recipes for Modular Machines content ###
# Some of them might be in engineer.zs, if so there will be a comment saying so.
recipes.remove(<modularmachinery:blockcasing>);
recipes.remove(<modularmachinery:blockcasing:1>);
recipes.remove(<modularmachinery:blockcasing:2>);
recipes.remove(<modularmachinery:blockcasing:4>);
recipes.remove(<modularmachinery:blockcontroller>);
recipes.remove(<modularmachinery:blockenergyinputhatch>);
recipes.remove(<modularmachinery:blockenergyinputhatch:1>);
recipes.remove(<modularmachinery:blockenergyinputhatch:2>);

// Alternate Modularium recipe
RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:titanium>, <ore:gold>, <ore:copper>, <ore:lead>, <ore:silver>, <ore:ingotIron>])
  .addTool(<ore:artisansHammer>, 12)
  .addOutput(<modularmachinery:itemmodularium> * 3)
  .addRequirement(FTGU.anyOf(["adrift:technology/modular_machinery", "adrift:smithing/blacksmith"]))
  .setName("modularium")
  .create();

// Machine Casing
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <modularmachinery:itemmodularium>, null],
    [<modularmachinery:itemmodularium>, <ore:stone>, <modularmachinery:itemmodularium>],
    [null, <modularmachinery:itemmodularium>, null]])
  .addTool(<ore:artisansHammer>, 8)
  .addOutput(<modularmachinery:blockcasing> * 4)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("machine_casing")
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <modularmachinery:itemmodularium>, null],
    [<modularmachinery:itemmodularium>, <ore:sediment>, <modularmachinery:itemmodularium>],
    [null, <modularmachinery:itemmodularium>, null]])
  .addTool(<ore:artisansHammer>, 12)
  .addOutput(<modularmachinery:blockcasing> * 4)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("machine_casing_sediment")
  .create();

// Firebox Casing
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:dustRedstone>, <minecraft:flint>, <ore:dustRedstone>],
    [<modularmachinery:blockcasing>, null, <modularmachinery:blockcasing>],
    [<ore:dustRedstone>, <ore:ingotIron>, <ore:dustRedstone>]])
  .addTool(<ore:artisansPliers>, 8)
  .addTool(<ore:artisansHammer>, 5)
  .addOutput(<modularmachinery:blockcasing:2> * 2)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("firebox_casing")
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:copper>, <minecraft:flint>, <ore:copper>],
    [<modularmachinery:blockcasing>, null, <modularmachinery:blockcasing>],
    [<ore:copper>, <ore:ingotIron>, <ore:copper>]])
  .addTool(<ore:artisansPliers>, 16)
  .addTool(<ore:artisansHammer>, 10)
  .setSecondaryIngredients([<ore:silver>|<ore:gold>])
  .addOutput(<modularmachinery:blockcasing:2> * 2)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("firebox_casing_copper")
  .create();


// Machine Gearbox
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <modularmachinery:blockcasing>, null],
    [<modularmachinery:blockcasing>, <enderio:item_material:11>, <modularmachinery:blockcasing>],
    [null, <modularmachinery:blockcasing>, null]])
  .addTool(<ore:artisansPliers>, 25)
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<modularmachinery:blockcasing:3>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("machine_gearbox")
  .create();

// Reinforced Casing
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:obsidian>, <modularmachinery:blockcasing>, <ore:obsidian>],
    [<modularmachinery:blockcasing>, null, <modularmachinery:blockcasing>],
    [<ore:obsidian>, <modularmachinery:blockcasing>, <ore:obsidian>]])
  .addTool(<ore:artisansHammer>, 15)
  .addTool(<ore:artisansGemCutter>, 45)
  .addOutput(<modularmachinery:blockcasing:4> * 4)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery", "adrift:survival/jeweler"]))
  .setName("reinforced_casing")
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:obsidian>, <modularmachinery:blockcasing>, <ore:obsidian>],
    [<modularmachinery:blockcasing>, null, <modularmachinery:blockcasing>],
    [<ore:obsidian>, <modularmachinery:blockcasing>, <ore:obsidian>]])
  .setSecondaryIngredients([<modularmachinery:blockcasing> * 4, <ore:obsidian> * 4])
  .addTool(<ore:artisansHammer>, 12)
  .addTool(<ore:artisansGemCutter>, 30)
  .addOutput(<modularmachinery:blockcasing:4> * 8)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery", "adrift:survival/jeweler"]))
  .setName("reinforced_casing_mass")
  .create();

// Machine Controller
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <ore:copper>, null],
    [<ore:dustRedstone>, <modularmachinery:blockcasing>, <ore:dustRedstone>],
    [<ore:gold>, <better_diving:wiring_kit>, <ore:gold>]])
  .addTool(<ore:artisansSolderer>, 15)
  .addOutput(<modularmachinery:blockcontroller>)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("machine_controller")
  .create();

# Input & Output Buses/Hatches are in modular_machine_in_outs.zs!


### New recipes for Pristeel items
# Durability: 2x piece req
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
RecipeBuilder.get("blacksmith")
  .setShapeless([<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:prismarine_shard>, <minecraft:prismarine_shard>])
  .addTool(<ore:artisansHammer>, 5)
  .addOutput(<pristeel:pristeel_ingot>*4)
  .addRequirement(FTGU.allOf(["adrift:smithing/pristeel_gear"]))
  .setName("pristeel_ingot")
  .create();

// Sword
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<pristeel:pristeel_ingot>],
    [<pristeel:pristeel_ingot>],
    [<ore:stickWood>|<contenttweaker:iron_rod>]])
  .addTool(<ore:artisansHammer>, 4)
  .addOutput(<pristeel:pristeel_sword>)
  .addRequirement(FTGU.allOf(["adrift:smithing/pristeel_gear"]))
  .setName("pristeel_sword")
  .create();

// Pickaxe
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<pristeel:pristeel_ingot>, <pristeel:pristeel_ingot>, <pristeel:pristeel_ingot>],
    [null, <contenttweaker:iron_rod>, null],
    [null, <ore:stickWood>, null]])
  .addTool(<ore:artisansHammer>, 6)
  .addOutput(<pristeel:pristeel_pickaxe>)
  .addRequirement(FTGU.allOf(["adrift:smithing/pristeel_gear"]))
  .setName("pristeel_pickaxe")
  .create();

// Axe
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<pristeel:pristeel_ingot>, <pristeel:pristeel_ingot>],
    [<pristeel:pristeel_ingot>, <contenttweaker:iron_rod>],
    [null, <ore:stickWood>]])
  .addTool(<ore:artisansHammer>, 6)
  .addOutput(<pristeel:pristeel_axe>)
  .addRequirement(FTGU.allOf(["adrift:smithing/pristeel_gear"]))
  .setMirrored()
  .setName("pristeel_axe")
  .create();

// Shovel
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<pristeel:pristeel_ingot>],
    [<contenttweaker:iron_rod>],
    [<ore:stickWood>]])
  .addTool(<ore:artisansCutters>, 2)
  .addOutput(<pristeel:pristeel_shovel>)
  .addRequirement(FTGU.allOf(["adrift:smithing/pristeel_gear"]))
  .setName("pristeel_spade")
  .create();

// Hoe
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<pristeel:pristeel_ingot>, <pristeel:pristeel_ingot>],
    [null, <contenttweaker:iron_rod>],
    [null, <ore:stickWood>]])
  .addTool(<ore:artisansCutters>, 4)
  .addOutput(<pristeel:pristeel_hoe>)
  .addRequirement(FTGU.allOf(["adrift:smithing/pristeel_gear"]))
  .setMirrored()
  .setName("pristeel_hoe")
  .create();


	# Armour
// Helmet
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<pristeel:pristeel_ingot>, <pristeel:pristeel_ingot>, <pristeel:pristeel_ingot>],
    [<pristeel:pristeel_ingot>, null, <pristeel:pristeel_ingot>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<pristeel:pristeel_helmet>)
  .addRequirement(FTGU.allOf(["adrift:smithing/pristeel_gear"]))
  .setName("pristeel_helmet")
  .create();

// Chestplate
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<pristeel:pristeel_ingot>, null, <pristeel:pristeel_ingot>],
    [<pristeel:pristeel_ingot>, <pristeel:pristeel_ingot>, <pristeel:pristeel_ingot>],
    [<pristeel:pristeel_ingot>, <pristeel:pristeel_ingot>, <pristeel:pristeel_ingot>]])
  .addTool(<ore:artisansHammer>, 16)
  .addOutput(<pristeel:pristeel_chestplate>)
  .addRequirement(FTGU.allOf(["adrift:smithing/pristeel_gear"]))
  .setName("pristeel_chestplate")
  .create();

// Leggings
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<pristeel:pristeel_ingot>, <pristeel:pristeel_ingot>, <pristeel:pristeel_ingot>],
    [<pristeel:pristeel_ingot>, null, <pristeel:pristeel_ingot>],
    [<pristeel:pristeel_ingot>, null, <pristeel:pristeel_ingot>]])
  .addTool(<ore:artisansHammer>, 14)
  .addOutput(<pristeel:pristeel_legs>)
  .addRequirement(FTGU.allOf(["adrift:smithing/pristeel_gear"]))
  .setName("pristeel_leggings")
  .create();

// Boots
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<pristeel:pristeel_ingot>, null, <pristeel:pristeel_ingot>],
    [<pristeel:pristeel_ingot>, null, <pristeel:pristeel_ingot>]])
  .addTool(<ore:artisansHammer>, 8)
  .addOutput(<pristeel:pristeel_boots>)
  .addRequirement(FTGU.allOf(["adrift:smithing/pristeel_gear"]))
  .setName("pristeel_boots")
  .create();


### New recipes for iron tools & armour
# Durability: 1x piece req
recipes.remove(<minecraft:iron_sword>);
recipes.remove(<minecraft:iron_pickaxe>);
recipes.remove(<minecraft:iron_shovel>);
recipes.remove(<minecraft:iron_hoe>);
recipes.remove(<minecraft:iron_axe>);

recipes.remove(<minecraft:iron_helmet>);
recipes.remove(<minecraft:iron_chestplate>);
recipes.remove(<minecraft:iron_leggings>);
recipes.remove(<minecraft:iron_boots>);

// Sword
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:ingotIron>],
    [<ore:ingotIron>],
    [<ore:stickWood>]])
  .addTool(<ore:artisansHammer>, 2)
  .addOutput(<minecraft:iron_sword>)
  .addRequirement(FTGU.allOf(["adrift:smithing/iron_gear"]))
  .setName("iron_sword")
  .create();

// Pickaxe
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
    [null, <ore:stickWood>, null],
    [null, <ore:stickWood>, null]])
  .addTool(<ore:artisansHammer>, 3)
  .addOutput(<minecraft:iron_pickaxe>)
  .addRequirement(FTGU.allOf(["adrift:smithing/iron_gear"]))
  .setName("iron_pickaxe")
  .create();

// Shovel
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:ingotIron>],
    [<ore:stickWood>],
    [<ore:stickWood>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<minecraft:iron_shovel>)
  .addRequirement(FTGU.allOf(["adrift:smithing/iron_gear"]))
  .setName("iron_spade")
  .create();

// Hoe
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:ingotIron>, <ore:ingotIron>],
    [null, <ore:stickWood>],
    [null, <ore:stickWood>]])
  .addTool(<ore:artisansHammer>, 2)
  .addOutput(<minecraft:iron_hoe>)
  .addRequirement(FTGU.allOf(["adrift:smithing/iron_gear"]))
  .setMirrored()
  .setName("iron_hoe")
  .create();

// Axe
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:ingotIron>, <ore:ingotIron>],
    [<ore:ingotIron>, <ore:stickWood>],
    [null, <ore:stickWood>]])
  .addTool(<ore:artisansHammer>, 3)
  .addOutput(<minecraft:iron_axe>)
  .addRequirement(FTGU.allOf(["adrift:smithing/iron_gear"]))
  .setMirrored()
  .setName("iron_axe")
  .create();

	# Armour
// Helmet
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
    [<ore:ingotIron>, null, <ore:ingotIron>]])
  .addTool(<ore:artisansHammer>, 5)
  .addOutput(<minecraft:iron_helmet>)
  .addRequirement(FTGU.allOf(["adrift:smithing/iron_gear"]))
  .setName("iron_helmet")
  .create();

// Chestplate
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:ingotIron>, null, <ore:ingotIron>],
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]])
  .addTool(<ore:artisansHammer>, 8)
  .addOutput(<minecraft:iron_chestplate>)
  .addRequirement(FTGU.allOf(["adrift:smithing/iron_gear"]))
  .setName("iron_chestplate")
  .create();

// Leggings
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
    [<ore:ingotIron>, null, <ore:ingotIron>],
    [<ore:ingotIron>, null, <ore:ingotIron>]])
  .addTool(<ore:artisansHammer>, 7)
  .addOutput(<minecraft:iron_leggings>)
  .addRequirement(FTGU.allOf(["adrift:smithing/iron_gear"]))
  .setName("iron_leggings")
  .create();

// Boots
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:ingotIron>, null, <ore:ingotIron>],
    [<ore:ingotIron>, null, <ore:ingotIron>]])
  .addTool(<ore:artisansHammer>, 4)
  .addOutput(<minecraft:iron_boots>)
  .addRequirement(FTGU.allOf(["adrift:smithing/iron_gear"]))
  .setName("iron_boots")
  .create();


// Chain Links
recipes.remove(<clmodcev:chain_link>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <ore:nuggetIron>, null],
    [<ore:nuggetIron>, null, <ore:nuggetIron>],
    [null, <ore:nuggetIron>, null]])
  .addTool(<ore:artisansHammer>, 2)
  .addOutput(<clmodcev:chain_link>)
  .addRequirement(FTGU.anyOf(["adrift:survival/chainmail", "adrift:survival/studded_armour"]))
  .setName("chain_links")
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <ore:ingotIron>, null],
    [<ore:ingotIron>, null, <ore:ingotIron>],
    [null, <ore:ingotIron>, null]])
  .addTool(<ore:artisansHammer>, 32)
  .addOutput(<clmodcev:chain_link> * 16)
  .addRequirement(FTGU.anyOf(["adrift:survival/chainmail", "adrift:survival/studded_armour"]))
  .setName("chain_links_mass")
  .create();


### New recipes for Neptunium gear
# Durability: 5x material req
recipes.remove(<aquaculture:neptunium_helmet>);
recipes.remove(<aquaculture:neptunium_chestplate>);
recipes.remove(<aquaculture:neptunium_leggings>);
recipes.remove(<aquaculture:neptunium_boots>);

# Armour
// Helmet
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<aquaculture:loot:1>, <aquaculture:loot:1>, <aquaculture:loot:1>],
    [<aquaculture:loot:1>, null, <aquaculture:loot:1>]])
  .addTool(<ore:artisansHammer>, 25)
  .addOutput(<aquaculture:neptunium_helmet>)
  .addRequirement(FTGU.allOf(["adrift:smithing/neptunium_gear"]))
  .setName("neptunium_helmet")
  .create();

// Chestplate
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<aquaculture:loot:1>, null, <aquaculture:loot:1>],
    [<aquaculture:loot:1>, <aquaculture:loot:1>, <aquaculture:loot:1>],
    [<aquaculture:loot:1>, <aquaculture:loot:1>, <aquaculture:loot:1>]])
  .addTool(<ore:artisansHammer>, 40)
  .addOutput(<aquaculture:neptunium_chestplate>)
  .addRequirement(FTGU.allOf(["adrift:smithing/neptunium_gear"]))
  .setName("neptunium_chestplate")
  .create();

// Leggings
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<aquaculture:loot:1>, <aquaculture:loot:1>, <aquaculture:loot:1>],
    [<aquaculture:loot:1>, null, <aquaculture:loot:1>],
    [<aquaculture:loot:1>, null, <aquaculture:loot:1>]])
  .addTool(<ore:artisansHammer>, 35)
  .addOutput(<aquaculture:neptunium_leggings>)
  .addRequirement(FTGU.allOf(["adrift:smithing/neptunium_gear"]))
  .setName("neptunium_leggings")
  .create();

// Boots
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<aquaculture:loot:1>, null, <aquaculture:loot:1>],
    [<aquaculture:loot:1>, null, <aquaculture:loot:1>]])
  .addTool(<ore:artisansHammer>, 20)
  .addOutput(<aquaculture:neptunium_boots>)
  .addRequirement(FTGU.allOf(["adrift:smithing/neptunium_gear"]))
  .setName("neptunium_boots")
  .create();

# Tools
recipes.remove(<aquaculture:neptunium_sword>);
recipes.remove(<aquaculture:neptunium_pickaxe>);
recipes.remove(<aquaculture:neptunium_shovel>);
recipes.remove(<aquaculture:neptunium_hoe>);
recipes.remove(<aquaculture:neptunium_axe>);

// Sword
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<aquaculture:loot:1>],
    [<aquaculture:loot:1>],
    [<contenttweaker:iron_rod>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<aquaculture:neptunium_sword>)
  .addRequirement(FTGU.allOf(["adrift:smithing/neptunium_gear"]))
  .setName("neptunium_sword")
  .create();

// Pickaxe
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<aquaculture:loot:1>, <aquaculture:loot:1>, <aquaculture:loot:1>],
    [null, <contenttweaker:iron_rod>, null],
    [null, <contenttweaker:iron_rod>, null]])
  .addTool(<ore:artisansHammer>, 15)
  .addOutput(<aquaculture:neptunium_pickaxe>)
  .addRequirement(FTGU.allOf(["adrift:smithing/neptunium_gear"]))
  .setName("neptunium_pickaxe")
  .create();

// Shovel
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<aquaculture:loot:1>],
    [<contenttweaker:iron_rod>],
    [<contenttweaker:iron_rod>]])
  .addTool(<ore:artisansHammer>, 5)
  .addOutput(<aquaculture:neptunium_shovel>)
  .addRequirement(FTGU.allOf(["adrift:smithing/neptunium_gear"]))
  .setName("neptunium_spade")
  .create();

// Hoe
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<aquaculture:loot:1>, <aquaculture:loot:1>],
    [null, <contenttweaker:iron_rod>],
    [null, <contenttweaker:iron_rod>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<aquaculture:neptunium_hoe>)
  .addRequirement(FTGU.allOf(["adrift:smithing/neptunium_gear"]))
  .setName("neptunium_hoe")
  .setMirrored()
  .create();

// Axe
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<aquaculture:loot:1>, <aquaculture:loot:1>],
    [<aquaculture:loot:1>, <contenttweaker:iron_rod>],
    [null, <contenttweaker:iron_rod>]])
  .addTool(<ore:artisansHammer>, 15)
  .addOutput(<aquaculture:neptunium_axe>)
  .addRequirement(FTGU.allOf(["adrift:smithing/neptunium_gear"]))
  .setName("neptunium_axe")
  .setMirrored()
  .create();


# Diving Gear recipes
// Helmet
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:ingotConstructionAlloy>, <ore:ingotConstructionAlloy>, <ore:ingotConstructionAlloy>],
    [<ore:ingotConstructionAlloy>, null, <ore:ingotConstructionAlloy>]])
  .addTool(<ore:artisansHammer>, 10)
  .addTool(<ore:artisansSpanner>, 5)
  .setSecondaryIngredients([<better_diving:reinforced_diving_mask>])
  .addOutput(<shipwrecks_winslow:diving_helmet>)
  .addRequirement(FTGU.allOf(["adrift:survival/diving_gear"]))
  .setName("diving_helmet")
  .create();

// Chestplate
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:ingotConstructionAlloy>, null, <ore:ingotConstructionAlloy>],
    [<ore:ingotConstructionAlloy>, <ore:ingotConstructionAlloy>, <ore:ingotConstructionAlloy>],
    [<ore:ingotConstructionAlloy>, <ore:ingotConstructionAlloy>, <ore:ingotConstructionAlloy>]])
  .addTool(<ore:artisansHammer>, 16)
  .addTool(<ore:artisansSpanner>, 8)
  .setSecondaryIngredients([<better_diving:reinforced_o2_tank>.withTag({"better_diving:oxygen": 1200})])
  .addOutput(<shipwrecks_winslow:diving_chest>)
  .addRequirement(FTGU.allOf(["adrift:survival/diving_gear"]))
  .setName("diving_chestplate")
  .create();

// Leggings
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:ingotConstructionAlloy>, <ore:ingotConstructionAlloy>, <ore:ingotConstructionAlloy>],
    [<ore:ingotConstructionAlloy>, null, <ore:ingotConstructionAlloy>],
    [<ore:ingotConstructionAlloy>, null, <ore:ingotConstructionAlloy>]])
  .addTool(<ore:artisansHammer>, 14)
  .addTool(<ore:artisansSpanner>, 7)
  .setSecondaryIngredients([<better_diving:reinforced_wetsuit_leggings>])
  .addOutput(<shipwrecks_winslow:diving_legs>)
  .addRequirement(FTGU.allOf(["adrift:survival/diving_gear"]))
  .setName("diving_leggings")
  .create();

// Boots
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:ingotConstructionAlloy>, null, <ore:ingotConstructionAlloy>],
    [<ore:ingotConstructionAlloy>, null, <ore:ingotConstructionAlloy>]])
  .addTool(<ore:artisansHammer>, 8)
  .addTool(<ore:artisansSpanner>, 4)
  .setSecondaryIngredients([<better_diving:reinforced_fins>])
  .addOutput(<shipwrecks_winslow:diving_boots>)
  .addRequirement(FTGU.allOf(["adrift:survival/diving_gear"]))
  .setName("diving_boots")
  .create();

print("blacksmith.zs loaded");