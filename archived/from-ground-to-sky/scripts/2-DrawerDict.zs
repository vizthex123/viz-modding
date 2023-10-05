# Handles OreDict entries for Storage Drawers since that mod adds a ton of stuff
# I don't wanna spam 1-OreDict.zs after all
print("2-DrawerDict.zs loading...");
/*
val NAME = <OreDict Entry>;
ENTRYNAME.add(<item>);
ENTRYNAME.remove(<item>);
<OREDICT ENTRY>.add(<ITEMNAME>);
<OREDICT ENTRY>.remove(<ITEMNAME>);
*/

// 1x1 Drawers
val d1 = <ore:drawer1>;

d1.add(<storagedrawers:basicdrawers>.withTag({material: "oak"}));
d1.add(<storagedrawers:basicdrawers>.withTag({material: "spruce"}));
d1.add(<storagedrawers:basicdrawers>.withTag({material: "birch"}));
d1.add(<storagedrawers:basicdrawers>.withTag({material: "jungle"}));
d1.add(<storagedrawers:basicdrawers>.withTag({material: "acacia"}));
d1.add(<storagedrawers:basicdrawers>.withTag({material: "dark_oak"}));

d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "natura:eucalyptus"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "natura:sakura"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "natura:ghostwood"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "natura:redwood"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "natura:hopseed"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "natura:maple"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "natura:silverbell"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "natura:amaranth"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "natura:tigerwood"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "natura:willow"}));

d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "natura:fusewood"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "natura:darkwood"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "natura:bloodwood"}));

d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:larch"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:teak"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:acacia"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:lime"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:chestnut"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:wenge"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:baobab"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:sequoia"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:kapok"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:ebony"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:mahogany"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:balsa"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:willow"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:walnut"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:greenheart"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:cherry"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:mahoe"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:poplar"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:palm"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:papaya"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:pine"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:plum"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:maple"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:citrus"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:giganteum"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:ipe"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:padauk"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:cocobolo"}));
d1.add(<storagedrawersextra:extra_drawers>.withTag({material: "forestry:zebrawood"}));


// 1x2 Drawers
val d2 = <ore:drawer2>;

d2.add(<storagedrawers:basicdrawers:1>.withTag({material: "oak"}));
d2.add(<storagedrawers:basicdrawers:1>.withTag({material: "spruce"}));
d2.add(<storagedrawers:basicdrawers:1>.withTag({material: "birch"}));
d2.add(<storagedrawers:basicdrawers:1>.withTag({material: "jungle"}));
d2.add(<storagedrawers:basicdrawers:1>.withTag({material: "acacia"}));
d2.add(<storagedrawers:basicdrawers:1>.withTag({material: "dark_oak"}));

// 4x4 Drawers
val d4 = <ore:drawer4>;

d4.add(<storagedrawers:basicdrawers:2>.withTag({material: "oak"}));
d4.add(<storagedrawers:basicdrawers:2>.withTag({material: "spruce"}));
d4.add(<storagedrawers:basicdrawers:2>.withTag({material: "birch"}));
d4.add(<storagedrawers:basicdrawers:2>.withTag({material: "jungle"}));
d4.add(<storagedrawers:basicdrawers:2>.withTag({material: "acacia"}));
d4.add(<storagedrawers:basicdrawers:2>.withTag({material: "dark_oak"}));

print("2-DrawerDict.zs loaded");