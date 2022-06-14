# Adds burn times to various items
print("BurnTimes.zs loading...");
/*
<item>.burnTime = 200;

200 = 1 item smelted
*/

<item:thermal:bamboo_block>.burnTime = 500;
<item:woodenhopper:wooden_hopper>.burnTime = 300;
<item:minecraft:dried_kelp_block>.burnTime = 4000;

print("BurnTimes.zs loaded");