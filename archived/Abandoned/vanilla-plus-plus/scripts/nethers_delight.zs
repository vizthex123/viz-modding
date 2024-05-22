# Handles things from Nether's Delight so I don't have to constantly edit script files cuz modrinth is stupid
print("nethers_delight.zs loading...");

# Compost
composter.setValue(<item:nethersdelight:hoglin_loin>, 0.45);



## Recipes
// Make Warped Moldy Meat use tags
craftingTable.removeByName("nethersdelight:warped_moldy_meat");
craftingTable.addShapeless("warped_moldy_meat", <item:nethersdelight:warped_moldy_meat>, [<item:nethersdelight:hoglin_sirloin>, <item:minecraft:warped_roots>, <item:minecraft:warped_roots>, <tag:items:vanilla:bowl>]);

# Removals
furnace.removeByName("nethersdelight:iron_nugget_from_smelting_machete");
furnace.removeByName("nethersdelight:gold_nugget_from_smelting_machete");
blastFurnace.removeByName("nethersdelight:iron_nugget_from_blasting_machete");
blastFurnace.removeByName("nethersdelight:gold_nugget_from_blasting_machete");



# Biomass tags
<tag:items:vanilla:raw_meat>.add(<item:nethersdelight:hoglin_loin>);

<tag:items:c:crops>.add(<item:nethersdelight:propelpearl>);
<tag:items:c:crops/propelpearl>.add(<item:nethersdelight:propelpearl>);



# Scrap tags
val iron = <tag:items:vanilla:meltable_iron>;
val gold = <tag:items:vanilla:meltable_gold>;

val small_gold = <tag:items:vanilla:meltable_gold_small>;

val diamond = <tag:items:vanilla:meltable_diamond>;

val netherite = <tag:items:vanilla:meltable_netherite>;



iron.add(<item:nethersdelight:blackstone_blast_furnace>);
iron.add(<item:nethersdelight:iron_machete>);
iron.add(<item:nyfsquiver:iron_quiver>);

gold.add(<item:nethersdelight:golden_machete>);

small_gold.add(<item:nethersdelight:hoglin_mount>);

diamond.add(<item:nethersdelight:diamond_machete>);

netherite.add(<item:nethersdelight:netherite_machete>);


# Tags
<tag:items:c:furnaces>.add(<item:nethersdelight:blackstone_furnace>);

print("nethers_delight.zs loaded");