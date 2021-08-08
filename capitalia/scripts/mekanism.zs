# Adds recipes to Mekanism machines
print("mekanism.zs loading...");
/*
mods.mekanism.crusher.addRecipe(<output>, <input>);

mods.mekanism.enrichment.addRecipe(<input>, <output>);

mods.mekanism.enrichment.removeRecipe(<input>, <output>);
*/

// Process various into Bio-Matter
mods.mekanism.crusher.addRecipe(<natura:materials>, <mekanism:biofuel>*5);
mods.mekanism.crusher.addRecipe(<natura:overworld_seeds:1>, <mekanism:biofuel>*3);
mods.mekanism.crusher.addRecipe(<natura:materials:3>, <mekanism:biofuel>*2);
mods.mekanism.crusher.addRecipe(<natura:overworld_seeds:1>, <mekanism:biofuel>);

// Crusher recipe for Blaze Powder (because everything else has it, so why not this one too?)
mods.mekanism.crusher.addRecipe(<minecraft:blaze_rod>, <minecraft:blaze_powder>*3);

/*
// Be able to actually process ores (stupid Mekanism not registering recipes properly >:{)
mods.mekanism.enrichment.removeRecipe(<mekanism:oreblock:1>, <mekanism:dust:3>*2);
mods.mekanism.enrichment.removeRecipe(<mekanism:oreblock:2>, <mekanism:dust:4>*2);
mods.mekanism.enrichment.removeRecipe(<magneticraft:ores:1>, <mekanism:dust:6>*2);
mods.mekanism.enrichment.removeRecipe(<thermalfoundation:ore:2>, <mekanism:dust:5>*2);

mods.mekanism.enrichment.addRecipe(<projectred-exploration:ore:3>, <mekanism:dust:3>*2);
mods.mekanism.enrichment.addRecipe(<thermalfoundation:ore>, <mekanism:dust:3>*2);
mods.mekanism.enrichment.addRecipe(<forestry:resources:1>, <mekanism:dust:3>*2);
mods.mekanism.enrichment.addRecipe(<magneticraft:ores>, <mekanism:dust:3>*2);

mods.mekanism.enrichment.addRecipe(<projectred-exploration:ore:4>, <mekanism:dust:4>*2);
mods.mekanism.enrichment.addRecipe(<thermalfoundation:ore:1>, <mekanism:dust:4>*2);
mods.mekanism.enrichment.addRecipe(<forestry:resources:2>, <mekanism:dust:4>*2);

mods.mekanism.enrichment.addRecipe(<thermalfoundation:ore:3>, <mekanism:dust:6>*2);
mods.mekanism.enrichment.addRecipe(<techguns:basicore:2>, <mekanism:dust:6>*2);

mods.mekanism.enrichment.addRecipe(<projectred-exploration:ore:5>, <mekanism:dust:5>*2);

mods.mekanism.enrichment.addRecipe(<thermalfoundation:ore:4>, <magneticraft:dusts:7>*2);

mods.mekanism.enrichment.addRecipe(<thermalfoundation:ore:8>, <magneticraft:dusts:9>*2);
mods.mekanism.enrichment.addRecipe(<magneticraft:ores:3>, <magneticraft:dusts:5>*2);
*/

# Tooltips for the various items you can use in the Metallurgic Infuser
<minecraft:coal>.addShiftTooltip(format.green("Gives 10 Carbon in a Metallurigc Infuser"));
<minecraft:coal:1>.addShiftTooltip(format.green("Gives 20 Carbon in a Metallurigc Infuser"));
<mekanism:compressedcarbon>.addTooltip(format.green("Gives 80 Carbon in a Metallurigc Infuser"));
<minecraft:coal_block>.addTooltip(format.green("Gives 90 Carbon in a Metallurigc Infuser"));
<mekanism:basicblock:3>.addTooltip(format.green("Gives 180 Carbon in a Metallurigc Infuser"));

<minecraft:redstone>.addShiftTooltip(format.green("Gives 10 Redstone in a Metallurigc Infuser"));
<mekanism:compressedredstone>.addTooltip(format.green("Gives 80 Redstone in a Metallurigc Infuser"));
<minecraft:redstone_block>.addTooltip(format.green("Gives 90 Redstone in a Metallurigc Infuser"));

<mekanism:otherdust>.addTooltip(format.green("Gives 10 Diamond in a Metallurigc Infuser"));
<mekanism:compresseddiamond>.addTooltip(format.green("Gives 80 Diamond in a Metallurigc Infuser"));
<mekanism:otherdust:5>.addTooltip(format.green("Gives 10 Obsidian in a Metallurigc Infuser"));
<mekanism:compressedobsidian>.addTooltip(format.green("Gives 80 Obsidian in a Metallurigc Infuser"));

print("mekanism.zs loaded");