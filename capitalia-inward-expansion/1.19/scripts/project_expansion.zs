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

val obsidian = <tag:items:expansion:obsidian>;
val netherite = <item:minecraft:netherite_ingot>;

val slate = <item:extendedcrafting:black_iron_slate>;
val black_iron = <item:extendedcrafting:black_iron_ingot>;
val crystaltine = <item:extendedcrafting:crystaltine_ingot>;

val soul_steel = <item:spirit:soul_steel_ingot>;
val tungsten_carbide = <item:bluepower:tungsten_carbide>;
val purple = <item:bluepower:purple_alloy_ingot>;
val blue = <item:bluepower:blue_alloy_ingot>;
val red = <item:bluepower:red_alloy_ingot>;

val zinc = <tag:items:forge:plates/zinc>;
val iron = <tag:items:forge:plates/iron>;
val cast_iron = <tag:items:forge:plates/cast_iron>;
val obsidian_plate = <tag:items:forge:plates/obsidian>;
val netherite_plate = <tag:items:forge:plates/netherite>;

val bismuth = <item:enlightened_end:bismuth_ingot>;
val adamantite = <item:enlightened_end:adamantite_ingot>;
val cognitive = <item:experienceobelisk:cognitive_alloy>;

val super_glue = <item:create:super_glue>;

val bits = <item:kubejs:bits>;
val scaffold = <item:kubejs:scaffold>;
val segment = <item:kubejs:shaft_segment>;
val foundation = <item:kubejs:foundation>;

// Shaft Segment
mods.extendedcrafting.CombinationCrafting.addRecipe("shaft_segment", segment, 1000, [obsidian, tungsten_carbide, tungsten_carbide, tungsten_carbide, tungsten_carbide], 5);

// Shaft
mods.extendedcrafting.FluxCrafting.addShaped("shaft", <item:kubejs:shaft>,
	[[segment, super_glue, segment], 
	[super_glue, soul_steel, super_glue], 
	[segment, super_glue, segment]], 10000, 10);

// Drill Bits
mods.extendedcrafting.FluxCrafting.addShaped("drill_bits", bits,
	[[tungsten_carbide], 
	[tungsten_carbide], 
	[<item:createoreexcavation:drill>]], 8000, 8);

// Drill Head
mods.extendedcrafting.TableCrafting.addShaped("drill_head", 2, <item:kubejs:head>,
	[[super_glue, obsidian_plate, red, obsidian_plate, super_glue], 
	[zinc, obsidian_plate, red, obsidian_plate, zinc], 
	[empty, soul_steel, <item:bluepower:motor>, soul_steel, empty], 
	[empty, bits, soul_steel, bits, empty], 
	[empty, empty, bits, empty, empty]]);

// Scaffold
mods.extendedcrafting.CompressionCrafting.addRecipe("scaffold", <item:create:powdered_obsidian>, scaffold, 10, soul_steel, 25000, 250);

// Supports
mods.extendedcrafting.TableCrafting.addShaped("supports", 3, <item:kubejs:supports>,
	[[empty, empty, empty, empty, empty, empty, empty], 
	[empty, empty, cognitive, cognitive, cognitive, empty, empty], 
	[empty, bismuth, tungsten_carbide, crystaltine, tungsten_carbide, bismuth, empty], 
	[empty, obsidian_plate, crystaltine, <tag:items:forge:storage_blocks/iron>, crystaltine, obsidian_plate, empty], 
	[empty, scaffold, tungsten_carbide, crystaltine, tungsten_carbide, scaffold, empty], 
	[scaffold, empty, netherite_plate, empty, netherite_plate, empty, scaffold], 
	[scaffold, empty, empty, empty, empty, empty, scaffold]]);

// Foundation
mods.extendedcrafting.TableCrafting.addShaped("foundation", 3, foundation,
	[[empty, empty, empty, empty, empty, empty, empty], 
	[empty, empty, empty, empty, empty, empty, empty], 
	[empty, empty, purple, empty, purple, empty, empty], 
	[netherite, empty, purple, empty, purple, empty, netherite], 
	[netherite, empty, purple, empty, purple, empty, netherite], 
	[tungsten_carbide, crystaltine, adamantite, soul_steel, adamantite, crystaltine, tungsten_carbide], 
	[crystaltine, tungsten_carbide, soul_steel, adamantite, soul_steel, tungsten_carbide, crystaltine]]);

// Worldbreaker Drill
mods.extendedcrafting.FluxCrafting.addShaped("worldbreaker_drill", <item:kubejs:worldbreaker_drill>,
	[[empty, <item:kubejs:head>, empty], 
	[<item:kubejs:shaft>, <item:kubejs:supports>, <item:kubejs:shaft>], 
	[empty, foundation, empty]], 5000000, 50);

print("project_expansion.zs loaded");