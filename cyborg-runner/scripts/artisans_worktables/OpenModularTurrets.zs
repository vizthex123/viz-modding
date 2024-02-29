# Changes recipes for Open Modular Turrets' items/blocks
# Uses the Engineering Table (and sometimes Blacksmith's)

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.FTGU;

print("OpenModularTurrets.zs loading...");

var quartz = <minecraft:quartz>;
var redstone = <minecraft:redstone>;

var iron = <minecraft:iron_ingot>;
var gold = <minecraft:gold_ingot>;
var diamond = <minecraft:diamond>;
var obsidian = <minecraft:obsidian>;


var hammer = <ore:artisansHammer>;
var cutters = <ore:artisansCutters>;
var file = <ore:artisansFile>;

var pliers = <ore:artisansPliers>;
var solderer = <ore:artisansSolderer>;
var spanner = <ore:artisansSpanner>;


// IO Bus
recipes.remove(<openmodularturrets:intermediate_regular>);
RecipeBuilder.get("engineer")
  .setShaped([
    [null, iron, null],
    [redstone, redstone, redstone],
    [null, gold, null]])
  .addTool(solderer, 2)
  .addOutput(<openmodularturrets:intermediate_regular>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("io_bus")
  .create();

# Sensors
# Uses Solderers and Spanners
recipes.remove(<openmodularturrets:intermediate_tiered>);
recipes.remove(<openmodularturrets:intermediate_tiered:1>);
recipes.remove(<openmodularturrets:intermediate_tiered:2>);
recipes.remove(<openmodularturrets:intermediate_tiered:3>);
recipes.remove(<openmodularturrets:intermediate_tiered:4>);

// T1
RecipeBuilder.get("engineer")
  .setShaped([
    [null, redstone, null],
    [redstone, <ore:plankWood>, redstone],
    [null, redstone, null]])
  .addTool(solderer, 1)
  .addOutput(<openmodularturrets:intermediate_tiered>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t1_sensor")
  .create();

// T2
RecipeBuilder.get("engineer")
  .setShaped([
    [null, iron, null],
    [iron, <openmodularturrets:intermediate_tiered>, iron],
    [null, <openmodularturrets:intermediate_regular>, null]])
  .addTool(solderer, 2)
  .addOutput(<openmodularturrets:intermediate_tiered:1>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t2_sensor")
  .create();

// T3
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <openmodularturrets:intermediate_regular>, null],
    [gold, <openmodularturrets:intermediate_tiered:1>, gold],
    [null, <openmodularturrets:intermediate_regular>, null]])
  .addTool(solderer, 3)
  .addTool(spanner, 3)
  .addOutput(<openmodularturrets:intermediate_tiered:2>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t3_sensor")
  .create();

// T4
RecipeBuilder.get("engineer")
  .setShaped([
    [gold, diamond, gold],
    [<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:2>, <openmodularturrets:intermediate_regular>],
    [quartz, diamond, quartz]])
  .addTool(solderer, 5)
  .addTool(spanner, 5)
  .addOutput(<openmodularturrets:intermediate_tiered:3>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t4_sensor")
  .create();

// T5
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:emerald>, obsidian, <minecraft:emerald>],
    [<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:3>, <openmodularturrets:intermediate_regular>],
    [<minecraft:glowstone_dust>, obsidian, <minecraft:glowstone_dust>]])
  .addTool(solderer, 10)
  .addTool(spanner, 10)
  .addOutput(<openmodularturrets:intermediate_tiered:4>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t5_sensor")
  .create();


# Chambers
# Uses Pliers & Spanners
recipes.remove(<openmodularturrets:intermediate_tiered:5>);
recipes.remove(<openmodularturrets:intermediate_tiered:6>);
recipes.remove(<openmodularturrets:intermediate_tiered:7>);
recipes.remove(<openmodularturrets:intermediate_tiered:8>);
recipes.remove(<openmodularturrets:intermediate_tiered:9>);

// T1
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
    [null, <ore:plankWood>, redstone],
    [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]])
  .addTool(pliers, 2)
  .addOutput(<openmodularturrets:intermediate_tiered:5>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t1_chamber")
  .create();

// T2
RecipeBuilder.get("engineer")
  .setShaped([
    [iron, iron, iron],
    [null, <openmodularturrets:intermediate_tiered:5>, redstone],
    [iron, iron, iron]])
  .addTool(pliers, 5)
  .addOutput(<openmodularturrets:intermediate_tiered:6>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t2_chamber")
  .create();

// T3
RecipeBuilder.get("engineer")
  .setShaped([
    [gold, gold, gold],
    [null, <openmodularturrets:intermediate_tiered:6>, <openmodularturrets:intermediate_regular>],
    [gold, gold, gold]])
  .addTool(pliers, 8)
  .addTool(spanner, 8)
  .addOutput(<openmodularturrets:intermediate_tiered:7>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t3_chamber")
  .create();

// T4
RecipeBuilder.get("engineer")
  .setShaped([
    [quartz, diamond, quartz],
    [null, <openmodularturrets:intermediate_tiered:7>, <openmodularturrets:intermediate_regular>],
    [quartz, diamond, quartz]])
  .addTool(pliers, 14)
  .addTool(spanner, 14)
  .addOutput(<openmodularturrets:intermediate_tiered:8>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t4_chamber")
  .create();

// T5
RecipeBuilder.get("engineer")
  .setShaped([
    [quartz, obsidian, obsidian],
    [null, <openmodularturrets:intermediate_tiered:8>, <openmodularturrets:intermediate_regular>],
    [quartz, obsidian, obsidian]])
  .addTool(pliers, 32)
  .addTool(spanner, 32)
  .addOutput(<openmodularturrets:intermediate_tiered:9>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t5_chamber")
  .create();

# Barrels
# Uses Spanners, Solderers
recipes.remove(<openmodularturrets:intermediate_tiered:10>);
recipes.remove(<openmodularturrets:intermediate_tiered:11>);
recipes.remove(<openmodularturrets:intermediate_tiered:12>);
recipes.remove(<openmodularturrets:intermediate_tiered:13>);
recipes.remove(<openmodularturrets:intermediate_tiered:14>);

// T1
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
    [null, <ore:plankWood>, null],
    [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]])
  .addTool(spanner, 1)
  .addOutput(<openmodularturrets:intermediate_tiered:10>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t1_barrel")
  .create();

// T2
RecipeBuilder.get("engineer")
  .setShaped([
    [iron, iron, iron],
    [null, <openmodularturrets:intermediate_tiered:10>, null],
    [iron, iron, iron]])
  .addTool(solderer, 4)
  .addOutput(<openmodularturrets:intermediate_tiered:11>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t2_barrel")
  .create();

// T3
RecipeBuilder.get("engineer")
  .setShaped([
    [gold, gold, gold],
    [null, <openmodularturrets:intermediate_tiered:11>, null],
    [gold, gold, gold]])
  .addTool(solderer, 9)
  .addOutput(<openmodularturrets:intermediate_tiered:12>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t3_barrel")
  .create();

// T4
RecipeBuilder.get("engineer")
  .setShaped([
    [quartz, diamond, quartz],
    [null, <openmodularturrets:intermediate_tiered:12>, null],
    [quartz, diamond, quartz]])
  .addTool(solderer, 16)
  .addOutput(<openmodularturrets:intermediate_tiered:13>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t4_barrel")
  .create();

// T5
RecipeBuilder.get("engineer")
  .setShaped([
    [obsidian, obsidian, obsidian],
    [<minecraft:glowstone_dust>, <openmodularturrets:intermediate_tiered:13>, <minecraft:glowstone_dust>],
    [obsidian, obsidian, obsidian]])
  .addTool(solderer, 28)
  .addTool(spanner, 28)
  .addOutput(<openmodularturrets:intermediate_tiered:14>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t5_barrel")
  .create();

# Turret Bases
# Uses Pliers, Spanners, and [T3+] Solderers
recipes.remove(<openmodularturrets:turret_base:*>);
// T1
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:cobblestone>, <ore:plankWood>, <ore:cobblestone>],
    [<minecraft:planks>, <openmodularturrets:intermediate_tiered>, <ore:plankWood>],
    [<ore:cobblestone>, <ore:plankWood>, <ore:cobblestone>]])
  .addTool(pliers, 5)
  .addOutput(<openmodularturrets:turret_base>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t1_base")
  .create();

// T2
RecipeBuilder.get("engineer")
  .setShaped([
    [iron, <openmodularturrets:turret_base>, iron],
    [<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:1>, <openmodularturrets:intermediate_regular>],
    [iron, <openmodularturrets:intermediate_regular>, iron]])
  .addTool(spanner, 10)
  .addOutput(<openmodularturrets:turret_base:1>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t2_base")
  .create();

// T3
RecipeBuilder.get("engineer")
  .setShaped([
    [gold, <openmodularturrets:turret_base:1>, gold],
    [<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:2>, <openmodularturrets:intermediate_regular>],
    [gold, <openmodularturrets:intermediate_regular>, gold]])
  .addTool(pliers, 25)
  .addTool(spanner, 25)
  .addOutput(<openmodularturrets:turret_base:2>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t3_base")
  .create();

// T4
RecipeBuilder.get("engineer")
  .setShaped([
    [diamond, <openmodularturrets:turret_base:2>, diamond],
    [<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:3>, <openmodularturrets:intermediate_regular>],
    [diamond, <openmodularturrets:intermediate_regular>, diamond]])
  .addTool(pliers, 40)
  .addTool(solderer, 40)
  .addTool(spanner, 40)
  .addOutput(<openmodularturrets:turret_base:3>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t4_base")
  .create();

// T5
RecipeBuilder.get("engineer")
  .setShaped([
    [obsidian, <openmodularturrets:turret_base:3>, obsidian],
    [<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:4>, <openmodularturrets:intermediate_regular>],
    [obsidian, <openmodularturrets:intermediate_regular>, obsidian]])
  .addTool(pliers, 75)
  .addTool(solderer, 75)
  .addTool(spanner, 75)
  .addOutput(<openmodularturrets:turret_base:4>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t5_base")
  .create();

# Expanders
# Inventory - Cutters
# Power - Solderer
# Loot Deleter - Pliers, Solderer, Spanner
recipes.remove(<openmodularturrets:expander:*>);
recipes.remove(<openmodularturrets:base_addon>);

// Inventory
// T1
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:cobblestone>, <ore:plankWood>, <ore:cobblestone>],
    [<openmodularturrets:intermediate_regular>, <ore:chest>, <openmodularturrets:intermediate_regular>],
    [<ore:cobblestone>, <openmodularturrets:intermediate_regular>, <ore:cobblestone>]])
  .addTool(cutters, 5)
  .addOutput(<openmodularturrets:expander>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t1_inv_expander")
  .create();

// T2
RecipeBuilder.get("engineer")
  .setShaped([
    [iron, <openmodularturrets:expander>, iron],
    [<openmodularturrets:intermediate_regular>, <ore:chest>, <openmodularturrets:intermediate_regular>],
    [iron, <openmodularturrets:intermediate_regular>, iron]])
  .addTool(cutters, 15)
  .addOutput(<openmodularturrets:expander:1>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t2_inv_expander")
  .create();

// T3
RecipeBuilder.get("engineer")
  .setShaped([
    [gold, <openmodularturrets:expander:1>, gold],
    [<openmodularturrets:intermediate_regular>, <ore:chest>, <openmodularturrets:intermediate_regular>],
    [gold, <openmodularturrets:intermediate_regular>, gold]])
  .addTool(cutters, 25)
  .addOutput(<openmodularturrets:expander:2>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t3_inv_expander")
  .create();

// T4
RecipeBuilder.get("engineer")
  .setShaped([
    [diamond, <openmodularturrets:expander:2>, diamond],
    [<openmodularturrets:intermediate_regular>, <ore:chest>, <openmodularturrets:intermediate_regular>],
    [diamond, <openmodularturrets:intermediate_regular>, diamond]])
  .addTool(cutters, 35)
  .addOutput(<openmodularturrets:expander:3>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t4_inv_expander")
  .create();

// T5
RecipeBuilder.get("engineer")
  .setShaped([
    [obsidian, <openmodularturrets:expander:3>, obsidian],
    [<openmodularturrets:intermediate_regular>, <ore:chest>, <openmodularturrets:intermediate_regular>],
    [obsidian, <openmodularturrets:intermediate_regular>, obsidian]])
  .addTool(cutters, 50)
  .addOutput(<openmodularturrets:expander:4>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t5_inv_expander")
  .create();


// Power
// T1
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:cobblestone>, <ore:plankWood>, <ore:cobblestone>],
    [<openmodularturrets:intermediate_regular>, redstone, <openmodularturrets:intermediate_regular>],
    [<ore:cobblestone>, <openmodularturrets:intermediate_regular>, <ore:cobblestone>]])
  .addTool(solderer, 5)
  .addOutput(<openmodularturrets:expander:5>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t1_power_expander")
  .create();

// T2
RecipeBuilder.get("engineer")
  .setShaped([
    [iron, <openmodularturrets:expander:5>, iron],
    [<openmodularturrets:intermediate_regular>, <minecraft:redstone_block>, <openmodularturrets:intermediate_regular>],
    [iron, <openmodularturrets:intermediate_regular>, iron]])
  .addTool(solderer, 15)
  .addOutput(<openmodularturrets:expander:6>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t2_power_expander")
  .create();

// T3
RecipeBuilder.get("engineer")
  .setShaped([
    [gold, <openmodularturrets:expander:6>, gold],
    [<openmodularturrets:intermediate_regular>, <minecraft:redstone_block>, <openmodularturrets:intermediate_regular>],
    [gold, <openmodularturrets:intermediate_regular>, gold]])
  .addTool(solderer, 25)
  .addTool(spanner, 25)
  .addOutput(<openmodularturrets:expander:7>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t3_power_expander")
  .create();

// T4
RecipeBuilder.get("engineer")
  .setShaped([
    [diamond, <openmodularturrets:expander:7>, diamond],
    [<openmodularturrets:intermediate_regular>, <minecraft:redstone_block>, <openmodularturrets:intermediate_regular>],
    [diamond, <openmodularturrets:intermediate_regular>, diamond]])
  .addTool(pliers, 50)
  .addTool(solderer, 50)
  .addTool(spanner, 50)
  .addOutput(<openmodularturrets:expander:8>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t4_power_expander")
  .create();

// T5
RecipeBuilder.get("engineer")
  .setShaped([
    [obsidian, <openmodularturrets:expander:8>, obsidian],
    [<openmodularturrets:intermediate_regular>, <minecraft:redstone_block>, <openmodularturrets:intermediate_regular>],
    [obsidian, <openmodularturrets:intermediate_regular>, obsidian]])
  .addTool(pliers, 100)
  .addTool(solderer, 100)
  .addTool(spanner, 100)
  .addOutput(<openmodularturrets:expander:9>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("t5_power_expander")
  .create();


# Add-ons (Upgrades)
recipes.remove(<openmodularturrets:addon_meta:*>);

// Turret Concealer
RecipeBuilder.get("engineer")
  .setShaped([
    [diamond, quartz, <minecraft:ender_pearl>, quartz, diamond],
    [quartz, redstone, redstone, redstone, quartz],
    [<minecraft:ender_pearl>, redstone, <multistorage:stone_storage:3>|<multistorage:stone_storage:4>, redstone, <minecraft:ender_pearl>],
    [quartz, redstone, redstone, redstone, quartz],
    [diamond, quartz, <minecraft:ender_pearl>, quartz, diamond]])
  .addTool(pliers, 250)
  .addTool(solderer, 250)
  .addTool(spanner, 250)
  .addOutput(<openmodularturrets:addon_meta>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("concealer_add-on")
  .create();

// Damage Boost
RecipeBuilder.get("engineer")
  .setShaped([
    [iron, iron, iron],
    [<minecraft:ender_pearl>, <minecraft:redstone_block>, <minecraft:ender_pearl>],
    [iron, diamond, iron]])
  .addTool(solderer, 50)
  .addTool(cutters, 30)
  .addOutput(<openmodularturrets:addon_meta:1>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("damage_boost_add-on")
  .create();

// Potentia Converter
print("TODO - Find out what the Potentia Converter does");
<openmodularturrets:addon_meta:2>.addTooltip(format.red("Disabled - idk what it does"));

// Recycler
RecipeBuilder.get("engineer")
  .setShaped([
    [gold, <ore:circuitBasic>, gold],
    [<ore:circuitAdvanced>, <nhc:energypearl>, <openmodularturrets:intermediate_regular>],
    [gold, <ore:circuitBasic>, gold]])
  .addTool(solderer, 35)
  .addOutput(<openmodularturrets:addon_meta:3>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("recycler_add-on")
  .create();

// Redstone Reactor
RecipeBuilder.get("engineer")
  .setShaped([
    [quartz, <minecraft:redstone_block>, quartz],
    [<minecraft:redstone_block>, <nhc:energypearl>, <openmodularturrets:intermediate_regular>],
    [quartz, <minecraft:redstone_block>, quartz]])
  .addTool(solderer, 25)
  .addTool(spanner, 20)
  .addOutput(<openmodularturrets:addon_meta:4>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("reactor_add-on")
  .create();

// Solar Panel
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
    [redstone, <solarflux:solar_panel_3>, redstone],
    [gold, <openmodularturrets:intermediate_regular>, gold]])
  .addTool(pliers, 30)
  .addTool(solderer, 40)
  .addOutput(<openmodularturrets:addon_meta:6>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("solar_panel_add-on")
  .create();

// Fake Drops
RecipeBuilder.get("engineer")
  .setShaped([
    [quartz, <minecraft:lapis_block>, quartz],
    [<minecraft:lapis_block>, <minecraft:ender_pearl>, <openmodularturrets:intermediate_regular>],
    [quartz, <minecraft:lapis_block>, quartz]])
  .addTool(pliers, 30)
  .addTool(hammer, 50)
  .addOutput(<openmodularturrets:addon_meta:7>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("fake_drops_add-on")
  .create();

# Upgrades
recipes.remove(<openmodularturrets:upgrade_meta:*>);

// Accuracy
RecipeBuilder.get("engineer")
  .setShaped([
    [null, quartz, null],
    [quartz, gold, quartz],
    [null, <openmodularturrets:intermediate_regular>, null]])
  .addTool(solderer, 10)
  .addOutput(<openmodularturrets:upgrade_meta>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("accuracy_upgrade")
  .create();

// Efficiency
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <minecraft:emerald>, null],
    [<minecraft:emerald>, <extrautils2:ingredients:2>, <minecraft:emerald>],
    [null, <openmodularturrets:intermediate_regular>, null]])
  .addTool(spanner, 10)
  .addOutput(<openmodularturrets:upgrade_meta:1>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("om_efficiency_upgrade")
  .create();

// Fire Rate
RecipeBuilder.get("engineer")
  .setShaped([
    [null, quartz, null],
    [quartz, <minecraft:blaze_powder>, quartz],
    [null, <openmodularturrets:intermediate_regular>, null]])
  .setSecondaryIngredients([<minecraft:fire_charge> * 3])
  .addTool(spanner, 22)
  .addOutput(<openmodularturrets:upgrade_meta:2>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("fire_rate_upgrade")
  .create();

// Range
RecipeBuilder.get("engineer")
  .setShaped([
    [null, gold, null],
    [gold, diamond, gold],
    [null, <openmodularturrets:intermediate_regular>, null]])
  .setSecondaryIngredients([<ore:blockGlass>])
  .addTool(hammer, 15)
  .addOutput(<openmodularturrets:upgrade_meta:3>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("range_upgrade")
  .create();

// Scatter Shot
RecipeBuilder.get("engineer")
  .setShaped([
    [null, quartz, null],
    [quartz, <minecraft:prismarine_shard>, quartz],
    [null, <openmodularturrets:intermediate_regular>, null]])
  .addTool(pliers, 30)
  .addTool(solderer, 25)
  .addOutput(<openmodularturrets:upgrade_meta:4>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("scatter_shot_upgrade")
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [null, quartz, null],
    [quartz, null, quartz],
    [null, <openmodularturrets:intermediate_regular>, null]])
  .setSecondaryIngredients([<extrautils2:endershard> * 8])
  .addTool(solderer, 25)
  .addTool(cutters, 15)
  .addOutput(<openmodularturrets:upgrade_meta:4>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("scatter_shot_upgrade_ender")
  .create();

# Ammo
recipes.remove(<openmodularturrets:ammo_meta:*>);

// Blazing Clay
// 0.5x durability
var clay = <minecraft:clay_ball>;

RecipeBuilder.get("blacksmith")
  .setShaped([
    [clay, redstone, clay],
    [redstone, <minecraft:fire_charge>, redstone],
    [clay, redstone, clay]])
  .addTool(file, 8)
  .addOutput(<openmodularturrets:ammo_meta> * 16)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("blazing_clay_charge")
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [clay, redstone, clay],
    [redstone, <minecraft:blaze_powder>, redstone],
    [clay, redstone, clay]])
  .addTool(file, 32)
  .addOutput(<openmodularturrets:ammo_meta> * 64)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("blazing_clay_blaze")
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [clay, redstone, clay],
    [redstone, clay, redstone],
    [clay, redstone, clay]])
  .setFluid(<liquid:lava> * 1000)
  .addTool(file, 64)
  .addOutput(<openmodularturrets:ammo_meta> * 64)
  .setExtraOutputOne(<openmodularturrets:ammo_meta> * 64, 1.0)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("blazing_clay_lava")
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [clay, redstone, clay],
    [redstone, clay, redstone],
    [clay, redstone, clay]])
  .setFluid(<liquid:pyrotheum> * 1000)
  .addTool(file, 128)
  .addOutput(<openmodularturrets:ammo_meta> * 64)
  .setExtraOutputOne(<openmodularturrets:ammo_meta> * 64, 1.0)
  .setExtraOutputTwo(<openmodularturrets:ammo_meta> * 64, 1.0)
  .setExtraOutputThree(<openmodularturrets:ammo_meta> * 64, 1.0)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("blazing_clay_pyrotheum")
  .create();

// Bullet
// 1x durability
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, iron, null],
    [<minecraft:gunpowder>, redstone, <minecraft:gunpowder>],
    [null, iron, null]])
  .addTool(file, 64)
  .addOutput(<openmodularturrets:ammo_meta:1> * 64)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("bullet")
  .create();

// Ferro-Magnetic Slug
// 2x durability
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, iron, null],
    [iron, redstone, iron],
    [redstone, iron, redstone]])
   .setSecondaryIngredients([<openmodularturrets:ammo_meta:1> * 32])
  .addTool(file, 64)
  .addOutput(<openmodularturrets:ammo_meta:2> * 32)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("ferro-magnetic_slug")
  .create();

// Grenade
// 4x durability
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, redstone, null],
    [iron, <minecraft:gunpowder>, iron],
    [null, iron, null]])
  .addTool(file, 64)
  .addOutput(<openmodularturrets:ammo_meta:3> * 16)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("grenade_gunpowder")
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<minecraft:iron_trapdoor>],
    [<minecraft:tnt>],
    [<minecraft:redstone_block>]])
  .addTool(file, 128)
  .addOutput(<openmodularturrets:ammo_meta:3> * 32)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("grenade_tnt")
  .create();

// Rocket
// 10x durability
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, iron, null],
    [iron, <minecraft:gunpowder>, iron],
    [iron, redstone, iron]])
  .setSecondaryIngredients([<minecraft:fire_charge> * 6])
  .addTool(file, 480)
  .addTool(solderer, 48)
  .addOutput(<openmodularturrets:ammo_meta:4> * 16)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("rocket_gunpowder")
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, iron, null],
    [iron, <minecraft:tnt>, iron],
    [iron, <minecraft:redstone_block>, iron]])
  .addTool(file, 360)
  .addTool(solderer, 36)
  .addOutput(<openmodularturrets:ammo_meta:4> * 64)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("rocket_tnt")
  .create();


# Turrets
// Hammer & Cutter
recipes.remove(<openmodularturrets:disposable_item_turret>);
recipes.remove(<openmodularturrets:potato_cannon_turret>);
recipes.remove(<openmodularturrets:machine_gun_turret>);
recipes.remove(<openmodularturrets:incendiary_turret>);
recipes.remove(<openmodularturrets:grenade_turret>);
recipes.remove(<openmodularturrets:relativistic_turret>);
recipes.remove(<openmodularturrets:rocket_turret>);
recipes.remove(<openmodularturrets:teleporter_turret>);
recipes.remove(<openmodularturrets:laser_turret>);
recipes.remove(<openmodularturrets:rail_gun_turret>);


// Disposable Item
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <openmodularturrets:intermediate_tiered:10>, null],
    [<ore:cobblestone>, <openmodularturrets:intermediate_tiered:5>, <ore:cobblestone>],
    [<ore:cobblestone>, redstone, <ore:cobblestone>]])
  .addTool(hammer, 5)
  .addOutput(<openmodularturrets:disposable_item_turret>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("disposable_item_turret")
  .create();

// Potato Cannon
RecipeBuilder.get("engineer")
  .setShaped([
    [redstone, <openmodularturrets:intermediate_tiered:10>, redstone],
    [<ore:cobblestone>, <openmodularturrets:intermediate_tiered:10>, <ore:cobblestone>],
    [<ore:cobblestone>, <openmodularturrets:intermediate_tiered:5>, <ore:cobblestone>]])
  .addTool(hammer, 10)
  .addOutput(<openmodularturrets:potato_cannon_turret>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("potato_cannon")
  .create();

// (Machine) Gun
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <openmodularturrets:intermediate_tiered:11>, null],
    [<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:11>, <openmodularturrets:intermediate_regular>],
    [iron, <openmodularturrets:intermediate_tiered:6>, iron]])
  .addTool(hammer, 15)
  .addTool(cutters, 7)
  .addOutput(<openmodularturrets:machine_gun_turret>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("machine_gun")
  .create();

// Incendiary
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <openmodularturrets:intermediate_tiered:11>, null],
    [null, <openmodularturrets:intermediate_tiered:6>, null],
    [iron, <openmodularturrets:intermediate_regular>, iron]])
  .addTool(hammer, 10)
  .addTool(cutters, 15)
  .addOutput(<openmodularturrets:incendiary_turret>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("flamethrower")
  .create();

// Grenade
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <openmodularturrets:intermediate_tiered:12>, null],
    [gold, <openmodularturrets:intermediate_tiered:7>, gold],
    [gold, <openmodularturrets:intermediate_regular>, gold]])
  .addTool(hammer, 25)
  .addTool(cutters, 20)
  .addOutput(<openmodularturrets:grenade_turret>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("grenade_turret")
  .create();

// Relativistic
RecipeBuilder.get("engineer")
  .setShaped([
    [gold, <nhc:energypearl>, gold],
    [<minecraft:ender_pearl>, <openmodularturrets:intermediate_tiered:2>, <minecraft:ender_pearl>],
    [gold, <openmodularturrets:intermediate_regular>, gold]])
  .addTool(pliers, 10)
  .addTool(hammer, 15)
  .addTool(spanner, 5)
  .addOutput(<openmodularturrets:relativistic_turret>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("relativistic_turret")
  .create();

// Rocket Launcher
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <openmodularturrets:intermediate_tiered:13>, null],
    [quartz, <openmodularturrets:intermediate_tiered:8>, quartz],
    [diamond, <openmodularturrets:intermediate_regular>, diamond]])
  .setSecondaryIngredients([<openmodularturrets:intermediate_tiered:3>])
  .addTool(hammer, 50)
  .addTool(cutters, 75)
  .addOutput(<openmodularturrets:rocket_turret>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("rocket_launcher")
  .create();

// Teleporter
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:ender_pearl>, <openmodularturrets:intermediate_regular>, <minecraft:ender_pearl>],
    [diamond, <openmodularturrets:intermediate_tiered:3>, diamond],
    [<minecraft:ender_pearl>, <thermalexpansion:capacitor>, <minecraft:ender_pearl>]])
  .setSecondaryIngredients([<nhc:energypearl>])
  .addTool(pliers, 5)
  .addTool(solderer, 25)
  .addTool(spanner, 10)
  .addOutput(<openmodularturrets:teleporter_turret>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("teleporter")
  .create();

// Laser
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <openmodularturrets:intermediate_tiered:14>, null],
    [<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:9>, <openmodularturrets:intermediate_regular>],
    [obsidian, obsidian, obsidian]])
  .setSecondaryIngredients([<openmodularturrets:intermediate_tiered:4>])
  .addTool(pliers, 20)
  .addTool(solderer, 20)
  .addTool(spanner, 15)
  .addOutput(<openmodularturrets:laser_turret>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("laser_turret")
  .create();

// Rail Gun
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <openmodularturrets:intermediate_tiered:14>, null],
    [obsidian, <openmodularturrets:intermediate_tiered:9>, obsidian],
    [obsidian, <openmodularturrets:intermediate_tiered:4>, obsidian]])
  .setSecondaryIngredients([<openmodularturrets:intermediate_regular>*2])
  .addTool(pliers, 30)
  .addTool(solderer, 50)
  .addTool(spanner, 25)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering", "cyborg:technology/automated_defenses"]))
  .setName("rail_gun")
  .addOutput(<openmodularturrets:rail_gun_turret>)
  .create();

print("OpenModularTurrets.zs loaded");