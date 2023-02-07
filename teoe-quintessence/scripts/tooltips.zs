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

<item:quark:dirty_shard>.addTooltip(aqua + "Can be smelted into Glass Shards");

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
<item:deepresonance:spent_filter_material>.addTooltip(aqua + "Can be recycled into normal filters using Quicklime in an Induction Smelter");



# Quarries
<item:squarry:fuel_quarry>.addTooltip(red + "Only mines the chunk it's placed in");
<item:squarry:fuel_quarry>.addTooltip(red +"Doesn't accept upgrades");

<item:squarry:powered_quarry>.addTooltip(red +"Only mines the chunk it's placed in");
<item:squarry:powered_quarry>.addTooltip(aqua +"Accepts both RF and solid fuel");
<item:squarry:powered_quarry>.addTooltip(green + "Can hold 5 upgrades");



# Coinification tooltips
<item:minecraft:totem_of_undying>.addShiftTooltip(aqua + "Can be coinified using a Pulverizer or Crushing Wheels");

<item:enigmaticlegacy:unholy_grail>.addShiftTooltip(aqua + "Can be coinified using a Pulverizer or Crushing Wheels");
<item:enigmaticlegacy:architect_eye>.addShiftTooltip(aqua + "Can be coinified using a Pulverizer or Crushing Wheels");
<item:enigmaticlegacy:lore_inscriber>.addShiftTooltip(aqua + "Can be coinified using a Pulverizer or Crushing Wheels");
<item:enigmaticlegacy:earth_heart>.addShiftTooltip(aqua + "Can be coinified using a Pulverizer or Crushing Wheels");

<item:quark:diamond_heart>.addTooltip(aqua + "Can be coinified using a Pulverizer or Crushing Wheels");

<item:twilightforest:maze_map_focus>.addTooltip(aqua + "Can be coinified using a Pulverizer or Crushing Wheels");
<item:twilightforest:twilight_scepter>.addTooltip(aqua + "Can be coinified using a Pulverizer or Crushing Wheels");
<item:twilightforest:lifedrain_scepter>.addTooltip(aqua + "Can be coinified using a Pulverizer or Crushing Wheels");
<item:twilightforest:zombie_scepter>.addTooltip(aqua + "Can be coinified using a Pulverizer or Crushing Wheels");
<item:twilightforest:fortification_scepter>.addTooltip(aqua + "Can be coinified using a Pulverizer or Crushing Wheels");
<item:twilightforest:charm_of_keeping_1>.addTooltip(aqua + "Can be coinified using a Pulverizer or Crushing Wheels");
<item:twilightforest:charm_of_keeping_2>.addTooltip(aqua + "Can be coinified using a Pulverizer or Crushing Wheels");
<item:twilightforest:charm_of_keeping_3>.addTooltip(aqua + "Can be coinified using a Pulverizer or Crushing Wheels");
<item:twilightforest:charm_of_life_1>.addTooltip(aqua + "Can be coinified using a Pulverizer or Crushing Wheels");
<item:twilightforest:charm_of_life_2>.addTooltip(aqua + "Can be coinified using a Pulverizer or Crushing Wheels");



# Tooltip Removal
<item:tesseract:tesseract>.removeTooltip("Items, fluids, and energy can be transferred between multiple tesseracts");

print("tooltips.zs loaded");