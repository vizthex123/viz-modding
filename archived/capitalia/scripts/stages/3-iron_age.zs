/*
mods.ItemStages.addItemStage("stage_name", <item>);
mods.ItemStages.addItemStage("stage_name", <OreDictID>);

mods.recipestages.Recipes.setRecipeStage("stage_name", <recipe-or-item_name>);

mods.ItemStages.stageModItems("stage_name", "ModID");

mods.ItemStages.setUnfamiliarName("Name", <item>);
*/

print("iron_age.zs loading...");

# Iron Age
mods.ItemStages.addItemStage("iron_age", <forestry:fabricator>);
mods.ItemStages.addItemStage("iron_age", <forestry:trade_station>);

mods.ItemStages.addItemStage("iron_age", <extendedcrafting:table_basic>);

mods.ItemStages.addItemStage("iron_age", <magneticraft:light_plates>);
mods.ItemStages.addItemStage("iron_age", <magneticraft:heavy_plates>);
mods.ItemStages.addItemStage("iron_age", <thermalfoundation:material:32>);

mods.ItemStages.addItemStage("iron_age", <extendedcrafting:table_advanced>);

mods.ItemStages.addItemStage("iron_age", <minecraft:repeater>);
mods.ItemStages.addItemStage("iron_age", <minecraft:comparator>);

mods.ItemStages.addItemStage("iron_age", <projectred-core:resource_item:103>);
mods.ItemStages.addItemStage("iron_age", <projectred-core:resource_item:104>);

mods.ItemStages.addItemStage("iron_age", <projectred-core:resource_item:251>);
mods.ItemStages.addItemStage("iron_age", <projectred-core:resource_item:252>);


mods.ItemStages.addItemStage("iron_age", <minecraft:shears>);

mods.ItemStages.addItemStage("iron_age", <ssc:hardened_crate>);

mods.ItemStages.addItemStage("iron_age", <jecalculation:item_calculator>);

mods.ItemStages.addItemStage("iron_age", <multistorage:vault:*>);

mods.ItemStages.addItemStage("iron_age", <mekanismgenerators:generator>);

mods.ItemStages.addItemStage("iron_age", <extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}));

mods.ItemStages.addItemStage("iron_age", <adminshop:seller>);

mods.ItemStages.addItemStage("iron_age", <progressiveautomation:miner_iron>);
mods.ItemStages.addItemStage("iron_age", <progressiveautomation:miner_diamond>);

mods.ItemStages.addItemStage("iron_age", <techguns:basicmachine:1>);

mods.ItemStages.addItemStage("iron_age", <techguns:basicmachine:2>);

mods.ItemStages.addItemStage("iron_age", <minecraft:piston>);
mods.ItemStages.addItemStage("iron_age", <minecraft:sticky_piston>);
mods.ItemStages.addItemStage("iron_age", <foundry:componentblock>);
mods.ItemStages.addItemStage("iron_age", <foundry:machine:8>);
mods.ItemStages.addItemStage("iron_age", <foundry:machine:9>);
mods.ItemStages.addItemStage("iron_age", <minecraft:cauldron>);
mods.ItemStages.addItemStage("iron_age", <adminshop:buyer>);
mods.ItemStages.addItemStage("iron_age", <adminshop:atm>);

mods.ItemStages.addItemStage("iron_age", <logisticalautomation:leather_belt_set>);
mods.ItemStages.addItemStage("iron_age", <logisticalautomation:roller_set>);
mods.ItemStages.addItemStage("iron_age", <logisticalautomation:iron_stick>);
mods.ItemStages.addItemStage("iron_age", <logisticalautomation:iron_motor_set>);
mods.ItemStages.addItemStage("iron_age", <logisticalautomation:gold_motor_set>);
mods.ItemStages.addItemStage("iron_age", <logisticalautomation:diamond_motor_set>);

mods.ItemStages.addItemStage("iron_age", <thermalexpansion:cache>);
mods.ItemStages.addItemStage("iron_age", <thermalexpansion:tank>);

mods.ItemStages.addItemStage("iron_age", <minecraft:bucket>);
mods.ItemStages.addItemStage("iron_age", <minecraft:hopper>);
mods.ItemStages.addItemStage("iron_age", <faufil:hopperfilter>);
mods.ItemStages.addItemStage("iron_age", <faufil:hopperpipe>);
mods.ItemStages.addItemStage("iron_age", <speedyhoppers:speedyhopper_mk1>);

mods.ItemStages.addItemStage("iron_age", <magneticraft:iron_hammer>);
mods.ItemStages.addItemStage("iron_age", <minecraft:iron_nugget>);
mods.ItemStages.addItemStage("iron_age", <minecraft:iron_ingot>);
mods.ItemStages.addItemStage("iron_age", <minecraft:iron_block>);
mods.ItemStages.addItemStage("iron_age", <minecraft:iron_bars>);
mods.ItemStages.addItemStage("iron_age", <minecraft:iron_trapdoor>);
mods.ItemStages.addItemStage("iron_age", <minecraft:iron_door>);

mods.ItemStages.addItemStage("iron_age", <minecraft:iron_sword>);
mods.ItemStages.addItemStage("iron_age", <minecraft:iron_pickaxe>);
mods.ItemStages.addItemStage("iron_age", <minecraft:iron_shovel>);
mods.ItemStages.addItemStage("iron_age", <minecraft:iron_hoe>);
mods.ItemStages.addItemStage("iron_age", <minecraft:iron_axe>);
mods.ItemStages.addItemStage("iron_age", <mekanismtools:ironpaxel>);

mods.ItemStages.addItemStage("iron_age", <minecraft:iron_helmet>);
mods.ItemStages.addItemStage("iron_age", <minecraft:iron_chestplate>);
mods.ItemStages.addItemStage("iron_age", <minecraft:iron_leggings>);
mods.ItemStages.addItemStage("iron_age", <minecraft:iron_boots>);

mods.ItemStages.addItemStage("iron_age", <techguns:itemshared:57>);

// Magneticraft Blocks
mods.ItemStages.addItemStage("iron_age", <magneticraft:multiblock_parts:2>);
mods.ItemStages.addItemStage("iron_age", <magneticraft:multiblock_parts:5>);


// Furnaces
mods.ItemStages.addItemStage("iron_age", <ironfurnaces:iron_furnace_idle>);
mods.ItemStages.addItemStage("iron_age", <ironfurnaces:gold_furnace_idle>);

print("iron_age.zs loaded");