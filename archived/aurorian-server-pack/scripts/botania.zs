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

// Convert Bread into Lavender Bread
mods.botania.ManaInfusion.addInfusion(<theaurorian:lavenderbread>, <minecraft:bread>, 500);

// Convert Berries into Silkberries
// The Mana Pool doesn't accept OreDict entries, dammit!
mods.botania.ManaInfusion.addInfusion(<theaurorian:silkberry>, <biomesoplenty:berries>, 250);
mods.botania.ManaInfusion.addInfusion(<theaurorian:silkberry>, <futuremc:sweet_berries>, 250);
mods.botania.ManaInfusion.addInfusion(<theaurorian:silkberry>, <natura:edibles:2>, 250);
mods.botania.ManaInfusion.addInfusion(<theaurorian:silkberry>, <natura:edibles:3>, 250);
mods.botania.ManaInfusion.addInfusion(<theaurorian:silkberry>, <natura:edibles:4>, 250);
mods.botania.ManaInfusion.addInfusion(<theaurorian:silkberry>, <natura:edibles:5>, 250);
mods.botania.ManaInfusion.addInfusion(<theaurorian:silkberry>, <natura:edibles:6>, 250);
mods.botania.ManaInfusion.addInfusion(<theaurorian:silkberry>, <natura:edibles:7>, 250);
mods.botania.ManaInfusion.addInfusion(<theaurorian:silkberry>, <natura:edibles:8>, 250);
mods.botania.ManaInfusion.addInfusion(<theaurorian:silkberry>, <natura:edibles:9>, 250);

// Convert various gems into Aurorian Crystals
// Kinda placeholder. Hopefully I can think of a better system.
mods.botania.ManaInfusion.addInfusion(<theaurorian:crystal>, <forestry:apatite>, 1000);

mods.botania.ManaInfusion.addInfusion(<theaurorian:crystal>, <biomesoplenty:gem>, 350);
mods.botania.ManaInfusion.addInfusion(<theaurorian:crystal>, <biomesoplenty:gem:1>, 350);
mods.botania.ManaInfusion.addInfusion(<theaurorian:crystal>, <biomesoplenty:gem:2>, 350);
mods.botania.ManaInfusion.addInfusion(<theaurorian:crystal>, <biomesoplenty:gem:3>, 350);
mods.botania.ManaInfusion.addInfusion(<theaurorian:crystal>, <biomesoplenty:gem:4>, 350);
mods.botania.ManaInfusion.addInfusion(<theaurorian:crystal>, <biomesoplenty:gem:5>, 350);
mods.botania.ManaInfusion.addInfusion(<theaurorian:crystal>, <biomesoplenty:gem:6>, 350);

mods.botania.ManaInfusion.addInfusion(<theaurorian:crystal>, <netherex:amethyst_crystal>, 300);
mods.botania.ManaInfusion.addInfusion(<theaurorian:crystal>, <netherex:rime_crystal>, 300);

mods.botania.ManaInfusion.addInfusion(<theaurorian:crystal>, <quark:biotite>, 200);



// Alchemy recipes for some of the above gems
mods.botania.ManaInfusion.addAlchemy(<minecraft:redstone>*3, <biomesoplenty:gem:1>, 500);
mods.botania.ManaInfusion.addAlchemy(<thaumcraft:amber>, <biomesoplenty:gem:3>, 500);

mods.botania.ManaInfusion.addAlchemy(<minecraft:prismarine_shard>*2, <biomesoplenty:gem:5>, 500);
mods.botania.ManaInfusion.addAlchemy(<minecraft:prismarine_shard>, <biomesoplenty:gem:6>, 500);