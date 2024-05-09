# Add uses for my items from the Aurorian Items mod

print("Loading CustomItems.zs...");

// (Twilight) Portal Catalyst
recipes.addShapeless(<aurorianitems:portalcatalyst>, [<actuallyadditions:item_crystal:*>, <ore:gemDiamond>, <botania:manaresource>, <ore:essence>]);

// Lavender Flour & Bread
recipes.remove(<theaurorian:lavenderseeds>);
recipes.addShapeless(<theaurorian:lavenderseeds>, [<theaurorian:lavender>, <theaurorian:lavender>]);
recipes.addShapeless(<aurorianitems:lavenderflour>, [<theaurorian:lavender>]);

furnace.addRecipe(<theaurorian:lavenderbread>, <aurorianitems:lavenderflour>, 0.4);

// Compressed Shard
recipes.addShapeless(<aurorianitems:compressedshard>, [<retroexchange:transmutation_shard>, <retroexchange:transmutation_shard>, <retroexchange:transmutation_shard>, <retroexchange:transmutation_shard>, <bloodmagic:component:14>, <retroexchange:transmutation_shard>, <retroexchange:transmutation_shard>, <retroexchange:transmutation_shard>, <retroexchange:transmutation_shard>]);

// Leather from Prepared Flesh
furnace.addRecipe(<minecraft:leather>, <aurorianitems:preparedflesh>, 0.10);

// Crystalline Compound
recipes.addShapeless(<aurorianitems:crystalcompound>, [<ore:certusQuartz>, <minecraft:quartz>, <ore:slimeball>]);

// Gold-Lapis and the Watery version
recipes.remove(<aurorianitems:waterygoldlapis>);
mods.thermalexpansion.Transposer.addFillRecipe(<appliedenergistics2:material:7>*2, <aurorianitems:crystalcompound>, <liquid:redstone>*100, 4000);
mods.thermalexpansion.Transposer.addFillRecipe(<aurorianitems:waterygoldlapis>, <aurorianitems:goldlapisalloy>, <liquid:water>*1000, 12000);

mods.thermalexpansion.InductionSmelter.addRecipe(<deepmoblearning:glitch_infused_ingot>, <aurorianitems:waterygoldlapis>, <deepmoblearning:glitch_fragment>, 8000);

// Tooltips
<aurorianitems:goldlapisalloy>.addTooltip(format.aqua("Used for auto-crafting"));
<aurorianitems:waterygoldlapis>.addTooltip(format.aqua("Used for auto-crafting"));
<aurorianitems:crystalcompound>.addTooltip(format.aqua("Used for auto-crafting"));

// Add a recipe for the Whirlwind Reagent
mods.bloodmagic.TartaricForge.addRecipe(<aurorianitems:whirlwindreagent>, [<bloodmagic:sigil_air>, <minecraft:feather>, <minecraft:ghast_tear>, <minecraft:ghast_tear>], 150, 50);


print("CustomItems.zs loaded");