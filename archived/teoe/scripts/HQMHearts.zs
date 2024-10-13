# Changes HQM heart stuff so I can easily publish future Sandbox Edition updates
print("HQMHearts.zs loading...");

# Craft a full Heart with coins
# Failsafe in case players somehow die a ton, are in multiplayer and can't get enough lives, etc.
val obsidian_coin = <universalcoins:item.obsidian_coin>;
recipes.addShapeless(<HardcoreQuesting:bags:1>, [obsidian_coin, obsidian_coin, obsidian_coin, obsidian_coin, obsidian_coin]);

// HQM heart grindstone recipe
mods.appeng.Grinder.addRecipe(<HardcoreQuesting:hearts:3>, <TConstruct:heartCanister:1>, 8);

// Invalid Item use
recipes.addShapeless(<HardcoreQuesting:bags:1>, [<HardcoreQuesting:hqmInvalidItem>]);

// The One Ring use
recipes.addShapeless(<HardcoreQuesting:bags:4>*4, [<EMT:BaseBaubles>]);

// Invalid item failsafe tooltip
<HardcoreQuesting:hqmInvalidItem>.addTooltip(format.red("If you have this item, report it to the modpack dev!"));
<HardcoreQuesting:hqmInvalidItem>.addTooltip(format.gold("Can be crafted into a Reward Bag as a failsafe"));

print("HQMHearts.zs loaded");