# Adds tooltips and renames items
print("renames_tooltips.zs loading...");
/*
<item>.displayName = "New Name";
<item>.addTooltip("Tooltip");
<item>.addShiftTooltip("Tooltip");
*/

<ironfurnaces:iron_furnace_idle>.addTooltip(format.gold("1 Fuel (200 Burn Time) smelts 2 Items"));
<ironfurnaces:gold_furnace_idle>.addTooltip(format.gold("1 Fuel (200 Burn Time) smelts 4 Items"));
<ironfurnaces:diamond_furnace_idle>.addTooltip(format.gold("1 Fuel (200 Burn Time) smelts 8 Items"));
<ironfurnaces:obsidian_furnace_idle>.addTooltip(format.gold("1 Fuel (200 Burn Time) smelts 12 Items"));

print("renames_tooltips.zs loaded");