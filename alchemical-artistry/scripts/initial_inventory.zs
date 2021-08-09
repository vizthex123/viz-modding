# Adds starting items when you enter a world
print("inital_inventory.zs loading...");

mods.initialinventory.InvHandler.addStartingItem("quests", <item:ftbquests:book>);
mods.initialinventory.InvHandler.addStartingItem("light", <item:minecraft:torch>*8);
mods.initialinventory.InvHandler.addStartingItem("food", <item:minecraft:bread>*4);

print("inital_inventory.zs loaded");