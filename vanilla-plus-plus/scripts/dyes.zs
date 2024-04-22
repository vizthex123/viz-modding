# Re-works Dyes to use Tags instead of having a ton of duplicate recipes

print("dyes.zs loading...");

/*
craftingTable.remove(<item>);
craftingTable.removeByName("name");

craftingTable.addShapeless("recipeName", <output>, [<inputs>]);
*/

# White
craftingTable.remove(<item:minecraft:white_dye>);
craftingTable.addShapeless("white_dye", <item:minecraft:white_dye>, [<tag:items:vanilla:white_dye_materials>]);


# Orange
craftingTable.remove(<item:minecraft:orange_dye>);
craftingTable.addShapeless("orange_dye", <item:minecraft:orange_dye>, [<tag:items:vanilla:orange_dye_materials>]);
furnace.addRecipe("mushroom_orange", <item:minecraft:orange_dye>, <item:betternether:orange_mushroom>|<item:betterend:bolux_mushroom>, 0.1, 100);


# Magenta
craftingTable.remove(<item:minecraft:magenta_dye>);
craftingTable.addShapeless("magenta_dye", <item:minecraft:magenta_dye>, [<tag:items:vanilla:magenta_dye_materials>]);
craftingTable.addShapeless("double_magenta_dye", <item:minecraft:magenta_dye>*2, [<tag:items:vanilla:magenta_dye_materials_double>]);


# Light Blue
craftingTable.remove(<item:minecraft:light_blue_dye>);
craftingTable.addShapeless("light_blue_dye", <item:minecraft:light_blue_dye>, [<tag:items:vanilla:light_blue_dye_materials>]);


# Yellow
craftingTable.remove(<item:minecraft:yellow_dye>);
craftingTable.addShapeless("yellow_dye", <item:minecraft:yellow_dye>, [<tag:items:vanilla:yellow_dye_materials>]);
craftingTable.addShapeless("double_yellow_dye", <item:minecraft:yellow_dye>*2, [<tag:items:vanilla:yellow_dye_materials_double>]);
craftingTable.addShapeless("quadruple_yellow_dye", <item:minecraft:yellow_dye>*4, [<tag:items:vanilla:yellow_dye_materials_quadruple>]);

# Lime doesn't have crafting recipes

# Pink
craftingTable.remove(<item:minecraft:pink_dye>);
craftingTable.addShapeless("pink_dye", <item:minecraft:pink_dye>, [<tag:items:vanilla:pink_dye_materials>]);
craftingTable.addShapeless("double_pink_dye", <item:minecraft:pink_dye>*2, [<tag:items:vanilla:pink_dye_materials_double>]);
furnace.addRecipe("mushroom_pink", <item:minecraft:pink_dye>, <item:betternether:hook_mushroom>, 0.1, 100);


# Gray
craftingTable.remove(<item:minecraft:gray_dye>);
craftingTable.addShapeless("gray_dye", <item:minecraft:gray_dye>, [<tag:items:vanilla:gray_dye_materials>]);


# Light Gray
craftingTable.remove(<item:minecraft:light_gray_dye>);
craftingTable.addShapeless("light_gray_dye", <item:minecraft:light_gray_dye>, [<tag:items:vanilla:light_gray_dye_materials>]);


# Cyan
craftingTable.remove(<item:minecraft:cyan_dye>);
craftingTable.addShapeless("cyan_dye", <item:minecraft:cyan_dye>, [<tag:items:vanilla:cyan_dye_materials>]);
furnace.addRecipe("mushroom_cyan", <item:minecraft:cyan_dye>, <item:minecraft:warped_fungus>, 0.1, 200);


# Purple
craftingTable.remove(<item:minecraft:purple_dye>);
craftingTable.addShapeless("purple_dye", <item:minecraft:purple_dye>, [<tag:items:vanilla:purple_dye_materials>]);
furnace.addRecipe("mushroom_purple", <item:minecraft:purple_dye>, <item:cinderscapes:umbral_fungus>, 0.1, 100);


# Blue
craftingTable.remove(<item:minecraft:blue_dye>);
craftingTable.addShapeless("blue_dye", <item:minecraft:blue_dye>, [<tag:items:vanilla:blue_dye_materials>]);


# Brown
craftingTable.remove(<item:minecraft:brown_dye>);
craftingTable.addShapeless("brown_dye", <item:minecraft:brown_dye>, [<tag:items:vanilla:brown_dye_materials>]);
furnace.addRecipe("mushroom_brown", <item:minecraft:brown_dye>, <item:minecraft:brown_mushroom>, 0, 100);


# Green
craftingTable.remove(<item:minecraft:green_dye>);
craftingTable.addShapeless("green_dye", <item:minecraft:green_dye>, [<tag:items:vanilla:green_dye_materials>]);


# Red
craftingTable.remove(<item:minecraft:red_dye>);
craftingTable.addShapeless("red_dye", <item:minecraft:red_dye>, [<tag:items:vanilla:red_dye_materials>]);
craftingTable.addShapeless("double_red_dye", <item:minecraft:red_dye>*2, [<tag:items:vanilla:red_dye_materials_double>]);
furnace.addRecipe("mushroom_red", <item:minecraft:red_dye>, <item:minecraft:red_mushroom>|<item:minecraft:crimson_fungus>|<item:betterend:small_amaranita_mushroom>, 0.1, 100);


# Black
craftingTable.remove(<item:minecraft:black_dye>);
craftingTable.addShapeless("black_dye", <item:minecraft:black_dye>, [<tag:items:vanilla:black_dye_materials>]);
craftingTable.addShapeless("quadruple_black_dye", <item:minecraft:black_dye>*4, [<tag:items:vanilla:black_dye_materials_quadruple>]);

print("dyes.zs loaded");