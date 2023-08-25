# Adds recipes to saw items
print("sawmill.zs loading...");

var stick = <minecraft:stick>;
var mcstring = <minecraft:string>;
var sawdust = <thermalfoundation:material:800>;

// Saw signs into sticks
mods.thermalexpansion.Sawmill.addRecipe(stick*4, <minecraft:sign>, 1500, stick*2, 50);

// Saw (written) books (& quills)
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:paper>*2, <minecraft:book>, 1200, <minecraft:leather>, 25);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:paper>*2, <minecraft:writable_book>, 1225, <minecraft:feather>, 25);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:paper>*2, <minecraft:written_book>, 1225, <minecraft:leather>, 25);


// Saw Carpets into String
//mods.thermalexpansion.Sawmill.addRecipe(mcstring*2, <ore:carpet>.asIIngredient(), 500, mcstring, 65);
/*
mods.thermalexpansion.Sawmill.addRecipe(mcstring*2, <minecraft:carpet:1>, 1000);
mods.thermalexpansion.Sawmill.addRecipe(mcstring*2, <minecraft:carpet:2>, 1000);
mods.thermalexpansion.Sawmill.addRecipe(mcstring*2, <minecraft:carpet:3>, 1000);
mods.thermalexpansion.Sawmill.addRecipe(mcstring*2, <minecraft:carpet:4>, 1000);
mods.thermalexpansion.Sawmill.addRecipe(mcstring*2, <minecraft:carpet:5>, 1000);
mods.thermalexpansion.Sawmill.addRecipe(mcstring*2, <minecraft:carpet:6>, 1000);
mods.thermalexpansion.Sawmill.addRecipe(mcstring*2, <minecraft:carpet:7>, 1000);
mods.thermalexpansion.Sawmill.addRecipe(mcstring*2, <minecraft:carpet:8>, 1000);
mods.thermalexpansion.Sawmill.addRecipe(mcstring*2, <minecraft:carpet:9>, 1000);
mods.thermalexpansion.Sawmill.addRecipe(mcstring*2, <minecraft:carpet:10>, 1000);
mods.thermalexpansion.Sawmill.addRecipe(mcstring*2, <minecraft:carpet:11>, 1000);
mods.thermalexpansion.Sawmill.addRecipe(mcstring*2, <minecraft:carpet:12>, 1000);
mods.thermalexpansion.Sawmill.addRecipe(mcstring*2, <minecraft:carpet:13>, 1000);
mods.thermalexpansion.Sawmill.addRecipe(mcstring*2, <minecraft:carpet:14>, 1000);
mods.thermalexpansion.Sawmill.addRecipe(mcstring*2, <minecraft:carpet:15>, 1000);
*/

// Beds -> Sawdust
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed>, 1000, mcstring*6, 100);
/*
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:1>, 1375, <minecraft:wool:1>, 50);
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:2>, 1375, <minecraft:wool:2>, 50);
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:3>, 1375, <minecraft:wool:3>, 50);
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:4>, 1375, <minecraft:wool:4>, 50);
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:5>, 1375, <minecraft:wool:5>, 50);
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:6>, 1375, <minecraft:wool:6>, 50);
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:7>, 1375, <minecraft:wool:7>, 50);
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:8>, 1375, <minecraft:wool:8>, 50);
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:9>, 1375, <minecraft:wool:9>, 50);
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:10>, 1375, <minecraft:wool:10>, 50);
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:11>, 1375, <minecraft:wool:11>, 50);
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:12>, 1375, <minecraft:wool:12>, 50);
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:13>, 1375, <minecraft:wool:13>, 50);
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:14>, 1375, <minecraft:wool:14>, 50);
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:15>, 1375, <minecraft:wool:15>, 50);
*/

print("sawmill.zs loaded");