# Does stuff with JEI
print("JEI.zs loading...");
/*
mods.jei.JEI.hide(<ITEM>);
mods.jei.JEI.hide(<LIQUID>);
mods.jei.JEI.removeAndHide(<ITEM>);

mods.jei.JEI.addDescription(<ITEM>,"DESCRIPTION");
mods.jei.JEI.addItem(<ITEM TO RE-ADD>);
*/

# Descriptions
mods.jei.JEI.addDescription(<waterstrainer:net:1>,"I'll need to know more about sewing before I can make this correctly.");
mods.jei.JEI.addDescription(<jac:campfire_lit>,"Shift+click on the ground while holding a stick to place it. Right-click on it 3 more times (while holding sticks) to build the campfire, then light with flint & steel");
mods.jei.JEI.addDescription(<comforts:rope>,"Place 2 rope & nails 4 blocks apart, then place a cloth in-between.");


# Remove & Hide
// Unused Modular Machinery stuff
mods.jei.JEI.removeAndHide(<modularmachinery:blockinputbus:4>);
mods.jei.JEI.removeAndHide(<modularmachinery:blockinputbus:5>);
mods.jei.JEI.removeAndHide(<modularmachinery:blockinputbus:6>);
mods.jei.JEI.removeAndHide(<modularmachinery:blockoutputbus:4>);
mods.jei.JEI.removeAndHide(<modularmachinery:blockoutputbus:5>);
mods.jei.JEI.removeAndHide(<modularmachinery:blockoutputbus:6>);

mods.jei.JEI.removeAndHide(<modularmachinery:blockfluidinputhatch:4>);
mods.jei.JEI.removeAndHide(<modularmachinery:blockfluidinputhatch:5>);
mods.jei.JEI.removeAndHide(<modularmachinery:blockfluidinputhatch:6>);
mods.jei.JEI.removeAndHide(<modularmachinery:blockfluidinputhatch:7>);
mods.jei.JEI.removeAndHide(<modularmachinery:blockfluidoutputhatch:4>);
mods.jei.JEI.removeAndHide(<modularmachinery:blockfluidoutputhatch:5>);
mods.jei.JEI.removeAndHide(<modularmachinery:blockfluidoutputhatch:6>);
mods.jei.JEI.removeAndHide(<modularmachinery:blockfluidoutputhatch:7>);

mods.jei.JEI.removeAndHide(<modularmachinery:blockenergyinputhatch:6>);
mods.jei.JEI.removeAndHide(<modularmachinery:blockenergyinputhatch:7>);
mods.jei.JEI.removeAndHide(<modularmachinery:blockenergyoutputhatch:6>);
mods.jei.JEI.removeAndHide(<modularmachinery:blockenergyoutputhatch:7>);


// (Some) Artisan's Tools
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_pliers_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_hammer_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_handsaw_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_spanner_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_gemcutter_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_cutters_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_needle_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_carver_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_carver_flint>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_knife_wood>);

mods.jei.JEI.removeAndHide(<artisanworktables:artisans_solderer_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_solderer_flint>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_solderer_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_solderer_stone>);



# Misc
mods.jei.JEI.removeAndHide(<harvestcraft:market>);
mods.jei.JEI.removeAndHide(<harvestcraft:shippingbin>);
mods.jei.JEI.removeAndHide(<simpledifficulty:rain_collector>);
mods.jei.JEI.removeAndHide(<enderio:block_omni_reservoir>);
mods.jei.JEI.removeAndHide(<enderio:block_reservoir>);



print("JEI.zs loaded");