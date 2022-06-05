# Change miscellaneous recipes that don't fit into another script

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

BlastFurnaceManager.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);
blastFurnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);

FurnaceManager.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);
furnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);
*/

// Upgrade Wooden Hoppers to a normal one
craftingTable.addShaped("wooden_hopper_upgrade", <item:woodenhopper:wooden_hopper>,
    [[<item:minecraft:iron_ingot>, <tag:items:minecraft:logs>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <tag:items:forge:chests/wooden>, <item:minecraft:iron_ingot>],
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>]]);

// Cheaper Security Terminal
craftingTable.remove(<item:ae2:security_station>);
craftingTable.addShaped("security_station", <item:ae2:security_station>,
    [[<item:minecraft:iron_ingot>, <item:ae2:cell_component_4k>, <item:minecraft:iron_ingot>],
    [<item:ae2:fluix_glass_cable>, <item:minecraft:air>, <item:ae2:fluix_glass_cable>],
    [<item:minecraft:iron_ingot>, <item:ae2:engineering_processor>, <item:minecraft:iron_ingot>]]);

// Upgrade an Energy Acceptor into an ME Controlller
craftingTable.addShaped("acceptor_upgrade", <item:ae2:controller>,
    [[<item:ae2:smooth_sky_stone_block>, <item:ae2:charged_certus_quartz_crystal>, <item:ae2:smooth_sky_stone_block>],
    [<item:ae2:charged_certus_quartz_crystal>, <item:ae2:energy_acceptor>, <item:ae2:charged_certus_quartz_crystal>],
    [<item:ae2:smooth_sky_stone_block>, <item:ae2:charged_certus_quartz_crystal>, <item:ae2:smooth_sky_stone_block>]]);

# Craft basic pipes with Zinc
// Item
craftingTable.addShaped("basic_item_zinc", <item:refinedpipes:basic_item_pipe>*3,
    [[<item:create:zinc_ingot>, <item:create:zinc_ingot>, <item:create:zinc_ingot>],
    [<tag:items:forge:glass>, <tag:items:forge:glass>, <tag:items:forge:glass>],
    [<item:create:zinc_ingot>, <item:create:zinc_ingot>, <item:create:zinc_ingot>]]);

// Fluid
craftingTable.addShaped("basic_fluid_zinc", <item:refinedpipes:basic_fluid_pipe>*3,
    [[<item:create:zinc_ingot>, <item:create:zinc_ingot>, <item:create:zinc_ingot>],
    [<tag:items:forge:slimeballs>, <tag:items:forge:glass>, <tag:items:forge:slimeballs>],
    [<item:create:zinc_ingot>, <item:create:zinc_ingot>, <item:create:zinc_ingot>]]);

// Energy
craftingTable.addShaped("basic_energy_zinc", <item:refinedpipes:basic_energy_pipe>*3,
    [[<item:create:zinc_ingot>, <item:create:zinc_ingot>, <item:create:zinc_ingot>],
    [<tag:items:forge:glass>, <item:minecraft:redstone_block>, <tag:items:forge:glass>],
    [<item:create:zinc_ingot>, <item:create:zinc_ingot>, <item:create:zinc_ingot>]]);

// Extractor
craftingTable.addShaped("basic_extractor_zinc", <item:refinedpipes:basic_extractor_attachment>,
    [[<item:create:zinc_ingot>, <item:create:zinc_ingot>, <item:create:zinc_ingot>],
    [<item:create:zinc_ingot>, <item:create:zinc_ingot>, <item:create:zinc_ingot>],
    [<item:create:zinc_ingot>, <item:minecraft:piston>, <item:create:zinc_ingot>]]);

print("misc.zs loaded");