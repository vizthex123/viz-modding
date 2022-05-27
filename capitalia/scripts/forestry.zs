# Changes recipes related to items from Forestry
print("forestry.zs loading...");
/*
https://docs.blamejared.com/1.12/en/Mods/Modtweaker/Forestry/Centrifuge/
https://docs.blamejared.com/1.12/en/Mods/Modtweaker/Forestry/Squeezer/
*/

# Add more recipes for Compost
// Barley
recipes.addShaped(<forestry:fertilizer_bio>*4, [[null, <natura:materials>, null],
                                      [<natura:materials>, <minecraft:dirt:*>, <natura:materials>],
                                      [null, <natura:materials>, null]]);
									  
// Minecraft Crops									  
recipes.addShaped(<forestry:fertilizer_bio>*4, [[null, <minecraft:carrot>|<minecraft:potato>|<minecraft:beetroot>, null],
                                      [<minecraft:carrot>|<minecraft:potato>|<minecraft:beetroot>, <minecraft:dirt:*>, <minecraft:carrot>|<minecraft:potato>|<minecraft:beetroot>],
                                      [null, <minecraft:carrot>|<minecraft:potato>|<minecraft:beetroot>, null]]);
									  	  
recipes.addShaped(<forestry:fertilizer_bio>*2, [[null, <minecraft:melon>, null],
                                      [<minecraft:melon>, <minecraft:dirt:*>, <minecraft:melon>],
                                      [null, <minecraft:melon>, null]]);
									  
recipes.addShaped(<forestry:fertilizer_bio>*6, [[null, <minecraft:pumpkin>, null],
                                      [<minecraft:pumpkin>, <minecraft:dirt:*>, <minecraft:pumpkin>],
                                      [null, <minecraft:pumpkin>, null]]);
									  
recipes.addShaped(<forestry:fertilizer_bio>*8, [[null, <minecraft:nether_wart>, null],
                                      [<minecraft:nether_wart>, <minecraft:dirt:*>, <minecraft:nether_wart>],
                                      [null, <minecraft:nether_wart>, null]]);
// Forestry fruits
recipes.addShaped(<forestry:fertilizer_bio>*4, [[null, <ore:fruitForestry>, null],
                                      [<ore:fruitForestry>, <minecraft:dirt:*>, <ore:fruitForestry>],
                                      [null, <ore:fruitForestry>, null]]);
// Natura berries
recipes.addShaped(<forestry:fertilizer_bio>*2, [[null, <ore:berry>, null],
                                      [<ore:berry>, <minecraft:dirt:*>, <ore:berry>],
                                      [null, <ore:berry>, null]]);

// Convert Honey Jars into Honey Drops/Dew
mods.forestry.Centrifuge.addRecipe([(<forestry:honey_drop> * 4) % 100, <forestry:honey_drop>*2 % 50], <biomesoplenty:jar_filled>, 75);
mods.forestry.Squeezer.addRecipe(<liquid:honey>*500, [<biomesoplenty:jar_filled>], 50, (<forestry:honeydew>*4) % 50);

// Convert Honeycombs (Filled & Empty) into Honey Drops/Dew
mods.forestry.Centrifuge.addRecipe([(<forestry:honey_drop> * 4) % 100], <biomesoplenty:filled_honeycomb>, 35);
mods.forestry.Centrifuge.addRecipe([(<forestry:honey_drop> * 2) % 10], <biomesoplenty:honeycomb>, 25);

mods.forestry.Squeezer.addRecipe(<liquid:honey>*250, [<biomesoplenty:filled_honeycomb>], 40, <forestry:honeydew> % 25);
mods.forestry.Squeezer.addRecipe(<liquid:honey>*100, [<biomesoplenty:honeycomb>, <biomesoplenty:honeycomb>, <biomesoplenty:honeycomb>, <biomesoplenty:honeycomb>], 40, (<forestry:honey_drop> * 8) % 50);


// Convert Honey Blocks into Honeydew
mods.forestry.Centrifuge.addRecipe([(<forestry:honeydew> * 6) % 85], <biomesoplenty:honey_block>, 200);
mods.forestry.Squeezer.addRecipe(<liquid:honey>*1000, [<biomesoplenty:honey_block>], 400, (<forestry:honeydew>*5) % 50);


// Miner's Backpack uses bronze instead
recipes.remove(<forestry:miner_bag>);
recipes.addShaped(<forestry:miner_bag>, [[<minecraft:string>, <ore:wool>, <minecraft:string>],
				    [<ore:ingotBronze>, <ore:chestWood>, <ore:ingotBronze>],
				    [<minecraft:string>, <ore:wool>, <minecraft:string>]]);

/*
// Alternate Woven Miner's & Digger's Backpack recipes
mods.extendedcrafting.TableCrafting.addShaped(0, <forestry:miner_bag_t2>, 
	[[<openblocks:generic:5>, <forestry:thermionic_tubes:9>, <openblocks:generic:5>], 
	[<openblocks:generic:5>, <forestry:miner_bag>, <openblocks:generic:5>], 
	[<openblocks:generic:5>, <openblocks:generic:5>, <openblocks:generic:5>]]);

mods.extendedcrafting.TableCrafting.addShaped(0, <forestry:digger_bag_t2>, 
	[[<openblocks:generic:5>, <forestry:thermionic_tubes:9>, <openblocks:generic:5>], 
	[<openblocks:generic:5>, <forestry:digger_bag>, <openblocks:generic:5>], 
	[<openblocks:generic:5>, <openblocks:generic:5>, <openblocks:generic:5>]]);
*/

print("forestry.zs loaded");