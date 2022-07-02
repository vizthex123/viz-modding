# Changes recipes for Ex Nihlo: Sequentia

import mods.exnihilosequentia.ZenSieveRecipe;
print("ex_nihlo.zs loading...");
/*
<recipetype:exnihilosequentia:sieve>.create("sieve_test").setInput(<item:minecraft:cobblestone>).addDrop(<item:minecraft:netherite_ingot>).addRoll("diamond", 0.01).addRoll("string", 1.0);
*/

<recipetype:exnihilosequentia:sieve>.removeAll();

<recipetype:exnihilosequentia:sieve>.create("gravel").setInput(<item:minecraft:gravel>).addDrop(<item:minecraft:flint>).addRoll("diamond", 1.0).addRoll("string", 0.1);

print("ex_nihlo.zs loaded");