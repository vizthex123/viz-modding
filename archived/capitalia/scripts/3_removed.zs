# Removes item recipies for whatever reason
/*
recipes.remove(<>);
*/

print("removed.zs loading...");

// Remove the Iron Rod recipe (re-added in ExtendedCrafting.zs and foundry.zs)
recipes.remove(<libvulpes:productrod:1>);

// Duplicate Steel recipes
recipes.removeByRecipeName("advancedrocketry:unpackingotsteel");
recipes.removeByRecipeName("advancedrocketry:unpackblocksteel");

// Misc
recipes.remove(<minecraft:saddle>);
recipes.remove(<minecraft:iron_horse_armor>);
recipes.remove(<minecraft:golden_horse_armor>);
recipes.remove(<minecraft:diamond_horse_armor>);
recipes.remove(<waystones:waystone>);
recipes.remove(<natura:sticks:*>);
recipes.removeByRecipeName("minecraft:comparator");
recipes.removeByRecipeName("thermalexpansion:morb_2");

print("removed.zs loaded");