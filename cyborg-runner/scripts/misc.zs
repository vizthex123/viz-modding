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

// Iron Ring -> Chain Plating
// Gives a bit more than crafting the plating itself
recipes.addShapeless("ring_to_plating", <byg:chainplating>*20, [<contenttweaker:ring>]);

// New Akashic Tome recipes
recipes.remove(<akashictome:tome>);
recipes.addShapeless(<akashictome:tome>, [<ore:bookshelf>, <minecraft:book>]);
recipes.addShapeless(<akashictome:tome>, [<minecraft:writable_book>, <minecraft:book>, <minecraft:book>]);

// New Idea Table recipe
// Removes Parchment & Feather requirements
recipes.remove(<ftgumod:idea_table>);
recipes.addShaped(<ftgumod:idea_table>, [[null, <ore:bone>, null],
                                  			    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
                               			    [null, <ore:craftingTableWood>, null]]);

// Craft Cursed & Enchanted Hearts
recipes.addShaped(<scalinghealth:difficultychanger>, [[<scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>],
                                      [<scalinghealth:heartdust>, <minecraft:bread>|<xlfoodmod:cheesy_bread>|<byg:pumpkinbread>|<xlfoodmod:baguette>|<xlfoodmod:rice_bread>|<xlfoodmod:corn_bread>|<xlfoodmod:potato_bread>, <scalinghealth:heartdust>],
                                      [<scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>]]);

recipes.addShaped(<scalinghealth:difficultychanger:1>, [[<scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>],
                                      [<scalinghealth:heartdust>, <minecraft:rotten_flesh>|<xlfoodmod:flesh>|<byg:cookedflesh>, <scalinghealth:heartdust>],
                                      [<scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>]]);

// Alternate Hopper recipe
recipes.addShaped(<minecraft:hopper>, [[<minecraft:iron_ingot>, <wopper:wopper>, <minecraft:iron_ingot>],
                                      		                    [<minecraft:iron_ingot>, <ore:logWood>, <minecraft:iron_ingot>],
                                    		 	[null, <minecraft:iron_ingot>, null]]);

// Change Heart Dust recipes
// On the fence about making it a basic table recipe that uses a Hammer
recipes.remove(<scalinghealth:heartdust>);
recipes.addShapeless(<scalinghealth:heartdust>*36, [<scalinghealth:heartcontainer>]);
recipes.addShapeless(<scalinghealth:heartdust>*4, [<scalinghealth:crystalshard>]);

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

// Should make DSE's Steel Hammer plate recipes work
recipes.addShapeless(<thermalfoundation:material:32>, [<minecraft:iron_ingot>, <dse:hammersteel>.transformDamage(1)]);
recipes.addShapeless(<thermalfoundation:material:352>, [<ore:ingotSteel>, <dse:hammersteel>.transformDamage(3)]);

// Nibrock's Coals -> Mini Coal
recipes.addShapeless(<minicoal:minicoal>*16, [<nibrockscoal:iron_coal>]);
recipes.addShapeless(<minicoal:minicoal>*32, [<nibrockscoal:gold_coal>]);
recipes.addShapeless(<minicoal:minicoal>*64, [<nibrockscoal:diamond_coal>]);

// Crimson Coal -> Mini Coal
recipes.addShapeless(<minicoal:minicoal>*12, [<cm:crimson_coal>]);

// Make Translocators the first form of item/fluid transport
recipes.remove(<translocators:translocator_part>);
recipes.remove(<translocators:translocator_part:1>);
recipes.addShapeless(<translocators:translocator_part>*2, [<ore:circuitBasic>, <minecraft:redstone>|<projectred-core:resource_item:105>, <contenttweaker:chip10>]);
recipes.addShapeless(<translocators:translocator_part:1>*2, [<ore:circuitBasic>, <minecraft:dye:4>, <contenttweaker:chip10>]);

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
recipes.addShapeless(<minecraft:water_bucket>, [<minecraft:snow>, <minecraft:snow>, <minecraft:snow>, <minecraft:snow>, <minecraft:bucket>]);
recipes.addShapeless(<ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}), [<minecraft:snow>, <minecraft:snow>, <minecraft:snow>, <minecraft:snow>, <ceramics:clay_bucket>]);

// Swap mushroom types
recipes.addShapeless(<minecraft:red_mushroom>, [<ore:listAllseed>, <minecraft:brown_mushroom>]);
recipes.addShapeless(<minecraft:brown_mushroom>, [<ore:listAllseed>, <minecraft:red_mushroom>]);

// Change Fire Charge recipe
recipes.remove(<minecraft:fire_charge>);
recipes.addShapeless(<minecraft:fire_charge>*3, [<minecraft:coal:1>|<minecraft:coal>, <minecraft:gunpowder>, <minecraft:flint_and_steel:*>.transformDamage(3)|<natura:flint_and_blaze:*>.transformDamage(3)|<vulcanite:flint_and_vulcanite:*>.transformDamage(3)]);

// Convert Webs to String
recipes.addShapeless(<minecraft:string>*2, [<minecraft:web>]);

// Recycle Chain Plates into Nuggets
furnace.addRecipe(<minecraft:iron_nugget>*2, <byg:chainplating>, 0);

// Convert Red Coal to Mini Coal
recipes.addShapeless(<minicoal:minicoal>*9, [<extrautils2:ingredients:4>]);

// Chainmail re-doing thing because the defaults are shapeless for some reason
recipes.remove(<byg:chainplating>);
recipes.remove(<minecraft:chainmail_boots>);
recipes.remove(<minecraft:chainmail_helmet>);
recipes.addShapeless(<byg:chainplating>*2, [<minecraft:iron_nugget>, <minecraft:iron_nugget>, <minecraft:iron_nugget>, <minecraft:iron_nugget>]);
recipes.addShaped(<minecraft:chainmail_helmet>, [[<byg:chainplating>, <byg:chainplating>, <byg:chainplating>],
                                    	 			[<byg:chainplating>, null, <byg:chainplating>],
                                      				[null, null, null]]);

recipes.addShaped(<minecraft:chainmail_boots>, [[null, null, null],
					[<byg:chainplating>, null, <byg:chainplating>],
					[<byg:chainplating>, null, <byg:chainplating>]]);

// Alt recipe for Universal Tools
recipes.addShapeless(<multitools:universaltool_iron>, [<multitools:paxel_iron>, <minecraft:iron_hoe>, <ore:stickStone>]);
recipes.addShapeless(<multitools:universaltool_gold>, [<multitools:paxel_gold>, <minecraft:golden_hoe>, <ore:stickStone>]);
recipes.addShapeless(<multitools:universaltool_diamond>, [<multitools:paxel_diamond>, <minecraft:diamond_hoe>, <ore:stickStone>]);

// Fix how (Dried) Flesh conflicts with Cooked
recipes.remove(<xlfoodmod:flesh>);
recipes.remove(<byg:cookedflesh>);

recipes.addShapeless(<xlfoodmod:flesh>, [<minecraft:rotten_flesh>, <xlfoodmod:salt>|<alchemistry:mineral_salt>]);
furnace.addRecipe(<byg:cookedflesh>, <xlfoodmod:flesh>, 0.25);
furnace.addRecipe(<xlfoodmod:flesh>, <minecraft:rotten_flesh>, 0.10);

// Prismarine Shards -> Crystals
recipes.addShapeless(<minecraft:prismarine_shard>, [<minecraft:prismarine_crystals>, <minecraft:prismarine_crystals>, <minecraft:prismarine_crystals>, <minecraft:prismarine_crystals>]);

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
recipes.addShapedMirrored(<dse:components:10>*2, [[null, <projectred-core:resource_item:105>, <minecraft:iron_ingot>],
                                     				      [<minecraft:gold_ingot>, <ore:dyeGreen>, <minecraft:gold_ingot>],
                                 				      [<minecraft:iron_ingot>, <projectred-core:resource_item:105>, null]]);

recipes.addShapedMirrored(<dse:components:10>, [[null, <minecraft:redstone>|<projectred-core:resource_item:105>, <minecraft:iron_ingot>],
                                     				   [<xlfoodmod:salt>|<alchemistry:mineral_salt>, <contenttweaker:melon_circuit>, <xlfoodmod:salt>|<alchemistry:mineral_salt>],
                                 				   [<minecraft:iron_ingot>, <minecraft:redstone>|<projectred-core:resource_item:105>, null]]);

// Allow the player to use Electrotine for Advanced and Elite circuits
recipes.remove(<dse:components:11>);
recipes.remove(<dse:components:12>);
recipes.addShapedMirrored(<dse:components:11>, [[null, <minecraft:redstone>|<projectred-core:resource_item:105>, <minecraft:gold_ingot>],
                                     				   [<dse:components:10>, <ore:dyeRed>, <dse:components:10>],
                                 				   [<minecraft:gold_ingot>, <minecraft:redstone>|<projectred-core:resource_item:105>, null]]);

recipes.addShapedMirrored(<dse:components:12>, [[null, <projectred-core:resource_item:105>, <minecraft:diamond>],
                                     				   [<dse:components:11>, <ore:dyeBlue>, <dse:components:11>],
                                 				   [<minecraft:diamond>, <projectred-core:resource_item:105>, null]]);

// Clathrate uses
recipes.addShapeless(<minecraft:redstone>, [<thermalfoundation:material:893>, <thermalfoundation:material:893>]);

// Craftable string
recipes.addShapeless(<minecraft:string>, [<ore:wool>, <ore:stickWood>]);
recipes.addShapeless(<minecraft:string>*2, [<ore:wool>, <minecraft:flint>]);

// Stone Storage recipe change
recipes.remove(<multistorage:stone_storage>);
recipes.addShaped(<multistorage:stone_storage>, [[<ore:stone>, <ore:stickStone>, <ore:stone>],
                                			 	[<ore:stickStone>, <extrautils2:compressedcobblestone:1>, <ore:stickStone>],
                                 			                    [<ore:stone>, <ore:stickStone>, <ore:stone>]]);
// Repair Flint & Steel
recipes.addShapeless(<minecraft:flint_and_steel>, [<minecraft:flint_and_steel:*>, <minecraft:flint>]);

// PSD & Miniaturization Field
recipes.remove(<compactmachines3:psd>);
recipes.addShaped(<compactmachines3:psd>, [[null, <ore:slimeball>, null],
                                   			            [<ore:bone>, <contenttweaker:melon_circuit>, <ore:bone>],
                                   			            [null, <minecraft:bone_block>, null]]);

recipes.remove(<compactmachines3:fieldprojector>);
recipes.addShaped(<compactmachines3:fieldprojector>, [[null, <contenttweaker:melon_circuit>, null],
                             				           [null, <minecraft:slime>, null],
                                				            [<minecraft:cobblestone>, <compactmachines3:psd>.reuse(), <minecraft:cobblestone>]]);

recipes.addShaped(<compactmachines3:fieldprojector>*4, [[null, <contenttweaker:melon_circuit>, null],
                             				               [null, <minecraft:ender_pearl>, null],
                                				               [<minecraft:iron_ingot>, <compactmachines3:psd>.reuse(), <minecraft:iron_ingot>]]);

print("misc.zs loaded");