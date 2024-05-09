# Add burn times to various items
print("BurnTimes.zs loading...");
/*
<item>.burnTime = 200;

200 = 1 item smelted
*/

<item:biomesoplenty:bramble>.burnTime = 200;
<item:minecraft:blaze_powder>.burnTime = 600;
<item:minecraft:magma_cream>.burnTime = 400;
<item:minecraft:magma_block>.burnTime = 1600;
<item:comfortable_nether:popped_pummeler_remnant>.burnTime = 1000;
<item:minecraft:dried_kelp_block>.burnTime = 4000;
<item:minecraft:dried_kelp>.burnTime = 400;
<item:extcaves:plant_fiber>.burnTime = 50;

<item:contenttweaker:netherrack_fuel_pod>.burnTime = 800;

# Fuel values for uranium fuel cores
<item:contenttweaker:uranium_pellet>.burnTime = 1600;
<item:contenttweaker:uranium_drop>.burnTime = 4000;
<item:contenttweaker:uranium_canister>.burnTime = 9600;
<item:contenttweaker:uranium_rod>.burnTime = 25600;
<item:contenttweaker:uranium_fuel_core>.burnTime = 102400;
/*
<item:contenttweaker:uranium_power_core>.burnTime = 81920;
<item:contenttweaker:dense_uranium_power_core>.burnTime = 163840;
*/

print("BurnTimes.zs loaded");