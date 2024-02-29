# Renames things & adds tooltips
// Note: Tooltips will be added in the proper script, this one is just for extra random bits of info
/*
<item>.displayName = "New Name";
<item>.addTooltip("Tooltip");
<item>.addShiftTooltip("Tooltip");
*/

print("renames_tooltips.zs loading...");

<minecraft:reeds>.displayName = "Sugar Cane";
<superores:super_lapis>.displayName = "Super Lapis Ore";

# <xlfoodmod:bowl>.displayName = "Ceramic Bowl";
# <cyberware:eye_upgrades:0>.displayName = "HUDLens";
# <cyberware:cybereye_upgrades:2>.displayName = "HUDJack";


<ceramics:unfired_clay:4>.displayName = "Unfired Porcelain Clay";
<coalprocessing:compressed_coal>.displayName = "Block of Compressed Carbon";
<coalprocessing:diamond_machine>.displayName = "Carbon Compressor";
<compacter:compacter>.displayName = "Compactor";
<compactmachines3:machine:5>.displayName = "Huge Compact Machine";
<cyberware:engineering_table>.displayName = "Augment Engineering Table";
<cyberware:scanner>.displayName = "Augment Scanner";
<loreexpansion:lore_journal>.displayName = "Lore Journal";
<multistorage:stone_storage:1>.displayName = "Stone Cabinet";
<multistorage:stone_storage:2>.displayName = "Dense Stone Cabinet";
<natura:netherquartz_sword>.displayName = "Nether Quartz Sword";
<openmodularturrets:machine_gun_turret>.displayName = "Machine Gun Turret";
<translocators:translocator_part:1>.displayName = "Fluid Translocator";
<xlfoodmod:flesh>.displayName = "Dried Flesh";

<natura:netherquartz_sword>.displayName = "Nether Quartz Sword";
<natura:netherquartz_pickaxe>.displayName = "Nether Quartz Pickaxe";
<natura:netherquartz_shovel>.displayName = "Nether Quartz Shovel";
<natura:netherquartz_kama>.displayName = "Nether Quartz Kama";
<natura:netherquartz_axe>.displayName = "Nether Quartz Axe";

<artisanworktables:worktable:9>.displayName = "Scientist's Worktable";
<artisanworktables:workstation:9>.displayName = "Scientist's Workstation";

<glacidus:crystal_block>.displayName = "Block of Crysium";

// Change Nibrock's Coals to be more thematic
<nibrockscoal:iron_coal>.displayName = "Concentrated Coal";
<nibrockscoal:gold_coal>.displayName = "Refined Coal";
<nibrockscoal:diamond_coal>.displayName = "Pure Coal";

// Fix the names for Bone Armour
<bonecraft:bonehelmitem>.displayName = "Bone Helmet";
<bonecraft:bonechestitem>.displayName = "Bone Chestplate";
<bonecraft:bonelegsitem>.displayName = "Bone Leggings";


###############################################################
#			TOOLTIPS				#
###############################################################
// Fix heart container tooltip
<scalinghealth:heartcontainer>.removeTooltip("Increases maximum health");
<scalinghealth:heartcontainer>.addTooltip("Heals you for 3 hearts");

// Chest Storage
<minecraft:chest>.addTooltip(format.aqua("27 slots"));
<ironchest:iron_chest:3>.addTooltip(format.aqua("45 slots"));
<ironchest:iron_chest>.addTooltip(format.aqua("54 slots"));

<stonechest:chest_cobblestone>.addTooltip(format.aqua("27 slots"));
<stonechest:chest_stone>.addTooltip(format.aqua("27 slots"));
<stonechest:chest_granite>.addTooltip(format.aqua("27 slots"));
<stonechest:chest_diorite>.addTooltip(format.aqua("27 slots"));
<stonechest:chest_andesite>.addTooltip(format.aqua("27 slots"));


// Disposable Turret accepted items
<openmodularturrets:disposable_item_turret>.addTooltip(format.white("Accepted Items (hold shift):"));
<openmodularturrets:disposable_item_turret>.addShiftTooltip("(Vanilla) planks");
<openmodularturrets:disposable_item_turret>.addShiftTooltip("Cobblestone");
<openmodularturrets:disposable_item_turret>.addShiftTooltip("Gravel");
<openmodularturrets:disposable_item_turret>.addShiftTooltip("Sand");
<openmodularturrets:disposable_item_turret>.addShiftTooltip("Dirt");
<openmodularturrets:disposable_item_turret>.addShiftTooltip("(Polished) Granite");
<openmodularturrets:disposable_item_turret>.addShiftTooltip("(Polished) Diorite");
<openmodularturrets:disposable_item_turret>.addShiftTooltip("(Polished) Andesite");
<openmodularturrets:disposable_item_turret>.addShiftTooltip("Clay");

<minecraft:potato>.addTooltip(format.aqua("Works as ammo for the Potato Cannon"));


// Runner Thoughts
<minecraft:web>.addTooltip(format.white("I could probably extract some string from this"));
<minecraft:prismarine:*>.addTooltip(format.white("I could probably process this into Prismarine later, when I get the tools."));
<minecraft:flint_and_steel>.addTooltip(format.white("These will definitely burn anything I strike them with!"));
<minecraft:trapped_chest>.addTooltip(format.white("I can strip the wiring off of this and get a normal chest if I had something sharp."));

<extrautils2:glasscutter>.addTooltip(format.white("If I use this to break glass blocks, I'll be able to get them back."));

<compactmachines3:machine:*>.addTooltip(format.white("I could probably recycle this."));

<cyberware:skin_upgrades:3>.addShiftTooltip(format.white("This will increase my body's tolerance for Cybernetics, but it has to replace some of my immune system in order to do so."));

<cyberware:scanner>.addTooltip(format.white("This should get me a blueprint about a third of the time."));
<cyberware:scanner>.addTooltip(format.white("Extra augments are sure to increase my odds."));
<cyberware:scanner>.addShiftTooltip(format.aqua("Each additional item grants +5% blueprint chance, up to a maximum of 50%"));
<cyberware:engineering_table>.addTooltip(format.white("If I had better equipment, I could retrieve blueprints almost every time."));
<cyberware:engineering_table>.addTooltip(format.white("But as it stands, it only works about 20% of the time - and I'll need some paper to write the blueprint down."));

<glacidus:frozen_antinatric_stone>.addTooltip(format.white("This strange stone seems to be a frozen variant of standard stone."));
<glacidus:frozen_antinatric_stone>.addTooltip(format.white("I bet I could remove the frozen layers with proper machinery."));
<glacidus:thawed_antinatric_stone>.addTooltip(format.white("This strange stone seems only one step removed from becoming standard stone."));
<glacidus:thawed_antinatric_stone>.addTooltip(format.white("I bet I could finish the process with proper machinery."));
<glacidus:crysium>.addTooltip(format.white("Cold to the touch. I could probably refine this into coolant..."));
<glacidus:eukeite>.addTooltip(format.white("I could probably extract something out of these odd gemstones with the right machinery."));
<glacidus:opesium>.addTooltip(format.white("Feels slightly cool when held. I might be able to refine this into coolant..."));
<glacidus:glacidite_fragment>.addTooltip(format.white("I feel like this will freeze me to the core! I could definitely refine this into an excellent coolant..."));

<mystcraft:blockcrystal>.addTooltip(format.white("This seems to be charged with something... perhaps I could extract it later on?"));
<openblocks:sprinkler>.addTooltip(format.white("I can put Bone Meal inside this to disperse it around the farm"));

<xp_ore:xp_ore_drained>.addTooltip(format.white("I could probably siphon a few more drops out of this with the right machinery."));
<xlfoodmod:twinkie>.addShiftTooltip(format.white("Must've survived the apocalypse..."));
<xlfoodmod:vanilla_flower>.addTooltip(format.white("Probably not edible on its own, but I could extract the raw vanilla and use that to cook."));


// Misc
<minecraft:furnace>.addTooltip(format.gray("Cook time: 200"));
<compactmachines3:psd>.addTooltip("The PSD");
<cyberware:katana:*>.addTooltip("Can harvest organs & limbs from humanoid enemies");
<industrialforegoing:enchantment_extractor>.addTooltip("Or 'Dischanter'/'Disenchanter'");

<multistorage:stone_storage:3>.addTooltip(format.aqua("Shift+click to open"));
<multistorage:stone_storage:4>.addTooltip(format.aqua("Shift+click to open"));
<natura:edibles:11>.addShiftTooltip(format.blue("It's the quenchiest!"));

<openblocks:rope_ladder>.addTooltip(format.green("When placed, keeps building itself downwards until hitting a block (or running out of ladders)"));
<openblocks:tank>.addTooltip("Or 'Fluid Tank'");

<rftools:matter_receiver>.addTooltip("*Teleporter");
<rftools:matter_transmitter>.addTooltip("*Teleporter");
<translocators:translocator_part:1>.addShiftTooltip("It's like a tiny Liquid Transposer!");

<wopper:wopper>.addTooltip("Half the speed of a regular Hopper");
<wopper:wopper>.addTooltip(format.red("Can't be deactivated by Redstone"));
<xlfoodmod:bowl>.addTooltip("*Ceramic Bowl");

print("renames_tooltips.zs loaded");