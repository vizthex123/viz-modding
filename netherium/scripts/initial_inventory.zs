# Adds starting items when you enter a world
print("inital_inventory.zs loading...");

mods.initialinventory.InvHandler.addStartingItem("quests", <item:hardcorequesting:quest_book>);
mods.initialinventory.InvHandler.addStartingItem("blocks", <item:minecraft:dirt>*32);
mods.initialinventory.InvHandler.addStartingItem("light", <item:minecraft:torch>*16);
mods.initialinventory.InvHandler.addStartingItem("food", <item:minecraft:bread>*8);

print("inital_inventory.zs loaded");