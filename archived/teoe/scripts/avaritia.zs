# Adds recipes to Avaritia's blocks

/*
currency:coin - Copper 1
currency:coin:1 - Silver 10
currency:coin:2 - Gold 100
currency:coin:3 - Platinum 1,000
*/

// Essence
recipes.remove(<ModName:Essence>);
mods.avaritia.ExtremeCrafting.addShaped(<ModName:Essence>*64,
 [[<minecraft:nether_star>, null, null, null, <LootRoulette:L>, null, null, null, <minecraft:nether_star>],
  [null, null, null, null, null, null, null, null, null],
  [null, null, null, null, null, null, null, null, null],
  [null, null, null, <peaether:alchemicalCoinItem>, <lootbags:lootbag:4>, <peaether:alchemicalCoinItem>, null, null, null],
  [<LootRoulette:L>, null, null, <lootbags:lootbag:4>, <ProjectE:item.pe_tome>, <lootbags:lootbag:4>, null, null, <LootRoulette:L>],
  [null, null, null, <peaether:alchemicalCoinItem>, <lootbags:lootbag:4>, <peaether:alchemicalCoinItem>, null, null, null],
  [null, null, null, null, null, null, null, null, null],
  [null, null, null, null, null, null, null, null, null],
  [<minecraft:nether_star>, null, null, null, <LootRoulette:L>, null, null, null, <minecraft:nether_star>]]);


# Essence Armour
recipes.remove(<ModName:essence_helmet>);
mods.avaritia.ExtremeCrafting.addShaped(<ModName:essence_helmet>,
 [[null, null, null, null, null, null, null, null, null],
  [null, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, null],
  [null, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <Thaumcraft:ItemHelmetFortress>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, null],
  [null, <ModName:Essence>, <ModName:Essence>, null, null, null, <ModName:Essence>, <ModName:Essence>, null],
  [null, <ModName:Essence>, <ModName:Essence>, null, null, null, <ModName:Essence>, <ModName:Essence>, null],
  [null, <ModName:Essence>, <ModName:Essence>, null, null, null, <ModName:Essence>, <ModName:Essence>, null],
  [null, null, null, null, null, null, null, null, null],
  [null, null, null, null, null, null, null, null, null],
  [null, null, null, null, null, null, null, null, null]]);

recipes.remove(<ModName:essence_chestplate>);
mods.avaritia.ExtremeCrafting.addShaped(<ModName:essence_chestplate>,
 [[null, null, null, null, null, null, null, null, null],
  [null, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, null, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, null],
  [null, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, null],
  [null, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, null],
  [null, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <Thaumcraft:ItemChestplateFortress>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, null],
  [null, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, null],
  [null, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, null],
  [null, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, null],
  [null, null, null, null, null, null, null, null, null]]);

recipes.remove(<ModName:essence_leggings>);
mods.avaritia.ExtremeCrafting.addShaped(<ModName:essence_leggings>,
 [[null, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, null],
  [null, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <Thaumcraft:ItemLeggingsFortress>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, null],
  [null, <ModName:Essence>, <ModName:Essence>, null, null, null, <ModName:Essence>, <ModName:Essence>, null],
  [null, <ModName:Essence>, <ModName:Essence>, null, null, null, <ModName:Essence>, <ModName:Essence>, null],
  [null, <ModName:Essence>, <ModName:Essence>, null, null, null, <ModName:Essence>, <ModName:Essence>, null],
  [null, <ModName:Essence>, <ModName:Essence>, null, null, null, <ModName:Essence>, <ModName:Essence>, null],
  [null, <ModName:Essence>, <ModName:Essence>, null, null, null, <ModName:Essence>, <ModName:Essence>, null],
  [null, <ModName:Essence>, <ModName:Essence>, null, null, null, <ModName:Essence>, <ModName:Essence>, null],
  [null, <ModName:Essence>, <ModName:Essence>, null, null, null, <ModName:Essence>, <ModName:Essence>, null]]);

recipes.remove(<ModName:essence_boots>);
mods.avaritia.ExtremeCrafting.addShaped(<ModName:essence_boots>,
 [[null, null, null, null, null, null, null, null, null],
  [null, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, null],
  [null, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, null],
  [null, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, null],
  [null, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <Thaumcraft:BootsTraveller>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, null],
  [<ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, null, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>],
  [<ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, null, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>],
  [<ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, null, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>, <ModName:Essence>],
  [null, null, null, null, null, null, null, null, null]]);

// Tome of Knowledge
mods.avaritia.ExtremeCrafting.addShapeless(<ProjectE:item.pe_tome>,
	[<Botania:specialFlower>.withTag({type: "asgardandelion"}), <Avaritia:big_pearl>, <Avaritia:Orb_Armok>, <Avaritia:Resource_Block:1>, <Avaritia:Infinity_Sword>, <Avaritia:Infinity_Pickaxe>, <Avaritia:Infinity_Axe>, <Avaritia:Infinity_Shovel>, <DraconicEvolution:awakenedCore>, <DraconicEvolution:draconicDistructionStaff>, <avaritiaddons:ExtremeAutoCrafter>, <Avaritia:Neutronium_Compressor>, <BigReactors:BRMetalBlock:4>, <CompactSolars:CompactSolarBlock:2>, <AdvancedSolarPanel:asp_crafting_items:13>, <CompactSolars:solarHatHV>, <ChickenChunks:chickenChunkLoader>, <IC2:blockElectric:2>, <minecraft:nether_star>, <ProjectE:item.pe_transmutation_tablet>, <ewysworkshop:WorkshopTableUpgrade:10>, <appliedenergistics2:tile.BlockController>, <LootRoulette:L>, <ThermalExpansion:Cell:4>, <ProjectE:item.pe_gem_armor_0>, <ProjectE:item.pe_gem_armor_1>, <ProjectE:item.pe_gem_armor_2>, <ProjectE:item.pe_gem_armor_3>, <minecraft:dragon_egg>, <lootbags:lootbag:4>, <TwilightForest:item.charmOfKeeping3>, <TwilightForest:item.charmOfLife2>, <ObsidiPlates:ObsidianPressurePlate>, <RArm:BlockIngotStorage>, <RArm:BlockIngotStorage:1>, <RedstoneArsenal:Storage>, <RedstoneArsenal:Storage:1>, <ExtraUtilities:decorativeBlock1:5>, <cookingbook:cookingoven>, <cookingbook:cookingtable>, <ProjectE:item.pe_klein_star:5>, <peaether:alchemicalCoinItem>, <Translocator:translocator>, <Translocator:translocator:1>, <SuperMultiDrills:DrillBattery:4>, <SuperMultiDrills:DrillMotor:2>]);