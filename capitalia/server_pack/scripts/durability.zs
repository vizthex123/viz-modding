# Sets durability values for (mostly TE) items
/*
<item>.maxDamage = NEWVALUE;
*/

print("durability.zs loading...");

// Misc
<refinedstorage:cutting_tool>.maxDamage = 50;
<longfallboots:longfallboots>.maxDamage = 300;
<magneticraft:stone_hammer>.maxDamage = 79;
<magneticraft:iron_hammer>.maxDamage = 255;
<magneticraft:steel_hammer>.maxDamage = 767;
<waystones:warp_stone>.maxDamage = 225;
<foundry:revolver>.maxDamage = 255;
<foundry:shotgun>.maxDamage = 255;
<natura:flint_and_blaze>.maxDamage = 256;

// Buff Iron tools
<minecraft:iron_sword>.maxDamage = 500;
<minecraft:iron_pickaxe>.maxDamage = 500;
<minecraft:iron_shovel>.maxDamage = 500;
<minecraft:iron_hoe>.maxDamage = 500;
<minecraft:iron_axe>.maxDamage = 500;

// Boost Golden things to 100 durability (+35 on armour)
<minecraft:golden_sword>.maxDamage = 100;
<minecraft:golden_pickaxe>.maxDamage = 100;
<minecraft:golden_shovel>.maxDamage = 100;
<minecraft:golden_hoe>.maxDamage = 100;
<minecraft:golden_axe>.maxDamage = 100;

<minecraft:golden_helmet>.maxDamage = 112;
<minecraft:golden_chestplate>.maxDamage = 147;
<minecraft:golden_helmet>.maxDamage = 140;
<minecraft:golden_helmet>.maxDamage = 126;

// Slight nerf to Diamond tools
<minecraft:diamond_sword>.maxDamage = 1500;
<minecraft:diamond_pickaxe>.maxDamage = 1500;
<minecraft:diamond_shovel>.maxDamage = 1500;
<minecraft:diamond_hoe>.maxDamage = 1500;
<minecraft:diamond_axe>.maxDamage = 1500;

// TE/Mekanism Tools & Weapons
/*
Bronze - 375
Steel - 850

Armour formula (Mekanism): AD = material base * 0.06 (rounded down)
Paxel formula (Mekanism): PD = material base * 1.25 (rounded to the nearest 5) 

TE Hammers & Excavators: ED = material base * 1.65 (rounded up to the nearest 5)
TE Sickles: SD = material base * 1.1
TE Bows: BD = material base * 0.5 (rounded down to the nearest 5) 

Vanilla Armour formula:
Helmet - D*11
Chest - D*16
Legs - D*15
Bots - D*13

"D" values:

Diamond = 40
Iron = 20
*/

print("Mekanism item durabilities have been changed in the mod's config!");

// bows -  material base * 0.5 
// sickles - material base * 1.1
<thermalfoundation:tool.bow_bronze>.maxDamage = 185;
<thermalfoundation:tool.sickle_bronze>.maxDamage = 410;

<thermalfoundation:tool.bow_iron>.maxDamage = 250;
<thermalfoundation:tool.sickle_iron>.maxDamage = 550;

<thermalfoundation:tool.bow_steel>.maxDamage = 425;
<thermalfoundation:tool.sickle_steel>.maxDamage = 935;

# TE Hammers & Excavators
// material base x1.65 (rounded up to the nearest 5)
// steel gets rounded down
<thermalfoundation:tool.hammer_bronze>.maxDamage = 620;
<thermalfoundation:tool.excavator_bronze>.maxDamage = 620;

<thermalfoundation:tool.hammer_iron>.maxDamage = 825;
<thermalfoundation:tool.excavator_iron>.maxDamage = 825;

<thermalfoundation:tool.hammer_steel>.maxDamage = 1400;
<thermalfoundation:tool.excavator_steel>.maxDamage = 1400;

// base x1.25 (rounded down)
<mekanismtools:woodpaxel>.maxDamage = 75;
<mekanismtools:stonepaxel>.maxDamage = 160;
<mekanismtools:ironpaxel>.maxDamage = 625;
<mekanismtools:diamondpaxel>.maxDamage = 1875;

<mekanismtools:goldpaxel>.maxDamage = 125;

print("durability.zs loaded");