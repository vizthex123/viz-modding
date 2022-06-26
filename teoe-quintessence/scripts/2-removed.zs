# Removes things for whatever reason
print("2-removed.zs loading...");
/*
craftingTable.remove(<item>);
craftingTable.removeByName("name");
*/


# Industrial Foregoing's gears
craftingTable.remove(<item:industrialforegoing:iron_gear>);
craftingTable.remove(<item:industrialforegoing:gold_gear>);
craftingTable.remove(<item:industrialforegoing:diamond_gear>);


# Remove duplicate recipes
craftingTable.removeByName("minecraft:lead");
craftingTable.removeByName("essentials:piston");
craftingTable.removeByName("minecraft:end_crystal");
craftingTable.removeByName("minecraft:comparator");
craftingTable.removeByName("minecraft:sticky_piston");
craftingTable.removeByName("malum:lead_from_sapballs");
craftingTable.removeByName("malum:sticky_piston_from_sapballs");
craftingTable.removeByName("lightmanscurrency:coinjar_piggy_bank1");
craftingTable.removeByName("nourished_nether:netherite_nuggets_to_ingot");
craftingTable.removeByName("thermal:storage/netherite_ingot_from_nuggets");
craftingTable.removeByName("twilightforest:equipment/fiery_ingot_crafting");
smithing.removeByName("twilightforest:material/fiery_iron_ingot_reversed");


# Misc
furnace.removeByName("ob_core:platinum_raw_smelt");

craftingTable.remove(<item:minecraft:elytra>);
craftingTable.remove(<item:minecraft:saddle>);
craftingTable.remove(<item:minecraft:name_tag>);

craftingTable.remove(<item:wstweaks:lava_blade>);
craftingTable.remove(<item:wstweaks:blaze_blade>);
craftingTable.remove(<item:essentials:slotted_chest>);


print("2-removed.zs loaded");