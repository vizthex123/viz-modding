# Adds tooltips and renames items
/*
<item>.displayName = "New Name";
<item>.addTooltip("Tooltip");
<item>.addShiftTooltip("Tooltip");
*/

print("renames_tooltips.zs loading...");

# Name Fixes
<libvulpes:productdust>.displayName = "Dilithium Dust";
<libvulpes:productgem>.displayName = "Dilithium Crystal";
<libvulpes:ore0>.displayName = "Dilithium Ore";
####################

<adminshop:shop>.displayName = "Intergalactic Shop Kiosk";
<adminshop:buyer>.displayName = "Intergalactic Auto-Buyer";
<adminshop:seller>.displayName = "Intergalactic Auto-Seller";
<adminshop:atm>.displayName = "Intergalactic ATM";

<minecraft:furnace>.displayName = "Stone Furnace";
<minecraft:reeds>.displayName = "Sugar Cane";

<magneticraft:light_plates>.displayName = "Light Iron Plate";
<magneticraft:light_plates:1>.displayName = "Light Gold Plate";
<magneticraft:light_plates:2>.displayName = "Light Copper Plate";
<magneticraft:light_plates:3>.displayName = "Light Lead Plate";
<magneticraft:light_plates:5>.displayName = "Light Tungsten Plate";
<magneticraft:light_plates:6>.displayName = "Light Steel Plate";

<magneticraft:conveyor_belt>.displayName = "Roller Conveyor";

<logisticalautomation:filter>.displayName = "Router";
<logisticalautomation:conveyor_normal>.displayName = "Basic Conveyor";
<logisticalautomation:conveyor_stair_normal>.displayName = "Sloped Conveyor";
<logisticalautomation:conveyor_stair_fast>.displayName = "Fast Sloped Conveyor";
<logisticalautomation:conveyor_stair_express>.displayName = "Express Sloped Conveyor";

<techguns:itemshared:66>.displayName = "Advanced Circuit Board";
<advancedrocketry:jetpack>.displayName = "Jetpack";
<libvulpes:battery:1>.displayName = "Medium Battery";
<wopper:wopper>.displayName = "Wooden Hopper";
<forestry:can>.displayName = "Empty Can";

<bigreactors:reactorpowertaprf>.displayName = "Reactor Power Tap";
<bigreactors:turbinepowertaprf>.displayName = "Turbine Power Tap";

<refinedstorage:controller>.displayName = "RS Controller";
<superfactorymanager:manager>.displayName = "Factory Manager";
<mekanism:basicblock:8>.displayName = "Steel Machine Casing";
<mekanism:biofuel>.displayName = "Bio-Matter";
<simplequarry:powered_quarry>.displayName = "Basic Electrical Quarry";
<projectred-core:resource_item:301>.displayName = "Silicon Wafer";
<compactmachines3:machine:5>.displayName = "Huge Compact Machine";
<multistorage:vault:7>.displayName = "Vault Power Connector";
<mekanismgenerators:generator:6>.displayName = "Wind Turbine";
<refinedstorage:grid>.displayName = "Basic Terminal";
<extendedcrafting:pedestal>.displayName = "Black Iron Pedestal";
<refinedstorage:quartz_enriched_iron>.displayName = "Quartz-Enriched Iron";
<refinedstorage:portable_grid>.displayName = "Portable System";
<techguns:itemshared:65>.displayName = "Basic Circuit Board";
<buildcraftcore:gear_wood>.displayName = "Wooden Gear";
<openblocks:sponge_on_a_stick>.displayName = "Sponge on a Stick";
<magneticraft:brick_furnace>.displayName = "Brick Furnace";




// RS & AE2 Processors
<refinedstorage:processor>.displayName = "Raw Mathmatics Processing Unit";
<refinedstorage:processor:1>.displayName = "Raw Logistics Processing Unit";
<refinedstorage:processor:2>.displayName = "Raw Energy Conversion Processing Unit";

<refinedstorage:processor:3>.displayName = "Mathmatics Processing Unit";
<refinedstorage:processor:4>.displayName = "Logistics Processing Unit";
<refinedstorage:processor:5>.displayName = "Energy Conversion Processing Unit";

<appliedenergistics2:material:22>.displayName = "Logistics Computer Chip";
<appliedenergistics2:material:23>.displayName = "Mathmatics Computer Chip";
<appliedenergistics2:material:24>.displayName = "Energy Management Computer Chip";

<refinedstorage:core>.displayName = "Matter-Energy Manipulation Core";
<refinedstorage:core:1>.displayName = "Entropy Management Core";



###############################################################################
# 				TOOLTIPS				               #
###############################################################################
<libvulpes:ore0>.addTooltip(format.aqua("Best to save this for later."));
<magneticraft:small_tank>.addTooltip(format.aqua("Holds 32,000 mB of fluid"));
<magneticraft:small_tank>.addTooltip(format.red("Doesn't retain contents when broken."));

<forestry:catalogue>.addTooltip(format.red("Doesn't work with the Akashic Tome"));
<simplequarry:fuel_quarry>.addTooltip(format.aqua("Accepts both RF and solid fuel"));
<buildcrafttransport:pipe_quartz_item>.addTooltip("Won't connect to Cobble or Stone transport pipes. Retains golden pipe speed boost better.");

<extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"}).addTooltip("Or 'Dischantment Generator'");
<industrialforegoing:mob_duplicator>.addTooltip("Or 'Auto-Spawner'");
<industrialforegoing:mob_relocator>.addTooltip("Or 'Grinder'");
<industrialforegoing:mob_slaughter_factory>.addTooltip("Or 'Slaughterhouse'");

<refinedstorage:cutting_tool>.addTooltip(format.white("Combine with a block to craft facades"));
<tieredmagnets:magnetic_projector>.addTooltip(format.aqua("Copies the attributes of magnets placed inside"));
<tieredmagnets:magnetic_insulator>.addTooltip(format.aqua("Prevents magnets from working in a set area"));
<techguns:itemshared:97>.addTooltip("Or 'Uranium Dust'");
<extrautils2:glasscutter>.addTooltip(format.green("Will return glass blocks if used to break them"));
<simplequarry:fuel_quarry>.addTooltip(format.darkRed("Only mines the chunk it's placed in"));
<simplequarry:fuel_quarry>.addTooltip(format.darkRed("Doesn't accept upgrades"));
<simplequarry:powered_quarry>.addTooltip(format.darkRed("Only mines the chunk it's placed in"));
<simplequarry:powered_quarry>.addTooltip(format.green("Can hold 5 upgrades"));
<multistorage:stone_storage:1>.addTooltip(format.red("Can only be opened from the front"));
<multistorage:stone_storage:2>.addTooltip(format.red("Can only be opened from the front"));
<multistorage:stone_storage:3>.addTooltip(format.aqua("Shift+click to open"));
<multistorage:stone_storage:3>.addTooltip(format.aqua("Mimics the block it's placed on"));
<multistorage:stone_storage:4>.addTooltip(format.aqua("Shift+click to open"));
<multistorage:stone_storage:4>.addTooltip(format.aqua("Mimics the block it's placed on"));

<waystones:waystone>.addTooltip(format.gold("Can be purchased for $1,000"));
<waystones:waystone>.addTooltip(format.green("Or maybe you'll encounter them on your adventures..."));
<waystones:return_scroll>.addTooltip(format.aqua("Single-use item to return to whatever Waystone was used (or placed) last"));
<waystones:bound_scroll>.addTooltip(format.aqua("Single-use item to teleport to whatever Waystone it was bound too"));
<waystones:warp_scroll>.addTooltip(format.aqua("Single-use item to teleport to any Waystone"));
<waystones:warp_stone>.addTooltip(format.aqua("Acts like a portable Waystone"));

<ssc:basic_crate>.addTooltip(format.red("InvTweaks sorting doesn't work"));
<ssc:hardened_crate>.addTooltip(format.red("InvTweaks sorting doesn't work"));
<wopper:wopper>.addTooltip(format.green("Can be upgraded into a normal hopper"));
<buildcrafttransport:pipe_cobble_item>.addTooltip("Doesn't connect to Stone transport pipes");

<ironfurnaces:iron_furnace_idle>.addTooltip(format.gold("1 Fuel (200 Burn Time) smelts 2 Items"));
<ironfurnaces:gold_furnace_idle>.addTooltip(format.gold("1 Fuel (200 Burn Time) smelts 4 Items"));
<ironfurnaces:diamond_furnace_idle>.addTooltip(format.gold("1 Fuel (200 Burn Time) smelts 8 Items"));
<extendedcrafting:ender_alternator>.addTooltip(format.aqua("Allows the Ender Crafter to function"));
<forestry:letters>.addTooltip(format.aqua("Spent letters can be turned into paper"));








# Dungeon Loot
<minecraft:iron_horse_armor>.addTooltip(format.aqua("Can be melted into Iron"));
<minecraft:golden_horse_armor>.addTooltip(format.aqua("Can be melted into Gold"));


// Alien Goo amounts
<appliedenergistics2:material:45>.addTooltip(format.green("Contains trace amounts of alien material"));
<appliedenergistics2:sky_stone_block>.addTooltip(format.green("Contains trace amounts of alien material"));
<appliedenergistics2:smooth_sky_stone_block>.addTooltip(format.green("Contains trace amounts of alien material"));
<appliedenergistics2:smooth_sky_stone_chest>.addTooltip(format.green("Contains trace amounts of alien material"));
<appliedenergistics2:sky_stone_chest>.addTooltip(format.green("Contains trace amounts of alien material"));

// References
<biomesoplenty:plant_1:9>.addShiftTooltip(format.darkGray("I am root!"));

print("renames_tooltips.zs loaded");