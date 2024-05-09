# Adds recipes to saw items
print("sawmill.zs loading...");

var stick = <minecraft:stick>;
var spider_string = <minecraft:string>;
var sawdust = <thermalfoundation:material:800>;

// Saw Signs into Sawdust
mods.thermalexpansion.Sawmill.addRecipe(sawdust*2, <minecraft:sign>, 1500, sawdust, 10);

// Saw (written) books (& quills)
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:paper>*2, <minecraft:book>, 1200, <minecraft:leather>, 25);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:paper>*2, <minecraft:writable_book>, 1250, <minecraft:feather>, 25);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:paper>*2, <minecraft:written_book>, 1225, <minecraft:leather>, 25);


// Carpets -> String
mods.thermalexpansion.Sawmill.addRecipe(spider_string*2, <minecraft:carpet>, 500, spider_string, 65);
/*
mods.thermalexpansion.Sawmill.addRecipe(spider_string*2, <minecraft:carpet:1>, 500, spider_string, 65);
mods.thermalexpansion.Sawmill.addRecipe(spider_string*2, <minecraft:carpet:2>, 500, spider_string, 65);
mods.thermalexpansion.Sawmill.addRecipe(spider_string*2, <minecraft:carpet:3>, 500, spider_string, 65);
mods.thermalexpansion.Sawmill.addRecipe(spider_string*2, <minecraft:carpet:4>, 500, spider_string, 65);
mods.thermalexpansion.Sawmill.addRecipe(spider_string*2, <minecraft:carpet:5>, 500, spider_string, 65);
mods.thermalexpansion.Sawmill.addRecipe(spider_string*2, <minecraft:carpet:6>, 500, spider_string, 65);
mods.thermalexpansion.Sawmill.addRecipe(spider_string*2, <minecraft:carpet:7>, 500, spider_string, 65);
mods.thermalexpansion.Sawmill.addRecipe(spider_string*2, <minecraft:carpet:8>, 500, spider_string, 65);
mods.thermalexpansion.Sawmill.addRecipe(spider_string*2, <minecraft:carpet:9>, 500, spider_string, 65);
mods.thermalexpansion.Sawmill.addRecipe(spider_string*2, <minecraft:carpet:10>, 500, spider_string, 65);
mods.thermalexpansion.Sawmill.addRecipe(spider_string*2, <minecraft:carpet:11>, 500, spider_string, 65);
mods.thermalexpansion.Sawmill.addRecipe(spider_string*2, <minecraft:carpet:12>, 500, spider_string, 65);
mods.thermalexpansion.Sawmill.addRecipe(spider_string*2, <minecraft:carpet:13>, 500, spider_string, 65);
mods.thermalexpansion.Sawmill.addRecipe(spider_string*2, <minecraft:carpet:14>, 500, spider_string, 65);
mods.thermalexpansion.Sawmill.addRecipe(spider_string*2, <minecraft:carpet:15>, 500, spider_string, 65);
*/

// Beds -> Sawdust
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:*>, 1500, spider_string*4, 100);
/*
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:1>, 1500, spider_string*4, 100);
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:2>, 1500, spider_string*4, 100);
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:3>, 1500, spider_string*4, 100);
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:4>, 1500, spider_string*4, 100);
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:5>, 1500, spider_string*4, 100);
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:6>, 1500, spider_string*4, 100);
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:7>, 1500, spider_string*4, 100);
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:8>, 1500, spider_string*4, 100);
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:9>, 1500, spider_string*4, 100);
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:10>, 1500, spider_string*4, 100);
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:11>, 1500, spider_string*4, 100);
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:12>, 1500, spider_string*4, 100);
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:13>, 1500, spider_string*4, 100);
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:14>, 1500, spider_string*4, 100);
mods.thermalexpansion.Sawmill.addRecipe(sawdust*3, <minecraft:bed:15>, 1500, spider_string*4, 100);
*/
print("sawmill.zs loaded");