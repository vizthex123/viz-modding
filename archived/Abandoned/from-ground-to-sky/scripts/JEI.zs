# Removes & hides items from JEI
print("JEI.zs loading...");
/*
mods.jei.JEI.hide(<ITEM>);
mods.jei.JEI.hide(<LIQUID>);
mods.jei.JEI.removeAndHide(<ITEM>);

mods.jei.JEI.addDescription(<ITEM>,"DESCRIPTION");
mods.jei.JEI.addItem(<ITEM TO RE-ADD>);
*/

mods.jei.JEI.hide(<trophyslots:trophy:1>);

mods.jei.JEI.removeAndHide(<foodexpansion:itemcactusfruit>);
mods.jei.JEI.removeAndHide(<ironfurnaces:glass_furnace_idle>);

print("JEI.zs loaded");