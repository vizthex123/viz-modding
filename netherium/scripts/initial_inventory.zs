# Adds starting items when you enter a world
print("inital_inventory.zs loading...");

mods.initialinventory.InvHandler.addStartingItem("quests", <item:hardcorequesting:quest_book>);
mods.initialinventory.InvHandler.addStartingItem("blocks", <item:minecraft:dirt>*32);
mods.initialinventory.InvHandler.addStartingItem("light", <item:minecraft:torch>*16);
mods.initialinventory.InvHandler.addStartingItem("food", <item:minecraft:bread>*8);

mods.initialinventory.InvHandler.addStartingItem("sustain_mode", <item:minecraft:written_book>.withTag({pages: ["{\"text\":\"If you want to get an extra challenge, enable the Diet and Water Source mods, renamed the sustain.txt in the scripts folder to sustain.za, and disable Classic Bars, then rename general_common.sustain in the Powah config.\\n\\nYou'll have to manage nutrition and water levels, or die.\\n\\nHave fun!\"}" as string, "{\"text\":\"I'm working on a way to let you change it in-game or something, but I doubt it'd be possible now.\\n\\nStay tuned though, and join the Discord (link on mod page) to keep up with news about it.\"}" as string], title: "Sustain Yourself Mode" as string, author: "vizthex" as string, display: {Lore: ["If you want an extra challenge, here's how." as string]}, resolved: 1 as byte}));


print("inital_inventory.zs loaded");