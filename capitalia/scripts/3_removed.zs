# Removes item recipies for whatever reason
/*
recipes.remove(<>);
*/

print("removed.zs loading...");

// Misc
recipes.remove(<minecraft:saddle>);
recipes.remove(<minecraft:iron_horse_armor>);
recipes.remove(<minecraft:golden_horse_armor>);
recipes.remove(<minecraft:diamond_horse_armor>);
recipes.remove(<waystones:waystone>);
recipes.remove(<natura:sticks:*>);
recipes.removeByRecipeName("thermalexpansion:morb_2");


// Tooltips about how things are useless
<foundry:mold:5>.addTooltip(format.red("Cannot be used to craft anything!"));
<foundry:mold:6>.addTooltip(format.red("Cannot be used to craft anything!"));


print("removed.zs loaded");