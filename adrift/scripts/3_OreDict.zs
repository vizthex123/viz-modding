# Adds OreDict entries to various items
/*
val NAME = <OreDict Entry>;
ENTRYNAME.add(<item>);
ENTRYNAME.remove(<item>);
<OREDICT ENTRY>.add(<ITEMNAME>);
<OREDICT ENTRY>.remove(<ITEMNAME>);
*/

print("3_OreDict.zs loading...");

# Better Diving ores
# Gives them a custom OreDict entry
val copper = <ore:copper>;
val titanium = <ore:titanium>;
val silver = <ore:silver>;
val goldo = <ore:oreGold>;
val gold = <ore:gold>;
val lead = <ore:lead>;

copper.add(<better_diving:copper_ore>);
titanium.add(<better_diving:titanium_ingot>);
titanium.add(<better_diving:titanium>);
silver.add(<better_diving:silver_ore>);
goldo.add(<better_diving:gold>);
gold.add(<better_diving:gold>);
lead.add(<better_diving:lead>);

gold.add(<minecraft:gold_ingot>);


# Better Diving fish
val fish0 = <ore:listAllfishfresh>;
val fish = <ore:listAllfishraw>;

fish0.add(<better_diving:peeper>);
fish0.add(<better_diving:bladderfish>);
fish0.add(<better_diving:boomerang>);
fish0.add(<better_diving:garryfish>);
fish0.add(<better_diving:holefish>);

fish.add(<better_diving:peeper>);
fish.add(<better_diving:bladderfish>);
fish.add(<better_diving:boomerang>);
fish.add(<better_diving:garryfish>);
fish.add(<better_diving:holefish>);

val fish1 = <ore:listAllfishcooked>;

fish1.add(<better_diving:peeper_cooked>);
fish1.add(<better_diving:bladderfish_cooked>);
fish1.add(<better_diving:boomerang_cooked>);
fish1.add(<better_diving:garryfish_cooked>);
fish1.add(<better_diving:holefish_cooked>);

val fish2 = <ore:listAllfishcured>;

fish2.add(<better_diving:peeper_cured>);
fish2.add(<better_diving:bladderfish_cured>);
fish2.add(<better_diving:boomerang_cured>);
fish2.add(<better_diving:garryfish_cured>);
fish2.add(<better_diving:holefish_cured>);


# Sedimentary Rocks
val sed = <ore:sediment>;

sed.add(<minecraft:stone:1>);
sed.add(<minecraft:stone:3>);
sed.add(<minecraft:stone:5>);


# Chests
val chest = <ore:chest>;
val chestw = <ore:chestWood>;

chest.add(<enderio:block_buffer>);
chest.add(<enderstorage:ender_storage>);
chest.add(<enderio:block_vacuum_chest>);

chestw.add(<minecraft:trapped_chest>);


# Tanks
val tank = <ore:tank>;

tank.add(<enderstorage:ender_storage:1>);
tank.add(<enderio:block_tank:1>);
tank.add(<enderio:block_tank>);
tank.add(<openblocks:tank>);
tank.add(<fluidfunnel:tank>);
tank.add(<jaff:tank>);


# Strainer OreDict
# For water filter recipe
val strainer = <ore:strainer>;
val dstrainer = <ore:strainerDense>;

strainer.add(<waterstrainer:strainer_survivalist>);
strainer.add(<waterstrainer:strainer_survivalist_solid>);
strainer.add(<waterstrainer:strainer_survivalist_reinforced>);

dstrainer.add(<waterstrainer:strainer_survivalist_dense>);
dstrainer.add(<waterstrainer:strainer_survivalist_dense_solid>);
dstrainer.add(<waterstrainer:strainer_survivalist_dense_reinforced>);


# Remove the chest entry for Shulker Boxes
<ore:chest>.remove(<minecraft:white_shulker_box>);
<ore:chest>.remove(<minecraft:orange_shulker_box>);
<ore:chest>.remove(<minecraft:magenta_shulker_box>);
<ore:chest>.remove(<minecraft:light_blue_shulker_box>);
<ore:chest>.remove(<minecraft:yellow_shulker_box>);
<ore:chest>.remove(<minecraft:lime_shulker_box>);
<ore:chest>.remove(<minecraft:pink_shulker_box>);
<ore:chest>.remove(<minecraft:gray_shulker_box>);
<ore:chest>.remove(<minecraft:silver_shulker_box>);
<ore:chest>.remove(<minecraft:cyan_shulker_box>);
<ore:chest>.remove(<minecraft:purple_shulker_box>);
<ore:chest>.remove(<minecraft:blue_shulker_box>);
<ore:chest>.remove(<minecraft:brown_shulker_box>);
<ore:chest>.remove(<minecraft:green_shulker_box>);
<ore:chest>.remove(<minecraft:red_shulker_box>);
<ore:chest>.remove(<minecraft:black_shulker_box>);


# Misc
<ore:cobblestone>.add(<minecraft:mossy_cobblestone>);
<ore:workbench>.add(<sct:stone_crafting_table>);
<ore:workbench>.add(<artisanworktables:worktable:5>);
<ore:craftingTableWood>.add(<artisanworktables:worktable:5>);
<ore:itemSilicon>.add(<better_diving:silicone_rubber>);
<ore:carbon>.add(<minecraft:coal>);
<ore:carbon>.add(<minecraft:coal:1>);
<ore:blockHopper>.add(<faufil:hopperfilter>);
<ore:blockHopper>.add(<uppers:upper>);
<ore:listAllwater>.add(<forge:bucketfilled>.withTag({FluidName: "purifiedwater", Amount: 1000}));
<ore:bone>.add(<aquaculture:fish:38>);
<ore:bone>.add(<jaff:fish_bones>);
<ore:listAllseed>.add(<mowziesmobs:foliaath_seed>);


print("3_OreDict.zs loaded");