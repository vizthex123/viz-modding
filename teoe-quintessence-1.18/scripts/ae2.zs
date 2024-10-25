# Changes AE2's recipes
print("ae2.zs loading...");
/*
craftingTable.addShapeless("name", <item:output>, [<item>]);
craftingTable.addShaped("name", <item:output>,
    [[<item>, <item>, <item>],
    [<item>, <item>, <item>],
    [<item>, <item>, <item>]]);

mods.extendedcrafting.CombinationCrafting.addRecipe("name", <output>, powerCost, [inputs], powerRate);

first input is the center item
*/

// Interface -> Pattern Provider (and vice versa)
craftingTable.addShapeless("interface_to_provider", <item:ae2:pattern_provider>, [<item:ae2:interface>, <tag:items:forge:workbenches>, <tag:items:forge:workbenches>]);
craftingTable.addShapeless("provider_to_interface", <item:ae2:interface>, [<item:ae2:pattern_provider>, <tag:items:forge:glass>, <tag:items:forge:glass>]);

# Combination Craft Fluix
mods.extendedcrafting.CombinationCrafting.addRecipe("fluix", <item:ae2:fluix_crystal>*4, 16000, [<item:ae2:charged_certus_quartz_crystal>, <item:minecraft:redstone>, <item:malum:blazing_quartz>, <item:malum:blazing_quartz>, <item:malum:processed_soulstone>], 160);

mods.extendedcrafting.CombinationCrafting.addRecipe("soul_fluix", <item:ae2:fluix_crystal>*4, 32000, [<item:ae2:charged_certus_quartz_crystal>, <item:minecraft:redstone>, <item:quark:soul_bead>|<item:nourished_nether:soul_quartz>], 160);

# Combination Craft all the presses
# Each one is 2k Essenarium, a platinum ingot, sky stone block, and 2 of its used material combination crafted into an Iron Block
# RF cost is based on how advanced each processor is
val iron_block = <item:minecraft:iron_block>;
val emerald_coin = <item:lightmanscurrency:coin_emerald>;
val platinum = <item:ob_core:platinum_ingot>;

mods.extendedcrafting.CombinationCrafting.addRecipe("silicon_press", <item:ae2:silicon_press>, 8000, [iron_block, <item:ae2:sky_stone_block>|<item:ae2:smooth_sky_stone_block>, platinum, <tag:items:forge:silicon>, <tag:items:forge:silicon>, emerald_coin, emerald_coin], 80);

mods.extendedcrafting.CombinationCrafting.addRecipe("logic_press", <item:ae2:logic_processor_press>, 16000, [iron_block, <item:ae2:sky_stone_block>|<item:ae2:smooth_sky_stone_block>, platinum, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, emerald_coin, emerald_coin], 160);

mods.extendedcrafting.CombinationCrafting.addRecipe("calculation_press", <item:ae2:calculation_processor_press>, 24000, [iron_block, <item:ae2:sky_stone_block>|<item:ae2:smooth_sky_stone_block>, platinum, <item:ae2:certus_quartz_crystal>, <item:ae2:certus_quartz_crystal>, emerald_coin, emerald_coin], 240);

mods.extendedcrafting.CombinationCrafting.addRecipe("engineering_press", <item:ae2:engineering_processor_press>, 32000, [iron_block, <item:ae2:sky_stone_block>|<item:ae2:smooth_sky_stone_block>, platinum, <item:minecraft:diamond>, <item:minecraft:diamond>, emerald_coin, emerald_coin], 320);


# Expands the list of accepted P2P tunnel items
<tag:items:ae2:p2pattunements/energy>.clear();
<tag:items:ae2:p2pattunements/fluid>.clear();

val p2p_energy = <tag:items:ae2:p2p_attunements/fe_p2p_tunnel>;
val p2p_item = <tag:items:ae2:p2p_attunements/item_p2p_tunnel>;
val p2p_fluid = <tag:items:ae2:p2p_attunements/fluid_p2p_tunnel>;
val p2p_redstone = <tag:items:ae2:p2p_attunements/redstone_p2p_tunnel>;
val p2p_light = <tag:items:ae2:p2p_attunements/light_p2p_tunnel>;

p2p_energy.add(<item:thermal:energy_cell>);
p2p_energy.add(<item:thermal:energy_duct>);

p2p_item.add(<item:refinedpipes:basic_item_pipe>);
p2p_item.add(<item:refinedpipes:improved_item_pipe>);
p2p_item.add(<item:refinedpipes:advanced_item_pipe>);

p2p_item.add(<item:refinedpipes:basic_extractor_attachment>);
p2p_item.add(<item:refinedpipes:improved_extractor_attachment>);
p2p_item.add(<item:refinedpipes:advanced_extractor_attachment>);
p2p_item.add(<item:refinedpipes:elite_extractor_attachment>);
p2p_item.add(<item:refinedpipes:ultimate_extractor_attachment>);

p2p_fluid.add(<item:thermal:fluid_duct>);
p2p_fluid.add(<item:thermal:fluid_duct_windowed>);

p2p_redstone.add(<item:botania:animated_torch>);
p2p_redstone.add(<item:quark:redstone_randomizer>);

p2p_light.add(<item:minecraft:soul_torch>);
p2p_light.add(<item:minecraft:lantern>);
p2p_light.add(<item:minecraft:soul_lantern>);
p2p_light.add(<item:aquatictorches:aquatic_torch>);
p2p_light.add(<item:byg:boric_lantern>);
p2p_light.add(<item:byg:glowstone_lantern>);
p2p_light.add(<item:byg:therium_lantern>);
p2p_light.add(<item:byg:cryptic_lantern>);
p2p_light.add(<item:twilightforest:torchberries>);
p2p_light.add(<item:malum:ether_torch>);
p2p_light.add(<item:malum:iridescent_ether_torch>);


print("ae2.zs loaded");