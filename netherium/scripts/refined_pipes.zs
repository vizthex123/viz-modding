# Changes the recipes for Refined Pipes to be themed with the modpack's progression
# Current ideas:
# Final tier or two needs Mechanical Crafting?
# All of them use Redstone though, so it's overworld-only.
# Upgrades done with Compacting

print("refined_pipes loading...");

/*
craftingTable.addShaped("recipeName", <output>, 
    [[<input>, <input>, <input>],
    [<input>, <input>, <input>],
    [<input>, <input>, <input>]]);
	
<recipetype:create:compacting>.addRecipe("recipeName", "heat*", <output>, [<item_inputs>], [<fluid_inputs>], Duration**);
* none, heated, superheated
** optional

<recipetype:create:mechanical_crafting>.addRecipe("recipeName", <output>,
[[<item>],
[<item>],
[<item>]]);

do item:minecraft:air for empty spaces
*/

val rblock = <item:minecraft:redstone_block>;
val redstone = <item:minecraft:redstone>;
val glass = <tag:items:forge:pure_glass>;

val iron = <item:minecraft:iron_ingot>;
val gold = <item:minecraft:gold_ingot>;
val diamond = <item:minecraft:diamond>;
val emerald = <item:minecraft:emerald>;
val chorus = <item:minecraft:popped_chorus_fruit>;

# Item Pipes
# All of them use Mechanical Crafting due to the modpack's intention of using Create's belts to move items around
# Also uses Redstone to restrict it to the Overworld
<recipetype:minecraft:crafting>.removeRecipe(<item:refinedpipes:basic_item_pipe>);
<recipetype:minecraft:crafting>.removeRecipe(<item:refinedpipes:improved_item_pipe>);
<recipetype:minecraft:crafting>.removeRecipe(<item:refinedpipes:advanced_item_pipe>);

<recipetype:create:mechanical_crafting>.addRecipe("basic_item_pipe", <item:refinedpipes:basic_item_pipe>*6,
[[iron, redstone, iron],
[<tag:items:forge:glass>, <tag:items:forge:glass>, <tag:items:forge:glass>],
[iron, redstone, iron]]);

<recipetype:create:mechanical_crafting>.addRecipe("improved_item_pipe", <item:refinedpipes:improved_item_pipe>*6,
[[gold, redstone, gold],
[<tag:items:forge:glass>, <tag:items:forge:glass>, <tag:items:forge:glass>],
[gold, redstone, gold]]);

<recipetype:create:mechanical_crafting>.addRecipe("advanced_item_pipe", <item:refinedpipes:advanced_item_pipe>*6,
[[diamond, redstone, diamond],
[<tag:items:forge:glass>, <tag:items:forge:glass>, <tag:items:forge:glass>],
[diamond, redstone, diamond]]);

		# Upgrade recipes
<recipetype:create:compacting>.addRecipe("basic_item_upgrade", "none", <item:refinedpipes:improved_item_pipe>*6, [<item:refinedpipes:basic_item_pipe>*6, gold*3], [], 60);

<recipetype:create:compacting>.addRecipe("improved_item_upgrade", "none", <item:refinedpipes:advanced_item_pipe>*6, [<item:refinedpipes:improved_item_pipe>*6, diamond*3], [], 100);



# Fluid Pipes
# Uses Redstone and Pure Glass
<recipetype:minecraft:crafting>.removeRecipe(<item:refinedpipes:basic_fluid_pipe>);
<recipetype:minecraft:crafting>.removeRecipe(<item:refinedpipes:improved_fluid_pipe>);
<recipetype:minecraft:crafting>.removeRecipe(<item:refinedpipes:advanced_fluid_pipe>);
<recipetype:minecraft:crafting>.removeRecipe(<item:refinedpipes:elite_fluid_pipe>);
<recipetype:minecraft:crafting>.removeRecipe(<item:refinedpipes:ultimate_fluid_pipe>);

craftingTable.addShaped("basic_fluid_pipe", <item:refinedpipes:basic_fluid_pipe>*6, 
    [[iron, redstone, iron],
    [glass, glass, glass],
    [iron, redstone, iron]]);

craftingTable.addShaped("improved_fluid_pipe", <item:refinedpipes:improved_fluid_pipe>*6, 
    [[gold, redstone, gold],
    [glass, glass, glass],
    [gold, redstone, gold]]);

craftingTable.addShaped("advanced_fluid_pipe", <item:refinedpipes:advanced_fluid_pipe>*6, 
    [[diamond, redstone, diamond],
    [glass, glass, glass],
    [diamond, redstone, diamond]]);

craftingTable.addShaped("elite_fluid_pipe", <item:refinedpipes:elite_fluid_pipe>*6, 
    [[emerald, redstone, emerald],
    [glass, glass, glass],
    [emerald, redstone, emerald]]);
// Might reduce the amount given later, maybe even change the recipe
<recipetype:create:mechanical_crafting>.addRecipe("ultimate_fluid_pipe", <item:refinedpipes:ultimate_fluid_pipe>*12,
[[<item:refinedpipes:elite_fluid_pipe>, <item:refinedpipes:elite_fluid_pipe>, <item:refinedpipes:elite_fluid_pipe>],
[chorus, glass, chorus],
[<item:refinedpipes:elite_fluid_pipe>, <item:refinedpipes:elite_fluid_pipe>, <item:refinedpipes:elite_fluid_pipe>]]);

		# Upgrade recipes
		# Secondary item cost is half the regular (e.g. basic > improved takes 3 gold instead of 6)
		# All of them take 3 seconds, but elite > ultimate takes 10
<recipetype:create:compacting>.addRecipe("basic_fluid_upgrade", "none", <item:refinedpipes:improved_fluid_pipe>*6, [<item:refinedpipes:basic_fluid_pipe>*6, gold*3], [], 60);

<recipetype:create:compacting>.addRecipe("improved_fluid_upgrade", "none", <item:refinedpipes:advanced_fluid_pipe>*6, [<item:refinedpipes:improved_fluid_pipe>*6, diamond*3], [], 60);

<recipetype:create:compacting>.addRecipe("advanced_fluid_upgrade", "none", <item:refinedpipes:elite_fluid_pipe>*6, [<item:refinedpipes:advanced_fluid_pipe>*6, emerald*3], [], 60);

<recipetype:create:compacting>.addRecipe("elite_fluid_upgrade", "none", <item:refinedpipes:ultimate_fluid_pipe>*6, [<item:refinedpipes:advanced_fluid_pipe>*6, chorus*3], [], 200);



# Energy Pipes
# Uses Redstone, Pure Glass, and Mechanical Crafting
<recipetype:minecraft:crafting>.removeRecipe(<item:refinedpipes:basic_energy_pipe>);
<recipetype:minecraft:crafting>.removeRecipe(<item:refinedpipes:improved_energy_pipe>);
<recipetype:minecraft:crafting>.removeRecipe(<item:refinedpipes:advanced_energy_pipe>);
<recipetype:minecraft:crafting>.removeRecipe(<item:refinedpipes:elite_energy_pipe>);
<recipetype:minecraft:crafting>.removeRecipe(<item:refinedpipes:ultimate_energy_pipe>);

<recipetype:create:mechanical_crafting>.addRecipe("basic_energy_pipe", <item:refinedpipes:basic_energy_pipe>*6,
[[iron, iron, iron],
[glass, rblock, glass],
[iron, iron, iron]]);

<recipetype:create:mechanical_crafting>.addRecipe("improved_energy_pipe", <item:refinedpipes:improved_energy_pipe>*6,
[[gold, gold, gold],
[glass, rblock, glass],
[gold, gold, gold]]);

<recipetype:create:mechanical_crafting>.addRecipe("advanced_energy_pipe", <item:refinedpipes:advanced_energy_pipe>*6,
[[diamond, diamond, diamond],
[glass, rblock, glass],
[diamond, diamond, diamond]]);

<recipetype:create:mechanical_crafting>.addRecipe("elite_energy_pipe", <item:refinedpipes:elite_energy_pipe>*6,
[[emerald, emerald, emerald],
[glass, rblock, glass],
[emerald, emerald, emerald]]);

// Might reduce the amount given later, maybe even change the recipe
<recipetype:create:mechanical_crafting>.addRecipe("ultimate_energy_pipe_canister", <item:refinedpipes:ultimate_energy_pipe>*8,
[[<item:refinedpipes:elite_energy_pipe>, <item:refinedpipes:elite_energy_pipe>, <item:refinedpipes:elite_energy_pipe>],
[chorus, <item:contenttweaker:uranium_canister>, chorus],
[<item:refinedpipes:elite_energy_pipe>, <item:refinedpipes:elite_energy_pipe>, <item:refinedpipes:elite_energy_pipe>]]);

<recipetype:create:mechanical_crafting>.addRecipe("ultimate_energy_pipe_rod", <item:refinedpipes:ultimate_energy_pipe>*16,
[[<item:refinedpipes:elite_energy_pipe>, <item:refinedpipes:elite_energy_pipe>, <item:refinedpipes:elite_energy_pipe>],
[chorus, <item:contenttweaker:uranium_rod>, chorus],
[<item:refinedpipes:elite_energy_pipe>, <item:refinedpipes:elite_energy_pipe>, <item:refinedpipes:elite_energy_pipe>]]);

<recipetype:create:mechanical_crafting>.addRecipe("ultimate_energy_pipe_core", <item:refinedpipes:ultimate_energy_pipe>*64,
[[<item:refinedpipes:elite_energy_pipe>, <item:refinedpipes:elite_energy_pipe>, <item:refinedpipes:elite_energy_pipe>],
[chorus, <item:contenttweaker:uranium_fuel_core>, chorus],
[<item:refinedpipes:elite_energy_pipe>, <item:refinedpipes:elite_energy_pipe>, <item:refinedpipes:elite_energy_pipe>]]);


		# Upgrade recipes
		# Secondary item cost is half the regular (e.g. basic > improved takes 3 gold instead of 6)
		# All of them take 3 seconds, but elite > ultimate takes 10
<recipetype:create:compacting>.addRecipe("basic_energy_upgrade", "none", <item:refinedpipes:improved_energy_pipe>*6, [<item:refinedpipes:basic_energy_pipe>*6, gold*3], [], 60);

<recipetype:create:compacting>.addRecipe("improved_energy_upgrade", "none", <item:refinedpipes:advanced_energy_pipe>*6, [<item:refinedpipes:improved_energy_pipe>*6, diamond*3], [], 60);

<recipetype:create:compacting>.addRecipe("advanced_energy_upgrade", "none", <item:refinedpipes:elite_energy_pipe>*6, [<item:refinedpipes:advanced_energy_pipe>*6, emerald*3], [], 60);

<recipetype:create:compacting>.addRecipe("elite_energy_upgrade", "none", <item:refinedpipes:ultimate_energy_pipe>*6, [<item:refinedpipes:advanced_energy_pipe>*6, chorus*3], [], 200);


print("refined_pipes loaded");