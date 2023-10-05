# Changes recipes for AE 2 & its addons
import mods.jeitweaker.Jei;

print("ae2.zs loading...");
/*
furnace.addRecipe("recipeName", <output>, <input>, xp, cooktime-10s default);

craftingTable.addShapeless("recipeName", <output>, [<inputs>]);

craftingTable.addShaped("recipeName", <output>, 
    [[<input>, <input>, <input>],
    [<input>, <input>, <input>],
    [<input>, <input>, <input>]]);

craftingTable.removeByName("recipeName");
craftingTable.remove(<item>);

smithing.addRecipe("recipe_name", <output>, <item>, <item2>);

smithing.removeByName("name");
*/

val empty = <item:minecraft:air>;

val iron = <item:minecraft:iron_ingot>;
val blue = <item:bluepower:blue_alloy_ingot>;
val netherite = <item:minecraft:netherite_ingot>;

val fluix = <item:ae2:fluix_crystal>;
val certus = <tag:items:forge:gems/certus_quartz>;
val amethyst = <tag:items:forge:gems/amethyst>;
val tesla = <item:bluepower:teslatite_dust>;
val advanced_tesla = <item:bluepower:infused_teslatite_dust>;


val glass = <item:ae2:quartz_glass>;
val vibrant = <item:ae2:quartz_vibrant_glass>;



// Remove Vibration Chambers since they're useless
craftingTable.remove(<item:ae2:vibration_chamber>);
Jei.hideIngredient(<item:ae2:vibration_chamber>);

// Craft Fluix
mods.extendedcrafting.CombinationCrafting.addRecipe("fluix", fluix*2, 40000, [<item:ae2:charged_certus_quartz_crystal>, <item:minecraft:quartz>, tesla, <item:lightmanscurrency:coin_emerald>], 400);

// Cheaper Security Terminal
craftingTable.remove(<item:ae2:security_station>);
craftingTable.addShaped("security_station", <item:ae2:security_station>,
    [[iron, <item:ae2:cell_component_4k>, iron],
    [<item:ae2:fluix_glass_cable>, empty, <item:ae2:fluix_glass_cable>],
    [iron, <item:ae2:engineering_processor>, iron]]);



### Move recipes to the Flux Crafter ###

// Energy Acceptor
craftingTable.remove(<item:ae2:energy_acceptor>);
mods.extendedcrafting.FluxCrafting.addShaped("energy_acceptor", <item:ae2:energy_acceptor>,
	[[<item:minecraft:iron_ingot>, glass, <item:minecraft:iron_ingot>], 
	[glass, blue, glass], 
	[<item:minecraft:iron_ingot>, glass, <item:minecraft:iron_ingot>]], 8000, 40);

// Upgrade an Energy Acceptor into an ME Controlller
mods.extendedcrafting.FluxCrafting.addShaped("acceptor_upgrade", <item:ae2:controller>,
    [[<item:ae2:sky_dust>, <item:ae2:charged_certus_quartz_crystal>, <item:ae2:sky_dust>],
    [<item:ae2:charged_certus_quartz_crystal>, <item:ae2:energy_acceptor>, <item:ae2:charged_certus_quartz_crystal>],
    [<item:ae2:sky_dust>, <item:ae2:charged_certus_quartz_crystal>, <item:ae2:sky_dust>]], 4000, 40);

// Molecular Assembler
craftingTable.remove(<item:ae2:molecular_assembler>);
mods.extendedcrafting.FluxCrafting.addShaped("molecular_assembler", <item:ae2:molecular_assembler>,
	[[blue, glass|vibrant, blue], 
	[<item:ae2:annihilation_core>, <item:minecraft:crafting_table>, <item:ae2:formation_core>], 
	[blue, glass|vibrant, blue]], 12000, 120);

// Crystal Growth Accelerator
craftingTable.remove(<item:ae2:dense_energy_cell>);
mods.extendedcrafting.FluxCrafting.addShaped("crystal_growth_accelerator", <item:ae2:quartz_growth_accelerator>,
	[[blue, iron, blue], 
	[vibrant, <item:ae2:fluix_block>, vibrant], 
	[blue, iron, blue]], 16000, 64);

# Energy Cells
craftingTable.remove(<item:ae2:energy_cell>);
craftingTable.remove(<item:ae2:dense_energy_cell>);
mods.extendedcrafting.FluxCrafting.addShaped("energy_cell", <item:ae2:energy_cell>,
	[[certus, fluix, certus], 
	[fluix, glass|vibrant, fluix], 
	[certus, fluix, certus]], 10000, 10);
	
mods.extendedcrafting.FluxCrafting.addShaped("dense_energy_cell", <item:ae2:dense_energy_cell>,
	[[<item:ae2:energy_cell>, <item:ae2:energy_cell>, <item:ae2:energy_cell>], 
	[<item:ae2:energy_cell>, <item:ae2:calculation_processor>, <item:ae2:energy_cell>], 
	[<item:ae2:energy_cell>, <item:ae2:energy_cell>, <item:ae2:energy_cell>]], 100000, 100);



# DISK Drives (AE2 Things)
# Starts at 15 seconds, +15 per tier. Housing is 30.
# Combinations take half the time rounded down
val housing = <item:ae2things:disk_housing>;

craftingTable.remove(<item:ae2things:disk_drive_1k>);
craftingTable.remove(<item:ae2things:disk_drive_4k>);
craftingTable.remove(<item:ae2things:disk_drive_16k>);
craftingTable.remove(<item:ae2things:disk_drive_64k>);
craftingTable.remove(<item:ae2things:disk_drive_256k>);

// Housing
mods.extendedcrafting.EnderCrafting.addShaped("housing", <item:ae2things:disk_housing>,
	[[vibrant, advanced_tesla, vibrant], 
	[advanced_tesla, empty, advanced_tesla], 
	[netherite, amethyst, netherite]], 30);

// 1k
mods.extendedcrafting.EnderCrafting.addShaped("1k_disk_drive", <item:ae2things:disk_drive_1k>,
	[[vibrant, advanced_tesla, vibrant], 
	[advanced_tesla, <item:ae2:cell_component_1k>, advanced_tesla], 
	[netherite, amethyst, netherite]], 15);

mods.extendedcrafting.EnderCrafting.addShapeless("1k_disk_drive_combine", <item:ae2things:disk_drive_1k>,
	[housing, <item:ae2:cell_component_1k>], 7);

// 4k
mods.extendedcrafting.EnderCrafting.addShaped("4k_disk_drive", <item:ae2things:disk_drive_4k>,
	[[vibrant, advanced_tesla, vibrant], 
	[advanced_tesla, <item:ae2:cell_component_4k>, advanced_tesla], 
	[netherite, amethyst, netherite]], 30);

mods.extendedcrafting.EnderCrafting.addShapeless("4k_disk_drive_combine", <item:ae2things:disk_drive_4k>,
	[housing, <item:ae2:cell_component_4k>], 15);

// 16k
mods.extendedcrafting.EnderCrafting.addShaped("16k_disk_drive", <item:ae2things:disk_drive_16k>,
	[[vibrant, advanced_tesla, vibrant], 
	[advanced_tesla, <item:ae2:cell_component_16k>, advanced_tesla], 
	[netherite, amethyst, netherite]], 45);

mods.extendedcrafting.EnderCrafting.addShapeless("16k_disk_drive_combine", <item:ae2things:disk_drive_16k>,
	[housing, <item:ae2:cell_component_16k>], 22);

// 64k
mods.extendedcrafting.EnderCrafting.addShaped("64k_disk_drive", <item:ae2things:disk_drive_64k>,
	[[vibrant, advanced_tesla, vibrant], 
	[advanced_tesla, <item:ae2:cell_component_64k>, advanced_tesla], 
	[netherite, amethyst, netherite]], 60);

mods.extendedcrafting.EnderCrafting.addShapeless("64k_disk_drive_combine", <item:ae2things:disk_drive_64k>,
	[housing, <item:ae2:cell_component_64k>], 30);

// 256k
mods.extendedcrafting.EnderCrafting.addShaped("256k_disk_drive", <item:ae2things:disk_drive_256k>,
	[[vibrant, advanced_tesla, vibrant], 
	[advanced_tesla, <item:ae2:cell_component_256k>, advanced_tesla], 
	[netherite, amethyst, netherite]], 75);

mods.extendedcrafting.EnderCrafting.addShapeless("256k_disk_drive_combine", <item:ae2things:disk_drive_256k>,
	[housing, <item:ae2:cell_component_256k>], 37);

print("ae2.zs loaded");