# Changes things related to Blood Magic
// Note that Blood Arsenal items are in JEI.zs and renames_tooltips.zs
// Blood Altar recipes for the Hearts are in health.zs
// Blood Altar recipe for the Philosopher's Stone is in ProjectE.zs
// Recipes for my items are in CustomItems.zs
/*
<item>.addTooltip("Tooltip");
<item>.addShiftTooltip("Tooltip");
<item>.displayName = "New Name";

{souls:10.0d}

Reward: Sigil Tier * 5 = Will Power

Exceptions:

Lava - 6.5
Green Grove - 7.5
Elemental Affinity - 20
Ender Severance - 22.5
Teleposition - 22.5
Transposition - 22.5
Whirlwind - 30

Speed rune stacking works linearly, like Risk of Rain 2 items (2 runes = +40% speed)

mods.bloodmagic.TartaricForge.addRecipe([<inputs-4 max>], <minimum_will>, <will_drain>);
*/

print("Loading BloodMagic.zs...");

// Arcane Ashes have 20 durability
<bloodmagic:arcane_ashes>.maxDamage = 20;

// Boosted Rudimentary Snare recipe
// Gives 8 instead of 4, but uses Gold & Botania items
recipes.addShaped(<bloodmagic:soul_snare>*12, [[<botania:manaresource:16>, <ore:ingotGold>, <botania:manaresource:16>],
                                    			                 [<ore:ingotGold>, <botania:manaresource:23>, <ore:ingotGold>],
                                 			                 [<botania:manaresource:16>, <ore:ingotGold>, <botania:manaresource:16>]]);
# Blood Altar recipes
# Remember the far right number is amount drained when not given enough LP
# Number next to it is crafting consumption
// Add a recipe for Blood Bronze
// Should cost a bit more than alloying it
mods.bloodmagic.BloodAltar.addRecipe(<bloodtinker:blood_bronze_ingot>, <thermalfoundation:material:163>, 0, 1500, 5, 15);

// Add an alternate recipe for Blood Infused Glowstone
mods.bloodmagic.BloodAltar.addRecipe(<bloodarsenal:blood_infused_glowstone>, <minecraft:glowstone>, 2, 10500, 20, 20);

// Recipe for Transmutation Shards
mods.bloodmagic.BloodAltar.addRecipe(<retroexchange:transmutation_shard>, <aether_legacy:ambrosium_shard>, 0, 10000, 20, 110);

// Recipe for Chaotic Matter
mods.bloodmagic.BloodAltar.addRecipe(<elementaristics:matter_chaotic>, <elementaristics:essence:9>, 3, 26845, 135, 1000);

// Life & Soul Essence
mods.bloodmagic.BloodAltar.addRecipe(<elementaristics:essence:10>, <minecraft:soul_sand>, 1, 12500, 25, 125);
mods.bloodmagic.BloodAltar.addRecipe(<elementaristics:essence:16>, <elementaristics:essence:10>, 2, 20000, 50, 150);

// Add a recipe for the Sigil of the Whirlwind
mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:sigil_whirlwind>, <aurorianitems:whirlwindreagent>, <bloodmagic:slate:4>, "bloodmagic:textures/models/AlchemyArrays/WhirlwindSigil.png");

// Recipe to duplicate Weak Blood Shards, like in old mod versions
// Requires a T4 altar (to get the Master Blood Orb)
recipes.addShapeless(<bloodmagic:blood_shard>*2, [<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"})|<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}), <bloodmagic:slate:2>, <bloodmagic:blood_shard>]);


# Hellfire Forge recipes
// Body Essence
mods.bloodmagic.TartaricForge.addRecipe(<elementaristics:essence:9>, [<elementaristics:essence:16>, <elementaristics:essence:10>], 100, 25);

# Renames
<bloodmagic:blood_rune>.displayName = "Blank Blood Rune";
<bloodmagic:component:15>.displayName = "Spectral Reagent";
<bloodarsenal:slate>.displayName = "Slate Block";

# Tooltips
<bloodmagic:soul_forge>.addTooltip("Or 'Tartaric Forge'");

// Blood Runes
<bloodmagic:blood_rune:1>.addTooltip(format.darkRed("Increases LP infusion speed by 20%"));
<bloodmagic:blood_rune:1>.addTooltip(format.darkGreen("Stacks linearly (e.g. 2 runes gives +40%)"));
#	<bloodmagic:blood_rune:2>.addTooltip(format.darkRed("Reduces progress loss on interrupted infusions"));
<bloodmagic:blood_rune:3>.addTooltip(format.darkRed("Increases LP gained from the Dagger of Sacrifice by 10%"));
<bloodmagic:blood_rune:4>.addTooltip(format.darkRed("Increases LP gained from the Sacrifical Dagger by 20"));
<bloodmagic:blood_rune:5>.addTooltip(format.darkRed("Increases the LP transfer rate by 20%"));
<bloodmagic:blood_rune:5>.addTooltip(format.darkGreen("Only useful for automation"));
<bloodmagic:blood_rune:6>.addTooltip(format.darkRed("Increases Altar LP capacity by 2,000"));
<bloodmagic:blood_rune:7>.addTooltip(format.darkRed("Increases Altar LP capacity by 10%"));
<bloodmagic:blood_rune:8>.addTooltip(format.darkRed("Increases storage of your LP network by 2%"));
<bloodmagic:blood_rune:9>.addTooltip(format.darkRed("Special way of increasing infusion speed"));
<bloodmagic:blood_rune:9>.addTooltip(format.lightPurple("Refer to the FTB Wiki or Sanguine Scientiem for forumla used"));
<bloodmagic:blood_rune:10>.addTooltip(format.darkRed("Converts LP to Charge [1:1]"));
<bloodmagic:blood_rune:10>.addTooltip(format.darkRed("Items will insta-craft if enough Charge is held."));
<bloodmagic:blood_rune:10>.addTooltip(format.darkGreen("Maximum capacity is 1,000 Charge"));
<bloodmagic:blood_rune:10>.addTooltip(format.darkRed(format.bold(format.underline("Drains LP until filled"))));


// Blood Orbs
<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}).addTooltip(format.darkRed("Tier 1"));
<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}).addTooltip(format.darkRed("Tier 2"));
<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}).addTooltip(format.darkRed("Tier 3"));
<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}).addTooltip(format.darkRed("Tier 4"));
<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}).addTooltip(format.darkRed("Tier 5"));

<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}).addTooltip(format.darkRed("Base Life Network Storage: 5,000 LP"));
<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}).addTooltip(format.darkRed("Base Life Network Storage: 25,000 LP"));
<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}).addTooltip(format.darkRed("Base Life Network Storage: 150,000 LP"));
<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}).addTooltip(format.darkRed("Base Life Network Storage: 1,000,000 LP"));
<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}).addTooltip(format.darkRed("Base Life Network Storage: 10,000,000 LP"));


// Sigils
<bloodmagic:sigil_air>.addTooltip("50 LP per use");
<bloodmagic:sigil_water>.addTooltip("100 LP per use");
<bloodmagic:sigil_lava>.addTooltip("1,000 LP per use");
<bloodmagic:sigil_void>.addTooltip("50 LP per use");
<bloodmagic:sigil_green_grove>.addTooltip("LP use varies");
<bloodmagic:sigil_blood_light>.addTooltip("10 LP per use");

<bloodmagic:sigil_elemental_affinity>.addTooltip("Drains 200 LP every 10 seconds while active");
<bloodmagic:sigil_elemental_affinity>.addTooltip("Shift+right-click to toggle");

<bloodmagic:sigil_magnetism>.addTooltip("Drains 50 LP every 10 seconds while active");
<bloodmagic:sigil_magnetism>.addTooltip("Has a range of 5 blocks");
<bloodmagic:sigil_magnetism>.addTooltip("Shift+right-click to toggle");

<bloodmagic:sigil_suppression>.addTooltip("Drains 400 LP every 10 seconds while active");
<bloodmagic:sigil_suppression>.addTooltip("Has a range of 5 blocks");
<bloodmagic:sigil_suppression>.addTooltip("Shift+right-click to toggle");

<bloodmagic:sigil_haste>.addTooltip("Drains 250 LP every 10 seconds while active");
<bloodmagic:sigil_haste>.addTooltip("Shift+right-click to toggle");

<bloodmagic:sigil_fast_miner>.addTooltip("Drains 100 LP every 10 seconds while active");
<bloodmagic:sigil_fast_miner>.addTooltip("Shift+right-click to toggle");

<bloodmagic:sigil_phantom_bridge>.addTooltip("Drains 100 LP every 10 seconds while active");
<bloodmagic:sigil_phantom_bridge>.addTooltip("Shift+right-click to toggle");

<bloodmagic:sigil_whirlwind>.addTooltip("Drains 250 LP every 10 seconds while active");
<bloodmagic:sigil_whirlwind>.addTooltip("Shift+right-click to toggle");

<bloodmagic:sigil_compression>.addTooltip("Drains 200 LP every 10 seconds while active");
<bloodmagic:sigil_compression>.addTooltip("Shift+right-click to toggle");

<bloodmagic:sigil_ender_severance>.addTooltip("Drains 200 LP every 10 seconds while active");
<bloodmagic:sigil_ender_severance>.addTooltip("Shift+right-click to toggle");

<bloodmagic:sigil_teleposition>.addTooltip("1,000 LP per use");
<bloodmagic:sigil_transposition>.addTooltip("1,000 LP per use");

<bloodmagic:sigil_claw>.addTooltip(format.red("Disabled - doesn't work"));

<bloodmagic:sigil_bounce>.addTooltip("Drains 100 LP every 10 seconds when active");
<bloodmagic:sigil_bounce>.addTooltip("Shift+right-click to toggle");

<bloodmagic:sigil_frost>.addTooltip("Drains 100 LP every 10 seconds when active");
<bloodmagic:sigil_frost>.addTooltip("Shift+right-click to toggle");

/*
# Remove Divinity Recipes
// Seems to half-work?
mods.bloodmagic.TartaricForge.removeRecipe([<bloodarsenal:base_item:8>, <bloodmagic:decorative_brick>, <minecraft:golden_apple:1>, <minecraft:nether_star>]);
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodarsenal:base_item:9>, <bloodmagic:slate:4>);
<bloodarsenal:base_item:9>.addTooltip(format.darkRed("THIS ITEM DOES NOTHING!"));
<bloodarsenal:base_item:9>.addTooltip(format.bold("DO NOT CRAFT IT!"));
*/
print("BloodMagic.zs loaded");