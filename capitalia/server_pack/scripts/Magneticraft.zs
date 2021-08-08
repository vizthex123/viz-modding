# Changes recipes for Magneticraft items
print("Magneticraft.zs loading...");
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

// Crushing Table recipe for Ender (Pearl) Dust
mods.magneticraft.CrushingTable.addRecipe(<minecraft:ender_pearl>, <appliedenergistics2:material:46>, false);

// Crushing Table recipes for my custom rocky chunks
// Make Titanium and Iridium need an Iron hammer
mods.magneticraft.CrushingTable.addRecipe(<libvulpes:ore0>, <libvulpes:productdust>*2, true);
mods.magneticraft.CrushingTable.addRecipe(<libvulpes:ore0:8>, <jaopca:item_rockychunktitanium>, true);
mods.magneticraft.CrushingTable.addRecipe(<libvulpes:ore0:10>, <jaopca:item_rockychunkiridium>, true);
mods.magneticraft.CrushingTable.addRecipe(<techguns:basicore:4>, <contenttweaker:rockyuranium>, true);
mods.magneticraft.CrushingTable.addRecipe(<thermalfoundation:ore:6>, <jaopca:item_rockychunkplatinum>, true);
mods.magneticraft.CrushingTable.addRecipe(<netherendingores:ore_other_1>, <contenttweaker:rockyquartz>, false);

/*
// Sluice Box recipes for my custom rocky chunks
// Titanium gives titanium dust, 15% for iridium
// Iridium has 25% for yellorium dust, 20% for uranium (Yellowcake)
// Uranium has a 50% chance for yellorium
mods.magneticraft.SluiceBox.addRecipe(<contenttweaker:rockytitanium>, 1.0, <libvulpes:productdust:7>*2, 0.15, <libvulpes:productdust:10>, false);
mods.magneticraft.SluiceBox.addRecipe(<contenttweaker:rockyiridium>, 1.0, <libvulpes:productdust:10>*2, 0.25, <bigreactors:dustyellorium>, 0.15, <techguns:itemshared:97>, false);
mods.magneticraft.SluiceBox.addRecipe(<contenttweaker:rockyplatinum>, 1.0, <thermalfoundation:material:70>*2, 0.35, <thermalfoundation:material:71>, false);
*/
mods.magneticraft.SluiceBox.addRecipe(<contenttweaker:rockyuranium>, 1.0, <techguns:itemshared:97>*2, 0.50, <bigreactors:dustyellorium>, false);
mods.magneticraft.SluiceBox.addRecipe(<contenttweaker:rockyquartz>, 1.0, <minecraft:quartz>, 0.50, <minecraft:quartz>, false);

<magneticraft:stone_hammer>.addTooltip(format.white("Can process 16 items before breaking"));
<magneticraft:iron_hammer>.addTooltip(format.white("Can process 64 items before breaking"));
<magneticraft:steel_hammer>.addTooltip(format.white("Can process 256 items before breaking"));

<magneticraft:sluice_box>.addTooltip(format.aqua("Can process up to 10 Rocky Chunks at once"));


// Combine Double (Light) Plates into regular ones
recipes.addShapeless(<techguns:itemshared:46>, [<magneticraft:light_plates>, <magneticraft:light_plates>, <magneticraft:light_plates>, <magneticraft:light_plates>]);
recipes.addShapeless(<thermalfoundation:material:33>, [<magneticraft:light_plates:1>, <magneticraft:light_plates:1>, <magneticraft:light_plates:1>, <magneticraft:light_plates:1>]);
recipes.addShapeless(<techguns:itemshared:47>, [<magneticraft:light_plates:2>, <magneticraft:light_plates:2>, <magneticraft:light_plates:2>, <magneticraft:light_plates:2>]);
recipes.addShapeless(<techguns:itemshared:52>, [<magneticraft:light_plates:3>, <magneticraft:light_plates:3>, <magneticraft:light_plates:3>, <magneticraft:light_plates:3>]);
recipes.addShapeless(<techguns:itemshared:50>, [<magneticraft:light_plates:6>, <magneticraft:light_plates:6>, <magneticraft:light_plates:6>, <magneticraft:light_plates:6>]);

// Craft Bronze Plates early on
// Uses the same durability as processing one ore does
recipes.addShapeless(<techguns:itemshared:49>, [<magneticraft:stone_hammer:*>.transformDamage(5), <ore:ingotBronze>]);
recipes.addShapeless(<techguns:itemshared:49>, [<magneticraft:iron_hammer:*>.transformDamage(4), <ore:ingotBronze>]);
recipes.addShapeless(<techguns:itemshared:49>, [<magneticraft:steel_hammer:*>.transformDamage(3), <ore:ingotBronze>]);

// Same as above, but for Iron plates
recipes.addShapeless(<techguns:itemshared:46>, [<magneticraft:stone_hammer:*>.transformDamage(5), <minecraft:iron_ingot>]);
recipes.addShapeless(<techguns:itemshared:46>, [<magneticraft:iron_hammer:*>.transformDamage(4), <minecraft:iron_ingot>]);
recipes.addShapeless(<techguns:itemshared:46>, [<magneticraft:steel_hammer:*>.transformDamage(3), <minecraft:iron_ingot>]);

// Same as above, but for Steel plates
recipes.addShapeless(<techguns:itemshared:50>, [<magneticraft:stone_hammer:*>.transformDamage(5), <ore:ingotSteel>]);
recipes.addShapeless(<techguns:itemshared:50>, [<magneticraft:iron_hammer:*>.transformDamage(4), <ore:ingotSteel>]);
recipes.addShapeless(<techguns:itemshared:50>, [<magneticraft:steel_hammer:*>.transformDamage(3), <ore:ingotSteel>]);


print("Magneticraft.zs loaded");