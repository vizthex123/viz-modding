# Removes recipes for whatever reason
print("removed.zs loading...");

recipes.remove(<ae2stuff:Encoder>);

recipes.remove(<extrae:emcengine>);
recipes.remove(<extrae:rfcollector>);
recipes.remove(<TwilightForest:tile.TFUncraftingTable>);

recipes.removeShapeless(<lootbags:lootbag:1>);
recipes.removeShapeless(<lootbags:lootbag:2>);
recipes.removeShapeless(<lootbags:lootbag:3>);
recipes.removeShapeless(<lootbags:lootbag:4>);

recipes.removeShapeless(<ModName:essence_helmet>);
recipes.removeShapeless(<ModName:essence_chestplate>);
recipes.removeShapeless(<ModName:essence_leggings>);
recipes.removeShapeless(<ModName:essence_boots>);

print("removed.zs loaded");