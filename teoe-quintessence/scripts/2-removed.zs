# Removes things for whatever reason
print("2-removed.zs loading...");
/*
craftingTable.remove(<item>);
craftingTable.removeByName("name");
furnace.removeByName("name");
*/


# Industrial Foregoing's gears
# Their tags are removed in 1-tags..zs
craftingTable.remove(<item:industrialforegoing:iron_gear>);
craftingTable.remove(<item:industrialforegoing:gold_gear>);
craftingTable.remove(<item:industrialforegoing:diamond_gear>);



# Remove duplicate recipes
craftingTable.removeByName("minecraft:lead");
craftingTable.removeByName("minecraft:beacon");
craftingTable.removeByName("minecraft:end_crystal");
craftingTable.removeByName("minecraft:comparator");
craftingTable.removeByName("minecraft:glass_bottle");
craftingTable.removeByName("minecraft:sticky_piston");
craftingTable.removeByName("minecraft:magma_cream");

craftingTable.removeByName("ae2:misc/vanilla_comparator");

craftingTable.removeByName("create:crafting/materials/copper_ingot");
craftingTable.removeByName("create:crafting/materials/copper_nugget");

craftingTable.removeByName("essentials:piston");

craftingTable.removeByName("malum:lead_from_sapballs");
craftingTable.removeByName("malum:copper_ingot_from_nugget");
craftingTable.removeByName("malum:copper_nugget_from_ingot");
craftingTable.removeByName("malum:sticky_piston_from_sapballs");
craftingTable.removeByName("malum:magma_cream_from_sapballs");

craftingTable.removeByName("nourished_nether:netherite_nugget");
furnace.removeByName("nourished_nether:smelt_netherite_gear");

craftingTable.removeByName("tconstruct:common/materials/copper_nugget_from_ingot");
craftingTable.removeByName("tconstruct:common/materials/copper_ingot_from_nuggets");
craftingTable.removeByName("tconstruct:common/materials/netherite_nugget_from_ingot");

craftingTable.removeByName("twilightforest:equipment/fiery_ingot_crafting");
smithing.removeByName("twilightforest:material/fiery_iron_ingot");



# Misc
furnace.removeByName("quark:tools/smelting/trowel_to_iron_nugget");
furnace.removeByName("ob_core:platinum_raw_smelt");
furnace.removeByName("minecraft:netherite_scrap");

craftingTable.remove(<item:minecraft:elytra>);
craftingTable.remove(<item:minecraft:saddle>);
craftingTable.remove(<item:minecraft:name_tag>);

craftingTable.remove(<item:ae2:vibration_chamber>);
craftingTable.remove(<item:essentials:slotted_chest>);
craftingTable.remove(<item:wstweaks:blaze_blade>);
craftingTable.remove(<item:wstweaks:lava_blade>);


print("2-removed.zs loaded");