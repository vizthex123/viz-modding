# Adds recipes to the components of Project Expansion, which is the modpack's goal
# Totally didn't steal the idea from Satisfactory

print("project_expansion.zs loading...");

/*
furnace.addRecipe("recipeName", <output>, <input>, xp, cooktime-10s default);

craftingTable.addShapeless("recipeName", <output>, [<inputs>]);

craftingTable.addShaped("recipeName", <output>, 
    [[<input>, <input>, <input>],
    [<input>, <input>, <input>],
    [<input>, <input>, <input>]]);

craftingTable.removeByName("recipeName");

mods.extendedcrafting.CombinationCrafting.addRecipe(name, <output>, powerCost, [inputs], powerRate);

mods.extendedcrafting.CompressionCrafting.addRecipe(name, <input>, <output>, inputCount, <catalyst>, powerCost, powerRate);

Drill Parts:

Bits
Head
Shaft
Supports
Foundation

Completion Order:
Shaft
- Segments first
Head
- Bits first
Supports/Foundation

The Drill™
*/

val empty = <item:minecraft:air>;

val obsidian = <tag:items:cie:obsidian>;
val netherite = <item:minecraft:netherite_ingot>;

val slate = <item:extendedcrafting:black_iron_slate>;
val black_iron = <item:extendedcrafting:black_iron_ingot>;
val crystaltine = <item:extendedcrafting:crystaltine_ingot>;

val steel = <item:spirit:soul_steel_ingot>;
val tungsten = <item:bluepower:tungsten_carbide>;
val purple = <item:bluepower:purple_alloy_ingot>;
val blue = <item:bluepower:blue_alloy_ingot>;
val red = <item:bluepower:red_alloy_ingot>;

val zinc = <tag:items:forge:plates/zinc>;
val iron = <tag:items:forge:plates/iron>;
val cast_iron = <tag:items:forge:plates/cast_iron>;
val obsidian_plate = <tag:items:forge:plates/obsidian>;
val netherite_plate = <tag:items:forge:plates/netherite>;

val bismuth = <item:enlightened_end:bismuth_ingot>;
val starsteel = <item:enlightened_end:starsteel_ingot>;
val adamantite = <item:enlightened_end:adamantite_ingot>;

val latex = <item:myrtrees:latex>;

val bits = <item:kubejs:bits>;
val scaffold = <item:kubejs:scaffold>;
val segment = <item:kubejs:shaft_segment>;
val foundation = <item:kubejs:foundation>;

// Shaft Segment
mods.extendedcrafting.CombinationCrafting.addRecipe("shaft_segment", segment, 1000, [obsidian, tungsten, tungsten, tungsten, tungsten], 5);

// Shaft
mods.extendedcrafting.FluxCrafting.addShaped("shaft", <item:kubejs:shaft>,
	[[segment, latex, segment], 
	[latex, steel, latex], 
	[segment, latex, segment]], 10000, 10);

// Drill Bits
mods.extendedcrafting.FluxCrafting.addShaped("drill_bits", bits,
	[[tungsten], 
	[tungsten], 
	[<item:createoreexcavation:drill>]], 8000, 8);

// Drill Head
mods.extendedcrafting.TableCrafting.addShaped("drill_head", 2, <item:kubejs:head>,
	[[latex, obsidian_plate, red, obsidian_plate, latex], 
	[zinc, obsidian_plate, red, obsidian_plate, zinc], 
	[empty, steel, <item:bluepower:motor>, steel, empty], 
	[empty, bits, steel, bits, empty], 
	[empty, empty, bits, empty, empty]]);

// Scaffold
mods.extendedcrafting.CompressionCrafting.addRecipe("scaffold", <item:create:powdered_obsidian>, scaffold, 10, steel, 25000, 250);

// Supports
mods.extendedcrafting.TableCrafting.addShaped("supports", 3, <item:kubejs:supports>,
	[[empty, empty, empty, empty, empty, empty, empty], 
	[empty, empty, starsteel, steel, starsteel, empty, empty], 
	[empty, bismuth, tungsten, crystaltine, tungsten, bismuth, empty], 
	[empty, obsidian_plate, crystaltine, <tag:items:forge:storage_blocks/iron>, crystaltine, obsidian_plate, empty], 
	[empty, scaffold, tungsten, crystaltine, tungsten, scaffold, empty], 
	[scaffold, empty, netherite_plate, empty, netherite_plate, empty, scaffold], 
	[scaffold, empty, empty, empty, empty, empty, scaffold]]);

// Foundation
mods.extendedcrafting.TableCrafting.addShaped("foundation", 3, foundation,
	[[empty, empty, empty, empty, empty, empty, empty], 
	[empty, empty, empty, empty, empty, empty, empty], 
	[empty, empty, purple, empty, purple, empty, empty], 
	[netherite, empty, purple, empty, purple, empty, netherite], 
	[netherite, empty, purple, empty, purple, empty, netherite], 
	[tungsten, crystaltine, adamantite, steel, adamantite, crystaltine, tungsten], 
	[crystaltine, tungsten, steel, adamantite, steel, tungsten, crystaltine]]);

// Worldbreaker Drill
mods.extendedcrafting.FluxCrafting.addShaped("worldbreaker_drill", <item:kubejs:worldbreaker_drill>,
	[[empty, <item:kubejs:head>, empty], 
	[<item:kubejs:shaft>, <item:kubejs:supports>, <item:kubejs:shaft>], 
	[empty, foundation, empty]], 5000000, 50);

print("project_expansion.zs loaded");