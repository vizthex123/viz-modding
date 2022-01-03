# Renames things & adds tooltips
// Note: Tooltips will be added in the proper script, this one is just for extra random bits of info
/*
<item>.displayName = "New Name";
<item>.addTooltip("Tooltip");
<item>.addShiftTooltip("Tooltip");
*/
print("Loading renames_tooltips.zs...");


// Renames
<eplus:decorative_book:6>.displayName = "Iron Book";
<extrautils2:bagofholding>.displayName = "Golden Bag of Holding";
<openblocks:sponge_on_a_stick>.displayName = "Sponge on a Stick";
<cardboardboxes:cardboardbox>.displayName = "Cardboard Box";
<pyramidplunder:urn>.displayName = "Ancient Urn";
#	<minecraft:golden_apple:1>.displayName = "Mystical Apple";
<theaurorian:crystal>.displayName = "Aurorian Crystal";
<theaurorian:cup>.displayName = "Cerulean Mug";
<extrautils2:ingredients:12>.displayName = "Enchanted Metal Ingot";
<actuallyadditions:item_misc:12>.displayName = "Slimy Riceball";
<tconstruct:metal:6>.displayName = "Silky Jewel Block";
<hopperducts:gratedhopper>.displayName = "Filter Hopper";
<retroexchange:transmutation_stone>.displayName = "Red Stone";
<retroexchange:transmutation_shard>.displayName = "Red Stone Fragment";
<openblocks:tank>.displayName = "Obsidian Tank";
<actuallyadditions:block_ranged_collector>.displayName = "Ranged Item Collector";
<bloodarsenal:blood_infused_glowstone>.displayName = "Blood-Infused Glowstone";
<loreexpansion:lore_journal>.displayName = "Lore Journal";
<theaurorian:auroriansteel>.displayName = "Aurorian Steel Ingot";
<theaurorian:aurorianpork>.displayName = "Raw Aurorian Porkchop";
<botania:manaresource:16>.displayName = "Manastring";
<underwater:seaweed>.displayName = "Kelp";
<xlfoodmod:flesh>.displayName = "Treated Flesh";
<forestry:can>.displayName = "Empty Can";
<aether_legacy:enchanter>.displayName = "Aetheric Enchanter";
<aether_legacy:freezer>.displayName = "Aetheric Freezer";





// Tooltips
<loreexpansion:lore_journal>.addTooltip(format.aqua("View records made by The Archivist"));
<eplus:decorative_book:*>.addTooltip("Or 'Floating Book'");
<extrautils2:bagofholding>.addTooltip(format.gold("Holds the same amount as a double chest"));
<extrautils2:bagofholding>.addTooltip(format.red("InvTweaks sorting doesn't work"));
<industrialforegoing:enchantment_extractor>.addTooltip("Or 'Dischanter'");
<forestry:apatite>.addTooltip(format.green("Primarily used to generate 5k RF. Check JEI for process."));
<baubles:ring>.addTooltip("Gives Haste I as long as it's equipped");
<tconstruct:materials:17>.addTooltip(format.aqua("Drops from Wither Skeletons with a 7% chance"));
<thermalfoundation:tome_experience>.addTooltip(format.green("Or 'XP Tome'"));
<thermalfoundation:tome_experience>.addTooltip(format.gold("Works with the Akashic Tome"));
<botania:flowerbag>.addTooltip(format.gold("Shift + Right-Click on a Chest to empty contents"));
<extrautils2:machine>.withTag({Type: "extrautils2:enchanter"}).addTooltip(format.red("Must have items that give 15 Enchanting Power nearby"));
<openblocks:elevator:*>.addTooltip(format.aqua("Has a range of 25 blocks"));
<openblocks:elevator:*>.addTooltip(format.aqua("User can go through 5 solid blocks"));
<openblocks:elevator:*>.addTooltip(format.aqua("Right-click with any dye to colour it"));
<theaurorian:silentwoodbow>.addTooltip(format.red("Doesn't work with Alchemical Quivers"));
<theaurorian:silentwoodbow>.addTooltip(format.red("Place in a crafting grid to convert to a vanilla bow"));
<elementaristics:essence:10>.addTooltip(format.red("Your concentrated Life Essence in a crystallized form"));
<elementaristics:essence:16>.addTooltip(format.gray("Your very soul in a crystallized form"));
<theaurorian:silentwoodstick>.addTooltip("Place in crafting grid to convert to normal sticks");
<theaurorian:aurorianfurnacechimney>.addTooltip("Increases smelting speed by 20%");
<theaurorian:ceruleanarrow>.addTooltip("Flies faster than a regular arrow, but does less damage");
<theaurorian:ceruleanarrow>.addTooltip(format.red("Doesn't work with Alchemical Quivers"));
<theaurorian:ceruleanarrow>.addTooltip("Can be converted to normal arrows [2:1]");
<rftools:matter_transmitter>.addTooltip("Or 'Teleporter'");
<rftools:matter_receiver>.addTooltip("Or 'Teleporter'");
<actuallyadditions:item_solidified_experience>.addTooltip(format.green("Worth 10 XP"));
<extrautils2:glasscutter>.addTooltip(format.green("Will return glass blocks if used to break them"));
<biggercraftingtables:biggercraftingtable:*>.addTooltip(format.aqua("Retains contents if UI is closed"));
<biggercraftingtables:biggercraftingtable:*>.addTooltip(format.aqua("Supports JEI's ''move to crafting grid'' feature"));
<biggercraftingtables:autobiggercraftingtable:*>.addTooltip(format.aqua("Retains contents if UI is closed"));
<theaurorian:absorptionorb>.addShiftTooltip(format.gray("Primarily found in Moon Temples"));
<bhc:relic_apple>.addTooltip(format.gold("Gives Strength, Haste, and Resistance II for 1 minute"));
<extracells:fluidcrafter>.addTooltip(format.red("Will not autocraft fluids, fluids must already be in the system"));
<extracells:fluidcrafter>.addTooltip(format.darkBlue("Use an ME Fluid Auto Filler to make buckets of fluid"));
<mysticalworld:cooked_squid>.addTooltip("Or ''Cooked Squid''");
<projecte:item.pe_alchemical_bag:10>.addShiftTooltip(format.lightPurple("The best bag"));
<projecte:item.pe_alchemical_bag:10>.addShiftTooltip(format.darkPurple("- vizthex"));
<minecraft:soul_sand>.addTooltip(format.darkGray("Infused with the remnants of life"));
<minecraft:soul_sand>.addTooltip(format.darkGray("You could probably extract the last few drops"));
<pyramidplunder:urn>.addTooltip(format.gold("Can be sold for 650 Aurum"));
<bloodarsenal:sacrifice_amulet>.addTooltip(format.red("Stores LP as you kill enemies"));
<bloodarsenal:self_sacrifice_amulet>.addTooltip(format.red("Stores LP as you lose health"));
<bloodarsenal:blood_diamond:2>.addTooltip(format.red("Currently unused(?)"));
<elementaristics:essence:9>.addTooltip(format.darkBlue("A crystallized form of your body, infused with the Will of fallen foes"));
<elementaristics:essence:15>.addTooltip(format.darkGray("The concentrated form of pure chaos"));
<equivalentintegrations:transmutation_disassembler>.addTooltip(format.aqua("Converts items into EMC, adds it to your network"));
<equivalentintegrations:transmutation_generator>.addTooltip(format.aqua("Converts EMC into RF"));
<equivalentintegrations:transmutation_generator>.addTooltip(format.aqua("Rate of 25 EMC per 5 RF"));
<mysticalworld:silkworm_egg>.addTooltip("Can be converted to String in a crafting grid");
<botania:fertilizer>.addTooltip("Or 'Flower Meal'");
<extrautils2:decorativesolidwood:1>.addTooltip("In other words,");
<extrautils2:decorativesolidwood:1>.addTooltip("Enchanting Power: 2.5");
<tinkersaddons:modifier_item:*>.addTooltip(format.darkRed("Can only be applied once per tool"));
<thermalfoundation:material:136>.addTooltip("AKA Mithril");
<ebwizardry:astral_diamond>.addTooltip(format.gold("Wizards will accept these for Master spells"));
<ebwizardry:astral_diamond>.addTooltip(format.green("Or you can make 10 Million RF"));
<industrialforegoing:mob_duplicator>.addTooltip("Or ''Spawner''");

<actuallyadditions:item_misc:20>.addTooltip(format.aqua("Has a variety of applications"));



// Twilight Forest charms
<twilightforest:charm_of_life_1>.addTooltip(format.blue("Revives you & restores 5 Hearts (10 HP) when you are killed"));
<twilightforest:charm_of_life_2>.addTooltip(format.blue("Revives you & restores 10 Hearts (20 HP) when you are killed"));
<twilightforest:charm_of_life_2>.addTooltip(format.blue("Hold shift for potion effects"));
<twilightforest:charm_of_life_2>.addShiftTooltip(format.darkBlue("Gives Regeneration IV for 30 Seconds"));
<twilightforest:charm_of_life_2>.addShiftTooltip(format.darkBlue("Gives Fire Resistance I for 30 Seconds"));
<twilightforest:charm_of_life_2>.addShiftTooltip(format.darkBlue("Gives Resistance I for 30 Seconds"));

<twilightforest:charm_of_life_1>.addTooltip(format.darkRed("Destroyed upon use"));
<twilightforest:charm_of_life_2>.addTooltip(format.darkRed("Destroyed upon use"));

<twilightforest:charm_of_keeping_1>.addTooltip(format.blue("When killed, retain your armour and currently held item"));
<twilightforest:charm_of_keeping_2>.addTooltip(format.blue("When killed, retain your armour and hotbar"));
<twilightforest:charm_of_keeping_3>.addTooltip(format.blue("When killed, retain your entire inventory"));

<twilightforest:charm_of_keeping_1>.addTooltip(format.red("Does nothing if KeepInventory is enabled"));
<twilightforest:charm_of_keeping_2>.addTooltip(format.red("Does nothing if KeepInventory is enabled"));
<twilightforest:charm_of_keeping_3>.addTooltip(format.red("Does nothing if KeepInventory is enabled"));

<twilightforest:charm_of_keeping_1>.addTooltip(format.darkRed("Destroyed upon use"));
<twilightforest:charm_of_keeping_2>.addTooltip(format.darkRed("Destroyed upon use"));
<twilightforest:charm_of_keeping_3>.addTooltip(format.darkRed("Destroyed upon use"));


// Progression info
<theaurorian:crystallineshield>.addShiftTooltip(format.darkGray("Mainly found in Moon Temples"));
<theaurorian:aurorianiteaxe>.addShiftTooltip(format.darkGray("Primarily found in Aurorian Dungeons"));
<theaurorian:aurorianitepickaxe>.addShiftTooltip(format.darkGray("Primarily found in Aurorian Dungeons"));
<theaurorian:aurorianitesword>.addShiftTooltip(format.darkGray("Primarily found in Aurorian Dungeons"));
<theaurorian:lockpicks>.addShiftTooltip("Find Runestone Dungeons in the Aurorian");
<theaurorian:lockpicks>.addShiftTooltip("They're big circular buildings");
<theaurorian:lockpicks>.addShiftTooltip("Or just use a Dungeon Locator");

<aether_legacy:lore_book>.addTooltip(format.green("Gives info about Aether items"));
<aether_legacy:lore_book>.addTooltip(format.gold("Works with the Akashic Tome"));
<aether_legacy:victory_medal>.addTooltip("Present 10 to the Valkyrie Queen to prove you're worthy of fighting her");
<aether_legacy:dungeon_key:*>.addTooltip("Opens the chest behind the boss");

<deepmoblearning:glitch_heart>.addTooltip(format.red("I'm sure this could be crushed against something solid"));


// Flux-Infused Armour's values
// Idk why they don't render on their own
<redstonearsenal:armor.helmet_flux>.addTooltip(format.blue("+3 Armor (when charged)"));
<redstonearsenal:armor.plate_flux>.addTooltip(format.blue("+8 Armor (when charged)"));
<redstonearsenal:armor.legs_flux>.addTooltip(format.blue("+6 Armor (when charged)"));
<redstonearsenal:armor.boots_flux>.addTooltip(format.blue("+3 Armor (when charged)"));



// Definitely not a reference
// This sections is also for things that cause crashes (mainly using TE's facades with Shaders)
<botania:ancientwill:5>.addShiftTooltip("FOR KARL!");
<botania:ancientwill:5>.addShiftTooltip("Oh wait, wrong game");

<thermaldynamics:cover:*>.addTooltip(format.red("Do not use if you have Shaders!"));



/*
Coloured/Formatted:
<item>.addTooltip(format.COLOUR("Tooltip"));
<item>.addShiftTooltip(format.COLOUR("Tooltip"));

Formats:

format.black
format.blue
format.darkBlue
format.green
format.darkGreen
format.aqua
format.darkAqua
format.red
format.darkRed
format.darkPurple
format.lightPurple
format.gold
format.gray
format.darkGray
format.yellow
format.white

format.obfuscated - Makes it all scrambled
format.bold
format.strikethrough
format.underline
format.italic
*/

print("renames_tooltip.zs loaded");