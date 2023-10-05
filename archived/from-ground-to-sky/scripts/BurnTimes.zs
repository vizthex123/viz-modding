# Changes/adds burn times to items
print("BurnTimes.zs loading...");
/*
furnace.setFuel(<item>, burntime*);
* 200 time = 1 item smelted
*/

// Should increase all Saplings to 100
furnace.setFuel(<ore:treeSapling>, 100);

// Red Coal 1600 > 2000
furnace.setFuel(<extrautils2:ingredients:4>, 2000);

// Bitumous Peat 4200 -> 4800
furnace.setFuel(<forestry:bituminous_peat>, 4800);

print("BurnTimes.zs loaded");