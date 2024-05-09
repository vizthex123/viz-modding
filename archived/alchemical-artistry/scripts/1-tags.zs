# Adds tags to various items
# rip OreDict, 20XX - 2k18
#priority 25
import crafttweaker.api.tag.MCTag;

print("1-tags.zs loading...");

/*
<tag>.add(<item>);
*/


# Workbenches
<tag:items:forge:workbench>.add(<item:minecraft:crafting_table>);


# Music Discs
<tag:items:minecraft:music_discs>.add(<item:mowziesmobs:music_disc_petiole>);
<tag:items:minecraft:music_discs>.add(<item:oddwatermobs:bathosphere>);
<tag:items:minecraft:music_discs>.add(<item:oddwatermobs:coelacanth_record>);
<tag:items:minecraft:music_discs>.add(<item:oddwatermobs:seapig_record>);



# Mushrooms
<tag:items:forge:mushrooms>.add(<item:minecraft:warped_fungus>);
<tag:items:forge:mushrooms>.add(<item:minecraft:crimson_fungus>);


# Crystalline
/*
<tag:items:pack:crystalline>.add(<item:contenttweaker:amc_crystal_microscopic>);
<tag:items:pack:crystalline>.add(<item:contenttweaker:amc_crystal_miniscule>);
<tag:items:pack:crystalline>.add(<item:contenttweaker:amc_crystal_tiny>);
<tag:items:pack:crystalline>.add(<item:contenttweaker:amc_crystal_small>);
<tag:items:pack:crystalline>.add(<item:contenttweaker:amc_crystal_large>);
*/
<tag:items:pack:crystalline>.add(<item:minecraft:prismarine_crystals>);
<tag:items:pack:crystalline>.add(<item:mowziesmobs:ice_crystal>);
<tag:items:pack:crystalline>.add(<item:bloodmagic:defaultcrystal>);
<tag:items:pack:crystalline>.add(<item:bloodmagic:corrosivecrystal>);
<tag:items:pack:crystalline>.add(<item:bloodmagic:vengefulcrystal>);
<tag:items:pack:crystalline>.add(<item:bloodmagic:destructivecrystal>);
<tag:items:pack:crystalline>.add(<item:bloodmagic:steadfastcrystal>);
<tag:items:pack:crystalline>.add(<item:minecraft:end_crystal>);
<tag:items:pack:crystalline>.add(<item:thermal:xp_crystal>);


// Odd Water Mobs' content
<tag:items:forge:sand>.add(<item:oddwatermobs:deep_sand>);
<tag:items:forge:sandstone>.add(<item:oddwatermobs:deep_sandstone>);
<tag:items:forge:sandstone>.add(<item:oddwatermobs:cut_deep_sandstone>);
<tag:items:forge:sandstone>.add(<item:oddwatermobs:smooth_deep_sandstone>);
<tag:items:forge:sandstone>.add(<item:oddwatermobs:chiseled_deep_sandstone>);



// Misc




// Removal
<tag:items:forge:rods/stone>.remove(<item:cb_microblock:stone_rod>);
<tag:items:forge:rods>.remove(<item:cb_microblock:stone_rod>);



print("1-tags.zs loaded");