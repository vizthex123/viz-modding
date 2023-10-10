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
Base

Completion Order:
Shaft
- Segments first
Head
- Bits first
Supports/Base

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

val scaffold = <item:kubejs:support_scaffold>;
val segment = <item:kubejs:shaft_segment>;
val bits = <item:kubejs:bits>;

// Drill Shaft Segment
mods.extendedcrafting.CombinationCrafting.addRecipe("shaft_segment", segment, 1000, [obsidian, tungsten, tungsten, tungsten, tungsten], 1);

// Drill Shaft
mods.extendedcrafting.FluxCrafting.addShaped("shaft", <item:kubejs:shaft>,
	[[empty, segment, empty], 
	[segment, tungsten, segment], 
	[empty, segment, empty]], 10000, 10);

// Drill Bits
mods.extendedcrafting.FluxCrafting.addShaped("bits", bits,
	[[tungsten], 
	[tungsten], 
	[<item:createoreexcavation:drill>]], 10000, 10);

// Drill Head
mods.extendedcrafting.TableCrafting.addShaped("head", 2, <item:kubejs:head>,
	[[zinc, obsidian_plate, red, obsidian_plate, zinc], 
	[zinc, obsidian_plate, red, obsidian_plate, zinc], 
	[empty, steel, <item:bluepower:motor>, steel, empty], 
	[empty, bits, steel, bits, empty], 
	[empty, empty, bits, empty, empty]]);

// Drill Support Scaffold
mods.extendedcrafting.CompressionCrafting.addRecipe("support_scaffold", <item:create:powdered_obsidian>, scaffold, 50, steel, 25000, 250);

// Drill Supports
mods.extendedcrafting.TableCrafting.addShaped("supports", 3, <item:kubejs:supports>,
	[[empty, empty, empty, empty, empty, empty, empty], 
	[empty, empty, <item:createdeco:netherite_sheet>, steel, <item:createdeco:netherite_sheet>, empty, empty], 
	[empty, <item:createdeco:netherite_sheet>, tungsten, crystaltine, tungsten, <item:createdeco:netherite_sheet>, empty], 
	[empty, <item:createdeco:netherite_support>, crystaltine, <tag:items:forge:storage_blocks/iron>, crystaltine, <item:createdeco:netherite_support>, empty], 
	[empty, scaffold, tungsten, crystaltine, tungsten, scaffold, empty], 
	[scaffold, empty, <item:createdeco:netherite_sheet>, empty, <item:createdeco:netherite_sheet>, empty, scaffold], 
	[scaffold, empty, empty, empty, empty, empty, scaffold]]);

// Drill Base
mods.extendedcrafting.TableCrafting.addShaped("base", 4, <item:kubejs:base>,
	[[empty, empty, empty, empty, empty, empty, empty, empty, empty], 
	[empty, empty, empty, empty, empty, empty, empty, empty, empty], 
	[empty, empty, empty, empty, empty, empty, empty, empty, empty], 
	[empty, empty, empty, empty, empty, empty, empty, empty, empty], 
	[tungsten, empty, purple, empty, empty, empty, purple, empty, tungsten], 
	[tungsten, empty, purple, empty, empty, empty, purple, empty, tungsten], 
	[tungsten, empty, purple, empty, empty, empty, purple, empty, tungsten], 
	[<item:spirit:soul_steel_ingot>, tungsten, crystaltine, netherite, <item:spirit:soul_steel_ingot>, netherite, crystaltine, tungsten, <item:spirit:soul_steel_ingot>], 
	[tungsten, crystaltine, tungsten, <item:spirit:soul_steel_ingot>, netherite, <item:spirit:soul_steel_ingot>, tungsten, crystaltine, tungsten]]);

// Worldbreaker Drill
mods.extendedcrafting.FluxCrafting.addShaped("worldbreaker_drill", <item:kubejs:worldbreaker_drill>,
	[[empty, <item:kubejs:head>, empty], 
	[<item:kubejs:shaft>, <item:kubejs:supports>, <item:kubejs:shaft>], 
	[empty, <item:kubejs:base>, empty]], 5000000, 50);

print("project_expansion.zs loaded");