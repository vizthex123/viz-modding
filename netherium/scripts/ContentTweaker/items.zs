#loader contenttweaker

import mods.contenttweaker.item.ItemBuilder;

# Vitamin Sources

// Vitamin Tablet
// Restores 5% of Vitamins
new ItemBuilder()
    .withMaxStackSize(64)
    .build("vitamin_tablet");

// Bottle of Multi-Vitamins
// Restores 10% of everything
new ItemBuilder()
    .withMaxStackSize(16)
    .build("multi_vitamins");

// Fruit Gummy
// Restores 25% Fruits
new ItemBuilder()
    .withMaxStackSize(32)
    .build("fruit_gummy");

// Vegetable Oil
// Restores 25% Vegetables
new ItemBuilder()
    .withMaxStackSize(32)
    .build("vegetable_oil");

// Protein Supplement
// Get them G A I N Z, bro!
// Restores 15% Proteins
new ItemBuilder()
    .withMaxStackSize(32)
    .build("protein_supplement");

// Sugar Pill (lul)
// Restores 50% Sugars
new ItemBuilder()
    .withMaxStackSize(32)
    .build("sugar_pill");

// Cellulose Capsule
// Restores 20% Grains
new ItemBuilder()
    .withMaxStackSize(32)
    .build("cellulose_capsule");


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
    .withMaxStackSize(8)
    .build("uranium_canister");

// Rod (Smelts 512 items)
new ItemBuilder()
    .withMaxStackSize(4)
    .build("uranium_rod");

// Fuel Core (Smelts 2,048 items)
new ItemBuilder()
    .withMaxStackSize(1)
    .build("uranium_fuel_core");


// Wrapped Fuel Core
// No burn time, but stores cores for later use/mass transport. Stacks to 4 (made out of 4 cores).
new ItemBuilder()
    .withMaxStackSize(4)
    .build("wrapped_fuel_core");



# Netherrack Fuel Pod
new ItemBuilder()
    .withMaxStackSize(64)
    .build("netherrack_fuel_pod");