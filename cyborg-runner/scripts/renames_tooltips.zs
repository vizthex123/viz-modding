# Renames things & adds tooltips
// Note: Tooltips will be added in the proper script, this one is just for extra random bits of info
/*
<item>.displayName = "New Name";
<item>.addTooltip("Tooltip");
<item>.addShiftTooltip("Tooltip");
*/

print("renames_tooltips.zs loading...");

<minecraft:reeds>.displayName = "Sugar Cane";
#	<xlfoodmod:bowl>.displayName = "Ceramic Bowl";
<cyberware:engineering_table>.displayName = "Cybernetic Engineering Table";
<cyberware:scanner>.displayName = "Cybernetics Scanner";
<cyberware:eye_upgrades>.displayName = "HUDLens";
<cyberware:cybereye_upgrades:2>.displayName = "HUDJack";
<pyramidplunder:urn>.displayName = "Ancient Urn";
<loreexpansion:lore_journal>.displayName = "Lore Journal";
<translocators:translocator_part:1>.displayName = "Fluid Translocator";
<ceramics:unfired_clay:4>.displayName = "Unfired Porcelain Clay";
<multistorage:stone_storage:1>.displayName = "Stone Cabinet";
<multistorage:stone_storage:2>.displayName = "Dense Stone Cabinet";
<xlfoodmod:flesh>.displayName = "Dried Flesh";
<openmodularturrets:machine_gun_turret>.displayName = "Machine Gun Turret";
<byg:tamrelitepickaxe>.displayName = "Tamrelite Pickaxe";
<compacter:compacter>.displayName = "Compactor";
<compactmachines3:machine:5>.displayName = "Huge Compact Machine";
<refinedstorage:upgrade>.displayName = "Blank Upgrade";
<refinedstorage:quartz_enriched_iron>.displayName = "Quartz-Enriched Iron";
<refinedstorage:quartz_enriched_iron>.displayName = "Quartz-Enriched Iron";
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
<openmodularturrets:disposable_item_turret>.addTooltip(format.white("Accepted Items (hold shfit):"));
<openmodularturrets:disposable_item_turret>.addShiftTooltip("Vanilla planks");
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
<xlfoodmod:twinkie>.addTooltip(format.white("Must've survived the apocalypse..."));
<contenttweaker:faulty_circuit>.addTooltip(format.white("I don't know how this is working - but my databanks says it is, so...."));
<cyberware:skin_upgrades:3>.addTooltip(format.white("This will increase my body's tolerance for Cybernetics, but it has to replace some of my immune system in order to do so."));


<cyberware:scanner>.addTooltip(format.white("This should get me a blueprint about half the time. Adding extra samples will increase the chances though."));
<cyberware:engineering_table>.addTooltip(format.white("If I had better equipment, I could retrieve blueprints almost every time."));
<cyberware:engineering_table>.addTooltip(format.white("But as it stands, it only works about 20% of the time. And I'll need some paper to write the blueprint to."));
<openblocks:sprinkler>.addTooltip(format.white("I can put Bone Meal inside this to disperse it around the farm"));
<minecraft:web>.addTooltip(format.white("I could probably extract some string from this"));
<glacidus:crysium>.addTooltip(format.white("Cold to the touch, I could probably refine this..."));
<extrautils2:glasscutter>.addTooltip(format.white("If I use this to break glass blocks, I'll be able to get them back."));
<minecraft:prismarine:*>.addTooltip(format.white("I could probably process this into Prismarine later, when I get the tools."));
<minecraft:flint_and_steel>.addTooltip(format.white("These will definitely burn anything I strike them with!"));
<minecraft:trapped_chest>.addTooltip(format.white("I can strip the wiring off of this and get a normal chest, using something sharp."));
<contenttweaker:wrapped_bone>.addTooltip(format.white("I could probably ignite this, perhaps as a make-shift light source?"));
<xlfoodmod:vanilla_flower>.addTooltip(format.white("Probably not edible on its own, but I could extract the raw vanilla and use that to cook."));
<compactmachines3:machine:*>.addTooltip(format.white("I could probably recycle this later on."));
<mystcraft:blockcrystal>.addTooltip(format.white("This seems to be charged with something....perhaps I could extract it later on?"));
<xp_ore:xp_ore_drained>.addTooltip(format.white("I could probably siphon a few more drops out of this."));
<pyramidplunder:urn>.addTooltip(format.white("I should be able to smash this into gold, maybe even melt it down?"));








// Misc
<minecraft:furnace>.addTooltip(format.gray("Cook time: 200"));
<openblocks:rope_ladder>.addTooltip(format.green("When placed, keeps building itself downwards until hitting a block (or running out)"));
<openblocks:tank>.addTooltip("Or 'Fluid Tank'");
<xlfoodmod:bowl>.addTooltip("*Ceramic Bowl");
<translocators:translocator_part:1>.addTooltip("Or 'Liquid Transposer'");
<thermalfoundation:coin>.addTooltip("Or 'Iron Coin'");
<industrialforegoing:enchantment_extractor>.addTooltip("Or 'Dischanter'");
<cyberware:katana:*>.addTooltip("Can harvest organs & limbs from (some) slain foes");
<wopper:wopper>.addTooltip("Half the speed of a regular Hopper");
<wopper:wopper>.addTooltip(format.red("Can't be deactivated by Redstone"));

<tieredmagnets:magnetic_insulator>.addTooltip(format.green("Supresses magnetic force"));
<tieredmagnets:magnetic_projector>.addTooltip(format.green("Broadcasts a magnet's power over an area"));
<compactmachines3:psd>.addTooltip("The PSD");
<multistorage:stone_storage:3>.addTooltip(format.aqua("Shift+click to open"));
#	<multistorage:stone_storage:3>.addTooltip(format.aqua("Mimics the block it's placed on"));
<multistorage:stone_storage:4>.addTooltip(format.aqua("Shift+click to open"));
#	<multistorage:stone_storage:4>.addTooltip(format.aqua("Mimics the block it's placed on"));
<rftools:matter_transmitter>.addTooltip("*Teleporter");
<rftools:matter_receiver>.addTooltip("*Teleporter");
<cyberware:katana>.addTooltip(format.red("Harvests organs from slain foes"));


<natura:edibles:11>.addShiftTooltip(format.blue("It's the quenchiest!"));


print("renames_tooltips.zs loaded");