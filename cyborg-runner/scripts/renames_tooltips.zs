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

#	<xlfoodmod:bowl>.displayName = "Ceramic Bowl";
<cyberware:eye_upgrades:0>.displayName = "HUDLens";
<cyberware:cybereye_upgrades:2>.displayName = "HUDJack";

<xlfoodmod:flesh>.displayName = "Dried Flesh";
<appliedenergistics2:security_station>.displayName = "ME Security Station";
<cyberware:engineering_table>.displayName = "Cybernetic Engineering Table";
<cyberware:scanner>.displayName = "Cybernetics Scanner";
<loreexpansion:lore_journal>.displayName = "Lore Journal";
<translocators:translocator_part:1>.displayName = "Fluid Translocator";
<ceramics:unfired_clay:4>.displayName = "Unfired Porcelain Clay";
<multistorage:stone_storage:1>.displayName = "Stone Cabinet";
<multistorage:stone_storage:2>.displayName = "Dense Stone Cabinet";
<openmodularturrets:machine_gun_turret>.displayName = "Machine Gun Turret";
<byg:tamrelitepickaxe>.displayName = "Tamrelite Pickaxe";
<compacter:compacter>.displayName = "Compactor";
<compactmachines3:machine:5>.displayName = "Huge Compact Machine";
<coalprocessing:compressed_coal>.displayName = "Compressed Carbon Block";
<coalprocessing:diamond_machine>.displayName = "Carbon Compressor";
<natura:netherquartz_sword>.displayName = "Nether Quartz Sword";
<natura:netherquartz_pickaxe>.displayName = "Nether Quartz Pickaxe";
<natura:netherquartz_shovel>.displayName = "Nether Quartz Shovel";
<natura:netherquartz_kama>.displayName = "Nether Quartz Kama";
<natura:netherquartz_axe>.displayName = "Nether Quartz Axe";

<artisanworktables:worktable:9>.displayName = "Scientist's Worktable";
<artisanworktables:workstation:9>.displayName = "Scientist's Workstation";


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


// Character Quips
<minecraft:web>.addTooltip(format.white("I could probably extract some string from this"));
<minecraft:prismarine:*>.addTooltip(format.white("I could probably process this into Prismarine later, when I get the tools."));
<minecraft:flint_and_steel>.addTooltip(format.white("These will definitely burn anything I strike them with!"));
<minecraft:trapped_chest>.addTooltip(format.white("I can strip the wiring off of this and get a normal chest, using something sharp."));

<xlfoodmod:twinkie>.addShiftTooltip(format.white("Must've survived the apocalypse..."));
<cyberware:skin_upgrades:3>.addShiftTooltip(format.white("This will increase my body's tolerance for Cybernetics, but it has to replace some of my immune system in order to do so."));

<cyberware:scanner>.addTooltip(format.white("This should get me a blueprint about half the time. Adding extra samples will increase the chances though."));
<cyberware:engineering_table>.addTooltip(format.white("If I had better equipment, I could retrieve blueprints almost every time."));
<cyberware:engineering_table>.addTooltip(format.white("But as it stands, it only works about 20% of the time. And I'll need some paper to write the blueprint to."));

<compactmachines3:machine:*>.addTooltip(format.white("I could probably recycle this."));
<extrautils2:glasscutter>.addTooltip(format.white("If I use this to break glass blocks, I'll be able to get them back."));
<glacidus:crysium>.addTooltip(format.white("Cold to the touch. I could probably refine this into coolant..."));
<glacidus:opesium>.addTooltip(format.white("Feels slightly cool when held. I might be able to refine this into coolant..."));
<glacidus:glacidite_fragment>.addTooltip(format.white("I feel like this will freeze me to the core! I could definitely refine this into an excellent coolant..."));
<mystcraft:blockcrystal>.addTooltip(format.white("This seems to be charged with something... perhaps I could extract it later on?"));
<openblocks:sprinkler>.addTooltip(format.white("I can put Bone Meal inside this to disperse it around the farm"));
<xlfoodmod:vanilla_flower>.addTooltip(format.white("Probably not edible on its own, but I could extract the raw vanilla and use that to cook."));
<xp_ore:xp_ore_drained>.addTooltip(format.white("I could probably siphon a few more drops out of this."));



// Misc
<minecraft:furnace>.addTooltip(format.gray("Cook time: 200"));
<openblocks:rope_ladder>.addTooltip(format.green("When placed, keeps building itself downwards until hitting a block (or running out)"));
<openblocks:tank>.addTooltip("Or 'Fluid Tank'");
<xlfoodmod:bowl>.addTooltip("*Ceramic Bowl");
<translocators:translocator_part:1>.addTooltip("Or 'Liquid Transposer'");
<thermalfoundation:coin>.addTooltip("Or 'Iron Coin'");
<industrialforegoing:enchantment_extractor>.addTooltip("Or 'Dischanter'");
<cyberware:katana:*>.addTooltip("Can harvest organs & limbs from humanoid enemies");
<wopper:wopper>.addTooltip("Half the speed of a regular Hopper");
<wopper:wopper>.addTooltip(format.red("Can't be deactivated by Redstone"));

<compactmachines3:psd>.addTooltip("The PSD");
<multistorage:stone_storage:3>.addTooltip(format.aqua("Shift+click to open"));
<multistorage:stone_storage:4>.addTooltip(format.aqua("Shift+click to open"));
<rftools:matter_transmitter>.addTooltip("*Teleporter");
<rftools:matter_receiver>.addTooltip("*Teleporter");

<natura:edibles:11>.addShiftTooltip(format.blue("It's the quenchiest!"));


print("renames_tooltips.zs loaded");