# Adds meltable tags to various items
# Used in the scrapping recipes I made

import crafttweaker.api.tag.MCTag;

print("0-tags-scrap.zs loading...");
/*
<tag>.add(<item>);
<tag>.remove(<item>);
*/


### Scrap Items ###
# Copper
<tag:items:vanilla:meltable_copper>.add(<item:minecraft:lightning_rod>);
<tag:items:vanilla:meltable_copper>.add(<item:minecraft:spyglass>);

<tag:items:vanilla:meltable_copper>.add(<item:archeology:copper_brush>);
<tag:items:vanilla:meltable_copper>.add(<item:archeology:exposed_copper_brush>);
<tag:items:vanilla:meltable_copper>.add(<item:archeology:weathered_copper_brush>);
<tag:items:vanilla:meltable_copper>.add(<item:archeology:oxidized_copper_brush>);
<tag:items:vanilla:meltable_copper>.add(<item:charm:copper_bars>);
<tag:items:vanilla:meltable_copper>.add(<item:copperhopper:copper_hopper>);
<tag:items:vanilla:meltable_copper>.add(<item:magehand:copper_spawner_item>);
<tag:items:vanilla:meltable_copper>.add(<item:nyfsquiver:copper_quiver>);



# Iron
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:chainmail_helmet>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:chainmail_chestplate>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:chainmail_leggings>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:chainmail_boots>);
<tag:items:vanilla:meltable_metal>.add(<item:leatheredboots:chainmail_leathered_boots>);

<tag:items:vanilla:meltable_metal>.add(<item:minecraft:iron_helmet>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:iron_chestplate>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:iron_leggings>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:iron_boots>);
<tag:items:vanilla:meltable_metal>.add(<item:leatheredboots:iron_leathered_boots>);

<tag:items:vanilla:meltable_metal>.add(<item:minecraft:iron_sword>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:iron_pickaxe>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:iron_axe>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:iron_shovel>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:iron_hoe>);

<tag:items:vanilla:meltable_metal>.add(<item:minecraft:iron_horse_armor>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:crossbow>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:shears>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:shield>);

<tag:items:vanilla:meltable_metal>.add(<item:minecraft:anvil>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:chipped_anvil>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:damaged_anvil>);
<tag:items:vanilla:meltable_metal>.add(<item:vanillatweaks:slime_bucket>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:bucket>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:cauldron>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:compass>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:flint_and_steel>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:hopper>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:iron_bars>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:iron_door>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:iron_trapdoor>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:heavy_weighted_pressure_plate>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:lantern>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:soul_lantern>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:name_tag>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:tripwire_hook>);
<tag:items:vanilla:meltable_metal>.add(<item:nethersdelight:blackstone_blast_furnace>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:blast_furnace>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:stonecutter>);
<tag:items:vanilla:meltable_metal>.add(<item:charm:woodcutter>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:piston>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:sticky_piston>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:chest_minecart>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:furnace_minecart>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:tnt_minecart>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:hopper_minecart>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:activator_rail>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:detector_rail>);
<tag:items:vanilla:meltable_metal>.add(<item:minecraft:rail>);

<tag:items:vanilla:meltable_metal>.add(<item:charm:redstone_lantern>);
<tag:items:vanilla:meltable_metal>.add(<item:cookingforblockheads:oven>);
<tag:items:vanilla:meltable_metal>.add(<item:cookingforblockheads:fridge>);
<tag:items:vanilla:meltable_metal>.add(<item:cookingforblockheads:toaster>);
<tag:items:vanilla:meltable_metal>.add(<item:cookingforblockheads:heating_unit>);
<tag:items:vanilla:meltable_metal>.add(<item:cookingforblockheads:ice_unit>);
<tag:items:vanilla:meltable_metal>.add(<item:cookingforblockheads:preservation_chamber>);

<tag:items:vanilla:meltable_metal>.add(<item:ductwork:collector>);
<tag:items:vanilla:meltable_metal>.add(<item:ductwork:damper>);
<tag:items:vanilla:meltable_metal>.add(<item:ductwork:duct>);
<tag:items:vanilla:meltable_metal>.add(<item:farmersdelight:stove>);
<tag:items:vanilla:meltable_metal>.add(<item:farmersdelight:cooking_pot>);
<tag:items:vanilla:meltable_metal>.add(<item:farmersdelight:skillet>);
<tag:items:vanilla:meltable_metal>.add(<item:farmersdelight:iron_knife>);
<tag:items:vanilla:meltable_metal>.add(<item:nethersdelight:iron_machete>);
<tag:items:vanilla:meltable_metal>.add(<item:inmis:plated_backpack>);
<tag:items:vanilla:meltable_metal>.add(<item:magehand:iron_spawner_item>);
<tag:items:vanilla:meltable_metal>.add(<item:nyfsquiver:iron_quiver>);
<tag:items:vanilla:meltable_metal>.add(<item:pfm:furniture_book>);
<tag:items:vanilla:meltable_metal>.add(<item:pfm:working_table>);


// Gives nuggets instead due to balancing issues
// Must be worth < 3 nuggets to gain this tag
<tag:items:vanilla:meltable_metal_small>.add(<item:cookingforblockheads:tool_rack>);
<tag:items:vanilla:meltable_metal_small>.add(<item:minecraft:chain>);
<tag:items:vanilla:meltable_metal_small>.add(<item:pfm:iron_chain>);





# Gold
<tag:items:vanilla:meltable_gold>.add(<item:minecraft:golden_helmet>);
<tag:items:vanilla:meltable_gold>.add(<item:minecraft:golden_chestplate>);
<tag:items:vanilla:meltable_gold>.add(<item:minecraft:golden_leggings>);
<tag:items:vanilla:meltable_gold>.add(<item:minecraft:golden_boots>);
<tag:items:vanilla:meltable_gold>.add(<item:leatheredboots:golden_leathered_boots>);

<tag:items:vanilla:meltable_gold>.add(<item:minecraft:golden_sword>);
<tag:items:vanilla:meltable_gold>.add(<item:minecraft:golden_pickaxe>);
<tag:items:vanilla:meltable_gold>.add(<item:minecraft:golden_axe>);
<tag:items:vanilla:meltable_gold>.add(<item:minecraft:golden_shovel>);
<tag:items:vanilla:meltable_gold>.add(<item:minecraft:golden_hoe>);

<tag:items:vanilla:meltable_gold>.add(<item:minecraft:golden_horse_armor>);

<tag:items:vanilla:meltable_gold>.add(<item:minecraft:gilded_blackstone>);

<tag:items:vanilla:meltable_gold>.add(<item:minecraft:clock>);
<tag:items:vanilla:meltable_gold>.add(<item:minecraft:powered_rail>);
<tag:items:vanilla:meltable_gold>.add(<item:minecraft:light_weighted_pressure_plate>);
<tag:items:vanilla:meltable_gold>.add(<item:minecraft:glistering_melon_slice>);

<tag:items:vanilla:meltable_gold>.add(<item:doomangelring:angelring>);
<tag:items:vanilla:meltable_gold>.add(<item:charm:gold_bars>);
<tag:items:vanilla:meltable_gold>.add(<item:charm:gold_lantern>);
<tag:items:vanilla:meltable_gold>.add(<item:charm:gold_soul_lantern>);

<tag:items:vanilla:meltable_gold>.add(<item:farmersdelight:golden_knife>);
<tag:items:vanilla:meltable_gold>.add(<item:nethersdelight:golden_machete>);
<tag:items:vanilla:meltable_gold>.add(<item:inmis:gilded_backpack>);
<tag:items:vanilla:meltable_gold>.add(<item:magehand:gold_spawner_item>);
<tag:items:vanilla:meltable_gold>.add(<item:nyfsquiver:gold_quiver>);


// Gives nuggets instead due to balancing issues
// Must be worth < 3 nuggets to gain this tag
<tag:items:vanilla:meltable_gold_small>.add(<item:nethersdelight:hoglin_mount>);
<tag:items:vanilla:meltable_gold_small>.add(<item:charm:gold_chain>);



# Diamond
<tag:items:vanilla:meltable_diamond>.add(<item:minecraft:diamond_helmet>);
<tag:items:vanilla:meltable_diamond>.add(<item:minecraft:diamond_chestplate>);
<tag:items:vanilla:meltable_diamond>.add(<item:minecraft:diamond_leggings>);
<tag:items:vanilla:meltable_diamond>.add(<item:minecraft:diamond_boots>);
<tag:items:vanilla:meltable_diamond>.add(<item:leatheredboots:diamond_leathered_boots>);

<tag:items:vanilla:meltable_diamond>.add(<item:minecraft:diamond_sword>);
<tag:items:vanilla:meltable_diamond>.add(<item:minecraft:diamond_pickaxe>);
<tag:items:vanilla:meltable_diamond>.add(<item:minecraft:diamond_axe>);
<tag:items:vanilla:meltable_diamond>.add(<item:minecraft:diamond_shovel>);
<tag:items:vanilla:meltable_diamond>.add(<item:minecraft:diamond_hoe>);

<tag:items:vanilla:meltable_diamond>.add(<item:minecraft:diamond_horse_armor>);

<tag:items:vanilla:meltable_diamond>.add(<item:cookingforblockheads:crafting_book>);
<tag:items:vanilla:meltable_diamond>.add(<item:farmersdelight:diamond_knife>);
<tag:items:vanilla:meltable_diamond>.add(<item:nethersdelight:diamond_machete>);
<tag:items:vanilla:meltable_diamond>.add(<item:inmis:bejeweled_backpack>);
<tag:items:vanilla:meltable_diamond>.add(<item:magehand:diamond_spawner_item>);
<tag:items:vanilla:meltable_diamond>.add(<item:nyfsquiver:diamond_quiver>);



# Netherite
<tag:items:vanilla:meltable_netherite>.add(<item:minecraft:netherite_helmet>);
<tag:items:vanilla:meltable_netherite>.add(<item:minecraft:netherite_chestplate>);
<tag:items:vanilla:meltable_netherite>.add(<item:minecraft:netherite_leggings>);
<tag:items:vanilla:meltable_netherite>.add(<item:minecraft:netherite_boots>);
<tag:items:vanilla:meltable_netherite>.add(<item:leatheredboots:netherite_leathered_boots>);

<tag:items:vanilla:meltable_netherite>.add(<item:minecraft:netherite_sword>);
<tag:items:vanilla:meltable_netherite>.add(<item:minecraft:netherite_pickaxe>);
<tag:items:vanilla:meltable_netherite>.add(<item:minecraft:netherite_axe>);
<tag:items:vanilla:meltable_netherite>.add(<item:minecraft:netherite_shovel>);
<tag:items:vanilla:meltable_netherite>.add(<item:minecraft:netherite_hoe>);

<tag:items:vanilla:meltable_netherite>.add(<item:charm:netherite_bars>);
<tag:items:vanilla:meltable_netherite>.add(<item:farmersdelight:netherite_knife>);
<tag:items:vanilla:meltable_netherite>.add(<item:nethersdelight:netherite_machete>);
<tag:items:vanilla:meltable_netherite>.add(<item:inmis:blazing_backpack>);
<tag:items:vanilla:meltable_netherite>.add(<item:nyfsquiver:netherite_quiver>);


/* this would be added if MC wasn't dumb
### Can be smelted or blasted into 1 Scrap
### Items gain this tag if they are a piece of equipment (defined as "having durability" and/or "being equippable")
### Mage Hands also go here cuz I'm lazy
### Looted items have their own recipes
*/

print("0-tags-scrap.zs loaded");