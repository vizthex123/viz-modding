# Miscellaneous recipes

# Iridium Ore
recipes.addShaped(<IC2:itemOreIridium>, [[<AWWayofTime:reinforcedSlate>, <IC2:itemUran235>, <Botania:manaResource>],
                                                                                   [<IC2:itemUran238>, <LogisticsPipes:item.pipeComponents:2>,<IC2:itemUran238>],
 		                                          [<ewysworkshop:WorkshopTableUpgrade>, <IC2:itemUran235>, <Thaumcraft:ItemShard:6>]]);

# Dragon Egg
recipes.remove(<minecraft:dragon_egg>);
recipes.addShaped(<minecraft:dragon_egg>, [[<Avaritia:Resource:1>, <Avaritia:Resource:1>, <Avaritia:Resource:1>],
                                                                                        [<Avaritia:Resource:1>, <Avaritia:Resource:4>,<Avaritia:Resource:1>],
 		                                                [<Avaritia:Resource:1>, <Avaritia:Resource:1>, <Avaritia:Resource:1>]]);

# Chance Icosahedron
recipes.addShaped(<chancecubes:Chance_Icosahedron> * 16, [[<pandorasbox:pandorasBox>, <chancecubes:Chance_Cube>, <pandorasbox:pandorasBox>],
                                                                                                                          [<chancecubes:Chance_Cube>, <Avaritia:Resource:7>, <chancecubes:Chance_Cube>],
 		                                                                                  [<pandorasbox:pandorasBox>, <chancecubes:Chance_Cube>, <pandorasbox:pandorasBox>]]);

# Craftable Nether Star recipes
recipes.remove(<craftnstar:starcore>);
recipes.remove(<craftnstar:starbranch>);
recipes.addShaped(<craftnstar:starbranch>, [[null, <LootRoulette:R>, null],
                                                                                      [<minecraft:diamond>, <LootRoulette:L>, <minecraft:diamond>],
 		                                              [<minecraft:diamond>, <minecraft:glowstone>, <minecraft:diamond>]]);

recipes.addShaped(<craftnstar:starcore>, [[<minecraft:glowstone>, <LootRoulette:L>, <minecraft:glowstone>],
                                                                                 [<minecraft:diamond>, <minecraft:emerald>, <minecraft:diamond>],
 		                                         [<minecraft:glowstone>, <LootRoulette:L>, <minecraft:glowstone>]]);

recipes.addShaped(<craftnstar:starcore>, [[<minecraft:glowstone>, <minecraft:diamond>, <minecraft:glowstone>],
                                                                                 [<LootRoulette:L>, <minecraft:emerald>, <LootRoulette:L>],
 		                                         [<minecraft:glowstone>, <minecraft:diamond>, <minecraft:glowstone>]]);

recipes.addShaped(<minecraft:nether_star>, [[<minecraft:glowstone>, <craftnstar:starbranch>, <minecraft:glowstone>],
                                                                                       [<craftnstar:starbranch>, <craftnstar:starcore>, <craftnstar:starbranch>],
 		                                               [<minecraft:glowstone>, <craftnstar:starbranch>, <minecraft:glowstone>]]);

# HQM Full Heart
recipes.addShaped(<HardcoreQuesting:hearts:3>, [[null, <universalcoins:item.obsidian_coin>, null],
                                                     	                                            [<universalcoins:item.obsidian_coin>, <universalcoins:item.obsidian_coin>, <universalcoins:item.obsidian_coin>],
 		            	    	                        [null, <universalcoins:item.obsidian_coin>, null]]);

# Lore Expansion Journal
recipes.addShapeless(<LoreExp:journal>, [<minecraft:book>, <universalcoins:item.obsidian_coin>]);

# Invalid Item Use
recipes.addShapeless(<HardcoreQuesting:bags>, [<HardcoreQuesting:hqmInvalidItem>]);

# The One Ring use
recipes.addShapeless(<HardcoreQuesting:bags:4>, [<EMT:BaseBaubles>]);