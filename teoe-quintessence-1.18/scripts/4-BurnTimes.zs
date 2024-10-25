# Adds burn times to various items
print("4-BurnTimes.zs loading...");
/*
<item>.burnTime = 200;

200 = 1 item smelted
*/

<tag:items:forge:workbenches>.asIIngredient().burnTime = 300;
<item:minecraft:dried_kelp_block>.burnTime = 4000;

<item:malum:block_of_blazing_quartz>.burnTime = 16000;
<item:malum:block_of_arcane_charcoal>.burnTime = 32000;
<item:quark:stick_block>.burnTime = 1000;
<item:thermal:bamboo_block>.burnTime = 500;
<item:thermal:sawdust_block>.burnTime = 1200;
<item:woodenhopper:wooden_hopper>.burnTime = 300;

print("4-BurnTimes.zs loaded");