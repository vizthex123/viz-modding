# Adds recipes for my custom items
import crafttweaker.api.tag.MCTag;

print("recipes.zs loading...");

/*
furnace.addRecipe("recipeName", <output>, <input>, XP, COOKTIME-10s default);

craftingTable.addShapeless("recipeName", <output>, [<inputs>]);

craftingTable.addShaped("recipeName", <output>, 
	[[<input>, <input>, <input>],
	[<input>, <input>, <input>],
	[<input>, <input>, <input>]]);

craftingTable.removeByName("recipeName");

mods.extendedcrafting.EnderCrafting.addShapeless(name, <output>, [inputs], seconds); 

do item:minecraft:air for empty spaces
*/

# Tokens & Tickets are in amc_recipes.zs!

// Alchemical Bag
craftingTable.addShaped("bag", <item:contenttweaker:bag>*4, 
	[[<item:minecraft:air>, <tag:items:forge:string>, <item:minecraft:air>],
	[<tag:items:forge:string>, <tag:items:forge:leather>, <tag:items:forge:string>],
	[<tag:items:forge:leather>, <tag:items:forge:leather>, <tag:items:forge:leather>]]);

craftingTable.addShapeless("single_bag", <item:contenttweaker:bag>, [<tag:items:forge:leather>, <tag:items:forge:string>]);

mods.extendedcrafting.CompressionCrafting.addRecipe("leather_to_bag", <item:minecraft:leather>, <item:contenttweaker:bag>*32, 16, <item:extendedcrafting:basic_component>, 10000, 100);
mods.extendedcrafting.CompressionCrafting.addRecipe("string_to_bag", <item:minecraft:string>, <item:contenttweaker:bag>*16, 32, <item:extendedcrafting:basic_component>, 25000, 100);

// Alchemical Crate
craftingTable.addShaped("crate", <item:contenttweaker:crate>*4, 
	[[<item:minecraft:iron_ingot>, <item:contenttweaker:bag>, <item:minecraft:iron_ingot>],
	[<item:contenttweaker:bag>, <item:minecraft:iron_ingot>, <item:contenttweaker:bag>],
	[<item:minecraft:iron_ingot>, <item:contenttweaker:bag>, <item:minecraft:iron_ingot>]]);

craftingTable.addShapeless("single_crate", <item:contenttweaker:crate>, [<item:contenttweaker:bag>, <item:minecraft:iron_ingot>]);

# Alchemical Catalysts
// Crystallization
mods.extendedcrafting.TableCrafting.addShaped("crystallization_catalyst_1000", 0, <item:contenttweaker:alchemical_crystallization_catalyst>*64,
	[[<item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:basic_component>, <item:extendedcrafting:black_iron_slate>], 
	[<item:extendedcrafting:basic_component>, <item:contenttweaker:1k-crate>, <item:extendedcrafting:basic_component>], 
	[<item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:basic_component>, <item:extendedcrafting:black_iron_slate>]]);

mods.extendedcrafting.TableCrafting.addShaped("crystallization_catalyst_500", 0, <item:contenttweaker:alchemical_crystallization_catalyst>*32,
	[[<item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_slate>], 
	[<item:extendedcrafting:black_iron_slate>, <item:contenttweaker:500-crate>, <item:extendedcrafting:black_iron_slate>], 
	[<item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_slate>]]);

mods.extendedcrafting.TableCrafting.addShaped("crystallization_catalyst_250", 0, <item:contenttweaker:alchemical_crystallization_catalyst>*16,
	[[<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_ingot>], 
	[<item:extendedcrafting:black_iron_slate>, <item:contenttweaker:250-crate>, <item:extendedcrafting:black_iron_slate>], 
	[<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_ingot>]]);

mods.extendedcrafting.TableCrafting.addShaped("crystallization_catalyst_100", 0, <item:contenttweaker:alchemical_crystallization_catalyst>*8,
	[[<item:extendedcrafting:black_iron_nugget>, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_nugget>], 
	[<item:extendedcrafting:black_iron_slate>, <item:contenttweaker:100-bag>, <item:extendedcrafting:black_iron_slate>], 
	[<item:extendedcrafting:black_iron_nugget>, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_nugget>]]);

mods.extendedcrafting.TableCrafting.addShaped("crystallization_catalyst_50", 0, <item:contenttweaker:alchemical_crystallization_catalyst>*4,
	[[<item:extendedcrafting:black_iron_nugget>, <item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_nugget>], 
	[<item:extendedcrafting:black_iron_slate>, <item:contenttweaker:50-bag>, <item:extendedcrafting:black_iron_slate>], 
	[<item:extendedcrafting:black_iron_nugget>, <item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_nugget>]]);

mods.extendedcrafting.TableCrafting.addShaped("crystallization_catalyst_25", 0, <item:contenttweaker:alchemical_crystallization_catalyst>*2,
	[[<item:extendedcrafting:black_iron_nugget>, <item:extendedcrafting:black_iron_nugget>, <item:extendedcrafting:black_iron_nugget>], 
	[<item:extendedcrafting:black_iron_nugget>, <item:contenttweaker:25-bag>, <item:extendedcrafting:black_iron_nugget>], 
	[<item:extendedcrafting:black_iron_nugget>, <item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_nugget>]]);

mods.extendedcrafting.TableCrafting.addShaped("crystallization_catalyst_10", 0, <item:contenttweaker:alchemical_crystallization_catalyst>,
	[[<item:extendedcrafting:black_iron_nugget>, <item:extendedcrafting:black_iron_nugget>, <item:extendedcrafting:black_iron_nugget>], 
	[<item:extendedcrafting:black_iron_nugget>, <item:contenttweaker:10-bag>, <item:extendedcrafting:black_iron_nugget>], 
	[<item:extendedcrafting:black_iron_nugget>, <item:extendedcrafting:black_iron_nugget>, <item:extendedcrafting:black_iron_nugget>]]);

// Compression
mods.extendedcrafting.TableCrafting.addShapeless("compression_catalyst_crystallization", 0, <item:contenttweaker:alchemical_compression_catalyst>*2,
	[<item:contenttweaker:alchemical_crystallization_catalyst>, <item:contenttweaker:alchemical_crystallization_catalyst>]);

mods.extendedcrafting.TableCrafting.addShapeless("compression_catalyst_catalyst", 0, <item:contenttweaker:alchemical_compression_catalyst>*4,
	[<item:contenttweaker:alchemical_catalyst>, <item:contenttweaker:alchemical_catalyst>]);

mods.extendedcrafting.TableCrafting.addShapeless("compression_catalyst_advanced", 0, <item:contenttweaker:alchemical_compression_catalyst>*8,
	[<item:contenttweaker:advanced_alchemical_catalyst>, <item:contenttweaker:advanced_alchemical_catalyst>]);

mods.extendedcrafting.TableCrafting.addShapeless("compression_catalyst_very_advanced", 0, <item:contenttweaker:alchemical_compression_catalyst>*16,
	[<item:contenttweaker:very_advanced_alchemical_catalyst>, <item:contenttweaker:very_advanced_alchemical_catalyst>]);

// Basic
mods.extendedcrafting.TableCrafting.addShaped("alchemical_catalyst", 0, <item:contenttweaker:alchemical_catalyst>, 
	[[<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>],
	[<item:minecraft:iron_ingot>, <item:contenttweaker:50-bag>, <item:minecraft:iron_ingot>],
	[<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>]]);

// Advanced
mods.extendedcrafting.TableCrafting.addShaped("advanced_alchemical_catalyst", 0, <item:contenttweaker:advanced_alchemical_catalyst>, 
	[[<item:minecraft:redstone>, <item:minecraft:gold_ingot>, <item:minecraft:redstone>],
	[<item:minecraft:gold_ingot>, <item:contenttweaker:100-bag>, <item:minecraft:gold_ingot>],
	[<item:minecraft:redstone>, <item:minecraft:gold_ingot>, <item:minecraft:redstone>]]);
	
// Very Advanced
mods.extendedcrafting.TableCrafting.addShaped("very_advanced_alchemical_catalyst", 0, <item:contenttweaker:very_advanced_alchemical_catalyst>, 
	[[<item:heartcanisters:cut_diamond>, <item:minecraft:glowstone_dust>, <item:heartcanisters:cut_diamond>], 
	[<item:minecraft:glowstone_dust>, <item:contenttweaker:250-crate>, <item:minecraft:glowstone_dust>], 
	[<item:heartcanisters:cut_diamond>, <item:minecraft:glowstone_dust>, <item:heartcanisters:cut_diamond>]]);

// Ticket Catalyst
mods.extendedcrafting.TableCrafting.addShaped("ticket_catalyst", 0, <item:contenttweaker:ticket_catalyst>, 
	[[<item:minecraft:air>, <item:extendedcrafting:black_iron_ingot>, <item:minecraft:air>], 
	[<item:extendedcrafting:black_iron_ingot>, <item:contenttweaker:very_advanced_token_catalyst>|<item:contenttweaker:highly_advanced_token_catalyst>|<item:contenttweaker:alchemist_token_catalyst>, <item:extendedcrafting:black_iron_ingot>], 
	[<item:minecraft:air>, <item:extendedcrafting:black_iron_ingot>, <item:minecraft:air>]]);

// Token Catalyst
mods.extendedcrafting.TableCrafting.addShaped("token_catalyst", 0, <item:contenttweaker:token_catalyst>, 
	[[<item:minecraft:air>, <item:extendedcrafting:black_iron_nugget>, <item:minecraft:air>], 
	[<item:extendedcrafting:black_iron_nugget>, <item:contenttweaker:25-bag>, <item:extendedcrafting:black_iron_nugget>], 
	[<item:minecraft:air>, <item:extendedcrafting:black_iron_nugget>, <item:minecraft:air>]]);

// Advanced Token Catalyst
mods.extendedcrafting.TableCrafting.addShaped("advanced_token_catalyst", 0, <item:contenttweaker:advanced_token_catalyst>, 
	[[<item:extendedcrafting:black_iron_nugget>, <item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_nugget>], 
	[<item:extendedcrafting:black_iron_ingot>, <item:contenttweaker:100-bag>, <item:extendedcrafting:black_iron_ingot>], 
	[<item:extendedcrafting:black_iron_nugget>, <item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_nugget>]]);

// Very Advanced Token Catalyst
mods.extendedcrafting.TableCrafting.addShaped("very_advanced_token_catalyst", 0, <item:contenttweaker:very_advanced_token_catalyst>, 
	[[<item:minecraft:air>, <item:extendedcrafting:black_iron_slate>, <item:minecraft:air>], 
	[<item:extendedcrafting:black_iron_slate>, <item:contenttweaker:500-crate>, <item:extendedcrafting:black_iron_slate>], 
	[<item:minecraft:air>, <item:extendedcrafting:black_iron_slate>, <item:minecraft:air>]]);

// Highly Advanced Token Catalyst
mods.extendedcrafting.TableCrafting.addShaped("highly_advanced_token_catalyst", 0, <item:contenttweaker:highly_advanced_token_catalyst>, 
	[[<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_ingot>], 
	[<item:extendedcrafting:black_iron_slate>, <item:contenttweaker:1k-crate>, <item:extendedcrafting:black_iron_slate>], 
	[<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_ingot>]]);

// Alchemist's Advanced Token Catalyst
mods.extendedcrafting.TableCrafting.addShaped("alchemist_token_catalyst", 0, <item:contenttweaker:alchemist_token_catalyst>, 
	[[<item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:basic_component>, <item:extendedcrafting:black_iron_slate>], 
	[<item:extendedcrafting:basic_component>, <item:contenttweaker:5k-crate>, <item:extendedcrafting:basic_component>], 
	[<item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:basic_component>, <item:extendedcrafting:black_iron_slate>]]);


print("recipes.zs loaded");