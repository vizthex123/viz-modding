# Adds recipes to saw various items
# If they only give Sawdust, they'll be in sawdust.zs

import crafttweaker.api.tag.MCTag;

print("sawmills.zs loading...");
/*
<recipetype:thermal:sawmill>.addRecipe(String name, MCWeightedItemStack[] outputs, IIngredient ingredient, int energy);

<recipetype:create:cutting>.addRecipe(String name, IItemStack output, IIngredient input, @Optional(100) int duration);

Average RF use is 1 - 2k
*/

val feather = <item:minecraft:feather>;
val leather = <item:minecraft:leather>;
val paper = <item:minecraft:paper>;
val sawdust = <item:thermal:sawdust>;
val spider_string = <item:minecraft:string>;
val stick = <item:minecraft:stick>;

## Arrows
# Apotheosis ones are in machine_recycling.zs
	// Regular
<recipetype:thermal:sawmill>.addRecipe("saw_arrow", [feather % 5, sawdust % 5], <item:minecraft:arrow>, 500);

	// Tipped
<recipetype:thermal:sawmill>.addRecipe("saw_tipped_arrow", [feather % 5, sawdust % 5], <item:minecraft:tipped_arrow>.anyDamage(), 500);
<recipetype:thermal:sawmill>.addRecipe("saw_reliquary_tipped_arrow", [feather % 5, sawdust % 5], <item:reliquary:tipped_arrow>.anyDamage(), 500);

	// Spectral
<recipetype:thermal:sawmill>.addRecipe("saw_spectral_arrow", [<item:minecraft:glowstone_dust>*2 % 50, feather % 5, sawdust % 10], <item:minecraft:spectral_arrow>, 500);

// (Cross)Bows
<recipetype:thermal:sawmill>.addRecipe("saw_bow", [spider_string*2, stick*2 % 75], <item:minecraft:bow>.anyDamage(), 500);
<recipetype:thermal:sawmill>.addRecipe("saw_crossbow", [spider_string*2, stick*2 % 75, <item:minecraft:iron_ingot> % 25], <item:minecraft:crossbow>.anyDamage()|<item:additionaladditions:crossbow_with_spyglass>.anyDamage(), 750);

<recipetype:create:cutting>.addRecipe("mech_saw_bow", sawdust, <item:minecraft:bow>.anyDamage(), 1);
<recipetype:create:cutting>.addRecipe("mech_saw_crossbow", sawdust*2, <item:minecraft:crossbow>.anyDamage()|<item:additionaladditions:crossbow_with_spyglass>.anyDamage(), 1);

// Leads
<recipetype:thermal:sawmill>.addRecipe("saw_lead", [<item:minecraft:slime_ball> % 50, spider_string*2], <item:minecraft:lead>, 500);
<recipetype:create:cutting>.addRecipe("mech_saw_lead", spider_string*3, <item:minecraft:lead>, 1);

// Maps
<recipetype:thermal:sawmill>.addRecipe("saw_map", [paper*4], <item:minecraft:map>|<item:minecraft:filled_map>, 1000);
<recipetype:create:cutting>.addRecipe("mech_saw_map", paper*4,<item:minecraft:map>|<item:minecraft:filled_map>, 2);

// Ropes
<recipetype:thermal:sawmill>.addRecipe("saw_ropes", [spider_string % 50], <tag:items:quintessence:rope>, 1000);

// Saddles
<recipetype:thermal:sawmill>.addRecipe("saw_saddle", [leather*2, leather*2 % 50], <item:minecraft:saddle>, 1000);
# <recipetype:create:cutting>.addRecipe("mech_saw_saddle", leather*3,<item:minecraft:saddle>, 2);

// Name Tags
<recipetype:thermal:sawmill>.addRecipe("saw_name_tag", [paper*3 % 75, spider_string*2 % 50], <item:minecraft:name_tag>, 1000);
<recipetype:create:cutting>.addRecipe("mech_saw_name_tag", paper*3,<item:minecraft:name_tag>, 2);

// Armour Stands
<recipetype:thermal:sawmill>.addRecipe("saw_stand", [sawdust % 50, stick*3], <item:minecraft:armor_stand>, 1000);
<recipetype:create:cutting>.addRecipe("mech_saw_stand", sawdust, <item:minecraft:armor_stand>, 2);

// Banners
<recipetype:thermal:sawmill>.addRecipe("saw_banners", [spider_string*12, spider_string*6 % 50, sawdust % 50], <tag:items:minecraft:banners>, 1000);
<recipetype:create:cutting>.addRecipe("mech_saw_banners", spider_string*12, <tag:items:minecraft:banners>, 2);

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

<recipetype:create:cutting>.addRecipe("mech_saw_books", leather, <item:minecraft:book>|<item:minecraft:writable_book>|<item:minecraft:written_book>, 3);

// Saw TNT
<recipetype:thermal:sawmill>.addRecipe("saw_tnt", [<item:minecraft:sand>*2, <item:minecraft:gunpowder>*3 % 50], <item:minecraft:tnt>, 2000);
<recipetype:create:cutting>.addRecipe("mech_saw_tnt", <item:minecraft:gunpowder>*2, <item:minecraft:tnt>, 3);

// Glowsticks
<recipetype:thermal:sawmill>.addRecipe("saw_glowstick", [sawdust % 50, <item:minecraft:glow_ink_sac> % 50], <item:additionaladditions:glow_stick>, 1000);

// Item Frames
<recipetype:thermal:sawmill>.addRecipe("saw_item_frame", [sawdust*2], <item:minecraft:item_frame>, 500);
<recipetype:thermal:sawmill>.addRecipe("saw_glow_item_frame", [sawdust*2, <item:minecraft:glow_ink_sac> % 25], <item:minecraft:glow_item_frame>, 500);
<recipetype:create:cutting>.addRecipe("mech_saw_item_frames", sawdust*3, <item:minecraft:item_frame>|<item:minecraft:glow_item_frame>, 1);

// Leather Armour
<recipetype:thermal:sawmill>.addRecipe("saw_leather_armour", [leather*2, leather*2 % 50], <tag:items:quintessence:leather_armour>.asIIngredient().anyDamage(), 3000);
<recipetype:create:cutting>.addRecipe("mech_saw_leather_armour", leather*3, <tag:items:quintessence:leather_armour>.asIIngredient().anyDamage(), 4);

	// Strap
<recipetype:thermal:sawmill>.addRecipe("saw_leather_strap", [leather*2, <item:minecraft:iron_nugget> % 25], <item:ironjetpacks:strap>, 3000);
<recipetype:create:cutting>.addRecipe("mech_saw_leather_strap", leather*2, <item:ironjetpacks:strap>, 4);


# Hats
// Conjurer
<recipetype:thermal:sawmill>.addRecipe("saw_conjurer_hat", [leather*2, leather % 50], <item:conjurer_illager:conjurer_hat>.anyDamage(), 1000);
<recipetype:create:cutting>.addRecipe("mech_saw_conjurer_hat", leather*2, <item:conjurer_illager:conjurer_hat>.anyDamage(), 2);

// Forgotten
<recipetype:thermal:sawmill>.addRecipe("saw_forgotten_hat", [leather*5, spider_string*3 % 50], <item:quark:forgotten_hat>.anyDamage(), 1000);
<recipetype:create:cutting>.addRecipe("mech_saw_forgotten_hat", leather*5, <item:quark:forgotten_hat>.anyDamage(), 2);


# Saw carpets into String
<recipetype:thermal:sawmill>.addRecipe("saw_carpets", [spider_string*2, spider_string*2 % 50], <tag:items:minecraft:carpets>, 500);
<recipetype:create:cutting>.addRecipe("mech_saw_carpets", spider_string*2, <tag:items:minecraft:carpets>, 1);

# Saw beds into Sawdust and String
<recipetype:thermal:sawmill>.addRecipe("saw_beds", [sawdust*3, spider_string*4, spider_string*4 % 50, spider_string*2 % 25], <tag:items:minecraft:beds>, 2000);
<recipetype:create:cutting>.addRecipe("mech_saw_beds", sawdust*3, <tag:items:minecraft:beds>, 3);


# DirtChest 9000!
<recipetype:thermal:sawmill>.addRecipe("saw_dirt_chest", [sawdust*8, <item:thermal:compost>*3 % 50, <item:thermal:compost>*2 % 25], <item:ironchest:dirt_chest>|<item:ironchest:trapped_dirt_chest>, 2000);
<recipetype:create:cutting>.addRecipe("mech_saw_dirt_chest", sawdust*12, <item:ironchest:dirt_chest>|<item:ironchest:trapped_dirt_chest>, 3);


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

print("sawmills.zs loaded");