# Adds recipes that don't fit anywhere else

import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.SmithingManager;

print("misc.zs loading...");

// Change the stacksize of Minecarts
<item:minecraft:minecart>.setMaxStackSize(3);

/*
furnace.addRecipe("recipeName", <output>, <input>, xp, cooktime-10s default);

craftingTable.addShaped("recipeName", <output>, 
    [[<input>, <input>, <input>],
    [<input>, <input>, <input>],
    [<input>, <input>, <input>]]);

craftingTable.addShapeless("recipeName", <output>, [<inputs>]);

craftingTable.removeByName("recipeName");
<recipetype:minecraft:crafting>.removeRecipe(<item>);

do item:minecraft:air for empty spaces

<recipetype:thermal:pulverizer_catalyst>.addCatalyst("name", <item>, float primaryMod, float secondaryMod, float energyMod, float minChance, float useChance);
<recipetype:thermal:smelter_catalyst>.addCatalyst("name", <item>, float primaryMod, float secondaryMod, float energyMod, float minChance, float useChance);

min chance is the chance to get extra outputs(?)
*/

// Change the Netherite Hammer & Excavator to use a Smithing Table
<recipetype:minecraft:crafting>.removeRecipe(<item:vanillahammers:netherite_hammer>);
<recipetype:minecraft:crafting>.removeRecipe(<item:vanillaexcavators:netherite_excavator>);
smithing.addRecipe("netherite_hammer", <item:vanillahammers:netherite_hammer>, <item:vanillahammers:diamond_hammer>|<item:vanillahammers:emerald_hammer>, <item:minecraft:netherite_ingot>);

smithing.addRecipe("netherite_excavator", <item:vanillaexcavators:netherite_excavator>, <item:vanillaexcavators:diamond_excavator>|<item:vanillaexcavators:emerald_excavator>, <item:minecraft:netherite_ingot>);

// Make the Akashic Tome cheaper
<recipetype:minecraft:crafting>.removeRecipe(<item:akashictome:tome>);
craftingTable.addShapeless("akashic_tome", <item:akashictome:tome>, [<item:minecraft:book>|<item:minecraft:writable_book>|<item:minecraft:written_book>, <item:minecraft:book>|<item:minecraft:writable_book>|<item:minecraft:written_book>]);

# New Extended Crafting table recipes
// Basic
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:basic_table>);
craftingTable.addShaped("basic_table", <item:extendedcrafting:basic_table>, 
    [[<item:minecraft:iron_ingot>, <item:extendedcrafting:basic_component>, <item:minecraft:iron_ingot>],
    [<item:extendedcrafting:black_iron_slate>, <tag:items:forge:workbench>, <item:extendedcrafting:black_iron_slate>],
    [<item:minecraft:iron_ingot>, <item:extendedcrafting:black_iron_slate>, <item:minecraft:iron_ingot>]]);

// Basic Autocrafting
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:basic_auto_table>);
craftingTable.addShaped("basic_auto_table", <item:extendedcrafting:basic_auto_table>, 
    [[<item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:basic_component>, <item:extendedcrafting:redstone_ingot>],
    [<item:extendedcrafting:redstone_component>, <item:extendedcrafting:basic_table>, <item:extendedcrafting:redstone_component>],
    [<item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:basic_component>, <item:extendedcrafting:redstone_ingot>]]);

// Advanced
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:advanced_table>);
craftingTable.addShaped("advanced_table", <item:extendedcrafting:advanced_table>, 
    [[<item:minecraft:gold_ingot>, <item:extendedcrafting:advanced_component>, <item:minecraft:gold_ingot>],
    [<item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:basic_table>, <item:extendedcrafting:black_iron_slate>],
    [<item:minecraft:gold_ingot>, <item:extendedcrafting:black_iron_slate>, <item:minecraft:gold_ingot>]]);
	
// Advanced Autocrafting
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:advanced_auto_table>);
craftingTable.addShaped("advanced_auto_table", <item:extendedcrafting:advanced_auto_table>, 
    [[<item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:advanced_component>, <item:extendedcrafting:redstone_ingot>],
    [<item:extendedcrafting:redstone_component>, <item:extendedcrafting:advanced_table>, <item:extendedcrafting:redstone_component>],
    [<item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:advanced_component>, <item:extendedcrafting:redstone_ingot>]]);

// Elite
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:elite_table>);
craftingTable.addShaped("elite_table", <item:extendedcrafting:elite_table>, 
    [[<item:minecraft:diamond>, <item:extendedcrafting:elite_component>, <item:minecraft:diamond>],
    [<item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:advanced_table>, <item:extendedcrafting:black_iron_slate>],
    [<item:minecraft:diamond>, <item:extendedcrafting:black_iron_slate>, <item:minecraft:diamond>]]);

// Elite Autocrafting
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:elite_auto_table>);
craftingTable.addShaped("elite_auto_table", <item:extendedcrafting:elite_auto_table>, 
    [[<item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:elite_component>, <item:extendedcrafting:redstone_ingot>],
    [<item:extendedcrafting:redstone_component>, <item:extendedcrafting:elite_table>, <item:extendedcrafting:redstone_component>],
    [<item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:elite_component>, <item:extendedcrafting:redstone_ingot>]]);

// New Quantum Compressor recipe
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:compressor>);
mods.extendedcrafting.TableCrafting.addShaped("quantum_compressor", 0, <item:extendedcrafting:compressor>, 
	[[<item:thermal:tin_ingot>, <item:extendedcrafting:black_iron_slate>, <item:thermal:tin_ingot>], 
	[<item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:frame>, <item:extendedcrafting:black_iron_slate>], 
	[<item:thermal:tin_ingot>, <item:extendedcrafting:black_iron_slate>, <item:thermal:tin_ingot>]]);

// New Crafting Core recipes
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:crafting_core>);
mods.extendedcrafting.TableCrafting.addShaped("crafting_core", 0, <item:extendedcrafting:crafting_core>, 
	[[<item:heartcanisters:cut_diamond>, <item:extendedcrafting:advanced_catalyst>, <item:heartcanisters:cut_diamond>], 
	[<item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:frame>, <item:extendedcrafting:black_iron_slate>], 
	[<item:heartcanisters:cut_diamond>, <item:extendedcrafting:black_iron_slate>, <item:heartcanisters:cut_diamond>]]);

// New Pedestal recipes
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:pedestal>);
craftingTable.addShaped("pedestal", <item:extendedcrafting:pedestal>*2,
    [[<item:minecraft:air>, <item:extendedcrafting:black_iron_ingot>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:extendedcrafting:black_iron_ingot>, <item:minecraft:air>],
    [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_ingot>]]);

craftingTable.addShaped("pedestal_block", <item:extendedcrafting:pedestal>*4,
    [[<item:minecraft:air>, <item:extendedcrafting:black_iron_ingot>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:extendedcrafting:black_iron_ingot>, <item:minecraft:air>],
    [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_block>, <item:extendedcrafting:black_iron_ingot>]]);

// New Ender Crafter recipe
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:ender_crafter>);
mods.extendedcrafting.TableCrafting.addShaped("ender_crafter", 0, <item:extendedcrafting:ender_crafter>,
	[[<item:extendedcrafting:ender_nugget>, <item:minecraft:ender_pearl>, <item:extendedcrafting:ender_nugget>], 
	[<item:extendedcrafting:ender_nugget>, <item:extendedcrafting:basic_table>, <item:extendedcrafting:ender_nugget>], 
	[<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_ingot>]]);

// New Ender Alternator recipes
<recipetype:minecraft:crafting>.removeRecipe(<item:extendedcrafting:ender_alternator>);
mods.extendedcrafting.TableCrafting.addShaped("ender_alternator", 0, <item:extendedcrafting:ender_alternator>*2,
	[[<item:minecraft:air>, <item:minecraft:ender_pearl>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:extendedcrafting:ender_ingot>, <item:minecraft:air>], 
	[<item:extendedcrafting:ender_ingot>, <item:extendedcrafting:ender_ingot>, <item:extendedcrafting:ender_ingot>]]);

mods.extendedcrafting.TableCrafting.addShaped("ender_alternator_eye", 0, <item:extendedcrafting:ender_alternator>*4,
	[[<item:minecraft:air>, <item:minecraft:ender_eye>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:extendedcrafting:ender_ingot>, <item:minecraft:air>], 
	[<item:extendedcrafting:ender_ingot>, <item:extendedcrafting:ender_ingot>, <item:extendedcrafting:ender_ingot>]]);

print("misc.zs loaded");