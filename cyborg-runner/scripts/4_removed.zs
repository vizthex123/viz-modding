# Removes item recipes, but leaves them in JEI
print("4_removed.zs loading...");
/*
recipes.remove(<>);
recipes.removeByRecipeName("");
*/

// Nibrock's Coals
recipes.remove(<nibrockscoal:iron_coal>);
recipes.remove(<nibrockscoal:gold_coal>);
recipes.remove(<nibrockscoal:diamond_coal>);

// Bonecraft's Stick Conversion recipe
recipes.removeByRecipeName("bonecraft:stick");

// Wooden Tools
recipes.remove(<minecraft:wooden_sword>);
recipes.remove(<minecraft:wooden_pickaxe>);
recipes.remove(<minecraft:wooden_shovel>);
recipes.remove(<minecraft:wooden_hoe>);
recipes.remove(<minecraft:wooden_axe>);

// Stone Tools
recipes.remove(<minecraft:stone_sword>);
recipes.remove(<minecraft:stone_pickaxe>);
recipes.remove(<minecraft:stone_shovel>);
recipes.remove(<minecraft:stone_hoe>);

// Compact Machines recipe replacements
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


// Some Artisan's Flint Tools
// Other tool removals are in JEI.zs
recipes.remove(<artisanworktables:artisans_hammer_flint>);
recipes.remove(<artisanworktables:artisans_spanner_flint>);
recipes.remove(<artisanworktables:artisans_cutters_flint>);
recipes.remove(<artisanworktables:artisans_chisel_flint>);
recipes.remove(<artisanworktables:artisans_pliers_flint>);
recipes.remove(<artisanworktables:artisans_pan_flint>);
recipes.remove(<artisanworktables:artisans_file_flint>);



// Misc
recipes.remove(<minecraft:iron_horse_armor>);
recipes.remove(<minecraft:saddle>);
recipes.remove(<chisel:block_charcoal2:1>);
recipes.removeByRecipeName("thermalexpansion:morb_2");

print("4_removed.zs loaded");