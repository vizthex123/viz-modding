# Adds recipes to Tinker's Construct
print("tic.zs loading...");
/*
https://docs.blamejared.com/1.16/en/mods/TinkersConstruct/TinkerStation/
*/

<recipetype:tconstruct:tinker_station>.addOverslimeModifierRecipe("any_slimeball", <tag:items:forge:slimeballs>, 1);
<recipetype:tconstruct:tinker_station>.addOverslimeModifierRecipe("magma_cream", <item:minecraft:magma_cream>, 25);
<recipetype:tconstruct:tinker_station>.addOverslimeModifierRecipe("pink_slime", <item:industrialforegoing:pink_slime_ingot>, 150);

<recipetype:tconstruct:tinker_station>.addOverslimeModifierRecipe("blood_crystal", <item:contenttweaker:blood_crystal>, 15);
<recipetype:tconstruct:tinker_station>.addOverslimeModifierRecipe("pink_slime_crystal", <item:contenttweaker:pink_slime_crystal>, 50);


print("tic.zs loaded");