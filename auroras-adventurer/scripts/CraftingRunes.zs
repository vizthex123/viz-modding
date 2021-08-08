# Things related to the Crafting Runes mod
# Note that mod-specific recipes will be in their mods' script(s)
/*
recipes.addShaped(<output>, [[<null>, <null>, <null>],
                                      [<null>, <null>, <null>],
                                      [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
recipes.remove(<item>);
recipes.removeShaped(<item>);
recipes.removeShapeless(<item>);

<item>.displayName = "New Name";
<item>.addTooltip("Tooltip");
<item>.addShiftTooltip("Tooltip");

sccraftingrunes:itemcommonmat
sccraftingrunes:itemuncommonmat
sccraftingrunes:itemraremat
sccraftingrunes:itemlegendarymat
*/
print("Loading CraftingRunes.zs...");

// Rename Runes
<sccraftingrunes:itemmatbag>.displayName = "Obscured Ancient Rune";
<sccraftingrunes:itemcommonmat>.displayName = "Ancient Caier Rune";
<sccraftingrunes:itemuncommonmat>.displayName = "Ancient Uy'yeh Rune";
<sccraftingrunes:itemraremat>.displayName = "Ancient Ra'oul Rune";
<sccraftingrunes:itemlegendarymat>.displayName = "Ancient Laous Rune";

// Add lore tooltips
<sccraftingrunes:itemmatbag>.addTooltip(format.lightPurple("An ancient rune, once thought to be lost"));
<sccraftingrunes:itemmatbag>.addTooltip(format.lightPurple("It seems to have something written on it..."));

<sccraftingrunes:itemcommonmat>.addShiftTooltip(format.lightPurple("Thought to be lost, this rune was used to symbolize safety, or the destruction of it"));
<sccraftingrunes:itemuncommonmat>.addShiftTooltip(format.lightPurple("Thought to be lost, this rune was used to ensure good luck"));
<sccraftingrunes:itemraremat>.addShiftTooltip(format.lightPurple("Thought to be lost, this rune was used to denote those with a silver tongue,"));
<sccraftingrunes:itemraremat>.addShiftTooltip(format.lightPurple("and grant good health to the bearer"));
<sccraftingrunes:itemlegendarymat>.addShiftTooltip(format.lightPurple("Thought to be lost, this rune was used to represent a bright future"));


// Upgrade/Downgrade Runes
// 4 of the previous tier makes 1 of the next, and vica-versa
recipes.addShapeless(<sccraftingrunes:itemuncommonmat>, [<sccraftingrunes:itemcommonmat>, <sccraftingrunes:itemcommonmat>, <sccraftingrunes:itemcommonmat>, <sccraftingrunes:itemcommonmat>]);
recipes.addShapeless(<sccraftingrunes:itemraremat>, [<sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemuncommonmat>]);
recipes.addShapeless(<sccraftingrunes:itemlegendarymat>, [<sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>]);

recipes.addShapeless(<sccraftingrunes:itemcommonmat>*4, [<sccraftingrunes:itemuncommonmat>]);
recipes.addShapeless(<sccraftingrunes:itemuncommonmat>*4, [<sccraftingrunes:itemraremat>]);
recipes.addShapeless(<sccraftingrunes:itemraremat>*4, [<sccraftingrunes:itemlegendarymat>]);

// Craft Chance Cubes with Rare runes
recipes.remove(<chancecubes:chance_cube>);
recipes.addShaped(<chancecubes:chance_cube>*4, [[<sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>],
                                   			                      [<sccraftingrunes:itemraremat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemraremat>],
                            			                      [<sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>]]);

// Make a Chance Icosahedron without a thicc crafting table
recipes.addShaped(<chancecubes:chance_icosahedron>*2, [[<sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemuncommonmat>],
                              				            [<sccraftingrunes:itemuncommonmat>, <chancecubes:chance_cube>, <sccraftingrunes:itemuncommonmat>],
                                   				            [<sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemuncommonmat>]]);

// Add recipe for Compact Giant Chance Cubes
recipes.addShaped(<chancecubes:compact_giant_chance_cube>*2, [[<chancecubes:chance_cube>, <chancecubes:chance_cube>, <chancecubes:chance_cube>],
                                     					            [<chancecubes:chance_cube>, <chancecubes:chance_icosahedron>, <chancecubes:chance_cube>],
                                				                               [<chancecubes:chance_cube>, <chancecubes:chance_cube>, <chancecubes:chance_cube>]]);

print("CraftingRunes.zs loaded");