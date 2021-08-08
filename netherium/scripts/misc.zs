import crafttweaker.api.item.IItemStack;

// Change the stacksize of XP Bioreactors
<item:xpbioreactor:xp_bioreactor>.setMaxStackSize(1);

# I *despise* how they overhauled this mod. Gotta re-learn the scripting now >:{
# Changes miscellanous things
print("misc.zs loading...");
/*
furnace.addRecipe("recipeName", <output>, <input>, xp, cooktime-10s default);

craftingTable.addShapeless("recipeName", <output>, [<inputs>]);

craftingTable.addShaped("recipeName", <output>, 
    [[<input>, <input>, <input>],
    [<input>, <input>, <input>],
    [<input>, <input>, <input>]]);

craftingTable.removeByName("recipeName");

do item:minecraft:air for empty spaces
*/

// Turn Plant Fibers into String
craftingTable.addShaped("fiber_to_string", <item:minecraft:string>, 
    [[<item:extcaves:plant_fiber>, <item:extcaves:plant_fiber>, <item:extcaves:plant_fiber>],
    [<item:extcaves:plant_fiber>, <item:extcaves:plant_fiber>, <item:extcaves:plant_fiber>],
    [<item:extcaves:plant_fiber>, <item:extcaves:plant_fiber>, <item:extcaves:plant_fiber>]]);

// Turn Plant Fibers into Paper
craftingTable.addShaped("fiber_to_paper", <item:minecraft:paper>, 
    [[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:extcaves:plant_fiber>, <item:extcaves:plant_fiber>, <item:extcaves:plant_fiber>],
    [<item:extcaves:plant_fiber>, <item:extcaves:plant_fiber>, <item:extcaves:plant_fiber>]]);

// Convert Nether furnaces to Overworld ones
craftingTable.addShapeless("nether_to_blast", <item:minecraft:blast_furnace>, [<item:netherrocks:nether_blast_furnace>, <item:minecraft:iron_ingot>]);
craftingTable.addShapeless("nether_to_smoker", <item:minecraft:smoker>, [<item:netherrocks:nether_smoker>, <tag:items:minecraft:logs>]);
craftingTable.addShapeless("nether_to_furnace", <item:minecraft:furnace>, [<item:netherrocks:nether_furnace>, <tag:items:forge:cobblestone>]);

// Empty guage of its fluid
craftingTable.addShapeless("empty_gauge", <item:tconstruct:scorched_fuel_gauge>, [<item:tconstruct:scorched_fuel_gauge>]);

// Make Anvils out of Lead
craftingTable.addShaped("lead_anvil", <item:minecraft:anvil>, 
    [[<tag:items:forge:storage_blocks/lead>, <tag:items:forge:storage_blocks/lead>, <tag:items:forge:storage_blocks/lead>],
    [<item:minecraft:air>, <tag:items:forge:ingots/lead>, <item:minecraft:air>],
    [<tag:items:forge:ingots/lead>, <tag:items:forge:ingots/lead>, <tag:items:forge:ingots/lead>]]);

// New Ring of Attraction recipe
craftingTable.removeByName("ring_of_attraction:ring_of_attraction");
craftingTable.addShaped("magnet_ring", <item:ring_of_attraction:ring_of_attraction>, 
    [[<item:minecraft:lapis_lazuli>, <item:minecraft:air>, <item:minecraft:redstone>],
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>],
    [<item:minecraft:iron_nugget>, <item:minecraft:air>, <item:minecraft:iron_nugget>]]);

// New Magnet Upgrade recipe
craftingTable.removeByName("sophisticatedbackpacks:magnet_upgrade");
craftingTable.addShaped("magnet_upgrade", <item:sophisticatedbackpacks:magnet_upgrade>, 
    [[<item:create:iron_sheet>, <item:minecraft:iron_ingot>, <item:create:iron_sheet>],
    [<item:minecraft:iron_ingot>, <item:sophisticatedbackpacks:pickup_upgrade>, <item:minecraft:iron_ingot>],
    [<item:minecraft:redstone>, <item:ring_of_attraction:ring_of_attraction>, <item:minecraft:redstone>]]);

# New Smelting Upgrade recipes
craftingTable.removeByName("sophisticatedbackpacks:smelting_upgrade");
craftingTable.removeByName("sophisticatedbackpacks:auto_smelting_upgrade");

	// Basic
craftingTable.addShaped("smelting_upgrade", <item:sophisticatedbackpacks:smelting_upgrade>, 
    [[<item:netherrocks:fyrite_nugget>, <item:minecraft:iron_ingot>, <item:netherrocks:fyrite_nugget>],
    [<item:minecraft:iron_ingot>, <item:sophisticatedbackpacks:upgrade_base>, <item:minecraft:iron_ingot>],
    [<item:netherrocks:fyrite_nugget>, <tag:items:minecraft:furnace>, <item:netherrocks:fyrite_nugget>]]);

	// Advanced (Auto-Smelting)
craftingTable.addShaped("auto_smelting_upgrade", <item:sophisticatedbackpacks:auto_smelting_upgrade>, 
    [[<item:netherrocks:fyrite_ingot>, <tag:items:forge:plates/gold>, <item:netherrocks:fyrite_ingot>],
    [<item:netherrocks:nether_blast_furnace>, <item:sophisticatedbackpacks:smelting_upgrade>, <item:netherrocks:nether_furnace>],
    [<item:netherrocks:fyrite_ingot>, <item:minecraft:coal_block>|<item:charcoalblock:charcoal_block>, <item:netherrocks:fyrite_ingot>]]);

// New Uncured Coin Press recipe
craftingTable.removeByName("xpcoins:uncured_coin_press");
craftingTable.addShaped("uncured_coin_press", <item:xpcoins:uncured_coin_press>, 
    [[<item:minecraft:nether_brick>, <item:minecraft:quartz>, <item:minecraft:nether_brick>],
    [<item:minecraft:quartz>, <item:minecraft:emerald>|<item:minecraft:diamond>|<item:netherrocks:ashstone_gem>|<item:netherrocks:dragonstone_gem>, <item:minecraft:quartz>],
    [<item:minecraft:nether_brick>, <item:minecraft:quartz>, <item:minecraft:nether_brick>]]);

// New Chemical Tank recipe
craftingTable.removeByName("xpbioreactor:chemical_tank_recipe");
craftingTable.addShaped("chemical_tank", <item:xpbioreactor:chemical_tank>, 
    [[<tag:items:forge:glass>, <item:minecraft:grindstone>|<item:create:hand_crank>, <tag:items:forge:glass>],
    [<tag:items:forge:glass>, <item:minecraft:blaze_powder>, <tag:items:forge:glass>],
    [<tag:items:forge:glass>, <tag:items:forge:tank>, <tag:items:forge:glass>]]);

// Make 16 Sticks at once
craftingTable.addShaped("logs_to_sticks", <item:minecraft:stick>*16, 
    [[<tag:items:minecraft:logs>, <item:minecraft:air>],
    [<tag:items:minecraft:logs>, <item:minecraft:air>]]);

// Make 4 chests at once
craftingTable.addShaped("chest_logs", <item:minecraft:chest>*4, 
    [[<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <item:minecraft:air>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]]);

// Convert Bones into Wood
craftingTable.addShapeless("bones_to_wood", <item:minecraft:warped_stem>*3, [<item:minecraft:bone>, <item:minecraft:bone>, <item:minecraft:bone>]);

// Convert wrap to the other kind
craftingTable.addShapeless("crimson_to_warped", <item:comfortable_nether:warped_rotten_wrap>, [<item:minecraft:warped_fungus>, <item:comfortable_nether:crimson_rotten_wrap>]);

craftingTable.addShapeless("warped_to_crimson", <item:comfortable_nether:crimson_rotten_wrap>, [<item:minecraft:crimson_fungus>, <item:comfortable_nether:warped_rotten_wrap>]);

<recipetype:create:mixing>.addRecipe("warped_to_crimson_gilded", "none", <item:comfortable_nether:crimson_rotten_wrap>*2, [<item:comfortable_nether:golden_warped_fungus>, <item:comfortable_nether:warped_rotten_wrap>]);

// Smelt Rotten Flesh into Leather
furnace.addRecipe("flesh_to_leather", <item:minecraft:leather>, <item:minecraft:rotten_flesh>, 1.5, 300);
smoker.addRecipe("flesh_to_leather_smoker", <item:minecraft:leather>, <item:minecraft:rotten_flesh>, 1.5, 200);

// Adds an alt recipe Furnace that uses Basalt
craftingTable.addShaped("furnace_basalt", <item:minecraft:furnace>, 
    [[<item:minecraft:basalt>, <item:minecraft:basalt>, <item:minecraft:basalt>],
    [<item:minecraft:basalt>, <item:minecraft:air>, <item:minecraft:basalt>],
    [<item:minecraft:basalt>, <item:minecraft:basalt>, <item:minecraft:basalt>]]);

// Changes the Nether Furnace to not require Flint & Steel
craftingTable.removeByName("netherrocks:nether_furnace");
craftingTable.addShaped("nether_furnace", <item:netherrocks:nether_furnace>, 
    [[<item:minecraft:netherrack>, <item:minecraft:netherrack>, <item:minecraft:netherrack>],
    [<item:minecraft:netherrack>, <item:minecraft:air>, <item:minecraft:netherrack>],
    [<item:minecraft:netherrack>, <item:minecraft:netherrack>, <item:minecraft:netherrack>]]);

// Extract Cobblestone from Netherrack
craftingTable.addShapeless("netherrack_to_cobble", <item:minecraft:cobblestone>, [<item:minecraft:netherrack>, <item:minecraft:netherrack>, <item:minecraft:netherrack>, <item:minecraft:flint>]);

// Get Flint from Netherrack
craftingTable.addShapeless("netherrack_to_flint", <item:minecraft:flint>, [<item:minecraft:netherrack>, <item:minecraft:netherrack>, <item:minecraft:netherrack>, <item:minecraft:netherrack>]);

// Convert Flesh into Brambles
craftingTable.addShapeless("flesh_to_brambles", <item:biomesoplenty:bramble>, [<item:biomesoplenty:flesh>,<item:biomesoplenty:flesh>, <item:biomesoplenty:flesh>, <item:biomesoplenty:flesh>]);

// Convert Brambles to Sticks
craftingTable.addShaped("brambles_to_sticks", <item:minecraft:stick>*3, 
    [[<item:biomesoplenty:bramble>, <item:minecraft:air>],
    [<item:biomesoplenty:bramble>, <item:minecraft:air>]]);

// Alt recipe for stone pickaxe that uses Netherrack
craftingTable.addShaped("stone_pickaxe_alt", <item:minecraft:stone_pickaxe>, 
    [[<item:minecraft:netherrack>, <item:minecraft:magma_block>, <item:minecraft:netherrack>],
    [<item:minecraft:netherrack>, <item:biomesoplenty:bramble>, <item:minecraft:netherrack>],
    [<item:minecraft:air>, <item:biomesoplenty:bramble>, <item:minecraft:air>]]);

// Recipe to make sticks from vines
craftingTable.addShapeless("vines_to_sticks", <item:minecraft:stick>*2, [<tag:items:vine>]);

// Make Mushroom Soup out of the nether fungi
craftingTable.addShapeless("mushroom-stew_nether", <item:minecraft:mushroom_stew>, [<item:minecraft:crimson_fungus>, <item:minecraft:warped_fungus>, <item:minecraft:bowl>]);

craftingTable.addShapeless("mushroom-stew_nether_gilded", <item:minecraft:mushroom_stew>, [<item:comfortable_nether:golden_warped_fungus>, <item:minecraft:bowl>]);


## Change recipe for the Repair Chests
// Basic
craftingTable.removeByName("repairchests:basic_chest");
<recipetype:create:mechanical_crafting>.addRecipe("basic_repair_chest", <item:repairchests:basic_chest>, 
    [[<item:minecraft:basalt>|<item:minecraft:blackstone>, <item:tconstruct:soul_glass>, <item:minecraft:basalt>|<item:minecraft:blackstone>],
    [<item:netherrocks:illumenite_ingot>, <tag:items:forge:chests/wooden>, <item:netherrocks:illumenite_ingot>],
    [<item:minecraft:basalt>|<item:minecraft:blackstone>, <item:minecraft:glowstone>, <item:minecraft:basalt>|<item:minecraft:blackstone>]]);

// Advanced
craftingTable.removeByName("repairchests:advanced_chest");
<recipetype:create:mechanical_crafting>.addRecipe("advanced_repair_chest", <item:repairchests:advanced_chest>, 
    [[<item:minecraft:air>, <item:minecraft:air>, <item:tconstruct:soul_glass>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <tag:items:forge:plates/brass>, <item:tconstruct:rose_gold_ingot>, <tag:items:forge:plates/brass>, <item:minecraft:air>],
    [<item:tconstruct:soul_glass>, <item:tconstruct:rose_gold_ingot>, <item:repairchests:basic_chest>, <item:tconstruct:rose_gold_ingot>, <item:tconstruct:soul_glass>],
    [<item:minecraft:air>, <tag:items:forge:plates/brass>, <item:tconstruct:rose_gold_ingot>, <tag:items:forge:plates/brass>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:tconstruct:soul_glass>, <item:minecraft:air>, <item:minecraft:air>]]);

// Ultimate
craftingTable.removeByName("repairchests:ultimate_chest");
<recipetype:create:mechanical_crafting>.addRecipe("ultimate_repair_chest", <item:repairchests:ultimate_chest>,
[[<tag:items:forge:plates/brass>, <item:minecraft:air>, <item:minecraft:nether_star>, <item:minecraft:air>, <tag:items:forge:plates/brass>],
[<tag:items:forge:plates/gold>, <item:minecraft:diamond>, <item:repairchests:advanced_chest>, <item:minecraft:diamond>, <tag:items:forge:plates/gold>],
[<tag:items:forge:plates/gold>, <item:comfortable_nether:soul_in_a_bottle>, <item:minecraft:diamond>, <item:comfortable_nether:soul_in_a_bottle>, <tag:items:forge:plates/gold>],
[<tag:items:forge:plates/brass>, <item:tconstruct:soul_glass>, <tag:items:forge:plates/brass>, <item:tconstruct:soul_glass>, <tag:items:forge:plates/brass>]]);

print("misc.zs loaded");