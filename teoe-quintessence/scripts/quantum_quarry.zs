# Changes recipes for Quantum Quarry's content

print("quantum_quarry.zs loading...");

// Earth Orb
craftingTable.remove(<item:quantumquarryplus:earth_orb>);
<recipetype:botania:runic_altar>.addRecipe("earth_orb", <item:quantumquarryplus:earth_orb>, 5000, [<item:minecraft:ender_eye>, <item:naturesaura:infused_iron>, <item:naturesaura:infused_iron>, <item:kubejs:glue>, <item:kubejs:glue>]);

# Upgrades
craftingTable.remove(<item:quantumquarryplus:upgrade_base>);
craftingTable.remove(<item:quantumquarryplus:filter_upgrade>);
craftingTable.remove(<item:quantumquarryplus:pump_upgrade>);

// Base
mods.extendedcrafting.EnderCrafting.addShaped("upgrade_base", <item:quantumquarryplus:upgrade_base>,
	[[<item:minecraft:air>, <item:extendedcrafting:ender_ingot>, <item:minecraft:air>],
	[<item:extendedcrafting:ender_ingot>, <item:quantumquarryplus:ender_obsidian>, <item:extendedcrafting:ender_ingot>],
	[<item:minecraft:air>, <item:extendedcrafting:ender_ingot>, <item:minecraft:air>]], 15);

mods.extendedcrafting.EnderCrafting.addShaped("enhanced_upgrade_base", <item:quantumquarryplus:upgrade_base>,
	[[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:extendedcrafting:enhanced_ender_ingot>, <item:quantumquarryplus:ender_obsidian>, <item:extendedcrafting:enhanced_ender_ingot>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]], 15);

// Filter
mods.extendedcrafting.CombinationCrafting.addRecipe("quantum_filter_upgrade", <item:quantumquarryplus:filter_upgrade>, 5000, [<item:quantumquarryplus:upgrade_base>, <item:essentials:hopper_filter>, <item:thermal:item_filter_augment>, <item:squarry:upgrade_filter>, <item:rftoolsbase:filter_module>], 50);

// Pump
mods.extendedcrafting.CombinationCrafting.addRecipe("quantum_pump_upgrade", <item:quantumquarryplus:pump_upgrade>, 5000, [<item:quantumquarryplus:upgrade_base>, <item:essentials:hopper_filter>, <item:thermal:item_filter_augment>, <item:squarry:upgrade_filter>, <item:rftoolsbase:filter_module>], 50);

mods.extendedcrafting.EnderCrafting.addShaped("pump_upgrade", <item:quantumquarryplus:pump_upgrade>,
	[[<item:minecraft:air>, <item:botania:pump>, <item:minecraft:air>],
	[<item:thermal:device_water_gen>, <item:quantumquarryplus:upgrade_base>, <item:create:mechanical_pump>],
	[<item:minecraft:air>, <item:rangedpumps:pump>, <item:minecraft:air>]], 30);

// Ender Obsidian
craftingTable.remove(<item:quantumquarryplus:ender_obsidian>);
mods.extendedcrafting.EnderCrafting.addShaped("ender_obsidian", <item:quantumquarryplus:ender_obsidian>*6,
	[[<item:minecraft:obsidian>, <item:minecraft:obsidian>, <item:minecraft:obsidian>],
	[<item:minecraft:ender_eye>, <item:minecraft:ender_eye>, <item:minecraft:ender_eye>],
	[<item:minecraft:obsidian>, <item:minecraft:obsidian>, <item:minecraft:obsidian>]], 60);

mods.extendedcrafting.EnderCrafting.addShaped("ender_obsidian_crying", <item:quantumquarryplus:ender_obsidian>*24,
	[[<item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>],
	[<item:minecraft:ender_eye>, <item:minecraft:ender_eye>, <item:minecraft:ender_eye>],
	[<item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>]], 30);	

// Quarry Frame
// Same as the default, but requires Basic Crafting
craftingTable.remove(<item:quantumquarryplus:quarry_framw>);
mods.extendedcrafting.EnderCrafting.addShaped("quarry_frame", <item:quantumquarryplus:quarry_framw>,
	[[<item:minecraft:end_rod>, <item:quantumquarryplus:ender_obsidian>, <item:minecraft:end_rod>],
	[<item:quantumquarryplus:ender_obsidian>, <item:minecraft:ender_chest>, <item:quantumquarryplus:ender_obsidian>],
	[<item:minecraft:end_rod>, <item:quantumquarryplus:ender_obsidian>, <item:minecraft:end_rod>]], 60);

// Endercell
craftingTable.remove(<item:quantumquarryplus:endercell>);
<recipetype:create:mechanical_crafting>.addRecipe("endercell", <item:quantumquarryplus:endercell>,
[[<tag:items:teoe:magic_dust>, <item:naturesaura:sky_ingot>, <tag:items:teoe:magic_dust>],
[<item:malum:hallowed_gold_ingot>, <item:quantumquarryplus:quarry_framw>, <item:malum:hallowed_gold_ingot>],
[<tag:items:teoe:magic_dust>, <item:extendedcrafting:redstone_ingot_block>, <tag:items:teoe:magic_dust>]]);

# Quantum Quarry
craftingTable.remove(<item:quantumquarryplus:quantum_quarry_plus>);
mods.extendedcrafting.TableCrafting.addShaped("quantum_quarry", 2, <item:quantumquarryplus:quantum_quarry_plus>,
	[[<item:botania:elementium_ingot>, <item:extendedcrafting:enhanced_ender_ingot>, <item:malum:soul_stained_steel_pickaxe>.anyDamage(), <item:extendedcrafting:enhanced_ender_ingot>, <item:botania:elementium_ingot>],
	[<item:thermal:enderium_ingot>, <item:quantumquarryplus:quarry_framw>, <item:quantumquarryplus:quarry_framw>, <item:quantumquarryplus:quarry_framw>, <item:thermal:enderium_ingot>],
	[<item:rftoolsbase:infused_enderpearl>, <item:quantumquarryplus:endercell>, <item:squarry:powered_quarry>, <item:quantumquarryplus:endercell>, <item:rftoolsbase:infused_enderpearl>],
	[<item:thermal:enderium_ingot>, <item:quantumquarryplus:quarry_framw>, <item:quantumquarryplus:quarry_framw>, <item:quantumquarryplus:quarry_framw>, <item:thermal:enderium_ingot>],
	[<item:botania:elementium_ingot>, <item:extendedcrafting:enhanced_ender_ingot>, <item:ae2:quantum_link>, <item:extendedcrafting:enhanced_ender_ingot>, <item:botania:elementium_ingot>]]);

print("quantum_quarry.zs loaded");