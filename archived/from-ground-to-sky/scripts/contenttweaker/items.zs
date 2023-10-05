#loader contenttweaker

import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

print("items.zs loading...");

// Question Mark
var qmark = VanillaFactory.createItem("qmark");
qmark.setMaxStackSize(1);

qmark.register();

// Papyrus
var papyrus = VanillaFactory.createItem("papyrus");
papyrus.setMaxStackSize(64);

papyrus.register();

// Fibrous String
// Stolen from Adrift lmao
var fiber_string = VanillaFactory.createItem("fibrous_string");
fiber_string.setMaxStackSize(64);

fiber_string.register();

// Pseudo Slime
// Stole the texture from Cyborg Runner lol
var slime = VanillaFactory.createItem("fake_slime");
slime.setMaxStackSize(64);

slime.register();

print("items.zs loaded");