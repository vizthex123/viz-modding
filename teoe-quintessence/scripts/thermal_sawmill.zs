# Adds recipes to saw valious items
# If they only give Sawdust, they'll be in sawdust.zs

import crafttweaker.api.tag.MCTag;

/*
<recipetype:thermal:sawmill>.addRecipe(String name, MCWeightedItemStack[] outputs, IIngredient ingredient, int energy);

<recipetype:create:cutting>.addRecipe(String name, IItemStack output, IIngredient input, @Optional(100) int duration);

Average RF use is 1 - 2k
*/

print("thermal_sawmill.zs loading...");

val sawdust = <item:thermal:sawdust>;
val leather = <item:minecraft:leather>;
val paper = <item:minecraft:paper>;
val mcstring = <item:minecraft:string>;
val stick = <item:minecraft:stick>;

// (Cross)Bows
<recipetype:thermal:sawmill>.addRecipe("saw_bow", [mcstring*2, stick*2 % 75], <item:minecraft:bow>, 500);
<recipetype:thermal:sawmill>.addRecipe("saw_crossbow", [mcstring*2, stick*2 % 75, <item:minecraft:iron_ingot> % 25], <item:minecraft:crossbow>|<item:additionaladditions:crossbow_with_spyglass>, 750);

<recipetype:create:cutting>.addRecipe("mech_saw_bow", sawdust, <item:minecraft:bow>, 1);
<recipetype:create:cutting>.addRecipe("mech_saw_crossbow", sawdust*2, <item:minecraft:crossbow>|<item:additionaladditions:crossbow_with_spyglass>, 1);

// Leads
<recipetype:thermal:sawmill>.addRecipe("saw_lead", [<item:minecraft:slime_ball> % 50, mcstring*2], <item:minecraft:lead>, 500);
<recipetype:create:cutting>.addRecipe("mech_saw_lead", mcstring*3, <item:minecraft:lead>, 1);

// Maps
<recipetype:thermal:sawmill>.addRecipe("saw_map", [paper*4], <item:minecraft:map>|<item:minecraft:filled_map>, 1000);
<recipetype:create:cutting>.addRecipe("mech_saw_map", paper*4,<item:minecraft:map>|<item:minecraft:filled_map>, 2);

// Ropes
<recipetype:thermal:sawmill>.addRecipe("saw_ropes", [mcstring % 50], <tag:items:teoe:rope>, 1000);

// Saddles
<recipetype:thermal:sawmill>.addRecipe("saw_saddle", [leather*4 % 75], <item:minecraft:saddle>, 1000);
<recipetype:create:cutting>.addRecipe("mech_saw_saddle", paper*3,<item:minecraft:saddle>, 2);

// Name Tags
<recipetype:thermal:sawmill>.addRecipe("saw_name_tag", [paper*3 % 75, mcstring*2 % 50], <item:minecraft:name_tag>, 1000);
<recipetype:create:cutting>.addRecipe("mech_saw_name_tag", paper*3,<item:minecraft:name_tag>, 2);

// Armour Stands
<recipetype:thermal:sawmill>.addRecipe("saw_stand", [sawdust % 50, stick*3], <item:minecraft:armor_stand>, 1000);
<recipetype:create:cutting>.addRecipe("mech_saw_stand", sawdust, <item:minecraft:armor_stand>, 2);

// Banners
<recipetype:thermal:sawmill>.addRecipe("saw_banners", [mcstring*12, mcstring*6 % 50, sawdust % 50], <tag:items:minecraft:banners>, 1000);
<recipetype:create:cutting>.addRecipe("mech_saw_stand", mcstring*12, <tag:items:minecraft:banners>, 2);

// Lore Fragments
<recipetype:thermal:sawmill>.addRecipe("saw_fragment", [paper*2 % 50, stick], <item:enigmaticlegacy:lore_fragment>, 1000);
<recipetype:create:cutting>.addRecipe("mech_saw_fragment", paper, <item:enigmaticlegacy:lore_fragment>, 2);

// Blank Scrolls
<recipetype:thermal:sawmill>.addRecipe("saw_scroll", [sawdust % 25, paper*2 % 50, paper], <item:enigmaticlegacy:thicc_scroll>, 1000);
<recipetype:create:cutting>.addRecipe("mech_saw_scroll", paper, <item:enigmaticlegacy:thicc_scroll>, 2);

// Saw (written) books (& quills)
<recipetype:thermal:sawmill>.addRecipe("saw_book", [paper*2 % 75, leather % 35], <item:minecraft:book>, 2000);
<recipetype:thermal:sawmill>.addRecipe("saw_book_and_quill", [paper*2 % 75, leather % 35, <item:minecraft:feather> % 25], <item:minecraft:writable_book>, 2000);
<recipetype:thermal:sawmill>.addRecipe("saw_written_book", [paper*2 % 75, leather % 35], <item:minecraft:written_book>, 2000);

<recipetype:create:cutting>.addRecipe("mech_saw_books", leather, <item:minecraft:book>|<item:minecraft:writable_book>|<item:minecraft:written_book>, 4);

// Saw TNT
<recipetype:thermal:sawmill>.addRecipe("saw_tnt", [<item:minecraft:sand>*2, <item:minecraft:gunpowder>*3 % 50], <item:minecraft:tnt>, 2000);
<recipetype:create:cutting>.addRecipe("mech_saw_tnt", <item:minecraft:gunpowder>*2, <item:minecraft:tnt>, 4);

// Saw Beehive Beeswax
<recipetype:thermal:sawmill>.addRecipe("saw_beeswax", [<item:minecraft:honeycomb>*4 % 75, <item:minecraft:honey_bottle> % 50, sawdust*2], <item:the_bumblezone:beehive_beeswax>, 2000);
<recipetype:create:cutting>.addRecipe("mech_saw_beeswax", sawdust*2, <item:the_bumblezone:beehive_beeswax>, 4);

// Glowsticks
<recipetype:thermal:sawmill>.addRecipe("saw_glowstick", [sawdust % 50, <item:minecraft:glow_ink_sac> % 50], <item:additionaladditions:glow_stick>, 1000);

// Item Frames
<recipetype:thermal:sawmill>.addRecipe("saw_item_frame", [sawdust], <item:minecraft:item_frame>, 500);
<recipetype:thermal:sawmill>.addRecipe("saw_glow_item_frame", [sawdust, <item:minecraft:glow_ink_sac> % 25], <item:minecraft:glow_item_frame>, 500);
<recipetype:create:cutting>.addRecipe("mech_saw_item_frames", sawdust, <item:minecraft:item_frame>|<item:minecraft:glow_item_frame>, 1);

# Leather Armour
// Horse
<recipetype:thermal:sawmill>.addRecipe("saw_horse_armour", [leather*3, leather*2 % 50], <item:minecraft:leather_horse_armor>, 3000);
<recipetype:create:cutting>.addRecipe("mech_saw_horse_armour", leather*5, <item:minecraft:leather_horse_armor>, 3);

// Helmet
<recipetype:thermal:sawmill>.addRecipe("saw_leather_helmet", [leather*2, leather % 50], <item:minecraft:leather_helmet>, 3000);
<recipetype:create:cutting>.addRecipe("mech_saw_leather_helmet", leather*3, <item:minecraft:leather_helmet>, 3);

// Chestplate
<recipetype:thermal:sawmill>.addRecipe("saw_leather_chestplate", [leather*4], <item:minecraft:leather_chestplate>, 3000);
<recipetype:create:cutting>.addRecipe("mech_saw_leather_chestplate", leather*5, <item:minecraft:leather_chestplate>, 3);

// Leggings
<recipetype:thermal:sawmill>.addRecipe("saw_leather_leggings", [leather*3, leather % 50], <item:minecraft:leather_leggings>, 3000);
<recipetype:create:cutting>.addRecipe("mech_saw_leather_leggings", leather*4, <item:minecraft:leather_leggings>, 3);

// Boots
<recipetype:thermal:sawmill>.addRecipe("saw_leather_boots", [leather*2], <item:minecraft:leather_boots>, 3000);
<recipetype:create:cutting>.addRecipe("mech_saw_leather_boots", leather*2, <item:minecraft:leather_boots>, 3);


# Hats
// Conjurer
<recipetype:thermal:sawmill>.addRecipe("saw_conjurer_hat", [leather*2, leather % 50], <item:conjurer_illager:conjurer_hat>, 1000);
<recipetype:create:cutting>.addRecipe("mech_saw_conjurer_hat", leather*2, <item:conjurer_illager:conjurer_hat>, 2);

// Forgotten
<recipetype:thermal:sawmill>.addRecipe("saw_forgotten_hat", [leather*5, mcstring*3 % 50], <item:quark:forgotten_hat>, 1000);
<recipetype:create:cutting>.addRecipe("mech_saw_forgotten_hat", leather*5, <item:quark:forgotten_hat>, 2);


# Saw carpets into mcstring
<recipetype:thermal:sawmill>.addRecipe("saw_carpets", [mcstring*2, mcstring*2 % 50], <tag:items:minecraft:carpets>, 500);
<recipetype:create:cutting>.addRecipe("mech_saw_carpets", mcstring*2, <tag:items:minecraft:carpets>, 1);

# Saw beds into sawdust and mcstring
<recipetype:thermal:sawmill>.addRecipe("saw_beds", [sawdust*3, mcstring*4, mcstring*4 % 50, mcstring*2 % 25], <tag:items:minecraft:beds>, 2000);
<recipetype:create:cutting>.addRecipe("mech_saw_beds", sawdust*3, <tag:items:minecraft:beds>, 4);



# Saw modded woods
<recipetype:thermal:sawmill>.addRecipe("saw_livingwood", [<item:botania:livingwood_planks>*6, sawdust % 25], <tag:items:botania:livingwood_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_dreamwood", [<item:botania:dreamwood_planks>*6, sawdust % 25], <tag:items:botania:dreamwood_logs>, 1000);



<recipetype:thermal:sawmill>.addRecipe("saw_aspen", [<item:byg:aspen_planks>*6, sawdust % 25], <tag:items:byg:aspen_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_baobab", [<item:byg:baobab_planks>*6, sawdust % 25], <tag:items:byg:baobab_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_blue_enchanted", [<item:byg:blue_enchanted_planks>*6, sawdust % 25], <tag:items:byg:blue_enchanted_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_bulbis", [<item:byg:bulbis_planks>*6, sawdust % 25], <tag:items:byg:bulbis_stems>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_cherry", [<item:byg:cherry_planks>*6, sawdust % 25], <tag:items:byg:cherry_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_cika", [<item:byg:cika_planks>*6, sawdust % 25], <tag:items:byg:cika_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_cypress", [<item:byg:cypress_planks>*6, sawdust % 25], <tag:items:byg:cypress_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_ebony", [<item:byg:ebony_planks>*6, sawdust % 25], <tag:items:byg:ebony_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_ether", [<item:byg:ether_planks>*6, sawdust % 25], <tag:items:byg:ether_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_fir", [<item:byg:fir_planks>*6, sawdust % 25], <tag:items:byg:fir_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_green_enchanted", [<item:byg:green_enchanted_planks>*6, sawdust % 25], <tag:items:byg:green_enchanted_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_holly", [<item:byg:holly_planks>*6, sawdust % 25], <tag:items:byg:holly_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_imparius", [<item:byg:imparius_planks>*6, sawdust % 25], <tag:items:byg:imparius_stems>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_jacaranda", [<item:byg:jacaranda_planks>*6, sawdust % 25], <tag:items:byg:jacaranda_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_lament", [<item:byg:lament_planks>*6, sawdust % 25], <tag:items:byg:lament_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_mahogany", [<item:byg:mahogany_planks>*6, sawdust % 25], <tag:items:byg:mahogany_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_mangrove", [<item:byg:mangrove_planks>*6, sawdust % 25], <tag:items:byg:mangrove_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_maple", [<item:byg:maple_planks>*6, sawdust % 25], <tag:items:byg:maple_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_nightshade", [<item:byg:nightshade_planks>*6, sawdust % 25], <tag:items:byg:nightshade_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_palm", [<item:byg:palm_planks>*6, sawdust % 25], <tag:items:byg:palm_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_palo_verde", [<item:minecraft:birch_planks>*6, sawdust % 25], <tag:items:byg:palo_verde_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_pine", [<item:byg:pine_planks>*6, sawdust % 25], <tag:items:byg:pine_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_rainbow_eucalyptus", [<item:byg:rainbow_eucalyptus_planks>*6, sawdust % 25], <tag:items:byg:rainbow_eucalyptus_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_redwood", [<item:byg:redwood_planks>*6, sawdust % 25], <tag:items:byg:redwood_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_skyris", [<item:byg:skyris_planks>*6, sawdust % 25], <tag:items:byg:skyris_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_willow", [<item:byg:willow_planks>*6, sawdust % 25], <tag:items:byg:willow_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_witch_hazel", [<item:byg:witch_hazel_planks>*6, sawdust % 25], <tag:items:byg:witch_hazel_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_zelkova", [<item:byg:zelkova_planks>*6, sawdust % 25], <tag:items:byg:zelkova_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_withering_oak", [<item:minecraft:oak_planks>*3 % 75, sawdust*2 % 50], <tag:items:byg:withering_oak_logs>, 1000);



<recipetype:thermal:sawmill>.addRecipe("saw_twilight_oak", [<item:twilightforest:twilight_oak_planks>*6, sawdust % 25], <tag:items:twilightforest:twilight_oak_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_canopy_wood", [<item:twilightforest:canopy_planks>*6, sawdust % 25], <tag:items:twilightforest:canopy_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_mangrove_tf", [<item:twilightforest:mangrove_planks>*6, sawdust % 25], <tag:items:twilightforest:mangrove_logs>, 1000);


<recipetype:thermal:sawmill>.addRecipe("saw_darkwood", [<item:twilightforest:dark_planks>*6, sawdust % 25], <tag:items:twilightforest:darkwood_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_timewood", [<item:twilightforest:time_planks>*6, sawdust % 25], <tag:items:twilightforest:timewood_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_transwood", [<item:twilightforest:transformation_planks>*6, sawdust % 25], <tag:items:twilightforest:transwood_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_minewood", [<item:twilightforest:mining_planks>*6, sawdust % 25], <tag:items:twilightforest:mining_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_sortingwood", [<item:twilightforest:sorting_planks>*6, sawdust % 25], <tag:items:twilightforest:sortwood_logs>, 1000);



<recipetype:thermal:sawmill>.addRecipe("saw_runewood", [<item:malum:runewood_planks>*6, sawdust % 25], <tag:items:malum:runewood_logs>, 1000);
<recipetype:thermal:sawmill>.addRecipe("saw_soulwood", [<item:malum:soulwood_planks>*6, sawdust % 25], <tag:items:malum:soulwood_logs>, 1000);

print("thermal_sawmill.zs loaded");