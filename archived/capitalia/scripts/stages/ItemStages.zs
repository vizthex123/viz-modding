# Adds Stages for various items & recipes
/*
mods.ItemStages.addItemStage("stage_name", <item>);
mods.ItemStages.addItemStage("stage_name", <OreDictID>);

mods.recipestages.Recipes.setRecipeStage("stage_name", <recipe-or-item_name>);

mods.ItemStages.stageModItems("stage_name", "ModID");

mods.ItemStages.setUnfamiliarName("Name", <item>);
*/

print("ItemStages.zs loading...");

// Bows
mods.ItemStages.addItemStage("bow", <minecraft:bow>);
mods.ItemStages.addItemStage("tipped", <minecraft:tipped_arrow>);
mods.ItemStages.addItemStage("spectral", <minecraft:spectral_arrow>);


// Hand Cannon
mods.ItemStages.addItemStage("stone_gun", <techguns:itemshared>);
mods.ItemStages.addItemStage("stone_gun", <techguns:itemshared:37>);
mods.ItemStages.addItemStage("stone_gun", <techguns:itemshared:42>);
mods.ItemStages.addItemStage("stone_gun", <techguns:handcannon:*>);


// Tiered Magnets
mods.ItemStages.addItemStage("stone_age", <tieredmagnets:magnet_durability_stone>);
mods.ItemStages.addItemStage("iron_age", <tieredmagnets:magnet_durability_iron>);
mods.ItemStages.addItemStage("iron_age", <tieredmagnets:magnet_durability_redstone>);
mods.ItemStages.addItemStage("industrial_age", <tieredmagnets:magnet_durability_gold>);
mods.ItemStages.addItemStage("industrial_age", <tieredmagnets:magnet_durability_obsidian>);
mods.ItemStages.addItemStage("industrial_age", <tieredmagnets:magnet_durability_lapis>);
mods.ItemStages.addItemStage("machine_age", <tieredmagnets:magnet_durability_diamond>);
mods.ItemStages.addItemStage("machine_age", <tieredmagnets:magnet_durability_emerald>);


mods.ItemStages.addItemStage("industrial_age", <tieredmagnets:magnet_magic_durability_stone>);
mods.ItemStages.addItemStage("industrial_age", <tieredmagnets:magnet_magic_durability_iron>);
mods.ItemStages.addItemStage("industrial_age", <tieredmagnets:magnet_magic_durability_redstone>);
mods.ItemStages.addItemStage("industrial_age", <tieredmagnets:magnet_magic_durability_gold>);
mods.ItemStages.addItemStage("industrial_age", <tieredmagnets:magnet_magic_durability_obsidian>);
mods.ItemStages.addItemStage("industrial_age", <tieredmagnets:magnet_magic_durability_lapis>);
mods.ItemStages.addItemStage("machine_age", <tieredmagnets:magnet_magic_durability_diamond>);
mods.ItemStages.addItemStage("machine_age", <tieredmagnets:magnet_magic_durability_emerald>);


// Wireless Power stuff
mods.ItemStages.addItemStage("wireless_power", <extrautils2:powerbattery>);
mods.ItemStages.addItemStage("wireless_power", <extrautils2:ingredients:13>);
mods.ItemStages.addItemStage("wireless_power", <extrautils2:powertransmitter>);


// Advanced Circuitry stuff
mods.ItemStages.removeItemStage(<advancedrocketry:ic:1>);
mods.ItemStages.removeItemStage(<advancedrocketry:ic:2>);
mods.ItemStages.removeItemStage(<advancedrocketry:ic:4>);
mods.ItemStages.removeItemStage(<advancedrocketry:ic:5>);
mods.ItemStages.removeItemStage(<advancedrocketry:itemcircuitplate:1>);


mods.ItemStages.addItemStage("advanced_circuitry", <mekanism:controlcircuit:1>);
mods.ItemStages.addItemStage("advanced_circuitry", <advancedrocketry:ic:1>);
mods.ItemStages.addItemStage("advanced_circuitry", <advancedrocketry:ic:2>);
mods.ItemStages.addItemStage("advanced_circuitry", <advancedrocketry:ic:4>);
mods.ItemStages.addItemStage("advanced_circuitry", <advancedrocketry:ic:5>);
mods.ItemStages.addItemStage("advanced_circuitry", <techguns:itemshared:66>);

mods.ItemStages.addItemStage("advanced_circuitry", <techguns:itemshared:63>);

mods.ItemStages.addItemStage("advanced_circuitry", <advancedrocketry:itemcircuitplate:1>);



#############################################################################
# 		Foundry's guns & their parts				           #
#############################################################################
# Revolver & parts
mods.ItemStages.addItemStage("revolver", <techguns:revolver>);
mods.ItemStages.addItemStage("revolver", <foundry:revolver>);
mods.ItemStages.addItemStage("revolver", <foundry:mold:16>);
mods.ItemStages.addItemStage("revolver", <foundry:mold:17>);
mods.ItemStages.addItemStage("revolver", <foundry:mold:18>);
mods.ItemStages.addItemStage("revolver", <foundry:mold:19>);
mods.ItemStages.addItemStage("revolver", <foundry:mold:20>);
mods.ItemStages.addItemStage("revolver", <foundry:mold:21>);
mods.ItemStages.addItemStage("revolver", <foundry:component:4>);
mods.ItemStages.addItemStage("revolver", <foundry:component:5>);

mods.ItemStages.addItemStage("revolver", <techguns:itemshared:1>);


# Golden Revolver
mods.ItemStages.addItemStage("golden_revolver", <techguns:goldenrevolver>);

	// Ammo & ammo parts
mods.ItemStages.addItemStage("revolver", <foundry:component:6>);
mods.ItemStages.addItemStage("revolver", <foundry:component:7>);
mods.ItemStages.addItemStage("revolver", <foundry:component:8>);
mods.ItemStages.addItemStage("revolver", <foundry:component:23>);

mods.ItemStages.addItemStage("revolver", <foundry:roundhollow>);
mods.ItemStages.addItemStage("revolver", <foundry:roundnormal>);


// Jacketed
mods.ItemStages.addItemStage("jacketed_ammo", <foundry:component:9>);
mods.ItemStages.addItemStage("jacketed_ammo", <foundry:roundjacketed>);

// Elemental
mods.ItemStages.addItemStage("elemental_ammo", <foundry:component:22>);
mods.ItemStages.addItemStage("elemental_ammo", <foundry:roundpoison>);
mods.ItemStages.addItemStage("elemental_ammo", <foundry:roundsnow>);
mods.ItemStages.addItemStage("elemental_ammo", <foundry:roundfire>);


// Armour-Piercing Ammo
// Needs Revolver and Shotgun research depending on which is what
mods.ItemStages.addItemStage("ap_ammo", <foundry:component:14>);
mods.ItemStages.addItemStage("ap_ammo", <foundry:roundap>);

mods.ItemStages.addItemStage("ap_ammo_2", <foundry:component:15>);
mods.ItemStages.addItemStage("ap_ammo_2", <foundry:shellap>);


// Lumium (advanced) ammo
// Needs Machine Age
mods.ItemStages.addItemStage("advanced_ammo", <foundry:component:19>);
mods.ItemStages.addItemStage("advanced_ammo", <foundry:roundlumium>);

mods.ItemStages.addItemStage("advanced_ammo_2", <foundry:component:20>);
mods.ItemStages.addItemStage("advanced_ammo_2", <foundry:shelllumium>);


# Shotgun & parts
mods.ItemStages.addItemStage("shotgun", <foundry:shotgun>);
mods.ItemStages.addItemStage("shotgun", <foundry:mold:22>);
mods.ItemStages.addItemStage("shotgun", <foundry:mold:23>);
mods.ItemStages.addItemStage("shotgun", <foundry:mold:24>);
mods.ItemStages.addItemStage("shotgun", <foundry:mold:25>);

mods.ItemStages.addItemStage("shotgun", <foundry:component:11>);
mods.ItemStages.addItemStage("shotgun", <foundry:component:12>);
mods.ItemStages.addItemStage("shotgun", <foundry:component:13>);
mods.ItemStages.addItemStage("shotgun", <foundry:shellnormal>);


	// Pistol
mods.ItemStages.addItemStage("pistol", <techguns:pistol>);
mods.ItemStages.addItemStage("pistol", <techguns:itemshared:11>);
mods.ItemStages.addItemStage("pistol", <techguns:itemshared:12>);


// Oil-Related Items
mods.ItemStages.removeItemStage(<thermalexpansion:machine:7>);
mods.ItemStages.removeItemStage(<thermalexpansion:augment:368>);

mods.ItemStages.addItemStage("oil", <thermalexpansion:machine:7>);
mods.ItemStages.addItemStage("oil", <thermalexpansion:augment:368>);
mods.ItemStages.addItemStage("oil", <industrialforegoing:fluid_pump>);
mods.ItemStages.addItemStage("oil", <buildcraftfactory:pump>);


// Lava-Related Items
// Biogas stays since it needs 2 fluids
mods.ItemStages.removeItemStage(<thermalexpansion:dynamo:1>);
mods.ItemStages.removeItemStage(<thermalexpansion:augment:352>);


mods.ItemStages.addItemStage("lava", <extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}));
mods.ItemStages.addItemStage("lava", <thermalexpansion:augment:352>);
mods.ItemStages.addItemStage("lava", <extrautils2:passivegenerator:2>);
mods.ItemStages.addItemStage("lava", <thermalexpansion:dynamo:1>);
mods.ItemStages.addItemStage("lava", <rangedpumps:pump>);

// Misc
mods.ItemStages.addItemStage("ae2", <contenttweaker:crystalcompound>);
mods.ItemStages.addItemStage("machine_age", <thermalfoundation:material:640>);
mods.ItemStages.addItemStage("machine_age", <thermalfoundation:material:656>);
mods.ItemStages.addItemStage("machine_age", <thermalfoundation:material:657>);


print("ItemStages.zs loaded");