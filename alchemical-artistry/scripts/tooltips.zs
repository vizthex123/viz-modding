# Adds tooltips to items
print("tooltips.zs loading...");

val black = "\u00A70";
val gold = "\u00A76";
val gray = "\u00A77";
val dark_gray = "\u00A78";
val blue = "\u00A79";
val dark_blue = "\u00A71";
val green = "\u00A7a";
val dark_green = "\u00A72";
val aqua = "\u00A7b";
val dark_aqua = "\u00A74";
val red = "\u00A7c";
val dark_red = "\u00A74";
val purple = "\u00A7d";
val dark_purple = "\u00A75";
val yellow = "\u00A7e";
val white = "\u00A7f";

val obf = "\u00A7k";
val bold = "\u00A7l";
val strike = "\u00A7m";
val underlined = "\u00A7n";
val italics = "\u00A7o";
val clf = "\u00A7r";

/*
<item:>.addTooltip("tip");
*/

# ContentTweaker Items
<item:contenttweaker:bag>.addTooltip(white + "Can be used to store Alchemical Matter." + red + "\n(Shift for info)");
<item:contenttweaker:bag>.addShiftTooltip(red + "\nDue to the unique way these are woven," + "\nwe can't assign a value to them.");
<item:contenttweaker:crate>.addTooltip(white + "Can be used to store large amonuts of Alchemical Matter." + red + "\n(Shift for info)");
<item:contenttweaker:crate>.addShiftTooltip(red + "\nDue to the unique way these are forged," + "\nwe can't assign a value to them.");
<item:contenttweaker:ticket>.addTooltip(green+ "Made with 1,000 AMC of materials," + "\nthis ticket can be used to purchase rare collectables from any participating alchemist shoppe");
<item:contenttweaker:ticket>.addShiftTooltip(dark_green + "Sponsored by the Alchemical Rewards Bureau (TM)");
<item:contenttweaker:ticket>.addShiftTooltip(red + "Cannot have an AMC value due to the unique Alchemical Signature on it");

<item:contenttweaker:ashen_token>.addTooltip(dark_gray + "A concentration of all things with" + italics + " minimal " + dark_gray + "AMC values" + green + "\nComposed of " + underlined + green + "25 AMC");
<item:contenttweaker:ashen_token>.addShiftTooltip(red + "Cannot have an AMC value due to the unique Alchemical Signature on it");

<item:contenttweaker:verdant_token>.addTooltip(gray + "A concentration of all things with" + italics + " average " + gray + "AMC values" + green + "\nComposed of " + underlined + green + "100 AMC");
<item:contenttweaker:verdant_token>.addShiftTooltip(red + "Cannot have an AMC value due to the unique Alchemical Signature on it");

<item:contenttweaker:azure_token>.addTooltip(dark_blue + "A concentration of all things with" + italics + " high " + dark_blue + "AMC values" + green + "\nComposed of " + underlined + green + "500 AMC");
<item:contenttweaker:azure_token>.addShiftTooltip(red + "Cannot have an AMC value due to the unique Alchemical Signature on it");

<item:contenttweaker:minium_token>.addTooltip(aqua + "A concentration of all things with" + italics + " very high " + aqua + "AMC values" + green + "\nComposed of " + underlined + green + "1,000 AMC");
<item:contenttweaker:minium_token>.addShiftTooltip(red + "Cannot have an AMC value due to the unique Alchemical Signature on it");

<item:contenttweaker:alchemist_token>.addTooltip(purple + "A concentration of all things with" + italics + " insane " + purple + "AMC values" + green + "\nComposed of " + underlined + green + "5,000 AMC");
<item:contenttweaker:alchemist_token>.addShiftTooltip(red + "Cannot have an AMC value due to the unique Alchemical Signature on it");


// Catalysts
<item:contenttweaker:alchemical_crystallization_catalyst>.addShiftTooltip(red + "Cannot have an AMC value due to the unique Alchemical Signature on it");
<item:contenttweaker:alchemical_compression_catalyst>.addShiftTooltip(red + "Cannot have an AMC value due to the unique Alchemical Signature on it");

#	<item:contenttweaker:ticket_catalyst>.addTooltip(gold + "Catalysts don't get consumed during crafting");
<item:contenttweaker:ticket_catalyst>.addShiftTooltip(red + "Cannot have an AMC value due to the unique Alchemical Signature on it");

<item:contenttweaker:alchemical_catalyst>.addTooltip(gold + "Catalysts don't get consumed during crafting");
<item:contenttweaker:alchemical_catalyst>.addShiftTooltip(red + "Cannot have an AMC value due to the unique Alchemical Signature on it");

<item:contenttweaker:advanced_alchemical_catalyst>.addTooltip(gold + "Catalysts don't get consumed during crafting");
<item:contenttweaker:advanced_alchemical_catalyst>.addShiftTooltip(red + "Cannot have an AMC value due to the unique Alchemical Signature on it");

<item:contenttweaker:token_catalyst>.addTooltip(gold + "Catalysts don't get consumed during crafting");
<item:contenttweaker:token_catalyst>.addShiftTooltip(red + "Cannot have an AMC value due to the unique Alchemical Signature on it");

<item:contenttweaker:advanced_token_catalyst>.addTooltip(gold + "Catalysts don't get consumed during crafting");
<item:contenttweaker:advanced_token_catalyst>.addShiftTooltip(red + "Cannot have an AMC value due to the unique Alchemical Signature on it");

<item:contenttweaker:very_advanced_token_catalyst>.addTooltip(gold + "Catalysts don't get consumed during crafting");
<item:contenttweaker:very_advanced_token_catalyst>.addShiftTooltip(red + "Cannot have an AMC value due to the unique Alchemical Signature on it");

<item:contenttweaker:highly_advanced_token_catalyst>.addTooltip(gold + "Catalysts don't get consumed during crafting");
<item:contenttweaker:highly_advanced_token_catalyst>.addShiftTooltip(red + "Cannot have an AMC value due to the unique Alchemical Signature on it");

<item:contenttweaker:alchemist_token_catalyst>.addTooltip(gold + "Catalysts don't get consumed during crafting");
<item:contenttweaker:alchemist_token_catalyst>.addShiftTooltip(red + "Cannot have an AMC value due to the unique Alchemical Signature on it");


# Misc
<item:extendedcrafting:luminessence>.addTooltip(gold + "A common Alchemical reagent." + gold + "\nThough it does have a limited number of applications...");

<item:randomite:randomite_ore>.addTooltip(red + "The ever-changing nature of this peculiar ore prevents me from properly assigning a value to it.... odd");
<item:heartcanisters:heart_canister>.addTooltip(red + "A maximum of 10 canisters can be used.");

<item:bloodmagic:weakbloodorb>.addTooltip(red + "Maximum LP: 5,000");
<item:bloodmagic:apprenticebloodorb>.addTooltip(red + "Maximum LP: 25,000");
<item:bloodmagic:magicianbloodorb>.addTooltip(red + "Maximum LP: 150,000");
<item:bloodmagic:masterbloodorb>.addTooltip(red + "Maximum LP: 1,000,000");


print("tooltips.zs loaded");