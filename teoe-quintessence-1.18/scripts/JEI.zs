# Hides things from JEI, or adds info about them
import mods.jei.JEI;

print("JEI.zs loading...");

/*
mods.jei.JEI.hideIngredient(<item>);
mods.jei.JEI.hideFluid(<fluid:minecraft:lava>);
mods.jei.JEI.hideRecipe("category", "recipeName");

mods.jei.JEI.addDescription(<item>, ["line1", "line2"]);
*/


# Add JEI Info tabs for various items
mods.jei.JEI.addDescription(<item:minecraft:ladder>, ["You can use any vanilla wood to make that variation of a ladder (e.g. Dark Oak makes Dark Oak Ladders)"]);

mods.jei.JEI.addDescription(<item:additionaladditions:gold_ring>, ["Gained from bartering with Piglins"]);
mods.jei.JEI.addDescription(<item:appbot:mana_p2p_tunnel>, ["Right-click a P2P tunnel with any Botania item to make it a Mana Tunnel"]);
mods.jei.JEI.addDescription(<item:nourished_nether:necronium_ingot>, ["Process a Gold Ingot in a Soul Forge"]);
mods.jei.JEI.addDescription(<item:nourished_nether:soul_quartz>, ["Stand on Soul Sludge until it turns, then harvest with a Hoe"]);
mods.jei.JEI.addDescription(<item:ob_core:magic_dust>, ["Find a Magic Crystal Cluster deep in the underground, which will grow Magic Dust over time." + "\n\nThey seem to be more common near lava"]);
mods.jei.JEI.addDescription(<item:quark:soul_bead>, ["Can be used to locate Nether Fortresses, or turned into Coins." + "\n\nWraiths will spawn in the Soul Sand Valley"]);
mods.jei.JEI.addDescription(<item:waystones:attuned_shard>, ["Swap the Attuned Shards of 2 Warp Plates to bind them to each other"]);



# Hides infested blocks
mods.jei.JEI.hideIngredient(<item:minecraft:infested_stone>);
mods.jei.JEI.hideIngredient(<item:minecraft:infested_deepslate>);
mods.jei.JEI.hideIngredient(<item:minecraft:infested_cobblestone>);
mods.jei.JEI.hideIngredient(<item:minecraft:infested_stone_bricks>);
mods.jei.JEI.hideIngredient(<item:minecraft:infested_mossy_stone_bricks>);
mods.jei.JEI.hideIngredient(<item:minecraft:infested_cracked_stone_bricks>);
mods.jei.JEI.hideIngredient(<item:minecraft:infested_chiseled_stone_bricks>);
mods.jei.JEI.hideIngredient(<item:minecraft:infested_stone_bricks>);



# Hides creative-only items
mods.jei.JEI.hideIngredient(<item:botania:infrangible_platform>);
mods.jei.JEI.hideIngredient(<item:botania:lens_storm>);
mods.jei.JEI.hideIngredient(<item:botania:corporea_spark_creative>);
mods.jei.JEI.hideIngredient(<item:createaddition:creative_energy>);
mods.jei.JEI.hideIngredient(<item:thermal:fluid_tank_creative_augment>);
mods.jei.JEI.hideIngredient(<item:thermal:machine_efficiency_creative_augment>);
mods.jei.JEI.hideIngredient(<item:thermal:machine_catalyst_creative_augment>);
mods.jei.JEI.hideIngredient(<item:enigmaticlegacy:loot_generator>);
mods.jei.JEI.hideIngredient(<item:quantumquarryplus:creative_cell>);
mods.jei.JEI.hideIngredient(<item:ironjetpacks:capacitor>.withTag({Id: "ironjetpacks:creative" as string}));
mods.jei.JEI.hideIngredient(<item:ironjetpacks:thruster>.withTag({Id: "ironjetpacks:creative" as string}));
mods.jei.JEI.hideIngredient(<item:ironjetpacks:jetpack>.withTag({Id: "ironjetpacks:creative" as string}));
mods.jei.JEI.hideIngredient(<item:ironjetpacks:cell>.withTag({Id: "ironjetpacks:creative" as string}));



# Hides disabled items
mods.jei.JEI.hideIngredient(<item:additionaladditions:depth_meter>);
mods.jei.JEI.hideIngredient(<item:additionaladditions:fried_egg>);
mods.jei.JEI.hideIngredient(<item:additionaladditions:wrench>);
mods.jei.JEI.hideIngredient(<item:additionaladditions:pocket_jukebox>);

mods.jei.JEI.hideIngredient(<item:ae2:vibration_chamber>);
mods.jei.JEI.hideIngredient(<item:essentials:slotted_chest>);
mods.jei.JEI.hideIngredient(<item:industrialforegoing:iron_gear>);
mods.jei.JEI.hideIngredient(<item:industrialforegoing:gold_gear>);
mods.jei.JEI.hideIngredient(<item:industrialforegoing:diamond_gear>);
mods.jei.JEI.hideIngredient(<item:wstweaks:lava_blade>);
mods.jei.JEI.hideIngredient(<item:wstweaks:blaze_blade>);

mods.jei.JEI.hideIngredient(<item:nourished_nether:netherite_nugget>);
mods.jei.JEI.hideIngredient(<item:tconstruct:netherite_nugget>);


# Hides normally obtainable that aren't obtainable in the pack
mods.jei.JEI.hideIngredient(<item:malum:aluminum_node>);
mods.jei.JEI.hideIngredient(<item:malum:uranium_node>);
mods.jei.JEI.hideIngredient(<item:malum:osmium_node>);



# Hides technical items
mods.jei.JEI.hideIngredient(<item:minecraft:bedrock>);
mods.jei.JEI.hideIngredient(<item:minecraft:end_portal_frame>);

mods.jei.JEI.hideIngredient(<item:ae2:identity_annihilation_plane>);
/*
mods.jei.JEI.hideIngredient(<item:custommachinery:box_creator_item>);
mods.jei.JEI.hideIngredient(<item:custommachinery:machine_creator_item>);
mods.jei.JEI.hideIngredient(<item:custommachinery:structure_creator>);
*/
mods.jei.JEI.hideIngredient(<item:enigmaticlegacy:soul_crystal>);

mods.jei.JEI.hideIngredient(<item:hammerlib:wrench>);

mods.jei.JEI.hideIngredient(<item:mm:structure_wand>);

mods.jei.JEI.hideIngredient(<item:reliquary:mob_charm>);
mods.jei.JEI.hideIngredient(<item:reliquary:mob_charm_fragment>);

mods.jei.JEI.hideIngredient(<item:twilightforest:ore_meter>);
mods.jei.JEI.hideIngredient(<item:twilightforest:twilight_portal_miniature_structure>);
mods.jei.JEI.hideIngredient(<item:twilightforest:naga_courtyard_miniature_structure>);
mods.jei.JEI.hideIngredient(<item:twilightforest:lich_tower_miniature_structure>);
mods.jei.JEI.hideIngredient(<item:twilightforest:twisted_stone>);
mods.jei.JEI.hideIngredient(<item:twilightforest:twisted_stone_pillar>);
mods.jei.JEI.hideIngredient(<item:twilightforest:auroralized_glass>);
mods.jei.JEI.hideIngredient(<item:twilightforest:cinder_furnace>);
mods.jei.JEI.hideIngredient(<item:twilightforest:cinder_log>);
mods.jei.JEI.hideIngredient(<item:twilightforest:cinder_wood>);
mods.jei.JEI.hideIngredient(<item:twilightforest:slider>);

mods.jei.JEI.hideIngredient(<item:twilightforest:pink_force_field>);
mods.jei.JEI.hideIngredient(<item:twilightforest:orange_force_field>);
mods.jei.JEI.hideIngredient(<item:twilightforest:green_force_field>);
mods.jei.JEI.hideIngredient(<item:twilightforest:blue_force_field>);
mods.jei.JEI.hideIngredient(<item:twilightforest:violet_force_field>);
/*
mods.jei.JEI.hideIngredient(<item:titanium:block_test>);
mods.jei.JEI.hideIngredient(<item:titanium:block_twenty_four_test>);
mods.jei.JEI.hideIngredient(<item:titanium:block_asset_test>);
mods.jei.JEI.hideIngredient(<item:titanium:creative_generator>);
mods.jei.JEI.hideIngredient(<item:titanium:machine_test>);
*/
mods.jei.JEI.hideIngredient(<item:structure_gel:red_gel>);
mods.jei.JEI.hideIngredient(<item:structure_gel:blue_gel>);
mods.jei.JEI.hideIngredient(<item:structure_gel:green_gel>);
mods.jei.JEI.hideIngredient(<item:structure_gel:cyan_gel>);
mods.jei.JEI.hideIngredient(<item:structure_gel:orange_gel>);
mods.jei.JEI.hideIngredient(<item:structure_gel:yellow_gel>);


# Hide Uncrafting
mods.jei.JEI.hideIngredient(<item:twilightforest:uncrafting_table>);
JEI.hideCategory("twilightforest:uncrafting");

print("JEI.zs loaded");