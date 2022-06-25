# Adds recipes to blocks from Extended Crafting
# Really only for end & post-game content

print("ExtendedCrafting.zs loading...");


# New Enchanted Golden Apple recipe
# Replaces the one from Apotheosis
craftingTable.remove(<item:minecraft:enchanted_golden_apple>);
mods.extendedcrafting.TableCrafting.addShaped("enchanted_golden_apple", 3, <item:minecraft:enchanted_golden_apple>,
	[[<item:lightmanscurrency:coin_gold>, <item:minecraft:amethyst_shard>, <item:tconstruct:rose_gold_ingot>, <item:additionaladditions:gold_ring>, <item:tconstruct:rose_gold_ingot>, <item:minecraft:amethyst_shard>, <item:lightmanscurrency:coin_gold>], 
	[<item:minecraft:amethyst_shard>, <item:minecraft:golden_carrot>, <item:minecraft:golden_carrot>, <item:minecraft:golden_carrot>, <item:minecraft:golden_carrot>, <item:minecraft:golden_carrot>, <item:minecraft:amethyst_shard>], 
	[<item:tconstruct:rose_gold_ingot>, <item:minecraft:golden_carrot>, <item:minecraft:golden_apple>, <item:createaddition:honey_cake>, <item:minecraft:golden_apple>, <item:minecraft:golden_carrot>, <item:tconstruct:rose_gold_ingot>], 
	[<item:additionaladditions:gold_ring>, <item:minecraft:golden_carrot>, <item:createaddition:honey_cake>, <item:reliquary:midas_touchstone>, <item:createaddition:honey_cake>, <item:minecraft:golden_carrot>, <item:additionaladditions:gold_ring>], 
	[<item:tconstruct:rose_gold_ingot>, <item:minecraft:golden_carrot>, <item:minecraft:golden_apple>, <item:createaddition:honey_cake>, <item:minecraft:golden_apple>, <item:minecraft:golden_carrot>, <item:tconstruct:rose_gold_ingot>], 
	[<item:minecraft:amethyst_shard>, <item:minecraft:golden_carrot>, <item:minecraft:golden_carrot>, <item:minecraft:golden_carrot>, <item:minecraft:golden_carrot>, <item:minecraft:golden_carrot>, <item:minecraft:amethyst_shard>], 
	[<item:lightmanscurrency:coin_gold>, <item:minecraft:amethyst_shard>, <item:tconstruct:rose_gold_ingot>, <item:additionaladditions:gold_ring>, <item:tconstruct:rose_gold_ingot>, <item:minecraft:amethyst_shard>, <item:lightmanscurrency:coin_gold>]]);


# Ultimate Ingot recipe
mods.extendedcrafting.TableCrafting.addShaped("ultimate_ingot", 0, <item:extendedcrafting:the_ultimate_ingot>,
	[[<item:naturesaura:sky_ingot>, <item:create:brass_ingot>, <item:enigmaticlegacy:etherium_ingot>, <item:create:brass_ingot>, <item:naturesaura:sky_ingot>], 
	[<item:botania:gaia_ingot>, <item:tconstruct:manyullyn_ingot>, <item:thermal:enderium_ingot>, <item:tconstruct:manyullyn_ingot>, <item:botania:gaia_ingot>], 
	[<item:enigmaticlegacy:etherium_ingot>, <item:thermal:enderium_ingot>, <item:twilightforest:carminite>, <item:thermal:enderium_ingot>, <item:enigmaticlegacy:etherium_ingot>], 
	[<item:botania:gaia_ingot>, <item:tconstruct:manyullyn_ingot>, <item:thermal:enderium_ingot>, <item:tconstruct:manyullyn_ingot>, <item:botania:gaia_ingot>], 
	[<item:naturesaura:sky_ingot>, <item:create:brass_ingot>, <item:enigmaticlegacy:etherium_ingot>, <item:create:brass_ingot>, <item:naturesaura:sky_ingot>]]);

# Quintessence
# Bedrock for now until ContentTweaker updates
mods.extendedcrafting.TableCrafting.addShaped("quintessence", 4, <item:minecraft:bedrock>,
	[[<item:measurements:tape_measure>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:dragon_egg>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:packagedauto:me_package_component>], 
	[<item:minecraft:air>, <item:packingtape:tape>, <item:minecraft:air>, <item:lightmanscurrency:speed_upgrade_5>, <item:botania:dice>, <item:refinedpipes:ultimate_energy_pipe>, <item:minecraft:air>, <item:rangedpumps:pump>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:ftbquests:book>, <item:essentials:analog_lamp>, <item:apotheosis:ender_library>, <item:tconstruct:plate_chestplate>, <item:elevatorid:elevator_white>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:ob_core:witchstone_shard>, <item:liquidblocks:liquid_soul_sand_bucket>, <item:extendedcrafting:crystaltine_ingot>, <item:extendedcrafting:the_ultimate_ingot>, <item:extendedcrafting:crystaltine_ingot>, <item:nourished_nether:soul_quartz_block>, <item:lightmanscurrency:coin_netherite>, <item:minecraft:air>], 
	[<item:create:blaze_cake>, <item:naturesaura:end_city_finder>, <item:createaddition:chocolate_cake>, <item:extendedcrafting:the_ultimate_ingot>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:the_ultimate_ingot>, <item:thermal:upgrade_augment_3>, <item:ob_aquamirae:three_bolt_helmet>, <item:chunkloaders:ultimate_chunk_loader>], 
	[<item:minecraft:air>, <item:reliquary:infernal_chalice>, <item:byg:pendorite_block>, <item:extendedcrafting:crystaltine_ingot>, <item:extendedcrafting:the_ultimate_ingot>, <item:extendedcrafting:crystaltine_ingot>, <item:the_bumblezone:honey_compass>, <item:storagedrawers:drawer_key>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:ironchest:obsidian_chest>, <item:twilightforest:charm_of_keeping_3>|<item:twilightforest:charm_of_life_2>, <item:industrialforegoing:mycelial_reactor>, <item:longfallboots:longfallboots>, <item:wormhole:portal_stabilizer>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:easypaxellite:netherite_paxel>, <item:minecraft:air>, <item:minecraft:air>, <item:squarry:powered_quarry>, <item:minecraft:air>, <item:minecraft:air>, <item:ae2things:disk_drive_64k>, <item:minecraft:air>], 
	[<item:quark:flamerang>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:deepresonance:generator_controller>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:ae2:quantum_ring>]]);


print("ExtendedCrafting.zs loaded");