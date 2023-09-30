# Adds recipes to "coinify" various items - crushing or pulverizing them will give you some coins

import crafttweaker.api.tag.MCTag;

print("coinification.zs loading...");

# Takes 3k RF (about 10 seconds without upgrades?)
# or 5 seconds in Crushing Wheels
/*
<recipetype:thermal:pulverizer>.addRecipe(String name, MCWeightedItemStack[] outputs, IIngredient ingredient, 0, 3000);

<recipetype:create:crushing>.addRecipe(String name, MCWeightedItemStack[] output, IIngredient input, 5);
*/

val copper_coin = <item:lightmanscurrency:coin_copper>;
val iron_coin = <item:lightmanscurrency:coin_iron>;
val gold_coin = <item:lightmanscurrency:coin_gold>;
val emerald_coin = <item:lightmanscurrency:coin_emerald>;
val diamond_coin = <item:lightmanscurrency:coin_diamond>;
val netherite_coin = <item:lightmanscurrency:coin_netherite>;


### Minecraft ###
// Music Discs -> 100 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_music_discs", [gold_coin], <tag:items:minecraft:music_discs>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_music_discs2", [gold_coin], <tag:items:minecraft:music_discs>, 5);

// Elytra -> 2,500 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_elytra", [emerald_coin*2, gold_coin*5], <item:minecraft:elytra>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_elytra2", [emerald_coin*2, gold_coin*5], <item:minecraft:elytra>, 5);

// Totem of Undying -> 10,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinfy_totem", [diamond_coin], <item:minecraft:totem_of_undying>, 0, 4000);
<recipetype:create:crushing>.addRecipe("coinfy_totem2", [diamond_coin], <item:minecraft:totem_of_undying>, 5);

// Heart of the Sea -> 50,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinfy_heart", [diamond_coin*5], <item:minecraft:heart_of_the_sea>, 0, 4000);
<recipetype:create:crushing>.addRecipe("coinfy_heart2", [diamond_coin*5], <item:minecraft:heart_of_the_sea>, 5);



### AE2 ###
// AE2 Presses -> 1,500 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_presses", [emerald_coin, gold_coin*5], <tag:items:teoe:ae2_press>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_presses2", [emerald_coin, gold_coin*5], <tag:items:teoe:ae2_press>, 5);



### Conjurer ###
// Bouncy Balls -> 5 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_bouncy_balls", [copper_coin*5], <item:conjurer_illager:throwable_ball>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_bouncy_balls2", [copper_coin*5], <item:conjurer_illager:throwable_ball>, 5);

// Throwing Card -> 1 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_throwing_cards", [copper_coin], <item:conjurer_illager:throwing_card>*2, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_throwing_cards2", [copper_coin], <item:conjurer_illager:throwing_card>*2, 5);



## Enigmatic Legacy ###
// Unholy Grail -> 1,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_unholy_grail", [emerald_coin], <item:enigmaticlegacy:unholy_grail>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_unholy_grail2", [emerald_coin], <item:enigmaticlegacy:unholy_grail>, 5);

// Architect's Inkwell -> 1,500 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_inkwell", [emerald_coin, gold_coin*5], <item:enigmaticlegacy:lore_inscriber>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_inkwell2", [emerald_coin, gold_coin*5], <item:enigmaticlegacy:lore_inscriber>, 5);

// Heart of the Earth -> 2,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_earth_heart", [emerald_coin*2], <item:enigmaticlegacy:earth_heart>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_earth_heart2", [emerald_coin*2], <item:enigmaticlegacy:earth_heart>, 5);

// Keystone of The Oblivion -> 5,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_keystone", [emerald_coin*5], <item:enigmaticlegacy:oblivion_stone>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_keystone2", [emerald_coin*5], <item:enigmaticlegacy:oblivion_stone>, 5);

// Dormant Eye -> 7,500 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_dormant_eye", [emerald_coin*7, gold_coin*5], <item:enigmaticlegacy:architect_eye>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_dormant_eye2", [emerald_coin*7, gold_coin*5], <item:enigmaticlegacy:architect_eye>, 5);

// Spellstones -> 20,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_spellstone", [diamond_coin*2], <tag:items:teoe:spellstone>, 0, 4000);
<recipetype:create:crushing>.addRecipe("coinify_spellstone2", [diamond_coin*2], <tag:items:teoe:spellstone>, 5);

// Non-Euclidean Cube -> 250,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_cube", [netherite_coin*2, diamond_coin*5], <item:enigmaticlegacy:the_cube>, 0, 8000);
<recipetype:create:crushing>.addRecipe("coinify_cube2", [netherite_coin*2, diamond_coin*5],<item:enigmaticlegacy:the_cube>, 10);



### Quark ###
// Blank Rune -> 90 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_blank_rune", [iron_coin*9], <item:quark:blank_rune>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_blank_rune2", [iron_coin*9], <item:quark:blank_rune>, 5);

// Soul Bead -> 180 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_soul_bead", [gold_coin, iron_coin*8], <item:quark:soul_bead>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_soul_bead2", [gold_coin, iron_coin*8], <item:quark:soul_bead>, 5);

// Heart of Diamond -> 25,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_diamond_heart", [diamond_coin*2, emerald_coin*5], <item:quark:diamond_heart>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_diamond_heart2", [diamond_coin*2, emerald_coin*5], <item:quark:diamond_heart>, 5);



### Twilight Forest ###
// Naga Scale -> 1,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_naga_scale", [emerald_coin], <item:twilightforest:naga_scale>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_naga_scale2", [emerald_coin], <item:twilightforest:naga_scale>, 5);

// Scepters -> 1,500 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_scepter", [emerald_coin, gold_coin*5], <item:twilightforest:twilight_scepter>|<item:twilightforest:lifedrain_scepter>|<item:twilightforest:zombie_scepter>|<item:twilightforest:fortification_scepter>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_scepter2", [emerald_coin, gold_coin*5], <item:twilightforest:twilight_scepter>|<item:twilightforest:lifedrain_scepter>|<item:twilightforest:zombie_scepter>|<item:twilightforest:fortification_scepter>, 5);

// Maze Map Focus -> 1,750 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_maze_focus", [emerald_coin, gold_coin*7, iron_coin*5], <item:twilightforest:maze_map_focus>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_maze_focus2", [emerald_coin, gold_coin*7, iron_coin*5], <item:twilightforest:maze_map_focus>, 5);

// Fiery Blood & Tears -> 2,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_fiery_blood", [emerald_coin*2], <tag:items:twilightforest:fiery_vial>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_fiery_blood2", [emerald_coin*2], <tag:items:twilightforest:fiery_vial>, 5);

// Alpha Yeti Fur -> 5,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_yeti_fur", [emerald_coin*5], <item:twilightforest:alpha_yeti_fur>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_yeti_fur2", [emerald_coin*5], <item:twilightforest:alpha_yeti_fur>, 5);

	// Arctic Fur -> 2,500 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_arctic_fur", [emerald_coin*2, gold_coin*5], <item:twilightforest:arctic_fur>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_arctic_fur2", [emerald_coin*2, gold_coin*5], <item:twilightforest:arctic_fur>, 5);

	// Ice Bomb -> 1,500 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_ice_bomb", [emerald_coin, gold_coin*5], <item:twilightforest:ice_bomb>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_ice_bomb2", [emerald_coin, gold_coin*5], <item:twilightforest:ice_bomb>, 5);

// Ender Bow -> 3,500 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_ender_bow", [emerald_coin*3, gold_coin*5], <item:twilightforest:ender_bow>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_ender_bow2", [emerald_coin*3, gold_coin*5], <item:twilightforest:ender_bow>, 5);

// Snow Queen Loot -> 5,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_snow_queen_loot", [emerald_coin*5], <item:twilightforest:triple_bow>|<item:twilightforest:seeker_bow>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_snow_queen_loot2", [emerald_coin*5], <item:twilightforest:triple_bow>|<item:twilightforest:seeker_bow>, 5);


# Charms of Keeping -> Varying Amounts
# 500 for Tier 1, 4x each tier
<recipetype:thermal:pulverizer>.addRecipe("coinify_keeping_charm", [gold_coin*5], <item:twilightforest:charm_of_keeping_1>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_keeping_charm2", [gold_coin*5], <item:twilightforest:charm_of_keeping_1>, 5);
 // 2k for Tier 2
<recipetype:thermal:pulverizer>.addRecipe("coinify_silver_keeping_charm", [emerald_coin*2], <item:twilightforest:charm_of_keeping_2>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_silver_keeping_charm2", [emerald_coin*2], <item:twilightforest:charm_of_keeping_2>, 5);
// 8k for Tier 3
<recipetype:thermal:pulverizer>.addRecipe("coinify_gold_keeping_charm", [emerald_coin*8], <item:twilightforest:charm_of_keeping_3>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_gold_keeping_charm2", [emerald_coin*8], <item:twilightforest:charm_of_keeping_3>, 5);


# Charms of Life -> Various Essenarium
# 2,500 for Tier 1, 4x each tier
<recipetype:thermal:pulverizer>.addRecipe("coinify_life_charm", [emerald_coin*2, gold_coin*5],<item:twilightforest:charm_of_life_1>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_life_charm2", [emerald_coin*2, gold_coin*5], <item:twilightforest:charm_of_life_1>, 5);
// 10k for Tier 2
<recipetype:thermal:pulverizer>.addRecipe("coinify_gold_life_charm", [diamond_coin],<item:twilightforest:charm_of_life_2>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_gold_life_charm2", [diamond_coin], <item:twilightforest:charm_of_life_2>, 5);

print("coinification.zs loaded");