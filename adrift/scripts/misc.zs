# Changes recipes for miscellanous items
print("misc.zs loading...");
/*
recipes.remove(<>);
recipes.addShaped(<output>,
	[[<null>, <null>, <null>],
	  [<null>, <null>, <null>],
	  [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
furnace.addRecipe(<output>, <input>, XP[F]);
<item>.maxStackSize=NEW;
*/

// Get Water from a Bladderfish
recipes.addShapeless(<minecraft:potion>.withTag({Potion: "minecraft:water"}), [<better_diving:bladderfish>, <minecraft:glass_bottle>]);

// Add a smelting recipe for Stone that uses Moss Stone
furnace.addRecipe(<minecraft:stone>, <minecraft:mossy_cobblestone>, 0.15);

// Adds more variety to torch recipes, allowing mini (char)coal to be used
recipes.remove(<minecraft:torch>);
recipes.addShapedMirrored(<minecraft:torch>*4,
		[[<ore:carbon>, null],
		  [<ore:stickWood>, null]]);
	  
recipes.addShapedMirrored(<minecraft:torch>,
		[[<minicoal:minicoal>|<minicoal:minicharcoal>, null],
		  [<ore:stickWood>, null]]);
	  
// Treasure 2 coins > items
// If done in a Centrifuge, gives more items. Also you can't do Silver ones in a furnace.
furnace.addRecipe(<minecraft:gold_nugget>*5, <treasure2:gold_coin>, 2.0);

// Clownfish > Fish
furnace.addRecipe(<minecraft:cooked_fish>, <minecraft:fish:2>, 0.15);

// Pufferfish > Fish Fillets
recipes.addShapeless(<aquaculture:food:3>, [<minecraft:fish:3>]);

// Gravel > Flint
recipes.addShapeless(<minecraft:flint>, [<ore:gravel>, <ore:artisansHammer>.transformDamage(3)]);
recipes.addShapeless(<minecraft:flint>*2, [<minecraft:gravel>, <minecraft:gravel>]);

// Sticks > Wood
recipes.addShapeless(<minecraft:planks>, [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]);

// Idea Table
recipes.remove(<ftgumod:idea_table>);
recipes.addShapeless(<ftgumod:idea_table>, [<ore:craftingTableWood>, <aquaculture:loot>, <ore:string>, <ore:artisansQuill>.transformDamage(10)]);

// Fisherman's Net balance change
recipes.remove(<waterstrainer:strainer_fisherman>);
recipes.addShaped(<waterstrainer:strainer_fisherman>, 
[[<better_diving:fiber_mesh>, <better_diving:fiber_mesh>, <better_diving:fiber_mesh>],
    [<better_diving:fiber_mesh>, <waterstrainer:net>, <better_diving:fiber_mesh>],
    [<better_diving:fiber_mesh>, <better_diving:fiber_mesh>, <better_diving:fiber_mesh>]]);

// Clear OB tank NBT
recipes.addShapeless(<openblocks:tank>, [<openblocks:tank>]);

// Builder's Bags
recipes.remove(<buildersbag:builders_bag_tier_four>);
recipes.remove(<buildersbag:builders_bag_tier_five>);
recipes.addShaped(<buildersbag:builders_bag_tier_four>, [[null, <ore:workbench>, null],
                                   				               [<ore:leather>, <buildersbag:builders_bag_tier_three>, <ore:leather>],
                                  				               [<pristeel:pristeel_ingot>, <ore:chest>, <pristeel:pristeel_ingot>]]);

recipes.addShaped(<buildersbag:builders_bag_tier_five>, [[null, <aquaculture:loot:1>, null],
                                   				             [<ore:leather>, <buildersbag:builders_bag_tier_four>, <ore:leather>],
                                  				             [<faufil:hopperpipe>, <ore:blockDiamond>, <faufil:hopperpipe>]]);

// Decraft Cobwebs
recipes.addShapeless(<minecraft:string>*2, [<minecraft:web>]);

// Convert Wool to String
recipes.addShapeless(<minecraft:string>*2, [<ore:wool>, <minecraft:flint>, <minecraft:flint>]);

// Turn Sandstone into Glass
// Not as item-efficient, but faster
furnace.addRecipe(<minecraft:glass>*3, <minecraft:sandstone>, 0.3);
furnace.addRecipe(<minecraft:glass>*6, <minecraft:sandstone:2>, 0.6);

// Hopper Pipe alt recipe
recipes.addShapeless(<faufil:hopperpipe>*3, [<minecraft:hopper>]);

// Change recipes for the filter hopper
recipes.remove(<faufil:hopperfilter>);
recipes.addShapeless(<faufil:hopperfilter>, [<minecraft:hopper>, <ore:string>, <ore:string>, <ore:string>]);
recipes.addShapeless(<faufil:hopperfilter>, [<minecraft:hopper>, <minecraft:iron_bars>]);

// Alternate Hopper recipe
recipes.addShaped(<minecraft:hopper>, [[<minecraft:iron_ingot>, <wopper:wopper>, <minecraft:iron_ingot>],
                                      		                    [<minecraft:iron_ingot>, <ore:logWood>, <minecraft:iron_ingot>],
                                    		 	[null, <minecraft:iron_ingot>, null]]);

print("misc.zs loaded");