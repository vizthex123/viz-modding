# Adds recipes to blocks from Extended Crafting
# Also changes recipes for Extended Crafting's blocks

print("ExtendedCrafting.zs loading...");
/*
mods.extendedcrafting.CombinationCrafting.addRecipe("name", <output>, powerCost, [inputs], powerRate);

first input is the center item

use recipe maker for table & ender crafting recipes
*/

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
    [[<item:lightmanscurrency:coin_iron>, <item:extendedcrafting:basic_component>, <item:lightmanscurrency:coin_iron>],
    [<item:extendedcrafting:black_iron_slate>, <tag:items:forge:workbenches>, <item:extendedcrafting:black_iron_slate>],
    [<item:extendedcrafting:black_iron_slate>, <item:create:zinc_block>, <item:extendedcrafting:black_iron_slate>]]);

craftingTable.addShaped("advanced_table", <item:extendedcrafting:advanced_table>,
    [[<item:lightmanscurrency:coin_gold>, <item:extendedcrafting:advanced_component>, <item:lightmanscurrency:coin_gold>],
    [<item:extendedcrafting:black_iron_slate>, <tag:items:forge:workbenches>, <item:extendedcrafting:black_iron_slate>],
    [<item:extendedcrafting:black_iron_slate>, <item:thermal:bronze_block>, <item:extendedcrafting:black_iron_slate>]]);

craftingTable.addShaped("elite_table", <item:extendedcrafting:elite_table>,
    [[<item:lightmanscurrency:coin_diamond>, <item:extendedcrafting:elite_component>, <item:lightmanscurrency:coin_diamond>],
    [<item:extendedcrafting:black_iron_slate>, <tag:items:forge:workbenches>, <item:extendedcrafting:black_iron_slate>],
    [<item:extendedcrafting:black_iron_slate>, <item:botania:manasteel_block>, <item:extendedcrafting:black_iron_slate>]]);

craftingTable.addShaped("ultimate_table", <item:extendedcrafting:ultimate_table>,
    [[<item:lightmanscurrency:coin_emerald>, <item:extendedcrafting:ultimate_component>, <item:lightmanscurrency:coin_emerald>],
    [<item:extendedcrafting:black_iron_slate>, <tag:items:forge:workbenches>, <item:extendedcrafting:black_iron_slate>],
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
    [<item:extendedcrafting:black_iron_ingot>, <item:lightmanscurrency:coin_emerald>, <item:extendedcrafting:black_iron_ingot>]]);

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

# Repair Long Fall Boots
mods.extendedcrafting.CombinationCrafting.addRecipe("repair_long_fall_boots", <item:longfallboots:longfallboots>, 2500, [<item:longfallboots:longfallboots>.anyDamage(), <item:minecraft:diamond>|<item:minecraft:obsidian>], 25);

mods.extendedcrafting.CombinationCrafting.addRecipe("iron_repair_long_fall_boots", <item:longfallboots:longfallboots>, 3500, [<item:longfallboots:longfallboots>.anyDamage(), <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>], 35);

# Artifical Dragon Egg
mods.extendedcrafting.EnderCrafting.addShaped("artifical_dragon_egg", <item:kubejs:dragon_egg>,
	[[<tag:items:teoe:dragon_scale>, <item:enigmaticlegacy:astral_dust>, <tag:items:teoe:dragon_scale>],
	[<item:enigmaticlegacy:astral_dust>, <item:minecraft:turtle_egg>|<item:minecraft:egg>|<item:food_enhancements:boiled_egg>, <item:enigmaticlegacy:astral_dust>],
	[<tag:items:teoe:dragon_scale>, <item:enigmaticlegacy:astral_dust>, <tag:items:teoe:dragon_scale>]], 120);
	
mods.extendedcrafting.EnderCrafting.addShaped("artifical_dragon_egg_botania", <item:kubejs:dragon_egg>,
	[[<item:enigmaticlegacy:astral_dust>, <item:botania:dragonstone>, <item:enigmaticlegacy:astral_dust>],
	[<item:botania:dragonstone>, <item:minecraft:turtle_egg>|<item:minecraft:egg>|<item:food_enhancements:boiled_egg>, <item:botania:dragonstone>],
	[<item:enigmaticlegacy:astral_dust>, <item:botania:dragonstone>, <item:enigmaticlegacy:astral_dust>]]);



# New Enchanted Golden Apple recipe
# Replaces the one from Apotheosis
craftingTable.remove(<item:minecraft:enchanted_golden_apple>);
mods.extendedcrafting.TableCrafting.addShaped("enchanted_golden_apple", 3, <item:minecraft:enchanted_golden_apple>*8,
	[[<item:lightmanscurrency:coin_gold>, <tag:items:teoe:shard>, <item:tconstruct:rose_gold_ingot>, <item:additionaladditions:gold_ring>, <item:tconstruct:rose_gold_ingot>, <tag:items:teoe:shard>, <item:lightmanscurrency:coin_gold>],
	[<tag:items:teoe:shard>, <item:minecraft:golden_carrot>, <item:minecraft:golden_carrot>, <item:minecraft:golden_carrot>, <item:minecraft:golden_carrot>, <item:minecraft:golden_carrot>, <tag:items:teoe:shard>],
	[<item:tconstruct:rose_gold_ingot>, <item:minecraft:golden_carrot>, <item:minecraft:golden_apple>, <item:createaddition:honey_cake>, <item:minecraft:golden_apple>, <item:minecraft:golden_carrot>, <item:tconstruct:rose_gold_ingot>],
	[<item:additionaladditions:gold_ring>, <item:minecraft:golden_carrot>, <item:createaddition:honey_cake>, <item:reliquary:midas_touchstone>, <item:createaddition:honey_cake>, <item:minecraft:golden_carrot>, <item:additionaladditions:gold_ring>],
	[<item:tconstruct:rose_gold_ingot>, <item:minecraft:golden_carrot>, <item:minecraft:golden_apple>, <item:createaddition:honey_cake>, <item:minecraft:golden_apple>, <item:minecraft:golden_carrot>, <item:tconstruct:rose_gold_ingot>],
	[<tag:items:teoe:shard>, <item:minecraft:golden_carrot>, <item:minecraft:golden_carrot>, <item:minecraft:golden_carrot>, <item:minecraft:golden_carrot>, <item:minecraft:golden_carrot>, <tag:items:teoe:shard>],
	[<item:lightmanscurrency:coin_gold>, <tag:items:teoe:shard>, <item:tconstruct:rose_gold_ingot>, <item:additionaladditions:gold_ring>, <item:tconstruct:rose_gold_ingot>, <tag:items:teoe:shard>, <item:lightmanscurrency:coin_gold>]]);


# Ultimate Ingot recipe
mods.extendedcrafting.TableCrafting.addShaped("ultimate_ingot", 2, <item:extendedcrafting:the_ultimate_ingot>*4,
	[[<item:naturesaura:sky_ingot>, <item:create:brass_ingot>, <item:malum:soul_stained_steel_ingot>|<item:malum:hallowed_gold_ingot>, <item:create:brass_ingot>, <item:naturesaura:sky_ingot>],
	[<item:botania:gaia_ingot>, <item:tconstruct:manyullyn_ingot>|<item:byg:pendorite_ingot>, <item:thermal:enderium_ingot>, <item:tconstruct:manyullyn_ingot>|<item:byg:pendorite_ingot>, <item:botania:gaia_ingot>], 
	[<item:enigmaticlegacy:etherium_ingot>, <item:thermal:enderium_ingot>, <item:twilightforest:carminite>, <item:thermal:enderium_ingot>, <item:enigmaticlegacy:etherium_ingot>],
	[<item:botania:gaia_ingot>, <item:tconstruct:manyullyn_ingot>|<item:byg:pendorite_ingot>, <item:thermal:enderium_ingot>, <item:tconstruct:manyullyn_ingot>|<item:byg:pendorite_ingot>, <item:botania:gaia_ingot>],
	[<item:naturesaura:sky_ingot>, <item:create:brass_ingot>, <item:extendedcrafting:black_iron_ingot>|<item:extendedcrafting:redstone_ingot>|<item:extendedcrafting:ender_ingot>|<item:extendedcrafting:enhanced_ender_ingot>, <item:create:brass_ingot>, <item:naturesaura:sky_ingot>]]);


# Quintessence
mods.extendedcrafting.TableCrafting.addShaped("quintessence", 4, <item:kubejs:quintessence>,
	[[<tag:items:teoe:tape_measure>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:dragon_egg>|<item:kubejs:dragon_egg>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:packagedauto:me_package_component>],
	[<item:minecraft:air>, <item:packingtape:tape>.anyDamage(), <item:minecraft:air>, <item:lightmanscurrency:speed_upgrade_5>, <item:botania:dice>, <item:refinedpipes:ultimate_energy_pipe>, <item:minecraft:air>, <item:rangedpumps:pump>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:ftbquests:book>, <item:quantumquarryplus:filter_upgrade>|<item:quantumquarryplus:pump_upgrade>, <item:apotheosis:ender_library>, <item:tconstruct:plate_chestplate>.anyDamage(), <tag:items:elevatorid:elevators>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:ob_core:witchstone_shard>, <item:byg:therium_lamp>|<item:additionaladditions:amethyst_lamp>|<item:essentials:analog_lamp>, <item:extendedcrafting:crystaltine_ingot>, <item:extendedcrafting:the_ultimate_ingot>, <item:extendedcrafting:crystaltine_ingot>, <item:nourished_nether:soul_quartz_block>, <item:lightmanscurrency:coin_netherite>, <item:minecraft:air>],
	[<item:create:blaze_cake>, <item:naturesaura:end_city_finder>, <item:createaddition:chocolate_cake>|<item:createaddition:honey_cake>, <item:extendedcrafting:the_ultimate_ingot>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:the_ultimate_ingot>, <item:thermal:upgrade_augment_3>, <item:ob_aquamirae:three_bolt_helmet>.anyDamage(), <item:chickenchunks:spot_loader>],
	[<item:minecraft:air>, <item:reliquary:infernal_chalice>, <item:byg:pendorite_block>, <item:extendedcrafting:crystaltine_ingot>, <item:extendedcrafting:the_ultimate_ingot>, <item:extendedcrafting:crystaltine_ingot>, <item:wormhole:portal_stabilizer>, <item:storagedrawers:drawer_key>|<item:storagedrawers:quantify_key>|<item:storagedrawers:shroud_key>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:ironchest:obsidian_chest>, <item:twilightforest:charm_of_keeping_3>|<item:twilightforest:charm_of_life_2>, <item:industrialforegoing:mycelial_reactor>, <item:longfallboots:longfallboots>.anyDamage(), <item:ae2things:disk_drive_64k>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:easypaxellite:netherite_paxel>.anyDamage(), <item:minecraft:air>, <item:minecraft:air>, <item:squarry:powered_quarry>, <item:minecraft:air>, <item:minecraft:air>, <item:the_bumblezone:honey_compass>, <item:minecraft:air>],
	[<item:quark:flamerang>.anyDamage(), <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:deepresonance:generator_controller>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:ae2:quantum_ring>]]);

print("ExtendedCrafting.zs loaded");