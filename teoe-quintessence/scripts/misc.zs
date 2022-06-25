# Changes miscellaneous recipes that don't fit into another script

import crafttweaker.api.tag.MCTag;

print("misc.zs loading...");
/*
craftingTable.addShapeless("name", <item:output>, [<item>]);
craftingTable.addShaped("name", <item:output>,
    [[<item>, <item>, <item>],
    [<item>, <item>, <item>],
    [<item>, <item>, <item>]]);
craftingTable.remove(<item>);
craftingTable.removeByName("name");

blastFurnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);

furnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);
*/

// Vanilla ladder recipe
craftingTable.addShaped("ladder_sticks", <item:minecraft:ladder>*3,
    [[<tag:items:forge:rods/wooden>, <item:minecraft:air>, <tag:items:forge:rods/wooden>],
    [<tag:items:forge:rods/wooden>, <tag:items:forge:rods/wooden>, <tag:items:forge:rods/wooden>],
    [<tag:items:forge:rods/wooden>, <item:minecraft:air>, <tag:items:forge:rods/wooden>]]);

// Upgrade Wooden Hoppers to a normal one
craftingTable.addShaped("wooden_hopper_upgrade", <item:minecraft:hopper>,
    [[<item:minecraft:iron_ingot>, <tag:items:minecraft:logs>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:woodenhopper:wooden_hopper>, <item:minecraft:iron_ingot>],
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>]]);

// Fix the Wooden Hopper being to expensive
craftingTable.remove(<item:woodenhopper:wooden_hopper>);
craftingTable.addShaped("wooden_hopper", <item:woodenhopper:wooden_hopper>,
    [[<tag:items:minecraft:planks>, <item:minecraft:air>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <item:minecraft:air>, <tag:items:minecraft:planks>],
    [<item:minecraft:air>, <tag:items:minecraft:planks>, <item:minecraft:air>]]);

// Cheaper Security Terminal
craftingTable.remove(<item:ae2:security_station>);
craftingTable.addShaped("security_station", <item:ae2:security_station>,
    [[<item:minecraft:iron_ingot>, <item:ae2:cell_component_4k>, <item:minecraft:iron_ingot>],
    [<item:ae2:fluix_glass_cable>, <item:minecraft:air>, <item:ae2:fluix_glass_cable>],
    [<item:minecraft:iron_ingot>, <item:ae2:engineering_processor>, <item:minecraft:iron_ingot>]]);

// Upgrade an Energy Acceptor into an ME Controlller
craftingTable.addShaped("acceptor_upgrade", <item:ae2:controller>,
    [[<item:ae2:smooth_sky_stone_block>, <item:ae2:fluix_crystal>, <item:ae2:smooth_sky_stone_block>],
    [<item:ae2:charged_certus_quartz_crystal>, <item:ae2:energy_acceptor>, <item:ae2:charged_certus_quartz_crystal>],
    [<item:ae2:smooth_sky_stone_block>, <item:ae2:fluix_crystal>, <item:ae2:smooth_sky_stone_block>]]);

print("misc.zs loaded");