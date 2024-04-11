# Adds tooltips to various items

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

# Mage Hands
<item:magehand:copper_spawner_item>.addTooltip("Transports items. Shift+right-click a chest to bind it (becomes the \"home chest\")" + green + "\n16 block radius" + red + "\nCannot be filtered.");
<item:magehand:iron_spawner_item>.addTooltip("Kills enemies near you." + green + "\nWhy not give it a sword, too?");
<item:magehand:gold_spawner_item>.addTooltip("Harvests crops near its home chest." + red + "\nDoes not pick up items");
<item:magehand:diamond_spawner_item>.addTooltip("Seeks out vanilla ores within a 16-block radius");
<item:magehand:amethyst_spawner_item>.addTooltip("Transports items. Shift+right-click a chest to bind it (becomes the \"home chest\")" + red + "Can filter a single item (whitelist or blacklist)");
# <item:magehand:wood_spawner_item>.addTooltip("");

print("tooltips.zs loaded");