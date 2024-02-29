# Changes hunger values to balance a few foods
print("HungerTweaker.zs loading...");
/*
<>.foodValues.hunger = 2;
- Should change how much hunger is restored

<>.foodValues.saturationModifier = 0.5;
- Is a multiplier (1.0 = 2x base value)

Saturation is hunger * saturationModifier
*/

// Make XL Food items more betterer
<xlfoodmod:apple_pie>.foodValues.hunger = 6;
<xlfoodmod:golden_apple_pie>.foodValues.hunger = 10;
<xlfoodmod:golden_apple_pie>.foodValues.saturationModifier = 0.6;

<xlfoodmod:cheese_pie>.foodValues.saturationModifier = 1.25;
<xlfoodmod:chicken_pot_pie>.foodValues.hunger = 10;
<xlfoodmod:chocolate_pie>.foodValues.hunger = 3;

<xlfoodmod:bacon_pie>.foodValues.hunger = 6;
<xlfoodmod:bacon_pie>.foodValues.saturationModifier = 0.3;

<xlfoodmod:tomato_soup>.foodValues.hunger = 6;
<xlfoodmod:tomato_soup>.foodValues.saturationModifier = 0.5;

<xlfoodmod:pumpkin_stew>.foodValues.hunger = 10;
<xlfoodmod:pumpkin_stew>.foodValues.saturationModifier = 0.5;

<xlfoodmod:cappuccino>.foodValues.saturationModifier = 1.0;
<xlfoodmod:flesh>.foodValues.hunger = 3;

<xlfoodmod:ground_beef>.foodValues.saturationModifier = 0.25;
<xlfoodmod:ham>.foodValues.hunger = 5;

// Nerf Pizza Slices since they're kinda OP
// Still slighty better than the entire pizza though
<xlfoodmod:slice_of_pizza>.foodValues.hunger = 3;
<xlfoodmod:slice_of_pizza>.foodValues.saturationModifier = 0.4;

// Misc
<minecraft:rotten_flesh>.foodValues.hunger = 2;
<byg:spidereyesoup>.foodValues.hunger = 8;
<byg:cookedflesh>.foodValues.hunger = 4;

print("HungerTweaker.zs loaded");