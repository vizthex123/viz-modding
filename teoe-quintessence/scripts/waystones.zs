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

mods.extendedcrafting.CombinationCrafting.addRecipe(name, <output>, powerCost, [inputs], powerRate);
*/

# New Waystone recipes
craftingTable.remove(<item:waystones:waystone>);
craftingTable.remove(<item:waystones:mossy_waystone>);
craftingTable.remove(<item:waystones:sandy_waystone>);
craftingTable.removeByName("waystones:sharestone");

mods.extendedcrafting.CombinationCrafting.addRecipe("waystone", <item:waystones:waystone>, 10000, [<item:waystones:warp_stone>|<item:waystones:warp_scroll>, <item:minecraft:stone_bricks>|<item:minecraft:chiseled_stone_bricks>, <item:minecraft:stone_bricks>|<item:minecraft:chiseled_stone_bricks>, <item:minecraft:obsidian>|<item:minecraft:crying_obsidian>, <item:minecraft:obsidian>|<item:minecraft:crying_obsidian>], 350);

mods.extendedcrafting.CombinationCrafting.addRecipe("mossy_waystone", <item:waystones:mossy_waystone>, 10000, [<item:waystones:warp_stone>|<item:waystones:warp_scroll>, <item:minecraft:mossy_stone_bricks>, <item:minecraft:mossy_stone_bricks>, <item:minecraft:obsidian>|<item:minecraft:crying_obsidian>, <item:minecraft:obsidian>|<item:minecraft:crying_obsidian>], 350);

mods.extendedcrafting.CombinationCrafting.addRecipe("mossy_waystone_vines", <item:waystones:mossy_waystone>, 1000, [<item:waystones:waystone>, <item:minecraft:vine>|<item:byg:shulkren_vine>, <item:minecraft:vine>|<item:byg:shulkren_vine>, <item:minecraft:vine>|<item:byg:shulkren_vine>], 500);

mods.extendedcrafting.CombinationCrafting.addRecipe("sandy_waystone", <item:waystones:sandy_waystone>, 10000, [<item:waystones:warp_stone>|<item:waystones:warp_scroll>, <item:minecraft:chiseled_sandstone>, <item:minecraft:chiseled_sandstone>, <item:minecraft:obsidian>|<item:minecraft:crying_obsidian>, <item:minecraft:obsidian>|<item:minecraft:crying_obsidian>], 350);

mods.extendedcrafting.CombinationCrafting.addRecipe("sharestone", <item:waystones:sharestone>, 10000, [<item:waystones:warp_stone>|<item:waystones:warp_scroll>, <item:minecraft:stone_bricks>|<item:minecraft:chiseled_stone_bricks>, <item:minecraft:stone_bricks>|<item:minecraft:chiseled_stone_bricks>, <item:minecraft:stone_bricks>|<item:minecraft:chiseled_stone_bricks>, <item:minecraft:stone_bricks>|<item:minecraft:chiseled_stone_bricks>, <item:minecraft:obsidian>|<item:minecraft:crying_obsidian>, <item:minecraft:obsidian>|<item:minecraft:crying_obsidian>], 500);

# New Portalstone recipe
craftingTable.remove(<item:waystones:portstone>);
mods.extendedcrafting.CombinationCrafting.addRecipe("portstone", <item:waystones:portstone>, 8000, [<item:waystones:warp_stone>|<item:waystones:warp_scroll>, <item:minecraft:stone_bricks>|<item:minecraft:chiseled_stone_bricks>, <item:minecraft:stone_bricks>|<item:minecraft:chiseled_stone_bricks>, <item:minecraft:polished_andesite>, <item:minecraft:polished_andesite>], 160);

# New Warp Plate recipe
craftingTable.remove(<item:waystones:warp_plate>);
mods.extendedcrafting.CombinationCrafting.addRecipe("warp_plate", <item:waystones:warp_plate>, 4000, [<item:waystones:warp_stone>|<item:waystones:return_scroll>|<item:waystones:bound_scroll>|<item:waystones:warp_scroll>, <item:minecraft:stone_bricks>|<item:minecraft:chiseled_stone_bricks>, <item:minecraft:stone_bricks>|<item:minecraft:chiseled_stone_bricks>, <item:waystones:warp_dust>, <item:waystones:warp_dust>, <item:waystones:warp_dust>, <item:waystones:warp_dust>], 320);

# New Warp Stone recipe
craftingTable.remove(<item:waystones:warp_stone>);
mods.extendedcrafting.CombinationCrafting.addRecipe("warp_stone", <item:waystones:warp_stone>, 1000, [<item:twilightforest:carminite>|<item:ob_core:witchstone_shard>, <tag:items:forge:dusts/ender_pearl>, <tag:items:forge:dusts/ender_pearl>, <item:waystones:warp_dust>, <item:waystones:warp_dust>, <item:waystones:warp_dust>, <item:waystones:warp_dust>], 10);

# New Warp Dust recipes
# Adds tag support, lets it use ender pearl dust, and has alternate recipes
craftingTable.remove(<item:waystones:warp_dust>);
craftingTable.addShapeless("warp_dust_dust", <item:waystones:warp_dust>, [<item:botania:mana_powder>|<tag:items:forge:dusts/ender_pearl>, <tag:items:forge:dyes/purple>]);
craftingTable.addShapeless("warp_dust", <item:waystones:warp_dust>*4, [<item:minecraft:ender_pearl>, <tag:items:forge:dyes/purple>]);

mods.extendedcrafting.TableCrafting.addShapeless("warp_dust_mana", 1, <item:waystones:warp_dust>*6, [<item:botania:mana_pearl>, <tag:items:forge:dyes/purple>]);
mods.extendedcrafting.TableCrafting.addShapeless("warp_dust_pixie", 1, <item:waystones:warp_dust>*8, [<item:botania:pixie_dust>, <tag:items:forge:dyes/purple>]);
mods.extendedcrafting.TableCrafting.addShapeless("warp_dust_infused", 1, <item:waystones:warp_dust>*16, [<item:rftoolsbase:infused_enderpearl>, <tag:items:forge:dyes/purple>, <tag:items:forge:dyes/purple>]);
mods.extendedcrafting.TableCrafting.addShapeless("warp_dust_magic", 1, <item:waystones:warp_dust>*32, [<item:ob_core:magic_dust>, <tag:items:forge:dyes/purple>]);
mods.extendedcrafting.TableCrafting.addShapeless("warp_dust_astral", 1, <item:waystones:warp_dust>*64, [<item:enigmaticlegacy:astral_dust>, <tag:items:forge:dyes/purple>, <tag:items:forge:dyes/purple>]);

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