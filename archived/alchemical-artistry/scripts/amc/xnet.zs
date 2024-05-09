# Adds AMC & recipes to XNet's items because I am tired of spamming my other scripts
#priority 20

import crafttweaker.api.tag.MCTag;

print("xnet_amc.zs loading...");
/*
Tiers:
italicized dark gray: <1 (microscopic)
dark gray: 1 - 25 (minimal)
gray: 26 - 100 (average)
dark blue: 101 - 250 (above average)
dark aqua: 251 - 500 (high)
aqua: 501 - 1,000 (very high)
green: 1,001 - 4,999 (extreme)

purple: 5,000+ (insane)

<tag:items:amc-value:0>.add(<item:>);
*/

<tag:items:amc-value:663>.add(<item:xnet:controller>); // So close!
<tag:items:amc-value:6.5>.add(<item:xnet:facade>); // Should be 6.5625
<tag:items:amc-value:1013>.add(<item:xnet:router>);
<tag:items:amc-value:2388>.add(<item:xnet:wireless_router>);
<tag:items:amc-value:112.5>.add(<item:xnet:antenna>);
<tag:items:amc-value:325>.add(<item:xnet:antenna_base>);
<tag:items:amc-value:1025>.add(<item:xnet:antenna_dish>);
<tag:items:amc-value:405>.add(<item:xnet:redstone_proxy>);
<tag:items:amc-value:440>.add(<item:xnet:redstone_proxy_upd>);
<tag:items:amc-value:1545>.add(<item:xnet:connector_upgrade>);
<tag:items:amc-value:8>.add(<item:xnet:netcable_red>); // Coloured cables should be 8.3471875
<tag:items:amc-value:8>.add(<item:xnet:netcable_green>);
<tag:items:amc-value:8>.add(<item:xnet:netcable_blue>);
<tag:items:amc-value:8>.add(<item:xnet:netcable_yellow>);
<tag:items:amc-value:4>.add(<item:xnet:netcable_routing>); // Should be 4.26734375
<tag:items:amc-value:645>.add(<item:xnet:connector_red>); // Connectors should be 645.6666666666667
<tag:items:amc-value:645>.add(<item:xnet:connector_green>);
<tag:items:amc-value:645>.add(<item:xnet:connector_blue>);
<tag:items:amc-value:645>.add(<item:xnet:connector_yellow>);
<tag:items:amc-value:865>.add(<item:xnet:connector_routing>); // Should be 866.7766666666667

<tag:items:amc-value:2180>.add(<item:xnet:advanced_connector_red>); // Advanced Connectors should be 2,180.666666666667
<tag:items:amc-value:2180>.add(<item:xnet:advanced_connector_green>);
<tag:items:amc-value:2180>.add(<item:xnet:advanced_connector_blue>);
<tag:items:amc-value:2180>.add(<item:xnet:advanced_connector_yellow>);
<tag:items:amc-value:2400>.add(<item:xnet:advanced_connector_routing>); // Should be 2,401.776666666667


# AMC Recipes
# Uses bags & compression catalyst
# Time taken is equal to the AMC value used in the recipe
# <250 AMC needs 1 catalyst (max of 3s or 1k RF)
# 250 - 500 AMC needs 1 catalyst (max of 5s or 2k RF)
// 400's is 3k RF
# 500+ AMC (10s or 4k RF)
# 1,000+ AMC needs 2 catalysts (15s or 6k RF)
# 2,500+ AMC needs 3 catalysts (30s or 8k RF)
# 5,000+ AMC needs 5 catalysts (45s or 12k RF)
# 10,000+ AMC needs 2 advanced catalysts (60s or 16k RF)
# 15,000+ AMC needs 1 advanced & 1 very advanced catalyst (75s or 20k RF)
# 25.,000+ AMC needs 2 very advanced catalysts (90s or 24k RF)
# Crystal Values:
# Submicroscopic: 0.001
# Microscopic: 0.005
# Miniscule: 0.25
# Tiny: 1
# Small: 2
# Large: 5
/*
mods.extendedcrafting.EnderCrafting.addShapeless("name", <output>, [<9-inputs>], seconds);

<recipetype:thermal:smelter>.addRecipe("name", [<4-outputs>], [<3-inputs>], 0, rf);

RF cost is 100x (total) AMC value
*/

// Facade [6.5]
<recipetype:thermal:smelter>.addRecipe("crystallize_facade", [<item:contenttweaker:amc_crystal_large> % 100, <item:contenttweaker:amc_crystal_tiny> % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<tag:items:amc-value:6.5>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 500);

// Antenna [112.5]
<recipetype:thermal:smelter>.addRecipe("crystalpress_antenna", [<item:contenttweaker:100-bag> % 100, <item:contenttweaker:10-bag> % 100, <item:contenttweaker:2-bag> % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<tag:items:amc-value:112.5>, <item:contenttweaker:alchemical_crystalpress_catalyst>], 0, 1000);

// Antenna Base [325]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_antenna", <item:contenttweaker:25-bag>*13, [<tag:items:amc-value:325>, <item:contenttweaker:alchemical_compression_catalyst>], 5);

// Redstone Proxy [440]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_440-amc", <item:contenttweaker:10-bag>*44, [<tag:items:amc-value:440>, <item:contenttweaker:alchemical_compression_catalyst>], 5);

// Connectors [645]
<recipetype:thermal:smelter>.addRecipe("compress_connectors", [<item:contenttweaker:100-bag>*4 % 100, <item:contenttweaker:10-bag>*4 % 100, <item:contenttweaker:5-bag> % 100], [<tag:items:amc-value:645>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 4000);

// Controller [663]
<recipetype:thermal:smelter>.addRecipe("compress_663-amc", [<item:contenttweaker:500-crate> % 100, <item:contenttweaker:100-bag> % 100, <item:contenttweaker:10-bag>*6 % 100, <item:contenttweaker:1-bag>*3 % 100], [<tag:items:amc-value:663>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 4000);

// Routing Connector [865]
<recipetype:thermal:smelter>.addRecipe("compress_routing_connector", [<item:contenttweaker:500-crate> % 100,<item:contenttweaker:100-bag>*3 % 100, <item:contenttweaker:25-bag>*2 % 100, <item:contenttweaker:5-bag>*3 % 100], [<tag:items:amc-value:865>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 4000);

// Router [1,013]
<recipetype:thermal:smelter>.addRecipe("compress_router", [<item:contenttweaker:1k-crate> % 100, <item:contenttweaker:10-bag> % 100, <item:contenttweaker:1-bag>*3 % 100], [<tag:items:amc-value:1013>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 6000);

// Antenna Dish [1,025]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_1025-amc", <item:contenttweaker:25-bag>*41, [<tag:items:amc-value:1025>, <item:contenttweaker:alchemical_compression_catalyst>], 15);

// Connector Upgrade [1,545]
<recipetype:thermal:smelter>.addRecipe("compress_connector_upgrade", [<item:contenttweaker:1k-crate> % 100, <item:contenttweaker:500-crate> % 100, <item:contenttweaker:10-bag>*4 % 100, <item:contenttweaker:5-bag> % 100], [<tag:items:amc-value:1545>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 6000);

// Advanced Connectors [2,180]
<recipetype:thermal:smelter>.addRecipe("compress_advanced_connectors", [<item:contenttweaker:1k-crate>*2 % 100, <item:contenttweaker:100-bag> % 100, <item:contenttweaker:50-bag> % 100, <item:contenttweaker:10-bag>*3 % 100], [<tag:items:amc-value:2180>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 6000);

// Wireless Router [2,388]
<recipetype:thermal:smelter>.addRecipe("compress_wireless_router", [<item:contenttweaker:1k-crate>*2 % 100, <item:contenttweaker:100-bag>*3 % 100, <item:contenttweaker:10-bag>*8 % 100, <item:contenttweaker:1-bag>*8 % 100], [<tag:items:amc-value:2388>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 6000);

// Advanced Routing Connector [2,400]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_advanced_routing_connector", <item:contenttweaker:100-bag>*24, [<tag:items:amc-value:2400>, <item:contenttweaker:alchemical_compression_catalyst>], 15);

print("xnet_amc.zs loaded");