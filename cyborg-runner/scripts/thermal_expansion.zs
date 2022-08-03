# Adds recipes to machines from Thermal Expansion

import mods.thermalexpansion.Refinery;
print("thermal_expansion.zs loading...");

/*
mods.thermalexpansion.Pulverizer.addRecipe(IItemStack output, IItemStack input, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance);


mods.thermalexpansion.Refinery.addRecipe(<fluid_output>, <item_output> % *, <fluid_input>, RF);
* % chance from 1 - 100 (item outputs are optional)

https://docs.blamejared.com/1.12/en/Mods/Modtweaker/ThermalExpansion/Redstone_Furnace
*/

// Process Ancient Urns into Gold
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:gold_ingot>, <pyramidplunder:urn>, 6000, <minecraft:gold_ingot>, 50);

mods.thermalexpansion.RedstoneFurnace.addRecipe(<minecraft:gold_ingot>*2, <pyramidplunder:urn>, 6000);

// Alternate Compress Carbon Block recipe
// Main one is in artisan_worktables.zs
mods.thermalexpansion.Compactor.addPressRecipe(<coalprocessing:compressed_coal>, <minecraft:coal_block>*4, 24000);
mods.thermalexpansion.Compactor.addPressRecipe(<coalprocessing:compressed_coal>, <thermalfoundation:storage_resource>*2, 20000);

// Compress Coal into Nibrock's versions
// 5 for conce
mods.thermalexpansion.Compactor.addPressRecipe(<nibrockscoal:iron_coal>, <minecraft:coal>*2, 4000);
mods.thermalexpansion.Compactor.addPressRecipe(<nibrockscoal:gold_coal>, <nibrockscoal:iron_coal>*2, 6000);
mods.thermalexpansion.Compactor.addPressRecipe(<nibrockscoal:diamond_coal>, <nibrockscoal:gold_coal>*2, 8000);

// Turn Destabilized Redstone into Redstone
mods.thermalexpansion.Refinery.addRecipe(<liquid:water>*25, <minecraft:redstone> % 25, <liquid:redstone>*50, 4000);

// Turn Crysium into Cryotheum
mods.thermalexpansion.Crucible.addRecipe(<liquid:cryotheum>*25, <glacidus:crysium>, 8000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:cryotheum>*250, <glacidus:crystal_block>, 24000);

// Turn XP Ore into XP
mods.thermalexpansion.Crucible.addRecipe(<liquid:experience>*50, <xp_ore:xp_ore_drained>, 4000);

// Should fix all the steel recipe duplicates
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:768>, <minecraft:iron_ingot>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:769>, <minecraft:iron_ingot>);

mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:768>, <thermalfoundation:material>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:769>, <thermalfoundation:material>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:802>, <thermalfoundation:material>);

mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:160>, <minecraft:coal>*4, <minecraft:iron_ingot>, 8000);
mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:160>, <minecraft:coal:1>*2, <minecraft:iron_ingot>, 6000);


// Puverizer versions of the Mason's table smashing recipes
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:prismarine_shard>*3, <minecraft:prismarine:*>, 3500, <minecraft:prismarine_crystals>*3, 50);
mods.thermalexpansion.Pulverizer.addRecipe(<alchemistry:element:12>*3, <byg:soapstone>, 4000, <alchemistry:element:12>, 50);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:prismarine_crystals>*2, <byg:scoria>, 4000, <byg:red_crystals>, 50);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:sand>*2, <byg:sandydirt>, 3000, <minecraft:dirt>*2, 50);
mods.thermalexpansion.Pulverizer.addRecipe(<thermalfoundation:material>, <minecraft:sand>, 2500, <minecraft:quartz>, 25);
mods.thermalexpansion.Pulverizer.addRecipe(<thermalfoundation:material:1>, <minecraft:sand:1>, 2500, <thermalfoundation:material>, 65);
mods.thermalexpansion.Pulverizer.addRecipe(<thermalfoundation:material:1>, <minecraft:sand:1>, 2500, <thermalfoundation:material>, 65);
mods.thermalexpansion.Pulverizer.addRecipe(<alchemistry:compound:13>, <byg:whitesand>, 2500, <thermalfoundation:material>, 30);
mods.thermalexpansion.Pulverizer.addRecipe(<thermalfoundation:material:2053>*2, <byg:blacksand>, 2500, <minecraft:coal:1>, 55);
mods.thermalexpansion.Pulverizer.addRecipe(<thermalfoundation:material:2049>*2, <byg:light_blue_sand>, 2500, <minecraft:dye:4>, 40);
mods.thermalexpansion.Pulverizer.addRecipe(<alchemistry:compound:13>*3, <byg:pink_sand>, 2500, <alchemistry:compound:13>, 40);
mods.thermalexpansion.Pulverizer.addRecipe(<thermalfoundation:material:770>*2, <byg:purple_sand>, 2500, <thermalfoundation:material:1>*3, 40);


// Recycle Ceramics items
// Gives ~50% of the clay used to craft it
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:clay_ball>, <ceramics:unfired_clay:9>, 1000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:clay_ball>, <ceramics:clay_bucket>, 1500, <minecraft:clay_ball>, 50);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:clay_ball>*2, <ceramics:clay_helmet>, 2000, <minecraft:clay_ball>, 50);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:clay_ball>*4, <ceramics:clay_chestplate>, 2000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:clay_ball>*3, <ceramics:clay_leggings>, 2000, <minecraft:clay_ball>, 50);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:clay_ball>*2, <ceramics:clay_boots>, 2000);

/*
mods.thermalexpansion.Centrifuge.addRecipeMob(IEntityDefinition entity, WeightedItemStack[] outputs, @Nullable ILiquidStack fluid, int energy, int xp);
*/
/*
// Process modded mobs into their drops
mods.thermalexpansion.Centrifuge.addRecipeMob(<entity:natura:heartscarspider>, [<natura:materials:7>*2 % 50, <minecraft:spider_eye> % 35], null, 4000, 3);
mods.thermalexpansion.Centrifuge.addRecipeMob(<entity:natura:nitrocreeper>, [<minecraft:gunpowder>*3 % 50], null, 4000, 6);
mods.thermalexpansion.Centrifuge.addRecipeMob(<entity:natura:imp>, [<natura:edibles> % 50, <natura:materials:6>*2 % 50], null, 4000, 1);
*/

print("thermal_expansion.zs loaded");