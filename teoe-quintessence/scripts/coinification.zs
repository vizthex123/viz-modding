# Adds recipes to "coinify" various items - crushing or pulverizing them will give you some coins

import crafttweaker.api.tag.MCTag;

print("coinification.zs loading...");

# Takes 3k RF (about 10 seconds without upgrades?)
# or 5 seconds in Crushing Wheels
/*
<recipetype:thermal:pulverizer>.addRecipe(String name, MCWeightedItemStack[] outputs, IIngredient ingredient, 0, 3000);

<recipetype:create:crushing>.addRecipe(String name, MCWeightedItemStack[] output, IIngredient input, 5);
*/

// Elytra -> 2,500 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_elytra", [<item:lightmanscurrency:coin_emerald>*2, <item:lightmanscurrency:coin_gold>*5], <item:minecraft:elytra>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_elytra2", [<item:lightmanscurrency:coin_emerald>*2, <item:lightmanscurrency:coin_gold>*5], <item:minecraft:elytra>, 5);

// Music Discs -> 100 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_music_discs", [<item:lightmanscurrency:coin_gold>], <tag:items:minecraft:music_discs>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_music_discs2", [<item:lightmanscurrency:coin_gold>], <tag:items:minecraft:music_discs>, 5);

// Heart of the Sea -> 50,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinfy_heart", [<item:lightmanscurrency:coin_diamond>*5], <item:minecraft:heart_of_the_sea>, 0, 4000);
<recipetype:create:crushing>.addRecipe("coinfy_heart2", [<item:lightmanscurrency:coin_diamond>*5], <item:minecraft:heart_of_the_sea>, 7);



### AE2 ###
// AE2 Presses -> 2,500 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_presses", [<item:lightmanscurrency:coin_emerald>*2, <item:lightmanscurrency:coin_gold>*5], <item:ae2:calculation_processor_press>|<item:ae2:engineering_processor_press>|<item:ae2:logic_processor_press>|<item:ae2:silicon_press>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_presses2", [<item:lightmanscurrency:coin_emerald>*2, <item:lightmanscurrency:coin_gold>*5], <item:ae2:calculation_processor_press>|<item:ae2:engineering_processor_press>|<item:ae2:logic_processor_press>|<item:ae2:silicon_press>, 5);



### Conjurer ###
// Bouncy Balls -> 5 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_bouncy_balls", [<item:lightmanscurrency:coin_copper>*5], <item:conjurer_illager:throwable_ball>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_bouncy_balls2", [<item:lightmanscurrency:coin_copper>*5], <item:conjurer_illager:throwable_ball>, 5);

// Throwing Card -> 1 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_throwing_cards", [<item:lightmanscurrency:coin_copper>], <item:conjurer_illager:throwing_card>*2, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_throwing_cards2", [<item:lightmanscurrency:coin_copper>], <item:conjurer_illager:throwing_card>*2, 5);



## Enigmatic Legacy ###
// Unholy Grail -> 1,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_unholy_grail", [<item:lightmanscurrency:coin_emerald>], <item:enigmaticlegacy:unholy_grail>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_unholy_grail2", [<item:lightmanscurrency:coin_emerald>], <item:enigmaticlegacy:unholy_grail>, 5);

// Architect's Inkwell -> 1,500 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_inkwell", [<item:lightmanscurrency:coin_emerald>, <item:lightmanscurrency:coin_gold>*5], <item:enigmaticlegacy:lore_inscriber>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_inkwell2", [<item:lightmanscurrency:coin_emerald>, <item:lightmanscurrency:coin_gold>*5], <item:enigmaticlegacy:lore_inscriber>, 5);

// Heart of the Earth -> 2,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_earth_heart", [<item:lightmanscurrency:coin_emerald>*2], <item:enigmaticlegacy:earth_heart>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_earth_heart2", [<item:lightmanscurrency:coin_emerald>*2], <item:enigmaticlegacy:earth_heart>, 5);

// Keystone of The Oblivion -> 5,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_keystone", [<item:lightmanscurrency:coin_emerald>*5], <item:enigmaticlegacy:oblivion_stone>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_keystone2", [<item:lightmanscurrency:coin_emerald>*5], <item:enigmaticlegacy:oblivion_stone>, 5);

// Dormant Eye -> 7,500 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_dormant_eye", [<item:lightmanscurrency:coin_emerald>*7, <item:lightmanscurrency:coin_gold>*5], <item:enigmaticlegacy:architect_eye>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_dormant_eye2", [<item:lightmanscurrency:coin_emerald>*7, <item:lightmanscurrency:coin_gold>*5], <item:enigmaticlegacy:architect_eye>, 5);

// Enigmatic Amulet -> 10,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_enigmatic_amulet", [<item:lightmanscurrency:coin_diamond>], <item:enigmaticlegacy:enigmatic_amulet>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_enigmatic_amulet2", [<item:lightmanscurrency:coin_diamond>], <item:enigmaticlegacy:enigmatic_amulet>, 5);

// Spellstones -> 20,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_spellstone", [<item:lightmanscurrency:coin_diamond>*2], <tag:items:curios:spellstone>, 0, 4000);
<recipetype:create:crushing>.addRecipe("coinify_spellstone2", [<item:lightmanscurrency:coin_diamond>*2], <tag:items:curios:spellstone>, 7);



### Quark ###
// Blank Rune -> 90 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_blank_rune", [<item:lightmanscurrency:coinpile_iron>], <item:quark:blank_rune>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_blank_rune2", [<item:lightmanscurrency:coinpile_iron>], <item:quark:blank_rune>, 5);

// Soul Bead -> 180 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_soul_bead", [<item:lightmanscurrency:coinpile_iron>*2], <item:quark:soul_bead>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_soul_bead2", [<item:lightmanscurrency:coinpile_iron>*2], <item:quark:soul_bead>, 5);

// Heart of Diamond -> 10,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_diamond_heart", [<item:lightmanscurrency:coin_diamond>], <item:quark:diamond_heart>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_diamond_heart2", [<item:lightmanscurrency:coin_diamond>], <item:quark:diamond_heart>, 5);



### Twilight Forest ###
# Scepters -> 10,000 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_twilight_scepter", [<item:lightmanscurrency:coin_diamond>], <item:twilightforest:twilight_scepter>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_twilight_scepter2", [<item:lightmanscurrency:coin_diamond>], <item:twilightforest:twilight_scepter>, 5);

<recipetype:thermal:pulverizer>.addRecipe("coinify_lifedrain_scepter", [<item:lightmanscurrency:coin_diamond>], <item:twilightforest:lifedrain_scepter>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_lifedrain_scepter2", [<item:lightmanscurrency:coin_diamond>], <item:twilightforest:lifedrain_scepter>, 5);

<recipetype:thermal:pulverizer>.addRecipe("coinify_zombie_scepter", [<item:lightmanscurrency:coin_diamond>], <item:twilightforest:zombie_scepter>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_zombie_scepter2", [<item:lightmanscurrency:coin_diamond>], <item:twilightforest:zombie_scepter>, 5);

<recipetype:thermal:pulverizer>.addRecipe("coinify_fortification_scepter", [<item:lightmanscurrency:coin_diamond>], <item:twilightforest:fortification_scepter>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_fortification_scepter2", [<item:lightmanscurrency:coin_diamond>], <item:twilightforest:fortification_scepter>, 5);

// Maze Map Focus -> 1,500 Essenarium
<recipetype:thermal:pulverizer>.addRecipe("coinify_maze_focus", [<item:lightmanscurrency:coin_diamond>, <item:lightmanscurrency:coin_emerald>*5], <item:twilightforest:maze_map_focus>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_maze_focus2", [<item:lightmanscurrency:coin_diamond>, <item:lightmanscurrency:coin_emerald>*5], <item:twilightforest:maze_map_focus>, 5);

# Charms of Keeping -> Various Essenarium
# 500 for Tier 1, 4x each tier
<recipetype:thermal:pulverizer>.addRecipe("coinify_keeping_charm", [<item:lightmanscurrency:coin_gold>*5], <item:twilightforest:charm_of_keeping_1>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_keeping_charm2", [<item:lightmanscurrency:coin_gold>*5], <item:twilightforest:charm_of_keeping_1>, 5);

<recipetype:thermal:pulverizer>.addRecipe("coinify_silver_keeping_charm", [<item:lightmanscurrency:coin_emerald>*2], <item:twilightforest:charm_of_keeping_2>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_silver_keeping_charm2", [<item:lightmanscurrency:coin_emerald>*2], <item:twilightforest:charm_of_keeping_2>, 5);

<recipetype:thermal:pulverizer>.addRecipe("coinify_gold_keeping_charm", [<item:lightmanscurrency:coin_emerald>*8], <item:twilightforest:charm_of_keeping_3>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_gold_keeping_charm2", [<item:lightmanscurrency:coin_emerald>*8], <item:twilightforest:charm_of_keeping_3>, 5);

# Charms of Life -> Various Essenarium
# 2,500 for Tier 1, 4x each tier
<recipetype:thermal:pulverizer>.addRecipe("coinify_life_charm", [<item:lightmanscurrency:coin_emerald>*2, <item:lightmanscurrency:coin_gold>*5],<item:twilightforest:charm_of_life_1>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_life_charm2", [<item:lightmanscurrency:coin_emerald>*2, <item:lightmanscurrency:coin_gold>*5], <item:twilightforest:charm_of_life_1>, 5);

<recipetype:thermal:pulverizer>.addRecipe("coinify_gold_life_charm", [<item:lightmanscurrency:coin_diamond>],<item:twilightforest:charm_of_life_2>, 0, 3000);
<recipetype:create:crushing>.addRecipe("coinify_gold_life_charm2", [<item:lightmanscurrency:coin_diamond>], <item:twilightforest:charm_of_life_2>, 5);

print("coinification.zs loaded");