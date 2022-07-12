# Adds recipes to blocks from Extended Crafting
# Also changes recipes for Extended Crafting's blocks

print("ExtendedCrafting.zs loading...");

# Make Black Iron shapeless
craftingTable.remove(<item:extendedcrafting:black_iron_slate>);
craftingTable.addShapeless("black_iron_slate", <item:extendedcrafting:black_iron_slate>, [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_ingot>]);

# Reduce the cost of tables
craftingTable.remove(<item:extendedcrafting:basic_table>);
craftingTable.remove(<item:extendedcrafting:advanced_table>);
craftingTable.remove(<item:extendedcrafting:elite_table>);
craftingTable.remove(<item:extendedcrafting:ultimate_table>);

craftingTable.remove(<item:extendedcrafting:basic_auto_table>);
craftingTable.remove(<item:extendedcrafting:advanced_auto_table>);
craftingTable.remove(<item:extendedcrafting:elite_auto_table>);
craftingTable.remove(<item:extendedcrafting:ultimate_auto_table>);

// Regular
craftingTable.addShaped("basic_table", <item:extendedcrafting:basic_table>,
    [[<item:lightmanscurrency:coinpile_iron>, <item:extendedcrafting:basic_component>, <item:lightmanscurrency:coinpile_iron>],
    [<item:extendedcrafting:black_iron_slate>, <tag:items:forge:workbenches>, <item:extendedcrafting:black_iron_slate>],
    [<item:extendedcrafting:black_iron_slate>, <item:create:zinc_block>, <item:extendedcrafting:black_iron_slate>]]);

craftingTable.addShaped("advanced_table", <item:extendedcrafting:advanced_table>,
    [[<item:lightmanscurrency:coinpile_gold>, <item:extendedcrafting:advanced_component>, <item:lightmanscurrency:coinpile_gold>],
    [<item:extendedcrafting:black_iron_slate>, <tag:items:forge:workbenches>, <item:extendedcrafting:black_iron_slate>],
    [<item:extendedcrafting:black_iron_slate>, <item:thermal:bronze_block>, <item:extendedcrafting:black_iron_slate>]]);

craftingTable.addShaped("advanced_table_upgrade", <item:extendedcrafting:advanced_table>,
    [[<item:lightmanscurrency:coinpile_gold>, <item:extendedcrafting:black_iron_slate>, <item:lightmanscurrency:coinpile_gold>],
    [<item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:basic_table>, <item:extendedcrafting:black_iron_slate>],
    [<item:extendedcrafting:black_iron_slate>, <item:thermal:bronze_block>, <item:extendedcrafting:black_iron_slate>]]);

craftingTable.addShaped("elite_table", <item:extendedcrafting:elite_table>,
    [[<item:lightmanscurrency:coin_diamond>, <item:extendedcrafting:elite_component>, <item:lightmanscurrency:coin_diamond>],
    [<item:extendedcrafting:black_iron_slate>, <tag:items:forge:workbenches>, <item:extendedcrafting:black_iron_slate>],
    [<item:extendedcrafting:black_iron_slate>, <item:botania:manasteel_block>, <item:extendedcrafting:black_iron_slate>]]);

craftingTable.addShaped("elite_table_upgrade", <item:extendedcrafting:elite_table>,
    [[<item:lightmanscurrency:coin_diamond>, <item:extendedcrafting:black_iron_slate>, <item:lightmanscurrency:coin_diamond>],
    [<item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:advanced_table>, <item:extendedcrafting:black_iron_slate>],
    [<item:extendedcrafting:black_iron_slate>, <item:botania:manasteel_block>, <item:extendedcrafting:black_iron_slate>]]);

craftingTable.addShaped("ultimate_table", <item:extendedcrafting:ultimate_table>,
    [[<item:lightmanscurrency:coinpile_emerald>, <item:extendedcrafting:ultimate_component>, <item:lightmanscurrency:coinpile_emerald>],
    [<item:extendedcrafting:black_iron_slate>, <tag:items:forge:workbenches>, <item:extendedcrafting:black_iron_slate>],
    [<item:extendedcrafting:black_iron_slate>, <item:tconstruct:queens_slime_block>, <item:extendedcrafting:black_iron_slate>]]);

craftingTable.addShaped("ultimate_table_upgrade", <item:extendedcrafting:ultimate_table>,
    [[<item:lightmanscurrency:coinpile_emerald>, <item:extendedcrafting:black_iron_slate>, <item:lightmanscurrency:coinpile_emerald>],
    [<item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:elite_table>, <item:extendedcrafting:black_iron_slate>],
    [<item:extendedcrafting:black_iron_slate>, <item:tconstruct:queens_slime_block>, <item:extendedcrafting:black_iron_slate>]]);

// Auto Tables
craftingTable.addShaped("basic_auto_table", <item:extendedcrafting:basic_auto_table>,
    [[<item:extendedcrafting:black_iron_ingot>, <item:create:brass_ingot>, <item:extendedcrafting:black_iron_ingot>],
    [<item:extendedcrafting:redstone_component>, <item:extendedcrafting:basic_table>, <item:extendedcrafting:redstone_component>],
    [<item:extendedcrafting:black_iron_ingot>, <item:lightmanscurrency:coinblock_iron>, <item:extendedcrafting:black_iron_ingot>]]);

craftingTable.addShaped("advanced_auto_table", <item:extendedcrafting:advanced_auto_table>,
    [[<item:extendedcrafting:black_iron_ingot>, <item:create:brass_ingot>, <item:extendedcrafting:black_iron_ingot>],
    [<item:extendedcrafting:redstone_component>, <item:extendedcrafting:advanced_table>, <item:extendedcrafting:redstone_component>],
    [<item:extendedcrafting:black_iron_ingot>, <item:lightmanscurrency:coinblock_gold>, <item:extendedcrafting:black_iron_ingot>]]);

craftingTable.addShaped("elite_auto_table", <item:extendedcrafting:elite_auto_table>,
    [[<item:extendedcrafting:black_iron_ingot>, <item:create:brass_ingot>, <item:extendedcrafting:black_iron_ingot>],
    [<item:extendedcrafting:redstone_component>, <item:extendedcrafting:elite_table>, <item:extendedcrafting:redstone_component>],
    [<item:extendedcrafting:black_iron_ingot>, <item:lightmanscurrency:coin_diamond>, <item:extendedcrafting:black_iron_ingot>]]);

craftingTable.addShaped("ultimate_auto_table", <item:extendedcrafting:ultimate_auto_table>,
    [[<item:extendedcrafting:black_iron_ingot>, <item:create:brass_ingot>, <item:extendedcrafting:black_iron_ingot>],
    [<item:extendedcrafting:redstone_component>, <item:extendedcrafting:ultimate_table>, <item:extendedcrafting:redstone_component>],
    [<item:extendedcrafting:black_iron_ingot>, <item:lightmanscurrency:coinpile_emerald>, <item:extendedcrafting:black_iron_ingot>]]);

# Crafting Core
craftingTable.remove(<item:extendedcrafting:crafting_core>);
craftingTable.addShaped("crafting_core", <item:extendedcrafting:crafting_core>,
    [[<item:extendedcrafting:black_iron_ingot>, <item:lightmanscurrency:coin_diamond>|<item:rftoolsbase:infused_diamond>, <item:extendedcrafting:black_iron_ingot>],
    [<item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:frame>, <item:extendedcrafting:black_iron_slate>],
    [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_ingot>]]);

# Pedestals
craftingTable.remove(<item:extendedcrafting:pedestal>);
craftingTable.addShaped("cheap_pedestal", <item:extendedcrafting:pedestal>*2,
    [[<item:minecraft:air>, <item:extendedcrafting:black_iron_ingot>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:extendedcrafting:black_iron_ingot>, <item:minecraft:air>],
    [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_ingot>]]);

craftingTable.addShaped("pedestal", <item:extendedcrafting:pedestal>*6,
    [[<item:minecraft:air>, <item:extendedcrafting:black_iron_ingot>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:extendedcrafting:black_iron_ingot>, <item:minecraft:air>],
    [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_block>, <item:extendedcrafting:black_iron_ingot>]]);

# Fuel Canister with Zinc
mods.extendedcrafting.TableCrafting.addShaped("fuel_canister_zinc", 2, <item:fuel_canister:fuel_canister>.withTag({Fuel: 0 as int}).withDamage(1024),
	[[<item:minecraft:air>, <item:create:zinc_ingot>, <item:create:zinc_ingot>, <item:create:zinc_ingot>, <item:create:zinc_ingot>],
	[<item:create:zinc_ingot>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:create:zinc_ingot>],
	[<item:create:zinc_ingot>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:create:zinc_ingot>],
	[<item:create:zinc_ingot>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:create:zinc_ingot>],
	[<item:create:zinc_ingot>, <item:create:zinc_ingot>, <item:create:zinc_ingot>, <item:create:zinc_ingot>, <item:create:zinc_ingot>]]);

# New Enchanted Golden Apple recipe
# Replaces the one from Apotheosis
craftingTable.remove(<item:minecraft:enchanted_golden_apple>);
mods.extendedcrafting.TableCrafting.addShaped("enchanted_golden_apple", 3, <item:minecraft:enchanted_golden_apple>*8,
	[[<item:lightmanscurrency:coin_gold>, <item:geode:wrappist_shard>|<item:minecraft:amethyst_shard>, <item:tconstruct:rose_gold_ingot>, <item:additionaladditions:gold_ring>, <item:tconstruct:rose_gold_ingot>, <item:geode:wrappist_shard>|<item:minecraft:amethyst_shard>, <item:lightmanscurrency:coin_gold>],
	[<item:geode:wrappist_shard>|<item:minecraft:amethyst_shard>, <item:minecraft:golden_carrot>, <item:minecraft:golden_carrot>, <item:minecraft:golden_carrot>, <item:minecraft:golden_carrot>, <item:minecraft:golden_carrot>, <item:geode:wrappist_shard>|<item:minecraft:amethyst_shard>],
	[<item:tconstruct:rose_gold_ingot>, <item:minecraft:golden_carrot>, <item:minecraft:golden_apple>, <item:createaddition:honey_cake>, <item:minecraft:golden_apple>, <item:minecraft:golden_carrot>, <item:tconstruct:rose_gold_ingot>],
	[<item:additionaladditions:gold_ring>, <item:minecraft:golden_carrot>, <item:createaddition:honey_cake>, <item:reliquary:midas_touchstone>, <item:createaddition:honey_cake>, <item:minecraft:golden_carrot>, <item:additionaladditions:gold_ring>],
	[<item:tconstruct:rose_gold_ingot>, <item:minecraft:golden_carrot>, <item:minecraft:golden_apple>, <item:createaddition:honey_cake>, <item:minecraft:golden_apple>, <item:minecraft:golden_carrot>, <item:tconstruct:rose_gold_ingot>],
	[<item:geode:wrappist_shard>|<item:minecraft:amethyst_shard>, <item:minecraft:golden_carrot>, <item:minecraft:golden_carrot>, <item:minecraft:golden_carrot>, <item:minecraft:golden_carrot>, <item:minecraft:golden_carrot>, <item:geode:wrappist_shard>|<item:minecraft:amethyst_shard>],
	[<item:lightmanscurrency:coin_gold>, <item:geode:wrappist_shard>|<item:minecraft:amethyst_shard>, <item:tconstruct:rose_gold_ingot>, <item:additionaladditions:gold_ring>, <item:tconstruct:rose_gold_ingot>, <item:geode:wrappist_shard>|<item:minecraft:amethyst_shard>, <item:lightmanscurrency:coin_gold>]]);


# Ultimate Ingot recipe
mods.extendedcrafting.TableCrafting.addShaped("ultimate_ingot", 2, <item:extendedcrafting:the_ultimate_ingot>*4,
	[[<item:naturesaura:sky_ingot>, <item:create:brass_ingot>, <item:malum:soul_stained_steel_ingot>|<item:malum:hallowed_gold_ingot>, <item:create:brass_ingot>, <item:naturesaura:sky_ingot>],
	[<item:botania:gaia_ingot>, <item:tconstruct:manyullyn_ingot>, <item:thermal:enderium_ingot>, <item:tconstruct:manyullyn_ingot>, <item:botania:gaia_ingot>], 
	[<item:enigmaticlegacy:etherium_ingot>, <item:thermal:enderium_ingot>, <item:twilightforest:carminite>, <item:thermal:enderium_ingot>, <item:enigmaticlegacy:etherium_ingot>],
	[<item:botania:gaia_ingot>, <item:tconstruct:manyullyn_ingot>, <item:thermal:enderium_ingot>, <item:tconstruct:manyullyn_ingot>, <item:botania:gaia_ingot>],
	[<item:naturesaura:sky_ingot>, <item:create:brass_ingot>, <item:extendedcrafting:black_iron_ingot>|<item:extendedcrafting:redstone_ingot>|<item:extendedcrafting:ender_ingot>|<item:extendedcrafting:enhanced_ender_ingot>, <item:create:brass_ingot>, <item:naturesaura:sky_ingot>]]);


# Quintessence
mods.extendedcrafting.TableCrafting.addShaped("quintessence", 4, <item:kubejs:quintessence>,
	[[<item:measurements:tape_measure>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:dragon_egg>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:packagedauto:me_package_component>],
	[<item:minecraft:air>, <item:packingtape:tape>.anyDamage(), <item:minecraft:air>, <item:lightmanscurrency:speed_upgrade_5>, <item:botania:dice>, <item:refinedpipes:ultimate_energy_pipe>, <item:minecraft:air>, <item:rangedpumps:pump>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:ftbquests:book>, <item:quantumquarryplus:filter_upgrade>|<item:quantumquarryplus:pump_upgrade>, <item:apotheosis:ender_library>, <item:tconstruct:plate_chestplate>.anyDamage(), <tag:items:elevatorid:elevators>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:ob_core:witchstone_shard>, <item:byg:therium_lamp>|<item:additionaladditions:amethyst_lamp>|<item:essentials:analog_lamp>, <item:extendedcrafting:crystaltine_ingot>, <item:extendedcrafting:the_ultimate_ingot>, <item:extendedcrafting:crystaltine_ingot>, <item:nourished_nether:soul_quartz_block>, <item:lightmanscurrency:coin_netherite>, <item:minecraft:air>],
	[<item:create:blaze_cake>, <item:naturesaura:end_city_finder>, <item:createaddition:chocolate_cake>|<item:createaddition:honey_cake>, <item:extendedcrafting:the_ultimate_ingot>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:the_ultimate_ingot>, <item:thermal:upgrade_augment_3>, <item:ob_aquamirae:three_bolt_helmet>.anyDamage(), <item:chunkloaders:ultimate_chunk_loader>],
	[<item:minecraft:air>, <item:reliquary:infernal_chalice>, <item:byg:pendorite_block>, <item:extendedcrafting:crystaltine_ingot>, <item:extendedcrafting:the_ultimate_ingot>, <item:extendedcrafting:crystaltine_ingot>, <item:wormhole:portal_stabilizer>, <item:storagedrawers:drawer_key>|<item:storagedrawers:quantify_key>|<item:storagedrawers:shroud_key>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:ironchest:obsidian_chest>, <item:twilightforest:charm_of_keeping_3>|<item:twilightforest:charm_of_life_2>, <item:industrialforegoing:mycelial_reactor>, <item:longfallboots:longfallboots>.anyDamage(), <item:ae2things:disk_drive_64k>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:easypaxellite:netherite_paxel>.anyDamage(), <item:minecraft:air>, <item:minecraft:air>, <item:squarry:powered_quarry>, <item:minecraft:air>, <item:minecraft:air>, <item:the_bumblezone:honey_compass>, <item:minecraft:air>],
	[<item:quark:flamerang>.anyDamage(), <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:deepresonance:generator_controller>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:ae2:quantum_ring>]]);

####################
#		Creative Items
####################

# Creative Flux Coil
mods.extendedcrafting.TableCrafting.addShaped("creative_flux_coil", 4, <item:thermal:rf_coil_creative_augment>*4,
	[[<item:refinedpipes:ultimate_energy_pipe>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:refinedpipes:ultimate_energy_pipe>],
	[<item:minecraft:air>, <item:refinedpipes:ultimate_energy_pipe>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:refinedpipes:ultimate_energy_pipe>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:thermal:machine_efficiency_augment>, <item:thermal:enderium_ingot>, <item:thermal:enderium_ingot>, <item:thermal:enderium_ingot>, <item:thermal:machine_speed_augment>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:extendedcrafting:enhanced_ender_ingot>, <item:thermal:upgrade_augment_3>, <item:thermal:rf_coil_augment>, <item:thermal:upgrade_augment_3>, <item:extendedcrafting:enhanced_ender_ingot>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:thermal:rf_coil_storage_augment>, <item:thermal:energy_cell>, <item:kubejs:quintessence>, <item:thermal:energy_cell>, <item:thermal:rf_coil_xfer_augment>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:extendedcrafting:enhanced_ender_ingot>, <item:thermal:upgrade_augment_3>, <item:thermal:rf_coil_augment>, <item:thermal:upgrade_augment_3>, <item:extendedcrafting:enhanced_ender_ingot>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:thermal:machine_speed_augment>, <item:thermal:enderium_ingot>, <item:thermal:enderium_ingot>, <item:thermal:enderium_ingot>, <item:thermal:machine_efficiency_augment>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:refinedpipes:ultimate_energy_pipe>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:refinedpipes:ultimate_energy_pipe>, <item:minecraft:air>],
	[<item:refinedpipes:ultimate_energy_pipe>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:refinedpipes:ultimate_energy_pipe>]]);
	
# Creative Crate
mods.extendedcrafting.TableCrafting.addShaped("creative_crate", 4, <item:create:creative_crate>*4,
	[[<item:refinedpipes:advanced_item_pipe>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:refinedpipes:advanced_item_pipe>],
	[<item:minecraft:air>, <item:refinedpipes:advanced_item_pipe>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:refinedpipes:advanced_item_pipe>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:refinedpipes:advanced_item_pipe>, <item:ironchest:obsidian_chest>, <item:enderstorage:ender_chest>, <item:ironchest:obsidian_chest>, <item:refinedpipes:advanced_item_pipe>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <tag:items:teoe:magic_dust>, <item:create:item_vault>, <item:create:item_vault>, <item:create:item_vault>, <tag:items:teoe:magic_dust>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:refinedpipes:ultimate_extractor_attachment>, <item:extendedcrafting:enhanced_ender_ingot>, <item:ae2:chest>, <item:kubejs:quintessence>, <item:ae2:chest>, <item:extendedcrafting:enhanced_ender_ingot>, <item:refinedpipes:ultimate_extractor_attachment>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <tag:items:teoe:magic_dust>, <item:create:item_vault>, <item:create:item_vault>, <item:create:item_vault>, <tag:items:teoe:magic_dust>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:refinedpipes:advanced_item_pipe>, <item:ironchest:obsidian_chest>, <item:enderstorage:ender_chest>, <item:ironchest:obsidian_chest>, <item:refinedpipes:advanced_item_pipe>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:refinedpipes:advanced_item_pipe>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:refinedpipes:advanced_item_pipe>, <item:minecraft:air>],
	[<item:refinedpipes:advanced_item_pipe>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:refinedpipes:advanced_item_pipe>]]);

# Creative Blaze Cake
mods.extendedcrafting.TableCrafting.addShaped("creative_blaze_cake", 4, <item:create:creative_blaze_cake>,
	[[<item:twilightforest:experiment_115>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:twilightforest:experiment_115>],
	[<item:minecraft:air>, <item:food_enhancements:creamy_honey_toast>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:food_enhancements:creamy_honey_toast>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:the_bumblezone:honey_crystal_shards>, <item:minecraft:sugar>, <item:minecraft:sugar>, <item:minecraft:sugar>, <item:the_bumblezone:honey_crystal_shards>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:sugar>, <item:create:blaze_cake>, <item:minecraft:cake>|<item:createaddition:chocolate_cake>|<item:createaddition:honey_cake>, <item:create:blaze_cake>, <item:minecraft:sugar>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:extendedcrafting:enhanced_ender_ingot>, <item:minecraft:cake>|<item:createaddition:chocolate_cake>|<item:createaddition:honey_cake>, <item:kubejs:quintessence>, <item:minecraft:cake>|<item:createaddition:chocolate_cake>|<item:createaddition:honey_cake>, <item:extendedcrafting:enhanced_ender_ingot>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:sugar>, <item:create:blaze_cake>, <item:minecraft:cake>|<item:createaddition:chocolate_cake>|<item:createaddition:honey_cake>, <item:create:blaze_cake>, <item:minecraft:sugar>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:the_bumblezone:honey_crystal_shards>, <item:minecraft:sugar>, <item:minecraft:sugar>, <item:minecraft:sugar>, <item:the_bumblezone:honey_crystal_shards>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:food_enhancements:creamy_honey_toast>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:food_enhancements:creamy_honey_toast>, <item:minecraft:air>],
	[<item:twilightforest:experiment_115>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:twilightforest:experiment_115>]]);

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

print("ExtendedCrafting.zs loaded");