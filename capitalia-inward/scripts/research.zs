# Adds recipes for the Scientific Dossiers (research items)

print("research.zs loading...");

/*
craftingTable.addShaped("recipeName", <output>, 
    [[<input>, <input>, <input>],
    [<input>, <input>, <input>],
    [<input>, <input>, <input>]]);

craftingTable.addShapeless("recipeName", <output>, [<inputs>]);
*/

# Dossiers
craftingTable.addShapeless("stone_dossier", <item:kubejs:science_stone>, [<item:quark:sturdy_stone>, <tag:items:cie:book>]);
craftingTable.addShapeless("brass_dossier", <item:kubejs:science_brass>, [<tag:items:forge:ingots/brass>, <tag:items:forge:ingots/brass>, <tag:items:cie:book>]);
craftingTable.addShapeless("iron_dossier", <item:kubejs:science_iron>, [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <tag:items:cie:book>]);

mods.extendedcrafting.TableCrafting.addShaped("industrial_dossier", 1, <item:kubejs:science_industrial>,
	[[<item:minecraft:air>, <item:bluepower:tungsten_carbide>, <item:minecraft:air>], 
	[<item:bluepower:tungsten_carbide>, <tag:items:cie:book>, <item:bluepower:tungsten_carbide>], 
	[<item:minecraft:air>, <item:bluepower:tungsten_carbide>, <item:minecraft:air>]]);
/*
mods.extendedcrafting.TableCrafting.addShaped("machine_dossier", 1, <item:kubejs:science>,
	[[<item:minecraft:air>, <item:bluepower:tungsten_carbide>, <item:minecraft:air>], 
	[<item:bluepower:tungsten_carbide>, <tag:items:cie:book>, <item:bluepower:tungsten_carbide>], 
	[<item:minecraft:air>, <item:bluepower:tungsten_carbide>, <item:minecraft:air>]]);
*/
# Next: Machine


print("research.zs loaded");