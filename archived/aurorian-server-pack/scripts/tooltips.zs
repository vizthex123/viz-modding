# Renames things & adds tooltips

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

/*
<item>.displayName = "New Name";
<item>.addTooltip("Tooltip");
<item>.addShiftTooltip("Tooltip");
*/



// Renames
<theaurorian:auroriansteel>.displayName = "Aurorian Steel Ingot";
<theaurorian:aurorianpork>.displayName = "Raw Aurorian Porkchop";
<theaurorian:crystal>.displayName = "Aurorian Crystal";
<theaurorian:cup>.displayName = "Cerulean Cup";

<botania:manaresource:16>.displayName = "Manastring";
<extrautils2:ingredients:12>.displayName = "Enchanted Gold Ingot";
<forestry:can>.displayName = "Empty Can";
<openblocks:sponge_on_a_stick>.displayName = "Sponge on a Stick";
<openblocks:tank>.displayName = "Obsidian Tank";
<tconstruct:metal:6>.displayName = "Silky Jewel Block";



// Tooltips
<extrautils2:bagofholding>.addTooltip(format.gold("Holds the same amount as a double chest"));
<extrautils2:bagofholding>.addTooltip(format.red("InvTweaks sorting doesn't work"));
<tconstruct:materials:17>.addTooltip(format.aqua("Drops from Wither Skeletons with a 7% chance"));
<botania:flowerbag>.addTooltip(format.gold("Shift + Right-Click on a Chest to empty contents"));

<extrautils2:machine>.withTag({Type: "extrautils2:enchanter"}).addTooltip(format.red("Must have blocks that give 15 Enchanting Power placed nearby"));

<openblocks:elevator:*>.addTooltip(format.aqua("Has a range of 20 blocks"));
<openblocks:elevator:*>.addTooltip(format.aqua("User can go through 4 solid blocks"));
<openblocks:elevator:*>.addTooltip(format.aqua("Right-click with any dye to colour it"));

<theaurorian:ceruleanarrow>.addTooltip("Flies faster than a regular arrow, but does less damage");

<botania:fertilizer>.addTooltip("Or 'Flower Meal'");

<extrautils2:decorativesolidwood:1>.addShiftTooltip("In other words,");
<extrautils2:decorativesolidwood:1>.addShiftTooltip("Enchanting Power: 2.5");

/*
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
*/

// Definitely not a reference
<botania:ancientwill:5>.addShiftTooltip(format.green("FOR KARL!"));
<botania:ancientwill:5>.addShiftTooltip("Oh wait, wrong game");

print("renames_tooltip.zs loaded");