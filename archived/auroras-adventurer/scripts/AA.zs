# Adds/changes recipes for Actually Additions items/blocks
/*
recipes.addShaped(<output>, [[<null>, <null>, <null>],
                                      [<null>, <null>, <null>],
                                      [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
recipes.remove(<item>);
recipes.removeShaped(<item>);
recipes.removeShapeless(<item>);
furnace.remove(<item>);
furnace.addRecipe(<output>, <input>, XP[F]);
*/

print("Loading AA.zs...");

# Craft pre-enchanted armour set with Empowered Crystals
# All of them give the third level of whatever enchantment
// Restonia (Redstone)
// Gives Fire Protection
recipes.addShaped(<actuallyadditions:item_helm_crystal_red>.withTag({ench: [{lvl: 3 as short, id: 1 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered>],
                                        [<actuallyadditions:item_crystal_empowered>, null, <actuallyadditions:item_crystal_empowered>],
                                        [null, null, null]]);

recipes.addShaped(<actuallyadditions:item_chest_crystal_red>.withTag({ench: [{lvl: 3 as short, id: 1 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered>, null, <actuallyadditions:item_crystal_empowered>],
                                        [<actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered>],
                                        [<actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered>]]);

recipes.addShaped(<actuallyadditions:item_pants_crystal_red>.withTag({ench: [{lvl: 3 as short, id: 1 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered>],
                                        [<actuallyadditions:item_crystal_empowered>, null, <actuallyadditions:item_crystal_empowered>],
                                        [<actuallyadditions:item_crystal_empowered>, null, <actuallyadditions:item_crystal_empowered>]]);

recipes.addShaped(<actuallyadditions:item_boots_crystal_red>.withTag({ench: [{lvl: 3 as short, id: 1 as short}], RepairCost: 1}),
		[[null, null, null],
                                        [<actuallyadditions:item_crystal_empowered>, null, <actuallyadditions:item_crystal_empowered>],
                                        [<actuallyadditions:item_crystal_empowered>, null, <actuallyadditions:item_crystal_empowered>]]);
// Palis (Lapis)
// Helmet gives Aqua Affinity & Respiration
// Armour gives Unbreaking
// Boots give Depth Strider
recipes.addShaped(<actuallyadditions:item_helm_crystal_blue>.withTag({ench: [{lvl: 3 as short, id: 34 as short}, {lvl: 3 as short, id: 5 as short}, {lvl: 1 as short, id: 6 as short}], RepairCost: 3}),
		[[<actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>],
                                        [<actuallyadditions:item_crystal_empowered:1>, null, <actuallyadditions:item_crystal_empowered:1>],
                                        [null, null, null]]);

recipes.addShaped(<actuallyadditions:item_chest_crystal_blue>.withTag({ench: [{lvl: 3 as short, id: 34 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered:1>, null, <actuallyadditions:item_crystal_empowered:1>],
                                        [<actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>],
                                        [<actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>]]);

recipes.addShaped(<actuallyadditions:item_pants_crystal_blue>.withTag({ench: [{lvl: 3 as short, id: 34 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>],
                                        [<actuallyadditions:item_crystal_empowered:1>, null, <actuallyadditions:item_crystal_empowered:1>],
                                        [<actuallyadditions:item_crystal_empowered:1>, null, <actuallyadditions:item_crystal_empowered:1>]]);

recipes.addShaped(<actuallyadditions:item_boots_crystal_blue>.withTag({ench: [{lvl: 3 as short, id: 34 as short}, {lvl: 2 as short, id: 8 as short}], RepairCost: 1}),
		[[null, null, null],
                                        [<actuallyadditions:item_crystal_empowered:1>, null, <actuallyadditions:item_crystal_empowered:1>],
                                        [<actuallyadditions:item_crystal_empowered:1>, null, <actuallyadditions:item_crystal_empowered:1>]]);

// Diamantine (Diamond)
// Gives Projectile Protection
recipes.addShaped(<actuallyadditions:item_helm_crystal_light_blue>.withTag({ench: [{lvl: 3 as short, id: 4 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:2>],
                                        [<actuallyadditions:item_crystal_empowered:2>, null, <actuallyadditions:item_crystal_empowered:2>],
                                        [null, null, null]]);

recipes.addShaped(<actuallyadditions:item_chest_crystal_light_blue>.withTag({ench: [{lvl: 3 as short, id: 4 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered:2>, null, <actuallyadditions:item_crystal_empowered:2>],
                                        [<actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:2>],
                                        [<actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:2>]]);

recipes.addShaped(<actuallyadditions:item_pants_crystal_light_blue>.withTag({ench: [{lvl: 3 as short, id: 4 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:2>],
                                        [<actuallyadditions:item_crystal_empowered:2>, null, <actuallyadditions:item_crystal_empowered:2>],
                                        [<actuallyadditions:item_crystal_empowered:2>, null, <actuallyadditions:item_crystal_empowered:2>]]);

recipes.addShaped(<actuallyadditions:item_boots_crystal_light_blue>.withTag({ench: [{lvl: 3 as short, id: 4 as short}], RepairCost: 1}),
		[[null, null, null],
                                        [<actuallyadditions:item_crystal_empowered:2>, null, <actuallyadditions:item_crystal_empowered:2>],
                                        [<actuallyadditions:item_crystal_empowered:2>, null, <actuallyadditions:item_crystal_empowered:2>]]);

// Void Crystal (Coal)
// Gives Thorns
recipes.addShaped(<actuallyadditions:item_helm_crystal_black>.withTag({ench: [{lvl: 3 as short, id: 7 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal_empowered:3>],
                                        [<actuallyadditions:item_crystal_empowered:3>, null, <actuallyadditions:item_crystal_empowered:3>],
                                        [null, null, null]]);

recipes.addShaped(<actuallyadditions:item_chest_crystal_black>.withTag({ench: [{lvl: 3 as short, id: 7 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered:3>, null, <actuallyadditions:item_crystal_empowered:3>],
                                        [<actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal_empowered:3>],
                                        [<actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal_empowered:3>]]);

recipes.addShaped(<actuallyadditions:item_pants_crystal_black>.withTag({ench: [{lvl: 3 as short, id: 7 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal_empowered:3>],
                                        [<actuallyadditions:item_crystal_empowered:3>, null, <actuallyadditions:item_crystal_empowered:3>],
                                        [<actuallyadditions:item_crystal_empowered:3>, null, <actuallyadditions:item_crystal_empowered:3>]]);

recipes.addShaped(<actuallyadditions:item_boots_crystal_black>.withTag({ench: [{lvl: 3 as short, id: 7 as short}], RepairCost: 1}),
		[[null, null, null],
                                        [<actuallyadditions:item_crystal_empowered:3>, null, <actuallyadditions:item_crystal_empowered:3>],
                                        [<actuallyadditions:item_crystal_empowered:3>, null, <actuallyadditions:item_crystal_empowered:3>]]);

// Emeradic (Emerald)
// Gives Protection
recipes.addShaped(<actuallyadditions:item_helm_crystal_green>.withTag({ench: [{lvl: 3 as short, id: 0 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:4>],
                                        [<actuallyadditions:item_crystal_empowered:4>, null, <actuallyadditions:item_crystal_empowered:4>],
                                        [null, null, null]]);

recipes.addShaped(<actuallyadditions:item_chest_crystal_green>.withTag({ench: [{lvl: 3 as short, id: 0 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered:4>, null, <actuallyadditions:item_crystal_empowered:4>],
                                        [<actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:4>],
                                        [<actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:4>]]);

recipes.addShaped(<actuallyadditions:item_pants_crystal_green>.withTag({ench: [{lvl: 3 as short, id: 0 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:4>],
                                        [<actuallyadditions:item_crystal_empowered:4>, null, <actuallyadditions:item_crystal_empowered:4>],
                                        [<actuallyadditions:item_crystal_empowered:4>, null, <actuallyadditions:item_crystal_empowered:4>]]);

recipes.addShaped(<actuallyadditions:item_boots_crystal_green>.withTag({ench: [{lvl: 3 as short, id: 2 as short}], RepairCost: 1}),
		[[null, null, null],
                                        [<actuallyadditions:item_crystal_empowered:4>, null, <actuallyadditions:item_crystal_empowered:4>],
                                        [<actuallyadditions:item_crystal_empowered:4>, null, <actuallyadditions:item_crystal_empowered:4>]]);

// Enori (Iron)
// Gives Blast Protection
recipes.addShaped(<actuallyadditions:item_helm_crystal_white>.withTag({ench: [{lvl: 3 as short, id: 3 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>],
                                        [<actuallyadditions:item_crystal_empowered:5>, null, <actuallyadditions:item_crystal_empowered:5>],
                                        [null, null, null]]);

recipes.addShaped(<actuallyadditions:item_chest_crystal_white>.withTag({ench: [{lvl: 3 as short, id: 3 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered:5>, null, <actuallyadditions:item_crystal_empowered:5>],
                                        [<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>],
                                        [<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>]]);

recipes.addShaped(<actuallyadditions:item_pants_crystal_white>.withTag({ench: [{lvl: 3 as short, id: 3 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>],
                                        [<actuallyadditions:item_crystal_empowered:5>, null, <actuallyadditions:item_crystal_empowered:5>],
                                        [<actuallyadditions:item_crystal_empowered:5>, null, <actuallyadditions:item_crystal_empowered:5>]]);

recipes.addShaped(<actuallyadditions:item_boots_crystal_white>.withTag({ench: [{lvl: 3 as short, id: 3 as short}], RepairCost: 1}),
		[[null, null, null],
                                        [<actuallyadditions:item_crystal_empowered:5>, null, <actuallyadditions:item_crystal_empowered:5>],
                                        [<actuallyadditions:item_crystal_empowered:5>, null, <actuallyadditions:item_crystal_empowered:5>]]);

# Recipes for Storage Crates and items related to them
recipes.remove(<actuallyadditions:block_giant_chest>);
recipes.remove(<actuallyadditions:block_giant_chest_medium>);
recipes.remove(<actuallyadditions:block_giant_chest_large>);

// Small
mods.extendedcrafting.TableCrafting.addShaped(2, <actuallyadditions:block_giant_chest>, 
	[[<ore:logWood>, <ore:plankWood>, <ore:chestWood>, <ore:plankWood>, <ore:logWood>],
	[<ore:plankWood>, <ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>, <ore:plankWood>],
	[<ore:chestWood>, <ore:ingotIron>, <theaurorian:moonstoneblock>, <ore:ingotIron>, <ore:chestWood>],
	[<ore:plankWood>, <ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>, <ore:plankWood>],
	[<ore:logWood>, <ore:plankWood>, <ore:chestWood>, <ore:plankWood>, <ore:logWood>]]);

// Medium
mods.extendedcrafting.TableCrafting.addShaped(3, <actuallyadditions:block_giant_chest_medium>, 
	[[<ore:plankWood>, <ore:logWood>, <ore:plankWood>, <ore:logWood>, <ore:plankWood>, <ore:logWood>, <ore:plankWood>],
	[<ore:logWood>, <ore:ingotGold>, null, <minecraft:iron_bars>, null, <ore:ingotGold>, <ore:logWood>],
	[<ore:plankWood>, null, <ore:ingotGold>, <minecraft:iron_bars>, <ore:ingotGold>, null, <ore:plankWood>],
	[<ore:logWood>, <minecraft:iron_bars>, <minecraft:iron_bars>, <actuallyadditions:block_giant_chest>, <minecraft:iron_bars>, <minecraft:iron_bars>, <ore:logWood>],
	[<ore:plankWood>, null, <ore:ingotGold>, <minecraft:iron_bars>, <ore:ingotGold>, null, <ore:plankWood>],
	[<ore:logWood>, <ore:ingotGold>, null, <minecraft:iron_bars>, null, <ore:ingotGold>, <ore:logWood>],
	[<ore:plankWood>, <ore:logWood>, <ore:plankWood>, <ore:logWood>, <ore:plankWood>, <ore:logWood>, <ore:plankWood>]]);

// Large
mods.extendedcrafting.TableCrafting.addShaped(4, <actuallyadditions:block_giant_chest_large>, 
	[[<minecraft:planks>, <minecraft:log>, <minecraft:log>, <extrautils2:ingredients:11>, <minecraft:planks>, <extrautils2:ingredients:11>, <minecraft:log>, <minecraft:log>, <minecraft:planks>],
	[<minecraft:log>, <ore:gemDiamond>, null, null, <minecraft:iron_bars>, null, null, <ore:gemDiamond>, <minecraft:log>],
	[<minecraft:log>, null, <ore:gemDiamond>, null, <minecraft:iron_bars>, null, <ore:gemDiamond>, null, <minecraft:log>],
	[<extrautils2:ingredients:11>, null, null, <theaurorian:ceruleanblock>, <minecraft:iron_bars>, <theaurorian:ceruleanblock>, null, null, <extrautils2:ingredients:11>],
	[<minecraft:planks>, <minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>, <actuallyadditions:block_giant_chest_medium>, <minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:planks>],
	[<extrautils2:ingredients:11>, null, null, <theaurorian:ceruleanblock>, <minecraft:iron_bars>, <theaurorian:ceruleanblock>, null, null, <extrautils2:ingredients:11>],
	[<minecraft:log>, null, <ore:gemDiamond>, null, <minecraft:iron_bars>, null, <ore:gemDiamond>, null, <minecraft:log>],
	[<minecraft:log>, <ore:gemDiamond>, null, null, <minecraft:iron_bars>, null, null, <ore:gemDiamond>, <minecraft:log>],
	[<minecraft:planks>, <minecraft:log>, <minecraft:log>, <extrautils2:ingredients:11>, <minecraft:planks>, <extrautils2:ingredients:11>, <minecraft:log>, <minecraft:log>, <minecraft:planks>]]);


// Chest to Crate upgrade
recipes.remove(<actuallyadditions:item_chest_to_crate_upgrade>);
mods.extendedcrafting.TableCrafting.addShaped(2, <actuallyadditions:item_chest_to_crate_upgrade>, 
	[[<theaurorian:silentwoodlog>, <minecraft:iron_bars>, <theaurorian:silentwoodstick>, <minecraft:iron_bars>, <theaurorian:silentwoodlog>],
	[<minecraft:iron_bars>, null, null, null, <minecraft:iron_bars>],
	[<theaurorian:silentwoodstick>, null, <ironchest:iron_chest:3>, null, <theaurorian:silentwoodstick>],
	[<minecraft:iron_bars>, null, null, null, <minecraft:iron_bars>],
	[<theaurorian:silentwoodlog>, <minecraft:iron_bars>, <theaurorian:silentwoodstick>, <minecraft:iron_bars>, <theaurorian:silentwoodlog>]]);

// Alternate recipe
mods.extendedcrafting.TableCrafting.addShaped(2, <actuallyadditions:item_chest_to_crate_upgrade>, 
	[[<ore:logWood>, <minecraft:iron_bars>, <ore:stickStone>, <minecraft:iron_bars>, <ore:logWood>],
	[<minecraft:iron_bars>, null, null, null, <minecraft:iron_bars>],
	[<ore:stickStone>, null, <ironchest:iron_chest:3>, null, <ore:stickStone>],
	[<minecraft:iron_bars>, null, null, null, <minecraft:iron_bars>],
	[<ore:logWood>, <minecraft:iron_bars>, <ore:stickStone>, <minecraft:iron_bars>, <ore:logWood>]]);

// Small to Medium crate upgrade
recipes.remove(<actuallyadditions:item_small_to_medium_crate_upgrade>);
mods.extendedcrafting.TableCrafting.addShaped(2, <actuallyadditions:item_small_to_medium_crate_upgrade>, 
	[[<theaurorian:silentwoodlog>, <minecraft:iron_bars>, <theaurorian:silentwoodstick>, <minecraft:iron_bars>, <theaurorian:silentwoodlog>],
	[<minecraft:iron_bars>, null, null, null, <minecraft:iron_bars>],
	[<theaurorian:silentwoodstick>, null, <ironchest:iron_chest>|<ironchest:iron_chest:4>, null, <theaurorian:silentwoodstick>],
	[<minecraft:iron_bars>, null, null, null, <minecraft:iron_bars>],
	[<theaurorian:silentwoodlog>, <minecraft:iron_bars>, <theaurorian:silentwoodstick>, <minecraft:iron_bars>, <theaurorian:silentwoodlog>]]);

// Alternate recipe
mods.extendedcrafting.TableCrafting.addShaped(2, <actuallyadditions:item_small_to_medium_crate_upgrade>,
	[[<ore:logWood>, <minecraft:iron_bars>, <ore:stickStone>, <minecraft:iron_bars>, <ore:logWood>],
	[<minecraft:iron_bars>, null, null, null, <minecraft:iron_bars>],
	[<ore:stickStone>, null, <ironchest:iron_chest>|<ironchest:iron_chest:4>, null, <ore:stickStone>],
	[<minecraft:iron_bars>, null, null, null, <minecraft:iron_bars>],
	[<ore:logWood>, <minecraft:iron_bars>, <ore:stickStone>, <minecraft:iron_bars>, <ore:logWood>]]);

// Medium to Large crate upgrade
recipes.remove(<actuallyadditions:item_medium_to_large_crate_upgrade>);
mods.extendedcrafting.TableCrafting.addShaped(2, <actuallyadditions:item_medium_to_large_crate_upgrade>, 
	[[<theaurorian:silentwoodlog>, <minecraft:iron_bars>, <theaurorian:silentwoodstick>, <minecraft:iron_bars>, <theaurorian:silentwoodlog>],
	[<minecraft:iron_bars>, null, null, null, <minecraft:iron_bars>],
	[<theaurorian:silentwoodstick>, null, <ironchest:iron_chest:1>, null, <theaurorian:silentwoodstick>],
	[<minecraft:iron_bars>, null, null, null, <minecraft:iron_bars>],
	[<theaurorian:silentwoodlog>, <minecraft:iron_bars>, <theaurorian:silentwoodstick>, <minecraft:iron_bars>, <theaurorian:silentwoodlog>]]);

// Alternate recipe
mods.extendedcrafting.TableCrafting.addShaped(2, <actuallyadditions:item_medium_to_large_crate_upgrade>, 
	[[<ore:logWood>, <minecraft:iron_bars>, <ore:stickStone>, <minecraft:iron_bars>, <ore:logWood>],
	[<minecraft:iron_bars>, null, null, null, <minecraft:iron_bars>],
	[<ore:stickStone>, null, <ironchest:iron_chest:6>, null, <ore:stickStone>],
	[<minecraft:iron_bars>, null, null, null, <minecraft:iron_bars>],
	[<ore:logWood>, <minecraft:iron_bars>, <ore:stickStone>, <minecraft:iron_bars>, <ore:logWood>]]);

print("AA.zs loaded");