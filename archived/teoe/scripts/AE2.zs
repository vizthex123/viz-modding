# Changes recipes for AE2 & its add-ons
print("AE2.zs loading...");

val common = <LootRoulette:C>;
val uncommon = <LootRoulette:U>;
val rare = <LootRoulette:R>;
val legendary = <LootRoulette:L>;


# Grindstone recipes
mods.appeng.Grinder.addRecipe(<HardcoreQuesting:hearts:3>, <TConstruct:heartCanister:1>, 8);

# Presses
val silicon = <appliedenergistics2:item.ItemMultiMaterial:19>;
val logic = <appliedenergistics2:item.ItemMultiMaterial:15>;
val calculation = <appliedenergistics2:item.ItemMultiMaterial:13>;
val engineering = <appliedenergistics2:item.ItemMultiMaterial:14>;

recipes.addShaped(silicon, [[null, common, null],
												[common, common, common],
												[null, common, null]]);

recipes.addShaped(logic, [[null, uncommon, null],
											[uncommon, uncommon, uncommon],
											[null, uncommon, null]]);

recipes.addShaped(calculation, [[null, uncommon, null],
														[uncommon, rare, uncommon],
														[null, uncommon, null]]);

recipes.addShaped(engineering, [[null, rare, null],
														 [rare, legendary, rare],
												 	   	 [null, rare, null]]);

# Cheaper security terminal
// recipes.remove(<appliedenergistics2:tile.BlockSecurity>);
recipes.addShaped(<appliedenergistics2:tile.BlockSecurity>, [[<ore:ingotIron>, <appliedenergistics2:item.ItemMultiPart:380>, <ore:ingotIron>],
												[<appliedenergistics2:item.ItemMultiPart:16>, <appliedenergistics2:tile.BlockSkyStone>, <appliedenergistics2:item.ItemMultiPart:16>],
												[<ore:ingotIron>, <appliedenergistics2:item.ItemMultiMaterial:24>, <ore:ingotIron>]]);

recipes.addShaped(<appliedenergistics2:tile.BlockSecurity>, [[<appliedenergistics2:tile.BlockChest>],
												[<appliedenergistics2:item.ItemMultiMaterial:36>],
												[<appliedenergistics2:item.ItemMultiMaterial:24>]]);

# Upgrade an Acceptor into a Controller
val sky_stone = <appliedenergistics2:tile.BlockSkyStone>;
recipes.addShaped(<appliedenergistics2:tile.BlockController>, [[sky_stone, <ore:ingotIron>, sky_stone],
												[<ore:crystalPureFluix>, <appliedenergistics2:tile.BlockEnergyAcceptor>, <ore:crystalPureFluix>],
												[sky_stone, <ore:ingotIron>, sky_stone]]);

print("AE2.zs loaded");