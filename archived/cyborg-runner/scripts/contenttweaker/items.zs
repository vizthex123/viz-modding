#loader contenttweaker
#priority 100

import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

print("items.zs loading...");

// Molecular Rearranger
var rearranger = VanillaFactory.createItem("molecular_rearranger");
rearranger.setMaxStackSize(16);

rearranger.register();

# Credit Chips
// Sol Chip
var sol_chip = VanillaFactory.createItem("sol_chip");
sol_chip.setMaxStackSize(64);

sol_chip.register();

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


/*
// Iron Ring
var ring = VanillaFactory.createItem("ring");
ring.setMaxStackSize(16);

ring.register();

### Scrap
# Iron
var scrap = VanillaFactory.createItem("iron_scrap");
scrap.setMaxStackSize(64);

scrap.register();

	// Small
var small_scrap = VanillaFactory.createItem("small_iron_scrap");
small_scrap.setMaxStackSize(64);

small_scrap.register();

# Gold
var gold_scrap = VanillaFactory.createItem("gold_scrap");
gold_scrap.setMaxStackSize(64);

gold_scrap.register();

	// Small
var small_gold_scrap = VanillaFactory.createItem("small_gold_scrap");
small_gold_scrap.setMaxStackSize(64);

small_gold_scrap.register();

# Diamond
var diamond_scrap = VanillaFactory.createItem("diamond_scrap");
diamond_scrap.setMaxStackSize(64);

diamond_scrap.register();

	// Small
var small_diamond_scrap = VanillaFactory.createItem("small_diamond_scrap");
small_diamond_scrap.setMaxStackSize(64);

small_diamond_scrap.register();
*/

// DIY Melon Circuit
var melon_circuit = VanillaFactory.createItem("melon_circuit");
melon_circuit.setMaxStackSize(64);

melon_circuit.register();


// Damaged Solarskin
var damaged_solarskin = VanillaFactory.createItem("damaged_solarskin");
damaged_solarskin.setMaxStackSize(1);

damaged_solarskin.register();


// MDF Board
var mdf = VanillaFactory.createItem("mdf");
mdf.setMaxStackSize(64);

mdf.register();


# Slime Dyes
var slime_black = VanillaFactory.createItem("slime_black");
slime_black.setMaxStackSize(64);

slime_black.register();

var slime_blue = VanillaFactory.createItem("slime_blue");
slime_blue.setMaxStackSize(64);

slime_blue.register();

var slime_green = VanillaFactory.createItem("slime_green");
slime_green.setMaxStackSize(64);

slime_green.register();

var slime_pink = VanillaFactory.createItem("slime_pink");
slime_pink.setMaxStackSize(64);

slime_pink.register();

var slime_purple = VanillaFactory.createItem("slime_purple");
slime_purple.setMaxStackSize(64);

slime_purple.register();

var slime_red = VanillaFactory.createItem("slime_red");
slime_red.setMaxStackSize(64);

slime_red.register();

var slime_yellow = VanillaFactory.createItem("slime_yellow");
slime_yellow.setMaxStackSize(64);

slime_yellow.register();


// Pulsaton Sliver
var pulsaton_sliver = VanillaFactory.createItem("pulsaton_sliver");
pulsaton_sliver.setMaxStackSize(64);

pulsaton_sliver.register();


// Wrapped Bone
var wrapped_bone = VanillaFactory.createItem("wrapped_bone");
wrapped_bone.setMaxStackSize(64);

wrapped_bone.register();


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

// Recycling icon
var recycling = VanillaFactory.createItem("recycling");
recycling.setMaxStackSize(1);

recycling.register();

print("items.zs loaded");