# Changes the hunger/saturation values of various foods

import crafttweaker.api.food.MCFood;
/*
new MCFood(hunger, saturation);
MCFood.setSaturation(saturation as float);
*/
print("foodvalues.zs loading...");

// *Massively* reduce the Fortune Cookie's saturation
var fortuneFood = <item:xpcoins:fortune_cookie>.food;

fortuneFood = fortuneFood.setSaturation(2.0);

<item:xpcoins:fortune_cookie>.food = fortuneFood;


print("foodvalues.zs loaded");