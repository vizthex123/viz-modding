# Adds tooltips to various items since KubeJS can't do it
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
val ital = "\u00A7o";
val clf = "\u00A7r";

/*
<item>.addTooltip("tip");
*/

<item:alexscaves:green_soylent>.addShiftTooltip(green + "It's probably not made of people, right?");



# Coin values
<item:coinsje:copper_coin>.addTooltip(gold + "$1");
<item:coinsje:iron_coin>.addTooltip(gold + "$10");
<item:coinsje:gold_coin>.addTooltip(gold + "$100");
<item:coinsje:diamond_coin>.addTooltip(gold + "$1,000");
<item:coinsje:netherite_coin>.addTooltip(gold + "$10,000");

<item:coinsje:copper_coin_pile>.addTooltip(gold + "$5");
<item:coinsje:iron_coin_pile>.addTooltip(gold + "$50");
<item:coinsje:gold_coin_pile>.addTooltip(gold + "$500");
<item:coinsje:diamond_coin_pile>.addTooltip(gold + "$5,000");
<item:coinsje:netherite_coin_pile>.addTooltip(gold + "$50,000");

print("tooltips.zs loaded");