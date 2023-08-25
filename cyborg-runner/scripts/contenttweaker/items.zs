#loader contenttweaker
#priority 100

import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

print("items.zs loading...");

// Molecular Rearranger
var rearranger = VanillaFactory.createItem("molecular_rearranger");
rearranger.setMaxStackSize(16);

rearranger.register();


// Iron Ring
var ring = VanillaFactory.createItem("ring");
ring.setMaxStackSize(16);

ring.register();


// DIY Melon Circuit
var melon_circuit = VanillaFactory.createItem("melon_circuit");
melon_circuit.setMaxStackSize(64);

melon_circuit.register();


// Damaged Solarskin
var damaged_solarskin = VanillaFactory.createItem("damaged_solarskin");
damaged_solarskin.setMaxStackSize(1);

damaged_solarskin.register();


# Toilary Chips
// Damaged Chip
var damaged_chip = VanillaFactory.createItem("damaged_chip");
damaged_chip.setMaxStackSize(64);

damaged_chip.register();

// Empty Chip
var empty_chip = VanillaFactory.createItem("empty_chip");
empty_chip.setMaxStackSize(64);

empty_chip.register();

// Chip 1
var chip1 = VanillaFactory.createItem("chip1");
chip1.setMaxStackSize(64);

chip1.register();

// Chip 5
var chip5 = VanillaFactory.createItem("chip5");
chip5.setMaxStackSize(64);

chip5.register();

// Chip 10
var chip10 = VanillaFactory.createItem("chip10");
chip10.setMaxStackSize(64);

chip10.register();

// Chip 50
var chip50 = VanillaFactory.createItem("chip50");
chip50.setMaxStackSize(64);

chip50.register();

// Chip 100
var chip100 = VanillaFactory.createItem("chip100");
chip100.setMaxStackSize(64);

chip100.register();


// Slime Green Dye
var slime_green = VanillaFactory.createItem("slime_green");
slime_green.setMaxStackSize(64);

slime_green.register();


// Pulsaton Sliver
var pulsaton_sliver = VanillaFactory.createItem("pulsaton_sliver");
pulsaton_sliver.setMaxStackSize(64);

pulsaton_sliver.register();


// Wrapped Bone
var wrapped_bone = VanillaFactory.createItem("wrapped_bone");
wrapped_bone.setMaxStackSize(64);

wrapped_bone.register();


// MDF Board
var mdf = VanillaFactory.createItem("mdf");
mdf.setMaxStackSize(64);

mdf.register();


# Bottled Foods
var bottled_tomato = VanillaFactory.createItem("bottled_tomato");
bottled_tomato.setMaxStackSize(64);

bottled_tomato.register();


var bottled_pepper = VanillaFactory.createItem("bottled_pepper");
bottled_pepper.setMaxStackSize(64);

bottled_pepper.register();

var bottled_cocoa = VanillaFactory.createItem("bottled_cocoa");
bottled_cocoa.setMaxStackSize(64);

bottled_cocoa.register();

print("items.zs loaded");