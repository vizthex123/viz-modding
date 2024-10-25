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

// Modded Crafting Table -> Normal One
// Nobody uses tags in their recipes AUGHUHUAGUAH
craftingTable.addShapeless("crafting_table", <item:minecraft:crafting_table>, [<tag:items:forge:workbenches>]);

// Craft Debris Scrap into Netherite Scrap
var scrap_nugget = <tag:items:forge:nuggets/netherite_scrap>;
craftingTable.addShaped("netherite_scrap", <item:minecraft:netherite_scrap>,
    [[scrap_nugget, scrap_nugget, scrap_nugget],
    [scrap_nugget, scrap_nugget, scrap_nugget],
    [scrap_nugget, scrap_nugget, scrap_nugget]]);

// Add tag support to Tesseracts
craftingTable.remove(<item:tesseract:tesseract>);
craftingTable.addShaped("tesseract", <item:tesseract:tesseract>,
    [[<item:thermal:enderium_ingot>, <tag:items:thermal:glass/hardened>, <item:thermal:enderium_ingot>],
    [<tag:items:thermal:glass/hardened>, <item:thermal:machine_frame>, <tag:items:thermal:glass/hardened>],
    [<item:thermal:enderium_ingot>, <tag:items:thermal:glass/hardened>, <item:thermal:enderium_ingot>]]);

// Crops -> Dye
val brown_dye = <item:minecraft:brown_dye>;
val green_dye = <item:minecraft:green_dye>;
val red_dye = <item:minecraft:red_dye>;

craftingTable.addShapeless("glow_berry_dye", <item:minecraft:orange_dye>, [<item:minecraft:glow_berries>]);

craftingTable.addShapeless("corn_dye", <item:minecraft:yellow_dye>, [<item:thermal:corn>]);
craftingTable.addShapeless("onion_dye", brown_dye, [<item:thermal:onion>]);
craftingTable.addShapeless("peanut_dye", brown_dye, [<item:thermal:peanut>]);
craftingTable.addShapeless("pink_dye", <item:minecraft:pink_dye>, [<item:thermal:radish>]);
craftingTable.addShapeless("sadiroot_dye", <item:minecraft:cyan_dye>, [<item:thermal:sadiroot>]);
craftingTable.addShapeless("spinach_dye", green_dye, [<item:thermal:spinach>]);
craftingTable.addShapeless("pepper_dye", green_dye, [<item:thermal:bell_pepper>]);
craftingTable.addShapeless("green_bean_dye", green_dye, [<item:thermal:green_bean>]);
craftingTable.addShapeless("hops_tea_dye", green_dye, [<item:thermal:hops>|<item:thermal:tea>, <item:thermal:hops>|<item:thermal:tea>]);
craftingTable.addShapeless("eggplant_dye", <item:minecraft:purple_dye>, [<item:thermal:eggplant>]);
craftingTable.addShapeless("strawberry_dye", red_dye, [<item:thermal:strawberry>]);
craftingTable.addShapeless("tomato_dye", red_dye, [<item:thermal:tomato>]);
craftingTable.addShapeless("coffee_dye", red_dye, [<item:thermal:coffee>, <item:thermal:coffee>]);


// Nature's Compass
craftingTable.remove(<item:naturescompass:naturescompass>);
craftingTable.addShaped("nature_compass", <item:naturescompass:naturescompass>,
    [[<item:minecraft:air>, <item:naturesaura:gold_powder>|<item:kubejs:compressed_sawdust>, <item:minecraft:air>],
    [<item:naturesaura:gold_powder>|<item:kubejs:compressed_sawdust>, <item:minecraft:compass>, <item:naturesaura:gold_powder>|<item:kubejs:compressed_sawdust>],
    [<item:minecraft:air>, <item:naturesaura:gold_powder>|<item:kubejs:compressed_sawdust>, <item:minecraft:air>]]);

// Reduces the cost of the tier 2 cooking book, and adds tag support
craftingTable.remove(<item:cookingforblockheads:crafting_book>);
craftingTable.addShaped("cooking_2", <item:cookingforblockheads:crafting_book>, 
    [[<item:minecraft:air>, <item:minecraft:paper>, <item:minecraft:air>],
    [<tag:items:forge:workbenches>, <item:cookingforblockheads:recipe_book>, <tag:items:forge:workbenches>],
    [<item:minecraft:air>, <item:minecraft:paper>, <item:minecraft:air>]]);
/*
// New Quarry recipes (fueled & powered) 
craftingTable.remove(<item:squarry:fuel_quarry>);
craftingTable.remove(<item:squarry:powered_quarry>);

craftingTable.addShaped("fueled_quarry", <item:squarry:fuel_quarry>,
	[[<tag:items:minecraft:coals>, <item:create:zinc_ingot>, <tag:items:minecraft:coals>], 
	[<tag:items:teoe:furnace>, <item:thermal:lead_ingot>, <tag:items:teoe:furnace>], 
	[<tag:items:minecraft:coals>, <item:create:zinc_ingot>, <tag:items:minecraft:coals>]]);

mods.extendedcrafting.TableCrafting.addShaped("powered_quarry", 1, <item:squarry:powered_quarry>,
	[[<item:thermal:constantan_ingot>, <item:minecraft:quartz>, <item:thermal:bronze_ingot>], 
	[<item:minecraft:quartz>, <item:squarry:fuel_quarry>, <item:minecraft:quartz>], 
	[<item:thermal:bronze_ingot>, <item:minecraft:quartz>, <item:thermal:constantan_ingot>]]);
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