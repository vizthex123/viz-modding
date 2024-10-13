# Adds tooltips to various items
# Not all tooltips will be here though (as I try to group them together based on mod or theme)
print("tooltips.zs loading...");

// Crafting Table sizes
<biggercraftingtables:BiggerCraftingTables>.addTooltip(format.aqua("5x5 Crafting Grid"));
<biggercraftingtables:BiggerCraftingTables:1>.addTooltip(format.aqua("7x7 Crafting Grid"));

<biggercraftingtables:AutoBiggerCraftingTables>.addTooltip(format.aqua("5x5 Crafting Grid"));
<biggercraftingtables:AutoBiggerCraftingTables:1>.addTooltip(format.aqua("7x7 Crafting Grid"));



// Cursed Ring warning
<EMT:BaseBaubles>.addTooltip(format.red("You can never remove the curse if you wear this."));
/*
<EMT:BaseBaubles>.addTooltip(format.red("DO NOT USE! It will crash and corrupt game!!"));
<EMT:BaseBaubles>.addTooltip(format.red("Instead, put it in a crafting grid to get 4 Reward Bags."));
*/



// Sigil Costs
<AWWayofTime:lavaCrystal>.addShiftTooltip(format.red("25 LP"));

<AWWayofTime:waterSigil>.addShiftTooltip(format.red("100 LP"));
<AWWayofTime:lavaSigil>.addShiftTooltip(format.red("1,000 LP"));

<AWWayofTime:airSigil>.addShiftTooltip(format.red("50 LP"));
<AWWayofTime:voidSigil>.addShiftTooltip(format.red("50 LP"));
<AWWayofTime:sigilOfTheFastMiner>.addShiftTooltip(format.red("100 LP"));
<AWWayofTime:growthSigil>.addShiftTooltip(format.red("50 LP"));

<AWWayofTime:sigilOfElementalAffinity>.addShiftTooltip(format.red("200 LP"));
<AWWayofTime:sigilOfTheBridge>.addShiftTooltip(format.red("100 LP"));
<AWWayofTime:sigilOfMagnetism>.addShiftTooltip(format.red("50 LP"));
<AWWayofTime:itemBloodLightSigil>.addShiftTooltip(format.red("10 LP"));

<AWWayofTime:sigilOfHaste>.addShiftTooltip(format.red("250 LP"));
<AWWayofTime:sigilOfWind>.addShiftTooltip(format.red("250 LP"));
<AWWayofTime:itemCompressionSigil>.addShiftTooltip(format.red("200 LP"));
<AWWayofTime:sigilOfEnderSeverance>.addShiftTooltip(format.red("200 LP"));

<AWWayofTime:itemHarvestSigil>.addShiftTooltip(format.red("500 LP"));



// Solar Panel outputs
<AdvancedSolarPanel:BlockAdvSolarPanel>.addTooltip("Power output: 32 EU/t max");
<AdvancedSolarPanel:BlockAdvSolarPanel:1>.addTooltip("Power output: 128 EU/t max");
<AdvancedSolarPanel:BlockAdvSolarPanel:2>.addTooltip("Power output: 512 EU/t max");
<AdvancedSolarPanel:BlockAdvSolarPanel:3>.addTooltip("Power output: 8,192 EU/t max");



# Logistics Pipes modules
//// ItemSink
<LogisticsPipes:item.itemModule:1>.addTooltip("Sorts items based on the filters you set.");

	// Polymorphic
<LogisticsPipes:item.itemModule:4>.addTooltip("Sorts items based on the contents of the attached block (Hold Shift to view example).");
<LogisticsPipes:item.itemModule:4>.addShiftTooltip("Example: A Chest contains Cobblestone and Dirt. This module will route both items to that Chest until it's full, at which point they'll go to the Default Route.");

	// Mod Based
<LogisticsPipes:item.itemModule:12>.addTooltip("Sorts items based on the configured Mod IDs.");
<LogisticsPipes:item.itemModule:12>.addTooltip("Insert any item from a mod to set that mod as the filter.");

	// OreDict
<LogisticsPipes:item.itemModule:13>.addTooltip("Sorts items based on the configured OreDict entries.");

// Creative Tab
<LogisticsPipes:item.itemModule:16>.addTooltip("Sorts items based on their Creative Tab.");

	// Aspect
<LogisticsPipes:item.itemModule:30>.addTooltip("Sorts items based on the configured Thaumcraft aspects");

	// Enchantment
<LogisticsPipes:item.itemModule:31>.addTooltip("Sorts items with Enchantments.");

		// Enchantment mark 2
<LogisticsPipes:item.itemModule:131>.addTooltip("Sorts items with Enchantments, and allows set filters");



//// Extractor
<LogisticsPipes:item.itemModule:3>.addTooltip("Extracts items from the attached block, sending them to the sorting network.");
<LogisticsPipes:item.itemModule:3>.addTooltip("Extraction rate: 0.2 items/second");

	// Advanced Extractor
<LogisticsPipes:item.itemModule:7>.addTooltip("Acts like an Extractor Module, but has filtering options.");
//<LogisticsPipes:item.itemModule:7>.addTooltip("Extraction rate: 0.2 items/second");

	// Advanced Extractor mark 2
<LogisticsPipes:item.itemModule:107>.addTooltip("Acts like an Extractor Module, but has filtering options.");

	// Advanced Extractor mark 3
<LogisticsPipes:item.itemModule:207>.addTooltip("Acts like an Extractor Module, but has filtering options.");

	// Extractor mark 2
<LogisticsPipes:item.itemModule:103>.addTooltip("Acts like an Extractor Module, but has filtering options.");
<LogisticsPipes:item.itemModule:103>.addTooltip("Extraction rate: 1 item/second");

	// Extractor mark 3
<LogisticsPipes:item.itemModule:203>.addTooltip("Acts like an Extractor Module, but has filtering options.");
<LogisticsPipes:item.itemModule:103>.addTooltip("Extraction rate: 64 item/tick (1,280 per second)");

// QuickSort
<LogisticsPipes:item.itemModule:5>.addTooltip("Quickly extracts and routes items to high-priority destinations (i.e. all sorting modules).");



// Passive Supplier
<LogisticsPipes:item.itemModule:2>.addTooltip("Keeps the attached block supplied with the specified items.");

// Active Supplier
<LogisticsPipes:item.itemModule:502>.addTooltip("Actively supplies filtered items to the attached block.");
<LogisticsPipes:item.itemModule:502>.addTooltip("Will send crafting requests to the network if able to.");

// Provider
<LogisticsPipes:item.itemModule:500>.addTooltip("Allows items to be provided to requests the system makes (Hold Shift to view example).");
<LogisticsPipes:item.itemModule:500>.addTooltip("Provides up to 16 items at a time.");
<LogisticsPipes:item.itemModule:500>.addShiftTooltip("Example: A Logistics Crafting Table requests 4 Planks, finds a Chest with this module on it, and takes the Planks from the Chest.");

	// Provider mark 2
<LogisticsPipes:item.itemModule:501>.addTooltip("Provides up to 64 items at a time.");



// Crafting
<LogisticsPipes:item.itemModule:600>.addTooltip("Allows the Chassis Pipe to use the Logistics Crafting Table it's attached to.");
<LogisticsPipes:item.itemModule:600>.addTooltip("Crafts 1 item at a time");
<LogisticsPipes:item.itemModule:600>.addTooltip(format.red("Make sure to set a recipe inside of both the Module and Table!"));

	// Crafting mark 2
<LogisticsPipes:item.itemModule:601>.addTooltip("Crafts 16 items at a time");

	// Crafting mark 3
<LogisticsPipes:item.itemModule:602>.addTooltip("Crafts 64 items at a time");



// Terminus
<LogisticsPipes:item.itemModule:6>.addTooltip("Sets the attached block as the lowest-priority route on the network,");
<LogisticsPipes:item.itemModule:6>.addTooltip("ranking below the Default Route.");
<LogisticsPipes:item.itemModule:6>.addTooltip("Good for items you want to trash (or sending overflowed items elsewhere).");



// Electric Manager
<LogisticsPipes:item.itemModule:300>.addTooltip("Sorts items based on their EU percentage (Hold Shift for info)");
<LogisticsPipes:item.itemModule:300>.addShiftTooltip("Charge mode: Routes items that aren't fully charged, retrieving them when it's fully charged.");
<LogisticsPipes:item.itemModule:300>.addShiftTooltip("Discharge mode: Routes items that aren't fully charged, retrieving them when it's fully discharged.");

// Electric Buffer
<LogisticsPipes:item.itemModule:301>.addTooltip("Similar to an ItemSink module, but only sorts items that can store EU.");



// Bee Analyzer
<LogisticsPipes:item.itemModule:8>.addTooltip("Similar to an ItemSink module, but sorts unanalyzed Bees.");

// BeeSink
<LogisticsPipes:item.itemModule:9>.addTooltip("Sorts Bees based on their traits.");

// Apiary Refiller
<LogisticsPipes:item.itemModule:10>.addTooltip("Automatically extracts Bees and Products from attached Apiaries");

// Drone Terminus
<LogisticsPipes:item.itemModule:11>.addTooltip("Similar to a Terminus module, but for Bees.");



/*
// Facade/Microblock tooltips since the blocks are hidden in NEI
<appliedenergistics2:item.ItemMultiPart:120>.addTooltip(format.green("Used to craft Applied Energistics facades"));
<BuildCraft|Transport:item.buildcraftPipe.pipestructurecobblestone>.addTooltip(format.green("Used to craft BuildCraft facades"));
<ForgeMicroblock:sawStone>.addTooltip(format.green("Used to craft Forge Microblocks facades"));
<ForgeMicroblock:sawStone>.addShiftTooltip(format.aqua("Any Saw from Forge Microblocks, Iguana's Tinker Tweaks, or Project Red will work"));
*/
print("tooltips.zs loaded");