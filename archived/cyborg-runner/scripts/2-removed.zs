# Removes item recipes, but leaves them in JEI
print("2-removed.zs loading...");
/*
recipes.remove(<>);
recipes.removeByRecipeName("");
*/

# Nibrock's Coals
recipes.remove(<nibrockscoal:iron_coal>);
recipes.remove(<nibrockscoal:gold_coal>);
recipes.remove(<nibrockscoal:diamond_coal>);

# Bonecraft's Stick Conversion recipe
recipes.removeByRecipeName("bonecraft:stick");

# Uncrafting recipes for Unfired Clay Armour
recipes.removeByRecipeName("ceramics:uncrafting/clay_helmet");
recipes.removeByRecipeName("ceramics:uncrafting/clay_chestplate");
recipes.removeByRecipeName("ceramics:uncrafting/clay_leggings");
recipes.removeByRecipeName("ceramics:uncrafting/clay_boots");


# Compact Machines recipe replacements
recipes.removeShaped(<minecraft:furnace>);
recipes.removeShaped(<extrautils2:machine>.withTag({Type: "extrautils2:crusher"}));
recipes.removeShaped(<extrautils2:machine>.withTag({Type: "extrautils2:furnace"}));
recipes.removeShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator"}));
recipes.removeShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}));
recipes.removeShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}));
recipes.removeShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}));
recipes.removeShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_redstone"}));
recipes.removeShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"}));
recipes.removeShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}));
recipes.removeShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"}));
recipes.removeShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}));
recipes.removeShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}));
recipes.removeShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}));
recipes.removeShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_dragonsbreath"}));
recipes.removeShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}));
recipes.removeShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}));
recipes.removeShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"}));
recipes.removeShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}));
recipes.removeShaped(<extrautils2:machine>.withTag({Type: "extrautils2:enchanter"}));


# Misc
recipes.remove(<minecraft:saddle>);
recipes.remove(<minecraft:iron_horse_armor>);
recipes.remove(<chisel:block_charcoal2:1>);
recipes.removeByRecipeName("thermalexpansion:morb_2");

print("2-removed.zs loaded");