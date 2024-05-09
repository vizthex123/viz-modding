# Changes for Redstone Arsenal

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.FTGU;

print("redstone_arsenal.zs loading...");

var rod = <redstonearsenal:material:192>;
var fluxrod = <redstonearsenal:material:193>;
var fluxgear = <redstonearsenal:material:96>;
var fluxplate = <redstonearsenal:material:128>;
var armour_plate = <redstonearsenal:material:224>;

var fluxgem = <redstonearsenal:material:160>;
var fluxtrum = <redstonearsenal:material:32>;


var beaker = <ore:artisansBeaker>;
var burner = <ore:artisansBurner>;

var solderer = <ore:artisansSolderer>;
var spanner = <ore:artisansSpanner>;
var pliers = <ore:artisansPliers>;

var gemcutter = <ore:artisansGemCutter>;
var cutters = <ore:artisansCutters>;

# Obsidian Rods
recipes.remove(rod);
recipes.remove(fluxrod);
recipes.addShaped(rod, [[null, null, <byg:obsidianingot>],
										   [null, <minecraft:blaze_powder>, null],
										   [<byg:obsidianingot>, null, null]]);

RecipeBuilder.get("chemist")
  .setShaped([
    [null, null, fluxgem],
    [null, rod, null],
    [fluxgem, null, null]])
  .addTool(solderer, 5)
  .addTool(gemcutter, 10)
  .addOutput(fluxrod)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_tools"]))
  .setName("flux_rod")
  .setMirrored()
  .create();

// Fluxed Electrum Blend
// Vulcanite version needs 3x Beaker durability and uses 1/3 Burner durability
# recipes.remove(<redstonearsenal:material>);
RecipeBuilder.get("chemist")
  .setShapeless([<ore:ingotSilver>, <ore:ingotGold>])
  .setFluid(<liquid:redstone> * 500)
  .addTool(beaker, 5)
  .addTool(burner, 15)
  .addOutput(<redstonearsenal:material> * 2)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_technology"]))
  .setName("fluxed_electrum_blend")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<ore:ingotVulcanite>, <ore:ingotVulcanite>])
  .setFluid(<liquid:redstone> * 1000)
  .addTool(beaker, 15)
  .addTool(burner, 5)
  .addOutput(<redstonearsenal:material> * 4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_tools"]))
  .setName("fluxed_electrum_blend_vulcanite")
  .create();

// Flux Crystal
// Glacidite version needs 3x Burner durability and uses 1/3 Beaker durability
# recipes.remove(<redstonearsenal:material:160>);
RecipeBuilder.get("chemist")
  .setShapeless([<minecraft:diamond>|<minecraft:emerald>, <minecraft:diamond>|<minecraft:emerald>])
  .setFluid(<liquid:redstone> * 1000)
  .addTool(beaker, 9)
  .addTool(burner, 15)
  .addOutput(fluxgem * 2)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_technology"]))
  .setName("flux_crystal")
  .create();

RecipeBuilder.get("chemist")
  .setShapeless([<glacidus:glacidite_fragment>, <glacidus:glacidite_fragment>])
  .setFluid(<liquid:redstone> * 1000)
  .addTool(beaker, 3)
  .addTool(burner, 45)
  .addOutput(fluxgem * 4)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_tools"]))
  .setName("flux_crystal_glacidite")
  .create();

// Fluxed Electrum Gear
recipes.remove(<redstonearsenal:material:96>);
RecipeBuilder.get("chemist")
  .setShaped([
    [null, fluxtrum, null],
    [fluxtrum, null, fluxtrum],
    [null, fluxtrum, null]])
  .addTool(cutters, 40)
  .addOutput(<redstonearsenal:material:96>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_technology"]))
  .setName("fluxed_gear")
  .create();

// Fluxed Armour Plating
recipes.remove(<redstonearsenal:material:224>);
RecipeBuilder.get("chemist")
  .setShaped([
    [null, fluxplate, null],
    [fluxplate, fluxgem, fluxplate],
    [null, fluxplate, null]])
  .setFluid(<liquid:cryotheum> * 250)
  .addTool(cutters, 40)
  .addTool(gemcutter, 10)
  .addOutput(<redstonearsenal:material:224>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_tools"]))
  .setName("fluxed_plating")
  .create();



### New recipes for Flux Equipment
## Lets players upgrade Glacidite/Vulcanite or craft it directly
# Solderer cost is 50% more than Spanner cost
# Gemcutter cost is 30x material amount
# Spanner cost is 20x material amount
## 10x for plates
## 15x for gears
## 50x for armour plates
# Costs are reduced by 25 for the upgrade recipes
recipes.remove(<redstonearsenal:tool.sword_flux>);
recipes.remove(<redstonearsenal:tool.pickaxe_flux>);
recipes.remove(<redstonearsenal:tool.axe_flux>);


// Sword
RecipeBuilder.get("chemist")
  .setShaped([
    [fluxtrum],
    [fluxtrum],
    [fluxrod]])
  .addTool(solderer, 60)
  .addTool(spanner, 40)
  .addOutput(<redstonearsenal:tool.sword_flux>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_tools"]))
  .setName("flux_sword")
  .create();

RecipeBuilder.get("chemist")
  .setShaped([
    [fluxtrum],
    [<glacidus:glacidite_sword:*>|<vulcanite:vulcanite_sword:*>],
    [fluxrod]])
  .setSecondaryIngredients([fluxtrum])
  .addTool(solderer, 35)
  .addTool(spanner, 15)
  .addOutput(<redstonearsenal:tool.sword_flux>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_tools"]))
  .setName("flux_sword_upgrade")
  .create();

// Pickaxe
RecipeBuilder.get("chemist")
  .setShaped([
    [fluxtrum, fluxtrum, fluxtrum],
    [null, fluxrod, null],
    [null, fluxrod, null]])
  .addTool(solderer, 90)
  .addTool(spanner, 60)
  .addOutput(<redstonearsenal:tool.pickaxe_flux>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_tools"]))
  .setName("flux_pickaxe")
  .create();

RecipeBuilder.get("chemist")
  .setShaped([
    [fluxtrum, <glacidus:glacidite_pickaxe:*>|<vulcanite:vulcanite_pickaxe:*>, fluxtrum],
    [null, fluxrod, null],
    [null, fluxrod, null]])
  .setSecondaryIngredients([fluxtrum])
  .addTool(solderer, 65)
  .addTool(spanner, 35)
  .addOutput(<redstonearsenal:tool.pickaxe_flux>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_tools"]))
  .setName("flux_pickaxe_upgrade")
  .create();

// Shovel
RecipeBuilder.get("chemist")
  .setShaped([
    [fluxtrum],
    [fluxrod],
    [fluxrod]])
  .addTool(solderer, 30)
  .addTool(spanner, 20)
  .addOutput(<redstonearsenal:tool.shovel_flux>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_tools"]))
  .setName("flux_shovel")
  .create();

RecipeBuilder.get("chemist")
  .setShaped([
    [<glacidus:glacidite_shovel:*>|<vulcanite:vulcanite_shovel:*>],
    [fluxrod],
    [fluxrod]])
  .setSecondaryIngredients([fluxtrum])
  .addTool(solderer, 15) // Upgrade durability reduced by 15 since there's only 1 material in this recipe
  .addTool(spanner, 5)
  .addOutput(<redstonearsenal:tool.shovel_flux>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_tools"]))
  .setName("flux_shovel_upgrade")
  .create();

// Axe
RecipeBuilder.get("chemist")
  .setShaped([
    [fluxtrum, fluxtrum],
    [fluxtrum, fluxrod],
    [null, fluxrod]])
  .addTool(solderer, 90)
  .addTool(spanner, 60)
  .addOutput(<redstonearsenal:tool.axe_flux>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_tools"]))
  .setName("flux_axe")
  .setMirrored()
  .create();

RecipeBuilder.get("chemist")
  .setShaped([
    [<glacidus:glacidite_axe:*>|<vulcanite:vulcanite_axe:*>, fluxtrum],
    [fluxtrum, fluxrod],
    [null, fluxrod]])
  .setSecondaryIngredients([fluxtrum])
  .addTool(solderer, 65)
  .addTool(spanner, 35)
  .addOutput(<redstonearsenal:tool.axe_flux>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_tools"]))
  .setName("flux_axe_upgrade")
  .create();



// Hammer
RecipeBuilder.get("chemist")
  .setShaped([
    [fluxtrum, fluxtrum, fluxtrum],
    [fluxtrum, fluxrod, fluxtrum],
    [null, fluxrod, null]])
  .addTool(solderer, 150)
  .addTool(spanner, 100)
  .addOutput(<redstonearsenal:tool.hammer_flux>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/excavation", "cyborg:technology/thermal_tools"]))
  .setName("flux_hammer")
  .create();

// Excavator
RecipeBuilder.get("chemist")
  .setShaped([
    [null, fluxtrum, null],
    [fluxtrum, fluxrod, fluxtrum],
    [null, fluxrod, null]])
  .addTool(solderer, 90)
  .addTool(spanner, 60)
  .addOutput(<redstonearsenal:tool.excavator_flux>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/excavation", "cyborg:technology/thermal_tools"]))
  .setName("flux_excavator")
  .create();

// Sickle
RecipeBuilder.get("chemist")
  .setShaped([
    [null, fluxtrum, null],
    [null, null, fluxtrum],
    [fluxrod, fluxtrum, null]])
  .addTool(solderer, 90)
  .addTool(spanner, 60)
  .addOutput(<redstonearsenal:tool.sickle_flux>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_tools"]))
  .setName("flux_sickle")
  .setMirrored()
  .create();



// Bow
RecipeBuilder.get("chemist")
  .setShaped([
    [null, fluxtrum, <ore:string>],
    [fluxrod, null, <ore:string>],
    [null, fluxtrum, <ore:string>]])
  .addTool(solderer, 60)
  .addTool(spanner, 40)
  .addOutput(<redstonearsenal:tool.bow_flux>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_tools"]))
  .setName("flux_bow")
  .setMirrored()
  .create();

// Quiver
RecipeBuilder.get("chemist")
  .setShaped([
    [<ore:arrow>, <ore:arrow>, null],
    [fluxtrum, fluxgem, <ore:string>],
    [fluxgem, fluxtrum, <ore:string>]])
  .addTool(solderer, 40)
  .addTool(gemcutter, 60)
  .addOutput(<redstonearsenal:util.quiver_flux>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_tools"]))
  .setName("flux_quiver")
  .setMirrored()
  .create();

// Fishing Rod
RecipeBuilder.get("chemist")
  .setShaped([
    [null, null, fluxtrum],
    [null, fluxtrum, <ore:string>],
    [fluxrod, null, <ore:string>]])
  .addTool(solderer, 60)
  .addTool(spanner, 40)
  .addOutput(<redstonearsenal:tool.fishing_rod_flux>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_tools"]))
  .setName("flux_fishing_rod")
  .setMirrored()
  .create();

// OmniWrench
RecipeBuilder.get("chemist")
  .setShaped([
    [fluxtrum, null, fluxtrum],
    [null, fluxplate, null],
    [null, fluxrod, null]])
  .addTool(solderer, 75)
  .addTool(spanner, 50)
  .addOutput(<redstonearsenal:tool.wrench_flux>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_tools"]))
  .setName("flux_omniwrench")
  .create();

// BattleWrench
RecipeBuilder.get("chemist")
  .setShaped([
    [fluxtrum, null, fluxtrum],
    [null, fluxgear, null],
    [null, fluxrod, null]])
  .addTool(solderer, 80) // Should be 82.5
  .addTool(spanner, 55)
  .addOutput(<redstonearsenal:tool.battlewrench_flux>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_tools"]))
  .setName("flux_battlewrench")
  .create();

// Shield
RecipeBuilder.get("chemist")
  .setShaped([
    [fluxplate, fluxgem, fluxplate],
    [fluxplate, fluxplate, fluxplate],
    [null, fluxplate, null]])
  .addTool(spanner, 60)
  .addTool(gemcutter, 30)
  .addOutput(<redstonearsenal:tool.shield_flux>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_tools"]))
  .setName("flux_shield")
  .create();



# Armour
# Spanner cost is 50x material amount
# Costs are reduced by 100 for the upgrade recipes
recipes.remove(<redstonearsenal:armor.helmet_flux>);
recipes.remove(<redstonearsenal:armor.plate_flux>);
recipes.remove(<redstonearsenal:armor.legs_flux>);
recipes.remove(<redstonearsenal:armor.boots_flux>);


// Helmet
RecipeBuilder.get("chemist")
  .setShaped([
    [armour_plate, armour_plate, armour_plate],
    [armour_plate, null, armour_plate]])
  .addTool(solderer, 375)
  .addTool(spanner, 250)
  .addOutput(<redstonearsenal:armor.helmet_flux>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_tools"]))
  .setName("flux_helmet")
  .create();

RecipeBuilder.get("chemist")
  .setShaped([
    [armour_plate, armour_plate, armour_plate],
    [armour_plate, <glacidus:glacidite_helmet:*>|<vulcanite:vulcanite_helmet:*>, armour_plate]])
  .addTool(solderer, 275)
  .addTool(spanner, 150)
  .addOutput(<redstonearsenal:armor.helmet_flux>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_tools"]))
  .setName("flux_helmet_upgrade")
  .create();


// Chestplate
RecipeBuilder.get("chemist")
  .setShaped([
    [armour_plate, null, armour_plate],
    [armour_plate, armour_plate, armour_plate],
    [armour_plate, armour_plate, armour_plate]])
  .addTool(solderer, 600)
  .addTool(spanner, 400)
  .addOutput(<redstonearsenal:armor.plate_flux>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_tools"]))
  .setName("flux_chestplate")
  .create();

RecipeBuilder.get("chemist")
  .setShaped([
    [armour_plate, <glacidus:glacidite_chestplate:*>|<vulcanite:vulcanite_chestplate:*>, armour_plate],
    [armour_plate, armour_plate, armour_plate],
    [armour_plate, armour_plate, armour_plate]])
  .addTool(solderer, 500)
  .addTool(spanner, 300)
  .addOutput(<redstonearsenal:armor.plate_flux>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_tools"]))
  .setName("flux_chestplate_upgrade")
  .create();


// Leggings
RecipeBuilder.get("chemist")
  .setShaped([
    [armour_plate, armour_plate, armour_plate],
    [armour_plate, null, armour_plate],
    [armour_plate, null, armour_plate]])
  .addTool(solderer, 175)
  .addTool(spanner, 350)
  .addOutput(<redstonearsenal:armor.legs_flux>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_tools"]))
  .setName("armour_plate_leggings")
  .create();

RecipeBuilder.get("chemist")
  .setShaped([
    [armour_plate, armour_plate, armour_plate],
    [armour_plate, <glacidus:glacidite_leggings:*>|<vulcanite:vulcanite_leggings:*>, armour_plate],
    [armour_plate, null, armour_plate]])
  .addTool(solderer, 75)
  .addTool(spanner, 250)
  .addOutput(<redstonearsenal:armor.legs_flux>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_tools"]))
  .setName("armour_plate_leggings_upgrade")
  .create();


// Boots
RecipeBuilder.get("chemist")
  .setShaped([
    [armour_plate, null, armour_plate],
    [armour_plate, null, armour_plate]])
  .addTool(solderer, 300)
  .addTool(spanner, 200)
  .addOutput(<redstonearsenal:armor.boots_flux>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_tools"]))
  .setName("armour_plate_boots")
  .create();

RecipeBuilder.get("chemist")
  .setShaped([
    [armour_plate, null, armour_plate],
    [armour_plate, <glacidus:glacidite_boots:*>|<vulcanite:vulcanite_boots:*>, armour_plate]])
  .addTool(solderer, 200)
  .addTool(spanner, 100)
  .addOutput(<redstonearsenal:armor.boots_flux>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/science", "cyborg:technology/thermal_tools"]))
  .setName("armour_plate_boots_upgrade")
  .create();

print("redstone_arsenal.zs loaded");