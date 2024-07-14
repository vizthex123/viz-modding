# Adds recipes to Botania's stations
/*
mods.botania.ManaInfusion.addInfusion(<output>, input>, mana);

mods.botania.ManaInfusion.addAlchemy(IItemStack output, IIngredient input, int mana);

mods.botania.ManaInfusion.addConjuration(IItemStack output, IIngredient input, int mana);
*/

// Alternate recipe for Managlass
// Regular uses 150
mods.botania.ManaInfusion.addInfusion(<botania:managlass>, <theaurorian:moonglass>, 140);

// Convert BoP Flesh into Rotten Flesh
mods.botania.ManaInfusion.addAlchemy(<minecraft:rotten_flesh>, <biomesoplenty:fleshchunk>, 200);