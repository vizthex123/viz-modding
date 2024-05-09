# Removes recipes for whatever reason
print("2-removed.zs loading...");

/*
<recipetype:minecraft:crafting>.removeRecipe(<item>);
<recipetype:minecraft:smelting>.removeRecipe(<item>);

furnace.removeByName("recipe");
craftingTable.removeByName("recipeName");
*/

// Unused Extended Crafting content
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:ultimate_table>);
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:ultimate_auto_table>);
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:ultimate_component>);
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:ultimate_catalyst>);
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:ender_component>);
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:ender_catalyst>);
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:enhanced_ender_component>);
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:enhanced_ender_catalyst>);
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:crystaltine_component>);
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:crystaltine_catalyst>);
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:the_ultimate_component>);
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:the_ultimate_catalyst>);

<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:ender_star>);
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:ender_star_block>);
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:enhanced_ender_nugget>);
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:enhanced_ender_ingot>);
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:enhanced_ender_ingot_block>);
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:crystaltine_nugget>);
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:crystaltine_ingot>);
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:crystaltine_block>);
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:the_ultimate_nugget>);
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:the_ultimate_ingot>);
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:the_ultimate_block>);


mods.extendedcrafting.EnderCrafting.remove(<item:extendedcrafting:ender_star>);
mods.extendedcrafting.EnderCrafting.remove(<item:extendedcrafting:enhanced_ender_ingot>);
mods.extendedcrafting.TableCrafting.remove(<item:extendedcrafting:crystaltine_ingot>);


// Wither Skeleton Tweaks' swords
<recipetype:minecraft:crafting>.removeRecipe(<item:wstweaks:lava_blade>);
<recipetype:minecraft:crafting>.removeRecipe(<item:wstweaks:blaze_blade>);


// The duplicate Cut Diamond > Diamond recipes
// Why tf did the author add like 4 of them wtf?
craftingTable.removeByName("heartcanisters:cut_diamond_uncrafting2");
craftingTable.removeByName("heartcanisters:cut_diamond_uncrafting3");
craftingTable.removeByName("heartcanisters:cut_diamond_uncrafting4");


// Hammers
<recipetype:minecraft:crafting>.removeRecipe(<item:vanillahammers:prismarine_hammer>);
<recipetype:minecraft:crafting>.removeRecipe(<item:vanillahammers:redstone_hammer>);
<recipetype:minecraft:crafting>.removeRecipe(<item:vanillahammers:lapis_hammer>);
<recipetype:minecraft:crafting>.removeRecipe(<item:vanillahammers:coal_hammer>);

<recipetype:minecraft:crafting>.removeRecipe(<item:vanillahammers:paper_hammer>);
<recipetype:minecraft:crafting>.removeRecipe(<item:vanillahammers:bone_hammer>);
<recipetype:minecraft:crafting>.removeRecipe(<item:vanillahammers:slime_hammer>);

<recipetype:minecraft:crafting>.removeRecipe(<item:vanillahammers:glowstone_hammer>);
<recipetype:minecraft:crafting>.removeRecipe(<item:vanillahammers:nether_hammer>);
<recipetype:minecraft:crafting>.removeRecipe(<item:vanillahammers:quartz_hammer>);
<recipetype:minecraft:crafting>.removeRecipe(<item:vanillahammers:fiery_hammer>);


// Excavators
<recipetype:minecraft:crafting>.removeRecipe(<item:vanillaexcavators:prismarine_excavator>);
<recipetype:minecraft:crafting>.removeRecipe(<item:vanillaexcavators:redstone_excavator>);
<recipetype:minecraft:crafting>.removeRecipe(<item:vanillaexcavators:lapis_excavator>);
<recipetype:minecraft:crafting>.removeRecipe(<item:vanillaexcavators:coal_excavator>);

<recipetype:minecraft:crafting>.removeRecipe(<item:vanillaexcavators:paper_excavator>);
<recipetype:minecraft:crafting>.removeRecipe(<item:vanillaexcavators:bone_excavator>);
<recipetype:minecraft:crafting>.removeRecipe(<item:vanillaexcavators:slime_excavator>);

<recipetype:minecraft:crafting>.removeRecipe(<item:vanillaexcavators:glowstone_excavator>);
<recipetype:minecraft:crafting>.removeRecipe(<item:vanillaexcavators:nether_excavator>);
<recipetype:minecraft:crafting>.removeRecipe(<item:vanillaexcavators:quartz_excavator>);
<recipetype:minecraft:crafting>.removeRecipe(<item:vanillaexcavators:fiery_excavator>);


// Misc
craftingTable.removeByName("morevanillalib:paper");
craftingTable.removeByName("oddwatermobs:deep_tnt");
craftingTable.removeByName("rftoolsbase:dimensionalshard");
<recipetype:minecraft:crafting>.removeRecipe(<item:dwarfcoal:charcoal_block>);
<recipetype:minecraft:crafting>.removeRecipe(<item:cb_microblock:stone_rod>);
<recipetype:minecraft:crafting>.removeRecipe(<item:morevanillalib:paper_bundle>);
<recipetype:minecraft:crafting>.removeRecipe(<item:morevanillalib:obsidian_shard>);


print("2-removed.zs loaded");