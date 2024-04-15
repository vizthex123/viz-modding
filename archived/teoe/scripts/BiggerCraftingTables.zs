# Adds recipes to Bigger Crafting Tables's blocks
print("BiggerCraftingTables.zs loading...");
/*
mods.biggercraftingtables.Big.addShaped(<output>, 
[[<input>, <input>, <input>, <input>, <input>],
  [<input>, <input>, <input>, <input>, <input>],
  [<input>, <input>, <input>, <input>, <input>],
  [<input>, <input>, <input>, <input>, <input>],
  [<input>, <input>, <input>, <input>, <input>]]);

mods.biggercraftingtables.Big.addShapeless(<output>,
[<input>, <INPUT2>, <UP TO 25 MAX>]);

mods.biggercraftingtables.Huge.addShaped(<output>,
[[<input>, <input>, <input>, <input>, <input>, <input>, <input>],
  [<input>, <input>, <input>, <input>, <input>, <input>, <input>],
  [<input>, <input>, <input>, <input>, <input>, <input>, <input>],
  [<input>, <input>, <input>, <input>, <input>, <input>, <input>],
  [<input>, <input>, <input>, <input>, <input>, <input>, <input>],
  [<input>, <input>, <input>, <input>, <input>, <input>, <input>],
  [<input>, <input>, <input>, <input>, <input>, <input>, <input>]]);

mods.biggercraftingtables.Huge.addShapeless(<output>,
[<input>, <INPUT2>, <UP TO 49 MAX>]);
*/

// Tome of Knowledge
// After 8 years, I finally made it a shapeless recipe. pog.
mods.biggercraftingtables.Huge.addShapeless(<ProjectE:item.pe_tome>,
[<AdvancedSolarPanel:asp_crafting_items:13>, <appliedenergistics2:tile.BlockQuantumLinkChamber>, <BigReactors:BRMetalBlock:4>, <ChickenChunks:chickenChunkLoader>, <CompactSolars:CompactSolarBlock:2>, <cookingbook:cookingtable>, <eng_toolbox:modular_socket>, <ewysworkshop:WorkshopTable>, <ExtraUtilities:unstableingot:2>, <GraviSuite:itemSimpleItem:5>, <IC2:itemPartIridium>, <LootRoulette:L>, <minecraft:dragon_egg>, <ObsidiPlates:ObsidianPressurePlate>, <ProjectE:item.pe_klein_star:5>, <peaether:alchemicalCoinItem>, <ProjRed|Core:projectred.core.part:59>, <RandomThings:ingredient:6>, <RedstoneArsenal:Storage>, <RArm:BlockIngotStorage>, <SuperMultiDrills:DrillBattery:4>.withTag({Battery: {Energy: 1000000}}), <Thaumcraft:ItemEldritchObject:3>, <Translocator:translocator:1>, <TwilightForest:item.charmOfKeeping3>, <TwilightForest:item.charmOfLife2>]);

// Essence
val nether_star = <minecraft:nether_star>;
val alchemy_coin = <peaether:alchemicalCoinItem>;
val obsidian_coin = <universalcoins:item.obsidian_coin>;
val legendary = <LootRoulette:L>;

mods.biggercraftingtables.Big.addShaped(<ModName:Essence>*64,
[[nether_star, null, legendary, null, nether_star],
	[null, obsidian_coin, alchemy_coin, obsidian_coin, null],
	[legendary, alchemy_coin, <ProjectE:item.pe_tome>, alchemy_coin, legendary],
	[null, obsidian_coin, alchemy_coin, obsidian_coin, null],
	[nether_star, null, legendary, null, nether_star]]);

/*
# Dragon Egg
recipes.remove(<minecraft:dragon_egg>);
recipes.addShaped(<minecraft:dragon_egg>, [[<Avaritia:Resource:1>, <Avaritia:Resource:1>, <Avaritia:Resource:1>],
																			  [<Avaritia:Resource:1>, <Avaritia:Resource:4>,<Avaritia:Resource:1>],
																			  [<Avaritia:Resource:1>, <Avaritia:Resource:1>, <Avaritia:Resource:1>]]);
*/

print("BiggerCraftingTables.zs loaded");