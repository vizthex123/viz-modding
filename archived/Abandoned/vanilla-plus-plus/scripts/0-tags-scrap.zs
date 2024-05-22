# Adds meltable tags to various items
# Used in the scrapping recipes I made
#priority 15

import crafttweaker.api.tag.MCTag;

print("0-tags-scrap.zs loading...");
/*
<tag>.add(<item>);
<tag>.remove(<item>);
*/



# Copper
val copper = <tag:items:vanilla:meltable_copper>;

copper.add(<item:minecraft:spyglass>);

copper.add(<item:archeology:copper_brush>);
copper.add(<item:archeology:exposed_copper_brush>);
copper.add(<item:archeology:weathered_copper_brush>);
copper.add(<item:archeology:oxidized_copper_brush>);

copper.add(<item:charm:copper_bars>); // Should give Copper Nuggets, but I don't care enough to add a whole mod just for this
copper.add(<item:copperhopper:copper_hopper>);

copper.add(<item:magehand:copper_spawner_item>);

copper.add(<item:nyfsquiver:copper_quiver>);

copper.add(<item:supplementaries:wrench>);
copper.add(<item:supplementaries:turn_table>);
copper.add(<item:supplementaries:copper_lantern>);
copper.add(<item:supplementaries:cog_block>);
copper.add(<item:supplementaries:altimeter>);


copper.add(<tag:items:friendsandfoes:copper_buttons>);
copper.add(<tag:items:vanilla:lightning_rods>);
copper.add(<tag:items:vanilla:copper_doors>);
copper.add(<tag:items:vanilla:copper_trapdoors>);
copper.add(<tag:items:vanilla:copper_pipes>);
copper.add(<tag:items:vanilla:copper_fittings>);





# Iron
val iron = <tag:items:vanilla:meltable_iron>;

iron.add(<item:minecraft:chainmail_helmet>);
iron.add(<item:minecraft:chainmail_chestplate>);
iron.add(<item:minecraft:chainmail_leggings>);
iron.add(<item:minecraft:chainmail_boots>);
iron.add(<item:leatheredboots:leathered_chainmail_boots>);

iron.add(<item:minecraft:iron_helmet>);
iron.add(<item:minecraft:iron_chestplate>);
iron.add(<item:minecraft:iron_leggings>);
iron.add(<item:minecraft:iron_boots>);
iron.add(<item:leatheredboots:leathered_iron_boots>);

iron.add(<item:minecraft:iron_sword>);
iron.add(<item:minecraft:iron_pickaxe>);
iron.add(<item:minecraft:iron_axe>);
iron.add(<item:minecraft:iron_shovel>);
iron.add(<item:minecraft:iron_hoe>);

iron.add(<item:minecraft:crossbow>);
iron.add(<item:minecraft:shears>);
iron.add(<item:minecraft:shield>);

iron.add(<item:minecraft:activator_rail>);
iron.add(<item:minecraft:blast_furnace>);
iron.add(<item:minecraft:bucket>);
iron.add(<item:minecraft:cauldron>);
iron.add(<item:minecraft:chest_minecart>);
iron.add(<item:minecraft:compass>);
iron.add(<item:minecraft:detector_rail>);
iron.add(<item:minecraft:flint_and_steel>);
iron.add(<item:minecraft:furnace_minecart>);
iron.add(<item:minecraft:heavy_weighted_pressure_plate>);
iron.add(<item:minecraft:hopper>);
iron.add(<item:minecraft:hopper_minecart>);
iron.add(<item:minecraft:iron_bars>);
iron.add(<item:minecraft:iron_door>);
iron.add(<item:minecraft:iron_trapdoor>);
iron.add(<item:minecraft:lantern>);
iron.add(<item:minecraft:minecart>);
iron.add(<item:minecraft:name_tag>);
iron.add(<item:minecraft:piston>);
iron.add(<item:minecraft:soul_lantern>);
iron.add(<item:minecraft:sticky_piston>);
iron.add(<item:minecraft:stonecutter>);
iron.add(<item:minecraft:tnt_minecart>);
iron.add(<item:minecraft:tripwire_hook>);
iron.add(<item:minecraft:smithing_table>);

iron.add(<item:betterend:iron_bulb_lantern>);
iron.add(<item:betterend:iron_chandelier>);
iron.add(<item:betterend:iron_hammer>);

iron.add(<item:charm:redstone_lantern>);
iron.add(<item:charm:woodcutter>);

iron.add(<item:cookingforblockheads:fridge>);
iron.add(<item:cookingforblockheads:heating_unit>);
iron.add(<item:cookingforblockheads:ice_unit>);
iron.add(<item:cookingforblockheads:oven>);
iron.add(<item:cookingforblockheads:preservation_chamber>);
iron.add(<item:cookingforblockheads:sink>);
iron.add(<item:cookingforblockheads:toaster>);

iron.add(<item:ductwork:collector>);
iron.add(<item:ductwork:damper>);
iron.add(<item:ductwork:duct>);

iron.add(<item:farmersdelight:cooking_pot>);
iron.add(<item:farmersdelight:iron_knife>);
iron.add(<item:farmersdelight:skillet>);
iron.add(<item:farmersdelight:stove>);

iron.add(<item:inmis:plated_backpack>);

iron.add(<item:magehand:iron_spawner_item>);

iron.add(<item:pfm:furniture_book>);
iron.add(<item:pfm:iron_chain>);
iron.add(<item:pfm:working_table>);

iron.add(<item:stonegrinder:grinder>);

iron.add(<item:supplementaries:bomb>);
iron.add(<item:supplementaries:bomb_blue>);
iron.add(<item:supplementaries:bomb_spiky>);
iron.add(<item:supplementaries:bubble_blower>);
iron.add(<item:supplementaries:cage>);
iron.add(<item:supplementaries:dispenser_minecart>);
iron.add(<item:supplementaries:faucet>);
iron.add(<item:supplementaries:goblet>);
iron.add(<item:supplementaries:iron_gate>);
iron.add(<item:supplementaries:lock_block>);
iron.add(<item:supplementaries:pulley_block>);
iron.add(<item:supplementaries:relayer>);
iron.add(<item:supplementaries:spring_launcher>);
iron.add(<item:supplementaries:wind_vane>);

iron.add(<item:vanillatweaks:slime_bucket>);

iron.add(<tag:items:supplementaries:candle_holders>);



// Gives nuggets instead due to balancing issues
// Must be worth < 3 nuggets to gain this tag
val small_iron = <tag:items:vanilla:meltable_iron_small>;

small_iron.add(<item:minecraft:chain>);
small_iron.add(<item:minecraft:iron_bars>);
small_iron.add(<item:minecraft:rail>);

small_iron.add(<item:cookingforblockheads:tool_rack>);

small_iron.add(<item:supplementaries:sconce>);
small_iron.add(<item:supplementaries:sconce_lever>);
small_iron.add(<item:supplementaries:sconce_soul>);

small_iron.add(<tag:items:supplementaries:hanging_signs>);



// Gives regular Iron Scrap (since it uses 9+ ingots)
val big_iron = <tag:items:vanilla:meltable_iron_big>;

big_iron.add(<item:minecraft:anvil>);
big_iron.add(<item:minecraft:chipped_anvil>);
big_iron.add(<item:minecraft:damaged_anvil>);
big_iron.add(<item:minecraft:iron_horse_armor>);





# Gold
val gold = <tag:items:vanilla:meltable_gold>;

gold.add(<item:minecraft:golden_helmet>);
gold.add(<item:minecraft:golden_chestplate>);
gold.add(<item:minecraft:golden_leggings>);
gold.add(<item:minecraft:golden_boots>);
gold.add(<item:leatheredboots:leathered_gold_boots>);

gold.add(<item:minecraft:golden_sword>);
gold.add(<item:minecraft:golden_pickaxe>);
gold.add(<item:minecraft:golden_axe>);
gold.add(<item:minecraft:golden_shovel>);
gold.add(<item:minecraft:golden_hoe>);


gold.add(<item:minecraft:clock>);
gold.add(<item:minecraft:gilded_blackstone>);
gold.add(<item:minecraft:glistering_melon_slice>);
gold.add(<item:minecraft:golden_apple>);
gold.add(<item:minecraft:golden_carrot>);
gold.add(<item:minecraft:light_weighted_pressure_plate>);
gold.add(<item:minecraft:powered_rail>);

gold.add(<item:betterend:gold_chandelier>);
gold.add(<item:betterend:golden_hammer>);

gold.add(<item:charm:gold_bars>);
gold.add(<item:charm:gold_lantern>);
gold.add(<item:charm:gold_soul_lantern>);

gold.add(<item:doomangelring:angelring>);

gold.add(<item:farmersdelight:golden_knife>);

gold.add(<item:inmis:gilded_backpack>);

gold.add(<item:magehand:gold_spawner_item>);

gold.add(<item:nyfsquiver:gold_quiver>);

gold.add(<item:supplementaries:clock_block>);
gold.add(<item:supplementaries:crimson_lantern>);
gold.add(<item:supplementaries:globe>);
gold.add(<item:supplementaries:globe_sepia>);
gold.add(<item:supplementaries:gold_door>);
gold.add(<item:supplementaries:gold_gate>);
gold.add(<item:supplementaries:gold_trapdoor>);
gold.add(<item:supplementaries:hourglass>);
gold.add(<item:supplementaries:key>);



// Gives nuggets instead due to balancing issues
// Must be worth <3 nuggets to gain this tag
val small_gold = <tag:items:vanilla:meltable_gold_small>;

small_gold.add(<item:charm:gold_chain>);


// Gives regular Gold Scrap (since it uses 9+ ingots)
val big_gold = <tag:items:vanilla:meltable_gold_big>;

big_gold.add(<item:minecraft:golden_horse_armor>);





# Diamond
val diamond = <tag:items:vanilla:meltable_diamond>;

diamond.add(<item:minecraft:diamond_helmet>);
diamond.add(<item:minecraft:diamond_chestplate>);
diamond.add(<item:minecraft:diamond_leggings>);
diamond.add(<item:minecraft:diamond_boots>);
diamond.add(<item:leatheredboots:leathered_diamond_boots>);

diamond.add(<item:minecraft:diamond_sword>);
diamond.add(<item:minecraft:diamond_pickaxe>);
diamond.add(<item:minecraft:diamond_axe>);
diamond.add(<item:minecraft:diamond_shovel>);
diamond.add(<item:minecraft:diamond_hoe>);

diamond.add(<item:betternether:cincinnasite_sword_diamond>);
diamond.add(<item:betternether:cincinnasite_pickaxe_diamond>);
diamond.add(<item:betternether:cincinnasite_shovel_diamond>);
diamond.add(<item:betternether:cincinnasite_hoe_diamond>);
diamond.add(<item:betternether:cincinnasite_axe_diamond>);


diamond.add(<item:minecraft:enchanting_table>);
diamond.add(<item:minecraft:jukebox>);

diamond.add(<item:betterend:diamond_hammer>);

diamond.add(<item:cookingforblockheads:crafting_book>);

diamond.add(<item:farmersdelight:diamond_knife>);

diamond.add(<item:inmis:bejeweled_backpack>);
diamond.add(<item:inmis:withered_backpack>);

diamond.add(<item:magehand:diamond_spawner_item>);

diamond.add(<item:nyfsquiver:diamond_quiver>);


// Gives regular Diamond Scrap (since it uses 9+ gems)
val big_diamond = <tag:items:vanilla:meltable_diamond_big>;

big_diamond.add(<item:minecraft:diamond_horse_armor>);





# Netherite
val netherite = <tag:items:vanilla:meltable_netherite>;

netherite.add(<item:minecraft:lodestone>);
netherite.add(<item:minecraft:netherite_helmet>);
netherite.add(<item:minecraft:netherite_chestplate>);
netherite.add(<item:minecraft:netherite_leggings>);
netherite.add(<item:minecraft:netherite_boots>);
netherite.add(<item:leatheredboots:leathered_netherite_boots>);

netherite.add(<item:minecraft:netherite_sword>);
netherite.add(<item:minecraft:netherite_pickaxe>);
netherite.add(<item:minecraft:netherite_axe>);
netherite.add(<item:minecraft:netherite_shovel>);
netherite.add(<item:minecraft:netherite_hoe>);

netherite.add(<item:betterend:netherite_hammer>);

netherite.add(<item:betternether:netherite_fire_bowl>);
netherite.add(<item:betternether:netherite_fire_bowl_soul>);

netherite.add(<item:charm:netherite_bars>); // Should *technically* give nuggets, but they don't exist and Netherite is so rare I honestly don't care. Same for the door and trapdoor.

netherite.add(<item:farmersdelight:netherite_knife>);

netherite.add(<item:inmis:blazing_backpack>);
netherite.add(<item:inmis:endless_backpack>);

netherite.add(<item:nyfsquiver:netherite_quiver>);

netherite.add(<item:supplementaries:netherite_door>);
netherite.add(<item:supplementaries:netherite_trapdoor>);
netherite.add(<item:supplementaries:safe>);



# Rose Gold
# Smelts into Copper, blasts into Gold
val rose_gold = <tag:items:vanilla:meltable_rose_gold>;

rose_gold.add(<item:rosegoldequipment:rose_golden_sword>);
rose_gold.add(<item:rosegoldequipment:rose_golden_pickaxe>);
rose_gold.add(<item:rosegoldequipment:rose_golden_shovel>);
rose_gold.add(<item:rosegoldequipment:rose_golden_axe>);

rose_gold.add(<item:rosegoldequipment:rose_golden_helmet>);
rose_gold.add(<item:rosegoldequipment:rose_golden_chestplate>);
rose_gold.add(<item:rosegoldequipment:rose_golden_leggings>);
rose_gold.add(<item:rosegoldequipment:rose_golden_boots>);

rose_gold.add(<item:rosegoldequipment:rose_gold_door>);
rose_gold.add(<item:rosegoldequipment:rose_gold_trapdoor>);

print("0-tags-scrap.zs loaded");