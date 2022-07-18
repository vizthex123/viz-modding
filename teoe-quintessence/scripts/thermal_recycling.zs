# Adds recycling recipes to the Induciton Smelter from Thermal Expansion

import crafttweaker.api.tag.MCTag;

print("thermal_recycling.zs loading...");
/*
<recipetype:thermal:pulverizer>.addRecipe("recipeName", [<outputs> % chance], <item>, XP, RFCost);
<recipetype:create:crushing>.addRecipe("recipeName", [<outputs> % chance], <input>, time);

<recipetype:thermal:smelter>.addRecipe("recipeName", [<output> % chance], <item>, XP, RFCost);
*/

### Pulverizer Recycling ###
# Nautilus Shell
<recipetype:thermal:pulverizer>.addRecipe("pulverize_shell", [<item:minecraft:bone_meal>*4, <item:minecraft:bone_meal>*2 % 50], <item:minecraft:nautilus_shell>, 0, 4000);

<recipetype:create:crushing>.addRecipe("crush_shell", [<item:minecraft:bone_meal>*4, <item:minecraft:bone_meal>*2 % 50], <item:minecraft:nautilus_shell>, 5);

# Flower Pot
<recipetype:thermal:pulverizer>.addRecipe("pulverize_flower_pot", [<item:minecraft:clay_ball>, <item:minecraft:clay_ball> % 50], <item:minecraft:flower_pot>, 0, 4000);

<recipetype:create:crushing>.addRecipe("crush_flower_pot", [<item:minecraft:clay_ball>, <item:minecraft:clay_ball> % 50], <item:minecraft:flower_pot>, 5);

# Redstone Lamps
<recipetype:thermal:pulverizer>.addRecipe("pulverize_redstone_lamp", [<item:minecraft:redstone>*2, <item:minecraft:redstone>*2 % 85, <item:minecraft:glowstone_dust>*2 % 75, <item:minecraft:glowstone_dust>*2 % 50], <item:minecraft:redstone_lamp>, 0, 4000);

<recipetype:create:crushing>.addRecipe("crush_redstone_lamp", [<item:minecraft:redstone>*2, <item:minecraft:redstone>*2 % 85, <item:minecraft:glowstone_dust>*2 % 75, <item:minecraft:glowstone_dust>*2 % 50], <item:minecraft:redstone_lamp>, 5);

# Droppers & Dispensers
<recipetype:thermal:pulverizer>.addRecipe("pulverize_dispensers", [<item:minecraft:cobblestone>*3, <item:minecraft:cobblestone> % 50, <item:minecraft:redstone> % 75], <item:minecraft:dispenser>|<item:minecraft:dropper>, 0, 4000);

<recipetype:create:crushing>.addRecipe("crush_dispensers", [<item:minecraft:cobblestone>*3, <item:minecraft:cobblestone> % 50, <item:minecraft:redstone> % 75], <item:minecraft:dispenser>|<item:minecraft:dropper>, 5);

# Observers
<recipetype:thermal:pulverizer>.addRecipe("pulverize_observer", [<item:minecraft:cobblestone>*3, <item:minecraft:redstone>, <item:minecraft:quartz> % 75], <item:minecraft:observer>, 0, 4000);

<recipetype:create:crushing>.addRecipe("crush_observer", [<item:minecraft:cobblestone>*3, <item:minecraft:redstone>, <item:minecraft:quartz> % 75], <item:minecraft:observer>, 5);

# Repeaters
<recipetype:thermal:pulverizer>.addRecipe("pulverize_repeater", [<item:minecraft:cobblestone>*2, <item:minecraft:redstone>*2, <item:minecraft:redstone> % 50], <item:minecraft:repeater>, 0, 4000);

<recipetype:create:crushing>.addRecipe("crush_repeater", [<item:minecraft:cobblestone>*2, <item:minecraft:redstone>*2, <item:minecraft:redstone> % 50], <item:minecraft:repeater>, 5);

# Comparators
<recipetype:thermal:pulverizer>.addRecipe("pulverize_comparator", [<item:minecraft:cobblestone>*2, <item:minecraft:redstone>*2, <item:minecraft:redstone> % 50, <item:minecraft:quartz> % 25], <item:minecraft:comparator>, 0, 4000);

<recipetype:create:crushing>.addRecipe("crush_comparator", [<item:minecraft:cobblestone>*2, <item:minecraft:redstone>*2, <item:minecraft:redstone> % 50, <item:minecraft:quartz> % 25], <item:minecraft:comparator>, 5);

############################################################
# Horse Armours

// Iron
<recipetype:thermal:smelter>.addRecipe("smelt_iron_horse_armour", [<item:minecraft:iron_ingot>*3, <item:minecraft:iron_ingot>*3 % 50], [<item:minecraft:iron_horse_armor>], 10, 3000);

// Gold
<recipetype:thermal:smelter>.addRecipe("smelt_gold_horse_armour", [<item:minecraft:gold_ingot>*3, <item:minecraft:gold_ingot>*3 % 50], [<item:minecraft:golden_horse_armor>], 20, 3500);

// Diamond
<recipetype:thermal:smelter>.addRecipe("smelt_diamond_horse_armour", [<item:minecraft:diamond>*3, <item:minecraft:diamond>*3 % 50], [<item:minecraft:diamond_horse_armor>], 30, 4000);

// Ametrine
<recipetype:thermal:smelter>.addRecipe("smelt_ametrine_horse_armour", [<item:byg:ametrine_gems>*3, <item:byg:ametrine_gems>*3 % 50], [<item:byg:ametrine_horse_armor>], 30, 6000);

// Pendorite
<recipetype:thermal:smelter>.addRecipe("smelt_pendorite_horse_armour", [<item:byg:pendorite_ingot>*3, <item:byg:pendorite_ingot>*3 % 50], [<item:byg:pendorite_horse_armor>], 30, 8000);
############################################################
### Recycling Recipes ###
/*
<recipetype:thermal:smelter>.addRecipe("recipeName", [<output> % chance], [<items>], XP, RFCost);
*/

# Fuel Canister
<recipetype:thermal:smelter>.addRecipe("smelt_canister", [<item:minecraft:iron_ingot>*4, <item:minecraft:iron_ingot>*3 % 50], [<item:fuel_canister:fuel_canister>.anyDamage()], 0, 2000);

# Buckets
<recipetype:thermal:smelter>.addRecipe("smelt_bucket", [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>*2 % 50], [<item:minecraft:bucket>], 0, 1000);

# Tripwire Hooks
<recipetype:thermal:smelter>.addRecipe("smelt_tripwire", [<item:minecraft:iron_nugget>*4, <item:minecraft:iron_nugget> % 50], [<item:minecraft:tripwire_hook>], 0, 1000);

# Iron Doors
<recipetype:thermal:smelter>.addRecipe("smelt_iron_door", [<item:minecraft:iron_ingot>*2 % 100], [<item:minecraft:iron_door>], 0, 2000);

# Bell
<recipetype:thermal:smelter>.addRecipe("smelt_bell", [<item:minecraft:gold_ingot>*2 % 100], [<item:minecraft:bell>], 20, 2000);

# Clock
<recipetype:thermal:smelter>.addRecipe("smelt_clock", [<item:minecraft:gold_ingot>*2, <item:minecraft:gold_nugget>*6 % 50], [<item:minecraft:clock>], 0, 2000);

# Compass
<recipetype:thermal:smelter>.addRecipe("smelt_compass", [<item:minecraft:iron_ingot>*2, <item:minecraft:iron_nugget>*6 % 50], [<item:minecraft:compass>], 0, 2000);

# Spyglass
<recipetype:thermal:smelter>.addRecipe("smelt_spyglass", [<item:minecraft:copper_ingot> % 50, <item:minecraft:amethyst_shard> % 100], [<item:minecraft:spyglass>], 0, 2000);

# Flint & Steel
<recipetype:thermal:smelter>.addRecipe("smelt_fas", [<item:minecraft:iron_nugget>*6 % 100], [<item:minecraft:flint_and_steel>.anyDamage()], 0, 1000);

# Rose Gold Armour
<recipetype:thermal:smelter>.addRecipe("smelt_rose_helmet", [<item:minecraft:gold_ingot>*2, <item:minecraft:copper_ingot> % 50], [<item:additionaladditions:rose_gold_helmet>.anyDamage()], 0, 2000);
<recipetype:thermal:smelter>.addRecipe("smelt_rose_chestplate", [<item:minecraft:gold_ingot>*2, <item:minecraft:copper_ingot> % 50], [<item:additionaladditions:rose_gold_chestplate>.anyDamage()], 0, 2000);
<recipetype:thermal:smelter>.addRecipe("smelt_rose_leggings", [<item:minecraft:gold_ingot>*2, <item:minecraft:copper_ingot> % 50], [<item:additionaladditions:rose_gold_leggings>.anyDamage()], 0, 2000);
<recipetype:thermal:smelter>.addRecipe("smelt_rose_boots", [<item:minecraft:gold_ingot>, <item:minecraft:copper_ingot> % 50], [<item:additionaladditions:rose_gold_boots>.anyDamage()], 0, 2000);

# Chainmail Armour
<recipetype:thermal:smelter>.addRecipe("smelt_chain_helmet", [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot> % 50], [<item:minecraft:chainmail_helmet>.anyDamage()], 0, 2000);
<recipetype:thermal:smelter>.addRecipe("smelt_chain_chestplate", [<item:minecraft:iron_ingot>*2 % 100], [<item:minecraft:chainmail_chestplate>.anyDamage()], 0, 2000);
<recipetype:thermal:smelter>.addRecipe("smelt_chain_leggings", [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot> % 75], [<item:minecraft:chainmail_leggings>.anyDamage()], 0, 2000);
<recipetype:thermal:smelter>.addRecipe("smelt_chain_boots", [<item:minecraft:iron_ingot> % 100], [<item:minecraft:chainmail_boots>.anyDamage()], 0, 2000);

# Depth Meters
<recipetype:thermal:smelter>.addRecipe("smelt_depth_meter", [<item:minecraft:copper_ingot>*4 % 75, <item:thermal:copper_nugget>*7 % 65, <item:minecraft:redstone> % 50], [<item:additionaladditions:depth_meter>], 10, 2000);

# Gold Ring
<recipetype:thermal:smelter>.addRecipe("smelt_gold_ring", [<item:minecraft:gold_ingot>*2, <item:minecraft:gold_nugget>*6 % 75], [<item:additionaladditions:gold_ring>], 5, 2000);

# Iron Ring
<recipetype:thermal:smelter>.addRecipe("smelt_iron_ring", [<item:minecraft:iron_ingot>*2, <item:minecraft:iron_nugget>*2 % 100], [<item:enigmaticlegacy:iron_ring>], 0, 4000);

# Exquisite Ring
<recipetype:thermal:smelter>.addRecipe("smelt_fancy_gold_ring", [<item:minecraft:gold_ingot>*2, <item:minecraft:gold_nugget>*2, <item:minecraft:iron_ingot>*2 % 50, <item:minecraft:iron_nugget>*2 % 50], [<item:enigmaticlegacy:gem_ring>], 0, 6000);

# Magnetic Ring
<recipetype:thermal:smelter>.addRecipe("smelt_magnet_ring", [<item:minecraft:gold_ingot> % 75, <item:minecraft:iron_ingot>*4, <item:minecraft:diamond> % 25, <item:minecraft:redstone> % 70], [<item:enigmaticlegacy:magnet_ring>], 0, 8000);

# Tridents
<recipetype:thermal:smelter>.addRecipe("recycle_trident", [<item:minecraft:prismarine_shard>, <item:minecraft:prismarine_shard> % 50], [<item:minecraft:trident>.anyDamage()], 0, 4000);

# Extradimensional Eye
# Would be coinficiation if it wasn't craftable
<recipetype:thermal:smelter>.addRecipe("recycle_eye", [<item:minecraft:gold_nugget>*20, <item:minecraft:phantom_membrane> % 50, <item:minecraft:blaze_powder> % 75, <item:minecraft:ender_eye> % 85], [<item:enigmaticlegacy:extradimensional_eye>], 0, 4000);


# Recycle Spent Filters
<recipetype:thermal:smelter>.addRecipe("recycle_filters", [<item:deepresonance:filter_material> % 50], [<item:deepresonance:spent_filter_material>, <item:kubejs:lime>], 0, 8000);


### Trading Stations ###
# Shelves & Displays are in the sawmill script

// Display Case
<recipetype:thermal:pulverizer>.addRecipe("pulverize_display_case", [<item:quark:dirty_shard>*2, <item:quark:dirty_shard>*2 % 50, <item:minecraft:string>*4 % 50], <item:lightmanscurrency:display_case>, 0, 2000);

<recipetype:create:crushing>.addRecipe("crush_display_case", [<item:quark:dirty_shard>*2, <item:quark:dirty_shard>*2 % 75, <item:minecraft:string>*4 % 65], <item:lightmanscurrency:display_case>, 3);

// Vending Machines
<recipetype:thermal:pulverizer>.addRecipe("pulverize_vending_machine", [<item:minecraft:iron_ingot>*2, <item:minecraft:iron_ingot>*2 % 50, <item:quark:dirty_shard>*4 % 75, <item:quark:dirty_shard>*2 % 65], <tag:items:lightmanscurrency:vending_machine>, 0, 4000);
<recipetype:thermal:pulverizer>.addRecipe("pulverize_large_vending_machine", [<item:minecraft:iron_ingot>*4, <item:minecraft:iron_ingot>*4 % 50, <item:quark:dirty_shard>*6 % 75, <item:quark:dirty_shard>*4 % 65], <tag:items:lightmanscurrency:large_vending_machine>, 0, 6000);

<recipetype:create:crushing>.addRecipe("crush_vending_machine", [<item:minecraft:iron_ingot>*2, <item:minecraft:iron_ingot>*2 % 50, <item:quark:dirty_shard>*4 % 75, <item:quark:dirty_shard>*2 % 65], <tag:items:lightmanscurrency:vending_machine>, 5);
<recipetype:create:crushing>.addRecipe("crush_large_vending_machine", [<item:minecraft:iron_ingot>*4, <item:minecraft:iron_ingot>*4 % 50, <item:quark:dirty_shard>*6 % 75, <item:quark:dirty_shard>*4 % 65], <tag:items:lightmanscurrency:large_vending_machine>, 7);

# Shelves & Cases are sawmill'd

// Freezer
<recipetype:thermal:pulverizer>.addRecipe("pulverize_freezer", [<item:minecraft:black_concrete_powder>*2, <item:minecraft:black_concrete_powder>*2 % 50, <item:quark:dirty_shard>*4 % 75, <item:quark:dirty_shard>*2 % 75], <item:lightmanscurrency:freezer>, 0, 4000);
<recipetype:create:crushing>.addRecipe("crush_freezer", [<item:minecraft:black_concrete_powder>*2, <item:minecraft:black_concrete_powder>*2 % 50, <item:quark:dirty_shard>*4 % 75, <item:quark:dirty_shard>*2 % 75], <item:lightmanscurrency:freezer>, 5);

# Speciality Traders
<recipetype:thermal:smelter>.addRecipe("smelt_armour_display", [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot> % 85, <item:quark:clear_shard>*10, <item:quark:clear_shard>*5 % 75], [<item:lightmanscurrency:armor_display>], 0, 4000);

<recipetype:thermal:smelter>.addRecipe("smelt_ticket_kiosk", [<item:minecraft:iron_ingot>*3, <item:minecraft:black_dye> % 90, <item:minecraft:redstone>, <item:minecraft:redstone> % 80], [<item:lightmanscurrency:ticket_kiosk>], 0, 4000);

// Ticket Machine
<recipetype:thermal:smelter>.addRecipe("smelt_ticket_machine", [<item:minecraft:iron_ingot>*2, <item:minecraft:iron_ingot>*2 % 85, <item:minecraft:black_dye>*2 % 90, <item:minecraft:redstone>*3 % 75], [<item:lightmanscurrency:ticket_machine>], 0, 4000);

// Paygate
<recipetype:thermal:smelter>.addRecipe("smelt_paygate", [<item:minecraft:iron_ingot>*3, <item:minecraft:iron_ingot>*3 % 75, <item:minecraft:redstone>*7 % 75, <item:minecraft:redstone>*2 % 50], [<item:lightmanscurrency:paygate>], 0, 4000);

// ATM
<recipetype:thermal:smelter>.addRecipe("smelt_atm", [<item:minecraft:iron_ingot>*3, <item:minecraft:iron_ingot>*3 % 85, <item:minecraft:redstone> % 50, <item:quark:clear_shard>*2 % 65], [<item:lightmanscurrency:atm>], 0, 4000);

// Cash Register
<recipetype:thermal:smelter>.addRecipe("smelt_register", [<item:minecraft:iron_ingot>*3, <item:minecraft:iron_ingot>*3 % 85, <item:minecraft:ender_pearl> % 50, <item:minecraft:redstone> % 50], [<item:lightmanscurrency:cash_register>], 0, 4000);

# Network Trading
<recipetype:thermal:smelter>.addRecipe("smelt_network_traders", [<item:minecraft:iron_ingot>*3, <item:minecraft:iron_ingot>*3 % 85], [<item:lightmanscurrency:item_trader_server_sml>|<item:lightmanscurrency:item_trader_server_med>|<item:lightmanscurrency:item_trader_server_lrg>], 0, 4000);

<recipetype:thermal:smelter>.addRecipe("smelt_network_trader", [<item:minecraft:gold_ingot>*4, <item:minecraft:iron_ingot>*3 % 90, <item:minecraft:iron_ingot>*4 % 85], [<item:lightmanscurrency:item_trader_server_xlrg>], 0, 6000);

<recipetype:thermal:smelter>.addRecipe("smelt_network_interface", [<item:minecraft:iron_ingot>*4, <item:minecraft:iron_ingot>*4 % 90, <item:minecraft:iron_ingot>*3 % 85, <item:quark:clear_shard>*4 % 75], [<item:lightmanscurrency:item_trader_interface>], 0, 4000);

<recipetype:thermal:smelter>.addRecipe("smelt_network_terminal", [<item:minecraft:iron_ingot>*2, <item:quark:clear_shard>*4, <item:quark:clear_shard>*4 % 75], [<item:lightmanscurrency:terminal>], 0, 4000);


print("thermal_recycling.zs loaded");