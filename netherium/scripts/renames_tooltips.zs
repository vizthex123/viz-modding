import crafttweaker.api.item.tooltip.ITooltipFunction;


val black = "\u00A70";
val dark_blue = "\u00A71";
val dark_green = "\u00A72";
val dark_aqua = "\u00A73";
val dark_red = "\u00A74";
val dark_purple = "\u00A75";
val gold = "\u00A76";
val gray = "\u00A77";
val dark_gray = "\u00A78";
val blue = "\u00A79";
val green = "\u00A7a";
val aqua = "\u00A7b";
val red = "\u00A7c";
val light_purple = "\u00A7d";
val yellow = "\u00A7e";
val white = "\u00A7f";

val obf = "\u00A7k";
val bold = "\u00A7l";
val strike = "\u00A7m";
val under = "\u00A7n";
val ital = "\u00A7o";
val clf = "\u00A7r";

# Renames items, and/or adds tooltips to them
print("renames_tooltips.zs loading...");
/*
<item>.displayName = "newName";
<item>.addTooltip("tip");
*/

/*
// Rename XP Coins to tokens
<item:xpcoins:copper_coin>.displayName = "Copper XP Token";
<item:xpcoins:silver_coin>.displayName = "Silver XP Token";
<item:xpcoins:golden_coin>.displayName = "Golden XP Token";
<item:xpcoins:platinum_coin>.displayName = "Platinum XP Token";
*/

// Tooltips
<item:minecraft:crying_obsidian>.addTooltip(aqua + "An impure form of Obsidian.");
<item:minecraft:crying_obsidian>.addTooltip(aqua + "I'm sure this can be refined further.");
<item:repairchests:basic_chest>.addTooltip(green + "Repairs 1 damage every 10 seconds");
<item:repairchests:advanced_chest>.addTooltip(green + "Repairs 1 damage every 5 seconds");
<item:repairchests:ultimate_chest>.addTooltip(green + "Repairs 1 damage every second");

<item:sophisticatedbackpacks:smelting_upgrade>.addTooltip(red + "Uses 2x the fuel to smelt an item" + "\n(400 burn ticks per instead of 200)");
<item:sophisticatedbackpacks:auto_smelting_upgrade>.addTooltip(green + "Smelts items twice as fast as a regular furnace");
<item:contenttweaker:wrapped_fuel_core>.addTooltip(aqua + "For compact storage of Uranium Fuel Cores");
<item:create:filter>.addTooltip(red + "Not compatible with Mechanical Arms");

<item:enderitemod:enderite_ore>.addTooltip(red + "Must be weakened with explosions before it can be mined");



// Uranium fuel stacksizes
<item:contenttweaker:uranium_pellet>.addTooltip(white + "Stacks to 32");
<item:contenttweaker:uranium_drop>.addTooltip(white + "Stacks to 16");
<item:contenttweaker:uranium_canister>.addTooltip(white + "Stacks to 8");
<item:contenttweaker:uranium_rod>.addTooltip(white + "Stacks to 4");
<item:contenttweaker:uranium_fuel_core>.addTooltip(red + "Does not stack");
<item:contenttweaker:wrapped_fuel_core>.addTooltip(white + "Stacks to 4");


// Overslime items
<item:minecraft:slime_ball>.addTooltip(green + "Restores 1 point of Overslime" + "\nAnything with the forge:slimeball tag will work");
<item:tconstruct:earth_slime_crystal>.addTooltip(green + "Restores 10 point of Overslime");
<item:contenttweaker:blood_crystal>.addTooltip(green + "Restores 20 points of Overslime" + red + "\nConversion recipe is a temporary workaround!");
<item:minecraft:magma_cream>.addTooltip(green + "Restores 25 points of Overslime");
<item:tconstruct:sky_slime_crystal>.addTooltip(green + "Restores 40 points of Overslime");
<item:contenttweaker:pink_slime_crystal>.addTooltip(green + "Restores 50 points of Overslime" + red + "\nConversion recipe is a temporary workaround!");
<item:tconstruct:ichor_slime_crystal>.addTooltip(green + "Restores 100 point of Overslime");
<item:industrialforegoing:pink_slime_ingot>.addTooltip(green + "Restores 150 points of Overslime");
<item:tconstruct:ender_slime_crystal>.addTooltip(green + "Restores 200 point of Overslime");


print("renames_tooltips.zs loaded");