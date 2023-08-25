# Adds recipes for various Creative Items, using Quintessence as the central item

print("creative_items.zs loading...");

# Creative Energy Cell
mods.extendedcrafting.TableCrafting.addShaped("creative_energy_cell", 4, <item:ae2:creative_energy_cell>,
	[[<item:minecraft:redstone>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:redstone>], 
	[<item:minecraft:air>, <item:minecraft:redstone>, <item:rftoolsbase:dimensionalshard>, <item:rftoolsbase:dimensionalshard>, <item:rftoolsbase:dimensionalshard>, <item:rftoolsbase:dimensionalshard>, <item:rftoolsbase:dimensionalshard>, <item:minecraft:redstone>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:rftoolsbase:dimensionalshard>, <item:thermal:signalum_ingot>, <item:thermal:signalum_ingot>, <item:kubejs:iridium_fuel_cell>, <item:thermal:signalum_ingot>, <item:thermal:signalum_ingot>, <item:rftoolsbase:dimensionalshard>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:rftoolsbase:dimensionalshard>, <item:thermal:signalum_ingot>, <item:ae2:dense_energy_cell>, <item:ae2:dense_energy_cell>, <item:ae2:dense_energy_cell>, <item:thermal:signalum_ingot>, <item:rftoolsbase:dimensionalshard>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:rftoolsbase:dimensionalshard>, <item:kubejs:iridium_fuel_cell>, <item:ae2:dense_energy_cell>, <item:kubejs:quintessence>, <item:ae2:dense_energy_cell>, <item:kubejs:iridium_fuel_cell>, <item:rftoolsbase:dimensionalshard>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:rftoolsbase:dimensionalshard>, <item:thermal:signalum_ingot>, <item:ae2:dense_energy_cell>, <item:ae2:dense_energy_cell>, <item:ae2:dense_energy_cell>, <item:thermal:signalum_ingot>, <item:rftoolsbase:dimensionalshard>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:rftoolsbase:dimensionalshard>, <item:thermal:signalum_ingot>, <item:thermal:signalum_ingot>, <item:kubejs:iridium_fuel_cell>, <item:thermal:signalum_ingot>, <item:thermal:signalum_ingot>, <item:rftoolsbase:dimensionalshard>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:redstone>, <item:rftoolsbase:dimensionalshard>, <item:rftoolsbase:dimensionalshard>, <item:rftoolsbase:dimensionalshard>, <item:rftoolsbase:dimensionalshard>, <item:rftoolsbase:dimensionalshard>, <item:minecraft:redstone>, <item:minecraft:air>], 
	[<item:minecraft:redstone>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:redstone>]]);


# Creative Item Cell
mods.extendedcrafting.TableCrafting.addShaped("creative_item_cell", 4, <item:ae2:creative_item_cell>,
	[[<item:minecraft:copper_ingot>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:copper_ingot>],
	[<item:minecraft:air>, <item:ae2:fluix_pearl>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:ae2:fluix_pearl>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:ae2:item_p2p_tunnel>, <item:minecraft:air>, <item:thermal:steel_ingot>, <item:minecraft:air>, <item:ae2:item_p2p_tunnel>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:ae2:item_storage_cell_256k>, <item:tesseract:tesseract>, <item:ae2:item_storage_cell_256k>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:thermal:steel_ingot>, <item:tesseract:tesseract>, <item:kubejs:quintessence>, <item:tesseract:tesseract>, <item:thermal:steel_ingot>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:ae2:item_storage_cell_256k>, <item:tesseract:tesseract>, <item:ae2:item_storage_cell_256k>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:ae2:item_p2p_tunnel>, <item:minecraft:air>, <item:thermal:steel_ingot>, <item:minecraft:air>, <item:ae2:item_p2p_tunnel>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:ae2:fluix_pearl>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:ae2:fluix_pearl>, <item:minecraft:air>],
	[<item:minecraft:copper_ingot>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:copper_ingot>]]);


# Creative Fluid Cell
mods.extendedcrafting.TableCrafting.addShaped("creative_fluid_cell", 4, <item:ae2:creative_fluid_cell>,
	[[<item:tconstruct:cobalt_ingot>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:tconstruct:cobalt_ingot>],
	[<item:minecraft:air>, <item:ae2:fluix_pearl>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:ae2:fluix_pearl>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:ae2:fluid_p2p_tunnel>, <item:minecraft:air>, <item:botania:manasteel_ingot>, <item:minecraft:air>, <item:ae2:fluid_p2p_tunnel>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:ae2:fluid_storage_cell_256k>, <item:thermal:fluid_cell>, <item:ae2:fluid_storage_cell_256k>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:botania:manasteel_ingot>, <item:thermal:fluid_cell>, <item:kubejs:quintessence>, <item:thermal:fluid_cell>, <item:botania:manasteel_ingot>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:ae2:fluid_storage_cell_256k>, <item:thermal:fluid_cell>, <item:ae2:fluid_storage_cell_256k>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:ae2:fluid_p2p_tunnel>, <item:minecraft:air>, <item:botania:manasteel_ingot>, <item:minecraft:air>, <item:ae2:fluid_p2p_tunnel>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:ae2:fluix_pearl>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:ae2:fluix_pearl>, <item:minecraft:air>],
	[<item:tconstruct:cobalt_ingot>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:tconstruct:cobalt_ingot>]]);


# Creative Mana Tablet
mods.extendedcrafting.TableCrafting.addShaped("creative_mana_tablet", 4, <item:botania:mana_tablet>.withTag({creative: 1 as byte, mana: 500000 as int}),
	[[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:malum:soul_stained_steel_ingot>, <item:malum:soul_stained_steel_ingot>, <item:rftoolsbase:infused_diamond>, <tag:items:teoe:magic_dust>, <tag:items:teoe:magic_dust>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:malum:soul_stained_steel_ingot>, <item:botania:elementium_ingot>, <item:botania:mana_tablet>.withTag({mana: 500000 as int}), <item:botania:terrasteel_ingot>, <tag:items:teoe:magic_dust>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:rftoolsbase:infused_enderpearl>, <item:botania:mana_tablet>.withTag({mana: 500000 as int}), <item:kubejs:quintessence>, <item:botania:mana_tablet>.withTag({mana: 500000 as int}), <item:rftoolsbase:infused_enderpearl>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <tag:items:teoe:magic_dust>, <item:botania:terrasteel_ingot>, <item:botania:mana_tablet>.withTag({mana: 500000 as int}), <item:botania:elementium_ingot>, <item:malum:hallowed_gold_ingot>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <tag:items:teoe:magic_dust>, <tag:items:teoe:magic_dust>, <item:rftoolsbase:infused_diamond>, <item:malum:hallowed_gold_ingot>, <item:malum:hallowed_gold_ingot>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]]);


# Creative Mana Pool
mods.extendedcrafting.TableCrafting.addShaped("creative_mana_pool", 4, <item:botania:creative_pool>,
	[[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:malum:soul_stained_steel_ingot>, <item:malum:soul_stained_steel_ingot>, <item:rftoolsbase:infused_diamond>, <tag:items:teoe:magic_dust>, <tag:items:teoe:magic_dust>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:malum:soul_stained_steel_ingot>, <item:botania:elementium_ingot>, <item:botania:fabulous_pool>, <item:botania:terrasteel_ingot>, <tag:items:teoe:magic_dust>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:rftoolsbase:infused_enderpearl>, <item:botania:fabulous_pool>, <item:kubejs:quintessence>, <item:botania:fabulous_pool>, <item:rftoolsbase:infused_enderpearl>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <tag:items:teoe:magic_dust>, <item:botania:terrasteel_ingot>, <item:botania:fabulous_pool>, <item:botania:elementium_ingot>, <item:malum:hallowed_gold_ingot>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <tag:items:teoe:magic_dust>, <tag:items:teoe:magic_dust>, <item:rftoolsbase:infused_diamond>, <item:malum:hallowed_gold_ingot>, <item:malum:hallowed_gold_ingot>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]]);


# Creative Motor
mods.extendedcrafting.TableCrafting.addShaped("creative_motor", 4, <item:create:creative_motor>,
	[[<item:create:sturdy_sheet>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:create:sturdy_sheet>],
	[<item:minecraft:air>, <item:create:sturdy_sheet>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:create:sturdy_sheet>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:create:brass_ingot>, <item:create:brass_ingot>, <item:create:brass_ingot>, <item:create:brass_ingot>, <item:create:brass_ingot>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:create:brass_ingot>, <item:create:polished_rose_quartz>, <item:createaddition:electric_motor>, <item:create:polished_rose_quartz>, <item:create:brass_ingot>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:create:brass_ingot>, <item:ironjetpacks:capacitor>.withTag({Id: "ironjetpacks:the_ultimate"}), <item:kubejs:quintessence>, <item:ironjetpacks:capacitor>.withTag({Id: "ironjetpacks:the_ultimate"}), <item:create:brass_ingot>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:create:brass_ingot>, <item:create:polished_rose_quartz>, <item:createaddition:electric_motor>, <item:create:polished_rose_quartz>, <item:create:brass_ingot>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:create:brass_ingot>, <item:create:brass_ingot>, <item:create:brass_ingot>, <item:create:brass_ingot>, <item:create:brass_ingot>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:create:sturdy_sheet>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:create:sturdy_sheet>, <item:minecraft:air>],
	[<item:create:sturdy_sheet>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:create:sturdy_sheet>]]);


# Creative Crate
mods.extendedcrafting.TableCrafting.addShaped("creative_crate", 4, <item:create:creative_crate>*4,
	[[<item:refinedpipes:advanced_item_pipe>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:refinedpipes:advanced_item_pipe>],
	[<item:minecraft:air>, <item:refinedpipes:advanced_item_pipe>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:refinedpipes:advanced_item_pipe>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:refinedpipes:advanced_item_pipe>, <item:ironchest:obsidian_chest>, <item:enderstorage:ender_chest>, <item:ironchest:obsidian_chest>, <item:refinedpipes:advanced_item_pipe>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <tag:items:forge:dusts/diamond>, <item:create:item_vault>, <item:create:item_vault>, <item:create:item_vault>, <tag:items:forge:dusts/diamond>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:refinedpipes:ultimate_extractor_attachment>, <item:extendedcrafting:enhanced_ender_ingot>, <item:ae2:chest>, <item:kubejs:quintessence>, <item:ae2:chest>, <item:extendedcrafting:enhanced_ender_ingot>, <item:refinedpipes:ultimate_extractor_attachment>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <tag:items:forge:dusts/diamond>, <item:create:item_vault>, <item:create:item_vault>, <item:create:item_vault>, <tag:items:forge:dusts/diamond>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:refinedpipes:advanced_item_pipe>, <item:ironchest:obsidian_chest>, <item:enderstorage:ender_chest>, <item:ironchest:obsidian_chest>, <item:refinedpipes:advanced_item_pipe>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:refinedpipes:advanced_item_pipe>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:refinedpipes:advanced_item_pipe>, <item:minecraft:air>],
	[<item:refinedpipes:advanced_item_pipe>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:refinedpipes:advanced_item_pipe>]]);

# Creative Fluid Tank
mods.extendedcrafting.TableCrafting.addShaped("creative_fluid_tank", 4, <item:create:creative_fluid_tank>*4,
	[[<tag:items:teoe:fluiduct>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <tag:items:teoe:fluiduct>], 
	[<item:minecraft:air>, <tag:items:teoe:fluiduct>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <tag:items:teoe:fluiduct>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <tag:items:teoe:fluiduct>, <item:industrialforegoing:simple_black_hole_tank>, <item:enderstorage:ender_tank>, <item:industrialforegoing:simple_black_hole_tank>, <tag:items:teoe:fluiduct>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <tag:items:forge:dusts/diamond>, <item:create:fluid_tank>, <item:create:fluid_tank>, <item:create:fluid_tank>, <tag:items:forge:dusts/diamond>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:refinedpipes:ultimate_extractor_attachment>, <item:extendedcrafting:enhanced_ender_ingot>, <item:thermal:fluid_cell>.withTag({BlockEntityTag: {TankInv: [{Amount: 0 as int, FluidName: "minecraft:empty", Capacity: 32000 as int, Tank: 0 as byte}]}}), <item:kubejs:quintessence>, <item:thermal:fluid_cell>.withTag({BlockEntityTag: {TankInv: [{Amount: 0 as int, FluidName: "minecraft:empty", Capacity: 32000 as int, Tank: 0 as byte}]}}), <item:extendedcrafting:enhanced_ender_ingot>, <item:refinedpipes:ultimate_extractor_attachment>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <tag:items:forge:dusts/diamond>, <item:create:fluid_tank>, <item:create:fluid_tank>, <item:create:fluid_tank>, <tag:items:forge:dusts/diamond>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <tag:items:teoe:fluiduct>, <item:industrialforegoing:simple_black_hole_tank>, <item:enderstorage:ender_tank>, <item:industrialforegoing:simple_black_hole_tank>, <tag:items:teoe:fluiduct>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <tag:items:teoe:fluiduct>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <tag:items:teoe:fluiduct>, <item:minecraft:air>], 
	[<tag:items:teoe:fluiduct>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <tag:items:teoe:fluiduct>]]);

# Creative Blaze Cake
mods.extendedcrafting.TableCrafting.addShaped("creative_blaze_cake", 4, <item:create:creative_blaze_cake>,
	[[<item:twilightforest:experiment_115>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:twilightforest:experiment_115>],
	[<item:minecraft:air>, <item:reliquary:glowing_bread>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:reliquary:glowing_bread>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:the_bumblezone:honey_crystal_shards>, <item:minecraft:sugar>, <item:minecraft:sugar>, <item:minecraft:sugar>, <item:the_bumblezone:honey_crystal_shards>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <tag:items:teoe:magic_dust>, <item:create:blaze_cake>, <item:minecraft:cake>|<item:createaddition:chocolate_cake>|<item:createaddition:honey_cake>, <item:create:blaze_cake>, <tag:items:teoe:magic_dust>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:extendedcrafting:enhanced_ender_ingot>, <item:minecraft:cake>|<item:createaddition:chocolate_cake>|<item:createaddition:honey_cake>, <item:kubejs:quintessence>, <item:minecraft:cake>|<item:createaddition:chocolate_cake>|<item:createaddition:honey_cake>, <item:extendedcrafting:enhanced_ender_ingot>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <tag:items:teoe:magic_dust>, <item:create:blaze_cake>, <item:minecraft:cake>|<item:createaddition:chocolate_cake>|<item:createaddition:honey_cake>, <item:create:blaze_cake>, <tag:items:teoe:magic_dust>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:the_bumblezone:honey_crystal_shards>, <item:minecraft:sugar>, <item:minecraft:sugar>, <item:minecraft:sugar>, <item:the_bumblezone:honey_crystal_shards>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:reliquary:glowing_bread>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:reliquary:glowing_bread>, <item:minecraft:air>],
	[<item:twilightforest:experiment_115>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:twilightforest:experiment_115>]]);

# Creative Worldshaper
mods.extendedcrafting.TableCrafting.addShaped("handheld_worldshaper", 4, <item:create:handheld_worldshaper>,
	[[<item:minecraft:grass_block>, <tag:items:forge:stone>, <tag:items:forge:stone>, <tag:items:forge:stone>, <item:minecraft:grass_block>, <tag:items:forge:stone>, <tag:items:forge:stone>, <tag:items:forge:stone>, <item:minecraft:grass_block>], 
	[<tag:items:forge:stone>, <item:minecraft:grass_block>, <tag:items:forge:stone>, <tag:items:forge:stone>, <item:minecraft:grass_block>, <tag:items:forge:stone>, <tag:items:forge:stone>, <item:minecraft:grass_block>, <tag:items:forge:stone>], 
	[<tag:items:forge:stone>, <tag:items:forge:stone>, <item:minecraft:grass_block>, <item:kubejs:diamond_scrap>, <item:minecraft:grass_block>, <item:kubejs:diamond_scrap>, <item:minecraft:grass_block>, <tag:items:forge:stone>, <tag:items:forge:stone>], 
	[<tag:items:forge:stone>, <tag:items:forge:stone>, <item:minecraft:netherite_scrap>, <item:create:creative_crate>, <item:minecraft:copper_block>, <item:create:creative_crate>, <item:minecraft:netherite_scrap>, <tag:items:forge:stone>, <tag:items:forge:stone>], 
	[<item:minecraft:grass_block>, <item:minecraft:grass_block>, <item:minecraft:grass_block>, <item:minecraft:copper_block>, <item:kubejs:quintessence>, <item:minecraft:copper_block>, <item:minecraft:grass_block>, <item:minecraft:grass_block>, <item:minecraft:grass_block>], 
	[<tag:items:forge:stone>, <tag:items:forge:stone>, <item:minecraft:netherite_scrap>, <item:create:creative_crate>, <item:minecraft:copper_block>, <item:create:creative_crate>, <item:minecraft:netherite_scrap>, <tag:items:forge:stone>, <tag:items:forge:stone>], 
	[<tag:items:forge:stone>, <tag:items:forge:stone>, <item:minecraft:grass_block>, <item:kubejs:diamond_scrap>, <item:minecraft:grass_block>, <item:kubejs:diamond_scrap>, <item:minecraft:grass_block>, <tag:items:forge:stone>, <tag:items:forge:stone>], 
	[<tag:items:forge:stone>, <item:minecraft:grass_block>, <tag:items:forge:stone>, <tag:items:forge:stone>, <item:minecraft:grass_block>, <tag:items:forge:stone>, <tag:items:forge:stone>, <item:minecraft:grass_block>, <tag:items:forge:stone>], 
	[<item:minecraft:grass_block>, <tag:items:forge:stone>, <tag:items:forge:stone>, <tag:items:forge:stone>, <item:minecraft:grass_block>, <tag:items:forge:stone>, <tag:items:forge:stone>, <tag:items:forge:stone>, <item:minecraft:grass_block>]]);

var hepatizon = <item:tconstruct:large_plate>.withTag({Material: "tconstruct:hepatizon"});
var manyullyn = <item:tconstruct:large_plate>.withTag({Material: "tconstruct:manyullyn"});
var bloodbone = <item:tconstruct:large_plate>.withTag({Material: "tconstruct:bloodbone"});

# Creative Upgrade
mods.extendedcrafting.TableCrafting.addShaped("creative_upgrade", 4, <item:tconstruct:creative_slot>.withTag({slot: "upgrades"})*2,
	[[<item:extendedcrafting:enhanced_ender_ingot>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:create:experience_nugget>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:extendedcrafting:enhanced_ender_ingot>], 
	[<item:minecraft:air>, <item:extendedcrafting:enhanced_ender_ingot>, <item:minecraft:air>, <item:minecraft:air>, <item:tconstruct:silky_cloth>, <item:minecraft:air>, <item:minecraft:air>, <item:extendedcrafting:enhanced_ender_ingot>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, hepatizon, hepatizon, bloodbone, hepatizon, hepatizon, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, hepatizon, manyullyn, <item:tconstruct:cobalt_reinforcement>, manyullyn, hepatizon, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:create:experience_nugget>, <item:tconstruct:silky_cloth>, bloodbone, <item:tconstruct:slimesteel_reinforcement>, <item:kubejs:quintessence>, <item:tconstruct:slimesteel_reinforcement>, bloodbone, <item:tconstruct:silky_cloth>, <item:create:experience_nugget>], 
	[<item:minecraft:air>, <item:minecraft:air>, hepatizon, manyullyn, <item:tconstruct:cobalt_reinforcement>, manyullyn, hepatizon, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, hepatizon, hepatizon, bloodbone, hepatizon, hepatizon, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:extendedcrafting:enhanced_ender_ingot>, <item:minecraft:air>, <item:minecraft:air>, <item:tconstruct:silky_cloth>, <item:minecraft:air>, <item:minecraft:air>, <item:extendedcrafting:enhanced_ender_ingot>, <item:minecraft:air>], 
	[<item:extendedcrafting:enhanced_ender_ingot>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:create:experience_nugget>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:extendedcrafting:enhanced_ender_ingot>]]);
	
var blazebone = <item:tconstruct:large_plate>.withTag({Material: "tconstruct:blazing_bone"});

# Creative Ability
mods.extendedcrafting.TableCrafting.addShaped("creative_ability", 4, <item:tconstruct:creative_slot>.withTag({slot: "abilities"}),
	[[<item:malum:soul_stained_steel_ingot>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:create:experience_nugget>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:malum:soul_stained_steel_ingot>],
	[<item:minecraft:air>, <item:malum:soul_stained_steel_ingot>, <item:minecraft:air>, <item:minecraft:air>, <item:extendedcrafting:ender_star>, <item:minecraft:air>, <item:minecraft:air>, <item:malum:soul_stained_steel_ingot>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:botania:elementium_ingot>, hepatizon, <item:extendedcrafting:enhanced_ender_ingot>, hepatizon, <item:botania:elementium_ingot>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, hepatizon, blazebone, <item:tconstruct:cobalt_reinforcement>, blazebone, hepatizon, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:create:experience_nugget>, <item:extendedcrafting:ender_star>, <item:extendedcrafting:enhanced_ender_ingot>, <item:tconstruct:bronze_reinforcement>, <item:kubejs:quintessence>, <item:tconstruct:bronze_reinforcement>, <item:extendedcrafting:enhanced_ender_ingot>, <item:extendedcrafting:ender_star>, <item:create:experience_nugget>],
	[<item:minecraft:air>, <item:minecraft:air>, hepatizon, blazebone, <item:tconstruct:cobalt_reinforcement>, blazebone, hepatizon, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:botania:elementium_ingot>, hepatizon, <item:extendedcrafting:enhanced_ender_ingot>, hepatizon, <item:botania:elementium_ingot>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:malum:soul_stained_steel_ingot>, <item:minecraft:air>, <item:minecraft:air>, <item:extendedcrafting:ender_star>, <item:minecraft:air>, <item:minecraft:air>, <item:malum:soul_stained_steel_ingot>, <item:minecraft:air>],
	[<item:malum:soul_stained_steel_ingot>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:create:experience_nugget>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:malum:soul_stained_steel_ingot>]]);

var chain = <item:tconstruct:tool_binding>.withTag({Material: "tconstruct:chain"});
var cobalt = <item:tconstruct:large_plate>.withTag({Material: "tconstruct:cobalt"});
var naga = <item:tconstruct:hammer_head>.withTag({Material: "twilightforest:nagascale"});
var hepahandle = <item:tconstruct:tough_handle>.withTag({Material: "tconstruct:hepatizon"});
var knight = <item:tconstruct:broad_axe_head>.withTag({Material: "twilightforest:knightmetal"});

# Creative Defense
mods.extendedcrafting.TableCrafting.addShaped("creative_defense", 4, <item:tconstruct:creative_slot>.withTag({slot: "defense"}),
	[[hepahandle, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:create:experience_nugget>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, hepahandle],
	[<item:minecraft:air>, <item:extendedcrafting:enhanced_ender_ingot>, <item:minecraft:chain>, <item:minecraft:chain>, naga, <item:minecraft:chain>, <item:minecraft:chain>, <item:extendedcrafting:enhanced_ender_ingot>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:chain>, chain, chain, <item:byg:chain_plating>, chain, chain, <item:minecraft:chain>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:chain>, chain, cobalt, <item:tconstruct:iron_reinforcement>, cobalt, chain, <item:minecraft:chain>, <item:minecraft:air>],
	[<item:create:experience_nugget>, knight, <item:byg:chain_plating>, <item:tconstruct:emerald_reinforcement>, <item:kubejs:quintessence>, <item:tconstruct:emerald_reinforcement>, <item:byg:chain_plating>, knight, <item:create:experience_nugget>],
	[<item:minecraft:air>, <item:minecraft:chain>, chain, cobalt, <item:tconstruct:iron_reinforcement>, cobalt, chain, <item:minecraft:chain>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:chain>, chain, chain, <item:byg:chain_plating>, chain, chain, <item:minecraft:chain>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:extendedcrafting:enhanced_ender_ingot>, <item:minecraft:chain>, <item:minecraft:chain>, naga, <item:minecraft:chain>, <item:minecraft:chain>, <item:extendedcrafting:enhanced_ender_ingot>, <item:minecraft:air>],
	[hepahandle, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:create:experience_nugget>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, hepahandle]]);

# Creative Soul
mods.extendedcrafting.TableCrafting.addShaped("creative_soul", 4, <item:tconstruct:creative_slot>.withTag({slot: "souls" as string}),
	[[<item:minecraft:soul_lantern>, <item:malum:processed_soulstone>, <item:malum:processed_soulstone>, <item:malum:processed_soulstone>, <item:create:experience_nugget>, <item:malum:processed_soulstone>, <item:malum:processed_soulstone>, <item:malum:processed_soulstone>, <item:minecraft:soul_lantern>],
	[<item:malum:processed_soulstone>, <item:nourished_nether:soul_quartz>, <item:nourished_nether:soul_quartz>, <item:nourished_nether:soul_quartz>, <item:nourished_nether:soul_quartz>, <item:nourished_nether:soul_quartz>, <item:nourished_nether:soul_quartz>, <item:nourished_nether:soul_quartz>, <item:malum:processed_soulstone>],
	[<item:malum:processed_soulstone>, <item:nourished_nether:soul_quartz>, <item:malum:soul_stained_steel_ingot>, <item:malum:soul_stained_steel_ingot>, <item:malum:soul_stained_steel_ingot>, <item:malum:soul_stained_steel_ingot>, <item:malum:soul_stained_steel_ingot>, <item:nourished_nether:soul_quartz>, <item:malum:processed_soulstone>],
	[<item:malum:processed_soulstone>, <item:nourished_nether:soul_quartz>, <item:malum:soul_stained_steel_ingot>, <item:extendedcrafting:enhanced_ender_ingot>, <item:tconstruct:seared_reinforcement>, <item:extendedcrafting:enhanced_ender_ingot>, <item:malum:soul_stained_steel_ingot>, <item:nourished_nether:soul_quartz>, <item:malum:processed_soulstone>], 
	[<item:quark:soul_bead>, <item:nourished_nether:soul_quartz>, <item:malum:soul_stained_steel_ingot>, <item:tconstruct:gold_reinforcement>, <item:kubejs:quintessence>, <item:tconstruct:gold_reinforcement>, <item:malum:soul_stained_steel_ingot>, <item:nourished_nether:soul_quartz>, <item:quark:soul_bead>],
	[<item:malum:processed_soulstone>, <item:nourished_nether:soul_quartz>, <item:malum:soul_stained_steel_ingot>, <item:extendedcrafting:enhanced_ender_ingot>, <item:tconstruct:seared_reinforcement>, <item:extendedcrafting:enhanced_ender_ingot>, <item:malum:soul_stained_steel_ingot>, <item:nourished_nether:soul_quartz>, <item:malum:processed_soulstone>],
	[<item:malum:processed_soulstone>, <item:nourished_nether:soul_quartz>, <item:malum:soul_stained_steel_ingot>, <item:malum:soul_stained_steel_ingot>, <item:malum:soul_stained_steel_ingot>, <item:malum:soul_stained_steel_ingot>, <item:malum:soul_stained_steel_ingot>, <item:nourished_nether:soul_quartz>, <item:malum:processed_soulstone>],
	[<item:malum:processed_soulstone>, <item:nourished_nether:soul_quartz>, <item:nourished_nether:soul_quartz>, <item:nourished_nether:soul_quartz>, <item:nourished_nether:soul_quartz>, <item:nourished_nether:soul_quartz>, <item:nourished_nether:soul_quartz>, <item:nourished_nether:soul_quartz>, <item:malum:processed_soulstone>],
	[<item:minecraft:soul_lantern>, <item:malum:processed_soulstone>, <item:malum:processed_soulstone>, <item:malum:processed_soulstone>, <item:create:experience_nugget>, <item:malum:processed_soulstone>, <item:malum:processed_soulstone>, <item:malum:processed_soulstone>, <item:minecraft:soul_lantern>]]);


# Creative RF Coil
mods.extendedcrafting.TableCrafting.addShaped("creative_flux_coil", 4, <item:thermal:rf_coil_creative_augment>*4,
	[[<item:thermal:energy_duct>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:thermal:energy_duct>],
	[<item:minecraft:air>, <item:thermal:energy_duct>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:thermal:energy_duct>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:thermal:machine_efficiency_augment>, <item:thermal:enderium_ingot>, <item:thermal:enderium_ingot>, <item:thermal:enderium_ingot>, <item:thermal:machine_speed_augment>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:kubejs:iridium_fuel_cell>, <item:thermal:upgrade_augment_3>, <item:thermal:rf_coil_augment>, <item:thermal:upgrade_augment_3>, <item:kubejs:iridium_fuel_cell>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:thermal:rf_coil_storage_augment>, <item:thermal:energy_cell>, <item:kubejs:quintessence>, <item:thermal:energy_cell>, <item:thermal:rf_coil_xfer_augment>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:kubejs:iridium_fuel_cell>, <item:thermal:upgrade_augment_3>, <item:thermal:rf_coil_augment>, <item:thermal:upgrade_augment_3>, <item:kubejs:iridium_fuel_cell>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:thermal:machine_speed_augment>, <item:thermal:enderium_ingot>, <item:thermal:enderium_ingot>, <item:thermal:enderium_ingot>, <item:thermal:machine_efficiency_augment>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:thermal:energy_duct>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:thermal:energy_duct>, <item:minecraft:air>],
	[<item:thermal:energy_duct>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:thermal:energy_duct>]]);

print("creative_items.zs loaded");