# Hides and/or removes items from JEI
print("JEI.zs loading...");
/*
mods.jei.JEI.hide(<ITEM>);
mods.jei.JEI.hide(<LIQUID>);
mods.jei.JEI.removeAndHide(<ITEM>);

mods.jei.JEI.addDescription(<ITEM>,"DESCRIPTION");
mods.jei.JEI.addItem(<ITEM TO RE-ADD>);
*/

// Item Info
mods.jei.JEI.addDescription(<refinedstorage:cutting_tool>,"Combine with a block to make covers.");
mods.jei.JEI.addDescription(<ceramics:clay_barrel>,"Can be dyed. Check uses.");
mods.jei.JEI.addDescription(<ceramics:clay_barrel:1>,"Can be dyed. Check uses.");
mods.jei.JEI.addDescription(<minecraft:prismarine>,"Can be processed into Prismarine later on.");
mods.jei.JEI.addDescription(<minecraft:prismarine:1>,"Can be processed into Prismarine later on.");
mods.jei.JEI.addDescription(<minecraft:prismarine:2>,"Can be processed into Prismarine later on.");
mods.jei.JEI.addDescription(<coalprocessing:diamond_machine>,"Place a Compressed Carbon Block inside to make a diamond.");
mods.jei.JEI.addDescription(<minecraft:coal_ore>,"Can rarely drop Concentrated, Refined, Pure, or Crimson coal.");
mods.jei.JEI.addDescription(<densemetals:dense_coal_ore>,"Can drop Concentrated, Refined, Pure, or Crimson coal. Drops more often than regular Coal Ore.");
mods.jei.JEI.addDescription(<superores:super_coal>,"Can drop Concentrated, Refined, Pure, or Crimson coal. Drops more often than Dense Coal Ore.");
mods.jei.JEI.addDescription(<mystcraft:unlinkedbook>,"Crafted with 1 Link Panel Page and 1 Leather. Right-click to link to your current location. Use it to teleport back to the linked location. Only works once! (Unless you can place it on kind of book holding device?)");

mods.jei.JEI.addDescription(<mystcraft:agebook>,"Crafted with 1 Link Panel Page and 1 Leather. Right-click to link to your current location. Use it to teleport back to the linked location. Only works once! (Unless you can place it on kind of book holding device?)");

mods.jei.JEI.addDescription(<artisanworktables:design_pattern>,"Can be used to save recipes you craft a lot. If a design table is placed near other Artisan tables, you can use these on any of the tables.");

mods.jei.JEI.addDescription(<glacidus:merialces_hide>,"Occasionally drops from Merialces. They're known to inhabit rather cold places.");



// Remove Ceramics' items
mods.jei.JEI.removeAndHide(<ceramics:clay_bucket_block>);
mods.jei.JEI.removeAndHide(<ceramics:clay_helmet_raw>);
mods.jei.JEI.removeAndHide(<ceramics:clay_chestplate_raw>);
mods.jei.JEI.removeAndHide(<ceramics:clay_leggings_raw>);
mods.jei.JEI.removeAndHide(<ceramics:clay_boots_raw>);


// Removed & Hidden Items
// For items I want to disable, or for items that aren't used in anything
mods.jei.JEI.removeAndHide(<furnaceoverhaul:zenith_furnace>);
mods.jei.JEI.removeAndHide(<furnaceoverhaul:zenith_kit>);
mods.jei.JEI.removeAndHide(<openblocks:scaffolding>);
mods.jei.JEI.removeAndHide(<sct:stone_stick>);
mods.jei.JEI.removeAndHide(<xlfoodmod:glass_mug>);
mods.jei.JEI.removeAndHide(<xlfoodmod:beer>);
mods.jei.JEI.removeAndHide(<xlfoodmod:strawberry_pie>);
mods.jei.JEI.removeAndHide(<xlfoodmod:deadly_energy_drink>);
mods.jei.JEI.removeAndHide(<xlfoodmod:bucket_of_fried_chicken>);
mods.jei.JEI.removeAndHide(<simplyarrows:arrow_cake>);
mods.jei.JEI.removeAndHide(<multitools:paxel_wood>);
mods.jei.JEI.removeAndHide(<multitools:paxel_stone>);
mods.jei.JEI.removeAndHide(<multitools:universaltool_wood>);
mods.jei.JEI.removeAndHide(<multitools:universaltool_stone>);
mods.jei.JEI.removeAndHide(<simplyarrows:arrow_love>);


// Artisan's Tools
// The lower-tier wood/stone/etc. ones. At least for a few tool types.
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_pan_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_pan_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_cutters_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_hammer_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_knife_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_knife_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_spanner_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_spanner_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_pliers_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_pliers_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_solderer_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_solderer_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_chisel_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_file_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_beaker_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_beaker_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_beaker_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_beaker_flint>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_burner_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_burner_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_burner_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_burner_flint>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_solderer_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_solderer_flint>);


// Remove some Iron Chests content
mods.jei.JEI.removeAndHide(<ironchest:iron_chest:1>);
mods.jei.JEI.removeAndHide(<ironchest:iron_chest:2>);
mods.jei.JEI.removeAndHide(<ironchest:iron_chest:4>);
mods.jei.JEI.removeAndHide(<ironchest:iron_chest:5>);
mods.jei.JEI.removeAndHide(<ironchest:iron_chest:6>);
mods.jei.JEI.removeAndHide(<ironchest:diamond_obsidian_chest_upgrade>);
mods.jei.JEI.removeAndHide(<ironchest:iron_gold_chest_upgrade>);
mods.jei.JEI.removeAndHide(<ironchest:silver_gold_chest_upgrade>);
mods.jei.JEI.removeAndHide(<ironchest:gold_diamond_chest_upgrade>);
mods.jei.JEI.removeAndHide(<ironchest:diamond_crystal_chest_upgrade>);
mods.jei.JEI.removeAndHide(<ironchest:diamond_obsidian_chest_upgrade>);
mods.jei.JEI.removeAndHide(<ironchest:copper_silver_chest_upgrade>);
mods.jei.JEI.removeAndHide(<ironchest:silver_gold_chest_upgrade>);


// Hidden Items
// Mostly technical blocks, duplicates of items, and creative-only things
mods.jei.JEI.hide(<minecraft:command_block_minecart>);
mods.jei.JEI.hide(<minecraft:end_portal_frame>);
mods.jei.JEI.hide(<minecraft:knowledge_book>);
mods.jei.JEI.hide(<fuelcanister:fuel_canister>);
mods.jei.JEI.hide(<industrialforegoing:black_hole_controller>);
mods.jei.JEI.hide(<thermalexpansion:frame:129>);
mods.jei.JEI.hide(<thermalexpansion:frame:130>);
mods.jei.JEI.hide(<thermalexpansion:frame:131>);
mods.jei.JEI.hide(<thermalexpansion:frame:132>);
mods.jei.JEI.hide(<thermalexpansion:frame:146>);
mods.jei.JEI.hide(<thermalexpansion:frame:147>);
mods.jei.JEI.hide(<thermalexpansion:frame:148>);
mods.jei.JEI.hide(<thermalfoundation:material:22>);
mods.jei.JEI.hide(<thermalfoundation:material:23>);
mods.jei.JEI.hide(<tieredmagnets:magnet_magic_free>);
mods.jei.JEI.hide(<tieredmagnets:magnet_free>);
mods.jei.JEI.hide(<minecraft:wooden_pickaxe>);
mods.jei.JEI.hide(<minecraft:stone_pickaxe>);
mods.jei.JEI.hide(<openmodularturrets:addon_meta:5>);



print("JEI.zs loaded");