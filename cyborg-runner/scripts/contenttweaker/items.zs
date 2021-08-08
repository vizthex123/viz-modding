#loader contenttweaker

import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

print("items.zs loading...");

// Damaged Solarskin
var damaged_solarskin = VanillaFactory.createItem("damaged_solarskin");
damaged_solarskin.setMaxStackSize(1);

damaged_solarskin.register();


// Toilary Mold
var coin_mold = VanillaFactory.createItem("coin_mold");
coin_mold.setMaxStackSize(1);

coin_mold.register();


// Slime Green Dye
var slime_green = VanillaFactory.createItem("slime_green");
slime_green.setMaxStackSize(64);

slime_green.register();


// Ring
var ring = VanillaFactory.createItem("ring");
ring.setMaxStackSize(16);

ring.register();


// Faulty Circuit
var faulty_circuit = VanillaFactory.createItem("faulty_circuit");
faulty_circuit.setMaxStackSize(64);

faulty_circuit.register();


// Wrapped Bone
var wrapped_bone = VanillaFactory.createItem("wrapped_bone");
wrapped_bone.setMaxStackSize(64);

wrapped_bone.register();


// Bottled Veggies
var bottled_tomato = VanillaFactory.createItem("bottled_tomato");
bottled_tomato.setMaxStackSize(64);

bottled_tomato.register();


var bottled_pepper = VanillaFactory.createItem("bottled_pepper");
bottled_pepper.setMaxStackSize(64);

bottled_pepper.register();

// Bottled Cocoa Beans
var bottled_cocoa = VanillaFactory.createItem("bottled_cocoa");
bottled_cocoa.setMaxStackSize(64);

bottled_cocoa.register();


print("items.zs loaded");
