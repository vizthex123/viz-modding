# Changes/adds burn times to items
print("BurnTimes.zs loading...");
/*
furnace.setFuel(<item>, burntime*);
* 200 time = 1 item smelted
*/

// Shields
furnace.setFuel(<minecraft:shield:*>, 400);

// Sugar Cane & Paper
furnace.setFuel(<minecraft:reeds>, 50);
furnace.setFuel(<minecraft:paper>, 50);

furnace.setFuel(<minecraft:book>, 100);
furnace.setFuel(<minecraft:writable_book>, 125);

// Red Coal 1600 > 2000
furnace.setFuel(<extrautils2:ingredients:4>, 2000);

// Blazing Clay
furnace.setFuel(<openmodularturrets:ammo_meta>, 10);

// Fire Charge
furnace.setFuel(<minecraft:fire_charge>, 525);

// Increase all Saplings to 100
furnace.setFuel(<ore:treeSapling>, 100);

// Beds
furnace.setFuel(<ore:bed>, 400);

print("BurnTimes.zs loaded");