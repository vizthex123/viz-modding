# Adds recipes to the Bigger Crafting Tables mod
# Uses the in-game Creator blocks
# The Quantum Quarry's recipe is in quarries.zs
print("Loading BiggerCraftingTables.zs...");

# Changes all the table recipes to be basically free
recipes.remove(<biggercraftingtables:biggercraftingtable:*>);
recipes.addShapeless(<biggercraftingtables:biggercraftingtable>, [<ore:workbench>, <ore:workbench>]);
recipes.addShapeless(<biggercraftingtables:biggercraftingtable:1>, [<biggercraftingtables:biggercraftingtable>, <ore:workbench>]);
recipes.addShapeless(<biggercraftingtables:biggercraftingtable:2>, [<biggercraftingtables:biggercraftingtable:1>, <ore:workbench>, <ore:workbench>]);
recipes.addShapeless(<biggercraftingtables:biggercraftingtable:2>, [<biggercraftingtables:biggercraftingtable:1>, <biggercraftingtables:biggercraftingtable>]);

// Mob Spawner recipe
mods.biggercraftingtables.Huge.addShaped(<minecraft:mob_spawner>, 
	[[<actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>],
	[<actuallyadditions:item_misc:20>, <scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>, <actuallyadditions:item_misc:20>],
	[<actuallyadditions:item_misc:20>, <scalinghealth:heartdust>, <actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal_empowered:3>, <scalinghealth:heartdust>, <actuallyadditions:item_misc:20>],
	[<actuallyadditions:item_misc:20>, <scalinghealth:heartdust>, <actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:3>, <scalinghealth:heartdust>, <actuallyadditions:item_misc:20>],
	[<actuallyadditions:item_misc:20>, <scalinghealth:heartdust>, <actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal_empowered:3>, <scalinghealth:heartdust>, <actuallyadditions:item_misc:20>],
	[<actuallyadditions:item_misc:20>, <scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>, <actuallyadditions:item_misc:20>],
	[<actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>]]);


// Alternate recipe for the Heart Container
// Meant to be a more late-game thing
mods.biggercraftingtables.Huge.addShaped(<levelhearts:heart_container>, 
	[[<scalinghealth:heartdust>, <scalinghealth:heartdust>, null, null, null, <scalinghealth:heartdust>, <scalinghealth:heartdust>],
	[<scalinghealth:heartdust>, <scalinghealth:heartdust>, null, <elementaristics:essence:9>, null, <scalinghealth:heartdust>, <scalinghealth:heartdust>],
	[null, null, <scalinghealth:heartdust>, <tconstruct:edible:3>, <scalinghealth:heartdust>, null, null],
	[null, <elementaristics:essence:9>, <tconstruct:edible:3>, <twilightforest:charm_of_life_1>, <tconstruct:edible:3>, <elementaristics:essence:9>, null],
	[null, null, <scalinghealth:heartdust>, <tconstruct:edible:3>, <scalinghealth:heartdust>, null, null],
	[<scalinghealth:heartdust>, <scalinghealth:heartdust>, null, <elementaristics:essence:9>, null, <scalinghealth:heartdust>, <scalinghealth:heartdust>],
	[<scalinghealth:heartdust>, <scalinghealth:heartdust>, null, null, null, <scalinghealth:heartdust>, <scalinghealth:heartdust>]]);

// Recipe for the Angel Ring
// The conversion ones haven't been changed, as they're vanity-only so it's fine
recipes.removeShaped(<extrautils2:angelring:*>);
recipes.remove(<extrautils2:angelring>);
mods.biggercraftingtables.Huge.addShaped(<extrautils2:angelring>, 
	[[<sccraftingrunes:itemlegendarymat>, <scalinghealth:heartdust>, null, <ore:gemValuable>, null, <scalinghealth:heartdust>, <sccraftingrunes:itemlegendarymat>],
	[<scalinghealth:heartdust>, <scalinghealth:heartdust>, null, <extrautils2:ingredients>, null, <scalinghealth:heartdust>, <scalinghealth:heartdust>],
	[null, null, <redstonearsenal:material:192>, <minecraft:gold_ingot>, <redstonearsenal:material:192>, null, null],
	[null, <extrautils2:ingredients>, <minecraft:gold_ingot>, <projecte:item.pe_matter>, <minecraft:gold_ingot>, <extrautils2:ingredients>, null],
	[null, null, <redstonearsenal:material:192>, <minecraft:gold_ingot>, <redstonearsenal:material:192>, null, null],
	[<scalinghealth:heartdust>, <scalinghealth:heartdust>, null, <extrautils2:ingredients>, null, <scalinghealth:heartdust>, <scalinghealth:heartdust>],
	[<sccraftingrunes:itemlegendarymat>, <scalinghealth:heartdust>, null, <rftools:flight_module>, null, <scalinghealth:heartdust>, <sccraftingrunes:itemlegendarymat>]]);


# Recipe changes for the Toolkits
recipes.remove(<tinkersaddons:modifier_item:1>);
recipes.remove(<tinkersaddons:modifier_item:2>);
recipes.remove(<tinkersaddons:modifier_item:3>);
recipes.remove(<tinkersaddons:modifier_item:4>);

# Tier 1
// Iron
mods.biggercraftingtables.Big.addShaped(<tinkersaddons:modifier_item:1>, 
	[[<ore:gemValuable>, <bloodmagic:slate>, <sccraftingrunes:itemcommonmat>, <bloodmagic:slate>, <ore:gemValuable>],
	[null, <minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>, null],
	[<sccraftingrunes:itemcommonmat>, <minecraft:iron_ingot>, <minecraft:iron_block>, <minecraft:iron_ingot>, <sccraftingrunes:itemcommonmat>],
	[null, <minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>, null],
	[<ore:gemValuable>, <bloodmagic:slate>, <sccraftingrunes:itemcommonmat>, <bloodmagic:slate>, <ore:gemValuable>]]);

// Evil infused iron
mods.biggercraftingtables.Big.addShaped(<tinkersaddons:modifier_item:1> * 3, 
	[[<ore:gemValuable>, <bloodmagic:slate:1>, <sccraftingrunes:itemlegendarymat>, <bloodmagic:slate:1>, <ore:gemValuable>],
	[null, <extrautils2:ingredients:17>, <extrautils2:ingredients:17>, <extrautils2:ingredients:17>, null],
	[<sccraftingrunes:itemlegendarymat>, <extrautils2:ingredients:17>, <extrautils2:simpledecorative:2>, <extrautils2:ingredients:17>, <sccraftingrunes:itemlegendarymat>],
	[null, <extrautils2:ingredients:17>, <extrautils2:ingredients:17>, <extrautils2:ingredients:17>, null],
	[<ore:gemValuable>, <bloodmagic:slate:1>, <sccraftingrunes:itemlegendarymat>, <bloodmagic:slate:1>, <ore:gemValuable>]]);

# Tier 2
// Gold
mods.biggercraftingtables.Big.addShaped(<tinkersaddons:modifier_item:2>, 
	[[<ore:gemValuable>, <bloodmagic:slate:1>, <sccraftingrunes:itemuncommonmat>, <bloodmagic:slate:1>, <ore:gemValuable>],
	[null, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, null],
	[<sccraftingrunes:itemuncommonmat>, <minecraft:gold_ingot>, <minecraft:gold_block>, <minecraft:gold_ingot>, <sccraftingrunes:itemuncommonmat>],
	[null, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, null],
	[<ore:gemValuable>, <bloodmagic:slate:1>, <sccraftingrunes:itemuncommonmat>, <bloodmagic:slate:1>, <ore:gemValuable>]]);

// Enchanted Metal
mods.biggercraftingtables.Big.addShaped(<tinkersaddons:modifier_item:2> * 3,
	[[<ore:gemValuable>, <bloodmagic:slate:2>, <sccraftingrunes:itemraremat>, <bloodmagic:slate:2>, <ore:gemValuable>],
	[null, <extrautils2:ingredients:12>, <extrautils2:ingredients:12>, <extrautils2:ingredients:12>, null],
	[<sccraftingrunes:itemraremat>, <extrautils2:ingredients:12>, <extrautils2:simpledecorative>, <extrautils2:ingredients:12>, <sccraftingrunes:itemraremat>],
	[null, <extrautils2:ingredients:12>, <extrautils2:ingredients:12>, <extrautils2:ingredients:12>, null],
	[<ore:gemValuable>, <bloodmagic:slate:2>, <sccraftingrunes:itemraremat>, <bloodmagic:slate:2>, <ore:gemValuable>]]);

# Tier 3
// Diamond
mods.biggercraftingtables.Big.addShaped(<tinkersaddons:modifier_item:3>, 
	[[<ore:scrapIngot>, <sccraftingrunes:itemraremat>, <bloodmagic:slate:3>, <sccraftingrunes:itemraremat>, <ore:scrapIngot>],
	[<sccraftingrunes:itemraremat>, <minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>, <sccraftingrunes:itemraremat>],
	[<bloodmagic:slate:3>, <minecraft:diamond>, <minecraft:diamond_block>, <minecraft:diamond>, <bloodmagic:slate:3>],
	[<sccraftingrunes:itemraremat>, <minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>, <sccraftingrunes:itemraremat>],
	[<ore:scrapIngot>, <sccraftingrunes:itemraremat>, <bloodmagic:slate:3>, <sccraftingrunes:itemraremat>, <ore:scrapIngot>]]);

// Astral Diamonds + Enchanted Metal
mods.biggercraftingtables.Big.addShaped(<tinkersaddons:modifier_item:3> * 2, 
	[[<extrautils2:ingredients:12>, null, <sccraftingrunes:itemlegendarymat>, null, <extrautils2:ingredients:12>],
	[null, null, <bloodmagic:slate:4>, null, null],
	[<sccraftingrunes:itemlegendarymat>, <ebwizardry:astral_diamond>, <ore:gemBlockValuable>, <ebwizardry:astral_diamond>, <sccraftingrunes:itemlegendarymat>],
	[null, null, <bloodmagic:slate:4>, null, null],
	[<extrautils2:ingredients:12>, null, <sccraftingrunes:itemlegendarymat>, null, <extrautils2:ingredients:12>]]);

// Astral Diamonds + Evil Iron
mods.biggercraftingtables.Big.addShaped(<tinkersaddons:modifier_item:3> * 4, 
	[[<extrautils2:ingredients:17>, null, <sccraftingrunes:itemlegendarymat>, null, <extrautils2:ingredients:17>],
	[null, <bloodmagic:slate:2>, <bloodmagic:slate:4>, <bloodmagic:slate:2>, null],
	[<sccraftingrunes:itemlegendarymat>, <ebwizardry:astral_diamond>, <ore:gemBlockValuable>, <ebwizardry:astral_diamond>, <sccraftingrunes:itemlegendarymat>],
	[null, <bloodmagic:slate:2>, <bloodmagic:slate:4>, <bloodmagic:slate:2>, null],
	[<extrautils2:ingredients:17>, null, <sccraftingrunes:itemlegendarymat>, null, <extrautils2:ingredients:17>]]);

# Tier 4
// Ender Pearls
mods.biggercraftingtables.Big.addShaped(<tinkersaddons:modifier_item:4>, 
	[[<bloodmagic:slate:4>, <sccraftingrunes:itemlegendarymat>, null, <sccraftingrunes:itemlegendarymat>, <bloodmagic:slate:4>],
	[<sccraftingrunes:itemlegendarymat>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <sccraftingrunes:itemlegendarymat>],
	[null, <minecraft:ender_pearl>, <actuallyadditions:block_misc:6>, <minecraft:ender_pearl>, null],
	[<sccraftingrunes:itemlegendarymat>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <sccraftingrunes:itemlegendarymat>],
	[<bloodmagic:slate:4>, <sccraftingrunes:itemlegendarymat>, null, <sccraftingrunes:itemlegendarymat>, <bloodmagic:slate:4>]]);

// Mana Pearls
mods.biggercraftingtables.Big.addShaped(<tinkersaddons:modifier_item:4> * 2, 
	[[<theaurorian:auroriansteel>, <sccraftingrunes:itemlegendarymat>, <bloodmagic:slate:4>, <sccraftingrunes:itemlegendarymat>, <theaurorian:auroriansteel>],
	[<sccraftingrunes:itemlegendarymat>, <botania:manaresource:1>, <botania:manaresource:1>, <botania:manaresource:1>, <sccraftingrunes:itemlegendarymat>],
	[<bloodmagic:slate:4>, <botania:manaresource:1>, <actuallyadditions:block_misc:6>, <botania:manaresource:1>, <bloodmagic:slate:4>],
	[<sccraftingrunes:itemlegendarymat>, <botania:manaresource:1>, <botania:manaresource:1>, <botania:manaresource:1>, <sccraftingrunes:itemlegendarymat>],
	[<theaurorian:auroriansteel>, <sccraftingrunes:itemlegendarymat>, <bloodmagic:slate:4>, <sccraftingrunes:itemlegendarymat>, <theaurorian:auroriansteel>]]);

// Infused Ender Pearls
mods.biggercraftingtables.Big.addShaped(<tinkersaddons:modifier_item:4> * 4, 
	[[<deepmoblearning:glitch_infused_ingot>, <sccraftingrunes:itemlegendarymat>, <bloodmagic:slate:4>, <sccraftingrunes:itemlegendarymat>, <deepmoblearning:glitch_infused_ingot>],
	[<sccraftingrunes:itemlegendarymat>, <rftools:infused_enderpearl>, <rftools:infused_enderpearl>, <rftools:infused_enderpearl>, <sccraftingrunes:itemlegendarymat>],
	[<bloodmagic:slate:4>, <rftools:infused_enderpearl>, <actuallyadditions:block_misc:6>, <rftools:infused_enderpearl>, <bloodmagic:slate:4>],
	[<sccraftingrunes:itemlegendarymat>, <rftools:infused_enderpearl>, <rftools:infused_enderpearl>, <rftools:infused_enderpearl>, <sccraftingrunes:itemlegendarymat>],
	[<deepmoblearning:glitch_infused_ingot>, <sccraftingrunes:itemlegendarymat>, <bloodmagic:slate:4>, <sccraftingrunes:itemlegendarymat>, <deepmoblearning:glitch_infused_ingot>]]);



// Recipe for the Simulation Chamber
recipes.remove(<deepmoblearning:simulation_chamber>);
mods.biggercraftingtables.Big.addShaped(<deepmoblearning:simulation_chamber>,
	[[null, null, <minecraft:redstone_torch>, null, null],
	[null, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, null],
	[<minecraft:ender_pearl>, <actuallyadditions:item_misc:20>, <deepmoblearning:machine_casing>, <actuallyadditions:item_misc:20>, <minecraft:ender_pearl>],
	[<minecraft:ender_pearl>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <minecraft:ender_pearl>],
	[<ebwizardry:magic_crystal>, <theaurorian:crystal>, <theaurorian:crystal>, <theaurorian:crystal>, <ebwizardry:magic_crystal>]]);

// Recipes for the Loot Fabricator
recipes.remove(<deepmoblearning:extraction_chamber>);
mods.biggercraftingtables.Big.addShaped(<deepmoblearning:extraction_chamber>,
	[[null, null, <minecraft:redstone_torch>, null, null],
	[null, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, null],
	[<ore:gemValuable>, <actuallyadditions:item_misc:20>, <deepmoblearning:machine_casing>, <actuallyadditions:item_misc:20>, <ore:gemValuable>],
	[<ore:gemValuable>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <ore:gemValuable>],
	[<ore:gemLapis>, <minecraft:repeater>, <theaurorian:crystal>, <minecraft:repeater>, <ore:gemLapis>]]);

# Bedrock Bricks
mods.biggercraftingtables.Giant.addShaped(<extrautils2:decorativebedrock> * 8,
	[[<sccraftingrunes:itemraremat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemraremat>],
	[<sccraftingrunes:itemlegendarymat>, <ore:stickStone>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <ore:stickStone>, <sccraftingrunes:itemlegendarymat>],
	[<sccraftingrunes:itemlegendarymat>, <minecraft:obsidian>, <ore:stickStone>, <theaurorian:auroriansteel>, <theaurorian:auroriansteel>, <theaurorian:auroriansteel>, <ore:stickStone>, <minecraft:obsidian>, <sccraftingrunes:itemlegendarymat>],
	[<sccraftingrunes:itemlegendarymat>, <minecraft:obsidian>, <extrautils2:ingredients:11>, <sct:stone_crafting_plate>, <ore:gemBlockValuable>, <sct:stone_crafting_plate>, <extrautils2:ingredients:11>, <minecraft:obsidian>, <sccraftingrunes:itemlegendarymat>],
	[<sccraftingrunes:itemlegendarymat>, <minecraft:obsidian>, <extrautils2:ingredients:11>, <ore:gemBlockValuable>, <sct:stone_crafting_plate>, <ore:gemBlockValuable>, <extrautils2:ingredients:11>, <minecraft:obsidian>, <sccraftingrunes:itemlegendarymat>],
	[<sccraftingrunes:itemlegendarymat>, <minecraft:obsidian>, <extrautils2:ingredients:11>, <sct:stone_crafting_plate>, <ore:gemBlockValuable>, <sct:stone_crafting_plate>, <extrautils2:ingredients:11>, <minecraft:obsidian>, <sccraftingrunes:itemlegendarymat>],
	[<sccraftingrunes:itemlegendarymat>, <minecraft:obsidian>, <ore:stickStone>, <theaurorian:auroriansteel>, <theaurorian:auroriansteel>, <theaurorian:auroriansteel>, <ore:stickStone>, <minecraft:obsidian>, <sccraftingrunes:itemlegendarymat>],
	[<sccraftingrunes:itemlegendarymat>, <ore:stickStone>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <ore:stickStone>, <sccraftingrunes:itemlegendarymat>],
	[<sccraftingrunes:itemraremat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemraremat>]]);


// Creative Modifier recipes
mods.biggercraftingtables.Giant.addShaped(<tconstruct:materials:50> * 3, 
	[[<tconstruct:materials:19>, <tconstruct:large_plate>.withTag({Material: "xu_enchanted_metal"}), <ore:gemValuable>, null, <tconstruct:ingots>, null, <ore:gemValuable>, <tconstruct:large_plate>.withTag({Material: "xu_enchanted_metal"}), <tconstruct:materials:19>],
	[<tconstruct:large_plate>.withTag({Material: "xu_enchanted_metal"}), <sccraftingrunes:itemlegendarymat>, null, null, null, null, null, <sccraftingrunes:itemlegendarymat>, <tconstruct:large_plate>.withTag({Material: "xu_enchanted_metal"})],
	[<ore:gemValuable>, null, <tconstruct:materials:17>, <extrautils2:decorativebedrock>, <tconstruct:materials:16>, <extrautils2:decorativebedrock>, <tconstruct:materials:17>, null, <ore:gemValuable>],
	[null, null, <extrautils2:decorativebedrock>, <tconstruct:materials:14>, <tconstruct:materials:13>, <tconstruct:materials:14>, <extrautils2:decorativebedrock>, null, null],
	[<tconstruct:ingots>, null, <tconstruct:materials:16>, <tconstruct:materials:12>, <ore:itemSkull>, <tconstruct:materials:12>, <tconstruct:materials:16>, null, <tconstruct:ingots>],
	[null, null, <extrautils2:decorativebedrock>, <tconstruct:materials:14>, <tconstruct:materials:13>, <tconstruct:materials:14>, <extrautils2:decorativebedrock>, null, null],
	[<ore:gemValuable>, null, <tconstruct:materials:17>, <extrautils2:decorativebedrock>, <tconstruct:materials:16>, <extrautils2:decorativebedrock>, <tconstruct:materials:17>, null, <ore:gemValuable>],
	[<tconstruct:large_plate>.withTag({Material: "xu_enchanted_metal"}), <sccraftingrunes:itemlegendarymat>, null, null, null, null, null, <sccraftingrunes:itemlegendarymat>, <tconstruct:large_plate>.withTag({Material: "xu_enchanted_metal"})],
	[<tconstruct:materials:19>, <tconstruct:large_plate>.withTag({Material: "xu_enchanted_metal"}), <ore:gemValuable>, null, <tconstruct:ingots>, null, <ore:gemValuable>, <tconstruct:large_plate>.withTag({Material: "xu_enchanted_metal"}), <tconstruct:materials:19>]]);


mods.biggercraftingtables.Giant.addShaped(<tconstruct:materials:50> * 4, 
	[[<tconstruct:materials:19>, <tconstruct:large_plate>.withTag({Material: "knightslime"}), <ore:gemValuable>, null, <tconstruct:ingots:1>, null, <ore:gemValuable>, <tconstruct:large_plate>.withTag({Material: "knightslime"}), <tconstruct:materials:19>],
	[<tconstruct:large_plate>.withTag({Material: "knightslime"}), <sccraftingrunes:itemlegendarymat>, null, null, null, null, null, <sccraftingrunes:itemlegendarymat>, <tconstruct:large_plate>.withTag({Material: "knightslime"})],
	[<ore:gemValuable>, null, <tconstruct:materials:17>, <extrautils2:decorativebedrock>, <tconstruct:materials:16>, <extrautils2:decorativebedrock>, <tconstruct:materials:17>, null, <ore:gemValuable>],
	[null, null, <extrautils2:decorativebedrock>, <tconstruct:materials:14>, <tconstruct:materials:13>, <tconstruct:materials:14>, <extrautils2:decorativebedrock>, null, null],
	[<tconstruct:ingots:1>, null, <tconstruct:materials:16>, <tconstruct:materials:12>, <ore:itemSkull>, <tconstruct:materials:12>, <tconstruct:materials:16>, null, <tconstruct:ingots:1>],
	[null, null, <extrautils2:decorativebedrock>, <tconstruct:materials:14>, <tconstruct:materials:13>, <tconstruct:materials:14>, <extrautils2:decorativebedrock>, null, null],
	[<ore:gemValuable>, null, <tconstruct:materials:17>, <extrautils2:decorativebedrock>, <tconstruct:materials:16>, <extrautils2:decorativebedrock>, <tconstruct:materials:17>, null, <ore:gemValuable>],
	[<tconstruct:large_plate>.withTag({Material: "knightslime"}), <sccraftingrunes:itemlegendarymat>, null, null, null, null, null, <sccraftingrunes:itemlegendarymat>, <tconstruct:large_plate>.withTag({Material: "knightslime"})],
	[<tconstruct:materials:19>, <tconstruct:large_plate>.withTag({Material: "knightslime"}), <ore:gemValuable>, null, <tconstruct:ingots:1>, null, <ore:gemValuable>, <tconstruct:large_plate>.withTag({Material: "knightslime"}), <tconstruct:materials:19>]]);


mods.biggercraftingtables.Giant.addShaped(<tconstruct:materials:50> * 5, 
	[[<tconstruct:materials:19>, <tconstruct:large_plate>.withTag({Material: "auroriansteel"}), <ore:gemValuable>, null, <tconstruct:ingots:2>, null, <ore:gemValuable>, <tconstruct:large_plate>.withTag({Material: "auroriansteel"}), <tconstruct:materials:19>],
	[<tconstruct:large_plate>.withTag({Material: "auroriansteel"}), <sccraftingrunes:itemlegendarymat>, null, null, null, null, null, <sccraftingrunes:itemlegendarymat>, <tconstruct:large_plate>.withTag({Material: "auroriansteel"})],
	[<ore:gemValuable>, null, <tconstruct:materials:17>, <extrautils2:decorativebedrock>, <tconstruct:materials:16>, <extrautils2:decorativebedrock>, <tconstruct:materials:17>, null, <ore:gemValuable>],
	[null, null, <extrautils2:decorativebedrock>, <tconstruct:materials:14>, <tconstruct:materials:13>, <tconstruct:materials:14>, <extrautils2:decorativebedrock>, null, null],
	[<tconstruct:ingots:2>, null, <tconstruct:materials:16>, <tconstruct:materials:12>, <ore:itemSkull>, <tconstruct:materials:12>, <tconstruct:materials:16>, null, <tconstruct:ingots:2>],
	[null, null, <extrautils2:decorativebedrock>, <tconstruct:materials:14>, <tconstruct:materials:13>, <tconstruct:materials:14>, <extrautils2:decorativebedrock>, null, null],
	[<ore:gemValuable>, null, <tconstruct:materials:17>, <extrautils2:decorativebedrock>, <tconstruct:materials:16>, <extrautils2:decorativebedrock>, <tconstruct:materials:17>, null, <ore:gemValuable>],
	[<tconstruct:large_plate>.withTag({Material: "auroriansteel"}), <sccraftingrunes:itemlegendarymat>, null, null, null, null, null, <sccraftingrunes:itemlegendarymat>, <tconstruct:large_plate>.withTag({Material: "auroriansteel"})],
	[<tconstruct:materials:19>, <tconstruct:large_plate>.withTag({Material: "auroriansteel"}), <ore:gemValuable>, null, <tconstruct:ingots:2>, null, <ore:gemValuable>, <tconstruct:large_plate>.withTag({Material: "auroriansteel"}), <tconstruct:materials:19>]]);



# Chance Cube mass crafting
// Regular
mods.biggercraftingtables.Big.addShaped(<chancecubes:chance_cube>*16,
	[[<sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>],
	[<sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>],
	[<sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>],
	[<sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>],
	[<sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>]]);

// Icosahedron
mods.biggercraftingtables.Big.addShaped(<chancecubes:chance_icosahedron>*8,
	[[<sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemlegendarymat>],
	[<sccraftingrunes:itemraremat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemraremat>],
	[<sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>],
	[<sccraftingrunes:itemraremat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemraremat>],
	[<sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemlegendarymat>]]);

mods.biggercraftingtables.Huge.addShaped(<chancecubes:chance_icosahedron>*16,
	[[<sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemlegendarymat>],
	[<sccraftingrunes:itemraremat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemraremat>],
	[<sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>],
	[<sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>],
	[<sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>],
	[<sccraftingrunes:itemraremat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemraremat>],
	[<sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemlegendarymat>]]);

// Giant Chance Cube
mods.biggercraftingtables.Big.addShaped(<chancecubes:compact_giant_chance_cube>*4, 
	[[<sccraftingrunes:itemraremat>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemcommonmat>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemraremat>],
	[<sccraftingrunes:itemuncommonmat>, <chancecubes:chance_cube>, <chancecubes:chance_cube>, <chancecubes:chance_cube>, <sccraftingrunes:itemuncommonmat>],
	[<sccraftingrunes:itemcommonmat>, <chancecubes:chance_cube>, <chancecubes:chance_icosahedron>, <chancecubes:chance_cube>, <sccraftingrunes:itemcommonmat>],
	[<sccraftingrunes:itemuncommonmat>, <chancecubes:chance_cube>, <chancecubes:chance_cube>, <chancecubes:chance_cube>, <sccraftingrunes:itemuncommonmat>],
	[<sccraftingrunes:itemraremat>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemcommonmat>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemraremat>]]);

mods.biggercraftingtables.Huge.addShaped(<chancecubes:compact_giant_chance_cube> * 9,
	[[<sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemlegendarymat>],
	[<sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemcommonmat>, <sccraftingrunes:itemcommonmat>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemcommonmat>, <sccraftingrunes:itemcommonmat>, <sccraftingrunes:itemuncommonmat>],
	[<sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemcommonmat>, <chancecubes:chance_cube>, <chancecubes:chance_cube>, <chancecubes:chance_cube>, <sccraftingrunes:itemcommonmat>, <sccraftingrunes:itemuncommonmat>],
	[<sccraftingrunes:itemraremat>, <sccraftingrunes:itemuncommonmat>, <chancecubes:chance_cube>, <chancecubes:chance_icosahedron>, <chancecubes:chance_cube>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemraremat>],
	[<sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemcommonmat>, <chancecubes:chance_cube>, <chancecubes:chance_cube>, <chancecubes:chance_cube>, <sccraftingrunes:itemcommonmat>, <sccraftingrunes:itemuncommonmat>],
	[<sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemcommonmat>, <sccraftingrunes:itemcommonmat>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemcommonmat>, <sccraftingrunes:itemcommonmat>, <sccraftingrunes:itemuncommonmat>],
	[<sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemlegendarymat>]]);

print("BiggerCraftingTables.zs loaded");