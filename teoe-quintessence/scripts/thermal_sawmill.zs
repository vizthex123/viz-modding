# Adds recipes to saw various items

import crafttweaker.api.tag.MCTag;

/*
<recipetype:thermal:sawmill>.addRecipe(String name, MCWeightedItemStack[] outputs, IIngredient ingredient, int energy);

Average RF use is 1 - 2k
*/

print("thermal_sawmill.zs loading...");

// Beehive Beeswax
<recipetype:thermal:sawmill>.addRecipe("saw_beeswax", [<item:minecraft:honeycomb>*4 % 75, <item:minecraft:honey_bottle> % 50, <item:thermal:sawdust> % 100], <item:the_bumblezone:beehive_beeswax>, 2000);

// Glowsticks
<recipetype:thermal:sawmill>.addRecipe("saw_glowstick", [<item:thermal:sawdust> % 50, <item:minecraft:glow_ink_sac> % 50], <item:additionaladditions:glow_stick>, 1000);

// Ropes
<recipetype:thermal:sawmill>.addRecipe("saw_ropes", [<item:minecraft:string> % 50], <tag:items:teoe:rope>, 1000);

// Leads
<recipetype:thermal:sawmill>.addRecipe("saw_lead", [<item:minecraft:slime_ball> % 50, <item:minecraft:string>*2 % 100], <item:minecraft:lead>, 500);

// Item Frames
<recipetype:thermal:sawmill>.addRecipe("saw_item_frame", [<item:minecraft:stick>*4 % 100], <item:minecraft:item_frame>, 500);
<recipetype:thermal:sawmill>.addRecipe("saw_glow_item_frame", [<item:minecraft:stick>*4 % 100, <item:minecraft:glow_ink_sac> % 25], <item:minecraft:glow_item_frame>, 500);

// Armor Stands
<recipetype:thermal:sawmill>.addRecipe("saw_stand", [<item:minecraft:stick>*3 % 100, <item:minecraft:stick>*3 % 50], <item:minecraft:armor_stand>, 1000);

// Maps
<recipetype:thermal:sawmill>.addRecipe("saw_map", [<item:minecraft:paper>*4 % 50], <item:minecraft:map>|<item:minecraft:filled_map>, 1000);

// Saddles
<recipetype:thermal:sawmill>.addRecipe("saw_saddle", [<item:minecraft:leather>*4 % 75], <item:minecraft:saddle>, 1000);

// Name Tags
<recipetype:thermal:sawmill>.addRecipe("saw_name_tag", [<item:minecraft:paper>*3 % 75, <item:minecraft:string>*2 % 50], <item:minecraft:name_tag>, 1000);

// Leather Horse Armour
<recipetype:thermal:sawmill>.addRecipe("saw_horse_armour", [<item:minecraft:leather>*3 % 100, <item:minecraft:leather>*3 % 50], <item:minecraft:leather_horse_armor>, 3000);

// Banners
<recipetype:thermal:sawmill>.addRecipe("saw_banners", [<item:minecraft:string>*12 % 100, <item:minecraft:string>*6 % 50, <item:thermal:sawdust> % 50], <tag:items:minecraft:banners>, 1000);

// Lore Fragments
<recipetype:thermal:sawmill>.addRecipe("saw_fragments", [<item:minecraft:paper>*2 % 50, <item:minecraft:stick> % 100], <item:enigmaticlegacy:lore_fragment>, 1000);

// Blank Scrolls
<recipetype:thermal:sawmill>.addRecipe("saw_scrolls", [<item:minecraft:paper>*2 % 50, <item:minecraft:paper> % 50, <item:minecraft:stick> % 100], <item:enigmaticlegacy:thicc_scroll>, 1000);

// Saw (written) books (& quills)
<recipetype:thermal:sawmill>.addRecipe("saw_book", [<item:minecraft:paper>*2 % 75, <item:minecraft:leather> % 35], <item:minecraft:book>, 2000);
<recipetype:thermal:sawmill>.addRecipe("saw_book_and_quill", [<item:minecraft:paper>*2 % 75, <item:minecraft:leather> % 35, <item:minecraft:feather> % 25], <item:minecraft:writable_book>, 2000);
<recipetype:thermal:sawmill>.addRecipe("saw_written_book", [<item:minecraft:paper>*2 % 75, <item:minecraft:leather> % 35], <item:minecraft:written_book>, 2000);

// Saw Wool into String
<recipetype:thermal:sawmill>.addRecipe("saw_wool", [<item:minecraft:string>*2 % 100, <item:minecraft:string>*2 % 50], <tag:items:minecraft:wool>, 1000);

// Saw TNT
<recipetype:thermal:sawmill>.addRecipe("saw_tnt", [<item:minecraft:sand>*2 % 100, <item:minecraft:gunpowder>*3 % 50], <item:minecraft:tnt>, 2000);


# Hats
// Conjurer
<recipetype:thermal:sawmill>.addRecipe("saw_conjurer_hat", [<item:minecraft:leather>*2 % 100, <item:minecraft:leather> % 50], <item:conjurer_illager:conjurer_hat>, 1000);

// Forgotten
<recipetype:thermal:sawmill>.addRecipe("saw_forgotten_hat", [<item:minecraft:leather>*5 % 100, <item:minecraft:string>*3 % 50], <item:quark:forgotten_hat>, 1000);


# Shelves & Card Displays
<recipetype:thermal:sawmill>.addRecipe("saw_shelf", [<item:thermal:sawdust>*4 % 100], <tag:items:lightmanscurrency:shelf>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_card_display", [<item:thermal:sawdust>*16 % 100], <tag:items:lightmanscurrency:card_display>, 1000);

# Saw carpets into string
<recipetype:thermal:sawmill>.addRecipe("saw_carpets", [<item:minecraft:string>*2 % 100, <item:minecraft:string>*2 % 50], <tag:items:minecraft:carpets>, 500);

# Saw beds into sawdust and string
<recipetype:thermal:sawmill>.addRecipe("saw_beds", [<item:thermal:sawdust>*4 % 100, <item:minecraft:string>*4 % 100, <item:minecraft:string>*4 % 50, <item:minecraft:string>*2 % 25], <tag:items:minecraft:beds>, 2000);

/*
# Saw Carpets into String
# This took too long to re-write
<recipetype:thermal:sawmill>.addRecipe("saw_white_carpet", [<item:minecraft:string>*2 % 100, <item:minecraft:string>*2 % 50], <item:minecraft:white_carpet>, 500);
<recipetype:thermal:sawmill>.addRecipe("saw_orange_carpet", [<item:minecraft:string>*2 % 100, <item:minecraft:string>*2 % 50], <item:minecraft:orange_carpet>, 500);
<recipetype:thermal:sawmill>.addRecipe("saw_magenta_carpet", [<item:minecraft:string>*2 % 100, <item:minecraft:string>*2 % 50], <item:minecraft:magenta_carpet>, 500);
<recipetype:thermal:sawmill>.addRecipe("saw_light_blue_carpet", [<item:minecraft:string>*2 % 100, <item:minecraft:string>*2 % 50], <item:minecraft:light_blue_carpet>, 500);
<recipetype:thermal:sawmill>.addRecipe("saw_yellow_carpet", [<item:minecraft:string>*2 % 100, <item:minecraft:string>*2 % 50], <item:minecraft:yellow_carpet>, 500);
<recipetype:thermal:sawmill>.addRecipe("saw_lime_carpet", [<item:minecraft:string>*2 % 100, <item:minecraft:string>*2 % 50], <item:minecraft:lime_carpet>, 500);
<recipetype:thermal:sawmill>.addRecipe("saw_pink_carpet", [<item:minecraft:string>*2 % 100, <item:minecraft:string>*2 % 50], <item:minecraft:pink_carpet>, 500);
<recipetype:thermal:sawmill>.addRecipe("saw_gray_carpet", [<item:minecraft:string>*2 % 100, <item:minecraft:string>*2 % 50], <item:minecraft:gray_carpet>, 500);
<recipetype:thermal:sawmill>.addRecipe("saw_light_gray_carpet", [<item:minecraft:string>*2 % 100, <item:minecraft:string>*2 % 50], <item:minecraft:light_gray_carpet>, 500);
<recipetype:thermal:sawmill>.addRecipe("saw_cyan_carpet", [<item:minecraft:string>*2 % 100, <item:minecraft:string>*2 % 50], <item:minecraft:cyan_carpet>, 500);
<recipetype:thermal:sawmill>.addRecipe("saw_purple_carpet", [<item:minecraft:string>*2 % 100, <item:minecraft:string>*2 % 50], <item:minecraft:purple_carpet>, 500);
<recipetype:thermal:sawmill>.addRecipe("saw_blue_carpet", [<item:minecraft:string>*2 % 100, <item:minecraft:string>*2 % 50], <item:minecraft:blue_carpet>, 500);
<recipetype:thermal:sawmill>.addRecipe("saw_brown_carpet", [<item:minecraft:string>*2 % 100, <item:minecraft:string>*2 % 50], <item:minecraft:brown_carpet>, 500);
<recipetype:thermal:sawmill>.addRecipe("saw_green_carpet", [<item:minecraft:string>*2 % 100, <item:minecraft:string>*2 % 50], <item:minecraft:green_carpet>, 500);
<recipetype:thermal:sawmill>.addRecipe("saw_red_carpet", [<item:minecraft:string>*2 % 100, <item:minecraft:string>*2 % 50], <item:minecraft:red_carpet>, 500);
<recipetype:thermal:sawmill>.addRecipe("saw_black_carpet", [<item:minecraft:string>*2 % 100, <item:minecraft:string>*2 % 50], <item:minecraft:black_carpet>, 500);
*/

/*
# Saw beds into Sawdust and String
# Please send help
<recipetype:thermal:sawmill>.addRecipe("saw_white_bed", [<item:thermal:sawdust> % 50, <item:minecraft:string>*4 % 50, <item:minecraft:string>*2 % 50], <item:minecraft:white_bed>, 2000);
<recipetype:thermal:sawmill>.addRecipe("saw_orange_bed", [<item:thermal:sawdust> % 50, <item:minecraft:string>*4 % 50, <item:minecraft:string>*2 % 50], <item:minecraft:orange_bed>, 2000);
<recipetype:thermal:sawmill>.addRecipe("saw_magenta_bed", [<item:thermal:sawdust> % 50, <item:minecraft:string>*4 % 50, <item:minecraft:string>*2 % 50], <item:minecraft:magenta_bed>, 2000);
<recipetype:thermal:sawmill>.addRecipe("saw_light_blue_bed", [<item:thermal:sawdust> % 50, <item:minecraft:string>*4 % 50, <item:minecraft:string>*2 % 50], <item:minecraft:light_blue_bed>, 2000);
<recipetype:thermal:sawmill>.addRecipe("saw_yellow_bed", [<item:thermal:sawdust> % 50, <item:minecraft:string>*4 % 50, <item:minecraft:string>*2 % 50], <item:minecraft:yellow_bed>, 2000);
<recipetype:thermal:sawmill>.addRecipe("saw_lime_bed", [<item:thermal:sawdust> % 50, <item:minecraft:string>*4 % 50, <item:minecraft:string>*2 % 50], <item:minecraft:lime_bed>, 2000);
<recipetype:thermal:sawmill>.addRecipe("saw_pink_bed", [<item:thermal:sawdust> % 50, <item:minecraft:string>*4 % 50, <item:minecraft:string>*2 % 50], <item:minecraft:pink_bed>, 2000);
<recipetype:thermal:sawmill>.addRecipe("saw_gray_bed", [<item:thermal:sawdust> % 50, <item:minecraft:string>*4 % 50, <item:minecraft:string>*2 % 50], <item:minecraft:gray_bed>, 2000);
<recipetype:thermal:sawmill>.addRecipe("saw_light_gray_bed", [<item:thermal:sawdust> % 50, <item:minecraft:string>*4 % 50, <item:minecraft:string>*2 % 50], <item:minecraft:light_gray_bed>, 2000);
<recipetype:thermal:sawmill>.addRecipe("saw_cyan_bed", [<item:thermal:sawdust> % 50, <item:minecraft:string>*4 % 50, <item:minecraft:string>*2 % 50], <item:minecraft:cyan_bed>, 2000);
<recipetype:thermal:sawmill>.addRecipe("saw_purple_bed", [<item:thermal:sawdust> % 50, <item:minecraft:string>*4 % 50, <item:minecraft:string>*2 % 50], <item:minecraft:purple_bed>, 2000);
<recipetype:thermal:sawmill>.addRecipe("saw_blue_bed", [<item:thermal:sawdust> % 50, <item:minecraft:string>*4 % 50, <item:minecraft:string>*2 % 50], <item:minecraft:blue_bed>, 2000);
<recipetype:thermal:sawmill>.addRecipe("saw_brown_bed", [<item:thermal:sawdust> % 50, <item:minecraft:string>*4 % 50, <item:minecraft:string>*2 % 50], <item:minecraft:brown_bed>, 2000);
<recipetype:thermal:sawmill>.addRecipe("saw_green_bed", [<item:thermal:sawdust> % 50, <item:minecraft:string>*4 % 50, <item:minecraft:string>*2 % 50], <item:minecraft:green_bed>, 2000);
<recipetype:thermal:sawmill>.addRecipe("saw_red_bed", [<item:thermal:sawdust> % 50, <item:minecraft:string>*4 % 50, <item:minecraft:string>*2 % 50], <item:minecraft:red_bed>, 2000);
<recipetype:thermal:sawmill>.addRecipe("saw_black_bed", [<item:thermal:sawdust> % 50, <item:minecraft:string>*4 % 50, <item:minecraft:string>*2 % 50], <item:minecraft:black_bed>, 2000);
*/

# Saw modded woods
<recipetype:thermal:sawmill>.addRecipe("saw_livingwood", [<item:botania:livingwood_planks>*6 % 100, <item:thermal:sawdust> % 25], <tag:items:botania:livingwood_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_dreamwood", [<item:botania:dreamwood_planks>*6 % 100, <item:thermal:sawdust> % 25], <tag:items:botania:dreamwood_logs>, 1000);

<recipetype:thermal:sawmill>.addRecipe("saw_aspen", [<item:byg:aspen_planks>*6 % 100, <item:thermal:sawdust> % 25], <tag:items:byg:aspen_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_baobab", [<item:byg:baobab_planks>*6 % 100, <item:thermal:sawdust> % 25], <tag:items:byg:baobab_logs>, 1000);

<recipetype:thermal:sawmill>.addRecipe("saw_blue_enchanted", [<item:byg:blue_enchanted_planks>*6 % 100, <item:thermal:sawdust> % 25], <tag:items:byg:blue_enchanted_logs>, 1000);
/* eh, i'l finish it later
<recipetype:thermal:sawmill>.addRecipe("saw_aspen", [<item:byg:aspen_planks>*6 % 100, <item:thermal:sawdust> % 25], <tag:items:byg:aspen_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_aspen", [<item:byg:aspen_planks>*6 % 100, <item:thermal:sawdust> % 25], <tag:items:byg:aspen_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_aspen", [<item:byg:aspen_planks>*6 % 100, <item:thermal:sawdust> % 25], <tag:items:byg:aspen_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_aspen", [<item:byg:aspen_planks>*6 % 100, <item:thermal:sawdust> % 25], <tag:items:byg:aspen_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_aspen", [<item:byg:aspen_planks>*6 % 100, <item:thermal:sawdust> % 25], <tag:items:byg:aspen_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_aspen", [<item:byg:aspen_planks>*6 % 100, <item:thermal:sawdust> % 25], <tag:items:byg:aspen_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_aspen", [<item:byg:aspen_planks>*6 % 100, <item:thermal:sawdust> % 25], <tag:items:byg:aspen_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_aspen", [<item:byg:aspen_planks>*6 % 100, <item:thermal:sawdust> % 25], <tag:items:byg:aspen_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_aspen", [<item:byg:aspen_planks>*6 % 100, <item:thermal:sawdust> % 25], <tag:items:byg:aspen_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_aspen", [<item:byg:aspen_planks>*6 % 100, <item:thermal:sawdust> % 25], <tag:items:byg:aspen_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_aspen", [<item:byg:aspen_planks>*6 % 100, <item:thermal:sawdust> % 25], <tag:items:byg:aspen_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_aspen", [<item:byg:aspen_planks>*6 % 100, <item:thermal:sawdust> % 25], <tag:items:byg:aspen_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_aspen", [<item:byg:aspen_planks>*6 % 100, <item:thermal:sawdust> % 25], <tag:items:byg:aspen_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_aspen", [<item:byg:aspen_planks>*6 % 100, <item:thermal:sawdust> % 25], <tag:items:byg:aspen_logs>, 1000);
*/

print("thermal_sawmill.zs loaded");