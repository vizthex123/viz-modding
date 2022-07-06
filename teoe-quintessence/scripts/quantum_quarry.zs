# Changes recipes for Quantum Quarry's content

print("quantum_quarry.zs loading...");

// Earth Orb
craftingTable.remove(<item:quantumquarryplus:earth_orb>);
mods.extendedcrafting.TableCrafting.addShaped("earth_orb", 1, <item:quantumquarryplus:earth_orb>,
	[[<item:kubejs:glue>, <item:naturesaura:infused_iron>, <item:kubejs:glue>],
	[<item:naturesaura:infused_iron>, <item:minecraft:ender_eye>, <item:naturesaura:infused_iron>],
	[<item:kubejs:glue>, <item:naturesaura:infused_iron>, <item:kubejs:glue>]]);

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
mods.extendedcrafting.EnderCrafting.addShaped("filter_upgrade", <item:quantumquarryplus:filter_upgrade>,
	[[<item:minecraft:air>, <item:rftoolsbase:filter_module>, <item:minecraft:air>],
	[<item:thermal:item_filter_augment>, <item:quantumquarryplus:upgrade_base>, <item:squarry:upgrade_filter>],
	[<item:minecraft:air>, <item:essentials:hopper_filter>, <item:minecraft:air>]], 30);

// Pump
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

mods.extendedcrafting.EnderCrafting.addShaped("ender_obsidian_crying", <item:quantumquarryplus:ender_obsidian>*18,
	[[<item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>],
	[<item:minecraft:ender_eye>, <item:minecraft:ender_eye>, <item:minecraft:ender_eye>],
	[<item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>]], 45);	

// Quarry Frame
// Same as the default, but requires Basic Crafting
craftingTable.remove(<item:quantumquarryplus:quarry_framw>);
mods.extendedcrafting.EnderCrafting.addShaped("quarry_frame", <item:quantumquarryplus:quarry_framw>,
	[[<item:minecraft:end_rod>, <item:quantumquarryplus:ender_obsidian>, <item:minecraft:end_rod>],
	[<item:quantumquarryplus:ender_obsidian>, <item:minecraft:ender_chest>, <item:quantumquarryplus:ender_obsidian>],
	[<item:minecraft:end_rod>, <item:quantumquarryplus:ender_obsidian>, <item:minecraft:end_rod>]], 60);

// Endercell
craftingTable.remove(<item:quantumquarryplus:endercell>);
mods.extendedcrafting.TableCrafting.addShaped("endercell", 1, <item:quantumquarryplus:endercell>,
	[[<item:enigmaticlegacy:astral_dust>|<item:ob_core:magic_dust>, <item:naturesaura:sky_ingot>, <item:enigmaticlegacy:astral_dust>|<item:ob_core:magic_dust>],
	[<item:malum:hallowed_gold_ingot>, <item:quantumquarryplus:quarry_framw>, <item:malum:hallowed_gold_ingot>],
	[<item:enigmaticlegacy:astral_dust>|<item:ob_core:magic_dust>, <item:extendedcrafting:redstone_ingot_block>, <item:enigmaticlegacy:astral_dust>|<item:ob_core:magic_dust>]]);

# Quantum Quarry
craftingTable.remove(<item:quantumquarryplus:quantum_quarry_plus>);
mods.extendedcrafting.TableCrafting.addShaped("quantum_quarry", 2, <item:quantumquarryplus:quantum_quarry_plus>,
	[[<item:botania:elementium_ingot>, <item:extendedcrafting:enhanced_ender_ingot>, <item:minecraft:netherite_pickaxe>, <item:extendedcrafting:enhanced_ender_ingot>, <item:botania:elementium_ingot>], 
	[<item:thermal:enderium_ingot>, <item:quantumquarryplus:quarry_framw>, <item:quantumquarryplus:quarry_framw>, <item:quantumquarryplus:quarry_framw>, <item:thermal:enderium_ingot>], 
	[<item:rftoolsbase:infused_enderpearl>, <item:quantumquarryplus:endercell>, <item:squarry:powered_quarry>, <item:quantumquarryplus:endercell>, <item:rftoolsbase:infused_enderpearl>], 
	[<item:thermal:enderium_ingot>, <item:quantumquarryplus:quarry_framw>, <item:quantumquarryplus:quarry_framw>, <item:quantumquarryplus:quarry_framw>, <item:thermal:enderium_ingot>], 
	[<item:botania:elementium_ingot>, <item:extendedcrafting:enhanced_ender_ingot>, <item:ae2:quantum_link>, <item:extendedcrafting:enhanced_ender_ingot>, <item:botania:elementium_ingot>]]);

print("quantum_quarry.zs loaded");