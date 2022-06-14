#loader contenttweaker

import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

print("items.zs loading...");

// Fibrous String
var fiber_string = VanillaFactory.createItem("fibrous_string");
fiber_string.setMaxStackSize(64);

fiber_string.register();


// Iron Rod
var iron_rod = VanillaFactory.createItem("iron_rod");
iron_rod.setMaxStackSize(64);

iron_rod.register();


// Bone Stick
var bone_stick = VanillaFactory.createItem("bone_stick");
bone_stick.setMaxStackSize(64);

bone_stick.register();


// Heat Exchanger
var heat_exchanger = VanillaFactory.createItem("heat_exchanger");
heat_exchanger.setMaxStackSize(1);

heat_exchanger.register();


// Advanced Wiring Kit
var advanced_wiring_kit = VanillaFactory.createItem("advanced_wiring_kit");
advanced_wiring_kit.setMaxStackSize(64);

advanced_wiring_kit.register();


// Fish Oil
var fish_oil = VanillaFactory.createItem("fish_oil");
fish_oil.setMaxStackSize(64);

fish_oil.register();


// Circuit
var circuit = VanillaFactory.createItem("circuit");
circuit.setMaxStackSize(64);

circuit.register();


// Water Filter
var water_filter = VanillaFactory.createItem("water_filter");
water_filter.setMaxStackSize(4);

water_filter.register();


// Dirty Filter
var dirty_filter = VanillaFactory.createItem("dirty_filter");
dirty_filter.setMaxStackSize(4);

dirty_filter.register();


print("items.zs loaded");