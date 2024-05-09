# Miscellanous changes
# https://github.com/Vazkii/Botania/blob/master/src/generated/resources/data/botania/recipes/mana_infusion

print("Loading misc.zs...");

// Alternate recipe for Managlass
// Regular uses 150
mods.botania.ManaInfusion.addInfusion(<botania:managlass>, <theaurorian:moonglass>, 145);

// Dimensional Shard -> Transmutation Shard recipe
// Technically more expensive than the Blood Altar one that uses Ambrosium Shards
mods.botania.ManaInfusion.addInfusion(<retroexchange:transmutation_shard>, <rftools:dimensional_shard>, 10500);

// Elven Trade to make the Elven Spreader easier
mods.botania.ElvenTrade.addRecipe([<botania:spreader:2>], [<botania:spreader>, <ordinarycoins:coinplatinum>*10]);

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
<item>.maxStackSize=NEW(up to 64);
<item>.maxDamage = NEWVALUE;
*/

// Craft Chests with Silentwood Logs
recipes.addShaped(<minecraft:chest>*4, [[<theaurorian:silentwoodlog>, <theaurorian:silentwoodlog>, <theaurorian:silentwoodlog>],
                                    	             	  	 [<theaurorian:silentwoodlog>, null, <theaurorian:silentwoodlog>],
                                   	                   		 [<theaurorian:silentwoodlog>, <theaurorian:silentwoodlog>, <theaurorian:silentwoodlog>]]);

// Convert Seaweed (Kelp) to Green Dye 
recipes.addShapeless(<thermalfoundation:dye:2>, [<underwater:seaweed>]);

// Change recipe for dimensional shards
recipes.remove(<rftools:dimensional_shard>);
recipes.addShapeless(<rftools:dimensional_shard>*8, [<ore:gemDiamond>, <ore:gemEmerald>, <extrautils2:ingredients:11>, <botania:manaresource>, <ore:dustGlowstone>, <ore:dustRedstone>, <ore:quartzDark>, <ore:dustPrismarine>, <bloodmagic:slate>]);

recipes.addShapeless(<rftools:dimensional_shard>*12, [<ore:gemDiamond>, <ore:gemEmerald>, <extrautils2:ingredients:11>, <botania:manaresource>, <ore:dustGlowstone>, <ore:dustRedstone>, <ore:quartzDark>, <ore:gemPrismarine>, <bloodmagic:slate:1>]);

// Alt recipe for Canisters that uses Tin
// Because I either have 1k Iron or 1k Tin, there is no in-between
recipes.addShaped(<bhc:canister>, [[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>],
                                      		          [<ore:ingotTin>, null, <ore:ingotTin>],
                                     		          [<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>]]);

// Cold Parachute has 10 durability
<aether_legacy:cold_parachute>.maxDamage = 10;

// Smelt Hardened Clay into Bricks
furnace.addRecipe(<minecraft:brick_block>, <minecraft:hardened_clay>, 1.2);

// Alt recipe for Aurorian Glass
recipes.addShapeless(<theaurorian:aurorianglass>*2, [<theaurorian:moonglass>, <theaurorian:moonglass>, <theaurorian:moonglass>, <theaurorian:moonglass>, <ore:dyeBlue>]);

// Alt recipe for Iron Chest Transporters
recipes.addShaped(<chesttransporter:chesttransporter_iron>, [[<theaurorian:silentwoodstick>, null, <theaurorian:silentwoodstick>],
                                    	                		 	                       [<theaurorian:silentwoodstick>, <theaurorian:silentwoodstick>, <theaurorian:silentwoodstick>],
                                   	                 			 	    [null, <theaurorian:ceruleaningot>, null]]);

// Recycle Lockpicks
furnace.addRecipe(<theaurorian:ceruleaningot>, <theaurorian:lockpicks:*>);

// Convert Cerulean Arrows to regular ones
recipes.addShapeless(<minecraft:arrow>, [<theaurorian:ceruleanarrow>, <theaurorian:ceruleanarrow>]);

// Alt. recipe for Chainmail Plates
recipes.addShapeless(<craftablechainmail:chainmail_plate>, [<theaurorian:ceruleannugget>, <theaurorian:ceruleannugget>, <theaurorian:ceruleannugget>, <theaurorian:ceruleannugget>]);

// Alt. recipe for Stone Reinforced Bow
recipes.addShaped(<thermalfoundation:tool.bow_stone>, [[null, <theaurorian:auroriancobblestone>, <ore:string>],
                              				             [<theaurorian:silentwoodstick>, null, <ore:string>],
                                   				             [null, <theaurorian:auroriancobblestone>, <ore:string>]]);
// Convert Silentwood Planks to regular ones
recipes.addShapeless(<minecraft:planks:1>, [<theaurorian:silentwoodplanks>]);

// Convert Silentwood Bow to a regular one
recipes.addShapeless(<minecraft:bow>, [<theaurorian:silentwoodbow>]);

// Convert Torches to Silentwood Torches
recipes.addShapeless(<theaurorian:silentwoodtorch>, [<minecraft:torch>]);

// Convert Cobblestone to Aurorian Stone
recipes.addShapeless(<theaurorian:auroriancobblestone>, [<minecraft:cobblestone>, <ore:dyeBlue>]);

// Change recipe for the Bloodrose Ring to use Heart Dust
recipes.remove(<bloodtinker:bloody_thorn_ring>);
recipes.addShaped(<bloodtinker:bloody_thorn_ring>, [[<scalinghealth:heartdust>, <bloodtinker:blood_bronze_ingot>, <scalinghealth:heartdust>],
                                    	               			         [<bloodtinker:blood_bronze_ingot>, <minecraft:double_plant:4>, <bloodtinker:blood_bronze_ingot>],
                                   	           			         [<scalinghealth:heartdust>, <bloodtinker:blood_bronze_ingot>, <scalinghealth:heartdust>]]);
// Change Fuel Canister recipe
recipes.remove(<fuelcanister:empty_fuel_canister>);
recipes.addShaped(<fuelcanister:empty_fuel_canister>, [[null, <ore:dyeRed>, <minecraft:iron_ingot>],
                                    	                			         [<ore:nuggetIron>, null, <minecraft:iron_ingot>],
                                   	                 			         [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);

recipes.addShaped(<fuelcanister:empty_fuel_canister>, [[null, <theaurorian:moonstonenugget>, <theaurorian:ceruleaningot>],
                                    	                			         [<theaurorian:moonstonenugget>, null, <theaurorian:ceruleaningot>],
                                   	                 			         [<theaurorian:ceruleaningot>, <theaurorian:ceruleaningot>, <theaurorian:ceruleaningot>]]);
// Add recipes for the Cursed and Enchanted Heart
recipes.addShaped(<scalinghealth:difficultychanger>, [[<scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>],
                                    	                 		                         [<scalinghealth:heartdust>, <extrautils2:ingredients:17>, <scalinghealth:heartdust>],
                                   	               			     [<scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>]]);

recipes.addShaped(<scalinghealth:difficultychanger:1>, [[<scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>],
                                    	                 		                            [<scalinghealth:heartdust>, <extrautils2:ingredients:12>, <scalinghealth:heartdust>],
                                   	               			        [<scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>]]);
// Relic Apple uses any valuable gems
recipes.remove(<bhc:relic_apple>);
recipes.addShaped(<bhc:relic_apple>, [[null, <ore:gemValuable>, null],
                                    	                                   [<ore:gemValuable>, <minecraft:apple>, <ore:gemValuable>],
                                   	                                    [null, <ore:gemValuable>, null]]);

// Increase max damage of Orb of Absorption
<theaurorian:absorptionorb>.maxDamage = 250;

// Add extra recipes to the Wither Skeleton data model
recipes.addShapeless(<deepmoblearning:data_model_wither_skeleton>, [<deepmoblearning:data_model_blank>, <ore:boneWithered>, <ore:boneWithered>, <ore:boneWithered>]);

// Convert Skyroot items to regular
recipes.addShapeless(<minecraft:planks>, [<aether_legacy:skyroot_plank>]);
recipes.addShapeless(<minecraft:stick>, [<aether_legacy:skyroot_stick>]);

// Convert NetherEx's bricks to vanilla ones
recipes.addShapeless(<minecraft:netherbrick>, [<netherex:gloomy_netherbrick>]);
recipes.addShapeless(<minecraft:netherbrick>, [<netherex:lively_netherbrick>]);
recipes.addShapeless(<minecraft:netherbrick>, [<netherex:fiery_netherbrick>]);
recipes.addShapeless(<minecraft:netherbrick>, [<netherex:icy_netherbrick>]);

// Craft Hoppers with Cerulean
recipes.addShaped(<minecraft:hopper>, [[<theaurorian:ceruleaningot>, null, <theaurorian:ceruleaningot>],
                                    		                    [<theaurorian:ceruleaningot>, <ore:chestWood>, <theaurorian:ceruleaningot>],
                                 			[null, <theaurorian:ceruleaningot>, null]]);
// Add another Deep Mob Learning recipe for Nether Wart that uses 2x Brown Mushrooms
recipes.addShapeless(<minecraft:nether_wart>, [<deepmoblearning:living_matter_hellish>, <minecraft:brown_mushroom>, <minecraft:brown_mushroom>]);

// Add a recipe to smelt Cerulean Cups in a furnace
// Not as good as in a Smeltery ofc
furnace.addRecipe(<theaurorian:ceruleannugget>, <theaurorian:cup>);

// Extra recipe for Ambrosium Torches
recipes.addShapeless(<aether_legacy:ambrosium_torch>*3, [<aether_legacy:ambrosium_shard>, <minecraft:torch>, <minecraft:torch>, <minecraft:torch>]);

// Recipes for Obscured Ancient Runes
recipes.addShaped(<sccraftingrunes:itemmatbag>*2, [[<actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>],
                                     			 	              [<actuallyadditions:item_misc:20>, <sccraftingrunes:itemcommonmat>, <actuallyadditions:item_misc:20>],
                                				              [<actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>]]);
recipes.addShaped(<sccraftingrunes:itemmatbag>*4, [[<actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>],
                                     			 	              [<actuallyadditions:item_misc:20>, <sccraftingrunes:itemuncommonmat>, <actuallyadditions:item_misc:20>],
                                				              [<actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>]]);

// Change recipe for the Deep Dark portal
recipes.remove(<extrautils2:teleporter:1>);
recipes.addShaped(<extrautils2:teleporter:1>, [[<extrautils2:compressedcobblestone>, <extrautils2:compressedcobblestone>, <extrautils2:compressedcobblestone>],
                                      			           [<extrautils2:compressedcobblestone>, <elementaristics:essence:15>, <extrautils2:compressedcobblestone>],
                         			           [<extrautils2:compressedcobblestone>, <extrautils2:compressedcobblestone>, <extrautils2:compressedcobblestone>]]);

// Another recipe for Chance Cubes (CraftingRunes.zs has others)
recipes.addShaped(<chancecubes:chance_cube>*3, [[<actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>],
                                     			 	         [<actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>],
                                				          [<actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>]]);
recipes.addShapeless(<chancecubes:chance_cube>, [<actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>]);

// Use parchement fragments to make Magical Silk or Paper
recipes.addShapeless(<ebwizardry:magic_silk>*2, [<ebwizardry:magic_crystal>, <improvableskills:parchment_fragment>, <improvableskills:parchment_fragment>]);
recipes.addShaped(<minecraft:paper>*6, [[null, null, null],
                                        [<improvableskills:parchment_fragment>, <improvableskills:parchment_fragment>, <improvableskills:parchment_fragment>],
                                   	    [null, null, null]]);

// Smelt Cerulean Arrows into Nuggets
furnace.addRecipe(<theaurorian:ceruleannugget>, <theaurorian:ceruleanarrow>, 0.5);

// Decraft cobwebs
recipes.addShapeless(<minecraft:string>*2, [<minecraft:web>]);

// Add recipe to Bottle O' Enchanting
recipes.addShapeless(<minecraft:experience_bottle>, [<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <minecraft:glass_bottle>]);

// Add recipes for Diving Armour (Shipwrecks!)
recipes.addShaped(<shipwrecks_winslow:diving_helmet>, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
                           				               [<ore:ingotIron>, <minecraft:iron_helmet>, <ore:ingotIron>],
                               				               [null, null, null]]);
// Comes with Respiration 2 and Aqua Affinity
recipes.addShaped(<shipwrecks_winslow:diving_helmet>.withTag({ench: [{lvl: 2 as short, id: 5 as short}, {lvl: 1 as short, id: 6 as short}], RepairCost: 3}),
		 			               [[<ore:ingotElectrum>, <minecraft:chainmail_helmet>, <ore:ingotElectrum>],
                           				               [<minecraft:potion>.withTag({Potion: "minecraft:water_breathing"}), <ore:gemValuable>, <minecraft:potion>.withTag({Potion: "minecraft:water_breathing"})],
                               				               [<ore:ingotElectrum>, <minecraft:iron_helmet>, <ore:ingotElectrum>]]);

recipes.addShaped(<shipwrecks_winslow:diving_chest>, [[<ore:ingotIron>, null, <ore:ingotIron>],
                           				               [<ore:ingotIron>, <minecraft:iron_chestplate>, <ore:ingotIron>],
                               				               [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);

recipes.addShaped(<shipwrecks_winslow:diving_legs>, [[<ore:ingotIron>, <minecraft:iron_leggings>, <ore:ingotIron>],
                           				         [<ore:ingotIron>, null, <ore:ingotIron>],
                               				         [<ore:ingotIron>, null, <ore:ingotIron>]]);

recipes.addShaped(<shipwrecks_winslow:diving_boots>, [[null, null, null],
                           				               [<ore:ingotIron>, null, <ore:ingotIron>],
                               				               [<ore:ingotIron>, <minecraft:iron_boots>, <ore:ingotIron>]]);
// Comes with Depth Strider 3
recipes.addShaped(<shipwrecks_winslow:diving_boots>.withTag({ench: [{lvl: 3 as short, id: 8 as short}], RepairCost: 1}),
				 	               [[<ore:ingotInvar>, <minecraft:chainmail_boots>, <ore:ingotInvar>],
                           				               [<minecraft:potion>.withTag({Potion: "minecraft:water_breathing"}), <ore:gemValuable>, <minecraft:potion>.withTag({Potion: "minecraft:water_breathing"})],
                               				               [<ore:ingotInvar>, <minecraft:iron_boots>, <ore:ingotInvar>]]);

// Replace Adventurer's Backpack with Woven one in the regular recipe
// Basically only because 15 slots is not enough for a Backpack designed to carry non-stackable items
recipes.remove(<forestry:adventurer_bag>);
recipes.remove(<forestry:adventurer_bag_t2>);
recipes.addShaped(<forestry:adventurer_bag_t2>, [[<ore:string>, <ore:blockWool>, <ore:string>],
                                                                                                    [<ordinarycoins:coinplatinum>, <ore:chestWood>, <ordinarycoins:coinplatinum>],
                                                                                                    [<ore:string>, <ore:blockWool>, <ore:string>]]);
// Craft Ender Shards into Ender Pearls
recipes.addShapeless(<minecraft:ender_pearl>, [<extrautils2:endershard>, <extrautils2:endershard>, <extrautils2:endershard>,
                                 			              <extrautils2:endershard>, <elementaristics:essence:10>, <extrautils2:endershard>,
                               			              <extrautils2:endershard>, <extrautils2:endershard>, <extrautils2:endershard>]);

recipes.addShapeless(<minecraft:ender_pearl>*2, [<extrautils2:endershard>, <extrautils2:endershard>, <extrautils2:endershard>,
                                 			                   <extrautils2:endershard>, <elementaristics:essence:16>, <extrautils2:endershard>,
                               			                   <extrautils2:endershard>, <extrautils2:endershard>, <extrautils2:endershard>]);

// Craft 6 Hopper Ducts from 1 Hopper
recipes.addShapeless(<hopperducts:hopperduct>*6, [<minecraft:hopper>]);

// Change wooden hopper recipe
recipes.remove(<tconstruct:wooden_hopper>);
recipes.addShaped(<tconstruct:wooden_hopper>, [[<ore:plankWood>, null, <ore:plankWood>],
                                   			                    [<ore:plankWood>, null, <ore:plankWood>],
                          			                    [null, <ore:plankWood>, null]]);
// Marble Crafting Table "upgrade"
recipes.addShaped(<marblecraftingtable:marble_crafting_table>, [[<ore:dyeWhite>, <ore:dyeWhite>, <ore:dyeWhite>],
                                  			                                               [<ore:dyeWhite>, <sct:stone_crafting_table>, <ore:dyeWhite>],
                                    				                           [<ore:dyeWhite>, <ore:dyeWhite>, <ore:dyeWhite>]]);
// Lore Journal
// In case you lose the one you start with
recipes.addShapeless(<loreexpansion:lore_journal>, [<minecraft:book>, <minecraft:paper>]);

// Convert Books to Books
// Because for some reason randomly named ones generated for me and NBt data is annoying
recipes.addShapeless(<minecraft:book>, [<minecraft:book>]);

// Miner's Ring (Baubles) recipes
// Because why not?
// Also I made a quest for it just to show it exists
recipes.addShapeless(<baubles:ring>, [<ore:midTierPickaxe>, <minecraft:experience_bottle>]);

// Cursed & Enchanted Hearts only stack to 5
<scalinghealth:difficultychanger>.maxStackSize=5;
<scalinghealth:difficultychanger:1>.maxStackSize=5;

// Convert 1 Dyed Wool into 1 Regular
recipes.addShapeless(<minecraft:wool>, [<ore:blockWool>, <ore:dyeWhite>]);

// Convert Silkworm Eggs to String
recipes.addShapeless(<minecraft:string>, [<mysticalworld:silkworm_egg>]);

// Increase durability of all Paxels & Universal Tools
// Makes it ~25% more than the durability of the items used
// Gold is more though because why not?

<multitools:paxel_wood>.maxDamage = 118;
<multitools:paxel_stone>.maxDamage = 262;
<multitools:paxel_iron>.maxDamage = 500;
<multitools:paxel_gold>.maxDamage = 64;
<multitools:paxel_diamond>.maxDamage = 3122;

<multitools:universaltool_wood>.maxDamage = 193;
<multitools:universaltool_stone>.maxDamage = 337;
<multitools:universaltool_iron>.maxDamage = 575;
<multitools:universaltool_gold>.maxDamage = 139;
<multitools:universaltool_diamond>.maxDamage = 3197;

print("misc.zs loaded");