# Adds tooltips to various items

import crafttweaker.api.item.tooltip.ITooltipFunction;

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
<item>.displayName = "newName";
<item>.addTooltip("tip");
*/


# Overslime restoration items
<item:minecraft:slime_ball>.addTooltip(green + "Restores 10 points of Overslime");
<item:minecraft:slime_block>.addTooltip(green + "Restores 108 points of Overslime");
<item:tconstruct:earth_congealed_slime>.addTooltip(green + "Restores 45 points of Overslime");

<item:tconstruct:ichor_slime_ball>.addTooltip(green + "Restores 100 points of Overslime");
<item:tconstruct:ichor_slime>.addTooltip(green + "Restores 1,080 points of Overslime");
<item:tconstruct:ichor_congealed_slime>.addTooltip(green + "Restores 450 points of Overslime");

<item:tconstruct:sky_slime_ball>.addTooltip(green + "Restores 40 points of Overslime");
<item:tconstruct:sky_slime>.addTooltip(green + "Restores 432 points of Overslime");
<item:tconstruct:sky_congealed_slime>.addTooltip(green + "Restores 180 points of Overslime");



# Recycling tooltips
<item:additionaladditions:depth_meter>.addTooltip(aqua + "Can be recycled in an Induction Furnace");
<item:deepresonance:spent_filter_material>.addTooltip(aqua + "Can be recycled into normal filters using Lime in an Induction Furnace");


# Coinification tooltips
<item:enigmaticlegacy:unholy_grail>.addTooltip(aqua + "Can be coinified using a Pulverizer or Crushing Wheels");
<item:enigmaticlegacy:lore_inscriber>.addTooltip(aqua + "Can be coinified using a Pulverizer or Crushing Wheels");


print("tooltips.zs loaded");