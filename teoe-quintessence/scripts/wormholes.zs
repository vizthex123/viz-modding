# Changes recipes for content from the Wormhole (Portals) mod

import crafttweaker.api.tag.MCTag;

print("wormholes.zs loading...");

# Target Definition Devices
	// Basic
craftingTable.remove(<item:wormhole:target_device>);
mods.extendedcrafting.TableCrafting.addShaped("target_device", 1, <item:wormhole:target_device>,
	[[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:redstone>], 
	[<item:minecraft:copper_ingot>, <tag:items:forge:glass_panes>, <item:minecraft:copper_ingot>], 
	[<item:minecraft:copper_ingot>, <item:minecraft:compass>, <item:minecraft:copper_ingot>]]);

	// Advanced
craftingTable.remove(<item:wormhole:advanced_target_device>);
mods.extendedcrafting.TableCrafting.addShaped("advanced_target_device", 1, <item:wormhole:advanced_target_device>,
	[[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:glowstone_dust>], 
	[<item:thermal:electrum_ingot>, <item:wormhole:target_device>, <item:minecraft:gold_ingot>], 
	[<item:thermal:electrum_ingot>, <item:thermal:electrum_ingot>, <item:thermal:electrum_ingot>]]);

# Target Cells
	// Basic
craftingTable.remove(<item:wormhole:basic_target_cell>);
mods.extendedcrafting.TableCrafting.addShaped("basic_target_cell", 1, <item:wormhole:basic_target_cell>,
	[[<item:minecraft:copper_ingot>, <item:minecraft:lapis_lazuli>, <item:minecraft:copper_ingot>], 
	[<item:minecraft:lapis_lazuli>, <item:minecraft:air>, <item:minecraft:lapis_lazuli>], 
	[<item:minecraft:copper_ingot>, <item:minecraft:lapis_lazuli>, <item:minecraft:copper_ingot>]]);

	// Advanced
craftingTable.remove(<item:wormhole:advanced_target_cell>);
mods.extendedcrafting.TableCrafting.addShaped("advanced_target_cell", 1, <item:wormhole:advanced_target_cell>,
	[[<item:minecraft:iron_ingot>, <item:minecraft:glowstone_dust>, <item:minecraft:iron_ingot>], 
	[<item:minecraft:lapis_lazuli>, <item:minecraft:air>, <item:minecraft:lapis_lazuli>], 
	[<item:minecraft:iron_ingot>, <item:minecraft:glowstone_dust>, <item:minecraft:iron_ingot>]]);

	// Upgrade
mods.extendedcrafting.TableCrafting.addShaped("advanced_target_cell_upgrade", 1, <item:wormhole:advanced_target_cell>,
	[[<item:minecraft:copper_ingot>, <item:minecraft:air>, <item:minecraft:copper_ingot>], 
	[<item:minecraft:glowstone_dust>, <item:wormhole:basic_target_cell>, <item:minecraft:glowstone_dust>], 
	[<item:minecraft:copper_ingot>, <item:minecraft:air>, <item:minecraft:copper_ingot>]]);

# Energy Cells
	// Basic
craftingTable.remove(<item:wormhole:basic_energy_cell>);
mods.extendedcrafting.TableCrafting.addShaped("basic_energy_cell", 1, <item:wormhole:basic_energy_cell>,
	[[<item:thermal:electrum_ingot>, <item:minecraft:redstone>, <item:thermal:electrum_ingot>], 
	[<item:minecraft:redstone>, <item:minecraft:air>, <item:minecraft:redstone>], 
	[<item:thermal:electrum_ingot>, <item:minecraft:redstone>, <item:thermal:electrum_ingot>]]);
	
	// Advanced
craftingTable.remove(<item:wormhole:advanced_energy_cell>);
mods.extendedcrafting.TableCrafting.addShaped("advanced_energy_cell", 1, <item:wormhole:advanced_energy_cell>,
	[[<item:thermal:electrum_ingot>, <item:ae2:fluix_dust>, <item:thermal:electrum_ingot>], 
	[<item:ae2:fluix_dust>, <item:ob_core:platinum_ingot>, <item:ae2:fluix_dust>], 
	[<item:thermal:electrum_ingot>, <item:ae2:fluix_dust>, <item:thermal:electrum_ingot>]]);

// Portal Stabilizer
craftingTable.remove(<item:wormhole:portal_stabilizer>);
mods.extendedcrafting.TableCrafting.addShaped("portal_stabilizer", 1, <item:wormhole:portal_stabilizer>,
	[[<item:ob_core:platinum_ingot>, <item:minecraft:glowstone_dust>, <item:ob_core:platinum_ingot>], 
	[<item:ae2:fluix_dust>, <item:minecraft:redstone_block>, <item:ae2:fluix_dust>], 
	[<item:ob_core:platinum_ingot>, <item:minecraft:glowstone_dust>, <item:ob_core:platinum_ingot>]]);

// Portal Frames
craftingTable.remove(<item:wormhole:portal_frame>);
craftingTable.addShaped("portal_frame", <item:wormhole:portal_frame>*4,
    [[<item:minecraft:iron_ingot>, <tag:items:teoe:quartz_blocks>, <item:minecraft:iron_ingot>],
    [<tag:items:teoe:quartz_blocks>, <item:minecraft:air>, <tag:items:teoe:quartz_blocks>],
    [<item:minecraft:iron_ingot>, <tag:items:teoe:quartz_blocks>, <item:minecraft:iron_ingot>]]);

craftingTable.addShaped("portal_frame_obsidian", <item:wormhole:portal_frame>*8,
    [[<item:minecraft:iron_ingot>, <item:minecraft:obsidian>, <item:minecraft:iron_ingot>],
    [<item:minecraft:obsidian>, <item:minecraft:air>, <item:minecraft:obsidian>],
    [<item:minecraft:iron_ingot>, <item:minecraft:obsidian>, <item:minecraft:iron_ingot>]]);

mods.extendedcrafting.TableCrafting.addShaped("portal_frame_crying_obsidian", 1, <item:wormhole:portal_frame>*32,
    [[<item:minecraft:iron_ingot>, <item:minecraft:crying_obsidian>, <item:minecraft:iron_ingot>],
    [<item:minecraft:crying_obsidian>, <item:minecraft:air>, <item:minecraft:crying_obsidian>],
    [<item:minecraft:iron_ingot>, <item:minecraft:crying_obsidian>, <item:minecraft:iron_ingot>]]);

mods.extendedcrafting.TableCrafting.addShaped("portal_frame_dense_obsidian", 1, <item:wormhole:portal_frame>*64,
	[[<item:minecraft:iron_ingot>, <item:deepresonance:dense_obsidian>, <item:minecraft:iron_ingot>], 
	[<item:deepresonance:dense_obsidian>, <item:minecraft:air>, <item:deepresonance:dense_obsidian>], 
	[<item:minecraft:iron_ingot>, <item:deepresonance:dense_obsidian>, <item:minecraft:iron_ingot>]]);

print("wormholes.zs loaded");