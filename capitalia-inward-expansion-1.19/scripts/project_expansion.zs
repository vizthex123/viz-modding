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

Bits (need 3)
Head
Shaft
Support Frame
Foundation

Completion Order:

Shaft
- Segments first
Head
- 3 Bits first
Support Frame/Foundation

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

val bit = <item:kubejs:drill_bit>;
val head = <item:kubejs:drill_head>;
val shaft_segment = <item:kubejs:drill_shaft_segment>;
val shaft = <item:kubejs:drill_shaft>;
val scaffold = <item:kubejs:drill_scaffold>;
val support_frame = <item:kubejs:drill_support_frame>;
val foundation = <item:kubejs:drill_foundation>;

// Shaft Segment
mods.extendedcrafting.CombinationCrafting.addRecipe("drill_shaft_segment", shaft_segment, 1000, [obsidian, tungsten_carbide, tungsten_carbide, tungsten_carbide, tungsten_carbide], 5);

// Shaft
mods.extendedcrafting.FluxCrafting.addShaped("drill_shaft", shaft,
	[[shaft_segment, super_glue, shaft_segment], 
	[super_glue, soul_steel, super_glue], 
	[shaft_segment, super_glue, shaft_segment]], 10000, 10);

// Drill Bits
mods.extendedcrafting.FluxCrafting.addShaped("drill_bit", bit,
	[[tungsten_carbide], 
	[tungsten_carbide], 
	[<item:createoreexcavation:drill>]], 8000, 8);

// Drill Head
mods.extendedcrafting.TableCrafting.addShaped("drill_head", 2, head,
	[[super_glue, obsidian_plate, red, obsidian_plate, super_glue], 
	[zinc, obsidian_plate, red, obsidian_plate, zinc], 
	[empty, soul_steel, <item:bluepower:motor>, soul_steel, empty], 
	[empty, bit, soul_steel, bit, empty], 
	[empty, empty, bit, empty, empty]]);

// Scaffold
mods.extendedcrafting.CompressionCrafting.addRecipe("drill_scaffold", <item:create:powdered_obsidian>, scaffold, 10, soul_steel, 25000, 250);

// Support Frame
mods.extendedcrafting.TableCrafting.addShaped("drill_support_frame", 3, support_frame,
	[[empty, empty, empty, empty, empty, empty, empty], 
	[empty, empty, cognitive, cognitive, cognitive, empty, empty], 
	[empty, bismuth, tungsten_carbide, crystaltine, tungsten_carbide, bismuth, empty], 
	[empty, obsidian_plate, crystaltine, <tag:items:forge:storage_blocks/iron>, crystaltine, obsidian_plate, empty], 
	[empty, scaffold, tungsten_carbide, crystaltine, tungsten_carbide, scaffold, empty], 
	[scaffold, empty, netherite_plate, empty, netherite_plate, empty, scaffold], 
	[scaffold, empty, empty, empty, empty, empty, scaffold]]);

// Foundation
mods.extendedcrafting.TableCrafting.addShaped("drill_foundation", 3, foundation,
	[[empty, empty, empty, empty, empty, empty, empty], 
	[empty, empty, empty, empty, empty, empty, empty], 
	[empty, empty, purple, empty, purple, empty, empty], 
	[netherite, empty, purple, empty, purple, empty, netherite], 
	[netherite, empty, purple, empty, purple, empty, netherite], 
	[tungsten_carbide, crystaltine, adamantite, soul_steel, adamantite, crystaltine, tungsten_carbide], 
	[crystaltine, tungsten_carbide, soul_steel, adamantite, soul_steel, tungsten_carbide, crystaltine]]);

// Worldbreaker Drill
mods.extendedcrafting.FluxCrafting.addShaped("worldbreaker_drill", <item:kubejs:worldbreaker_drill>,
	[[empty, head, empty], 
	[shaft, support_frame, shaft], 
	[empty, foundation, empty]], 5000000, 50);

print("project_expansion.zs loaded");