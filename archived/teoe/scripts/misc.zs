# Miscellaneous recipes
print("misc.zs loading...");

val common = <LootRoulette:C>;
val uncommon = <LootRoulette:U>;
val rare = <LootRoulette:R>;
val legendary = <LootRoulette:L>;

// Toaster
recipes.addShaped(<cookingbook:toaster>, [[null, null, <minecraft:stone_button>],
																			[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
																			[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);

// Fix the Cardboard Sheet have a million recipes for no reason
recipes.remove(<EMT:EMTItems:11>);
recipes.addShaped(<EMT:EMTItems:11>, [[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>],
																		[<ore:logWood>, <ore:logWood>, <ore:logWood>],
																		[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);

// Convert Crafting Tables into vanilla ones
// Some recipes only accept vanilla ones, and without KubeJS I can't replace all the inputs
recipes.addShapeless(<minecraft:crafting_table>, [<ore:craftingTableWood>, <ore:stickWood>]);

// Upgrade the Ore Converter into the Automatic one
recipes.addShaped(<fodc:oreAutoconverter>, [[<minecraft:redstone>, <fodc:oreConverter>, <minecraft:redstone>],
																			   [<ore:cobblestone>, <fodc:oreConvTable>, <ore:cobblestone>],
																			   [<minecraft:redstone>, <ore:cobblestone>, <minecraft:redstone>]]);

// Iridium Ore
val diamond_coin = <universalcoins:item.diamond_coin>;
recipes.addShaped(<IC2:itemOreIridium>, [[diamond_coin, legendary, diamond_coin],
																		 [legendary, <IC2:itemUran235>, legendary],
																		 [diamond_coin, legendary, diamond_coin]]);

# Chance Cubes recipe changes
val chance_cube = <chancecubes:Chance_Cube>;
val pandoras_box = <pandorasbox:pandorasBox>;

// Chance Cubes
recipes.remove(chance_cube);
recipes.addShaped(chance_cube, [[uncommon, common, uncommon],
													       [common, <minecraft:lapis_block>, common],
													       [uncommon, common, uncommon]]);

// Chance Icosahedron
recipes.addShaped(<chancecubes:Chance_Icosahedron>*16, [[pandoras_box, chance_cube, pandoras_box],
																										   [chance_cube, <RandomThings:ingredient:6>, chance_cube],
																										   [pandoras_box, chance_cube, pandoras_box]]);

# Craftable Nether Star recipe changes
recipes.remove(<craftnstar:starcore>);
recipes.remove(<craftnstar:starbranch>);
recipes.remove(<minecraft:nether_star>);

val diamond = <ore:gemDiamond>;
val thaumium = <Thaumcraft:ItemResource:2>;
val quicksilver = <Thaumcraft:ItemResource:3>;

recipes.addShaped(<craftnstar:starbranch>, [[null, rare, null],
																			[diamond, thaumium, diamond],
																			[diamond, thaumium, diamond]]);

recipes.addShaped(<craftnstar:starcore>, [[quicksilver, legendary, quicksilver],
																		[legendary, diamond, legendary],
																		[quicksilver, legendary, quicksilver]]);

recipes.addShaped(<minecraft:nether_star>, [[null, <craftnstar:starbranch>, null],
																			  [<craftnstar:starbranch>, <craftnstar:starcore>, <craftnstar:starbranch>],
																			  [null, <craftnstar:starbranch>, null]]);

print("misc.zs loaded");