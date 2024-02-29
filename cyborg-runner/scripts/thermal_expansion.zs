# Adds recipes to machines from Thermal Expansion

import mods.thermalexpansion.Coolant;
import mods.thermalexpansion.Refinery;

print("thermal_expansion.zs loading...");

/*
mods.thermalexpansion.Pulverizer.addRecipe(IItemStack output, IItemStack input, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance);

mods.thermalexpansion.Transposer.addExtractRecipe(ILiquidStack output, IItemStack input, int energy);

mods.thermalexpansion.Transposer.addFillRecipe(IItemStack output, IItemStack input, ILiquidStack fluid, int energy);

mods.thermalexpansion.Crucible.addRecipe(ILiquidStack output, IItemStack input, int energy);

mods.thermalexpansion.Refinery.addRecipe(<fluid_output>, <item_output> % *, <fluid_input>, RF);
* % chance from 1 - 100 (item outputs are optional)

mods.thermalexpansion.RedstoneFurnace.addRecipe(IItemStack output, IItemStack input, int energy);

mods.thermalexpansion.RedstoneFurnace.addPyrolysisRecipe(<output>, <input>, rf, creosotemb);

mods.thermalexpansion.InductionSmelter.addRecipe(IItemStack primaryOutput, IItemStack primaryInput, IItemStack secondaryInput, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance);

mods.thermalexpansion.Centrifuge.addRecipeMob(IEntityDefinition entity, WeightedItemStack[] outputs, @Nullable ILiquidStack fluid, int energy, int xp);

https://docs.blamejared.com/1.12/en/Mods/Modtweaker/ThermalExpansion/Redstone_Furnace
*/

// Upgrade Dense Junkboxes into Caches
recipes.addShaped(<thermalexpansion:cache>, [[null, <ore:ingotInvar>, null],
																				  [<ore:ingotInvar>, <multistorage:stone_storage:6>, <ore:ingotInvar>],
																				  [null, <thermalfoundation:material:512>, null]]);

// Add Spring Water as a coolant
mods.thermalexpansion.Coolant.addCoolant(<liquid:springwater>, 325000, 35);

// Pyroclast Coals into Nibrock's versions
// Coal -> Concentrated Coal is skipped since it has the same burn time as Coal Coke
// RF cost of Coal -> Coke is 3k (Creosote amount is 250)
mods.thermalexpansion.RedstoneFurnace.addPyrolysisRecipe(<nibrockscoal:gold_coal>, <cm:crimson_coal>, 4000, 375);
mods.thermalexpansion.RedstoneFurnace.addPyrolysisRecipe(<nibrockscoal:gold_coal>, <thermalfoundation:material:802>, 8000, 125); // Coal Coke

mods.thermalexpansion.RedstoneFurnace.addPyrolysisRecipe(<nibrockscoal:gold_coal>, <nibrockscoal:iron_coal>, 8000, 500);
mods.thermalexpansion.RedstoneFurnace.addPyrolysisRecipe(<nibrockscoal:diamond_coal>, <nibrockscoal:gold_coal>, 12000, 1000);



// Magma Crucible XP Ore into Liquid XP
mods.thermalexpansion.Crucible.addRecipe(<liquid:xpjuice>*100, <xp_ore:xp_ore_drained>, 2000);

// Magma Crucible Coals into Liquifacted Coal
// Liquid bonus %: 50 / 100 / 150 (Crimson Coal: 75)
mods.thermalexpansion.Crucible.addRecipe(<liquid:coal>*125, <cm:crimson_coal>, 4000);

mods.thermalexpansion.Crucible.addRecipe(<liquid:coal>*150, <nibrockscoal:iron_coal>, 6000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:coal>*200, <nibrockscoal:gold_coal>, 8000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:coal>*250, <nibrockscoal:diamond_coal>, 12000);

// Fluid Transpose Gelid Cryotheum into Cryotheum Dust
mods.thermalexpansion.Transposer.addFillRecipe(<thermalfoundation:material:1025>, <projectred-core:resource_item:105>, <liquid:cryotheum>*500, 8000);



// Refine Destabilized Redstone into Redstone
mods.thermalexpansion.Refinery.addRecipe(<liquid:water>*25, <minecraft:redstone> % 50, <liquid:redstone>*100, 4000);

// Refine Spring Water into Water
mods.thermalexpansion.Refinery.addRecipe(<liquid:water>*100, <minecraft:clay_ball> % 15, <liquid:springwater>*100, 4000);



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



// Induction Smelt Obsidian Ingots
// Used to make Obsidian Rod (and Sticks)
furnace.remove(<byg:obsidianingot>);
mods.thermalexpansion.InductionSmelter.addRecipe(<byg:obsidianingot>, <thermalfoundation:material:160>, <thermalfoundation:material:770>*2, 8000);

// Make Gold from Opesium
mods.thermalexpansion.InductionSmelter.addRecipe(<minecraft:gold_ingot>, <glacidus:opesium>, <contenttweaker:pulsaton_sliver>*4, 8000, <minecraft:gold_ingot>, 25);


// Recycle Shields into Iron
mods.thermalexpansion.InductionSmelter.addRecipe(<minecraft:iron_nugget>*5, <minecraft:sand>, <minecraft:shield:*>, 2000, <thermalfoundation:material:801>, 20);

// Recycle Anvils
mods.thermalexpansion.InductionSmelter.addRecipe(<minecraft:iron_ingot>*15, <minecraft:sand>, <minecraft:anvil>, 8000);
mods.thermalexpansion.InductionSmelter.addRecipe(<minecraft:iron_ingot>*9, <minecraft:sand>, <minecraft:anvil:1>, 6000);
mods.thermalexpansion.InductionSmelter.addRecipe(<minecraft:iron_ingot>*5, <minecraft:sand>, <minecraft:anvil:2>, 4000);

// Recycle Ceramics' items
// Gives 50% of the clay used to craft it
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:clay_ball>, <ceramics:unfired_clay:9>, 1000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:clay_ball>, <ceramics:clay_bucket>, 1500, <minecraft:clay_ball>, 50);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:clay_ball>*2, <ceramics:clay_helmet>, 2000, <minecraft:clay_ball>, 50);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:clay_ball>*4, <ceramics:clay_chestplate>, 2000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:clay_ball>*3, <ceramics:clay_leggings>, 2000, <minecraft:clay_ball>, 50);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:clay_ball>*2, <ceramics:clay_boots>, 2000);





### Steel
# Remove duplicate steel recipes
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:768>, <minecraft:iron_ingot>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:769>, <minecraft:iron_ingot>);

mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:768>, <thermalfoundation:material>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:769>, <thermalfoundation:material>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:802>, <thermalfoundation:material>);

mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:160>, <minecraft:coal>*4, <minecraft:iron_ingot>, 8000);
mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:160>, <minecraft:coal:1>*2, <minecraft:iron_ingot>, 6000);



# Make Steel with modded coals
# Remember the ratio is 4:1

mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:160>, <cm:crimson_coal>*3, <minecraft:iron_ingot>, 6000, <thermalfoundation:material:160>, 5);

mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:160>, <nibrockscoal:iron_coal>*2, <minecraft:iron_ingot>, 6000);
mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:160>, <nibrockscoal:gold_coal>, <minecraft:iron_ingot>, 4000);
mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:160>*2, <nibrockscoal:diamond_coal>, <minecraft:iron_ingot>, 4000);










### Glacidus item conversions
# Glacium Bucket is in rearranger.zs

// Infuse Thawed Antinatric Stone into Frozen
mods.thermalexpansion.Transposer.addFillRecipe(<glacidus:frozen_antinatric_stone>, <glacidus:thawed_antinatric_stone>, <liquid:cryotheum>, 1000);

// Pulverize Antinatric Stone into Cobblestone
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:cobblestone>, <glacidus:frozen_antinatric_stone>, 4000, <projectred-core:resource_item:105>, 10);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:cobblestone>, <glacidus:thawed_antinatric_stone>, 4000, <projectred-core:resource_item:105>, 10);

// Pulverize Eukeite into Lapis and Sapphires
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:dye:4>*3, <glacidus:eukeite>, 2000, <projectred-core:resource_item:201>, 50);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:dye:4>*8, <glacidus:eukeite_ore>, 4000, <projectred-core:resource_item:201>, 75);



# Cryotheum
# Blocks gives 10x the amount, ores give 50% extra (rounded up to the nearest 5)

// Crysium
mods.thermalexpansion.Crucible.addRecipe(<liquid:cryotheum>*25, <glacidus:crysium>, 4000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:cryotheum>*35, <glacidus:crysium_ore>, 8000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:cryotheum>*250, <glacidus:crystal_block>, 16000);

// Opesium
mods.thermalexpansion.Crucible.addRecipe(<liquid:cryotheum>*100, <glacidus:opesium>, 6000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:cryotheum>*150, <glacidus:opesium_ore>, 9000);

// Glacidite
mods.thermalexpansion.Crucible.addRecipe(<liquid:cryotheum>*250, <glacidus:glacidite_fragment>, 8000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:cryotheum>*375, <glacidus:glacidite_ore>, 12000);



# Processing for things that can spawn in the Laser Drill
# All ore secondary chances are 10%!
// Make Pulsaton give 1 if I can ever fix the drop chance bug
mods.thermalexpansion.Pulverizer.addRecipe(<glacidus:crysium>*2, <glacidus:crysium_ore>, 4000, <glacidus:small_crystal>, 10);
mods.thermalexpansion.Pulverizer.addRecipe(<glacidus:eukeite>*2, <glacidus:eukeite_ore>, 4000, <glacidus:opesium>, 10);
mods.thermalexpansion.Pulverizer.addRecipe(<glacidus:opesium>*2, <glacidus:opesium_ore>, 4000, <glacidus:eukeite>, 10);
mods.thermalexpansion.Pulverizer.addRecipe(<glacidus:glacidite_fragment>*2, <glacidus:glacidite_ore>, 4000, <glacidus:crysium>*3, 10);
mods.thermalexpansion.Pulverizer.addRecipe(<contenttweaker:pulsaton_sliver>*2, <glacidus:pulsaton_ore>, 4000, <nibrockscoal:diamond_coal>, 10);

mods.thermalexpansion.Pulverizer.removeRecipe(<pristeel:prismarine_ore>);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:prismarine_shard>*2, <pristeel:prismarine_ore>, 4000, <minecraft:prismarine_crystals>, 10);

mods.thermalexpansion.Pulverizer.addRecipe(<scalinghealth:crystalshard>*2, <scalinghealth:crystalore>, 4000, <scalinghealth:heartdust>*2, 10);



# Re-do Vulcanite since it doesn't match the furnace outputs
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>, <vulcanite:vulcanite_ore>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:865>, <vulcanite:vulcanite_ore>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:866>, <vulcanite:vulcanite_ore>);

var vulcanite = <vulcanite:vulcanite_ingot>;
var vulcanite_nugget = <vulcanite:vulcanite_ingot>;
var nether_vulcanite = <vulcanite:nether_vulcanite_ore>;
var vulcanite_ore = <vulcanite:vulcanite_ore>;
var sand = <minecraft:sand>;

var slag = <thermalfoundation:material:864>;
var rich_slag = <thermalfoundation:material:865>;
var cinnabar = <thermalfoundation:material:866>;

mods.thermalexpansion.InductionSmelter.addRecipe(vulcanite_nugget*2, sand, vulcanite_ore, 4000, rich_slag, 5);

mods.thermalexpansion.InductionSmelter.addRecipe(vulcanite_nugget*3, rich_slag, vulcanite_ore, 4000, slag, 75);

mods.thermalexpansion.InductionSmelter.addRecipe(vulcanite_nugget*3, cinnabar, vulcanite_ore, 4000, rich_slag, 75);

	// Nether
mods.thermalexpansion.InductionSmelter.addRecipe(vulcanite*2, sand, nether_vulcanite, 4000, rich_slag, 5);

mods.thermalexpansion.InductionSmelter.addRecipe(vulcanite*3, rich_slag, nether_vulcanite, 4000, slag, 75);

mods.thermalexpansion.InductionSmelter.addRecipe(vulcanite*3, cinnabar, nether_vulcanite, 4000, rich_slag, 75);

print("thermal_expansion.zs loaded");