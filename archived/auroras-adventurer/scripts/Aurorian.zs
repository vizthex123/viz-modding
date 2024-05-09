# Adds things to the Aurorian Mod's crafting stations (Moonlight Forge and Scrapper)
/*
mods.theaurorian.MoonlightForge.addRecipe(<input>, <catalyst>, <output>);
mods.theaurorian.Scrapper.addRecipe(<input>, <output>);
*/

import mods.theaurorian.Scrapper;
import mods.theaurorian.MoonlightForge;

print("Loading Aurorian.zs...");

# Moonlight Forge

// Add recipes to craft Aurorian Crystals
mods.theaurorian.MoonlightForge.addRecipe(<ebwizardry:magic_crystal>, <theaurorian:moonstoneingot>, <theaurorian:crystal>);
mods.theaurorian.MoonlightForge.addRecipe(<ebwizardry:magic_crystal:*>, <extrautils2:ingredients:5>, <theaurorian:crystal>*4);
mods.theaurorian.MoonlightForge.addRecipe(<ebwizardry:grand_crystal>, <minecraft:glowstone>, <theaurorian:crystal>*64);

// Change recipe for Moon Stones
recipes.remove(<extrautils2:ingredients:5>);
mods.theaurorian.MoonlightForge.addRecipe(<minecraft:diamond>, <extrautils2:ingredients:3>*8, <extrautils2:ingredients:5>);
mods.theaurorian.MoonlightForge.addRecipe(<extrautils2:unstableingots:2>, <extrautils2:ingredients:3>*8, <extrautils2:ingredients:5>*8);


# Scrapper

mods.theaurorian.Scrapper.addRecipe(<aether_legacy:zanite_pickaxe>, <aether_legacy:zanite_gemstone>*3);
mods.theaurorian.Scrapper.addRecipe(<aether_legacy:zanite_axe>, <aether_legacy:zanite_gemstone>*3);
mods.theaurorian.Scrapper.addRecipe(<aether_legacy:zanite_sword>, <aether_legacy:zanite_gemstone>*2);
mods.theaurorian.Scrapper.addRecipe(<aether_legacy:zanite_shovel>, <aether_legacy:zanite_gemstone>*1);


# Misc
// Wooden Shears with Silentwood
recipes.addShaped(<thermalfoundation:tool.shears_wood>, [[null, <theaurorian:silentwoodplanks>, null],
                                    	                			                   [<theaurorian:silentwoodplanks>, null, null],
                                   	                			                   [null, null, null]]);

print("Aurorian.zs loaded");