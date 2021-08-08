# Changes/adds burn times to items
print("BurnTimes.zs loading...");
/*
furnace.setFuel(<item>, burntime*);
* 200 time = 1 item smelted
*/

// Red Coal 1600 > 2000
furnace.setFuel(<extrautils2:ingredients:4>, 2000);

// Should increase all Saplings to 100
furnace.setFuel(<ore:treeSapling>, 100);

// Shields
furnace.setFuel(<minecraft:shield:*>, 400);

// Sugar Cane & Paper
furnace.setFuel(<minecraft:reeds>, 50);
furnace.setFuel(<minecraft:paper>, 50);

furnace.setFuel(<minecraft:book>, 100);
furnace.setFuel(<minecraft:writable_book>, 125);

// Blazing Clay
furnace.setFuel(<openmodularturrets:ammo_meta>, 1);

// Fire Charge
furnace.setFuel(<minecraft:fire_charge>, 525);

// Beds
furnace.setFuel(<ore:bed>, 400);



print("BurnTimes.zs loaded");