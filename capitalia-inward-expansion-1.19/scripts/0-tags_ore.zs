/*
# Change the mining levels of various ores
#priority 90

import crafttweaker.api.tag.MCTag;

print("0-tags_ore.zs loading...");

<tag:blocks:minecraft:needs_iron_tool>.remove(<block:create:zinc_ore>);
<tag:blocks:minecraft:needs_iron_tool>.remove(<block:create:deepslate_zinc_ore>);

<tag:blocks:minecraft:needs_stone_tool>.add(<block:create:zinc_ore>);
<tag:blocks:minecraft:needs_stone_tool>.add(<block:create:deepslate_zinc_ore>);

<tag:blocks:minecraft:needs_iron_tool>.add(<block:bluepower:silver_ore>);
<tag:blocks:minecraft:needs_iron_tool>.add(<block:bluepower:silver_deepslate>);

<tag:blocks:minecraft:needs_iron_tool>.add(<block:bluepower:tungsten_ore>);
<tag:blocks:minecraft:needs_iron_tool>.add(<block:bluepower:tungsten_deepslate>);

<tag:blocks:minecraft:needs_iron_tool>.add(<block:bluepower:ruby_ore>);
<tag:blocks:minecraft:needs_iron_tool>.add(<block:bluepower:sapphire_ore>);
<tag:blocks:minecraft:needs_iron_tool>.add(<block:bluepower:green_sapphire_ore>);
<tag:blocks:minecraft:needs_iron_tool>.add(<block:bluepower:amethyst_ore>);

<tag:blocks:minecraft:needs_iron_tool>.add(<block:bluepower:ruby_deepslate>);
<tag:blocks:minecraft:needs_iron_tool>.add(<block:bluepower:sapphire_deepslate>);
<tag:blocks:minecraft:needs_iron_tool>.add(<block:bluepower:green_sapphire_deepslate>);
<tag:blocks:minecraft:needs_iron_tool>.add(<block:bluepower:amethyst_deepslate>);

<tag:blocks:minecraft:needs_diamond_tool>.add(<block:enlightened_end:bismuth_ore>);
<tag:blocks:minecraft:needs_diamond_tool>.add(<block:enlightened_end:irradium_ore>);
<tag:blocks:minecraft:needs_diamond_tool>.add(<block:enlightened_end:malachite_ore>);

<tag:blocks:forge:needs_netherite_tool>.add(<block:deep_dark_regrowth:enlightened_deepslate>);

print("0-tags_ore.zs loaded");
*/