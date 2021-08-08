# Hides and/or removes items from JEI
/*
mods.jei.JEI.hide(<ITEM>);
mods.jei.JEI.hide(<LIQUID>);
mods.jei.JEI.removeAndHide(<ITEM>);

mods.jei.JEI.addDescription(<ITEM>,"DESCRIPTION");
mods.jei.JEI.addItem(<ITEM TO RE-ADD>);
*/

print("JEI.zs loading...");

// Item Info
mods.jei.JEI.addDescription(<appliedenergistics2:facade>.withTag({damage: 0, item: "minecraft:stone"}),"You can substitute the Stone for any non-tileEntity block");
mods.jei.JEI.addDescription(<appliedenergistics2:part:460>,"Can be converted into other P2P tunnels by right-clicking with the following item(s): Energy P2P - Fluxduct, Fluid P2P - Bucket/Fluiduct/etc., Item P2P - Hopper, Light P2P - Torch/Glowstone (block), Redstone P2P - Redstone dust/repeater/comparator. If you right-click on an ME P2P tunnel with a memory card bound to another type (e.g. an energy tunnel), it will auto-convert the P2P.");
mods.jei.JEI.addDescription(<refinedstorage:security_card>,"Not consumed when used to craft a Security Manager");
mods.jei.JEI.addDescription(<appliedenergistics2:part:301>,"Acts like Silk Touch when breaking a block");
mods.jei.JEI.addDescription(<thermalexpansion:morb>,"Can be used to catch entities, and process them in a Centrifugal Seperator with the Enstabulation Apparatus augment. Can be upgraded and made reusable with 3 Signalum Nuggets.");


// Hidden Items
// Mostly technical blocks, duplicates of items, and creative-only things
mods.jei.JEI.hide(<minecraft:command_block_minecart>);
mods.jei.JEI.hide(<minecraft:end_portal_frame>);
mods.jei.JEI.hide(<minecraft:knowledge_book>);
mods.jei.JEI.hide(<fuelcanister:fuel_canister>);
mods.jei.JEI.hide(<industrialforegoing:black_hole_controller>);
mods.jei.JEI.hide(<techguns:basicore>);
mods.jei.JEI.hide(<techguns:basicore:1>);
mods.jei.JEI.hide(<techguns:basicore:2>);
mods.jei.JEI.hide(<bigreactors:turbinecreativesteamgenerator>);
mods.jei.JEI.hide(<thermalexpansion:frame:129>);
mods.jei.JEI.hide(<thermalexpansion:frame:130>);
mods.jei.JEI.hide(<thermalexpansion:frame:131>);
mods.jei.JEI.hide(<thermalexpansion:frame:132>);
mods.jei.JEI.hide(<thermalexpansion:frame:146>);
mods.jei.JEI.hide(<thermalexpansion:frame:147>);
mods.jei.JEI.hide(<thermalexpansion:frame:148>);
mods.jei.JEI.hide(<thermalfoundation:material:22>);
mods.jei.JEI.hide(<thermalfoundation:material:23>);
mods.jei.JEI.hide(<betterslimes:null_item>);
mods.jei.JEI.hide(<compactmachines3:wall>);



// Removed & Hidden Items
// For items I want to disable, or for items that aren't used in anything
mods.jei.JEI.removeAndHide(<forestry:bronze_shovel>);
mods.jei.JEI.removeAndHide(<forestry:bronze_pickaxe>);
mods.jei.JEI.removeAndHide(<thermalfoundation:material:163>);
mods.jei.JEI.removeAndHide(<foundry:mold:5>);
mods.jei.JEI.removeAndHide(<foundry:mold:6>);
mods.jei.JEI.removeAndHide(<ironfurnaces:iron_furnace_active>);
mods.jei.JEI.removeAndHide(<ironfurnaces:gold_furnace_active>);
mods.jei.JEI.removeAndHide(<ironfurnaces:glass_furnace_idle>);
mods.jei.JEI.removeAndHide(<ironfurnaces:obsidian_furnace_idle>);
mods.jei.JEI.removeAndHide(<ironfurnaces:diamond_furnace_active>);
mods.jei.JEI.removeAndHide(<ironfurnaces:glass_furnace_active>);
mods.jei.JEI.removeAndHide(<ironfurnaces:obsidian_furnace_active>);
mods.jei.JEI.removeAndHide(<techguns:revolver>);
mods.jei.JEI.removeAndHide(<progressiveautomation:capacitor_wooden>);
mods.jei.JEI.removeAndHide(<progressiveautomation:capacitor_stone>);
mods.jei.JEI.removeAndHide(<progressiveautomation:capacitor_iron>);
mods.jei.JEI.removeAndHide(<progressiveautomation:capacitor_diamond>);
mods.jei.JEI.removeAndHide(<bigreactors:reactorpowertaptesla>);
mods.jei.JEI.removeAndHide(<bigreactors:turbinepowertaptesla>);
mods.jei.JEI.removeAndHide(<openblocks:scaffolding>);
mods.jei.JEI.removeAndHide(<energyconverters:energy_producer_rf>);
mods.jei.JEI.removeAndHide(<energyconverters:energy_consumer_rf>);
mods.jei.JEI.removeAndHide(<microblockcbe:stone_rod>);
mods.jei.JEI.removeAndHide(<mekanism:atomicdisassembler>);
mods.jei.JEI.removeAndHide(<extendedcrafting:material:3>);
mods.jei.JEI.removeAndHide(<foundry:component:21>);
mods.jei.JEI.removeAndHide(<multistorage:vault:5>);
mods.jei.JEI.removeAndHide(<ae2stuff:encoder>);
mods.jei.JEI.removeAndHide(<ae2stuff:inscriber>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:40>);
mods.jei.JEI.removeAndHide(<progressiveautomation:wither_wood>);
mods.jei.JEI.removeAndHide(<progressiveautomation:wither_stone>);
mods.jei.JEI.removeAndHide(<progressiveautomation:wither_iron>);
mods.jei.JEI.removeAndHide(<progressiveautomation:wither_gold>);
mods.jei.JEI.removeAndHide(<progressiveautomation:wither_diamond>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tome_lexicon>);
mods.jei.JEI.removeAndHide(<thermalexpansion:device:7>);
mods.jei.JEI.removeAndHide(<thermalfoundation:storage_resource>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:crafting_monitor>);
mods.jei.JEI.removeAndHide(<projectred-exploration:backpack:*>);

# Remove ore dictioary conversion items
mods.jei.JEI.removeAndHide(<industrialforegoing:fluiddictionary_converter>);
mods.jei.JEI.removeAndHide(<industrialforegoing:oredictionary_converter>);
mods.jei.JEI.removeAndHide(<mekanism:machineblock3:3>);
mods.jei.JEI.removeAndHide(<mekanism:dictionary>);

# Removed extra TE machines I don't want people to use
mods.jei.JEI.removeAndHide(<thermalexpansion:machine:12>);
mods.jei.JEI.removeAndHide(<thermalexpansion:machine:15>);


# Obliterate Refined Storage's content
mods.jei.JEI.removeAndHide(<refinedstorage:grid:1>);
mods.jei.JEI.removeAndHide(<refinedstorage:grid:2>);
mods.jei.JEI.removeAndHide(<refinedstorage:grid:3>);
mods.jei.JEI.removeAndHide(<refinedstorage:crafting_monitor>);
mods.jei.JEI.removeAndHide(<refinedstorage:wireless_crafting_monitor>);
mods.jei.JEI.removeAndHide(<refinedstorage:crafter>);
mods.jei.JEI.removeAndHide(<refinedstorage:disk_drive>);
mods.jei.JEI.removeAndHide(<refinedstorage:storage:2>);
mods.jei.JEI.removeAndHide(<refinedstorage:storage:3>);
mods.jei.JEI.removeAndHide(<refinedstorage:fluid_storage:*>);
mods.jei.JEI.removeAndHide(<refinedstorage:cable>);
mods.jei.JEI.removeAndHide(<refinedstorage:importer>);
mods.jei.JEI.removeAndHide(<refinedstorage:exporter>);
mods.jei.JEI.removeAndHide(<refinedstorage:external_storage>);
mods.jei.JEI.removeAndHide(<refinedstorage:constructor>);
mods.jei.JEI.removeAndHide(<refinedstorage:destructor>);
mods.jei.JEI.removeAndHide(<refinedstorage:reader>);
mods.jei.JEI.removeAndHide(<refinedstorage:writer>);
mods.jei.JEI.removeAndHide(<refinedstorage:detector>);
mods.jei.JEI.removeAndHide(<refinedstorage:relay>);
mods.jei.JEI.removeAndHide(<refinedstorage:fluid_interface>);
mods.jei.JEI.removeAndHide(<refinedstorage:disk_manipulator>);
mods.jei.JEI.removeAndHide(<refinedstorage:wireless_transmitter>);
mods.jei.JEI.removeAndHide(<refinedstorage:network_transmitter>);
mods.jei.JEI.removeAndHide(<refinedstorage:network_receiver>);
mods.jei.JEI.removeAndHide(<refinedstorage:crafter_manager>);
mods.jei.JEI.removeAndHide(<refinedstorage:storage_disk>);
mods.jei.JEI.removeAndHide(<refinedstorage:storage_disk:2>);
mods.jei.JEI.removeAndHide(<refinedstorage:storage_disk:3>);
mods.jei.JEI.removeAndHide(<refinedstorage:storage_disk:4>);
mods.jei.JEI.removeAndHide(<refinedstorage:fluid_storage_disk:*>);
mods.jei.JEI.removeAndHide(<refinedstorage:storage_part:2>);
mods.jei.JEI.removeAndHide(<refinedstorage:storage_part:3>);
mods.jei.JEI.removeAndHide(<refinedstorage:fluid_storage_part:*>);
mods.jei.JEI.removeAndHide(<refinedstorage:wireless_grid>);
mods.jei.JEI.removeAndHide(<refinedstorage:wireless_fluid_grid>);
mods.jei.JEI.removeAndHide(<refinedstorage:upgrade:*>);
mods.jei.JEI.removeAndHide(<refinedstorage:wrench>);
mods.jei.JEI.removeAndHide(<refinedstorage:storage_housing>);
mods.jei.JEI.removeAndHide(<refinedstorage:pattern>);

// Creative items
mods.jei.JEI.hide(<refinedstorage:wireless_grid:1>);
mods.jei.JEI.hide(<refinedstorage:wireless_fluid_grid:1>);
mods.jei.JEI.hide(<refinedstorage:wireless_crafting_monitor:1>);
mods.jei.JEI.hide(<refinedstorage:portable_grid:1>);
mods.jei.JEI.hide(<refinedstorage:controller:1>);



# Obliterate BuildCraft's unimplemented/useless parts
mods.jei.JEI.removeAndHide(<buildcraftcore:engine:2>);
mods.jei.JEI.removeAndHide(<buildcrafttransport:pipe_cobble_power>);
mods.jei.JEI.removeAndHide(<buildcrafttransport:pipe_stone_power>);
mods.jei.JEI.removeAndHide(<buildcrafttransport:pipe_quartz_power>);
mods.jei.JEI.removeAndHide(<buildcrafttransport:pipe_gold_power>);
mods.jei.JEI.removeAndHide(<buildcrafttransport:pipe_sandstone_power>);

mods.jei.JEI.removeAndHide(<buildcraftbuilders:filler_planner>);
mods.jei.JEI.removeAndHide(<buildcraftbuilders:filler>);
mods.jei.JEI.removeAndHide(<buildcraftbuilders:builder>);
mods.jei.JEI.removeAndHide(<buildcraftbuilders:architect>);
mods.jei.JEI.removeAndHide(<buildcraftbuilders:library>);
mods.jei.JEI.removeAndHide(<buildcraftbuilders:replacer>);
mods.jei.JEI.removeAndHide(<buildcraftbuilders:snapshot>);
mods.jei.JEI.removeAndHide(<buildcraftfactory:chute>);
mods.jei.JEI.removeAndHide(<buildcraftsilicon:integration_table>);
mods.jei.JEI.removeAndHide(<buildcraftfactory:distiller>);
mods.jei.JEI.removeAndHide(<buildcraftfactory:heat_exchange>);


// Hide various BC items (mostly technical/unimplemented ones)
mods.jei.JEI.hide(<buildcraftbuilders:frame>);
mods.jei.JEI.hide(<buildcraftcore:spring:*>);
mods.jei.JEI.hide(<buildcraftcore:decorated:*>);
mods.jei.JEI.hide(<buildcraftenergy:glob_of_oil>);
mods.jei.JEI.hide(<buildcraftfactory:gel>);
mods.jei.JEI.hide(<buildcraftrobotics:zone_planner>);
mods.jei.JEI.hide(<buildcraftlib:debugger>);
mods.jei.JEI.hide(<buildcraftbuilders:snapshot>);
mods.jei.JEI.hide(<buildcraftbuilders:schematic_single>);


// Balance
mods.jei.JEI.removeAndHide(<industrialforegoing:material_stonework_factory>);


print("JEI.zs loaded");