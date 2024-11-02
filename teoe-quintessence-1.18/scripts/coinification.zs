# Adds recipes to "coinify" various items - crushing or pulverizing them will give you some coins

import crafttweaker.api.tag.MCTag;

print("coinification.zs loading...");

# Takes 3k RF (about 10 seconds without upgrades?)
# or 5 seconds in Crushing Wheels
/*
<recipetype:thermal:pulverizer>.addRecipe(String name, MCWeightedItemStack[] outputs, IIngredient ingredient, 0, 3000);

<recipetype:create:crushing>.addRecipe(String name, MCWeightedItemStack[] output, IIngredient input);
*/

val copper = <item:lightmanscurrency:coin_copper>;
val iron = <item:lightmanscurrency:coin_iron>;
val gold = <item:lightmanscurrency:coin_gold>;
val emerald = <item:lightmanscurrency:coin_emerald>;
val diamond = <item:lightmanscurrency:coin_diamond>;
val netherite = <item:lightmanscurrency:coin_netherite>;


### Minecraft ###
// Music Discs -> 100 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_music_discs", [gold], <tag:items:minecraft:music_discs>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_music_discs2", [gold], <tag:items:minecraft:music_discs>);

// Elytra -> 2,500 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_elytra", [emerald*2, gold*5], <item:minecraft:elytra>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_elytra2", [emerald*2, gold*5], <item:minecraft:elytra>);

// Totem of Undying -> 10,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinfy_totem", [diamond], <item:minecraft:totem_of_undying>, 0, 4000);
<recipetype:create:crushing>.addRecipe("coinfy_totem2", [diamond], <item:minecraft:totem_of_undying>, 140);

// Heart of the Sea -> 50,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinfy_heart", [diamond*5], <item:minecraft:heart_of_the_sea>, 0, 4000);
<recipetype:create:crushing>.addRecipe("coinfy_heart2", [diamond*5], <item:minecraft:heart_of_the_sea>, 140);



### AE2 ###
// AE2 Presses -> 1,500 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_presses", [emerald, gold*5], <tag:items:quintessence:ae2_press>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_presses2", [emerald, gold*5], <tag:items:quintessence:ae2_press>);



### Conjurer ###
// Bouncy Balls -> 5 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_bouncy_balls", [copper*5], <item:conjurer_illager:throwable_ball>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_bouncy_balls2", [copper*5], <item:conjurer_illager:throwable_ball>);

// Throwing Card -> 1 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_throwing_cards", [copper], <item:conjurer_illager:throwing_card>*2, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_throwing_cards2", [copper], <item:conjurer_illager:throwing_card>*2);



## Enigmatic Legacy ###
// Unholy Grail -> 1,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_unholy_grail", [emerald], <item:enigmaticlegacy:unholy_grail>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_unholy_grail2", [emerald], <item:enigmaticlegacy:unholy_grail>);

// Architect's Inkwell -> 1,500 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_inkwell", [emerald, gold*5], <item:enigmaticlegacy:lore_inscriber>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_inkwell2", [emerald, gold*5], <item:enigmaticlegacy:lore_inscriber>);

// Heart of the Earth -> 2,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_earth_heart", [emerald*2], <item:enigmaticlegacy:earth_heart>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_earth_heart2", [emerald*2], <item:enigmaticlegacy:earth_heart>);

// Keystone of The Oblivion -> 5,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_keystone", [emerald*5], <item:enigmaticlegacy:oblivion_stone>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_keystone2", [emerald*5], <item:enigmaticlegacy:oblivion_stone>);

// Dormant Eye -> 7,500 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_dormant_eye", [emerald*7, gold*5], <item:enigmaticlegacy:architect_eye>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_dormant_eye2", [emerald*7, gold*5], <item:enigmaticlegacy:architect_eye>);

// Spellstones -> 20,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_spellstone", [diamond*2], <tag:items:quintessence:spellstone>, 0, 4000);
<recipetype:create:crushing>.addRecipe("coinify_spellstone2", [diamond*2], <tag:items:quintessence:spellstone>);

// Non-Euclidean Cube -> 250,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_cube", [netherite*2, diamond*5], <item:enigmaticlegacy:the_cube>, 0, 8000);
<recipetype:create:crushing>.addRecipe("coinify_cube2", [netherite*2, diamond*5],<item:enigmaticlegacy:the_cube>, 10);



### Quark ###
// Blank Rune -> 90 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_blank_rune", [iron*9], <item:quark:blank_rune>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_blank_rune2", [iron*9], <item:quark:blank_rune>);

// Soul Bead -> 180 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_soul_bead", [gold, iron*8], <item:quark:soul_bead>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_soul_bead2", [gold, iron*8], <item:quark:soul_bead>);

// Heart of Diamond -> 25,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_diamond_heart", [diamond*2, emerald*5], <item:quark:diamond_heart>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_diamond_heart2", [diamond*2, emerald*5], <item:quark:diamond_heart>);



### Twilight Forest ###
// Naga Scale -> 1,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_naga_scale", [emerald], <item:twilightforest:naga_scale>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_naga_scale2", [emerald], <item:twilightforest:naga_scale>);

// Scepters -> 1,500 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_scepter", [emerald, gold*5], <item:twilightforest:twilight_scepter>|<item:twilightforest:lifedrain_scepter>|<item:twilightforest:zombie_scepter>|<item:twilightforest:fortification_scepter>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_scepter2", [emerald, gold*5], <item:twilightforest:twilight_scepter>|<item:twilightforest:lifedrain_scepter>|<item:twilightforest:zombie_scepter>|<item:twilightforest:fortification_scepter>);

// Maze Map Focus -> 1,750 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_maze_focus", [emerald, gold*7, iron*5], <item:twilightforest:maze_map_focus>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_maze_focus2", [emerald, gold*7, iron*5], <item:twilightforest:maze_map_focus>);

// Fiery Blood & Tears -> 2,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_fiery_blood", [emerald*2], <tag:items:twilightforest:fiery_vial>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_fiery_blood2", [emerald*2], <tag:items:twilightforest:fiery_vial>);

// Alpha Yeti Fur -> 5,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_yeti_fur", [emerald*5], <item:twilightforest:alpha_yeti_fur>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_yeti_fur2", [emerald*5], <item:twilightforest:alpha_yeti_fur>);

	// Arctic Fur -> 2,500 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_arctic_fur", [emerald*2, gold*5], <item:twilightforest:arctic_fur>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_arctic_fur2", [emerald*2, gold*5], <item:twilightforest:arctic_fur>);

	// Ice Bomb -> 1,500 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_ice_bomb", [emerald, gold*5], <item:twilightforest:ice_bomb>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_ice_bomb2", [emerald, gold*5], <item:twilightforest:ice_bomb>);

// Ender Bow -> 3,500 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_ender_bow", [emerald*3, gold*5], <item:twilightforest:ender_bow>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_ender_bow2", [emerald*3, gold*5], <item:twilightforest:ender_bow>);

// Snow Queen Loot -> 5,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_snow_queen_loot", [emerald*5], <item:twilightforest:triple_bow>|<item:twilightforest:seeker_bow>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_snow_queen_loot2", [emerald*5], <item:twilightforest:triple_bow>|<item:twilightforest:seeker_bow>);


# Charms of Keeping -> Varying Amounts
# 500 for Tier 1, 4x each tier
<recipetype:thermal:pulverizer>.addRecipe("coinify_keeping_charm", [gold*5], <item:twilightforest:charm_of_keeping_1>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_keeping_charm2", [gold*5], <item:twilightforest:charm_of_keeping_1>);
 // 2k for Tier 2
<recipetype:thermal:pulverizer>.addRecipe("coinify_silver_keeping_charm", [emerald*2], <item:twilightforest:charm_of_keeping_2>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_silver_keeping_charm2", [emerald*2], <item:twilightforest:charm_of_keeping_2>);
// 8k for Tier 3
<recipetype:thermal:pulverizer>.addRecipe("coinify_gold_keeping_charm", [emerald*8], <item:twilightforest:charm_of_keeping_3>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_gold_keeping_charm2", [emerald*8], <item:twilightforest:charm_of_keeping_3>);


# Charms of Life -> Various Essenarium
# 2,500 for Tier 1, 4x each tier
<recipetype:thermal:pulverizer>.addRecipe("coinify_life_charm", [emerald*2, gold*5],<item:twilightforest:charm_of_life_1>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_life_charm2", [emerald*2, gold*5], <item:twilightforest:charm_of_life_1>);
// 10k for Tier 2
<recipetype:thermal:pulverizer>.addRecipe("coinify_gold_life_charm", [diamond],<item:twilightforest:charm_of_life_2>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_gold_life_charm2", [diamond], <item:twilightforest:charm_of_life_2>);

print("coinification.zs loaded");