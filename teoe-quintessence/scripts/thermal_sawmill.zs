# Adds recipes to saw various items
# If they only give Sawdust, they'll be in sawdust.zs

import crafttweaker.api.tag.MCTag;

/*
<recipetype:thermal:sawmill>.addRecipe(String name, MCWeightedItemStack[] outputs, IIngredient ingredient, int energy);

<recipetype:create:cutting>.addRecipe(String name, IItemStack output, IIngredient input, @Optional(100) int duration);

Average RF use is 1 - 2k
*/

print("thermal_sawmill.zs loading...");

val sawdust = <item:thermal:sawdust>;

// Bowls
<recipetype:thermal:sawmill>.addRecipe("saw_bowl", [sawdust], <item:minecraft:bowl>, 500);

<recipetype:create:cutting>.addRecipe("mech_saw_bowl", sawdust, <item:minecraft:bowl>, 1);

// (Cross)Bows
<recipetype:thermal:sawmill>.addRecipe("saw_bow", [<item:minecraft:string>*2, <item:minecraft:stick>*2 % 75], <item:minecraft:bow>, 500);
<recipetype:thermal:sawmill>.addRecipe("saw_crossbow", [<item:minecraft:string>*2, <item:minecraft:stick>*2 % 75, <item:minecraft:iron_ingot> % 25], <item:minecraft:crossbow>|<item:additionaladditions:crossbow_with_spyglass>, 750);

<recipetype:create:cutting>.addRecipe("mech_saw_bow", sawdust*2, <item:minecraft:bow>, 1);
<recipetype:create:cutting>.addRecipe("mech_saw_crossbow", sawdust*4, <item:minecraft:crossbow>|<item:additionaladditions:crossbow_with_spyglass>, 1);

// Leads
<recipetype:thermal:sawmill>.addRecipe("saw_lead", [<item:minecraft:slime_ball> % 50, <item:minecraft:string>*2], <item:minecraft:lead>, 500);

// Maps
<recipetype:thermal:sawmill>.addRecipe("saw_map", [<item:minecraft:paper>*4], <item:minecraft:map>|<item:minecraft:filled_map>, 1000);

// Ropes
<recipetype:thermal:sawmill>.addRecipe("saw_ropes", [<item:minecraft:string> % 50], <tag:items:teoe:rope>, 1000);

// Saddles
<recipetype:thermal:sawmill>.addRecipe("saw_saddle", [<item:minecraft:leather>*4 % 75], <item:minecraft:saddle>, 1000);

// Name Tags
<recipetype:thermal:sawmill>.addRecipe("saw_name_tag", [<item:minecraft:paper>*3 % 75, <item:minecraft:string>*2 % 50], <item:minecraft:name_tag>, 1000);

// Armour Stands
<recipetype:thermal:sawmill>.addRecipe("saw_stand", [<item:thermal:sawdust> % 50, <item:minecraft:stick>*3], <item:minecraft:armor_stand>, 1000);

<recipetype:create:cutting>.addRecipe("mech_saw_stand", <item:thermal:sawdust>, <item:minecraft:armor_stand>, 3);

// Banners
<recipetype:thermal:sawmill>.addRecipe("saw_banners", [<item:minecraft:string>*12, <item:minecraft:string>*6 % 50, <item:thermal:sawdust> % 50], <tag:items:minecraft:banners>, 1000);

// Lore Fragments
<recipetype:thermal:sawmill>.addRecipe("saw_fragments", [<item:minecraft:paper>*2 % 50, <item:minecraft:stick>], <item:enigmaticlegacy:lore_fragment>, 1000);

// Blank Scrolls
<recipetype:thermal:sawmill>.addRecipe("saw_scrolls", [<item:thermal:sawdust> % 25, <item:minecraft:paper>*2 % 50, <item:minecraft:paper> % 50], <item:enigmaticlegacy:thicc_scroll>, 1000);

// Saw (written) books (& quills)
<recipetype:thermal:sawmill>.addRecipe("saw_book", [<item:minecraft:paper>*2 % 75, <item:minecraft:leather> % 35], <item:minecraft:book>, 2000);
<recipetype:thermal:sawmill>.addRecipe("saw_book_and_quill", [<item:minecraft:paper>*2 % 75, <item:minecraft:leather> % 35, <item:minecraft:feather> % 25], <item:minecraft:writable_book>, 2000);
<recipetype:thermal:sawmill>.addRecipe("saw_written_book", [<item:minecraft:paper>*2 % 75, <item:minecraft:leather> % 35], <item:minecraft:written_book>, 2000);

// Saw TNT
<recipetype:thermal:sawmill>.addRecipe("saw_tnt", [<item:minecraft:sand>*2, <item:minecraft:gunpowder>*3 % 50], <item:minecraft:tnt>, 2000);

// Beehive Beeswax
<recipetype:thermal:sawmill>.addRecipe("saw_beeswax", [<item:minecraft:honeycomb>*4 % 75, <item:minecraft:honey_bottle> % 50, <item:thermal:sawdust>], <item:the_bumblezone:beehive_beeswax>, 2000);

// Glowsticks
<recipetype:thermal:sawmill>.addRecipe("saw_glowstick", [<item:thermal:sawdust> % 50, <item:minecraft:glow_ink_sac> % 50], <item:additionaladditions:glow_stick>, 1000);

// Item Frames
<recipetype:thermal:sawmill>.addRecipe("saw_item_frame", [<item:thermal:sawdust>], <item:minecraft:item_frame>, 500);
<recipetype:thermal:sawmill>.addRecipe("saw_glow_item_frame", [<item:thermal:sawdust>, <item:minecraft:glow_ink_sac> % 25], <item:minecraft:glow_item_frame>, 500);

# Leather Armour
// Horse
<recipetype:thermal:sawmill>.addRecipe("saw_horse_armour", [<item:minecraft:leather>*3, <item:minecraft:leather>*2 % 50], <item:minecraft:leather_horse_armor>, 3000);

<recipetype:create:cutting>.addRecipe("mech_saw_horse_armour", <item:minecraft:leather>*5, <item:minecraft:leather_horse_armor>, 3);

// Helmet
<recipetype:thermal:sawmill>.addRecipe("saw_leather_helmet", [<item:minecraft:leather>*2, <item:minecraft:leather> % 50], <item:minecraft:leather_helmet>, 3000);

<recipetype:create:cutting>.addRecipe("mech_saw_leather_helmet", <item:minecraft:leather>*3, <item:minecraft:leather_helmet>, 3);

// Chestplate
<recipetype:thermal:sawmill>.addRecipe("saw_leather_chestplate", [<item:minecraft:leather>*4], <item:minecraft:leather_chestplate>, 3000);

<recipetype:create:cutting>.addRecipe("mech_saw_leather_chestplate", <item:minecraft:leather>*5, <item:minecraft:leather_chestplate>, 3);

// Leggings
<recipetype:thermal:sawmill>.addRecipe("saw_leather_leggings", [<item:minecraft:leather>*3, <item:minecraft:leather> % 50], <item:minecraft:leather_leggings>, 3000);

<recipetype:create:cutting>.addRecipe("mech_saw_leather_leggings", <item:minecraft:leather>*4, <item:minecraft:leather_leggings>, 3);

// Boots
<recipetype:thermal:sawmill>.addRecipe("saw_leather_boots", [<item:minecraft:leather>*2], <item:minecraft:leather_boots>, 3000);

<recipetype:create:cutting>.addRecipe("mech_saw_leather_boots", <item:minecraft:leather>*2, <item:minecraft:leather_boots>, 3);


# Hats
// Conjurer
<recipetype:thermal:sawmill>.addRecipe("saw_conjurer_hat", [<item:minecraft:leather>*2, <item:minecraft:leather> % 50], <item:conjurer_illager:conjurer_hat>, 1000);

// Forgotten
<recipetype:thermal:sawmill>.addRecipe("saw_forgotten_hat", [<item:minecraft:leather>*5, <item:minecraft:string>*3 % 50], <item:quark:forgotten_hat>, 1000);


# Saw carpets into string
<recipetype:thermal:sawmill>.addRecipe("saw_carpets", [<item:minecraft:string>*2, <item:minecraft:string>*2 % 50], <tag:items:minecraft:carpets>, 500);

# Saw beds into sawdust and string
<recipetype:thermal:sawmill>.addRecipe("saw_beds", [<item:thermal:sawdust>*4, <item:minecraft:string>*4, <item:minecraft:string>*4 % 50, <item:minecraft:string>*2 % 25], <tag:items:minecraft:beds>, 2000);

# Shelves & Card Displays
<recipetype:thermal:sawmill>.addRecipe("saw_shelf", [<item:thermal:sawdust>*4], <tag:items:lightmanscurrency:shelf>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_card_display", [<item:thermal:sawdust>*16], <tag:items:lightmanscurrency:card_display>, 1000);



# Saw modded woods
<recipetype:thermal:sawmill>.addRecipe("saw_livingwood", [<item:botania:livingwood_planks>*6, <item:thermal:sawdust> % 25], <tag:items:botania:livingwood_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_dreamwood", [<item:botania:dreamwood_planks>*6, <item:thermal:sawdust> % 25], <tag:items:botania:dreamwood_logs>, 1000);



<recipetype:thermal:sawmill>.addRecipe("saw_aspen", [<item:byg:aspen_planks>*6, <item:thermal:sawdust> % 25], <tag:items:byg:aspen_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_baobab", [<item:byg:baobab_planks>*6, <item:thermal:sawdust> % 25], <tag:items:byg:baobab_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_blue_enchanted", [<item:byg:blue_enchanted_planks>*6, <item:thermal:sawdust> % 25], <tag:items:byg:blue_enchanted_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_bulbis", [<item:byg:bulbis_planks>*6, <item:thermal:sawdust> % 25], <tag:items:byg:bulbis_stems>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_cherry", [<item:byg:cherry_planks>*6, <item:thermal:sawdust> % 25], <tag:items:byg:cherry_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_cika", [<item:byg:cika_planks>*6, <item:thermal:sawdust> % 25], <tag:items:byg:cika_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_cypress", [<item:byg:cypress_planks>*6, <item:thermal:sawdust> % 25], <tag:items:byg:cypress_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_ebony", [<item:byg:ebony_planks>*6, <item:thermal:sawdust> % 25], <tag:items:byg:ebony_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_ether", [<item:byg:ether_planks>*6, <item:thermal:sawdust> % 25], <tag:items:byg:ether_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_fir", [<item:byg:fir_planks>*6, <item:thermal:sawdust> % 25], <tag:items:byg:fir_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_green_enchanted", [<item:byg:green_enchanted_planks>*6, <item:thermal:sawdust> % 25], <tag:items:byg:green_enchanted_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_holly", [<item:byg:holly_planks>*6, <item:thermal:sawdust> % 25], <tag:items:byg:holly_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_imparius", [<item:byg:imparius_planks>*6, <item:thermal:sawdust> % 25], <tag:items:byg:imparius_stems>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_jacaranda", [<item:byg:jacaranda_planks>*6, <item:thermal:sawdust> % 25], <tag:items:byg:jacaranda_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_lament", [<item:byg:lament_planks>*6, <item:thermal:sawdust> % 25], <tag:items:byg:lament_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_mahogany", [<item:byg:mahogany_planks>*6, <item:thermal:sawdust> % 25], <tag:items:byg:mahogany_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_mangrove", [<item:byg:mangrove_planks>*6, <item:thermal:sawdust> % 25], <tag:items:byg:mangrove_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_maple", [<item:byg:maple_planks>*6, <item:thermal:sawdust> % 25], <tag:items:byg:maple_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_nightshade", [<item:byg:nightshade_planks>*6, <item:thermal:sawdust> % 25], <tag:items:byg:nightshade_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_palm", [<item:byg:palm_planks>*6, <item:thermal:sawdust> % 25], <tag:items:byg:palm_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_palo_verde", [<item:minecraft:birch_planks>*6, <item:thermal:sawdust> % 25], <tag:items:byg:palo_verde_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_pine", [<item:byg:pine_planks>*6, <item:thermal:sawdust> % 25], <tag:items:byg:pine_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_rainbow_eucalyptus", [<item:byg:rainbow_eucalyptus_planks>*6, <item:thermal:sawdust> % 25], <tag:items:byg:rainbow_eucalyptus_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_redwood", [<item:byg:redwood_planks>*6, <item:thermal:sawdust> % 25], <tag:items:byg:redwood_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_skyris", [<item:byg:skyris_planks>*6, <item:thermal:sawdust> % 25], <tag:items:byg:skyris_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_willow", [<item:byg:willow_planks>*6, <item:thermal:sawdust> % 25], <tag:items:byg:willow_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_witch_hazel", [<item:byg:witch_hazel_planks>*6, <item:thermal:sawdust> % 25], <tag:items:byg:witch_hazel_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_zelkova", [<item:byg:zelkova_planks>*6, <item:thermal:sawdust> % 25], <tag:items:byg:zelkova_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_withering_oak", [<item:minecraft:oak_planks>*3 % 75, <item:thermal:sawdust>*2 % 50], <tag:items:byg:withering_oak_logs>, 1000);



<recipetype:thermal:sawmill>.addRecipe("saw_twilight_oak", [<item:twilightforest:twilight_oak_planks>*6, <item:thermal:sawdust> % 25], <tag:items:twilightforest:twilight_oak_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_canopy_wood", [<item:twilightforest:canopy_planks>*6, <item:thermal:sawdust> % 25], <tag:items:twilightforest:canopy_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_mangrove_tf", [<item:twilightforest:mangrove_planks>*6, <item:thermal:sawdust> % 25], <tag:items:twilightforest:mangrove_logs>, 1000);


<recipetype:thermal:sawmill>.addRecipe("saw_darkwood", [<item:twilightforest:dark_planks>*6, <item:thermal:sawdust> % 25], <tag:items:twilightforest:darkwood_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_timewood", [<item:twilightforest:time_planks>*6, <item:thermal:sawdust> % 25], <tag:items:twilightforest:timewood_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_transwood", [<item:twilightforest:transformation_planks>*6, <item:thermal:sawdust> % 25], <tag:items:twilightforest:transwood_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_minewood", [<item:twilightforest:mining_planks>*6, <item:thermal:sawdust> % 25], <tag:items:twilightforest:mining_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_sortingwood", [<item:twilightforest:sorting_planks>*6, <item:thermal:sawdust> % 25], <tag:items:twilightforest:sortwood_logs>, 1000);



<recipetype:thermal:sawmill>.addRecipe("saw_runewood", [<item:malum:runewood_planks>*6, <item:thermal:sawdust> % 25], <tag:items:malum:runewood_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_soulwood", [<item:malum:soulwood_planks>*6, <item:thermal:sawdust> % 25], <tag:items:malum:soulwood_logs>, 1000);

print("thermal_sawmill.zs loaded");