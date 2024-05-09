# Changes recipes for Refined Storage's blocks & items. Mostly so it's easier for me to find them.
// RS stuff is removed in JEI.zs
print("refined_storage.zs loading...");
/*
recipes.remove(<>);
recipes.addShaped(<output>, [[<null>, <null>, <null>],
                                      [<null>, <null>, <null>],
                                      [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
furnace.addRecipe(<output>, <input>, XP[F]);

Combination Crafting: (Crafting Core + Pedestals)
mods.extendedcrafting.CombinationCrafting.addRecipe(<output>, rfCost, RFRATE, <catalyst>, [<input1>, <input2>, <up to 48 max>]);

mods.extendedcrafting.CombinationCrafting.remove(<output>);
*/

// Fixes how Quartz-Enriched Iron isn't shapeless (why?)
recipes.remove(<refinedstorage:quartz_enriched_iron>);
recipes.addShapeless(<refinedstorage:quartz_enriched_iron>*4, [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:quartz>]);
recipes.addShapeless(<refinedstorage:quartz_enriched_iron>*9, [<refinedstorage:quartz_enriched_iron_block>]);

// Alternate recipe for the 4k storage block
// Lets it use either a 4k core, or 3 1k cores/storages
recipes.addShaped(<refinedstorage:storage:1>, [[<refinedstorage:quartz_enriched_iron>, <projectred-core:resource_item:105>, <refinedstorage:quartz_enriched_iron>],
                                   			              [<refinedstorage:storage>|<refinedstorage:storage_part>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:storage>|<refinedstorage:storage_part>],
                                  			              [<refinedstorage:quartz_enriched_iron>, <refinedstorage:storage>|<refinedstorage:storage_part>, <refinedstorage:quartz_enriched_iron>]]);

// Change recipe for the Matter-Energy Manipulation  (Construction) Core
recipes.remove(<refinedstorage:core>);
recipes.addShapeless(<refinedstorage:core>, [<refinedstorage:processor:3>, <projectred-core:resource_item:105>]);
recipes.addShapeless(<refinedstorage:core>, [<refinedstorage:processor:3>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>]);

// Change recipe for the Network & Security Cards
recipes.remove(<refinedstorage:network_card>);
recipes.remove(<refinedstorage:security_card>);
recipes.addShaped(<refinedstorage:network_card>, [[<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>],
                                   			                       [<minecraft:paper>, <refinedstorage:processor:3>, <minecraft:paper>],
                                   				   [<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]]);

recipes.addShaped(<refinedstorage:security_card>, [[<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>],
                                   			                       [<refinedstorage:processor:3>, <refinedstorage:network_card>, <refinedstorage:processor:3>],
                                   				   [<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]]);

// Change recipe for the Security Manager
recipes.remove(<refinedstorage:security_manager>);
recipes.addShaped(<refinedstorage:security_manager>, [[<refinedstorage:quartz_enriched_iron>, <ore:chestWood>, <refinedstorage:quartz_enriched_iron>],
                                     				          [<minecraft:redstone>|<projectred-core:resource_item:105>, <refinedstorage:machine_casing>, <minecraft:redstone>|<projectred-core:resource_item:105>],
                                   				          [<refinedstorage:quartz_enriched_iron>, <refinedstorage:security_card>.reuse(), <refinedstorage:quartz_enriched_iron>]]);

// Craftable 4k disk
// For use with the Portable Grid
recipes.remove(<refinedstorage:storage_disk:1>);
recipes.addShapeless(<refinedstorage:storage_disk:1>, [<refinedstorage:storage:1>, <advancedrocketry:ic:3>, <ore:circuitAdvanced>]);

// Portable Grid
recipes.remove(<refinedstorage:portable_grid>);
recipes.addShaped(<refinedstorage:portable_grid>, [[<refinedstorage:quartz_enriched_iron>, <ore:circuitAdvanced>, <refinedstorage:quartz_enriched_iron>],
                                   				  [<refinedstorage:quartz_enriched_iron>, <refinedstorage:grid>, <refinedstorage:quartz_enriched_iron>],
                                      				  [<refinedstorage:quartz_enriched_iron>, <refinedstorage:storage>, <refinedstorage:quartz_enriched_iron>]]);

# Renames & Tooltips
# A few are left in renames_tooltips.zs for consistency
<refinedstorage:controller>.displayName = "RS Controller";
<refinedstorage:grid>.displayName = "Basic Terminal";
<refinedstorage:quartz_enriched_iron>.displayName = "Quartz-Enriched Iron";
<refinedstorage:portable_grid>.displayName = "Portable System";

<refinedstorage:cutting_tool>.addTooltip(format.white("Combine with a block to craft facades"));
<refinedstorage:filter>.addTooltip(format.white("Filters items in Portable System or Basic Terminal"));

print("refined_storage.zs loaded");