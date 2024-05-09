# Upgrade recipes for various machines I think should have some
print("machine_upgrades.zs loading...");
/*
craftingTable.addShapeless("recipeName", <output>, [<inputs>]);

do item:minecraft:air for empty spaces
*/

# Black Hole Units
// Common > Pity
craftingTable.addShapeless("pity_to_common_unit", <item:industrialforegoing:pity_black_hole_unit>, [<item:industrialforegoing:common_black_hole_unit>, <item:industrialforegoing:machine_frame_pity>, <item:ironchest:iron_chest>, <item:minecraft:ender_eye>]);

// Pity > Simple
craftingTable.addShapeless("pity_to_simple_unit", <item:industrialforegoing:simple_black_hole_unit>, [<item:industrialforegoing:pity_black_hole_unit>, <item:industrialforegoing:machine_frame_simple>, <item:ironchest:iron_chest>, <item:minecraft:ender_eye>]);


# Black Hole Tanks
// Pity > Common
craftingTable.addShapeless("pity_to_common_tank", <item:industrialforegoing:common_black_hole_tank>, [<item:industrialforegoing:pity_black_hole_tank>, <item:industrialforegoing:machine_frame_pity>, <tag:items:forge:tank>, <item:minecraft:ender_eye>]);

// Common > Simple
craftingTable.addShapeless("pity_to_simple_tank", <item:industrialforegoing:simple_black_hole_tank>, [<item:industrialforegoing:common_black_hole_tank>, <item:industrialforegoing:machine_frame_simple>, <tag:items:forge:tank>, <item:minecraft:ender_eye>]);


# Dischargers
// Starter > Basic
craftingTable.addShapeless("discharger-starter_to_basic", <item:powah:energy_discharger_basic>, [<item:powah:energy_discharger_starter>, <item:powah:capacitor_basic>, <item:powah:capacitor_basic>, <item:powah:dielectric_rod_horizontal>|<item:powah:dielectric_rod>]);

// Basic > Hardened
craftingTable.addShapeless("discharger-basic_to_hardened", <item:powah:energy_discharger_hardened>, [<item:powah:energy_discharger_basic>, <item:powah:capacitor_hardened>, <item:powah:capacitor_hardened>, <item:powah:dielectric_rod_horizontal>|<item:powah:dielectric_rod>]);

// Hardened > Blazing
craftingTable.addShapeless("discharger-hardened_to_blazing", <item:powah:energy_discharger_blazing>, [<item:powah:energy_discharger_hardened>, <item:powah:capacitor_blazing>, <item:powah:capacitor_blazing>, <item:powah:dielectric_rod_horizontal>|<item:powah:dielectric_rod>]);

// Blazing > Niotic
craftingTable.addShapeless("discharger-blazing_to_niotic", <item:powah:energy_discharger_niotic>, [<item:powah:energy_discharger_blazing>, <item:powah:capacitor_niotic>, <item:powah:capacitor_niotic>, <item:powah:dielectric_casing>]);

// Niotic > Spirited
craftingTable.addShapeless("discharger-niotic_to_spirited", <item:powah:energy_discharger_spirited>, [<item:powah:energy_discharger_niotic>, <item:powah:capacitor_spirited>, <item:powah:capacitor_spirited>, <item:powah:dielectric_casing>]);

// Spirited > Nitro
craftingTable.addShapeless("discharger-spirited_to_nitro", <item:powah:energy_discharger_nitro>, [<item:powah:energy_discharger_spirited>, <item:powah:capacitor_nitro>, <item:powah:capacitor_nitro>, <item:powah:dielectric_casing>]);


print("machine_upgrades.zs loaded");