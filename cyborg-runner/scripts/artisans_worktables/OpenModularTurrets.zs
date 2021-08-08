# Changes recipes for Open Modular Turrets' items/blocks
# Uses the Engineering Table (and sometimes Blacksmith's)

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.FTGU;
import mods.artisanintegrations.requirement.Reskillable;
import mods.artisanintegrations.requirement.GameStages;

print("OpenModularTurrets.zs loading...");

// IO Bus
recipes.remove(<openmodularturrets:intermediate_regular>);
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <minecraft:iron_ingot>, null],
    [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>],
    [null, <minecraft:gold_ingot>, null]])
  .addTool(<ore:artisansSolderer>, 2)
  .addOutput(<openmodularturrets:intermediate_regular>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
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
    [null, <minecraft:redstone>, null],
    [<minecraft:redstone>, <ore:planks>, <minecraft:redstone>],
    [null, <minecraft:redstone>, null]])
  .addTool(<ore:artisansSolderer>, 1)
  .addOutput(<openmodularturrets:intermediate_tiered>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("t1_sensor")
  .create();

// T2
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <minecraft:iron_ingot>, null],
    [<minecraft:iron_ingot>, <openmodularturrets:intermediate_tiered>, <minecraft:iron_ingot>],
    [null, <openmodularturrets:intermediate_regular>, null]])
  .addTool(<ore:artisansSolderer>, 2)
  .addOutput(<openmodularturrets:intermediate_tiered:1>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("t2_sensor")
  .create();

// T3
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <openmodularturrets:intermediate_regular>, null],
    [<minecraft:gold_ingot>, <openmodularturrets:intermediate_tiered:1>, <minecraft:gold_ingot>],
    [null, <openmodularturrets:intermediate_regular>, null]])
  .addTool(<ore:artisansSolderer>, 3)
  .addTool(<ore:artisansSpanner>, 3)
  .addOutput(<openmodularturrets:intermediate_tiered:2>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("t3_sensor")
  .create();

// T4
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:gold_ingot>, <minecraft:diamond>, <minecraft:gold_ingot>],
    [<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:2>, <openmodularturrets:intermediate_regular>],
    [<minecraft:quartz>, <minecraft:diamond>, <minecraft:quartz>]])
  .addTool(<ore:artisansSolderer>, 5)
  .addTool(<ore:artisansSpanner>, 5)
  .addOutput(<openmodularturrets:intermediate_tiered:3>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("t4_sensor")
  .create();

// T5
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:emerald>, <minecraft:obsidian>, <minecraft:emerald>],
    [<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:3>, <openmodularturrets:intermediate_regular>],
    [<minecraft:glowstone_dust>, <minecraft:obsidian>, <minecraft:glowstone_dust>]])
  .addTool(<ore:artisansSolderer>, 10)
  .addTool(<ore:artisansSpanner>, 10)
  .addOutput(<openmodularturrets:intermediate_tiered:4>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
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
    [null, <ore:plankWood>, <minecraft:redstone>],
    [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]])
  .addTool(<ore:artisansPliers>, 2)
  .addOutput(<openmodularturrets:intermediate_tiered:5>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("t1_chamber")
  .create();

// T2
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
    [null, <openmodularturrets:intermediate_tiered:5>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]])
  .addTool(<ore:artisansPliers>, 5)
  .addOutput(<openmodularturrets:intermediate_tiered:6>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("t2_chamber")
  .create();

// T3
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
    [null, <openmodularturrets:intermediate_tiered:6>, <openmodularturrets:intermediate_regular>],
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]])
  .addTool(<ore:artisansPliers>, 8)
  .addTool(<ore:artisansSpanner>, 8)
  .addOutput(<openmodularturrets:intermediate_tiered:7>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("t3_chamber")
  .create();

// T4
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:quartz>, <minecraft:diamond>, <minecraft:quartz>],
    [null, <openmodularturrets:intermediate_tiered:7>, <openmodularturrets:intermediate_regular>],
    [<minecraft:quartz>, <minecraft:diamond>, <minecraft:quartz>]])
  .addTool(<ore:artisansPliers>, 14)
  .addTool(<ore:artisansSpanner>, 14)
  .addOutput(<openmodularturrets:intermediate_tiered:8>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("t4_chamber")
  .create();

// T5
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:quartz>, <minecraft:obsidian>, <minecraft:obsidian>],
    [null, <openmodularturrets:intermediate_tiered:8>, <openmodularturrets:intermediate_regular>],
    [<minecraft:quartz>, <minecraft:obsidian>, <minecraft:obsidian>]])
  .addTool(<ore:artisansPliers>, 32)
  .addTool(<ore:artisansSpanner>, 32)
  .addOutput(<openmodularturrets:intermediate_tiered:9>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
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
  .addTool(<ore:artisansSpanner>, 1)
  .addOutput(<openmodularturrets:intermediate_tiered:10>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("t1_barrel")
  .create();

// T2
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
    [null, <openmodularturrets:intermediate_tiered:10>, null],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]])
  .addTool(<ore:artisansSolderer>, 4)
  .addOutput(<openmodularturrets:intermediate_tiered:11>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("t2_barrel")
  .create();

// T3
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
    [null, <openmodularturrets:intermediate_tiered:11>, null],
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]])
  .addTool(<ore:artisansSolderer>, 9)
  .addOutput(<openmodularturrets:intermediate_tiered:12>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("t3_barrel")
  .create();

// T4
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:quartz>, <minecraft:diamond>, <minecraft:quartz>],
    [null, <openmodularturrets:intermediate_tiered:12>, null],
    [<minecraft:quartz>, <minecraft:diamond>, <minecraft:quartz>]])
  .addTool(<ore:artisansSolderer>, 16)
  .addOutput(<openmodularturrets:intermediate_tiered:13>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("t4_barrel")
  .create();

// T5
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>],
    [<minecraft:glowstone_dust>, <openmodularturrets:intermediate_tiered:13>, <minecraft:glowstone_dust>],
    [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]])
  .addTool(<ore:artisansSolderer>, 28)
  .addTool(<ore:artisansSpanner>, 28)
  .addOutput(<openmodularturrets:intermediate_tiered:14>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
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
  .addTool(<ore:artisansPliers>, 5)
  .addOutput(<openmodularturrets:turret_base>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("t1_base")
  .create();

// T2
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:iron_ingot>, <openmodularturrets:turret_base>, <minecraft:iron_ingot>],
    [<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:1>, <openmodularturrets:intermediate_regular>],
    [<minecraft:iron_ingot>, <openmodularturrets:intermediate_regular>, <minecraft:iron_ingot>]])
  .addTool(<ore:artisansSpanner>, 10)
  .addOutput(<openmodularturrets:turret_base:1>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("t2_base")
  .create();

// T3
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:gold_ingot>, <openmodularturrets:turret_base:1>, <minecraft:gold_ingot>],
    [<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:2>, <openmodularturrets:intermediate_regular>],
    [<minecraft:gold_ingot>, <openmodularturrets:intermediate_regular>, <minecraft:gold_ingot>]])
  .addTool(<ore:artisansPliers>, 25)
  .addTool(<ore:artisansSpanner>, 25)
  .addOutput(<openmodularturrets:turret_base:2>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("t3_base")
  .create();

// T4
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:diamond>, <openmodularturrets:turret_base:2>, <minecraft:diamond>],
    [<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:3>, <openmodularturrets:intermediate_regular>],
    [<minecraft:diamond>, <openmodularturrets:intermediate_regular>, <minecraft:diamond>]])
  .addTool(<ore:artisansPliers>, 40)
  .addTool(<ore:artisansSolderer>, 40)
  .addTool(<ore:artisansSpanner>, 40)
  .addOutput(<openmodularturrets:turret_base:3>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("t4_base")
  .create();

// T5
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:obsidian>, <openmodularturrets:turret_base:3>, <minecraft:obsidian>],
    [<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:4>, <openmodularturrets:intermediate_regular>],
    [<minecraft:obsidian>, <openmodularturrets:intermediate_regular>, <minecraft:obsidian>]])
  .addTool(<ore:artisansPliers>, 75)
  .addTool(<ore:artisansSolderer>, 75)
  .addTool(<ore:artisansSpanner>, 75)
  .addOutput(<openmodularturrets:turret_base:4>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
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
  .addTool(<ore:artisansCutters>, 5)
  .addOutput(<openmodularturrets:expander>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("t1_inv_expander")
  .create();

// T2
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:iron_ingot>, <openmodularturrets:expander>, <minecraft:iron_ingot>],
    [<openmodularturrets:intermediate_regular>, <ore:chest>, <openmodularturrets:intermediate_regular>],
    [<minecraft:iron_ingot>, <openmodularturrets:intermediate_regular>, <minecraft:iron_ingot>]])
  .addTool(<ore:artisansCutters>, 15)
  .addOutput(<openmodularturrets:expander:1>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("t2_inv_expander")
  .create();

// T3
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:gold_ingot>, <openmodularturrets:expander:1>, <minecraft:gold_ingot>],
    [<openmodularturrets:intermediate_regular>, <ore:chest>, <openmodularturrets:intermediate_regular>],
    [<minecraft:gold_ingot>, <openmodularturrets:intermediate_regular>, <minecraft:gold_ingot>]])
  .addTool(<ore:artisansCutters>, 25)
  .addOutput(<openmodularturrets:expander:2>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("t3_inv_expander")
  .create();

// T4
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:diamond>, <openmodularturrets:expander:2>, <minecraft:diamond>],
    [<openmodularturrets:intermediate_regular>, <ore:chest>, <openmodularturrets:intermediate_regular>],
    [<minecraft:diamond>, <openmodularturrets:intermediate_regular>, <minecraft:diamond>]])
  .addTool(<ore:artisansCutters>, 35)
  .addOutput(<openmodularturrets:expander:3>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("t4_inv_expander")
  .create();

// T5
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:obsidian>, <openmodularturrets:expander:3>, <minecraft:obsidian>],
    [<openmodularturrets:intermediate_regular>, <ore:chest>, <openmodularturrets:intermediate_regular>],
    [<minecraft:obsidian>, <openmodularturrets:intermediate_regular>, <minecraft:obsidian>]])
  .addTool(<ore:artisansCutters>, 50)
  .addOutput(<openmodularturrets:expander:4>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("t5_inv_expander")
  .create();


// Power
// T1
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:cobblestone>, <ore:plankWood>, <ore:cobblestone>],
    [<openmodularturrets:intermediate_regular>, <minecraft:redstone>, <openmodularturrets:intermediate_regular>],
    [<ore:cobblestone>, <openmodularturrets:intermediate_regular>, <ore:cobblestone>]])
  .addTool(<ore:artisansSolderer>, 5)
  .addOutput(<openmodularturrets:expander:5>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("t1_power_expander")
  .create();

// T2
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:iron_ingot>, <openmodularturrets:expander:5>, <minecraft:iron_ingot>],
    [<openmodularturrets:intermediate_regular>, <minecraft:redstone_block>, <openmodularturrets:intermediate_regular>],
    [<minecraft:iron_ingot>, <openmodularturrets:intermediate_regular>, <minecraft:iron_ingot>]])
  .addTool(<ore:artisansSolderer>, 15)
  .addOutput(<openmodularturrets:expander:6>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("t2_power_expander")
  .create();

// T3
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:gold_ingot>, <openmodularturrets:expander:6>, <minecraft:gold_ingot>],
    [<openmodularturrets:intermediate_regular>, <minecraft:redstone_block>, <openmodularturrets:intermediate_regular>],
    [<minecraft:gold_ingot>, <openmodularturrets:intermediate_regular>, <minecraft:gold_ingot>]])
  .addTool(<ore:artisansSolderer>, 25)
  .addTool(<ore:artisansSpanner>, 25)
  .addOutput(<openmodularturrets:expander:7>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("t3_power_expander")
  .create();

// T4
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:diamond>, <openmodularturrets:expander:7>, <minecraft:diamond>],
    [<openmodularturrets:intermediate_regular>, <minecraft:redstone_block>, <openmodularturrets:intermediate_regular>],
    [<minecraft:diamond>, <openmodularturrets:intermediate_regular>, <minecraft:diamond>]])
  .addTool(<ore:artisansPliers>, 50)
  .addTool(<ore:artisansSolderer>, 50)
  .addTool(<ore:artisansSpanner>, 50)
  .addOutput(<openmodularturrets:expander:8>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("t4_power_expander")
  .create();

// T5
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:obsidian>, <openmodularturrets:expander:8>, <minecraft:obsidian>],
    [<openmodularturrets:intermediate_regular>, <minecraft:redstone_block>, <openmodularturrets:intermediate_regular>],
    [<minecraft:obsidian>, <openmodularturrets:intermediate_regular>, <minecraft:obsidian>]])
  .addTool(<ore:artisansPliers>, 100)
  .addTool(<ore:artisansSolderer>, 100)
  .addTool(<ore:artisansSpanner>, 100)
  .addOutput(<openmodularturrets:expander:9>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("t5_power_expander")
  .create();


# Add-ons (Upgrades)
recipes.remove(<openmodularturrets:addon_meta:*>);

// Turret Concealer
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:diamond>, <minecraft:quartz>, <minecraft:ender_pearl>, <minecraft:quartz>, <minecraft:diamond>],
    [<minecraft:quartz>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:quartz>],
    [<minecraft:ender_pearl>, <minecraft:redstone>, <multistorage:stone_storage:3>|<multistorage:stone_storage:4>, <minecraft:redstone>, <minecraft:ender_pearl>],
    [<minecraft:quartz>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:quartz>],
    [<minecraft:diamond>, <minecraft:quartz>, <minecraft:ender_pearl>, <minecraft:quartz>, <minecraft:diamond>]])
  .addTool(<ore:artisansPliers>, 250)
  .addTool(<ore:artisansSolderer>, 250)
  .addTool(<ore:artisansSpanner>, 250)
  .addOutput(<openmodularturrets:addon_meta>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("concealer_add-on")
  .create();

// Damage Boost
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
    [<minecraft:ender_pearl>, <minecraft:redstone_block>, <minecraft:ender_pearl>],
    [<minecraft:iron_ingot>, <minecraft:diamond>, <minecraft:iron_ingot>]])
  .addTool(<ore:artisansSolderer>, 50)
  .addTool(<ore:artisansCutters>, 30)
  .addOutput(<openmodularturrets:addon_meta:1>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("damage_boost_add-on")
  .create();

// Potentia Converter
print("TODO - Find out what the Potentia Converter does");
<openmodularturrets:addon_meta:2>.addTooltip(format.red("Disabled - idk what it does"));

// Recycler
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:gold_ingot>, <ore:circuitBasic>, <minecraft:gold_ingot>],
    [<ore:circuitAdvanced>, <nhc:energypearl>, <openmodularturrets:intermediate_regular>],
    [<minecraft:gold_ingot>, <ore:circuitBasic>, <minecraft:gold_ingot>]])
  .addTool(<ore:artisansSolderer>, 35)
  .addOutput(<openmodularturrets:addon_meta:3>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("recycler_add-on")
  .create();

// Redstone Reactor
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:quartz>, <minecraft:redstone_block>, <minecraft:quartz>],
    [<minecraft:redstone_block>, <nhc:energypearl>, <openmodularturrets:intermediate_regular>],
    [<minecraft:quartz>, <minecraft:redstone_block>, <minecraft:quartz>]])
  .addTool(<ore:artisansSolderer>, 25)
  .addTool(<ore:artisansSpanner>, 20)
  .addOutput(<openmodularturrets:addon_meta:4>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("reactor_add-on")
  .create();

// Solar Panel
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
    [<minecraft:redstone>, <solarflux:solar_panel_3>, <minecraft:redstone>],
    [<minecraft:gold_ingot>, <openmodularturrets:intermediate_regular>, <minecraft:gold_ingot>]])
  .addTool(<ore:artisansPliers>, 30)
  .addTool(<ore:artisansSolderer>, 40)
  .addOutput(<openmodularturrets:addon_meta:6>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("solar_panel_add-on")
  .create();

// Fake Drops
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:quartz>, <minecraft:lapis_block>, <minecraft:quartz>],
    [<minecraft:lapis_block>, <minecraft:ender_pearl>, <openmodularturrets:intermediate_regular>],
    [<minecraft:quartz>, <minecraft:lapis_block>, <minecraft:quartz>]])
  .addTool(<ore:artisansPliers>, 30)
  .addTool(<ore:artisansHammer>, 50)
  .addOutput(<openmodularturrets:addon_meta:7>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("fake_drops_add-on")
  .create();

# Upgrades
recipes.remove(<openmodularturrets:upgrade_meta:*>);

// Accuracy
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <minecraft:quartz>, null],
    [<minecraft:quartz>, <minecraft:gold_ingot>, <minecraft:quartz>],
    [null, <openmodularturrets:intermediate_regular>, null]])
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<openmodularturrets:upgrade_meta>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("accuracy_upgrade")
  .create();

// Efficiency
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <minecraft:emerald>, null],
    [<minecraft:emerald>, <extrautils2:ingredients:2>, <minecraft:emerald>],
    [null, <openmodularturrets:intermediate_regular>, null]])
  .addTool(<ore:artisansSpanner>, 10)
  .addOutput(<openmodularturrets:upgrade_meta:1>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("efficiency_upgrade")
  .create();

// Fire Rate
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <minecraft:quartz>, null],
    [<minecraft:quartz>, <minecraft:blaze_powder>, <minecraft:quartz>],
    [null, <openmodularturrets:intermediate_regular>, null]])
  .setSecondaryIngredients([<minecraft:fire_charge> * 3])
  .addTool(<ore:artisansSpanner>, 22)
  .addOutput(<openmodularturrets:upgrade_meta:2>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("fire_rate_upgrade")
  .create();

// Range
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <minecraft:gold_ingot>, null],
    [<minecraft:gold_ingot>, <minecraft:diamond>, <minecraft:gold_ingot>],
    [null, <openmodularturrets:intermediate_regular>, null]])
  .setSecondaryIngredients([<ore:blockGlass>])
  .addTool(<ore:artisansHammer>, 15)
  .addOutput(<openmodularturrets:upgrade_meta:3>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("range_upgrade")
  .create();

// Scatter Shot
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <minecraft:quartz>, null],
    [<minecraft:quartz>, <minecraft:prismarine_shard>, <minecraft:quartz>],
    [null, <openmodularturrets:intermediate_regular>, null]])
  .addTool(<ore:artisansPliers>, 30)
  .addTool(<ore:artisansSolderer>, 25)
  .addOutput(<openmodularturrets:upgrade_meta:4>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("scatter_shot_upgrade")
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [null, <minecraft:quartz>, null],
    [<minecraft:quartz>, null, <minecraft:quartz>],
    [null, <openmodularturrets:intermediate_regular>, null]])
  .setSecondaryIngredients([<extrautils2:endershard> * 8])
  .addTool(<ore:artisansSolderer>, 25)
  .addTool(<ore:artisansCutters>, 15)
  .addOutput(<openmodularturrets:upgrade_meta:4>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("scatter_shot_upgrade_ender")
  .create();

# Ammo
recipes.remove(<openmodularturrets:ammo_meta:*>);

// Blazing Clay
// 0.5x durability
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<minecraft:clay_ball>, <minecraft:redstone>, <minecraft:clay_ball>],
    [<minecraft:redstone>, <minecraft:fire_charge>, <minecraft:redstone>],
    [<minecraft:clay_ball>, <minecraft:redstone>, <minecraft:clay_ball>]])
  .addTool(<ore:artisansFile>, 8)
  .addOutput(<openmodularturrets:ammo_meta> * 16)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("blazing_clay_charge")
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<minecraft:clay_ball>, <minecraft:redstone>, <minecraft:clay_ball>],
    [<minecraft:redstone>, <minecraft:blaze_powder>, <minecraft:redstone>],
    [<minecraft:clay_ball>, <minecraft:redstone>, <minecraft:clay_ball>]])
  .addTool(<ore:artisansFile>, 32)
  .addOutput(<openmodularturrets:ammo_meta> * 64)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("blazing_clay_blaze")
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<minecraft:clay_ball>, <minecraft:redstone>, <minecraft:clay_ball>],
    [<minecraft:redstone>, <minecraft:clay_ball>, <minecraft:redstone>],
    [<minecraft:clay_ball>, <minecraft:redstone>, <minecraft:clay_ball>]])
  .setFluid(<liquid:lava> * 1000)
  .addTool(<ore:artisansFile>, 64)
  .addOutput(<openmodularturrets:ammo_meta> * 64)
  .setExtraOutputOne(<openmodularturrets:ammo_meta> * 64, 1.0)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("blazing_clay_lava")
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<minecraft:redstone>, <minecraft:clay_ball>, <minecraft:redstone>],
    [<minecraft:clay_ball>, <minecraft:redstone>, <minecraft:clay_ball>],
    [<minecraft:redstone>, <minecraft:clay_ball>, <minecraft:redstone>]])
  .setFluid(<liquid:pyrotheum> * 1000)
  .addTool(<ore:artisansFile>, 128)
  .addOutput(<openmodularturrets:ammo_meta> * 64)
  .setExtraOutputOne(<openmodularturrets:ammo_meta> * 64, 1.0)
  .setExtraOutputTwo(<openmodularturrets:ammo_meta> * 64, 1.0)
  .setExtraOutputThree(<openmodularturrets:ammo_meta> * 64, 1.0)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("blazing_clay_pyrotheum")
  .create();

// Bullet
// 1x durability
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <minecraft:iron_ingot>, null],
    [<minecraft:gunpowder>, <minecraft:redstone>, <minecraft:gunpowder>],
    [null, <minecraft:iron_ingot>, null]])
  .addTool(<ore:artisansFile>, 64)
  .addOutput(<openmodularturrets:ammo_meta:1> * 64)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("bullet")
  .create();

// Ferro-Magnetic Slug
// 2x durability
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <minecraft:iron_ingot>, null],
    [<minecraft:iron_ingot>, <minecraft:redstone>, <minecraft:iron_ingot>],
    [<minecraft:redstone>, <minecraft:iron_ingot>, <minecraft:redstone>]])
   .setSecondaryIngredients([<openmodularturrets:ammo_meta:1> * 32])
  .addTool(<ore:artisansFile>, 64)
  .addOutput(<openmodularturrets:ammo_meta:2> * 32)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("ferro-magnetic_slug")
  .create();

// Grenade
// 4x durability
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <minecraft:redstone>, null],
    [<minecraft:iron_ingot>, <minecraft:gunpowder>, <minecraft:iron_ingot>],
    [null, <minecraft:iron_ingot>, null]])
  .addTool(<ore:artisansFile>, 64)
  .addOutput(<openmodularturrets:ammo_meta:3> * 16)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("grenade_gunpowder")
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<minecraft:iron_trapdoor>],
    [<minecraft:tnt>],
    [<minecraft:redstone_block>]])
  .addTool(<ore:artisansFile>, 128)
  .addOutput(<openmodularturrets:ammo_meta:3> * 32)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("grenade_tnt")
  .create();

// Rocket
// 10x durability
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <minecraft:iron_ingot>, null],
    [<minecraft:iron_ingot>, <minecraft:gunpowder>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <minecraft:redstone>, <minecraft:iron_ingot>]])
  .setSecondaryIngredients([<minecraft:fire_charge> * 6])
  .addTool(<ore:artisansFile>, 480)
  .addTool(<ore:artisansSolderer>, 48)
  .addOutput(<openmodularturrets:ammo_meta:4> * 16)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("rocket_gunpowder")
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <minecraft:iron_ingot>, null],
    [<minecraft:iron_ingot>, <minecraft:tnt>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <minecraft:redstone_block>, <minecraft:iron_ingot>]])
  .addTool(<ore:artisansFile>, 360)
  .addTool(<ore:artisansSolderer>, 36)
  .addOutput(<openmodularturrets:ammo_meta:4> * 64)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
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
    [<ore:cobblestone>, <minecraft:redstone>, <ore:cobblestone>]])
  .addTool(<ore:artisansHammer>, 5)
  .addOutput(<openmodularturrets:disposable_item_turret>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("disposable_item_turret")
  .create();

// Potato Cannon
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:redstone>, <openmodularturrets:intermediate_tiered:10>, <minecraft:redstone>],
    [<ore:cobblestone>, <openmodularturrets:intermediate_tiered:10>, <ore:cobblestone>],
    [<ore:cobblestone>, <openmodularturrets:intermediate_tiered:5>, <ore:cobblestone>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<openmodularturrets:potato_cannon_turret>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("potato_cannon")
  .create();

// (Machine) Gun
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <openmodularturrets:intermediate_tiered:11>, null],
    [<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:11>, <openmodularturrets:intermediate_regular>],
    [<minecraft:iron_ingot>, <openmodularturrets:intermediate_tiered:6>, <minecraft:iron_ingot>]])
  .addTool(<ore:artisansHammer>, 15)
  .addTool(<ore:artisansCutters>, 7)
  .addOutput(<openmodularturrets:machine_gun_turret>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("machine_gun")
  .create();

// Incendiary
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <openmodularturrets:intermediate_tiered:11>, null],
    [null, <openmodularturrets:intermediate_tiered:6>, null],
    [<minecraft:iron_ingot>, <openmodularturrets:intermediate_regular>, <minecraft:iron_ingot>]])
  .addTool(<ore:artisansHammer>, 10)
  .addTool(<ore:artisansCutters>, 15)
  .addOutput(<openmodularturrets:incendiary_turret>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("flamethrower")
  .create();

// Grenade
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <openmodularturrets:intermediate_tiered:12>, null],
    [<minecraft:gold_ingot>, <openmodularturrets:intermediate_tiered:7>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <openmodularturrets:intermediate_regular>, <minecraft:gold_ingot>]])
  .addTool(<ore:artisansHammer>, 25)
  .addTool(<ore:artisansCutters>, 20)
  .addOutput(<openmodularturrets:grenade_turret>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("grenade_turret")
  .create();

// Relativistic
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:gold_ingot>, <nhc:energypearl>, <minecraft:gold_ingot>],
    [<minecraft:ender_pearl>, <openmodularturrets:intermediate_tiered:2>, <minecraft:ender_pearl>],
    [<minecraft:gold_ingot>, <openmodularturrets:intermediate_regular>, <minecraft:gold_ingot>]])
  .addTool(<ore:artisansPliers>, 10)
  .addTool(<ore:artisansHammer>, 15)
  .addTool(<ore:artisansSpanner>, 5)
  .addOutput(<openmodularturrets:relativistic_turret>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("relativistic_turret")
  .create();

// Rocket Launcher
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <openmodularturrets:intermediate_tiered:13>, null],
    [<minecraft:quartz>, <openmodularturrets:intermediate_tiered:8>, <minecraft:quartz>],
    [<minecraft:diamond>, <openmodularturrets:intermediate_regular>, <minecraft:diamond>]])
  .setSecondaryIngredients([<openmodularturrets:intermediate_tiered:3>])
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansCutters>, 75)
  .addOutput(<openmodularturrets:rocket_turret>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("rocket_launcher")
  .create();

// Teleporter
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:ender_pearl>, <openmodularturrets:intermediate_regular>, <minecraft:ender_pearl>],
    [<minecraft:diamond>, <openmodularturrets:intermediate_tiered:3>, <minecraft:diamond>],
    [<minecraft:ender_pearl>, <thermalexpansion:capacitor>, <minecraft:ender_pearl>]])
  .setSecondaryIngredients([<nhc:energypearl>])
  .addTool(<ore:artisansPliers>, 5)
  .addTool(<ore:artisansSolderer>, 25)
  .addTool(<ore:artisansSpanner>, 10)
  .addOutput(<openmodularturrets:teleporter_turret>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("teleporter")
  .create();

// Laser
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <openmodularturrets:intermediate_tiered:14>, null],
    [<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:9>, <openmodularturrets:intermediate_regular>],
    [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]])
  .setSecondaryIngredients([<openmodularturrets:intermediate_tiered:4>])
  .addTool(<ore:artisansPliers>, 20)
  .addTool(<ore:artisansSolderer>, 20)
  .addTool(<ore:artisansSpanner>, 15)
  .addOutput(<openmodularturrets:laser_turret>)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("laser_turret")
  .create();

// Rail Gun
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <openmodularturrets:intermediate_tiered:14>, null],
    [<minecraft:obsidian>, <openmodularturrets:intermediate_tiered:9>, <minecraft:obsidian>],
    [<minecraft:obsidian>, <openmodularturrets:intermediate_tiered:4>, <minecraft:obsidian>]])
  .setSecondaryIngredients([<openmodularturrets:intermediate_regular>*2])
  .addTool(<ore:artisansPliers>, 30)
  .addTool(<ore:artisansSolderer>, 50)
  .addTool(<ore:artisansSpanner>, 25)
  .addRequirement(FTGU.allOf(["cyborg:technology/defenses"]))
  .setName("rail_gun")
  .addOutput(<openmodularturrets:rail_gun_turret>)
  .create();

print("OpenModularTurrets.zs loaded");