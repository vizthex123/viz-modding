# Adds crafting for items from the Capsule mod

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.FTGU;

print("capsules.zs loading...");
/*
recipes.remove(<>);
recipes.addShaped(<output>, [[<null>, <null>, <null>],
                                      [<null>, <null>, <null>],
                                      [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
furnace.addRecipe(<output>, <input>, XP[F]);
<item>.maxStackSize=NEW;
*/

val chest = <ore:chestWood>;
val button = <minecraft:stone_button>;
val ender_pearl = <minecraft:ender_pearl>;
val diamond = <minecraft:diamond>;
val iron = <minecraft:iron_ingot>;

var hammer = <ore:artisansHammer>;
var chisel = <ore:artisansChisel>;

var solderer = <ore:artisansSolderer>;
var spanner = <ore:artisansSpanner>;


# Move all Capsule recipes to the Design Table
recipes.removeByRecipeName("capsule:capsule_wood");
recipes.removeByRecipeName("capsule:capsule_iron");
recipes.removeByRecipeName("capsule:capsule_gold");
recipes.removeByRecipeName("capsule:capsule_diamond");
recipes.removeByRecipeName("capsule:capsule_op");

RecipeBuilder.get("designer")
  .setShaped([
    [null, button, null],
    [<ore:plankWood>, chest, <ore:plankWood>],
    [null, <ore:slabWood>, null]])
  .addOutput(<capsule:capsule>.withTag({color: 12359778, size: 1, display: {color: 11833434}}))
  .addRequirement(FTGU.allOf(["cyborg:crafting/designing", "cyborg:technology/capsules"]))
  .setName("capsule_wood")
  .create();

RecipeBuilder.get("designer")
  .setShaped([
    [null, button, null],
    [iron, ender_pearl, iron],
    [null, iron, null]])
  .addOutput(<capsule:capsule>.withTag({color: 13421772, size: 3}))
  .addRequirement(FTGU.allOf(["cyborg:crafting/designing", "cyborg:technology/capsules"]))
  .setName("capsule_iron")
  .create();

RecipeBuilder.get("designer")
  .setShaped([
    [null, button, null],
    [<minecraft:gold_ingot>, ender_pearl, <minecraft:gold_ingot>],
    [null, iron, null]])
  .addOutput(<capsule:capsule>.withTag({color: 16766720, size: 5}))
  .addRequirement(FTGU.allOf(["cyborg:crafting/designing", "cyborg:technology/capsules"]))
  .setName("capsule_gold")
  .create();

RecipeBuilder.get("designer")
  .setShaped([
    [null, button, null],
    [diamond, ender_pearl, diamond],
    [null, <minecraft:gold_ingot>, null]])
  .addOutput(<capsule:capsule>.withTag({color: 65522, size: 7}))
  .addRequirement(FTGU.allOf(["cyborg:crafting/designing", "cyborg:technology/capsules"]))
  .setName("capsule_diamond")
  .create();
  
RecipeBuilder.get("designer")
  .setShaped([
    [null, <openblocks:big_button>, null],
    [<pristeel:pristeel_ingot>, <minecraft:nether_star>, <pristeel:pristeel_ingot>],
    [null, diamond, null]])
  .addOutput(<capsule:capsule>.withTag({color: 16777215, size: 1, overpowered: 1}))
  .addRequirement(FTGU.allOf(["cyborg:crafting/designing", "cyborg:technology/capsules"]))
  .setName("capsule_op")
  .create();

// Capture Base
recipes.remove(<capsule:capsulemarker>);
RecipeBuilder.get("designer")
  .setShaped([
    [<minecraft:cobblestone>, <minecraft:piston>, <minecraft:cobblestone>],
    [<minecraft:cobblestone>, <extrautils2:ingredients:1>, <minecraft:cobblestone>],
    [<minecraft:cobblestone>, <thermalfoundation:material:26>, <minecraft:cobblestone>]])
  .setSecondaryIngredients([ender_pearl])
  .addTool(hammer, 15)
  .addTool(chisel, 10)
  .addOutput(<capsule:capsulemarker>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/designing", "cyborg:technology/capsules"]))
  .setName("capture_base")
  .create();

RecipeBuilder.get("designer")
  .setShaped([
    [<minecraft:cobblestone>, <minecraft:sticky_piston>, <minecraft:cobblestone>],
    [<minecraft:cobblestone>, <thermalfoundation:material:27>, <minecraft:cobblestone>],
    [<minecraft:cobblestone>, <nhc:energypearl>, <minecraft:cobblestone>]])
  .addTool(solderer, 30)
  .addTool(chisel, 12)
  .addOutput(<capsule:capsulemarker>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/designing", "cyborg:technology/capsules"]))
  .setName("capture_base_alt")
  .create();

// T1 Defense Station
RecipeBuilder.get("designer")
  .setShapeless([<extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <openmodularturrets:turret_base>, <openmodularturrets:potato_cannon_turret>,  ender_pearl,  <natura:seed_bags:2>, <natura:seed_bags:2>, <minecraft:bucket>])
  .addTool(solderer, 15)
  .addOutput(<capsule:capsule:5>.withTag({color: 9819623, size: 3, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/t1_defense_station", author: "vizthex", display: {color: 7105644}, label: "T1 Defense Station", canRotate: 0 as byte})).addRequirement(FTGU.allOf(["cyborg:crafting/designing", "cyborg:technology/capsules", "cyborg:technology/automated_defenses"]))
  .setName("defense_station_t1")
  .create();

// T2 Defense Station
RecipeBuilder.get("designer")
  .setShapeless([<openmodularturrets:turret_base>, <openmodularturrets:turret_base>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <openmodularturrets:disposable_item_turret>, <openmodularturrets:disposable_item_turret>, <thermaldynamics:duct_0>, <thermaldynamics:duct_0>, <thermaldynamics:duct_0>, <thermaldynamics:duct_0>])
  .setSecondaryIngredients([<ore:cobblestone> * 64, <ore:plankWood> * 64, <minecraft:bucket>])
  .addTool(solderer, 25)
  .addTool(spanner, 20)
  .addOutput(<capsule:capsule:5>.withTag({color: 14714914, size: 5, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/t2_defense_station", author: "vizthex", display: {color: 5544791}, label: "T2 Defense Station", canRotate: 0 as byte}))  .addRequirement(FTGU.allOf(["cyborg:crafting/designing", "cyborg:technology/capsules", "cyborg:technology/automated_defenses"]))
  .setName("defense_station_t2")
  .create();

// T3 Defense Station
RecipeBuilder.get("designer")
  .setShapeless([<openmodularturrets:turret_base:1>, <extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}), <openmodularturrets:incendiary_turret>, <minecraft:bucket>])
  .setSecondaryIngredients([<openmodularturrets:ammo_meta> * 64])
  .addTool(solderer, 40)
  .addTool(spanner, 35)
  .addOutput(<capsule:capsule:5>.withTag({color: 13421772, size: 3, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/t3_defense_station", author: "vizthex", display: {color: 4869306}, label: "T3 Defense Station", canRotate: 0 as byte}))  .addRequirement(FTGU.allOf(["cyborg:crafting/designing", "cyborg:technology/capsules", "cyborg:technology/automated_defenses"]))
  .setName("defense_station_t3")
  .create();

// Defense Platform
RecipeBuilder.get("designer")
  .setShaped([
    [null, null, <minecraft:brick_block>, null, null],
    [null, <minecraft:sign>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <ore:fenceGateWood>, null],
    [<minecraft:torch>, <openmodularturrets:machine_gun_turret>, <openmodularturrets:turret_base:1>, <openmodularturrets:machine_gun_turret>, <minecraft:torch>],
    [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
    [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]])
  .setSecondaryIngredients([<minecraft:cobblestone> * 14, <ore:fenceWood> * 15, <minecraft:bucket>, <openmodularturrets:ammo_meta:1> * 64])
  .addTool(solderer, 15)
  .addTool(spanner, 20)
  .addTool(chisel, 25)
  .addOutput(<capsule:capsule:5>.withTag({color: 4869306, size: 15, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/defense_base", author: "vizthex", display: {color: 14714914}, label: "Defense Platform", canRotate: 0 as byte}))
  .setExtraOutputOne(<extrautils2:machine>.withTag({Type: "extrautils2:generator"}), 1.0)
  .addRequirement(FTGU.allOf(["cyborg:crafting/designing", "cyborg:technology/automated_defenses", "cyborg:technology/capsules"]))
  .setName("defense_platform")
  .create();

RecipeBuilder.get("designer")
  .setShaped([
    [null, null, <minecraft:brick_block>, null, null],
    [null, <minecraft:sign>, <extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}), <ore:fenceGateWood>, null],
    [<minecraft:torch>, <openmodularturrets:machine_gun_turret>, <openmodularturrets:turret_base:1>, <openmodularturrets:machine_gun_turret>, <minecraft:torch>],
    [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
    [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]])
  .setSecondaryIngredients([<minecraft:cobblestone> * 14, <ore:fenceWood> * 15, <minecraft:bucket>, <openmodularturrets:ammo_meta:1> * 64])
  .addTool(solderer, 15)
  .addTool(spanner, 20)
  .addTool(chisel, 25)
  .addOutput(<capsule:capsule:5>.withTag({color: 4869306, size: 15, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/defense_base", author: "vizthex", display: {color: 14714914}, label: "Defense Base", canRotate: 0 as byte}))
  .setExtraOutputOne(<extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}), 1.0)
  .addRequirement(FTGU.allOf(["cyborg:crafting/designing", "cyborg:technology/automated_defenses", "cyborg:technology/capsules"]))
  .setName("defense_platform_alt")
  .create();



// Basic Farm
// Can use a Bone, Iron, or Gold Hoe
RecipeBuilder.get("designer")
  .setShapeless([<extrautils2:compresseddirt>, <extrautils2:compresseddirt>, <natura:seed_bags>, <bonecraft:bonehoeitem>.transformDamage(8)|<minecraft:iron_hoe>.transformDamage(8)|<minecraft:golden_hoe>.transformDamage(8)])
  .setFluid(<liquid:water> * 1000)
  .addTool(chisel, 20)
  .addOutput(<capsule:capsule:5>.withTag({color: 6196919, size: 3, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/basic_farm", author: "vizthex", display: {color: 16777215}, label: "Basic Farm", canRotate: 1 as byte}))
  .addRequirement(FTGU.allOf(["cyborg:crafting/designing", "cyborg:technology/capsules"]))
  .setName("basic_farm")
  .create();

// Advanced Farm
// Can use a Bone, Iron, or Gold Hoe
recipes.remove(<capsule:capsule:3>.withTag({sourceInventory: {}, size: 5, structureName: "config/capsule/prefabs/advanced_farm", display: {color: 3949738}, label: "Advanced Farm"}));
RecipeBuilder.get("designer")
  .setShapeless([<extrautils2:compresseddirt:1>, <openblocks:tank>, <bonecraft:bonehoeitem>|<minecraft:iron_hoe>|<minecraft:golden_hoe>, <natura:seed_bags>, <natura:seed_bags>, <natura:seed_bags>, <openblocks:sprinkler>])
  .setFluid(<liquid:water> * 1000)
  .addTool(chisel, 50)
  .addOutput(<capsule:capsule:5>.withTag({color: 10076989, size: 5, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/advanced_farm", author: "vizthex", display: {color: 14714914}, label: "Advanced Farm", canRotate: 0 as byte}))
  .addRequirement(FTGU.allOf(["cyborg:crafting/designing", "cyborg:technology/capsules"]))
  .setName("advanced_farm")
  .create();

print("capsules.zs loaded");