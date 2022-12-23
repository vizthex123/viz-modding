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
- Bits/Shaft
- Head
- Supports
- Base
*/

// Drill Bits
mods.extendedcrafting.EnderCrafting.addShaped("drill_bits", <item:kubejs:drill_bits>,
	[[<tag:items:forge:plates/iron>, <tag:items:forge:ingots/tungsten>, <tag:items:forge:plates/iron>], 
	[<tag:items:forge:plates/iron>, <tag:items:forge:ingots/tungsten>, <tag:items:forge:plates/iron>], 
	[<item:minecraft:air>, <item:pneumaticcraft:drill_bit_diamond>, <item:minecraft:air>]], 60);

// Drill Head
mods.extendedcrafting.TableCrafting.addShaped("drill_head", 2, <item:kubejs:drill_head>,
	[[<tag:items:forge:plates/iron>, <tag:items:forge:plates/obsidian>, <item:extendedcrafting:black_iron_ingot>, <tag:items:forge:plates/obsidian>, <tag:items:forge:plates/iron>], 
	[<tag:items:forge:plates/iron>, <tag:items:forge:plates/obsidian>, <item:extendedcrafting:black_iron_ingot>, <tag:items:forge:plates/obsidian>, <tag:items:forge:plates/iron>], 
	[<item:minecraft:air>, <item:bluepower:tungsten_carbide>, <item:powah:capacitor_hardened>, <item:bluepower:tungsten_carbide>, <item:minecraft:air>], 
	[<item:minecraft:air>, <tag:items:forge:plates/cast_iron>, <item:bluepower:tungsten_carbide>, <tag:items:forge:plates/cast_iron>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:createoreexcavation:netherite_drill>, <item:minecraft:air>, <item:minecraft:air>]]);

// Drill Shaft Piece
mods.extendedcrafting.EnderCrafting.addShaped("drill_shaft_piece", <item:kubejs:drill_shaft_piece>,
	[[<item:minecraft:air>, <tag:items:forge:plates/obsidian>, <item:minecraft:air>], 
	[<item:minecraft:air>, <tag:items:forge:plates/obsidian>, <item:minecraft:air>], 
	[<item:minecraft:air>, <tag:items:forge:plates/obsidian>, <item:minecraft:air>]], 30);

// Drill Shaft
mods.extendedcrafting.CombinationCrafting.addRecipe("drill_shaft", <item:kubejs:drill_shaft>, 100000, [<item:pneumaticcraft:compressed_iron_block>, <item:kubejs:drill_shaft_piece>, <item:kubejs:drill_shaft_piece>, <item:kubejs:drill_shaft_piece>], 100);

// Drill Support Piece
mods.extendedcrafting.CompressionCrafting.addRecipe("drill_support_piece", <item:create:sturdy_sheet>, <item:kubejs:drill_support_piece>, 50, <item:pneumaticcraft:compressed_iron_gear>, 25000, 250);

// Drill Supports
mods.extendedcrafting.TableCrafting.addShaped("drill_supports", 3, <item:kubejs:drill_supports>,
	[[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:bluepower:tungsten_carbide>, <tag:items:forge:ingots/cast_iron>, <item:bluepower:tungsten_carbide>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:bluepower:tungsten_carbide>, <item:pneumaticcraft:logistics_core>, <tag:items:forge:plates/obsidian>, <item:pneumaticcraft:logistics_core>, <item:bluepower:tungsten_carbide>, <item:minecraft:air>], 
	[<item:minecraft:air>, <tag:items:forge:ingots/cast_iron>, <tag:items:forge:plates/obsidian>, <item:powah:ender_core>, <tag:items:forge:plates/obsidian>, <tag:items:forge:ingots/cast_iron>, <item:minecraft:air>], 
	[<item:minecraft:air>, <tag:items:forge:ingots/compressed_iron>, <item:pneumaticcraft:logistics_core>, <tag:items:forge:plates/obsidian>, <item:pneumaticcraft:logistics_core>, <tag:items:forge:ingots/compressed_iron>, <item:minecraft:air>], 
	[<item:kubejs:drill_support_piece>, <tag:items:forge:ingots/compressed_iron>, <item:bluepower:tungsten_carbide>, <tag:items:forge:ingots/cast_iron>, <item:bluepower:tungsten_carbide>, <tag:items:forge:ingots/compressed_iron>, <item:kubejs:drill_support_piece>], 
	[<item:kubejs:drill_support_piece>, <tag:items:forge:ingots/compressed_iron>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <tag:items:forge:ingots/compressed_iron>, <item:kubejs:drill_support_piece>]]);

// Drill Base
mods.extendedcrafting.TableCrafting.addShaped("drill_base", 4, <item:kubejs:drill_base>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:spirit:soul_steel_ingot>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:bluepower:purple_alloy_ingot>, <tag:items:forge:ingots/compressed_iron>, <item:bluepower:purple_alloy_ingot>, <tag:items:forge:ingots/compressed_iron>, <item:bluepower:purple_alloy_ingot>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:bluepower:tungsten_carbide>, <item:bluepower:tungsten_carbide>, <tag:items:forge:ingots/compressed_iron>, <item:byg:pendorite_ingot>, <tag:items:forge:ingots/compressed_iron>, <item:bluepower:tungsten_carbide>, <item:bluepower:tungsten_carbide>, <item:minecraft:air>], 
	[<item:bluepower:tungsten_carbide>, <item:bluepower:tungsten_carbide>, <item:spirit:soul_steel_ingot>, <item:bluepower:tungsten_carbide>, <item:bluepower:tungsten_carbide>, <item:bluepower:tungsten_carbide>, <item:spirit:soul_steel_ingot>, <item:bluepower:tungsten_carbide>, <item:bluepower:tungsten_carbide>], 
	[<item:bluepower:tungsten_carbide>, <item:spirit:soul_steel_ingot>, <item:bluepower:tungsten_carbide>, <item:bluepower:tungsten_carbide>, <item:bluepower:tungsten_carbide>, <item:bluepower:tungsten_carbide>, <item:bluepower:tungsten_carbide>, <item:spirit:soul_steel_ingot>, <item:bluepower:tungsten_carbide>]]);

print("project_expansion.zs loaded");