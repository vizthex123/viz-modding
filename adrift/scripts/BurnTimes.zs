# Changes/adds burn times to items
print("BurnTimes.zs loading...");
/*
furnace.setFuel(<item>, burntime*);
* 200 time = 1 item smelted
*/

// Remove time from RC's technical parts to prevent JEI spam (idk why they're even there in the first place)
furnace.setFuel(<reccomplex:inventory_generation_tag>, 0);
furnace.setFuel(<reccomplex:inventory_generation_single_tag>, 0);
furnace.setFuel(<reccomplex:inventory_generation_component_tag>, 0);
furnace.setFuel(<reccomplex:artifact_generation_tag>, 0);
furnace.setFuel(<reccomplex:book_generation_tag>, 0);

// Blaze Rods 2400 > 3200
furnace.setFuel(<minecraft:blaze_rod>, 3200);
furnace.setFuel(<minecraft:blaze_powder>, 1600);

// Should increase all Saplings to 100
furnace.setFuel(<ore:treeSapling>, 100);

// Driftwood
furnace.setFuel(<aquaculture:loot>, 200);

// Shields
furnace.setFuel(<minecraft:shield:*>, 400);

// Sugar Cane, Paper & Books
furnace.setFuel(<minecraft:reeds>, 100);
furnace.setFuel(<minecraft:paper>, 30);

furnace.setFuel(<minecraft:book>, 200);
furnace.setFuel(<minecraft:writable_book>, 250);

// Fire Charge
furnace.setFuel(<minecraft:fire_charge>, 525);

// Beds
furnace.setFuel(<minecraft:bed:*>, 400);

// Compressed Coal 0 > 72,000 (360 items)
furnace.setFuel(<coalprocessing:compressed_coal>, 72000);

// Aquaculture's Fishing Rod
furnace.setFuel(<aquaculture:fishing_rod:*>, 300);


// Wooden Artisan Tools
furnace.setFuel(<artisanworktables:artisans_cutting_board_wood>, 300);
furnace.setFuel(<artisanworktables:artisans_compass_wood>, 300);
furnace.setFuel(<artisanworktables:artisans_quill_wood>, 300);


// Misc
furnace.setFuel(<chesttransporter:chesttransporter>, 300);
furnace.setFuel(<jaff:wooden_fishing_rod>, 300);

print("BurnTimes.zs loaded");