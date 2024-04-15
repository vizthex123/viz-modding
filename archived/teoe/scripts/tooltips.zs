# Adds tooltips to various items
# Not all tooltips will be here though (as I try to group them together based on mod or theme)
print("tooltips.zs loading...");

<biggercraftingtables:BiggerCraftingTables>.addTooltip(format.aqua("5x5 Crafting Grid"));
<biggercraftingtables:BiggerCraftingTables:1>.addTooltip(format.aqua("7x7 Crafting Grid"));
<biggercraftingtables:AutoBiggerCraftingTables>.addTooltip(format.aqua("5x5 Crafting Grid"));
<biggercraftingtables:AutoBiggerCraftingTables:1>.addTooltip(format.aqua("7x7 Crafting Grid"));

<EMT:BaseBaubles>.addTooltip(format.red("DO NOT USE! Will crash and corrupt game."));
<EMT:BaseBaubles>.addTooltip(format.red("Instead, put it in a crafting grid"));

<HardcoreQuesting:hqmInvalidItem>.addTooltip(format.red("If you have this item, report it to the modpack dev!"));
<HardcoreQuesting:hqmInvalidItem>.addTooltip(format.gold("Can be crafted into a Good Reward Bag as a failsafe"));

# Facade/Microblock tooltips since the blocks are hidden in NEI
<appliedenergistics2:item.ItemMultiPart:120>.addTooltip(format.green("Used to craft Applied Energistics facades"));
<BuildCraft|Transport:item.buildcraftPipe.pipestructurecobblestone>.addTooltip(format.green("Used to craft BuildCraft facades"));
<ForgeMicroblock:sawStone>.addTooltip(format.green("Used to craft Forge Microblocks facades"));
<ForgeMicroblock:sawStone>.addShiftTooltip(format.aqua("Any Saw from Forge Microblocks, Iguana's Tinker Tweaks, or Project Red will work"));

print("tooltips.zs loaded");