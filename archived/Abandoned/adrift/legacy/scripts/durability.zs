# Sets durability values for various items
print("durability.zs loading...");
/*
<item>.maxDamage = NEWVALUE;
*/

// Boost Golden things to 100 durability (+30 on armour)
<minecraft:golden_sword>.maxDamage = 100;
<minecraft:golden_pickaxe>.maxDamage = 100;
<minecraft:golden_shovel>.maxDamage = 100;
<minecraft:golden_hoe>.maxDamage = 100;
<minecraft:golden_axe>.maxDamage = 100;

<minecraft:golden_helmet>.maxDamage = 107;
<minecraft:golden_chestplate>.maxDamage = 142;
<minecraft:golden_helmet>.maxDamage = 135;
<minecraft:golden_helmet>.maxDamage = 121;


// Massive nerf to Pristeel tools, reduces armour by 35
<pristeel:pristeel_sword>.maxDamage = 350;
<pristeel:pristeel_pickaxe>.maxDamage = 350;
<pristeel:pristeel_shovel>.maxDamage = 350;
<pristeel:pristeel_hoe>.maxDamage = 350;
<pristeel:pristeel_axe>.maxDamage = 350;

<pristeel:pristeel_dagger>.maxDamage = 150;

<pristeel:pristeel_helmet>.maxDamage = 240;
<pristeel:pristeel_chestplate>.maxDamage = 365;
<pristeel:pristeel_legs>.maxDamage = 340;
<pristeel:pristeel_boots>.maxDamage = 290;


// Nerf Bone Tools & armour to 150 (-50 for armour)
<bonecraft:bonesworditem>.maxDamage = 150;
<bonecraft:bonepickaxeitem>.maxDamage = 150;
<bonecraft:boneshovelitem>.maxDamage = 150;
<bonecraft:bonehoeitem>.maxDamage = 150;
<bonecraft:boneaxeitem>.maxDamage = 150;

<bonecraft:bonehelmitem>.maxDamage = 115;
<bonecraft:bonechestitem>.maxDamage = 190;
<bonecraft:bonelegsitem>.maxDamage = 175;
<bonecraft:bonebootsitem>.maxDamage = 145;


// Misc
<aquaculture:fishing_rod>.maxDamage = 64;
<chesttransporter:chesttransporter>.maxDamage = 3;

print("durability.zs loaded");