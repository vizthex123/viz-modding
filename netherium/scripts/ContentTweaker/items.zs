#loader contenttweaker

import mods.contenttweaker.item.ItemBuilder;

# Blood & Pink Slime crystals

// Restores 25/50 Overslime
new ItemBuilder()
    .withMaxStackSize(64)
    .build("blood_crystal");

new ItemBuilder()
    .withMaxStackSize(64)
    .build("pink_slime_crystal");

# Re-add Lapis Sheets
// Texture by Create mod devs
new ItemBuilder()
    .withMaxStackSize(64)
    .build("lapis_sheet");


# Uranium fuel items

// Pellet (Smelts 16 items)
new ItemBuilder()
    .withMaxStackSize(32)
    .build("uranium_pellet");

// Drop (Smelts 32 items)
new ItemBuilder()
    .withMaxStackSize(16)
    .build("uranium_drop");

// Canister (Smelts 128 items)
new ItemBuilder()
    .withMaxStackSize(4)
    .build("uranium_canister");

// Rod (Smelts 512 items)
new ItemBuilder()
    .withMaxStackSize(2)
    .build("uranium_rod");

// Fuel Core (Smelts 2,048 items)
new ItemBuilder()
    .withMaxStackSize(1)
    .build("uranium_fuel_core");


// Wrapped Fuel Core
// No burn time, but stores cores for later use/mass transport. Stacks to 8 (made out of 4 cores).
new ItemBuilder()
    .withMaxStackSize(8)
    .build("wrapped_fuel_core");



# Netherrack Fuel Pod
new ItemBuilder()
    .withMaxStackSize(64)
    .build("netherrack_fuel_pod");