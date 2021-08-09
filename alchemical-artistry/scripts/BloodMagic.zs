# Adds/changes recipes for Blood Magic's stuff

print("BloodMagic.zs loading...");
/*
<recipetype:bloodmagic:arc>.addRecipe("name", <output>, <fluid_output>, <input>, <fluid_input>, <arcTool>, consume=true/false, [<4-extra_outputs>]);

Extra outputs can be weighted with % amount at the end (like TE machines do)
*/

// Maybe add ice recipes?

# Craft the Sigil of the Frozen Lake
// Reagent
<recipetype:bloodmagic:alchemytable>.addRecipe("frozen_reagent", <item:contenttweaker:frozen_reagent>, [<item:bloodmagic:reagentwater>, <item:bloodmagic:reagentair>, <item:minecraft:packed_ice>|<item:minecraft:blue_ice>|<item:minecraft:ice>|<item:mowziesmobs:ice_crystal>, <item:minecraft:water_bucket>], 5000, 200, 3);

// Sigil
// Need to change the texture later though
<recipetype:bloodmagic:array>.addRecipe("frozen_lake_sigil", <item:bloodmagic:icesigil>, <item:contenttweaker:frozen_reagent>, <item:bloodmagic:infusedslate>, <resource:bloodmagic:textures/models/alchemyarrays/watersigil.png>);

# Recycle Tartaric Gems
// Petty
<recipetype:bloodmagic:arc>.addRecipe("recycle_petty_tartaric_gem", <item:minecraft:glass>, <fluid:minecraft:empty>, <item:bloodmagic:soulgempetty>, <fluid:minecraft:empty>, <item:bloodmagic:sanguinereverter>.anyDamage(), true, [<item:minecraft:gold_ingot> % 100, <item:minecraft:lapis_lazuli> % 100,  <item:minecraft:redstone> % 100]);

// Lesser
<recipetype:bloodmagic:arc>.addRecipe("recycle_lesser_tartaric_gem", <item:minecraft:diamond>, <fluid:minecraft:empty>, <item:bloodmagic:soulgemlesser>, <fluid:minecraft:empty>, <item:bloodmagic:sanguinereverter>.anyDamage(), true, [<item:minecraft:redstone_block> % 100, <item:minecraft:lapis_block> % 100]);

// Common
<recipetype:bloodmagic:arc>.addRecipe("recycle_common_tartaric_gem", <item:minecraft:gold_block>, <fluid:minecraft:empty>, <item:bloodmagic:soulgemcommon>, <fluid:minecraft:empty>, <item:bloodmagic:sanguinereverter>.anyDamage(), true, [<item:minecraft:diamond> % 100, <item:bloodmagic:infusedslate> % 100]);

// Greater
<recipetype:bloodmagic:arc>.addRecipe("recycle_greater_tartaric_gem", <item:bloodmagic:weakbloodshard>, <fluid:minecraft:empty>, <item:bloodmagic:soulgemgreater>, <fluid:minecraft:empty>, <item:bloodmagic:sanguinereverter>.anyDamage(), true, [<item:bloodmagic:demonslate> % 100, <item:bloodmagic:defaultcrystal> % 50]);

print("BloodMagic.zs loaded");