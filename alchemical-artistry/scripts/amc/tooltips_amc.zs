# Adds tooltips to items with AMC stating their value

import crafttweaker.api.item.tooltip.ITooltipFunction;

print("tooltips_amc.zs loading...");

val black = "\u00A70";
val gold = "\u00A76";
val gray = "\u00A77";
val dark_gray = "\u00A78";
val blue = "\u00A79";
val dark_blue = "\u00A71";
val green = "\u00A7a";
val dark_green = "\u00A72";
val aqua = "\u00A7b";
val dark_aqua = "\u00A73";
val red = "\u00A7c";
val dark_red = "\u00A74";
val purple = "\u00A7d";
val dark_purple = "\u00A75";
val yellow = "\u00A7e";
val white = "\u00A7f";

val obf = "\u00A7k";
val bold = "\u00A7l";
val strike = "\u00A7m";
val under = "\u00A7n";
val italics = "\u00A7o";
val clf = "\u00A7r";

/*
Tiers:
italicized dark gray: <1 (microscopic)
dark gray: 1 - 25 (minimal)
gray: 26 - 100 (average)
dark blue: 101 - 250 (above average)
dark aqua: 251 - 500 (high)
aqua: 501 - 1,000 (very high)
green: 1,001 - 4,999 (extreme)

purple: 5,000+ (insane)

default colour is white
*/

# Crystal tooltips
<item:contenttweaker:amc_crystal_submicroscopic>.addTooltip(gold + "An imperceptible amount of Alchemical Matter" + "\nCrystallized under intense pressure.");
<item:contenttweaker:amc_crystal_submicroscopic>.addShiftTooltip(yellow + "(It's 0.001 if you're curious)");
<item:contenttweaker:amc_crystal_microscopic>.addTooltip(gold + "An almost imperceptible amount of Alchemical Matter" + "\nCrystallized under intense pressure.");
<item:contenttweaker:amc_crystal_microscopic>.addShiftTooltip(yellow + "(It's 0.005 if you're curious)");
<item:contenttweaker:amc_crystal_miniscule>.addTooltip(gold + "0.25 Alchemical Matter" + "\nCrystallized under intense pressure.");
<item:contenttweaker:amc_crystal_tiny>.addTooltip(gold + "1 Alchemical Matter" + "\nCrystallized under intense pressure.");
<item:contenttweaker:amc_crystal_small>.addTooltip(gold + "2 Alchemical Matter" + "\nCrystallized under intense pressure.");
<item:contenttweaker:amc_crystal_large>.addTooltip(gold + "5 Alchemical Matter" + "\nCrystallized under intense pressure.");



# Microscopic AMC <1), dark_gray
<tag:items:amc-value:0.75>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + italics + "Contains 0.75 AMC");
});

<tag:items:amc-value:0.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + italics + "Contains 0.5 AMC");
});

<tag:items:amc-value:0.25>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + italics + "Contains 0.25 AMC");
});



# Minimal AMC (1 -  25), dark_gray
<item:minecraft:iron_nugget>.addTooltip(dark_gray + "Contains 2.777 AMC");
<item:extendedcrafting:black_iron_nugget>.addTooltip(dark_gray + "Contains 3.888 AMC");
<item:extendedcrafting:redstone_nugget>.addTooltip(dark_gray + "Contains 6.666 AMC");
<item:minecraft:mushroom_stew>.addTooltip(dark_gray + "Contains 8.75 AMC");
<item:minecraft:iron_bars>.addTooltip(dark_gray + "Contains 9.375 AMC");

<tag:items:amc-value:1>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 1 AMC");
});

<tag:items:amc-value:1.25>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 1.25 AMC");
});

<tag:items:amc-value:1.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 1.5 AMC");
});

<tag:items:amc-value:2>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 2 AMC");
});

<tag:items:amc-value:2.083>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 2.083 AMC");
});

<tag:items:amc-value:2.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 2.5 AMC");
});

<tag:items:amc-value:2.75>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 2.75 AMC");
});

<tag:items:amc-value:3>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 3 AMC");
});

<tag:items:amc-value:3.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 3.5 AMC");
});

<tag:items:amc-value:4>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 4 AMC");
});

<tag:items:amc-value:4.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 4.5 AMC");
});

<tag:items:amc-value:5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 5 AMC");
});

<tag:items:amc-value:5.25>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 5.25 AMC");
});

<tag:items:amc-value:5.333>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 5.333 AMC");
});

<tag:items:amc-value:5.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 5.5 AMC");
});

<tag:items:amc-value:5.555>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 5.555 AMC");
});

<tag:items:amc-value:6>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 6 AMC");
});

<tag:items:amc-value:7>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 7 AMC");
});

<tag:items:amc-value:7.75>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 7.75 AMC");
});

<tag:items:amc-value:8>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 8 AMC");
});

<tag:items:amc-value:9>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 9 AMC");
});

<tag:items:amc-value:10>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 10 AMC");
});

<tag:items:amc-value:10.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 10.5 AMC");
});

<tag:items:amc-value:10.666>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 10.666 AMC");
});

<tag:items:amc-value:12>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 12 AMC");
});

<tag:items:amc-value:12.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 12.5 AMC");
});

<tag:items:amc-value:13>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 13 AMC");
});

<tag:items:amc-value:15>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 15 AMC");
});

<tag:items:amc-value:15.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 15.5 AMC");
});

<tag:items:amc-value:16>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 16 AMC");
});

<tag:items:amc-value:16.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 16.5 AMC");
});

<tag:items:amc-value:18>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 18 AMC");
});

<tag:items:amc-value:18.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 18 AMC");
});

<tag:items:amc-value:20>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 20 AMC");
});

<tag:items:amc-value:24>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 24 AMC");
});

<tag:items:amc-value:25>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 25 AMC");
});

<tag:items:amc-value:25.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 25.5 AMC");
});



# Average AMC (26 - 99), gray
<item:minecraft:beetroot_soup>.addTooltip(gray + "Contains 36.75 AMC");
<item:minecraft:brick_stairs>.addTooltip(gray + "Contains 37.5 AMC");
<item:minecraft:rabbit_stew>.addTooltip(gray + "Contains 52.25 AMC");

<tag:items:amc-value:26>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 26 AMC");
});

<tag:items:amc-value:28>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 28 AMC");
});

<tag:items:amc-value:30>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 30 AMC");
});

<tag:items:amc-value:35>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 35 AMC");
});

<tag:items:amc-value:36>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 36 AMC");
});

<tag:items:amc-value:40>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 40 AMC");
});

<tag:items:amc-value:45>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 45 AMC");
});

<tag:items:amc-value:50>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 50 AMC");
});

<tag:items:amc-value:50.25>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 50.25 AMC");
});

<tag:items:amc-value:47.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 47.5 AMC");
});

<tag:items:amc-value:50.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 50.5 AMC");
});

<tag:items:amc-value:54>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 54 AMC");
});

<tag:items:amc-value:55>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 55 AMC");
});

<tag:items:amc-value:58.333>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 58.333 AMC");
});

<tag:items:amc-value:65>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 65 AMC");
});

<tag:items:amc-value:70>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 70 AMC");
});

<tag:items:amc-value:72>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 72 AMC");
});

<tag:items:amc-value:75>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 75 AMC");
});

<tag:items:amc-value:75.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 75.5 AMC");
});

<tag:items:amc-value:80>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 80 AMC");
});

<tag:items:amc-value:85>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 85 AMC");
});

<tag:items:amc-value:90>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 90 AMC");
});

<tag:items:amc-value:96.25>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 96.25 AMC");
});



# Above Average, 100 - 250 dark_blue
<item:minecraft:prismarine_brick_slab>.addTooltip(dark_blue + "Contains 112.5 AMC");

<tag:items:amc-value:100>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 100 AMC");
});

<tag:items:amc-value:100.25>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 100.25 AMC");
});

<tag:items:amc-value:100.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 100.5 AMC");
});

<tag:items:amc-value:105>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 105 AMC");
});

<tag:items:amc-value:110>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 110 AMC");
});

<tag:items:amc-value:120>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 120 AMC");
});

<tag:items:amc-value:125>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 125 AMC");
});

<tag:items:amc-value:130>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 130 AMC");
});

<tag:items:amc-value:135>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 135 AMC");
});

<tag:items:amc-value:136>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 136 AMC");
});

<tag:items:amc-value:140>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 140 AMC");
});

<tag:items:amc-value:150>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 150 AMC");
});

<tag:items:amc-value:150.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 150.5 AMC");
});

<tag:items:amc-value:155>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 155 AMC");
});

<tag:items:amc-value:158>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 158 AMC");
});

<tag:items:amc-value:170>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 170 AMC");
});

<tag:items:amc-value:175>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 175 AMC");
});

<tag:items:amc-value:180>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 180 AMC");
});

<tag:items:amc-value:190>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 190 AMC");
});

<tag:items:amc-value:200>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 200 AMC");
});

<tag:items:amc-value:210>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 210 AMC");
});

<tag:items:amc-value:215>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 215 AMC");
});

<tag:items:amc-value:225>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 225 AMC");
});

<tag:items:amc-value:235>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 235 AMC");
});

<tag:items:amc-value:240>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 240 AMC");
});

<tag:items:amc-value:250>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 250 AMC");
});



# High AMC (251 - 500), dark_aqua
<item:minecraft:prismarine_brick_stairs>.addTooltip(dark_aqua + "Contains 337.5 AMC");

<tag:items:amc-value:280>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 280 AMC");
});

<tag:items:amc-value:291>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 291 AMC");
});

<tag:items:amc-value:300>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 300 AMC");
});

<tag:items:amc-value:305>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 305 AMC");
});

<tag:items:amc-value:315>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 315 AMC");
});

<tag:items:amc-value:345>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 345 AMC");
});

<tag:items:amc-value:350>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 350 AMC");
});

<tag:items:amc-value:400>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 400 AMC");
});

<tag:items:amc-value:410>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 410 AMC");
});

<tag:items:amc-value:415>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 415 AMC");
});

<tag:items:amc-value:425>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 425 AMC");
});

<tag:items:amc-value:450>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 450 AMC");
});

<tag:items:amc-value:500>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 500 AMC");
});



# Very High (501 - 1,000) AMC, aqua
<tag:items:amc-value:550>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 550 AMC");
});

<tag:items:amc-value:628>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 628 AMC");
});

<tag:items:amc-value:707>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 707 AMC");
});

<tag:items:amc-value:715>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 715 AMC");
});

<tag:items:amc-value:750>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 750 AMC");
});

<tag:items:amc-value:900>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 900 AMC");
});

<tag:items:amc-value:1000>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 1,000 AMC");
});

<tag:items:amc-value:1000.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 1,000.5 AMC");
});



# Extreme (1,001 - 4,999), green
<tag:items:amc-value:1008>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 1,008 AMC");
});

<tag:items:amc-value:1291>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 1,291 AMC");
});

<tag:items:amc-value:1035>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 1,035 AMC");
});

<tag:items:amc-value:1340>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 1,340 AMC");
});

<tag:items:amc-value:1350>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 1,350 AMC");
});

<tag:items:amc-value:1400>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 1,400 AMC");
});

<tag:items:amc-value:1512>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 1,512 AMC");
});

<tag:items:amc-value:2000.25>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 2,000.25 AMC");
});

<tag:items:amc-value:2000.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 2,000.5 AMC");
});

<tag:items:amc-value:2200>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 2,200 AMC");
});

<tag:items:amc-value:2216>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 2,216 AMC");
});

<tag:items:amc-value:2300>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 2,300 AMC");
});

<tag:items:amc-value:2455>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 2,455 AMC");
});

<tag:items:amc-value:2500>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 2,500 AMC");
});

<tag:items:amc-value:3000.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 3,000.5 AMC");
});

<tag:items:amc-value:3049>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 3,049 AMC");
});

<tag:items:amc-value:3605>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 3,605 AMC");
});

<tag:items:amc-value:3150>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 3,150 AMC");
});

<tag:items:amc-value:3200.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 3,200.5 AMC");
});

<tag:items:amc-value:3299>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 3,299 AMC");
});

<tag:items:amc-value:4000>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 4,000 AMC");
});

<tag:items:amc-value:4080>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 4,080 AMC");
});

<tag:items:amc-value:4200>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 4,200 AMC");
});

<tag:items:amc-value:4200.25>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 4,200.25 AMC");
});

<tag:items:amc-value:4200.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 4,200.5 AMC");
});

<tag:items:amc-value:4725>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 4,725 AMC");
});

# Insane (5,000+) AMC, purple
# 10k+ is Dark Purple
<tag:items:amc-value:5000>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, purple + "Contains 5,000 AMC");
});

<tag:items:amc-value:5010>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, purple + "Contains 5,010 AMC");
});

<tag:items:amc-value:5200.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, purple + "Contains 5,200.5 AMC");
});

<tag:items:amc-value:5305>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, purple + "Contains 5,305 AMC");
});

<tag:items:amc-value:6000>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, purple + "Contains 6,000 AMC");
});

<tag:items:amc-value:7000>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, purple + "Contains 7,000 AMC");
});

<tag:items:amc-value:7200>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, purple + "Contains 7,200 AMC");
});

<tag:items:amc-value:8000>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, purple + "Contains 8,000 AMC");
});

// Sadly not over 9000.... *yet*
<tag:items:amc-value:9000>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, purple + "Contains 9,000 AMC");
});

// IT'S OVER NINE-THOUSSAAAAANNND!11!1!!
# 10k+ is Dark Purple

<tag:items:amc-value:9200>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, purple + "Contains 9,200 AMC");
});

<tag:items:amc-value:10000>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_purple + "Contains 10,000 AMC");
});

<tag:items:amc-value:12200>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_purple + "Contains 12,200 AMC");
});

<tag:items:amc-value:19800>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_purple + "Contains 19,800 AMC");
});

<tag:items:amc-value:45000>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_purple + "Contains 45,000 AMC");
});



# Mod Script Tooltips
# Don't feel like organizing it anymore tbh, I have way too much to do rn
/*
Tiers:
italicized dark gray: <1 (microscopic)
dark gray: 1 - 25 (minimal)
gray: 26 - 100 (average)
dark blue: 101 - 250 (above average)
dark aqua: 251 - 500 (high)
aqua: 501 - 1,000 (very high)
green: 1,001 - 4,999 (extreme)

purple: 5,000+ (insane)

default colour is white
*/
### Blood Magic
<tag:items:amc-value:28.305>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 28.305 AMC");
});

<tag:items:amc-value:34>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 34 AMC");
});

<tag:items:amc-value:38>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 38 AMC");
});

<tag:items:amc-value:60>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 60 AMC");
});



<tag:items:amc-value:101>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 101 AMC");
});

<tag:items:amc-value:113>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 113 AMC");
});

<tag:items:amc-value:131>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 131 AMC");
});

<tag:items:amc-value:160>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 160 AMC");
});

<tag:items:amc-value:162>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 162 AMC");
});

<tag:items:amc-value:174>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 174 AMC");
});

<tag:items:amc-value:185>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 185 AMC");
});

<tag:items:amc-value:238>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 238 AMC");
});



<tag:items:amc-value:260>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 260 AMC");
});

<tag:items:amc-value:285>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 285 AMC");
});

<tag:items:amc-value:290>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 290 AMC");
});

<tag:items:amc-value:292>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 292 AMC");
});

<tag:items:amc-value:330>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 330 AMC");
});

<tag:items:amc-value:405>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 405 AMC");
});

<tag:items:amc-value:435>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 435 AMC");
});

<tag:items:amc-value:463>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 463 AMC");
});

<tag:items:amc-value:495>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 495 AMC");
});



<tag:items:amc-value:700>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 700 AMC");
});

<tag:items:amc-value:789>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 789 AMC");
});

<tag:items:amc-value:804>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 804 AMC");
});



<tag:items:amc-value:1186>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 1,186 AMC");
});

<tag:items:amc-value:1425>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 1,425 AMC");
});

<tag:items:amc-value:2510>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 2,510 AMC");
});

<tag:items:amc-value:2700>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 2,700 AMC");
});


### Everything Else
# Mostly because I forgot to format this as time went on lmao
/*
Tiers:
italicized dark gray: <1 (microscopic)
dark gray: 1 - 25 (minimal)
gray: 26 - 100 (average)
dark blue: 101 - 250 (above average)
dark aqua: 251 - 500 (high)
aqua: 501 - 1,000 (very high)
green: 1,001 - 4,999 (extreme)

purple: 5,000+ (insane)

default colour is white
*/

// Low-Value (<100)
<tag:items:amc-value:2.25>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 2.25 AMC");
});
<tag:items:amc-value:4.125>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 4.125 AMC");
});

<tag:items:amc-value:4.611>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 4.611 AMC");
});

<tag:items:amc-value:4.851>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 4.851 AMC");
});

<tag:items:amc-value:6.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 6.5 AMC");
});

<tag:items:amc-value:8.75>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 8.75 AMC");
});

<tag:items:amc-value:8.972>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 8.972 AMC");
});

<tag:items:amc-value:15.75>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_gray + "Contains 15.75 AMC");
});

<tag:items:amc-value:36.833>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 36.833 AMC");
});

<tag:items:amc-value:54.291>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 54.291 AMC");
});

<tag:items:amc-value:62.833>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 62.833 AMC");
});

<tag:items:amc-value:63.331>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 63.331 AMC");
});

<tag:items:amc-value:91.25>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 91.25 AMC");
});

<tag:items:amc-value:97.75>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, gray + "Contains 97.75 AMC");
});

// 101+
<tag:items:amc-value:105.75>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 105.75 AMC");
});

<tag:items:amc-value:108>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 108 AMC");
});

<tag:items:amc-value:112.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 112.5 AMC");
});

<tag:items:amc-value:165>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 165 AMC");
});

<tag:items:amc-value:195>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 195 AMC");
});

<tag:items:amc-value:200.75>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 200.75 AMC");
});

<tag:items:amc-value:205>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 205 AMC");
});

<tag:items:amc-value:212.833>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 212.833 AMC");
});

<tag:items:amc-value:220>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 220 AMC");
});

<tag:items:amc-value:225.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 225.5 AMC");
});

<tag:items:amc-value:233.333>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 233.333 AMC");
});

<tag:items:amc-value:245>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_blue + "Contains 245 AMC");
});

<tag:items:amc-value:267>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 267 AMC");
});

<tag:items:amc-value:270>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 270 AMC");
});

<tag:items:amc-value:320>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 320 AMC");
});

<tag:items:amc-value:325>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 325 AMC");
});

<tag:items:amc-value:340>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 340 AMC");
});

<tag:items:amc-value:360>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 360 AMC");
});

<tag:items:amc-value:365>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 365 AMC");
});

<tag:items:amc-value:375>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 375 AMC");
});

<tag:items:amc-value:404>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 404 AMC");
});

<tag:items:amc-value:420>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 420 AMC");
});

<tag:items:amc-value:430>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 430 AMC");
});

<tag:items:amc-value:440>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 440 AMC");
});

<tag:items:amc-value:450.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 450.5 AMC");
});

<tag:items:amc-value:450.75>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 450.75 AMC");
});

<tag:items:amc-value:455>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 455 AMC");
});

<tag:items:amc-value:460>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 460 AMC");
});

<tag:items:amc-value:470>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 470 AMC");
});

<tag:items:amc-value:480>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, dark_aqua + "Contains 480 AMC");
});


// 500+
<tag:items:amc-value:509>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 509 AMC");
});

<tag:items:amc-value:525>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 525 AMC");
});

<tag:items:amc-value:540>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 540 AMC");
});

<tag:items:amc-value:545>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 545 AMC");
});

<tag:items:amc-value:555>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 555 AMC");
});

<tag:items:amc-value:575>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 575 AMC");
});

<tag:items:amc-value:588>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 588 AMC");
});

<tag:items:amc-value:610>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 610 AMC");
});

<tag:items:amc-value:620>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 620 AMC");
});

<tag:items:amc-value:637>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 637 AMC");
});

<tag:items:amc-value:640>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 640 AMC");
});

<tag:items:amc-value:645>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 645 AMC");
});

<tag:items:amc-value:655>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 655 AMC");
});

<tag:items:amc-value:663>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 663 AMC");
});

<tag:items:amc-value:695>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 695 AMC");
});

<tag:items:amc-value:720>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 720 AMC");
});

<tag:items:amc-value:730>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 730 AMC");
});

<tag:items:amc-value:738.75>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 738.75 AMC");
});

<tag:items:amc-value:735>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 735 AMC");
});

<tag:items:amc-value:745>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 745 AMC");
});

<tag:items:amc-value:765>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 765 AMC");
});

<tag:items:amc-value:805>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 805 AMC");
});

<tag:items:amc-value:810>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 810 AMC");
});

<tag:items:amc-value:835>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 835 AMC");
});

<tag:items:amc-value:855>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 855 AMC");
});

<tag:items:amc-value:865>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 865 AMC");
});

<tag:items:amc-value:895>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 895 AMC");
});

<tag:items:amc-value:900.75>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 900.75 AMC");
});

<tag:items:amc-value:925>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 925 AMC");
});

<tag:items:amc-value:975>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 975 AMC");
});

<tag:items:amc-value:990>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, aqua + "Contains 990 AMC");
});


// 1k+
<tag:items:amc-value:1005>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 1,005 AMC");
});

<tag:items:amc-value:1012.833>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 1,012.833 AMC");
});

<tag:items:amc-value:1013>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 1,013 AMC");
});

<tag:items:amc-value:1025>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 1,025 AMC");
});

<tag:items:amc-value:1045>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 1,045 AMC");
});

<tag:items:amc-value:1075>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 1,075 AMC");
});

<tag:items:amc-value:1090>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 1,090 AMC");
});

<tag:items:amc-value:1105>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 1,105 AMC");
});

<tag:items:amc-value:1125>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 1,125 AMC");
});

<tag:items:amc-value:1150>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 1,150 AMC");
});

<tag:items:amc-value:1320>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 1,320 AMC");
});

<tag:items:amc-value:1500>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 1,500 AMC");
});

<tag:items:amc-value:1520>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 1,520 AMC");
});

<tag:items:amc-value:1545>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 1,545 AMC");
});

<tag:items:amc-value:2065>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 2,065 AMC");
});

<tag:items:amc-value:2085>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 2,085 AMC");
});

<tag:items:amc-value:2115>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 2,115 AMC");
});

<tag:items:amc-value:2165>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 2,165 AMC");
});

<tag:items:amc-value:2175>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 2,175 AMC");
});

<tag:items:amc-value:2180>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 2,180 AMC");
});

<tag:items:amc-value:2245>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 2,245 AMC");
});

<tag:items:amc-value:2320>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 2,320 AMC");
});

<tag:items:amc-value:2388>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 2,388 AMC");
});

<tag:items:amc-value:2395>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 2,395 AMC");
});

<tag:items:amc-value:2400>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 2,400 AMC");
});

<tag:items:amc-value:2920>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 2,920 AMC");
});

<tag:items:amc-value:3095>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 3,095 AMC");
});

<tag:items:amc-value:3555>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 3,555 AMC");
});

<tag:items:amc-value:4300>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, green + "Contains 4,300 AMC");
});


// 5k+
<tag:items:amc-value:6200>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, purple + "Contains 6,200 AMC");
});

<tag:items:amc-value:6415>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, purple + "Contains 6,415 AMC");
});

<tag:items:amc-value:6570>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, purple + "Contains 6,570 AMC");
});

<tag:items:amc-value:6750>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, purple + "Contains 6,750 AMC");
});

<tag:items:amc-value:6755>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, purple + "Contains 6,755 AMC");
});

<tag:items:amc-value:7405>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, purple + "Contains 7,405 AMC");
});

<tag:items:amc-value:7430>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, purple + "Contains 7,430 AMC");
});

<tag:items:amc-value:8495>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, purple + "Contains 8,495 AMC");
});

<tag:items:amc-value:8802.777>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, purple + "Contains 8,802.777 AMC");
});

<tag:items:amc-value:9000.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, purple + "Contains 9,000.5 AMC");
});

<tag:items:amc-value:9675>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, purple + "Contains 9,675 AMC");
});

<tag:items:amc-value:11200.5>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, purple + "Contains 11,200.5 AMC");
});

<tag:items:amc-value:12370>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, purple + "Contains 12,370 AMC");
});

<tag:items:amc-value:12400>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, purple + "Contains 12,400 AMC");
});

<tag:items:amc-value:18000.75>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, purple + "Contains 18,000.75 AMC");
});

<tag:items:amc-value:20200.75>.asIIngredient().modifyTooltip((stack, tooltip, advanced) => {
    tooltip.insert(1, purple + "Contains 20,200.75 AMC");
});


print("tooltips_amc.zs loaded");