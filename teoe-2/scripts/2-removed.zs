# Removes things for whatever reason
print("2-removed.zs loading...");
/*
craftingTable.remove(<item>);
craftingTable.removeByName("name");
*/

// Fixes Copper Ingots having multiple Nugget > Ingot recipes
// Removes the TE and TConstruct ones, uses the Create ones
craftingTable.removeByName("thermal:storage/copper_ingot_from_nuggets");
craftingTable.removeByName("tconstruct:common/materials/copper_ingot_from_nuggets");

// Force Fiery Ingots to be made in a Smithing Table
craftingTable.removeByName("twilightforest:equipment/fiery_ingot_crafting");

# Misc
craftingTable.remove(<item:wstweaks:lava_blade>);
craftingTable.remove(<item:wstweaks:blaze_blade>);
furnace.removeByName("ob_core:platinum_raw_smelt");

print("2-removed.zs loaded");