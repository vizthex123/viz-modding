# Changes recipes for AE2 content
# Grindstone
mods.appeng.Grinder.addRecipe(<Avaritia:Resource>, <Avaritia:Resource:7>, 1);
mods.appeng.Grinder.addRecipe(<minecraft:command_block>, <randomite:tile.randomiteStone>*2, 4);
mods.appeng.Grinder.addRecipe(<minecraft:bedrock>, <randomite:tile.randomiteStone>*4, 8);

// HQM Hearts
mods.appeng.Grinder.addRecipe(<HardcoreQuesting:hearts:3>, <TConstruct:heartCanister:1>*4, 10);
mods.appeng.Grinder.addRecipe(<HardcoreQuesting:hearts:2>, <TConstruct:heartCanister:1>*3, 8);
mods.appeng.Grinder.addRecipe(<HardcoreQuesting:hearts:1>, <TConstruct:heartCanister:1>*2, 6);
mods.appeng.Grinder.addRecipe(<HardcoreQuesting:hearts:4>, <TConstruct:heartCanister:1>, 5);
mods.appeng.Grinder.addRecipe(<HardcoreQuesting:hearts>, <TConstruct:heartCanister:1>, 4);


# Presses
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:19>, [[null, <LootRoulette:C>, null],
                                                                                                                                       [<LootRoulette:C>, <LootRoulette:C>, <LootRoulette:C>],
 		                 				               [null, <LootRoulette:C>, null]]);

recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:15>, [[null, <LootRoulette:U>, null],
                                                                                                                                       [<LootRoulette:U>, <LootRoulette:U>, <LootRoulette:U>],
 		                 				               [null, <LootRoulette:U>, null]]);

recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:14>, [[null, <LootRoulette:C>, null],
                                                                                                                                       [<LootRoulette:C>, <LootRoulette:R>, <LootRoulette:C>],
 		                 				               [null, <LootRoulette:C>, null]]);

recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:13>, [[null, <LootRoulette:U>, null],
                                                                                                                                       [<LootRoulette:U>, <LootRoulette:R>, <LootRoulette:U>],
 		                 				               [null, <LootRoulette:U>, null]]);