# Changes recipes for AE2 & its add-ons
print("AE2.zs loading...");

val common = <LootRoulette:C>;
val uncommon = <LootRoulette:U>;
val rare = <LootRoulette:R>;
val legendary = <LootRoulette:L>;


# Grindstone recipes
mods.appeng.Grinder.addRecipe(<minecraft:command_block>, <randomite:tile.randomiteStone>*2, 4);
mods.appeng.Grinder.addRecipe(<minecraft:bedrock>, <randomite:tile.randomiteStone>*4, 8);
mods.appeng.Grinder.addRecipe(<HardcoreQuesting:hearts:3>, <TConstruct:heartCanister:1>, 8);
mods.appeng.Grinder.addRecipe(<HardcoreQuesting:hearts>, <HardcoreQuesting:hearts:4>, 8);



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

recipes.addShaped(calculation, [[null, common, null],
												[common, uncommon, common],
												[null, common, null]]);

recipes.addShaped(engineering, [[null, uncommon, null],
												[uncommon, rare, uncommon],
												[null, uncommon, null]]);

print("AE2.zs loaded");