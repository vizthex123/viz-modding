# Adds repair materials to the Anvil
import mods.vanillaanvilrepair.addRepairEntry;

print("anvil.zs loading...");

/*
addRepairEntry(IIngredient repairedItems, IIngredient materials);
*/

addRepairEntry(<glacidus:glacidite_sword>|<glacidus:glacidite_pickaxe>|<glacidus:glacidite_shovel>|<glacidus:glacidite_hoe>|<glacidus:glacidite_axe>, <glacidus:glacidite_fragment>);

addRepairEntry(<vulcanite:vulcanite_sword>|<vulcanite:vulcanite_pickaxe>|<vulcanite:vulcanite_shovel>|<vulcanite:vulcanite_hoe>|<vulcanite:vulcanite_axe>, <vulcanite:vulcanite_ingot>);

print("anvil.zs loaded");