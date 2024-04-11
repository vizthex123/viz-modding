# Adds recipes to saw various items
# Script by vizthex
# https://www.curseforge.com/members/vizthex/projects
# v2.0 - made for 1.14+
/*
<recipetype:thermal:sawmill>.addRecipe(String name, MCWeightedItemStack[] outputs, IIngredient ingredient, int energy);

Average RF use is 1 or 2k
*/

print("sawable_items.zs loading...");

// Item Frames
<recipetype:thermal:sawmill>.addRecipe("saw_item_frame", [<item:minecraft:stick>*4 % 100], <item:minecraft:item_frame>, 500);
<recipetype:thermal:sawmill>.addRecipe("saw_glow_item_frame", [<item:minecraft:stick>*4 % 100, <item:minecraft:glow_ink_sac> % 25], <item:minecraft:glow_item_frame>, 750);

// Barrels
<recipetype:thermal:sawmill>.addRecipe("saw_barrels", [<item:thermal:sawdust>*4 % 50, <item:minecraft:stick>*2 % 100], <item:minecraft:barrel>, 1000);

// Chests
<recipetype:thermal:sawmill>.addRecipe("saw_chests", [<item:thermal:sawdust>*4 % 50, <item:minecraft:stick>*4 % 100], <tag:items:forge:chests/wooden>, 1000);

// Armor Stands
<recipetype:thermal:sawmill>.addRecipe("saw_stand", [<item:minecraft:stick>*3 % 100, <item:minecraft:stick>*3 % 50], <item:minecraft:armor_stand>, 1000);

// Maps
<recipetype:thermal:sawmill>.addRecipe("saw_map", [<item:minecraft:paper>*4 % 50], <item:minecraft:map>, 1000);

// Saddles
<recipetype:thermal:sawmill>.addRecipe("saw_saddle", [<item:minecraft:leather>*4 % 75], <item:minecraft:saddle>, 1000);

// Name Tags
<recipetype:thermal:sawmill>.addRecipe("saw_name_tag", [<item:minecraft:paper>*3 % 75, <item:minecraft:string>*2 % 50], <item:minecraft:name_tag>, 1000);

// Lecterns
<recipetype:thermal:sawmill>.addRecipe("saw_lectern", [<item:thermal:sawdust>*3 % 50, <item:minecraft:stick>*4 % 100], <item:minecraft:lectern>, 1000);

// Fletching Table
<recipetype:thermal:sawmill>.addRecipe("saw_fletching_table", [<item:thermal:sawdust>*2 % 50, <item:minecraft:flint> % 100], <item:minecraft:fletching_table>, 1000);

// Cartography Table
<recipetype:thermal:sawmill>.addRecipe("saw_cartography_table", [<item:thermal:sawdust>*2 % 50, <item:minecraft:paper> % 100], <item:minecraft:cartography_table>, 1000);

// Composter
<recipetype:thermal:sawmill>.addRecipe("saw_composter", [<item:thermal:sawdust>*4 % 50], <item:minecraft:composter>, 1000);

// Banners
<recipetype:thermal:sawmill>.addRecipe("saw_banners", [<item:minecraft:string>*4 % 50], <tag:items:minecraft:banners>, 1000);



// Saw signs into sticks
<recipetype:thermal:sawmill>.addRecipe("saw_signs", [<item:minecraft:stick>*4 % 75, <item:minecraft:stick>*2 % 50], <tag:items:minecraft:signs>, 1000);

// Saw (written) books (& quills)
<recipetype:thermal:sawmill>.addRecipe("saw_book", [<item:minecraft:paper>*2 % 75, <item:minecraft:leather> % 35], <item:minecraft:book>, 2000);
<recipetype:thermal:sawmill>.addRecipe("saw_book_and_quill", [<item:minecraft:paper>*2 % 75, <item:minecraft:leather> % 35, <item:minecraft:feather> % 25], <item:minecraft:writable_book>, 2000);
<recipetype:thermal:sawmill>.addRecipe("saw_written_book", [<item:minecraft:paper>*2 % 75, <item:minecraft:leather> % 35], <item:minecraft:written_book>, 2000);

// Saw Carpets into String
// This took too long to re-write
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

<recipetype:thermal:sawmill>.addRecipe("saw_cattail_carpet", [<item:byg:cattail_sprout>*2 % 100, <item:byg:cattail_sprout>*2 % 50], <item:byg:cattail_thatch_carpet>, 500);


// Saw beds into Sawdust and String
// Please send help
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

print("sawable_items.zs loaded");