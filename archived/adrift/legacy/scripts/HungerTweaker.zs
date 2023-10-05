# Should hopefully change food hunger values
print("HungerTweaker.zs loading...");

/*
<>.foodValues.hunger = 2;
- Should change how much hunger is restored

<>.foodValues.saturationModifier = 0.5;
- Is a multiplier (1.0 = 2x base value)
*/

// Nerf Loaded Baked Potatoes
<harvestcraft:loadedbakedpotatoitem>.foodValues.saturationModifier = 0.5;



print("HungerTweaker.zs loaded");