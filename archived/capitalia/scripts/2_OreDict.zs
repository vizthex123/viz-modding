# Adds OreDict entries to various items
/*
val NAME = <OreDict Entry>;
ENTRYNAME.add(<item>);
ENTRYNAME.remove(<item>);
<OREDICT ENTRY>.add(<ITEMNAME>);
<OREDICT ENTRY>.remove(<ITEMNAME>);
*/

print("2_OreDict.zs loading...");

// Workbenches
<ore:workbench>.add(<sct:stone_crafting_table>);
<ore:workbench>.add(<marblecraftingtable:marble_crafting_table>);


// Chests
<ore:chest>.add(<appliedenergistics2:smooth_sky_stone_chest>);
<ore:chest>.add(<appliedenergistics2:sky_stone_chest>);
<ore:chest>.add(<extrautils2:largishchest>);
<ore:chestWood>.add(<extrautils2:largishchest>);



// Circuits
<ore:circuitBasic>.add(<advancedrocketry:ic>);
<ore:circuitElite>.remove(<techguns:itemshared:66>);
<ore:circuitAdvanced>.add(<techguns:itemshared:66>);
<ore:circuitAdvanced>.add(<advancedrocketry:ic:2>);


// Berries as dye
<ore:dyeRed>.add(<biomesoplenty:berries>);
<ore:dyeRed>.add(<natura:edibles:2>);
<ore:dyeBlue>.add(<natura:edibles:3>);
<ore:dyeBlack>.add(<natura:edibles:4>);
<ore:dyeOrange>.add(<natura:edibles:5>);
<ore:dyeLime>.add(<natura:edibles:6>);
<ore:dyeGray>.add(<natura:edibles:7>);
<ore:dyeCyan>.add(<natura:edibles:8>);
<ore:dyeGreen>.add(<natura:edibles:9>);


// Berry OreDict
<ore:berry>.add(<biomesoplenty:berries>);
<ore:berry>.add(<natura:edibles:2>);
<ore:berry>.add(<natura:edibles:3>);
<ore:berry>.add(<natura:edibles:4>);
<ore:berry>.add(<natura:edibles:5>);
<ore:berry>.add(<natura:edibles:6>);
<ore:berry>.add(<natura:edibles:7>);
<ore:berry>.add(<natura:edibles:8>);
<ore:berry>.add(<natura:edibles:9>);


// Misc
<ore:slimeball>.add(<thermalfoundation:material:832>);
<ore:slimeball>.add(<thermalfoundation:material:833>);
<ore:stoneBasalt>.add(<advancedrocketry:basalt>);
<ore:string>.add(<natura:materials:7>);
<ore:rodStone>.add(<sct:stone_stick>);
<ore:oreTitanium>.add(<techguns:basicore:3>);
<ore:blockGlass>.add(<foundry:refractoryglass>);
<ore:dustAsh>.add(<biomesoplenty:ash>);
<ore:dustQuartz>.add(<appliedenergistics2:material:2>);





// Removal
// Mostly to fix conflicts or just remove the entry(ies) for balance
<ore:oreSilver>.remove(<magneticraft:ores:1>);
<ore:gearWood>.remove(<thermalfoundation:material:22>);
<ore:gearStone>.remove(<thermalfoundation:material:23>);
<ore:dustUranium>.remove(<bigreactors:dustyellorium>);


print("2_OreDict.zs loaded");