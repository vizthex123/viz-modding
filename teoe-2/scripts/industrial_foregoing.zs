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

print("industrial_foregoing.zs loaded");