# Changes recipes for Industrial Foregoing's content

import crafttweaker.api.tag.MCTag;

print("industrial_foregoing.zs loading...");
/*
craftingTable.addShapeless("name", <item:output>, [<item>]);
craftingTable.addShaped("name", <item:output>,
    [[<item>, <item>, <item>],
    [<item>, <item>, <item>],
    [<item>, <item>, <item>]]);
craftingTable.remove(<item>);
craftingTable.removeByName("name");
*/

// Fix the Enchantment Extractor being so expensive for no reason
craftingTable.remove(<item:industrialforegoing:enchantment_extractor>);
craftingTable.addShaped("enchantment_extractor", <item:industrialforegoing:enchantment_extractor>,
    [[<tag:items:forge:plastic>, <item:minecraft:nether_bricks>, <tag:items:forge:plastic>],
    [<item:minecraft:book>, <item:industrialforegoing:machine_frame_simple>, <item:minecraft:book>],
    [<item:minecraft:diamond>, <tag:items:forge:gears/emerald>, <item:minecraft:diamond>]]);



# Change generator recipes to balance out the mycelial RF production vs. the TE equivalent
craftingTable.remove(<item:industrialforegoing:mycelial_furnace>);
craftingTable.addShaped("furnace_generator", <item:industrialforegoing:mycelial_furnace>,
	[[<item:minecraft:coal_block>|<item:thermal:charcoal_block>, <item:minecraft:coal_block>|<item:thermal:charcoal_block>, <item:minecraft:coal_block>|<item:thermal:charcoal_block>],
    [<item:minecraft:coal_block>|<item:thermal:charcoal_block>, <tag:items:teoe:furnace>, <item:minecraft:coal_block>|<item:thermal:charcoal_block>],
    [<item:industrialforegoing:machine_frame_simple>, <item:thermal:rf_coil>, <item:thermal:dynamo_stirling>]]);

craftingTable.addShaped("furnace_generator_coke", <item:industrialforegoing:mycelial_furnace>,
    [[<item:minecraft:air>, <item:minecraft:coal_block>|<item:thermal:charcoal_block>, <item:minecraft:air>],
    [<item:thermal:coal_coke_block>, <tag:items:teoe:furnace>, <item:thermal:coal_coke_block>],
    [<item:minecraft:redstone>, <item:thermal:dynamo_stirling>, <item:minecraft:redstone>]]);


craftingTable.remove(<item:industrialforegoing:mycelial_magma>);
craftingTable.remove(<item:industrialforegoing:mycelial_culinary>);
craftingTable.addShaped("culinary_generator", <item:industrialforegoing:mycelial_culinary>,
    [[<tag:items:forge:crops>, <tag:items:forge:crops>, <tag:items:forge:crops>],
    [<tag:items:forge:crops>, <item:thermal:dynamo_gourmand>, <tag:items:forge:crops>],
    [<item:minecraft:redstone>, <item:industrialforegoing:machine_frame_simple>, <item:minecraft:redstone>]]);

craftingTable.addShaped("magma_generator",<item:industrialforegoing:mycelial_magma>,
    [[<item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot>],
    [<item:minecraft:redstone>, <item:thermal:dynamo_magmatic>, <item:minecraft:redstone>],
    [<tag:items:forge:gears/emerald>, <item:industrialforegoing:machine_frame_simple>, <tag:items:forge:gears/emerald>]]);


# Upgrade Black Hole units
// Common > Pity
<recipetype:create:mechanical_crafting>.addRecipe("common_to_pity", <item:industrialforegoing:pity_black_hole_unit>,
[[<item:industrialforegoing:common_black_hole_unit>, <item:industrialforegoing:machine_frame_pity>, <item:extendedcrafting:ender_ingot>]]);

// Pity > Simple
<recipetype:create:mechanical_crafting>.addRecipe("pity_to_simple", <item:industrialforegoing:simple_black_hole_unit>,
[[<item:industrialforegoing:pity_black_hole_unit>, <item:industrialforegoing:machine_frame_simple>, <item:extendedcrafting:ender_ingot>]]);

// Simple > Advanced
<recipetype:create:mechanical_crafting>.addRecipe("simple_to_advanced", <item:industrialforegoing:advanced_black_hole_unit>,
[[<item:industrialforegoing:simple_black_hole_unit>, <item:industrialforegoing:machine_frame_advanced>, <item:extendedcrafting:ender_ingot>]]);

// Advanced > Supreme
<recipetype:create:mechanical_crafting>.addRecipe("advanced_to_supreme", <item:industrialforegoing:supreme_black_hole_unit>,
[[<item:industrialforegoing:advanced_black_hole_unit>, <item:industrialforegoing:machine_frame_supreme>, <item:extendedcrafting:ender_ingot>]]);

	 # Tanks
// Common > Pity
<recipetype:create:mechanical_crafting>.addRecipe("common_to_pity_tank", <item:industrialforegoing:pity_black_hole_tank>,
[[<item:industrialforegoing:common_black_hole_tank>, <item:industrialforegoing:machine_frame_pity>, <item:minecraft:bucket>, <item:extendedcrafting:ender_ingot>]]);

// Pity > Simple
<recipetype:create:mechanical_crafting>.addRecipe("pity_to_simple_tank", <item:industrialforegoing:simple_black_hole_tank>,
[[<item:industrialforegoing:pity_black_hole_tank>, <item:industrialforegoing:machine_frame_simple>, <item:minecraft:bucket>, <item:extendedcrafting:ender_ingot>]]);

// Simple > Advanced
<recipetype:create:mechanical_crafting>.addRecipe("simple_to_advanced_tank", <item:industrialforegoing:advanced_black_hole_tank>,
[[<item:industrialforegoing:simple_black_hole_tank>, <item:industrialforegoing:machine_frame_advanced>, <item:minecraft:bucket>, <item:extendedcrafting:ender_ingot>]]);

// Advanced > Supreme
<recipetype:create:mechanical_crafting>.addRecipe("advanced_to_supreme_tank", <item:industrialforegoing:supreme_black_hole_tank>,
[[<item:industrialforegoing:advanced_black_hole_tank>, <item:industrialforegoing:machine_frame_supreme>, <item:minecraft:bucket>, <item:extendedcrafting:ender_ingot>]]);


print("industrial_foregoing.zs loaded");