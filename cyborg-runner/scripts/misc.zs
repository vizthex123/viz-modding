# Changes recipes for miscellanous items
print("misc.zs loading...");
/*
recipes.remove(<>);
recipes.addShaped(<output>, [[<null>, <null>, <null>],
                                      [<null>, <null>, <null>],
                                      [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
furnace.addRecipe(<output>, <input>, XP[F]);
<item>.maxStackSize=NEW;
*/

var iron = <minecraft:iron_ingot>;
var gold = <minecraft:gold_ingot>;
val diamond = <minecraft:diamond>;

var redstone = <minecraft:redstone>;
var electrotine = <projectred-core:resource_item:105>;

var melon_circuit = <contenttweaker:melon_circuit>;

// Make Black Dye with Black Flowers
recipes.addShapeless("black_dye", <industrialforegoing:artificial_dye:15>, [<byg:woodenmortar>, <ore:flowerBlack>]);

// Make Blue Dye with Blue Flowers
recipes.addShapeless("blue_dye", <natura:materials:8>, [<ore:flowerBlue>]);

// Convert Merialces Hide into Leather
// It has the OreDict entry, but some recipes don't use it
recipes.addShapeless("hide_to_leather", <minecraft:leather>, [<glacidus:merialces_hide>]);

// Convert Collation Folders into Empty ones
recipes.addShapeless("collation_erasure", <mystcraft:folder>, [<mystcraft:folder:*>]);

// Obsidian Sticks with Ingots
recipes.addShaped("obsidian_sticks", <wrcbe:material>*2, [[<ore:ingotObsidian>, null],
																			[<ore:ingotObsidian>, null],
																			[<ore:ingotObsidian>, null]]);

// Change OpenBlock's sponge to use Minecraft sponges
recipes.remove(<openblocks:sponge>);
recipes.addShapeless("ob_sponge", <openblocks:sponge>, [<minecraft:sponge>, <ore:slimeball>]);

// New Akashic Tome recipes
recipes.remove(<akashictome:tome>);
recipes.addShapeless(<akashictome:tome>, [<ore:bookshelf>, <minecraft:book>]);
recipes.addShapeless(<akashictome:tome>, [<minecraft:writable_book>, <minecraft:book>, <ore:paper>]);

// New Idea Table recipe
// Removes Parchment & Feather requirements
recipes.remove(<ftgumod:idea_table>);
recipes.addShaped(<ftgumod:idea_table>, [[null, <ore:bone>, null],
																		  [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
																		  [null, <ore:craftingTableWood>, null]]);

// Make the Wooden Hopper (Wopper) cheaper
recipes.remove(<wopper:wopper>);
recipes.addShaped(<wopper:wopper>, [[<ore:plankWood>, null, <ore:plankWood>],
                                		                  [<ore:plankWood>, null, <ore:plankWood>],
                                  		                  [null, <ore:plankWood>, null]]);

// Upgrade a Wooden Hopper to a regular one
recipes.addShaped(<minecraft:hopper>, [[iron, <wopper:wopper>, iron],
																	  [iron, <ore:logWood>, iron],
																	  [null, iron, null]]);

// Lead Anvil
recipes.addShaped(<minecraft:anvil>, [[null, <ore:blockLead>, null],
																   [null, <ore:ingotLead>, null],
																   [<ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>]]);

// Change Heart Dust recipes
// On the fence about making it a basic table recipe that uses a Hammer
recipes.remove(<scalinghealth:heartdust>);
recipes.addShapeless(<scalinghealth:heartdust>*36, [<scalinghealth:heartcontainer>]);
recipes.addShapeless(<scalinghealth:heartdust>*4, [<scalinghealth:crystalshard>]);

// Torches with mini coals
recipes.addShapedMirrored(<minecraft:torch>, [[<minicoal:minicoal>, <minicoal:minicoal>],
                                  			    [<ore:stickWood>, null]]);
recipes.addShapedMirrored(<minecraft:torch>, [[<minicoal:minicharcoal>, <minicoal:minicharcoal>],
                                  			    [<ore:stickWood>, null]]);

// Nibrock's Coals -> Torches
recipes.addShapedMirrored(<minecraft:torch>*8, [[<nibrockscoal:iron_coal>, null],
                                  			    [<ore:stickWood>, null]]);
recipes.addShapedMirrored(<minecraft:torch>*16, [[<nibrockscoal:gold_coal>, null],
                                  			    [<ore:stickWood>, null]]);
recipes.addShapedMirrored(<minecraft:torch>*32, [[<nibrockscoal:diamond_coal>, null],
                                  			    [<ore:stickWood>, null]]);

recipes.addShapedMirrored(<bonetorch:bonetorch>*8, [[<nibrockscoal:iron_coal>, null],
                                  			    [<ore:bone>, null]]);
recipes.addShapedMirrored(<bonetorch:bonetorch>*16, [[<nibrockscoal:gold_coal>, null],
                                  			    [<ore:bone>, null]]);
recipes.addShapedMirrored(<bonetorch:bonetorch>*32, [[<nibrockscoal:diamond_coal>, null],
                                  			    [<ore:bone>, null]]);

// Red Coal -> Torches
recipes.addShapedMirrored(<minecraft:torch>*5, [[<extrautils2:ingredients:4>, null],
                                  			    [<ore:stickWood>, null]]);
recipes.addShapedMirrored(<bonetorch:bonetorch>*5, [[<extrautils2:ingredients:4>, null],
                                  			    [<ore:bone>, null]]);

// Convert Red Coal to Mini Coal
recipes.addShapeless(<minicoal:minicoal>*10, [<extrautils2:ingredients:4>]);

// Should make DSE's Steel Hammer plate recipes work
recipes.addShapeless(<thermalfoundation:material:32>, [iron, <dse:hammersteel>.transformDamage(1)]);
recipes.addShapeless(<thermalfoundation:material:352>, [<ore:ingotSteel>, <dse:hammersteel>.transformDamage(3)]);

// Nibrock's Coals -> Mini Coal
recipes.addShapeless(<minicoal:minicoal>*16, [<nibrockscoal:iron_coal>]);
recipes.addShapeless(<minicoal:minicoal>*32, [<nibrockscoal:gold_coal>]);
recipes.addShapeless(<minicoal:minicoal>*64, [<nibrockscoal:diamond_coal>]);

// Crimson Coal -> Mini Coal
recipes.addShapeless(<minicoal:minicoal>*12, [<cm:crimson_coal>]);

// Melon Blocks -> Slices
recipes.addShapeless(<minecraft:melon>*9, [<minecraft:melon_block>]);

// Extract water from melon slices
recipes.addShaped(<minecraft:water_bucket>, [[<minecraft:melon>, <minecraft:melon>, <minecraft:melon>],
                                 			            [<minecraft:melon>, <minecraft:bucket>, <minecraft:melon>],
                                     			            [<minecraft:melon>, <minecraft:melon>, <minecraft:melon>]]);

// Same as above, but for Clay Buckets
recipes.addShaped(<ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}), [[<minecraft:melon>, <minecraft:melon>, <minecraft:melon>],
                                 			  					             [<minecraft:melon>, <ceramics:clay_bucket>, <minecraft:melon>],
                                     			          					             [<minecraft:melon>, <minecraft:melon>, <minecraft:melon>]]);

// Same as above, but with snow
// Takes 2x as much as the Magma Crucible
recipes.addShapeless(<minecraft:water_bucket>, [<minecraft:snow>, <minecraft:snow>, <minecraft:snow>, <minecraft:snow>, <minecraft:bucket>]);
recipes.addShapeless(<ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}), [<minecraft:snow>, <minecraft:snow>, <minecraft:snow>, <minecraft:snow>, <ceramics:clay_bucket>]);

// Convert Webs to String
recipes.addShapeless(<minecraft:string>, [<minecraft:web>]);

// Recycle Chain Plates into Nuggets
furnace.addRecipe(<minecraft:iron_nugget>*2, <byg:chainplating>, 0);

// Chainmail re-doing thing because the defaults are shapeless for some reason
recipes.remove(<byg:chainplating>);
recipes.remove(<minecraft:chainmail_boots>);
recipes.remove(<minecraft:chainmail_helmet>);
recipes.addShapeless(<byg:chainplating>*2, [<minecraft:iron_nugget>, <minecraft:iron_nugget>, <minecraft:iron_nugget>, <minecraft:iron_nugget>]);

recipes.addShaped(<minecraft:chainmail_helmet>, [[<byg:chainplating>, <byg:chainplating>, <byg:chainplating>],
                                    	 			[<byg:chainplating>, null, <byg:chainplating>]]);

recipes.addShaped(<minecraft:chainmail_boots>, [[<byg:chainplating>, null, <byg:chainplating>],
					[<byg:chainplating>, null, <byg:chainplating>]]);

// Alt recipe for Universal Tools
recipes.addShapeless(<multitools:universaltool_iron>, [<multitools:paxel_iron>, <minecraft:iron_hoe>, <ore:rodStone>]);
recipes.addShapeless(<multitools:universaltool_gold>, [<multitools:paxel_gold>, <minecraft:golden_hoe>, <ore:rodStone>]);
recipes.addShapeless(<multitools:universaltool_diamond>, [<multitools:paxel_diamond>, <minecraft:diamond_hoe>, <ore:rodStone>]);

// Fix how (Dried) Flesh conflicts with Cooked
recipes.remove(<xlfoodmod:flesh>);
recipes.remove(<byg:cookedflesh>);

recipes.addShapeless(<xlfoodmod:flesh>, [<minecraft:rotten_flesh>, <xlfoodmod:salt>|<alchemistry:mineral_salt>]);
furnace.addRecipe(<byg:cookedflesh>, <xlfoodmod:flesh>, 0.25);
furnace.addRecipe(<xlfoodmod:flesh>, <minecraft:rotten_flesh>, 0.10);

// Decraft trapped chests
recipes.addShapeless(<minecraft:chest>, [<minecraft:trapped_chest>, <minecraft:flint>]);

// Gravel -> Flint
recipes.addShapeless(<minecraft:flint>, [<minecraft:gravel>, <minecraft:gravel>]);

// Bone Torch tweak
// To make them the early-game lighting method
recipes.remove(<bonetorch:bonetorch>);
recipes.addShapeless("wrapped_torch", <bonetorch:bonetorch>, [<minecraft:flint_and_steel:*>.transformDamage(1), <contenttweaker:wrapped_bone>]);

recipes.addShaped(<bonetorch:bonetorch>*4, [[<minecraft:coal>|<minecraft:coal:1>, null],
                                     			            [<ore:bone>, null]]);

recipes.addShapedMirrored(<bonetorch:bonetorch>*6, [[<cm:crimson_coal>, null],
                                  			    [<ore:bone>, null]]);

// Basic Circuit re-work
// Makes 2 per craft, and costs about the same
// Also lets you upgrade a DIY Melon Circuit into a Basic one
recipes.remove(<dse:components:10>);
recipes.addShapedMirrored(<dse:components:10>*2, [[null, redstone, iron],
                                     				      [gold, <ore:dyeGreen>, gold],
                                 				      [iron, redstone, null]]);

recipes.addShapedMirrored(<dse:components:10>, [[null, electrotine, iron],
                                     				   [<minecraft:glowstone_dust>, melon_circuit, <minecraft:glowstone_dust>],
                                 				   [iron, electrotine, null]]);

// Allow the player to use Electrotine for Advanced and Elite circuits
recipes.remove(<dse:components:11>);
recipes.remove(<dse:components:12>);
recipes.addShapedMirrored(<dse:components:11>, [[null, redstone|electrotine, gold],
                                     				   [<dse:components:10>, <ore:dyeRed>, <dse:components:10>],
                                 				   [gold, redstone|electrotine, null]]);

recipes.addShapedMirrored(<dse:components:12>, [[null, electrotine, diamond],
                                     				   [<dse:components:11>, <ore:dyeBlue>, <dse:components:11>],
                                 				   [diamond, electrotine, null]]);

// Early-game string recipe
recipes.addShapeless(<minecraft:string>*2, [<ore:wool>, <minecraft:flint>]);

// Repair Flint & Steel
recipes.addShapeless(<minecraft:flint_and_steel>, [<minecraft:flint_and_steel:*>, <minecraft:flint>]);

// Stone Storage Upgrade recipe change
recipes.remove(<multistorage:stone_storage>);
recipes.addShaped(<multistorage:stone_storage>, [[<ore:rodStone>, <ore:stone>, <ore:rodStone>],
																						[<ore:stone>, <extrautils2:compressedcobblestone:1>, <ore:stone>],
																						[<ore:rodStone>, <ore:stone>, <ore:rodStone>]]);

// PSD & Miniaturization Field
recipes.remove(<compactmachines3:psd>);
recipes.addShaped(<compactmachines3:psd>, [[null, <ore:slimeball>, null],
																				[<ore:bone>, melon_circuit, <ore:bone>],
																				[null, <minecraft:bone_block>, null]]);

recipes.remove(<compactmachines3:fieldprojector>);
recipes.addShaped(<compactmachines3:fieldprojector>, [[null, melon_circuit, null],
																								  [null, <minecraft:slime>, null],
																								  [<ore:cobblestone>, <compactmachines3:psd>.reuse(), <ore:cobblestone>]]);

recipes.addShaped(<compactmachines3:fieldprojector>*4, [[null, melon_circuit, null],
																									  [null, <minecraft:ender_pearl>, null],
																									  [iron, <compactmachines3:psd>.reuse(), iron]]);

print("misc.zs loaded");