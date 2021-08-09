# Add burn times to various items
print("BurnTimes.zs loading...");
/*
<item>.burnTime = 200;

200 = 1 item smelted
*/

// Banner Patterns
<item:minecraft:flower_banner_pattern>.burnTime = 300;
<item:minecraft:creeper_banner_pattern>.burnTime = 300;
<item:minecraft:skull_banner_pattern>.burnTime = 300;
<item:minecraft:mojang_banner_pattern>.burnTime = 300;
<item:minecraft:globe_banner_pattern>.burnTime = 400;
<item:minecraft:piglin_banner_pattern>.burnTime = 800;


// Misc
<item:minecraft:dried_kelp>.burnTime = 400;
<item:minecraft:dried_kelp_block>.burnTime = 4000;
<item:minecraft:blaze_powder>.burnTime = 600;
<item:minecraft:magma_cream>.burnTime = 400;
<item:minecraft:magma_block>.burnTime = 1600;


print("BurnTimes.zs loaded");