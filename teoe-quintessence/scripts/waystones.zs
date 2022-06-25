# Changes recipes for items from the Waystones mod

import crafttweaker.api.tag.MCTag;

print("waystones.zs loading...");
/*
craftingTable.addShapeless("name", <item:output>, [<item>]);
craftingTable.addShaped("name", <item:output>,
    [[<item>, <item>, <item>],
    [<item>, <item>, <item>],
    [<item>, <item>, <item>]]);
craftingTable.remove(<item>);
craftingTable.removeByName("name");

For Extended Crafting, use the recipe maker
*/

# New Waystone recipes
craftingTable.remove(<item:waystones:waystone>);
craftingTable.removeByName("waystones:mossy_waystone");
craftingTable.remove(<item:waystones:sandy_waystone>);
craftingTable.removeByName("waystones:sharestone");

mods.extendedcrafting.TableCrafting.addShaped("waystone", 1, <item:waystones:waystone>,
	[[<item:minecraft:air>, <item:minecraft:stone_bricks>|<item:minecraft:chiseled_stone_bricks>, <item:minecraft:air>], 
	[<item:minecraft:stone_bricks>|<item:minecraft:chiseled_stone_bricks>, <item:waystones:warp_stone>, <item:minecraft:stone_bricks>|<item:minecraft:chiseled_stone_bricks>], 
	[<item:minecraft:obsidian>|<item:minecraft:crying_obsidian>, <item:minecraft:obsidian>|<item:minecraft:crying_obsidian>, <item:minecraft:obsidian>|<item:minecraft:crying_obsidian>]]);

mods.extendedcrafting.TableCrafting.addShaped("mossy_waystone", 1, <item:waystones:mossy_waystone>,
	[[<item:minecraft:air>, <item:minecraft:mossy_stone_bricks>, <item:minecraft:air>], 
	[<item:minecraft:mossy_stone_bricks>, <item:waystones:warp_stone>, <item:minecraft:mossy_stone_bricks>], 
	[<item:minecraft:obsidian>|<item:minecraft:crying_obsidian>, <item:minecraft:obsidian>|<item:minecraft:crying_obsidian>, <item:minecraft:obsidian>|<item:minecraft:crying_obsidian>]]);

mods.extendedcrafting.TableCrafting.addShaped("sandy_waystone", 1, <item:waystones:sandy_waystone>,
	[[<item:minecraft:air>, <item:minecraft:chiseled_sandstone>, <item:minecraft:air>], 
	[<item:minecraft:chiseled_sandstone>, <item:waystones:warp_stone>, <item:minecraft:chiseled_sandstone>], 
	[<item:minecraft:obsidian>|<item:minecraft:crying_obsidian>, <item:minecraft:obsidian>|<item:minecraft:crying_obsidian>, <item:minecraft:obsidian>|<item:minecraft:crying_obsidian>]]);

mods.extendedcrafting.TableCrafting.addShaped("sharestone", 1, <item:waystones:sharestone>,
	[[<item:minecraft:stone_bricks>|<item:minecraft:chiseled_stone_bricks>, <item:minecraft:air>, <item:minecraft:stone_bricks>|<item:minecraft:chiseled_stone_bricks>], 
	[<item:minecraft:stone_bricks>|<item:minecraft:chiseled_stone_bricks>, <item:waystones:warp_stone>, <item:minecraft:stone_bricks>|<item:minecraft:chiseled_stone_bricks>], 
	[<item:minecraft:obsidian>, <item:minecraft:obsidian>, <item:minecraft:obsidian>]]);

# New Portalstone recipe
# Same as before, but requires a Basic Table
craftingTable.remove(<item:waystones:portstone>);
mods.extendedcrafting.TableCrafting.addShaped("portstone", 1, <item:waystones:portstone>,
	[[<item:minecraft:air>, <item:minecraft:stone_bricks>|<item:minecraft:chiseled_stone_bricks>, <item:minecraft:air>], 
	[<item:minecraft:stone_bricks>|<item:minecraft:chiseled_stone_bricks>, <item:waystones:warp_stone>, <item:minecraft:stone_bricks>|<item:minecraft:chiseled_stone_bricks>], 
	[<item:minecraft:polished_andesite>, <item:minecraft:polished_andesite>, <item:minecraft:polished_andesite>]]);
	
# New Warp Plate recipe
craftingTable.remove(<item:waystones:warp_plate>);
mods.extendedcrafting.TableCrafting.addShaped("warp_plate", 1, <item:waystones:warp_plate>,
	[[<item:minecraft:stone_bricks>|<item:minecraft:chiseled_stone_bricks>, <item:waystones:warp_dust>, <item:minecraft:stone_bricks>|<item:minecraft:chiseled_stone_bricks>], 
	[<item:waystones:warp_dust>, <item:waystones:bound_scroll>, <item:waystones:warp_dust>], 
	[<item:minecraft:stone_bricks>|<item:minecraft:chiseled_stone_bricks>, <item:waystones:warp_dust>, <item:minecraft:stone_bricks>|<item:minecraft:chiseled_stone_bricks>]]);

# New Warp Stone recipe
craftingTable.remove(<item:waystones:warp_stone>);
mods.extendedcrafting.TableCrafting.addShaped("warp_stone", 1, <item:waystones:warp_stone>,
	[[<item:waystones:warp_dust>, <item:minecraft:ender_pearl>, <item:waystones:warp_dust>], 
	[<item:minecraft:ender_pearl>, <item:twilightforest:carminite>|<item:minecraft:emerald>|<item:botania:dragonstone>|<item:rftoolsbase:infused_diamond>, <item:minecraft:ender_pearl>], 
	[<item:waystones:warp_dust>, <item:minecraft:ender_pearl>, <item:waystones:warp_dust>]]);

# New Warp Dust recipes
# Adds tag support, lets it use ender pearl dust, and has alternate recipes
craftingTable.remove(<item:waystones:warp_dust>);
craftingTable.addShapeless("warp_dust", <item:waystones:warp_dust>*4, [<item:minecraft:ender_pearl>, <tag:items:forge:dyes/purple>]);
mods.extendedcrafting.TableCrafting.addShapeless("warp_dust_mana", 1, <item:waystones:warp_dust>*6, [<item:botania:mana_pearl>, <tag:items:forge:dyes/purple>]);
mods.extendedcrafting.TableCrafting.addShapeless("warp_dust_pixie", 1, <item:waystones:warp_dust>*8, [<item:botania:pixie_dust>, <tag:items:forge:dyes/purple>]);
mods.extendedcrafting.TableCrafting.addShapeless("warp_dust_infused", 1, <item:waystones:warp_dust>*12, [<item:rftoolsbase:infused_enderpearl>, <tag:items:forge:dyes/purple>]);

craftingTable.addShapeless("warp_double_dust", <item:waystones:warp_dust>, [<tag:items:forge:dusts/ender_pearl>, <tag:items:forge:dyes/purple>]);

# Make Scrolls require Warp Dust
// Same recipes otherwise
craftingTable.remove(<item:waystones:return_scroll>);
craftingTable.remove(<item:waystones:bound_scroll>);
craftingTable.remove(<item:waystones:warp_scroll>);

craftingTable.addShaped("return_scroll", <item:waystones:return_scroll>*3,
    [[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:gold_nugget>, <item:waystones:warp_dust>, <item:minecraft:gold_nugget>],
    [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>]]);
	
craftingTable.addShaped("bound_scroll", <item:waystones:bound_scroll>*3,
    [[<item:waystones:warp_dust>, <item:waystones:warp_dust>, <item:waystones:warp_dust>],
    [<item:minecraft:gold_nugget>, <item:minecraft:ender_pearl>, <item:minecraft:gold_nugget>],
    [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>]]);

craftingTable.addShaped("warp_scroll", <item:waystones:warp_scroll>*3,
    [[<item:minecraft:gold_nugget>, <item:waystones:warp_dust>, <item:minecraft:gold_nugget>],
    [<item:minecraft:gold_nugget>, <item:minecraft:ender_pearl>, <item:minecraft:gold_nugget>],
    [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>]]);

mods.extendedcrafting.TableCrafting.addShaped("warp_scroll_stone", 1, <item:waystones:warp_scroll>*16,
    [[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:gold_nugget>, <item:waystones:warp_stone>, <item:minecraft:gold_nugget>],
    [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>]]);

print("waystones.zs loaded");