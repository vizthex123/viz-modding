# Adds recipes that don't belong anywhere else

print("misc.zs loading...");

/*
furnace.addRecipe("recipeName", <output>, <input>, xp, cooktime-10s default);

craftingTable.addShapeless("recipeName", <output>, [<inputs>]);

craftingTable.addShaped("recipeName", <output>, 
    [[<input>, <input>, <input>],
    [<input>, <input>, <input>],
    [<input>, <input>, <input>]]);

craftingTable.removeByName("recipeName");
*/

// Smelt Fish Bones into Gelatin
 campfire.addRecipe("campfire_gelatin_fish_bones", <item:food_enhancements:gelatin>, <item:food_enhancements:fish_bones>, 0.25, 600);

furnace.addRecipe("smelt_gelatin_fish_bones", <item:food_enhancements:gelatin>, <item:food_enhancements:fish_bones>, 0.25, 300);

smoker.addRecipe("smoke_gelatin_fish_bones", <item:food_enhancements:gelatin>, <item:food_enhancements:fish_bones>, 0.25, 150);

// Travertine -> Cobblestone
furnace.addRecipe("smelt_travertine", <item:minecraft:cobblestone>, <item:byg:travertine>, 0.25, 200);
blastFurnace.addRecipe("blast_travertine", <item:minecraft:cobblestone>, <item:byg:travertine>, 0.25, 100);

// Cheaper Security Terminal
craftingTable.remove(<item:ae2:security_station>);
craftingTable.addShaped("security_station", <item:ae2:security_station>,
    [[<item:minecraft:iron_ingot>, <item:ae2:cell_component_4k>, <item:minecraft:iron_ingot>],
    [<item:ae2:fluix_glass_cable>, <item:minecraft:air>, <item:ae2:fluix_glass_cable>],
    [<item:minecraft:iron_ingot>, <item:ae2:engineering_processor>, <item:minecraft:iron_ingot>]]);

// Upgrade an Energy Acceptor into an ME Controlller
craftingTable.addShaped("acceptor_upgrade", <item:ae2:controller>,
    [[<item:ae2:smooth_sky_stone_block>, <item:ae2:fluix_crystal>, <item:ae2:smooth_sky_stone_block>],
    [<item:ae2:charged_certus_quartz_crystal>, <item:ae2:energy_acceptor>, <item:ae2:charged_certus_quartz_crystal>],
    [<item:ae2:smooth_sky_stone_block>, <item:ae2:fluix_crystal>, <item:ae2:smooth_sky_stone_block>]]);



print("misc.zs loaded");