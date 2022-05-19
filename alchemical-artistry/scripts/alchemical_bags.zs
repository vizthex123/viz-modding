# Adds recipes for Alchemical Bags
# The bag itself is in recipes.zs
import crafttweaker.api.tag.MCTag;

print("alchemical_bags.zs loading...");

/*
craftingTable.addShapeless("name", <output>, [<inputs>]);

mods.extendedcrafting.CombinationCrafting.addRecipe("name", <output>, rf, [<centreitem>, <48-inputs>]);

mods.extendedcrafting.CompressionCrafting.addRecipe("name", <input>, <output>, inputCount, <catalyst>, rf, RFRate);

RF Cost is 100x AMC requirement

Use combination first
- Only used if there are 10 or more inputs (including the bag)
If it's a compression or combination recipe, it's 1,000x
- If it uses a microscopic tag, it's only 500x
- RF cost gets reduced by 25% each time if higher-tier items (50+ AMC) are used
*/

# Extra recipes that I don't wanna hunt down if I need to change them or something
mods.extendedcrafting.CompressionCrafting.addRecipe("cobble_to_bag", <item:minecraft:cobblestone>, <item:contenttweaker:100-bag>, 100, <item:contenttweaker:alchemical_catalyst>, 10000, 50);
mods.extendedcrafting.CompressionCrafting.addRecipe("cobble_to_crate", <item:minecraft:cobblestone>, <item:contenttweaker:250-crate>, 250, <item:contenttweaker:advanced_alchemical_catalyst>, 25000, 125);

mods.extendedcrafting.CompressionCrafting.addRecipe("dirt_to_bag", <item:minecraft:dirt>, <item:contenttweaker:100-bag>, 100, <item:contenttweaker:alchemical_catalyst>, 10000, 50);
mods.extendedcrafting.CompressionCrafting.addRecipe("dirt_to_crate", <item:minecraft:dirt>, <item:contenttweaker:250-crate>, 250, <item:contenttweaker:advanced_alchemical_catalyst>, 25000, 125);

mods.extendedcrafting.CompressionCrafting.addRecipe("microscopic_to_bag", <item:contenttweaker:amc_crystal_microscopic>, <item:contenttweaker:1-bag>, 200, <item:extendedcrafting:black_iron_slate>, 1000, 1);
mods.extendedcrafting.CompressionCrafting.addRecipe("submicroscopic_to_bag", <item:contenttweaker:amc_crystal_submicroscopic>, <item:contenttweaker:1-bag>, 1000, <item:extendedcrafting:black_iron_slate>, 1000, 1);


// 1 AMC Bag
craftingTable.addShapeless("1-bag", <item:contenttweaker:1-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:1>]);

craftingTable.addShapeless("1-bag_0.75", <item:contenttweaker:1-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:0.75>, <tag:items:amc-value:0.25>]);
craftingTable.addShapeless("1-bag_0.5", <item:contenttweaker:1-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:0.5>, <tag:items:amc-value:0.5>]);
craftingTable.addShapeless("1-bag_0.25", <item:contenttweaker:1-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:0.25>, <tag:items:amc-value:0.25>, <tag:items:amc-value:0.25>, <tag:items:amc-value:0.25>]);

craftingTable.addShapeless("2-bag_to_1", <item:contenttweaker:1-bag>*2, [<item:contenttweaker:2-bag>]);
craftingTable.addShapeless("5-bag_to_1", <item:contenttweaker:1-bag>*5, [<item:contenttweaker:5-bag>]);


// 2 AMC Bag
craftingTable.addShapeless("2-bag", <item:contenttweaker:2-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:2>]);
craftingTable.addShapeless("2-bag_1amc", <item:contenttweaker:2-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:1>, <tag:items:amc-value:1>]);

craftingTable.addShapeless("2-bag_combine", <item:contenttweaker:2-bag>, [<item:contenttweaker:1-bag>, <item:contenttweaker:1-bag>]);


// 5 AMC Bag
craftingTable.addShapeless("5-bag", <item:contenttweaker:5-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:5>]);
craftingTable.addShapeless("5-bag_4", <item:contenttweaker:5-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:4>, <tag:items:amc-value:1>]);
craftingTable.addShapeless("5-bag_3", <item:contenttweaker:5-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:3>, <tag:items:amc-value:2>]);
craftingTable.addShapeless("5-bag_2", <item:contenttweaker:5-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:2>, <tag:items:amc-value:2>, <tag:items:amc-value:1>]);
craftingTable.addShapeless("5-bag_1", <item:contenttweaker:5-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:1>, <tag:items:amc-value:1>, <tag:items:amc-value:1>, <tag:items:amc-value:1>, <tag:items:amc-value:1>]);

craftingTable.addShapeless("5-bag_combine", <item:contenttweaker:5-bag>, [<item:contenttweaker:2-bag>, <item:contenttweaker:2-bag>, <item:contenttweaker:1-bag>]);
craftingTable.addShapeless("5-bag_combine_2", <item:contenttweaker:5-bag>, [<item:contenttweaker:2-bag>, <item:contenttweaker:1-bag>, <item:contenttweaker:1-bag>, <item:contenttweaker:1-bag>]);
craftingTable.addShapeless("5-bag_combine_1", <item:contenttweaker:5-bag>, [<item:contenttweaker:1-bag>, <item:contenttweaker:1-bag>, <item:contenttweaker:1-bag>, <item:contenttweaker:1-bag>, <item:contenttweaker:1-bag>]);

mods.extendedcrafting.CompressionCrafting.addRecipe("5-amc-bag_compress_0.25", <tag:items:amc-value:0.25>, <item:contenttweaker:5-bag>, 20, <item:contenttweaker:alchemical_catalyst>, 5000, 5);

craftingTable.addShapeless("25-bag_to_5", <item:contenttweaker:5-bag>*5, [<item:contenttweaker:25-bag>]);


// 10 AMC Bag
craftingTable.addShapeless("10-amc-bag", <item:contenttweaker:10-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:10>]);
craftingTable.addShapeless("10-amc-bag_9", <item:contenttweaker:10-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:9>, <tag:items:amc-value:1>]);
craftingTable.addShapeless("10-amc-bag_7", <item:contenttweaker:10-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:7>, <tag:items:amc-value:3>]);
craftingTable.addShapeless("10-amc-bag_8", <item:contenttweaker:10-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:8>, <tag:items:amc-value:2>]);
craftingTable.addShapeless("10-amc-bag_6", <item:contenttweaker:10-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:6>, <tag:items:amc-value:4>]);
craftingTable.addShapeless("10-amc-bag_5", <item:contenttweaker:10-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:5>, <tag:items:amc-value:5>]);
craftingTable.addShapeless("10-amc-bag_2", <item:contenttweaker:10-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:2>, <tag:items:amc-value:2>, <tag:items:amc-value:2>, <tag:items:amc-value:2>, <tag:items:amc-value:2>]);

mods.extendedcrafting.TableCrafting.addShapeless("10-amc-bag_1", 0, <item:contenttweaker:10-bag>,
	[<item:contenttweaker:bag>, <tag:items:amc-value:1>, <tag:items:amc-value:1>, <tag:items:amc-value:1>, <tag:items:amc-value:1>, <tag:items:amc-value:1>, <tag:items:amc-value:1>, <tag:items:amc-value:1>, <tag:items:amc-value:1>, <tag:items:amc-value:1>, <tag:items:amc-value:1>]);
	
craftingTable.addShapeless("10-amc-bag_combine", <item:contenttweaker:10-bag>, [<item:contenttweaker:5-bag>, <item:contenttweaker:5-bag>]);
craftingTable.addShapeless("10-amc-bag_combine_2", <item:contenttweaker:10-bag>, [<item:contenttweaker:2-bag>, <item:contenttweaker:2-bag>, <item:contenttweaker:2-bag>, <item:contenttweaker:2-bag>, <item:contenttweaker:2-bag>]);

mods.extendedcrafting.TableCrafting.addShapeless("10-amc-bag_combine_1", 0, <item:contenttweaker:10-bag>, 
	[<item:contenttweaker:1-bag>, <item:contenttweaker:1-bag>, <item:contenttweaker:1-bag>, <item:contenttweaker:1-bag>, <item:contenttweaker:1-bag>, <item:contenttweaker:1-bag>, <item:contenttweaker:1-bag>, <item:contenttweaker:1-bag>, <item:contenttweaker:1-bag>, <item:contenttweaker:1-bag>]);


// 25 AMC Bag
craftingTable.addShapeless("25-amc-bag", <item:contenttweaker:25-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:25>]);
craftingTable.addShapeless("25-amc-bag_10", <item:contenttweaker:25-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:10>, <tag:items:amc-value:10>, <tag:items:amc-value:5>]);
craftingTable.addShapeless("25-amc-bag_5", <item:contenttweaker:25-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:5>, <tag:items:amc-value:5>, <tag:items:amc-value:5>, <tag:items:amc-value:5>, <tag:items:amc-value:5>]);

craftingTable.addShapeless("25-amc-bag_combine", <item:contenttweaker:25-bag>, [<item:contenttweaker:10-bag>, <item:contenttweaker:10-bag>, <item:contenttweaker:5-bag>]);
craftingTable.addShapeless("25-amc-bag_combine_5", <item:contenttweaker:25-bag>, [<item:contenttweaker:5-bag>, <item:contenttweaker:5-bag>, <item:contenttweaker:5-bag>, <item:contenttweaker:5-bag>, <item:contenttweaker:5-bag>]);

craftingTable.addShapeless("500-bag_to_25", <item:contenttweaker:25-bag>*2, [<item:contenttweaker:50-bag>]);


// 50 AMC Bag
craftingTable.addShapeless("50-amc-bag_50", <item:contenttweaker:50-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:50>]);
craftingTable.addShapeless("50-amc-bag_35", <item:contenttweaker:50-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:35>, <tag:items:amc-value:15>]);
craftingTable.addShapeless("50-amc-bag_25", <item:contenttweaker:50-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:25>, <tag:items:amc-value:25>]);
craftingTable.addShapeless("50-amc-bag_20", <item:contenttweaker:50-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:20>, <tag:items:amc-value:20>, <tag:items:amc-value:10>]);
craftingTable.addShapeless("50-amc-bag_10", <item:contenttweaker:50-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:10>, <tag:items:amc-value:10>, <tag:items:amc-value:10>, <tag:items:amc-value:10>, <tag:items:amc-value:10>]);
craftingTable.addShapeless("50-amc-bag_5", <item:contenttweaker:50-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:10>, <tag:items:amc-value:10>, <tag:items:amc-value:5>, <tag:items:amc-value:5>, <tag:items:amc-value:5>, <tag:items:amc-value:5>, <tag:items:amc-value:5>, <tag:items:amc-value:5>]);

craftingTable.addShapeless("50-amc-bag_combine", <item:contenttweaker:50-bag>, [<item:contenttweaker:25-bag>, <item:contenttweaker:25-bag>]);
craftingTable.addShapeless("50-amc-bag_combine_10", <item:contenttweaker:50-bag>, [<item:contenttweaker:10-bag>, <item:contenttweaker:10-bag>, <item:contenttweaker:10-bag>, <item:contenttweaker:10-bag>, <item:contenttweaker:10-bag>]);

mods.extendedcrafting.TableCrafting.addShapeless("250-crate_to_50", 0, <item:contenttweaker:50-bag>*5, [<item:contenttweaker:250-crate>]);

craftingTable.addShapeless("100-bag_to_50", <item:contenttweaker:50-bag>*2, [<item:contenttweaker:100-bag>]);


// 100 AMC Bag (Needs 2 bags)
craftingTable.addShapeless("100-amc-bag_100", <item:contenttweaker:100-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:100>]);
craftingTable.addShapeless("100-amc-bag_75", <item:contenttweaker:100-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:75>, <tag:items:amc-value:25>]);
craftingTable.addShapeless("100-amc-bag_50", <item:contenttweaker:100-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:50>, <tag:items:amc-value:50>]);
craftingTable.addShapeless("100-amc-bag_25", <item:contenttweaker:100-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:25>, <tag:items:amc-value:25>, <tag:items:amc-value:25>, <tag:items:amc-value:25>]);
craftingTable.addShapeless("100-amc-bag_20", <item:contenttweaker:100-bag>, [<item:contenttweaker:bag>, <tag:items:amc-value:20>, <tag:items:amc-value:20>, <tag:items:amc-value:20>, <tag:items:amc-value:20>, <tag:items:amc-value:20>]);

craftingTable.addShapeless("100-amc-combine", <item:contenttweaker:100-bag>, [<item:contenttweaker:50-bag>, <item:contenttweaker:50-bag>]);
craftingTable.addShapeless("100-amc-combine_25", <item:contenttweaker:100-bag>, [<item:contenttweaker:25-bag>, <item:contenttweaker:25-bag>, <item:contenttweaker:25-bag>, <item:contenttweaker:25-bag>]);


# Crates: Needs an Extended Crafting table
# Also cost a tad more than bags, basically only made it because I felt like a bag couldn't hold 10k Magic Material™ lol
# (And the 250 one was just so it'd be even - gotta be even after all, equivalent exchange and whatnot)
# (It's not though due to the tiering I made though, oof)

// 250 AMC Crate
mods.extendedcrafting.TableCrafting.addShapeless("250-crate_250", 0, <item:contenttweaker:250-crate>, [<item:contenttweaker:crate>, <tag:items:amc-value:250>]);
mods.extendedcrafting.TableCrafting.addShapeless("250-crate_200", 0, <item:contenttweaker:250-crate>, [<item:contenttweaker:crate>, <tag:items:amc-value:200>, <tag:items:amc-value:50>]);
mods.extendedcrafting.TableCrafting.addShapeless("250-crate_125", 0, <item:contenttweaker:250-crate>, [<item:contenttweaker:crate>, <tag:items:amc-value:125>, <tag:items:amc-value:125>]);
mods.extendedcrafting.TableCrafting.addShapeless("250-crate_50", 0, <item:contenttweaker:250-crate>, [<item:contenttweaker:crate>, <tag:items:amc-value:50>, <tag:items:amc-value:50>, <tag:items:amc-value:50>, <tag:items:amc-value:50>, <tag:items:amc-value:50>]);

craftingTable.addShapeless("250-crate_combine", <item:contenttweaker:250-crate>, [<item:contenttweaker:100-bag>, <item:contenttweaker:100-bag>, <item:contenttweaker:50-bag>]);
craftingTable.addShapeless("250-crate_combine_50", <item:contenttweaker:250-crate>, [<item:contenttweaker:50-bag>, <item:contenttweaker:50-bag>, <item:contenttweaker:50-bag>, <item:contenttweaker:50-bag>, <item:contenttweaker:50-bag>]);


// 500 AMC Crate
mods.extendedcrafting.TableCrafting.addShapeless("500-crate_500", 0, <item:contenttweaker:500-crate>, [<item:contenttweaker:crate>, <tag:items:amc-value:500>]);
mods.extendedcrafting.TableCrafting.addShapeless("500-crate_250", 0, <item:contenttweaker:500-crate>, [<item:contenttweaker:crate>, <tag:items:amc-value:250>, <tag:items:amc-value:250>]);
mods.extendedcrafting.TableCrafting.addShapeless("500-crate_100", 0, <item:contenttweaker:500-crate>, [<item:contenttweaker:crate>, <tag:items:amc-value:100>, <tag:items:amc-value:100>, <tag:items:amc-value:100>, <tag:items:amc-value:100>, <tag:items:amc-value:100>]);

mods.extendedcrafting.TableCrafting.addShapeless("500-crate_250", 0, <item:contenttweaker:500-crate>, [<item:contenttweaker:250-crate>, <item:contenttweaker:250-crate>]);
mods.extendedcrafting.TableCrafting.addShapeless("500-crate_100", 0, <item:contenttweaker:500-crate>, [<item:contenttweaker:100-bag>, <item:contenttweaker:100-bag>, <item:contenttweaker:100-bag>, <item:contenttweaker:100-bag>, <item:contenttweaker:100-bag>]);

craftingTable.addShapeless("500-crate_combine_250", <item:contenttweaker:500-crate>, [<item:contenttweaker:250-crate>, <item:contenttweaker:250-crate>]);
craftingTable.addShapeless("500-crate_combine_100", <item:contenttweaker:500-crate>, [<item:contenttweaker:100-bag>, <item:contenttweaker:100-bag>, <item:contenttweaker:100-bag>, <item:contenttweaker:100-bag>, <item:contenttweaker:100-bag>]);

craftingTable.addShapeless("500-crate_to_100", <item:contenttweaker:100-bag>*5, [<item:contenttweaker:500-crate>]);


// 1,000 AMC Crate
mods.extendedcrafting.TableCrafting.addShapeless("1k-crate_1000", 0, <item:contenttweaker:1k-crate>, [<item:contenttweaker:crate>, <tag:items:amc-value:1000>]);
mods.extendedcrafting.TableCrafting.addShapeless("1k-crate_900", 0, <item:contenttweaker:1k-crate>, [<item:contenttweaker:crate>, <tag:items:amc-value:900>, <tag:items:amc-value:100>]);
mods.extendedcrafting.TableCrafting.addShapeless("1k-crate_500", 0, <item:contenttweaker:1k-crate>, [<item:contenttweaker:crate>, <tag:items:amc-value:500>, <tag:items:amc-value:500>]);
mods.extendedcrafting.TableCrafting.addShapeless("1k-crate_250", 0, <item:contenttweaker:1k-crate>, [<item:contenttweaker:crate>, <tag:items:amc-value:250>, <tag:items:amc-value:250>, <tag:items:amc-value:250>, <tag:items:amc-value:250>]);
mods.extendedcrafting.TableCrafting.addShapeless("1k-crate_100", 0, <item:contenttweaker:1k-crate>, [<item:contenttweaker:crate>, <tag:items:amc-value:100>, <tag:items:amc-value:100>, <tag:items:amc-value:100>, <tag:items:amc-value:100>, <tag:items:amc-value:100>, <tag:items:amc-value:100>, <tag:items:amc-value:100>, <tag:items:amc-value:100>, <tag:items:amc-value:100>, <tag:items:amc-value:100>]);

craftingTable.addShapeless("1k-crate_combine_500", <item:contenttweaker:1k-crate>, [<item:contenttweaker:500-crate>, <item:contenttweaker:500-crate>]);
craftingTable.addShapeless("1k-crate_combine_250", <item:contenttweaker:1k-crate>, [<item:contenttweaker:250-crate>, <item:contenttweaker:250-crate>, <item:contenttweaker:250-crate>, <item:contenttweaker:250-crate>]);
craftingTable.addShapeless("1k-crate_combine_100", <item:contenttweaker:1k-crate>, [<item:contenttweaker:100-bag>, <item:contenttweaker:100-bag>, <item:contenttweaker:100-bag>, <item:contenttweaker:100-bag>, <item:contenttweaker:100-bag>, <item:contenttweaker:100-bag>, <item:contenttweaker:100-bag>, <item:contenttweaker:100-bag>, <item:contenttweaker:100-bag>, <item:contenttweaker:100-bag>]);


craftingTable.addShapeless("1k-crate_to_500", <item:contenttweaker:500-crate>*2, [<item:contenttweaker:1k-crate>]);


// 5,000 AMC Crate
mods.extendedcrafting.TableCrafting.addShapeless("5k-crate_5000", 0, <item:contenttweaker:5k-crate>, [<item:contenttweaker:crate>, <tag:items:amc-value:5000>]);
mods.extendedcrafting.TableCrafting.addShapeless("5k-crate_4000", 0, <item:contenttweaker:5k-crate>, [<item:contenttweaker:crate>, <tag:items:amc-value:4000>, <tag:items:amc-value:1000>]);
mods.extendedcrafting.TableCrafting.addShapeless("5k-crate_2500", 0, <item:contenttweaker:5k-crate>, [<item:contenttweaker:crate>, <tag:items:amc-value:2500>, <tag:items:amc-value:2500>]);
mods.extendedcrafting.TableCrafting.addShapeless("5k-crate_1000", 0, <item:contenttweaker:5k-crate>, [<item:contenttweaker:crate>, <tag:items:amc-value:1000>, <tag:items:amc-value:1000>, <tag:items:amc-value:1000>, <tag:items:amc-value:1000>, <tag:items:amc-value:1000>]);


craftingTable.addShapeless("5k-crate_combine_1k", <item:contenttweaker:5k-crate>, [<item:contenttweaker:1k-crate>, <item:contenttweaker:1k-crate>, <item:contenttweaker:1k-crate> ,<item:contenttweaker:1k-crate>, <item:contenttweaker:1k-crate>]);

craftingTable.addShapeless("5k-crate_to_1k", <item:contenttweaker:1k-crate>*5, [<item:contenttweaker:5k-crate>]);


// 10,000 AMC Crate
mods.extendedcrafting.TableCrafting.addShapeless("10k-crate_10000", 0, <item:contenttweaker:10k-crate>, [<item:contenttweaker:crate>, <tag:items:amc-value:10000>]);

mods.extendedcrafting.TableCrafting.addShapeless("10k-crate_9000", 0, <item:contenttweaker:10k-crate>, [<item:contenttweaker:crate>, <tag:items:amc-value:9000>, <tag:items:amc-value:1000>]);

mods.extendedcrafting.TableCrafting.addShapeless("10k-crate_8000", 0, <item:contenttweaker:10k-crate>, [<item:contenttweaker:crate>, <tag:items:amc-value:8000>, <tag:items:amc-value:1000>, <tag:items:amc-value:1000>]);

mods.extendedcrafting.TableCrafting.addShapeless("10k-crate_7000", 0, <item:contenttweaker:10k-crate>, [<item:contenttweaker:crate>, <tag:items:amc-value:7000>, <tag:items:amc-value:1000>, <tag:items:amc-value:1000>, <tag:items:amc-value:1000>]); // makes this use 3k if any items get that value

mods.extendedcrafting.TableCrafting.addShapeless("10k-crate_6000", 0, <item:contenttweaker:10k-crate>, [<item:contenttweaker:crate>, <tag:items:amc-value:6000>, <tag:items:amc-value:4000>]);

mods.extendedcrafting.TableCrafting.addShapeless("10k-crate_5000", 0, <item:contenttweaker:10k-crate>, [<item:contenttweaker:crate>, <tag:items:amc-value:5000>, <tag:items:amc-value:5000>]);


craftingTable.addShapeless("10k-crate_combine_5k", <item:contenttweaker:10k-crate>, [<item:contenttweaker:5k-crate>, <item:contenttweaker:5k-crate>]);

craftingTable.addShapeless("10k-crate_to_5k", <item:contenttweaker:5k-crate>*2, [<item:contenttweaker:10k-crate>]);

/*
# Compress everything into higher tiers
# Allows you to automate the process, and is cheaper
# RF cost is 1,000x AMC, and the rate is the same as the AMC of what's being crafted
mods.extendedcrafting.CompressionCrafting.addRecipe("10k-crate_from_5k-crate", <item:contenttweaker:5k-crate>, <item:contenttweaker:10k-crate>, 2, <item:contenttweaker:alchemical_compression_catalyst>, 10000000, 10000);

mods.extendedcrafting.CompressionCrafting.addRecipe("5k-crate_from_1k-crate", <item:contenttweaker:1k-crate>, <item:contenttweaker:5k-crate>, 5, <item:contenttweaker:alchemical_compression_catalyst>, 5000000, 5000);

mods.extendedcrafting.CompressionCrafting.addRecipe("1k-crate_from_500-crate", <item:contenttweaker:500-crate>, <item:contenttweaker:1k-crate>, 2, <item:contenttweaker:alchemical_compression_catalyst>, 1000000, 1000);

mods.extendedcrafting.CompressionCrafting.addRecipe("500-crate_from_250-crate", <item:contenttweaker:250-crate>, <item:contenttweaker:500-crate>, 2, <item:contenttweaker:alchemical_compression_catalyst>, 500000, 500);
mods.extendedcrafting.CompressionCrafting.addRecipe("500-crate_from_100-bag", <item:contenttweaker:100-bag>, <item:contenttweaker:500-crate>, 5, <item:contenttweaker:alchemical_compression_catalyst>, 500000, 500);

mods.extendedcrafting.CompressionCrafting.addRecipe("250-crate_from_50-bag", <item:contenttweaker:50-bag>, <item:contenttweaker:250-crate>, 5, <item:contenttweaker:alchemical_compression_catalyst>, 250000, 250);

mods.extendedcrafting.CompressionCrafting.addRecipe("50-bag_from_25-bag", <item:contenttweaker:25-bag>, <item:contenttweaker:50-bag>, 2, <item:contenttweaker:alchemical_compression_catalyst>, 50000, 50);
mods.extendedcrafting.CompressionCrafting.addRecipe("50-bag_from_2-bag", <item:contenttweaker:2-bag>, <item:contenttweaker:50-bag>, 25, <item:contenttweaker:alchemical_compression_catalyst>, 50000, 50);

mods.extendedcrafting.CompressionCrafting.addRecipe("25-bag_from_5-bag", <item:contenttweaker:5-bag>, <item:contenttweaker:25-bag>, 5, <item:contenttweaker:alchemical_compression_catalyst>, 25000, 25);
mods.extendedcrafting.CompressionCrafting.addRecipe("25-bag_from_1-bag", <item:contenttweaker:1-bag>, <item:contenttweaker:25-bag>, 25, <item:contenttweaker:alchemical_compression_catalyst>, 25000, 25);

mods.extendedcrafting.CompressionCrafting.addRecipe("5-bag_from_1-bag", <item:contenttweaker:1-bag>, <item:contenttweaker:5-bag>, 5, <item:contenttweaker:alchemical_compression_catalyst>, 5000, 5);
*/

print("alchemical_bags.zs loaded");