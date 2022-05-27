# Changes recipes for Magneticraft items
print("magneticraft.zs loading...");
/*
mods.magneticraft.CrushingTable.addHammer(<item>, minelvl, speed, durability/item);

mods.magneticraft.CrushingTable.addRecipe(<input>, <output>, true*);
* OreDict tag

recipes.addShaped(<output>, [[<null>, <null>, <null>],
                                      [<null>, <null>, <null>],
                                      [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);

https://github.com/Magneticraft-Team/Magneticraft/wiki/CraftTweaker
*/

<ore:dustIron>.addTooltip(format.red("Note that the ingots are still staged!"));
<ore:dustGold>.addTooltip(format.red("Note that the ingots are still staged!"));
<ore:dustOsmium>.addTooltip(format.red("Note that the ingots are still staged!"));
<ore:dustAluminum>.addTooltip(format.red("Note that the ingots are still staged!"));
<ore:dustTungsten>.addTooltip(format.red("Note that the ingots are still staged!"));
<ore:dustTitanium>.addTooltip(format.red("Note that the ingots are still staged!"));

// Crushing Table recipe for Ender (Pearl) Dust
mods.magneticraft.CrushingTable.addRecipe(<minecraft:ender_pearl>, <appliedenergistics2:material:46>);

// Crushing Table recipe for Black Artifical Dye
mods.magneticraft.CrushingTable.addRecipe(<advancedrocketry:misc:1>, <industrialforegoing:artificial_dye:15>);

// Crushing Table recipes for my custom rocky chunks
// Make Platinum and Iridium need an Iron hammer, and Titanium require Steel
#	mods.magneticraft.CrushingTable.addRecipe(<libvulpes:ore0>, <libvulpes:productdust>*2);
mods.magneticraft.CrushingTable.addRecipe(<ore:oreTitanium>, <jaopca:item_rockychunktitanium>);
mods.magneticraft.CrushingTable.addRecipe(<ore:orePlatinum>, <jaopca:item_rockychunkplatinum>);
mods.magneticraft.CrushingTable.addRecipe(<ore:oreIridium>, <jaopca:item_rockychunkiridium>);
mods.magneticraft.CrushingTable.addRecipe(<ore:oreUranium>, <contenttweaker:rockyuranium>);
mods.magneticraft.CrushingTable.addRecipe(<ore:oreQuartz>, <contenttweaker:rockyquartz>);


mods.magneticraft.SluiceBox.addRecipe(<contenttweaker:rockyuranium>, 1.0, <techguns:itemshared:97>*2, 0.50, <bigreactors:dustyellorium>);
mods.magneticraft.SluiceBox.addRecipe(<contenttweaker:rockyquartz>, 1.0, <minecraft:quartz>, 0.50, <minecraft:quartz>);


<magneticraft:stone_hammer>.addTooltip(format.white("Can process 16 items before breaking"));
<magneticraft:iron_hammer>.addTooltip(format.white("Can process 64 items before breaking"));
<magneticraft:steel_hammer>.addTooltip(format.white("Can process 256 items before breaking"));

<magneticraft:sluice_box>.addTooltip(format.aqua("Can process up to 10 Rocky Chunks at once"));

// Craft Bronze Plates early on
// Uses the same durability as processing one ore does
recipes.addShapeless(<thermalfoundation:material:355>, [<magneticraft:stone_hammer:*>.transformDamage(5), <ore:ingotBronze>]);
recipes.addShapeless(<thermalfoundation:material:355>, [<magneticraft:iron_hammer:*>.transformDamage(4), <ore:ingotBronze>]);
recipes.addShapeless(<thermalfoundation:material:355>, [<magneticraft:steel_hammer:*>.transformDamage(3), <ore:ingotBronze>]);

// Same as above, but for Iron plates
// Uses 2x the durability
recipes.addShapeless(<thermalfoundation:material:32>, [<magneticraft:stone_hammer:*>.transformDamage(10), <minecraft:iron_ingot>]);
recipes.addShapeless(<thermalfoundation:material:32>, [<magneticraft:iron_hammer:*>.transformDamage(8), <minecraft:iron_ingot>]);
recipes.addShapeless(<thermalfoundation:material:32>, [<magneticraft:steel_hammer:*>.transformDamage(6), <minecraft:iron_ingot>]);

// Same as above, but for Steel plates
// Uses 4x the durability
recipes.addShapeless(<thermalfoundation:material:352>, [<magneticraft:iron_hammer:*>.transformDamage(16), <ore:ingotSteel>]);
recipes.addShapeless(<thermalfoundation:material:352>, [<magneticraft:steel_hammer:*>.transformDamage(12), <ore:ingotSteel>]);

print("magneticraft.zs loaded");