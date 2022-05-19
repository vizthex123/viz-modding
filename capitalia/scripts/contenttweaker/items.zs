#loader contenttweaker

import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

print("items.zs loading...");

// Rocky Uranium
var rockyuranium = VanillaFactory.createItem("rockyuranium");
rockyuranium.setMaxStackSize(64);

rockyuranium.register();

// Rocky Nether Quartz
var rockyquartz = VanillaFactory.createItem("rockyquartz");
rockyquartz.setMaxStackSize(64);

rockyquartz.register();

// Paxel Mold
var paxelmold = VanillaFactory.createItem("paxelmold");
paxelmold.setMaxStackSize(1);

paxelmold.register();

// Crystal Compound
var crystalcompound = VanillaFactory.createItem("crystalcompound");
crystalcompound.setMaxStackSize(64);

crystalcompound.register();











#############################
#	# Data Disks	   #
#############################
// Stone
var stonedata = VanillaFactory.createItem("datadisk_stone");
stonedata.setMaxStackSize(64);

stonedata.register();

// Stone Lump
var stonedatalump = VanillaFactory.createItem("datadisk_stone_unref");
stonedatalump.setMaxStackSize(64);

stonedatalump.register();


// Bronze
var bronzedata = VanillaFactory.createItem("datadisk_bronze");
bronzedata.setMaxStackSize(64);

bronzedata.register();


// Iron
var irondata = VanillaFactory.createItem("datadisk_iron");
irondata.setMaxStackSize(64);

irondata.register();


// Industrial
var industrialdata = VanillaFactory.createItem("datadisk_industrial");
industrialdata.setMaxStackSize(64);

industrialdata.register();

var industrialdata_unref = VanillaFactory.createItem("datadisk_industrial_unref");
industrialdata_unref.setMaxStackSize(64);

industrialdata_unref.register();


// Machine
var machinedata = VanillaFactory.createItem("datadisk_machine");
machinedata.setMaxStackSize(64);

machinedata.register();

var machinedata_unref = VanillaFactory.createItem("datadisk_machine_unref");
machinedata_unref.setMaxStackSize(64);

machinedata_unref.register();


// Information
var informationdata = VanillaFactory.createItem("datadisk_information");
informationdata.setMaxStackSize(64);

informationdata.register();

var informationdata_unref = VanillaFactory.createItem("datadisk_information_unref");
informationdata_unref.setMaxStackSize(64);

informationdata_unref.register();



# Atomic
var atomicdata = VanillaFactory.createItem("datadisk_atomic");
atomicdata.setMaxStackSize(64);

atomicdata.register();

# Parts
// Proton
var proton = VanillaFactory.createItem("proton");
proton.setMaxStackSize(64);

proton.register();

// Neutron
var neutron = VanillaFactory.createItem("neutron");
neutron.setMaxStackSize(64);

neutron.register();

// Electron
var electron = VanillaFactory.createItem("electron");
electron.setMaxStackSize(64);

electron.register();

// Military
var militarydata = VanillaFactory.createItem("datadisk_military");
militarydata.setMaxStackSize(64);

militarydata.register();


# Workaround items for goo recipes
# Stupid techguns metadata whatever >:{
var aliengoo = VanillaFactory.createItem("alien_goo_sample");
aliengoo.setMaxStackSize(64);

aliengoo.register();

var hellgoo = VanillaFactory.createItem("hell_goo_sample");
hellgoo.setMaxStackSize(64);

hellgoo.register();

print("items.zs loaded");