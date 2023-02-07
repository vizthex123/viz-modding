# Adds recycling recipes to the Pulverizer, Induction Smelter, Millstone, and Crushing Wheels from Thermal Expansion & Create

import crafttweaker.api.tag.MCTag;

print("machine_recycling.zs loading...");
/*
<recipetype:thermal:pulverizer>.addRecipe("recipeName", [<outputs> % chance], <item>, XP, RFCost);

<recipetype:create:crushing>.addRecipe("recipeName", [<outputs> % chance], <input>, time);

*time is in ticks

TE gives more secondary (10%), but Create has higher primary output (25 - 50%)
*/

# All recipes take 2k RF or 5 seconds
### Pulverizer Recycling

val amethyst = <item:minecraft:amethyst_shard>;
val clay = <item:minecraft:clay_ball>;
val cobblestone = <item:minecraft:cobblestone>;
val dye = <item:minecraft:black_dye>;
val ender = <item:ae2:ender_dust>;
val glowstone = <item:minecraft:glowstone_dust>;
val pearl = <item:thermal:ender_pearl_dust>;
val quartz = <item:malum:natural_quartz>;
val redstone = <item:minecraft:redstone>;
val sawdust = <item:thermal:sawdust>;


# Flower Pot
<recipetype:thermal:pulverizer>.addRecipe("pulverize_flower_pot", [clay, clay % 65], <item:minecraft:flower_pot>, 0, 2000);
<recipetype:create:crushing>.addRecipe("crush_flower_pot", [clay*2, clay % 40], <item:minecraft:flower_pot>, 100);

# Lever
<recipetype:thermal:pulverizer>.addRecipe("pulverize_lever", [cobblestone % 25, sawdust % 25], <item:minecraft:lever>, 0, 2000);
<recipetype:create:crushing>.addRecipe("crush_lever", [cobblestone % 35, sawdust % 15], <item:minecraft:lever>, 100);

# Furnaces
<recipetype:thermal:pulverizer>.addRecipe("pulverize_furnace", [cobblestone*2, cobblestone*4 % 50], <item:minecraft:furnace>, 0, 2000);
<recipetype:create:crushing>.addRecipe("crush_furnace", [cobblestone*4, cobblestone*3 % 40], <item:minecraft:furnace>, 100);

<recipetype:thermal:pulverizer>.addRecipe("pulverize_blackstone_furnace", [<item:minecraft:blackstone>*2, <item:minecraft:blackstone>*4 % 50], <item:quark:blackstone_furnace>, 0, 2000);
<recipetype:create:crushing>.addRecipe("crush_blackstone_furnace", [<item:minecraft:blackstone>*4, <item:minecraft:blackstone>*3 % 40], <item:quark:blackstone_furnace>, 100);

<recipetype:thermal:pulverizer>.addRecipe("pulverize_deepslate_furnace", [<item:minecraft:cobbled_deepslate>*2, <item:minecraft:cobbled_deepslate>*4 % 50], <item:quark:deepslate_furnace>, 0, 2000);
<recipetype:create:crushing>.addRecipe("crush_deepslate_furnace", [<item:minecraft:cobbled_deepslate>*4, <item:minecraft:cobbled_deepslate>*3 % 40], <item:quark:deepslate_furnace>, 100);

# Nautilus Shell
<recipetype:thermal:pulverizer>.addRecipe("pulverize_shell", [<item:minecraft:bone_meal>*4, <item:minecraft:bone_meal>*2 % 50], <item:minecraft:nautilus_shell>, 0, 2000);
<recipetype:create:crushing>.addRecipe("crush_shell", [<item:minecraft:bone_meal>*6, <item:minecraft:bone_meal>*2 % 40], <item:minecraft:nautilus_shell>, 100);

# Redstone Lamps
<recipetype:thermal:pulverizer>.addRecipe("pulverize_redstone_lamp", [redstone*2, redstone*2 % 80, glowstone*2 % 75, glowstone*2 % 50], <item:minecraft:redstone_lamp>, 0, 2000);
<recipetype:create:crushing>.addRecipe("crush_redstone_lamp", [redstone*3, redstone % 70, glowstone*2 % 65, glowstone*2 % 40], <item:minecraft:redstone_lamp>, 100);

# Droppers & Dispensers
<recipetype:thermal:pulverizer>.addRecipe("pulverize_dropspensers", [cobblestone*2, cobblestone % 60, redstone % 75], <item:minecraft:dispenser>|<item:minecraft:dropper>, 0, 2000);
<recipetype:create:crushing>.addRecipe("crush_dropspensers", [cobblestone*4, cobblestone % 50, redstone % 70], <item:minecraft:dispenser>|<item:minecraft:dropper>, 100);

# Observers
<recipetype:thermal:pulverizer>.addRecipe("pulverize_observer", [cobblestone*3, redstone, quartz % 75], <item:minecraft:observer>, 0, 2000);
<recipetype:create:crushing>.addRecipe("crush_observer", [cobblestone*4, cobblestone % 85, redstone, quartz % 70], <item:minecraft:observer>, 100);

# Repeaters
<recipetype:thermal:pulverizer>.addRecipe("pulverize_repeater", [cobblestone*2 % 50, redstone % 50], <item:minecraft:repeater>, 0, 2000);
<recipetype:create:crushing>.addRecipe("crush_repeater", [cobblestone*2 % 75, redstone % 40], <item:minecraft:repeater>, 100);

# Comparators
<recipetype:thermal:pulverizer>.addRecipe("pulverize_comparator", [cobblestone*2 % 50, redstone, redstone % 50, quartz % 35], <item:minecraft:comparator>, 0, 2000);
<recipetype:create:crushing>.addRecipe("crush_comparator", [cobblestone*2 % 75, redstone, redstone % 50, quartz % 25], <item:minecraft:comparator>, 100);


############################################################
# Smelter Recycling
/*
<recipetype:thermal:smelter>.addRecipe("recipeName", [<output> % chance], [<items>], XP, RFCost);
*/

# Boosted Scrap recipes
# Gives ingots & nuggets instead (but scrap if there is no nugget)
# XP amount is doubled
recipes.removeByName("thermal:machines/smelter/smelter_iron_tools");
recipes.removeByName("thermal:machines/smelter/smelter_gold_tools");

recipes.removeByName("thermal:machines/smelter/smelter_iron_armor");
recipes.removeByName("thermal:machines/smelter/smelter_gold_armor");

// Copper
<recipetype:thermal:smelter>.addRecipe("smelt_copper_item", [<item:minecraft:copper_ingot>, <item:thermal:copper_nugget>*4 % 50], [<tag:items:teoe:meltable_copper>.asIIngredient().anyDamage()], 0.1, 2000);

// Iron
<recipetype:thermal:smelter>.addRecipe("smelt_iron_item", [<item:minecraft:iron_ingot>, <item:minecraft:iron_nugget>*4 % 50], [<tag:items:teoe:meltable_iron>.asIIngredient().anyDamage()], 0.2, 2000);

	// Iron (big)
<recipetype:thermal:smelter>.addRecipe("smelt_big_iron_item", [<item:minecraft:iron_ingot>*2, <item:minecraft:iron_nugget>*6 % 50], [<tag:items:teoe:meltable_iron_big>.asIIngredient().anyDamage()], 0.4, 2000);

// Gold
<recipetype:thermal:smelter>.addRecipe("smelt_gold_item", [<item:minecraft:gold_ingot>, <item:minecraft:gold_nugget>*4 % 50], [<tag:items:teoe:meltable_gold>.asIIngredient().anyDamage()], 0.6, 2000);

// Diamond
<recipetype:thermal:smelter>.addRecipe("smelt_diamond_item", [<item:minecraft:diamond>, <item:kubejs:small_diamond_scrap> % 55], [<tag:items:teoe:meltable_diamond>.asIIngredient().anyDamage()], 1.0, 2000);

// Netherite
<recipetype:thermal:smelter>.addRecipe("smelt_netherite_item", [<item:minecraft:netherite_ingot>, <item:thermal:netherite_nugget>*4 % 50], [<tag:items:teoe:meltable_netherite>.asIIngredient().anyDamage()], 2.0, 2000);

// Platinum
<recipetype:thermal:smelter>.addRecipe("smelt_platinum_item", [<item:ob_core:platinum_ingot>, <item:ob_core:platinum_nugget>*4 % 50], [<tag:items:teoe:meltable_platinum>.asIIngredient().anyDamage()], 2.0, 2000);

// Ironwood
<recipetype:thermal:smelter>.addRecipe("smelt_ironwood_item", [<item:twilightforest:ironwood_ingot>, <item:kubejs:small_ironwood_scrap> % 55], [<tag:items:teoe:meltable_ironwood>.asIIngredient().anyDamage()], 3.0, 2000);

// Fiery
<recipetype:thermal:smelter>.addRecipe("smelt_fiery_item", [<item:twilightforest:fiery_ingot>, <item:kubejs:small_fiery_scrap> % 55], [<tag:items:teoe:meltable_fiery>.asIIngredient().anyDamage()], 4.0, 2000);

// Knightmetal
<recipetype:thermal:smelter>.addRecipe("smelt_knightmetal_item", [<item:twilightforest:knightmetal_ingot>, <item:kubejs:small_knightmetal_scrap> % 55], [<tag:items:teoe:meltable_knightmetal>.asIIngredient().anyDamage()], 6.0, 2000);

// Lumium
<recipetype:thermal:smelter>.addRecipe("smelt_lumium_item", [<item:thermal:lumium_ingot>, <item:thermal:lumium_nugget>*4 % 50], [<tag:items:teoe:meltable_lumium>.asIIngredient().anyDamage()], 4.0, 2000);

// Rose Gold
<recipetype:thermal:smelter>.addRecipe("smelt_rose_gold_item", [<item:minecraft:gold_ingot>, <item:minecraft:gold_nugget>*4 % 50, <item:minecraft:copper_ingot>, <item:thermal:copper_nugget>*4 % 50], [<tag:items:teoe:meltable_rose_gold>.asIIngredient().anyDamage()], 1.5, 2000);



# Obsidian Chests
<recipetype:thermal:smelter>.addRecipe("smelt_obsidian_chest", [<item:minecraft:obsidian>*2, <item:create:powdered_obsidian>*4 % 50], [<item:ironchest:obsidian_chest>|<item:ironchest:trapped_obsidian_chest>|<item:ironchest:diamond_to_obsidian_chest_upgrade>], 1.5, 2000);

# Fuel Canister
<recipetype:thermal:smelter>.addRecipe("smelt_canister", [<item:minecraft:iron_ingot>*4, <item:minecraft:iron_ingot>*3 % 50], [<item:fuel_canister:fuel_canister>.anyDamage()], 0, 2000);

# Buckets
<recipetype:thermal:smelter>.addRecipe("smelt_bucket", [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>*2 % 50], [<item:minecraft:bucket>], 0, 1000);

# Tripwire Hooks
<recipetype:thermal:smelter>.addRecipe("smelt_tripwire", [<item:minecraft:iron_nugget>*4, <item:minecraft:iron_nugget> % 50], [<item:minecraft:tripwire_hook>], 0, 1000);

# Iron Doors
<recipetype:thermal:smelter>.addRecipe("smelt_iron_door", [<item:minecraft:iron_ingot>*2], [<item:minecraft:iron_door>], 0, 2000);

# Bell
<recipetype:thermal:smelter>.addRecipe("smelt_bell", [<item:minecraft:gold_ingot>*2], [<item:minecraft:bell>], 20, 2000);

# Clock
<recipetype:thermal:smelter>.addRecipe("smelt_clock", [<item:minecraft:gold_ingot>*2, <item:minecraft:gold_nugget>*6 % 50], [<item:minecraft:clock>], 0, 2000);

# Compass
<recipetype:thermal:smelter>.addRecipe("smelt_compass", [<item:minecraft:iron_ingot>*2, <item:minecraft:iron_nugget>*6 % 50], [<item:minecraft:compass>], 0, 2000);

# Spyglass
<recipetype:thermal:smelter>.addRecipe("smelt_spyglass", [<item:minecraft:copper_ingot> % 50, amethyst], [<item:minecraft:spyglass>], 0, 2000);

# Flint & Steel
<recipetype:thermal:smelter>.addRecipe("smelt_fas", [<item:minecraft:iron_nugget>*6], [<item:minecraft:flint_and_steel>.anyDamage()], 0, 1000);
/*
# Gold Ring
<recipetype:thermal:smelter>.addRecipe("smelt_gold_ring", [<item:minecraft:gold_ingot>*2, <item:minecraft:gold_nugget>*6 % 75], [<item:additionaladditions:gold_ring>], 5, 2000);

# Iron Ring
<recipetype:thermal:smelter>.addRecipe("smelt_iron_ring", [<item:minecraft:iron_ingot>*2, <item:minecraft:iron_nugget>*2], [<item:enigmaticlegacy:iron_ring>], 0, 2000);
*/
# Exquisite Ring
<recipetype:thermal:smelter>.addRecipe("smelt_fancy_gold_ring", [<item:minecraft:gold_ingot>*2, <item:minecraft:gold_nugget>*2, <item:minecraft:iron_ingot>*2 % 50, <item:minecraft:iron_nugget>*2 % 50], [<item:enigmaticlegacy:gem_ring>], 0, 3000);

# Magnetic Ring
<recipetype:thermal:smelter>.addRecipe("smelt_magnet_ring", [<item:minecraft:gold_ingot> % 75, <item:minecraft:iron_ingot>*4, <item:minecraft:diamond> % 25, redstone % 70], [<item:enigmaticlegacy:magnet_ring>], 0, 4000);

# Tridents
<recipetype:thermal:smelter>.addRecipe("recycle_trident", [<item:minecraft:prismarine_shard>, <item:minecraft:prismarine_shard> % 50], [<item:minecraft:trident>.anyDamage()], 0, 2000);

# Extradimensional Eye
# Would be coinficiation if it wasn't craftable
<recipetype:thermal:smelter>.addRecipe("recycle_eye", [<item:minecraft:gold_ingot>, <item:minecraft:gold_nugget>, <item:minecraft:gold_nugget> % 50], [<item:enigmaticlegacy:extradimensional_eye>], 0, 2000);


# Recycle Spent Filters
<recipetype:thermal:smelter>.addRecipe("recycle_filters", [<item:deepresonance:filter_material> % 50], [<item:deepresonance:spent_filter_material>, <item:kubejs:quicklime>], 0, 6000);


/*
<recipetype:thermal:pulverizer>.addRecipe("recipeName", [<outputs> % chance], <item>, XP, RFCost);

<recipetype:create:crushing>.addRecipe("recipeName", [<outputs> % chance], <input>, time);

TE gives more secondary (10%), but Create has higher primary output (25 - 50%)
*/
################################################################################
### Trading Stations ###
# Shelves & Displays are in the sawdust script
# Create gives more primary output (listed below)
# 1 Scrap per Ingot
# 1 Sawdust per Plank
# 2 Dirty Shards per Glass
# Scrap & Shards are 100% chance, Sawdust is 75, all others are arbitrary (but usually 50)

val scrap = <item:kubejs:small_iron_scrap>;
val shard = <item:quark:dirty_shard>;
val spider_string = <item:minecraft:string>;

// Display Case
<recipetype:thermal:pulverizer>.addRecipe("pulverize_display_case", [shard*2, spider_string*2 % 60], <item:lightmanscurrency:display_case>, 0, 2000);
<recipetype:create:crushing>.addRecipe("crush_display_case", [shard*3, spider_string*2 % 50], <item:lightmanscurrency:display_case>, 100);

// Vending Machines
<recipetype:thermal:pulverizer>.addRecipe("pulverize_vending_machine", [scrap*4, shard*4, sawdust*16 % 75], <tag:items:lightmanscurrency:vending_machine>, 0, 2000);
<recipetype:thermal:pulverizer>.addRecipe("pulverize_large_vending_machine", [scrap*8, shard*8, sawdust*32 % 75], <tag:items:lightmanscurrency:large_vending_machine>, 0, 3000);

<recipetype:create:crushing>.addRecipe("crush_vending_machine", [scrap*6, shard*6, sawdust*16 % 85], <tag:items:lightmanscurrency:vending_machine>, 100);
<recipetype:create:crushing>.addRecipe("crush_large_vending_machine", [scrap*12, shard*12, sawdust*32 % 85], <tag:items:lightmanscurrency:large_vending_machine>, 7);

# Shelves & Cases are turned into Sawdust

// Freezer
<recipetype:thermal:pulverizer>.addRecipe("pulverize_freezer", [<item:minecraft:sand>*4 % 50, shard*4, sawdust*16 % 75], <item:lightmanscurrency:freezer>, 0, 2000);
<recipetype:create:crushing>.addRecipe("crush_freezer", [<item:minecraft:sand>*8 % 50, shard*6, sawdust*16 % 85], <item:lightmanscurrency:freezer>, 100);

# Speciality Traders
<recipetype:thermal:pulverizer>.addRecipe("pulverize_armour_display", [scrap*2, shard*10, sawdust % 75, sawdust % 50], <item:lightmanscurrency:armor_display>, 0, 2000);
<recipetype:create:crushing>.addRecipe("crush_armour_display", [scrap*3, shard*12, sawdust % 85, sawdust % 60], <item:lightmanscurrency:armor_display>, 100);

	# Tickets
		// Kiosk
<recipetype:thermal:pulverizer>.addRecipe("pulverize_ticket_kiosk", [scrap*5, dye % 60, redstone % 85], <item:lightmanscurrency:ticket_kiosk>, 0, 2000);
<recipetype:create:crushing>.addRecipe("crush_ticket_kiosk", [scrap*7, scrap % 50, dye % 50, redstone % 75], <item:lightmanscurrency:ticket_kiosk>, 100);

		// Station
<recipetype:thermal:pulverizer>.addRecipe("pulverize_ticket_machine", [scrap*4, dye % 60, redstone % 85, redstone % 60], <item:lightmanscurrency:ticket_machine>, 0, 2000);
<recipetype:create:crushing>.addRecipe("crush_ticket_machine", [scrap*6, dye % 50, redstone % 75, redstone % 50], <item:lightmanscurrency:ticket_machine>, 100);

		// Paygate
<recipetype:thermal:pulverizer>.addRecipe("pulverize_paygate", [scrap*6, redstone*5 % 60, sawdust % 75], <item:lightmanscurrency:paygate>, 0, 2000);
<recipetype:create:crushing>.addRecipe("crush_paygate", [scrap*8, redstone*5 % 50, sawdust % 85], <item:lightmanscurrency:paygate>, 100);

// ATM
<recipetype:thermal:pulverizer>.addRecipe("pulverize_atm", [scrap*6, shard % 50, redstone % 35], <item:lightmanscurrency:atm>, 0, 2000);
<recipetype:create:crushing>.addRecipe("crush_atm", [scrap*8, shard % 60, redstone % 25], <item:lightmanscurrency:atm>, 100);

// Cash Register
<recipetype:thermal:pulverizer>.addRecipe("pulverize_register", [scrap*6, pearl % 60, redstone % 35], <item:lightmanscurrency:cash_register>, 0, 2000);
<recipetype:create:crushing>.addRecipe("crush_register", [scrap*8, ender % 50, redstone % 25], <item:lightmanscurrency:cash_register>, 100);


# Network Trading
<recipetype:thermal:pulverizer>.addRecipe("pulverize_network_traders", [scrap*6, sawdust*8 % 85, sawdust*4 % 50, pearl % 60], <tag:items:lightmanscurrency:trader_network>, 0, 2000);
<recipetype:create:crushing>.addRecipe("crush_network_traders", [scrap*8, sawdust*8 % 75, sawdust*4 % 40, ender % 50], <tag:items:lightmanscurrency:trader_network>, 100);

<recipetype:thermal:pulverizer>.addRecipe("pulverize_network_interface", [scrap*6, sawdust*16 % 85], <item:lightmanscurrency:item_trader_interface>, 0, 2000);
<recipetype:create:crushing>.addRecipe("crush_network_interface", [scrap*8, sawdust*16 % 75], <item:lightmanscurrency:item_trader_interface>, 100);

<recipetype:thermal:pulverizer>.addRecipe("pulverize_trading_terminal", [cobblestone*2 % 40, scrap*2, shard*4, pearl % 60], <item:lightmanscurrency:terminal>, 0, 2000);
<recipetype:create:crushing>.addRecipe("crush_trading_terminal", [cobblestone*2 % 50, scrap*3, shard*6, ender % 50], <item:lightmanscurrency:terminal>, 100);

<recipetype:thermal:pulverizer>.addRecipe("pulverize_gem_terminal", [cobblestone % 25, amethyst*3, pearl % 60], <item:lightmanscurrency:gem_terminal>, 0, 2000);
<recipetype:create:crushing>.addRecipe("crush_gem_terminal", [cobblestone % 25, amethyst*4, amethyst % 50, ender % 50], <item:lightmanscurrency:gem_terminal>, 100);


############################################################
# Horse Armours

// Iron
<recipetype:thermal:smelter>.addRecipe("smelt_iron_horse_armour", [<item:minecraft:iron_ingot>*2, scrap*6 % 50], [<item:minecraft:iron_horse_armor>], 10, 2000);

// Gold
<recipetype:thermal:smelter>.addRecipe("smelt_gold_horse_armour", [<item:minecraft:gold_ingot>*2, <item:kubejs:gold_scrap>*6 % 50], [<item:minecraft:golden_horse_armor>], 20, 2000);

// Diamond
<recipetype:thermal:smelter>.addRecipe("smelt_diamond_horse_armour", [<item:minecraft:diamond>, <item:kubejs:diamond_scrap>*6 % 50], [<item:minecraft:diamond_horse_armor>], 30, 2000);

// Ametrine
<recipetype:thermal:smelter>.addRecipe("smelt_ametrine_horse_armour", [<item:byg:ametrine_gems>, <item:byg:ametrine_gems>*2 % 50], [<item:byg:ametrine_horse_armor>], 40, 6000);
<recipetype:create:crushing>.addRecipe("crush_ametrine_horse_armour", [<item:byg:ametrine_gems>*2, <item:byg:ametrine_gems>*3 % 10, <item:minecraft:leather>*2 % 50, spider_string*2 % 25], <item:byg:ametrine_horse_armor>, 15);

// Pendorite
<recipetype:thermal:smelter>.addRecipe("smelt_pendorite_horse_armour", [<item:byg:pendorite_ingot>, <item:byg:pendorite_ingot>*2 % 50], [<item:byg:pendorite_horse_armor>], 50, 8000);
<recipetype:create:crushing>.addRecipe("crush_pendorite_horse_armour", [<item:byg:pendorite_ingot>*2, <item:byg:pendorite_ingot>*3 % 10, <item:minecraft:leather>*2 % 50, spider_string*2 % 25], <item:byg:ametrine_horse_armor>, 15);

print("machine_recycling.zs loaded");