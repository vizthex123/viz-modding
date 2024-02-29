# Adds recipes to the Engineer's Worktables
# Most of them are in OpenModularTurrets.zs

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.GameStages;
import mods.artisanintegrations.requirement.FTGU;

print("engineer.zs loading...");

/*
https://artisan-worktables.readthedocs.io/en/latest/recipes/gettingstarted/
https://artisan-worktables.readthedocs.io/en/latest/recipes/tools/
https://artisan-worktables.readthedocs.io/en/latest/recipes/basic/
*/

val iron = <minecraft:iron_ingot>;
val gold = <minecraft:gold_ingot>;

var diamond = <minecraft:diamond>;
val electrotine = <projectred-core:resource_item:105>;

val obsidian = <minecraft:obsidian>;
val glacidite = <glacidus:glacidite_fragment>;
var pulsaton = <contenttweaker:pulsaton_sliver>;


var hammer = <ore:artisansHammer>;
var cutters = <ore:artisansCutters>;
var burner = <ore:artisansBurner>;

var pliers = <ore:artisansPliers>;
var solderer = <ore:artisansSolderer>;
var spanner = <ore:artisansSpanner>;

// Long Fall Boots
recipes.remove(<longfallboots:longfallboots>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<cyberware:leg_upgrades:1>|<cyberware:leg_upgrades:1>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}), null, <cyberware:leg_upgrades:1>|<cyberware:leg_upgrades:1>.withTag({cyberwareQuality: "cyberware.quality.scavenged"})],
    [obsidian, null, obsidian],
    [diamond, null, diamond]])
  .addTool(cutters, 15)
  .addTool(spanner, 35)
  .setSecondaryIngredients([iron*2])
  .addOutput(<longfallboots:longfallboots>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering"]))
  .setName("long_fall_boots")
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<cyberware:bone_upgrades:1>|<cyberware:bone_upgrades:1>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}), null, <cyberware:bone_upgrades:1>|<cyberware:bone_upgrades:1>.withTag({cyberwareQuality: "cyberware.quality.scavenged"})],
    [obsidian, null, obsidian],
    [diamond, null, diamond]])
  .addTool(cutters, 25)
  .addTool(spanner, 50)
  .setSecondaryIngredients([iron*2, <glacidus:residuum>*4])
  .addOutput(<longfallboots:longfallboots>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering"]))
  .setName("long_fall_boots_citrate")
  .create();



### Craftable augments
var fluxgem = <redstonearsenal:material:160>;
var fluxtrum = <redstonearsenal:material:32>;
var electrum = <thermalfoundation:material:161>;

// Fix up your Solarskin
RecipeBuilder.get("engineer")
  .setShapeless([<contenttweaker:damaged_solarskin>, <ore:slimeball>, <minecraft:glowstone_dust>, electrotine])
  .addTool(solderer, 3)
  .addOutput(<cyberware:skin_upgrades>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}))
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering"]))
  .setName("solarskin")
  .create();

// Craftable Targeted Immunosuppressant
RecipeBuilder.get("engineer")
  .setShaped([
    [<cyberware:bone_upgrades:2>.withTag({cyberwareQuality: "cyberware.quality.scavenged"})|<cyberware:bone_upgrades:2>, <vulcanite:vulcanite_ingot>, <cyberware:bone_upgrades:2>.withTag({cyberwareQuality: "cyberware.quality.scavenged"})|<cyberware:bone_upgrades:2>],
    [glacidite, <cyberware:body_part:2>|<cyberware:body_part:3>|<cyberware:body_part:6>, glacidite],
    [fluxgem, <vulcanite:vulcanite_ingot>, fluxgem]])
  .setSecondaryIngredients([pulsaton*32, fluxtrum*3])
  .addTool(pliers, 250)
  .addTool(solderer, 500)
  .addOutput(<cyberware:skin_upgrades:3>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}))
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/thermal_tools"]))
  .setName("immunosuppressant")
  .create();

// Craftable Cranial Broadcaster
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <xnet:antenna>, null],
	[electrum, <cyberware:beacon>, electrum],
	[fluxgem, <cyberware:body_part:1>, fluxgem]])
  .setSecondaryIngredients([pulsaton*2])
  .addTool(pliers, 100)
  .addTool(solderer, 250)
  .addOutput(<cyberware:brain_upgrades:5>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}))
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/thermal_tools"]))
  .setName("cranial_broadcaster")
  .create();

// Craftable Reinforced Fist
RecipeBuilder.get("engineer")
  .setShaped([
    [null, electrum, electrum],
	[<ore:rodStone>, <cyberware:body_part:8>|<cyberware:body_part:9>|<rewired:necrolimb>|<rewired:necrolimb:1>, electrum],
	[null, electrum, electrum]])
  .setSecondaryIngredients([pulsaton*3])
  .addTool(pliers, 75)
  .addTool(solderer, 135)
  .addOutput(<cyberware:hand_upgrades:2>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}))
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/thermal_tools"]))
  .setName("reinforced_fist")
  .setMirrored()
  .create();

// Craftable Liver Filter
RecipeBuilder.get("engineer")
  .setShaped([
    [pulsaton, pulsaton, null],
	[electrum, electrum, electrum],
	[fluxtrum, <ore:rodStone>, null]])
  .setSecondaryIngredients([pulsaton*4])
  .addTool(pliers, 75)
  .addTool(solderer, 150)
  .addOutput(<cyberware:lower_organs_upgrades>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}))
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/thermal_tools"]))
  .setName("liver_filter")
  .setMirrored()
  .create();



// Cybernetics Scanner
recipes.remove(<cyberware:scanner>);
RecipeBuilder.get("engineer")
  .setShaped([
    [iron, <cyberware:body_part>, iron],
    [iron, diamond, iron],
    [iron, gold, iron]])
  .addTool(pliers, 100)
  .addTool(spanner, 75)
  .setSecondaryIngredients([<cyberware:body_part>, <glacidus:residuum>*3])
  .addOutput(<cyberware:scanner>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/technology"]))
  .setName("cyber_scanner_human")
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [iron, <cyberware:cybereyes>.withTag({cyberwareQuality: "cyberware.quality.scavenged"})|<cyberware:cybereyes>, iron],
    [iron, diamond, iron],
    [iron, gold, iron]])
  .addTool(pliers, 50)
  .addOutput(<cyberware:scanner>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/technology"]))
  .setName("cyber_scanner")
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [iron, <scannable:scanner:*>, iron],
    [iron, diamond, iron],
    [iron, gold, iron]])
  .addTool(pliers, 50)
  .addTool(spanner, 35)
  .addOutput(<cyberware:scanner>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:survival/scanning", "cyborg:technology/technology"]))
  .setName("cyber_scanner_scannable")
  .create();

// Servos with Electrotine
RecipeBuilder.get("engineer")
  .setShaped([
    [null, electrotine,  null],
    [electrotine, iron, electrotine],
    [null, electrotine,  null]])
  .addTool(spanner, 8)
  .addOutput(<thermalfoundation:material:512>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/thermal_technology"]))
  .setName("electrotine_servo")
  .create();

// Tesseract
recipes.remove(<tesseract:tesseract>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotEnderium>, <ore:blockGlassHardened>, <ore:ingotEnderium>],
    [<ore:blockGlassHardened>, <thermalexpansion:frame>, <ore:blockGlassHardened>],
    [<ore:ingotEnderium>, <ore:blockGlassHardened>, <ore:ingotEnderium>]])
  .addTool(solderer, 125)
  .addTool(spanner, 35)
  .addOutput(<tesseract:tesseract>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/thermal_technology"]))
  .setName("tesseract")
  .create();

// Upgrade Crusher into a Pulverizer
RecipeBuilder.get("engineer")
  .setShaped([
    [null, electrotine, null],
    [<glacidus:opesium>, <extrautils2:machine>.withTag({Type: "extrautils2:crusher"}), <glacidus:opesium>],
    [<thermalfoundation:material:256>, <thermalfoundation:material:513>, <thermalfoundation:material:256>]])
  .setSecondaryIngredients([<extrautils2:decorativeglass:5>*2])
  .addTool(pliers, 35)
  .addTool(solderer, 50)
  .addOutput(<thermalexpansion:machine:1>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/thermal_technology"]))
  .setName("pulverizer")
  .create();

// Upgrade Furnace Overhaul and EU Furnaces into a Redstone Furnace
RecipeBuilder.get("engineer")
  .setShaped([
    [null, electrotine, null],
    [<glacidus:opesium>, <furnaceoverhaul:diamond_furnace>|<furnaceoverhaul:emerald_furnace>|<furnaceoverhaul:end_furnace>, <glacidus:opesium>],
    [<thermalfoundation:material:256>, <thermalfoundation:material:513>, <thermalfoundation:material:256>]])
  .setSecondaryIngredients([pulsaton*4])
  .addTool(pliers, 65)
  .addTool(solderer, 100)
  .addOutput(<thermalexpansion:machine>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/thermal_technology"]))
  .setName("redstone_furnace")
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [null, electrotine, null],
    [<extrautils2:decorativeglass:5>, <extrautils2:machine>.withTag({Type: "extrautils2:furnace"}), <extrautils2:decorativeglass:5>],
    [<thermalfoundation:material:256>, <thermalfoundation:material:513>, <thermalfoundation:material:256>]])
  .addTool(pliers, 30)
  .addTool(solderer, 50)
  .addOutput(<thermalexpansion:machine>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/thermal_technology"]))
  .setName("redstone_furnace_eu")
  .create();



# New Furnace Overhaul upgrade recipes
// Blank Upgrade
recipes.remove(<furnaceoverhaul:blank_upgrade>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:iron_nugget>, iron, <minecraft:iron_nugget>],
    [iron, <minecraft:quartz>, iron],
    [<minecraft:iron_nugget>, iron, <minecraft:iron_nugget>]])
  .addTool(spanner, 15)
  .addOutput(<furnaceoverhaul:blank_upgrade>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:crafting/smelting_upgrades"]))
  .setName("blank_upgrade")
  .create();

recipes.remove(<furnaceoverhaul:speed_upgrade>);
recipes.remove(<furnaceoverhaul:efficiency_upgrade>);
recipes.remove(<furnaceoverhaul:liquid_fuel_upgrade>);

// Speed Upgrade
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:blaze_powder>, <minecraft:glowstone_dust>, <minecraft:blaze_powder>],
    [<minecraft:glowstone_dust>, <furnaceoverhaul:blank_upgrade>, <minecraft:glowstone_dust>],
    [<minecraft:blaze_powder>, <minecraft:glowstone_dust>, <minecraft:blaze_powder>]])
  .setSecondaryIngredients([<minecraft:sugar>])
  .addTool(solderer, 30)
  .addOutput(<furnaceoverhaul:speed_upgrade>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:crafting/smelting_upgrades"]))
  .setName("speed_upgrade")
  .create();

// Efficiency Upgrade
RecipeBuilder.get("engineer")
  .setShaped([
    [electrum, iron, electrum],
    [iron, <furnaceoverhaul:blank_upgrade>, iron],
    [electrum, iron, electrum]])
  .addTool(solderer, 50)
  .addTool(spanner, 35)
  .addOutput(<furnaceoverhaul:efficiency_upgrade>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:crafting/smelting_upgrades"]))
  .setName("efficiency_upgrade")
  .create();

// Liquid Fuel Upgrade
RecipeBuilder.get("engineer")
  .setShaped([
    [null, gold, null],
    [gold, <furnaceoverhaul:blank_upgrade>, gold],
    [null, gold, null]])
  .setFluid(<liquid:lava> * 4000)
  .addTool(solderer, 25)
  .addOutput(<furnaceoverhaul:liquid_fuel_upgrade>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:crafting/smelting_upgrades"]))
  .setName("liquid_fuel_upgrade")
  .create();

recipes.remove(<furnaceoverhaul:electric_fuel_upgrade>);
recipes.remove(<furnaceoverhaul:ore_processing_upgrade>);
recipes.remove(<furnaceoverhaul:processing_upgrade>);
/*
// Electric Fuel
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:blaze_powder>, <thermaldynamics:duct_0>, <minecraft:blaze_powder>],
    [<thermaldynamics:duct_0>, <furnaceoverhaul:liquid_fuel_upgrade>, <thermaldynamics:duct_0>],
    [<minecraft:blaze_powder>, <thermaldynamics:duct_0>, <minecraft:blaze_powder>]])
  .addTool(solderer, 50)
  .addTool(spanner, 5)
  .addOutput(<furnaceoverhaul:electric_fuel_upgrade>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:crafting/smelting_upgrades", "cyborg:technology/thermal_technology"]))
  .setName("electric_fuel_upgrade")
  .create();

// Ore Processing
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotSteel>, <ore:dustElectrotine>, <ore:ingotSteel>],
    [<ore:dustElectrotine>, <furnaceoverhaul:blank_upgrade>, <ore:dustElectrotine>],
    [<ore:ingotSteel>, <ore:dustElectrotine>, <ore:ingotSteel>]])
  .setSecondaryIngredients([<furnaceoverhaul:liquid_fuel_upgrade>, <furnaceoverhaul:efficiency_upgrade>, <furnaceoverhaul:speed_upgrade>])
  .setFluid(<liquid:redstone> * 1000)
  .addTool(solderer, 75)
  .addTool(spanner, 20)
  .addOutput(<furnaceoverhaul:ore_processing_upgrade>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:crafting/smelting_upgrades"]))
  .setName("ore_processing_upgrade")
  .create();

// Processing
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotSteel>, null, <minecraft:ghast_tear>, null, <ore:ingotSteel>],
    [null, <ore:ingotSteel>, <ore:dustLunar>, <ore:ingotSteel>, null],
    [<minecraft:ghast_tear>, <ore:dustLunar>, <furnaceoverhaul:ore_processing_upgrade>, <ore:dustLunar>, <minecraft:ghast_tear>],
    [null, <ore:ingotSteel>, <ore:dustLunar>, <ore:ingotSteel>, null],
    [<ore:ingotSteel>, null, <minecraft:ghast_tear>, null, <ore:ingotSteel>]])
  .setSecondaryIngredients([<furnaceoverhaul:efficiency_upgrade>, <furnaceoverhaul:speed_upgrade>, <minecraft:nether_star>])
  .setFluid(<liquid:redstone> * 4000)
  .addTool(solderer, 100)
  .addTool(cutters, 35)
  .addTool(spanner, 10)
  .addOutput(<furnaceoverhaul:processing_upgrade>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:crafting/smelting_upgrades", "cyborg:technology/thermal_technology"]))
  .setName("processing_upgrade")
  .create();
*/



# New recipes for Glacidite items
# Durability cost is 10x the resource amount (Spanner is 1/4 of that)
recipes.remove(<glacidus:glacidite_pickaxe>);
recipes.remove(<glacidus:glacidite_shovel>);
recipes.remove(<glacidus:glacidite_sword>);
recipes.remove(<glacidus:glacidite_hoe>);
recipes.remove(<glacidus:glacidite_axe>);

recipes.remove(<glacidus:glacidite_helmet>);
recipes.remove(<glacidus:glacidite_chestplate>);
recipes.remove(<glacidus:glacidite_leggings>);
recipes.remove(<glacidus:glacidite_boots>);

val stick = <glacidus:underground_stick>;

// Sword
RecipeBuilder.get("engineer")
  .setShaped([
    [glacidite],
    [glacidite],
    [stick]])
  .addTool(burner, 20)
  .addTool(spanner, 5)
  .addOutput(<glacidus:glacidite_sword>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering"]))
  .setName("glacidite_sword")
  .create();

// Pickaxe
RecipeBuilder.get("engineer")
  .setShaped([
    [glacidite, glacidite, glacidite],
    [null, stick, null],
    [null, stick, null]])
  .addTool(burner, 30)
  .addTool(spanner, 8) // Should be 7.5
  .addOutput(<glacidus:glacidite_pickaxe>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering"]))
  .setName("glacidite_pickaxe")
  .create();

// Shovel
RecipeBuilder.get("engineer")
  .setShaped([
    [glacidite],
    [stick],
    [stick]])
  .addTool(burner, 10)
  .addTool(spanner, 3) // Should be 2.5
  .addOutput(<glacidus:glacidite_shovel>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering"]))
  .setName("glacidite_shovel")
  .create();

// Hoe
RecipeBuilder.get("engineer")
  .setShaped([
    [glacidite, glacidite],
    [null, stick],
    [null, stick]])
  .addTool(burner, 20)
  .addTool(spanner, 5)
  .addOutput(<glacidus:glacidite_hoe>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering"]))
  .setName("glacidite_hoe")
  .setMirrored()
  .create();

// Axe
RecipeBuilder.get("engineer")
  .setShaped([
    [glacidite, glacidite],
    [glacidite, stick],
    [null, stick]])
  .addTool(burner, 30)
  .addTool(spanner, 8) // Should be 7.5
  .addOutput(<glacidus:glacidite_axe>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering"]))
  .setName("glacidite_axe")
  .setMirrored()
  .create();



	# Armour
// Helmet
RecipeBuilder.get("engineer")
  .setShaped([
    [glacidite, glacidite, glacidite],
    [glacidite, null, glacidite]])
  .addTool(burner, 50)
  .addTool(spanner, 12) // Should be 12.5
  .addOutput(<glacidus:glacidite_helmet>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering"]))
  .setName("glacidite_helmet")
  .create();

// Chestplate
RecipeBuilder.get("engineer")
  .setShaped([
    [glacidite, null, glacidite],
    [glacidite, glacidite, glacidite],
    [glacidite, glacidite, glacidite]])
  .addTool(burner, 80)
  .addTool(spanner, 20)
  .addOutput(<glacidus:glacidite_chestplate>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering"]))
  .setName("glacidite_chestplate")
  .create();

// Leggings
RecipeBuilder.get("engineer")
  .setShaped([
    [glacidite, glacidite, glacidite],
    [glacidite, null, glacidite],
    [glacidite, null, glacidite]])
  .addTool(burner, 70)
  .addTool(spanner, 18) // Should be 17.5
  .addOutput(<glacidus:glacidite_leggings>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering"]))
  .setName("glacidite_leggings")
  .create();

// Boots
RecipeBuilder.get("engineer")
  .setShaped([
    [glacidite, null, glacidite],
    [glacidite, null, glacidite]])
  .addTool(burner, 40)
  .addTool(spanner, 10)
  .addOutput(<glacidus:glacidite_boots>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering"]))
  .setName("glacidite_boots")
  .create();

print("engineer.zs loaded");