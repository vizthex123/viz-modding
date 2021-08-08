# Adds tooltips and renames items
print("renames_tooltips.zs loading...");
/*
<item>.displayName = "New Name";
<item>.addTooltip("Tooltip");
<item>.addShiftTooltip("Tooltip");
*/

<treasure2:white_pearl>.displayName = "Pearl";
<worsesolars:solar_cell>.displayName = "Solar Cell";

<enderio:item_alloy_ingot:9>.displayName = "Construction Alloy";
<modularmachinery:itemmodularium>.displayName = "Modularium Ingot";
<bonecraft:bonehelmitem>.displayName = "Bone Helmet";
<bonecraft:bonechestitem>.displayName = "Bone Chestplate";
<bonecraft:bonelegsitem>.displayName = "Bone Leggings";
<harvestcraft:hardenedleatherhelmitem>.displayName = "Hardened Leather Helmet";
<harvestcraft:hardenedleatherchestitem>.displayName = "Hardened Leather Chestplate";
<er:oredust>.displayName = "Proto-Emerald Dust";

<wopper:wopper>.displayName = "Wooden Hopper";
<openblocks:sponge_on_a_stick>.displayName = "Sponge on a Stick";
<coalprocessing:diamond_machine>.displayName = "Carbon Compressor";
<coalprocessing:compressed_coal>.displayName = "Compressed Carbon";
<aquaculture:food:2>.displayName = "Large Fish Fillet";
<aquaculture:food:5>.displayName = "Large Cooked Fish Fillet";
<aquaculture:food:6>.displayName = "Fish Fillet Burger";
<aquaculture:food:10>.displayName = "Sushi Roll";

###############################################################################
# 				TOOLTIPS				               #
###############################################################################
<waystones:return_scroll>.addTooltip(format.gold("Single-use item to return to whatever Waystone was used (or placed) last"));
<waystones:bound_scroll>.addTooltip(format.gold("Single-use item to teleport to whatever Waystone it was bound too"));
<waystones:warp_scroll>.addTooltip(format.gold("Single-use item to teleport to any Waystone"));
<waystones:warp_stone>.addTooltip(format.gold("Acts like a portable Waystone"));

<wopper:wopper>.addTooltip(format.green("Can be upgraded into a normal hopper"));
<enderio:block_experience_obelisk>.addTooltip(format.green("Stores up to 50 Levels of XP"));
<fluidfunnel:tank>.addTooltip(format.aqua("Holds 4,000 mB (4 buckets) of fluid"));

<comforts:rope>.addTooltip("Used to make a hammock. Check JEI for instructions.");


<better_diving:copper_ore>.addTooltip(format.aqua("Can be found in Limestone Outcrops"));
<better_diving:titanium>.addTooltip(format.aqua("Can be found in Limestone Outcrops"));

<better_diving:silver_ore>.addTooltip(format.aqua("Can be found in Sandstone Outcrops"));
<better_diving:gold>.addTooltip(format.aqua("Can be found in Sandstone Outcrops"));
<better_diving:lead>.addTooltip(format.aqua("Can be found in Sandstone Outcrops"));


# Dungeon Loot
<minecraft:iron_horse_armor>.addTooltip(format.aqua("Can be recycled in a recycler"));
<minecraft:golden_horse_armor>.addTooltip(format.aqua("Can be recycled in a recycler"));
<minecraft:name_tag>.addTooltip(format.aqua("Can be recycled in a recycler"));
<minecraft:saddle>.addTooltip(format.aqua("Can be recycled in a recycler"));


# Character Quips.
<waterstrainer:net:1>.addTooltip(format.white("I'll need to know more about sewing before I can make this correctly."));
<better_diving:bladderfish_cooked>.addTooltip(format.red("Why on earth would you make this?"));
<aquaculture:loot:2>.addTooltip(format.white("This looks more like an iron can to me..."));
<waterworks:materials>.addTooltip(format.white("Researching this could prove useful"));
<minecraft:fishing_rod>.addTooltip(format.red("I don't think this could catch much..."));
<simpledifficulty:ice_chestplate>.addTooltip(format.white("This will help keep me cool. Even moreso if I had a fulll set."));
<simpledifficulty:wool_chestplate>.addTooltip(format.white("This will help keep me warm. Even moreso if I had a fulll set."));
<simpledifficulty:campfire>.addTooltip(format.white("I'm sure I could use sticks to light this... if I just try hard enough, it has to work..."));


# Upgrade tooltips
<lootbags:loot_recycler>.addTooltip(format.white("Can be used to upgrade the Recycler. Doubles production speed"));
<solarfurnace:solarfurnace>.addTooltip(format.white("Can be used to upgrade the Recycler. Decreases power usage by 25%"));
<minecraft:cauldron>.addTooltip(format.white("Can be used to upgrade the Recycler. Increases chance of gaining an extra item by 10%"));
<modularmachinery:blockcasing:1>.addTooltip(format.white("Can be used to upgrade the Lava Fractioner. Increases processing speed by 50%"));
<modularmachinery:blockcasing:3>.addTooltip(format.white("Can be used to upgrade the Lava Fractioner. Increases output amount by 100 mB"));


print("renames_tooltips.zs loaded");