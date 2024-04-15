# Hides items from NEI (mostly technical blocks, and a couple removed items)

import mods.nei.NEI;

print("NEI.zs loading...");

NEI.hide(<minecraft:portal>);
NEI.hide(<minecraft:end_portal>);
NEI.hide(<minecraft:end_portal_frame>);
NEI.hide(<minecraft:mob_spawner:*>);


NEI.hide(<ae2stuff:Encoder>);
NEI.hide(<aether:aetherPortal>);
NEI.hide(<Aroma1997sDimension:aromicPortal>);
NEI.hide(<AWWayofTime:demonPortalMain>);
NEI.hide(<compacter:Cobbler>);
NEI.hide(<EMT:BaseBaubles>);
NEI.hide(<extrae:emcengine>);
NEI.hide(<extrae:rfcollector>);
NEI.hide(<GraviSuite:BlockRelocatorPortal>);
NEI.hide(<runicdungeons:tile.runicPortal>);
NEI.hide(<Thaumcraft:blockEldritchNothing>);
NEI.hide(<Thaumcraft:blockPortalEldritch>);
NEI.hide(<TwilightForest:tile.TFPortal>);

NEI.hide(<ModName:essence_helmet>);
NEI.hide(<ModName:essence_chestplate>);
NEI.hide(<ModName:essence_leggings>);
NEI.hide(<ModName:essence_boots>);

NEI.hide(<appliedenergistics2:item.ItemFacade>);
NEI.hide(<BuildCraft|Transport:pipeFacade:*>);
NEI.hide(<ExtraUtilities:microblocks:*>);
NEI.hide(<ForgeMicroblock:microblock>);
NEI.hide(<ForgeMicroblock:microblock:1>);
NEI.hide(<ForgeMicroblock:microblock:2>);

print("NEI.zs loaded");