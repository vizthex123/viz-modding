# Adds OreDict entries to various items
#priority 100
/*
val NAME = <OreDict Entry>;
ENTRYNAME.add(<item>);
ENTRYNAME.remove(<item>);
<OREDICT ENTRY>.add(<ITEMNAME>);
<OREDICT ENTRY>.remove(<ITEMNAME>);
*/

// Furnaces
val furnace = <ore:furnace>;

furnace.add(<minecraft:furnace>);
furnace.add(<natura:netherrack_furnace>);
furnace.add(<theaurorian:aurorianfurnace>);



// Chests
val chest = <ore:chest>;
val wood_chest = <ore:chestWood>;

chest.add(<extrautils2:trashchest>);
chest.add(<extrautils2:largishchest>);
chest.add(<thaumcraft:hungry_chest>);
chest.add(<theaurorian:silentwoodchest>);

wood_chest.add(<extrautils2:largishchest>);
wood_chest.add(<thaumcraft:hungry_chest>);
wood_chest.add(<theaurorian:silentwoodchest>);



// Crafting Tables
<ore:craftingTableWood>.add(<theaurorian:silentwoodcraftingtable>);
<ore:craftingTableWood>.add(<thebetweenlands:weedwood_workbench>);



// Music Discs
val disc = <ore:record>;

disc.add(<botania:recordgaia1>);
disc.add(<botania:recordgaia2>);
disc.add(<futuremc:record_pigstep>);



# Doors & Trapdoors
val door = <ore:doorWood>;
val trapdoor = <ore:trapdoorWood>;

door.add(<natura:overworld_doors:*>);
door.add(<natura:nether_doors:*>);
door.add(<natura:maple_trap_door>);
door.add(<natura:silverbell_trap_door>);
door.add(<natura:amaranth_trap_door>);
door.add(<natura:tiger_trap_door>);
door.add(<natura:willow_trap_door>);
door.add(<natura:eucalyptus_trap_door>);
door.add(<natura:hopseed_trap_door>);
door.add(<natura:sakura_trap_door>);
door.add(<natura:redwood_trap_door>);
door.add(<natura:ghostwood_trap_door>);
door.add(<natura:bloodwood_trap_door>);
door.add(<natura:fusewood_trap_door>);
door.add(<natura:darkwood_trap_door>);



// Misc
<ore:torch>.add(<theaurorian:moontorch>);