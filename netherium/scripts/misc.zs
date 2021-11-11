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

// Changes the Nether Furnace to not require Flint & Steel
craftingTable.removeByName("netherrocks:nether_furnace");
craftingTable.addShaped("nether_furnace", <item:netherrocks:nether_furnace>, 
    [[<item:minecraft:netherrack>, <item:minecraft:netherrack>, <item:minecraft:netherrack>],
    [<item:minecraft:netherrack>, <item:minecraft:air>, <item:minecraft:netherrack>],
    [<item:minecraft:netherrack>, <item:minecraft:netherrack>, <item:minecraft:netherrack>]]);

// Alt recipe for stone pickaxe that uses Netherrack
craftingTable.addShaped("stone_pickaxe_alt", <item:minecraft:stone_pickaxe>, 
    [[<item:minecraft:netherrack>, <item:minecraft:magma_block>, <item:minecraft:netherrack>],
    [<item:minecraft:netherrack>, <item:biomesoplenty:bramble>, <item:minecraft:netherrack>],
    [<item:minecraft:air>, <item:biomesoplenty:bramble>, <item:minecraft:air>]]);


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